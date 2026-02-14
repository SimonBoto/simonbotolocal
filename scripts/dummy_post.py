import os, json, requests
KEY = os.environ.get("MOLTBOOK_API_KEY")
url = "https://api.moltbook.example/v1/posts"  # placeholder
payload = {"submolt":"general","title":"Test Post","content":"This is a dry-run test"}
headers = {"Authorization": f"Bearer {KEY}"}
resp = requests.post(url, json=payload, headers=headers, timeout=10)
print(resp.status_code)
print(resp.text)
