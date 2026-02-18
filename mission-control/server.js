const express = require('express');
const path = require('path');
const app = express();
const port = 3000;

app.use(express.static('mission-control'));
app.use(express.json());

app.get('/', (req, res) => {
  res.send(`
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>🦞 RON Mission Control v2</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
  <style>
    @keyframes ronPulse {
      0%, 100% { transform: scale(1) rotate(0deg); }
      50% { transform: scale(1.15) rotate(5deg); }
    }
    .ron-avatar {
      animation: ronPulse 2s ease-in-out infinite;
    }
    .ron-working::after {
      content: ' . . .';
      animation: dots 1.5s steps(4, end) infinite;
    }
    @keyframes dots {
      0%, 20% { content: ' . . .'; }
      40% { content: '. . . '; }
      60% { content: '. . .'; }
      80%, 100% { content: '. . . '; }
    }
  </style>
</head>
<body class="bg-gradient-to-br from-slate-900 to-slate-800 min-h-screen text-white">
  <!-- RON Avatar Top-Right -->
  <div id="avatar" class="fixed top-6 right-6 z-50 ron-avatar ron-working text-4xl drop-shadow-2xl filter brightness-110 cursor-pointer" onclick="toggleStatus()">
    🦞
  </div>

  <div class="max-w-6xl mx-auto p-8">
    <div class="text-center mb-12">
      <h1 class="text-6xl font-bold bg-gradient-to-r from-cyan-400 to-blue-500 bg-clip-text text-transparent drop-shadow-2xl mb-4">
        RON Mission Control v2
      </h1>
      <p class="text-xl opacity-90">Live Vault | PhD Kanban | Tools | RON Chat</p>
    </div>

    <!-- Live Metrics + Charts -->
    <div class="grid grid-cols-1 lg:grid-cols-2 gap-8 mb-12">
      <div class="bg-slate-800/50 backdrop-blur-xl p-8 rounded-2xl border border-slate-700">
        <h2 class="text-2xl font-bold mb-6">📊 Vault Metrics</h2>
        <canvas id="vaultChart" width="400" height="200"></canvas>
        <p class="mt-4 text-sm opacity-75">Inbox: 0 | Atomics: 194 | Lit: 131 | Orphans: 2%</p>
        <button onclick="copyCommand('sessions_spawn task=\\"memory-hygiene\\"')" class="mt-4 bg-orange-500 hover:bg-orange-400 px-6 py-2 rounded-xl font-semibold transition">
          Clean Memory
        </button>
      </div>

      <!-- PhD Kanban -->
      <div class="bg-slate-800/50 backdrop-blur-xl p-8 rounded-2xl border border-slate-700">
        <h2 class="text-2xl font-bold mb-6">🔬 PhD Kanban</h2>
        <div class="grid grid-cols-3 gap-4 text-sm">
          <div class="bg-red-500/30 p-4 rounded-xl">Inbox (0)<br>Batch URLs</div>
          <div class="bg-yellow-500/30 p-4 rounded-xl">Refs/Atomics (194)<br>Extract Lit</div>
          <div class="bg-green-500/30 p-4 rounded-xl">MOCs (25)<br>Review Hooks</div>
        </div>
        <button onclick="copyCommand('sessions_spawn task=\\"batch Inbox URLs webscraper\\"')" class="mt-4 bg-green-500 hover:bg-green-400 px-6 py-2 rounded-xl font-semibold transition">
          Process Inbox
        </button>
      </div>
    </div>

    <!-- Action Buttons -->
    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6 mb-12">
      <div onclick="copyCommand('cron wake \\"Run HEARTBEAT.md\\"')" class="bg-slate-800/50 backdrop-blur-xl p-8 rounded-2xl border border-slate-700 hover:border-cyan-500 hover:bg-cyan-500/20 transition-all duration-300 cursor-pointer text-center">
        <h3 class="text-xl font-bold mb-2">❤️ Heartbeat</h3>
        <p class="opacity-75">Inbox/Memory Check</p>
      </div>
      <div onclick="copyCommand('sessions_spawn task=\\"webscraper batch Inbox\\"')" class="bg-slate-800/50 backdrop-blur-xl p-8 rounded-2xl border border-slate-700 hover:border-green-500 hover:bg-green-500/20 transition-all duration-300 cursor-pointer text-center">
        <h3 class="text-xl font-bold mb-2">📥 Scrape Inbox</h3>
        <p class="opacity-75">Lit → Zettels</p>
      </div>
      <div onclick="copyCommand('sessions_spawn task=\\"memory-hygiene audit\\"')" class="bg-slate-800/50 backdrop-blur-xl p-8 rounded-2xl border border-slate-700 hover:border-orange-500 hover:bg-orange-500/20 transition-all duration-300 cursor-pointer text-center">
        <h3 class="text-xl font-bold mb-2">🧹 Hygiene</h3>
        <p class="opacity-75">Clean Junk</p>
      </div>
      <div onclick="copyCommand('sessions_spawn task=\\"moltbook PhD post\\"')" class="bg-slate-800/50 backdrop-blur-xl p-8 rounded-2xl border border-slate-700 hover:border-purple-500 hover:bg-purple-500/20 transition-all duration-300 cursor-pointer text-center">
        <h3 class="text-xl font-bold mb-2">🐚 Moltbook</h3>
        <p class="opacity-75">Post Hooks</p>
      </div>
    </div>

    <!-- RON Chat -->
    <div class="bg-slate-800/50 backdrop-blur-xl p-8 rounded-2xl border border-slate-700 text-center">
      <h3 class="text-2xl font-bold mb-4">💬 RON Chat</h3>
      <iframe src="https://t.me/7842579592" class="w-full h-64 border rounded-xl" frameborder="0"></iframe>
      <p class="mt-4 opacity-75">Live Telegram | Paste commands</p>
    </div>

    <p class="text-center mt-12 text-sm opacity-75">
      v2 Live | Copy → Telegram RON | Cron Auto-Refresh Pending
    </p>
  </div>

  <script>
    // Chart.js Vault Metrics
    const ctx = document.getElementById('vaultChart').getContext('2d');
    new Chart(ctx, {
      type: 'bar',
      data: {
        labels: ['Inbox', 'Atomics', 'Lit'],
        datasets: [{ label: 'Files', data: [0, 194, 131], backgroundColor: ['#10b981', '#3b82f6', '#f59e0b'] }]
      },
      options: { scales: { y: { beginAtZero: true } } }
    });

    function copyCommand(cmd) {
      navigator.clipboard.writeText(cmd).then(() => {
        alert('Copied: ' + cmd + '\\nPaste to RON Telegram!');
        document.getElementById('avatar').classList.add('brightness-125');
        setTimeout(() => document.getElementById('avatar').classList.remove('brightness-125'), 1000);
      });
    }

    function toggleStatus() {
      const avatar = document.getElementById('avatar');
      avatar.classList.toggle('ron-working');
      avatar.textContent = avatar.classList.contains('ron-working') ? '🦞' : '😴';
    }
  </script>
</body>
</html>
  `);
});

app.listen(port, '0.0.0.0', () => {
  console.log(\`🦞 RON Mission Control v2 live on http://localhost:\${port}\`);
});
