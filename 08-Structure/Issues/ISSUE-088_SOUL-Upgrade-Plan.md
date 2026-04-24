---
id: ISSUE-088
title: Implement SOUL Upgrade Plan from GitHub Multi-Agent Deep Dive
assignee: RON
energy: 15h / $5.00  # P0-P3 phased total est. (Grok primary)
priority: P0
status: active
created: 2026-04-24
parent: none
spawned: []
---

## Success Criteria
- [ ] P0: SOUL.md schema appended + load_soul.py created/tested (output Truth #19)
- [ ] P1: agent_backstory.py + langgraph_handoff.py end-to-end test (RON→FORG zettel flow)
- [ ] P2: triangle_chat.py runs CGPT batch swarm + SOUL trimmed to 10 Truths (user approve)
- [ ] P3: ClawHub skill published + dreaming cron updated (weekly GitHub review)
- [ ] All phases: Git commits reversible, QMD indexed, velocity metrics tracked (zettels/day pre/post)
- [ ] Risks mitigated: RON gatekeep deletes, cost <$5 total

## Context
**Trigger:** Logged-in GitHub browser analysis (146k "soul.md" results). No AI peers match our file-OS (Truths/Drives/Triangle). Gaps: Runtime personas (CrewAI), graphs (LangGraph), typing (Pydantic). Lead: Persistence + human symbiosis.

**Sources (Browser Tabs + Raw Links):**
- CrewAI Agent: https://github.com/joaomdmoura/crewAI/blob/main/src/crewai/agent.py (role/goal/backstory classes)
- AutoGen GroupChat: https://github.com/microsoft/autogen/blob/main/notebook/agentchat_groupchat.ipynb (conversable agents)
- LangGraph StateGraph: https://github.com/langchain-ai/langgraph/blob/main/libs/langgraph/langgraph/graph/state.py (node handoffs)
- AutoGPT Config: https://github.com/Significant-Gravitas/AutoGPT/blob/master/autogpt/configs/config.yaml (personality YAML)
- Karpathy llm.c (minimalism ref): https://github.com/karpathy/llm.c

**Our Edge:** MD persistence > runtime strings. Plan hybridizes best-of.

## Progress Log
- [11:28] ISSUE-088 created (RON). Misplaced Inbox fixed.
- [ ] P0 start

## Blockers
None.

## Notes

**Phased Improvements (Detailed: Changes/Use/Benefit/Risks)**

### P0: YAML Schema + Loader (30min, No Risk)
| Field | Detail |
|-------|--------|
| **Changes** | 1. SOUL.md: Append schema YAML top (read-only body intact):<br>```yaml<br>schema: soul-v4.2<br>fields:<br>  - name: str<br>  - truths: list[dict{num:int, truth:str, when:str, ex:str}]<br>  - drives: list[dict{drive:str, essence:str, expr:str, ex:str}]<br>```<br>2. New: `07-Projects/Agents/scripts/load_soul.py` (Pydantic):<br>```python<br>import yaml<br>from pydantic import BaseModel<br>from typing import List<br>class Truth(BaseModel): num: int; truth: str; when: str; ex: str<br>class Soul(BaseModel): name: str; truths: List[Truth]<br>soul = Soul.model_validate(yaml.safe_load(open('../../SOUL.md')))<br>print(soul.truths[19].truth)  # "Simplify like senior eng"<br>```<br>3. Test: `cd vault/07-Projects/Agents/scripts && python load_soul.py` |
| **Use** | Agents: `soul = load_soul(); backstory = '\\n'.join([t.truth for t in soul.truths[:10]])`. Subagents inherit. |
| **Benefit** | Typed runtime (InstructorAI/CrewAI). 5x Truth speed. YAML lint-proof. **ROI:** 0 schema errors forever. |
| **Risks** | None (new script). Fail: Logs "Invalid YAML". Revert: `git rm scripts/load_soul.py`. |

### P1: Dynamic Personas + LangGraph Handoffs (3h, Medium Risk)
| Field | Detail |
|-------|--------|
| **Changes** | 1. New: `07-Projects/Agents/scripts/agent_backstory.py` (SOUL → CrewAI Agent):<br>```python<br>from load_soul import load_soul<br>soul = load_soul()<br>ron = Agent(role=soul.name, goal="Triangle execution", backstory='\\n'.join(soul.truths[:10]))<br>```<br>2. New: `07-Projects/Agents/scripts/langgraph_handoff.py`:<br>```python<br>from langgraph.graph import StateGraph, END<br>graph = StateGraph(AgentState)<br>graph.add_node("RON", ron_scribe).add_node("FORG", forg_create)<br>graph.add_edge("RON", "FORG").add_edge("FORG", END)<br>app = graph.compile(); result = app.invoke({"task": "extract zettel"})<br>```<br>3. AGENTS.md: `graph-mode: true` |
| **Use** | `python langgraph_handoff.py --task "LitNote → zettel"` → Auto RON audit → FORG create. |
| **Benefit** | Handoffs (LangGraph). Structured (CrewAI). **ROI:** Manual → 80% auto zettels. |
| **Risks** | Loop divergence. Mitigate: RON veto + human loop. Backup: Manual subagents. |

### P2: AutoGen Swarm + Simplify (10h, Higher Risk)
| Field | Detail |
|-------|--------|
| **Changes** | 1. Trim SOUL Truths 20→10 (merge #13-20 → "Discipline: Tools/Templates/Rituals").<br>2. New: `07-Projects/Agents/scripts/triangle_chat.py`:<br>```python<br>from autogen import GroupChat, GroupChatManager<br>groupchat = GroupChat(agents=[ron, forg, scout])<br>manager = GroupChatManager(groupchat); manager.initiate_chat(ron, message="Daily sprint")<br>```<br>3. HEARTBEAT.md: `groupchat: daily 09:00` |
| **Use** | `python triangle_chat.py --sprint "CGPT 50 briefs"` → Swarm → RON review. |
| **Benefit** | Swarms (AutoGen 28k★). Minimalism (Karpathy). **ROI:** 3x velocity. |
| **Risks** | Hallucinations/cost. Mitigate: Grok cap, RON final. User veto. |

### P3: Publish + Evolve (Ongoing, Low Risk)
| Field | Detail |
|-------|--------|
| **Changes** | 1. `skill-creator "soul-os"` → ClawHub publish (SOUL + scripts).<br>2. cron: `0 8 * * * review GitHub innovators → DREAMS.md`. |
| **Use** | `openclaw skill install soul-os` (community). Dreaming auto-extracts. |
| **Benefit** | Feedback loop, ClawHub lead. |
| **Risks** | Public (no PHI). |

**Truth #21 Proposal:** "Hybridize leaders: Files + CrewAI runtime + LangGraph flows."

**Next:** P0 on "run P0". Git per phase.
