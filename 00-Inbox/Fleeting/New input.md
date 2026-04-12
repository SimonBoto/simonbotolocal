https://x.com/ndrewpignanelli/status/2031777526415053194?s=46

February 2025, Bank of America reported that its virtual assistant **Erica** has surpassed **2.5 billion**customer interactions and actively serves **20 million**users, managing nearly **two million queries daily**. ([newsroom.bankofamerica.com](https://newsroom.bankofamerica.com/content/newsroom/press-releases/2025/02/digital-interactions-by-bofa-clients-surge-to-over-26-billion--u.html?utm_source=chatgpt.com), [newsroom.bankofamerica.com](https://newsroom.bankofamerica.com/content/newsroom/press-releases/2025/04/ai-adoption-by-bofa-s-global-workforce-improves-productivity--cl.html?utm_source=chatgpt.com))

Such examples highlight the remarkable progress vertical agents have made, quietly automating millions of routine tasks. However, vertical agents still primarily address relatively narrow and repetitive tasks like customer support, email campaigns, or basic code generation.

The next significant advancement will come from coordination: managerial agents orchestrating specialized vertical agents to pursue higher level goals. I'm calling this _superoptimization_.

## Human Hierarchies & Management Today

Before we go into agentic management, its important to take a look at how things are done by humans.

A manager is needed when work becomes too complex for individual contributors to manage the goal independently. Imagine a software company: the goal "build and launch this feature to make the product better and increase customer retention" is simply too complex for a group of ICs to do effectively. Normally this involves at least 4 ICs: a designer, a frontend engineer, a backend engineer, and sales or CX representing the customer. Without a manager, this team is incredibly inefficient. The designer over scopes the feature. The backend engineer wants to spend too long on high performing code. The frontend engineer cant keep up with the over scoped designs and the backend isnt done yet. The CX rep told the customer the feature would be done a week ago but its actually two more weeks out.

These are coordination problems. Even in flat orgs, someone has to take ownership. That's why managers exist. To align resources, force objectives, break down goals, and coordinate across parties that aren't always aligned.

### Roles and Responsibilities of Managers

Let's break down what managers actually do:

- **Coordination**: Managers gather, filter, and disseminate critical information across different levels and departments, ensuring alignment with overall organizational goals. They take a directive from a higher level of management and break it down into smaller accomplishable primitives.
    
- **Conflict Resolution**: Managers mediate conflicts, address competing interests, and maintain harmony within and between teams, helping the organization to function cohesively.
    
- **Resource Management**: Managers allocate resources across a department to further high level goals and - more importantly - provide resources to lower level workers when needed. For example, someone managing a marketing department will acquire and distribute funding from the financial department for ad spend.
    

### Management Primitives

How does a manager actually do their job?

- **Delegation**: Assign tasks to other workers who report to them and oversee the results.
    
- **Knowledge**: Managers understand a broader context than ICs by knowing whats going on across their reports and by being horizontal to other managers.
    
- **Meetings and comms**: Send messages in chat channels, hold meetings, calls, and in person check ins to enforce goals.
    
- **People Management**: Managers enforce their goals by hiring new specialized workers and firing underperforming workers.
    
- **Resource Stores**: Data silos, operational software, file systems, budgets, and other pools of resources which the manager can access to solve problems.
    
- **Data and Metrics**: Managers use data to inform decisions about coordination and resource management.
    

### What makes a good manager?

A good manager is someone who can effectively coordinate a group of ICs to deliver results on a high level goal. They optimize a series of workers (also optimizing their own low level goals) by breaking down goals and delegating properly.

Now what does this look like for agents?

## Vertical Agents - Our Individual Contributors (ICs)

Today's AI landscape is shaped by specialized, autonomous agents that execute narrowly defined roles. Though still early, these agents are not merely assistants; they can act proactively within their domains, making decisions and performing tasks autonomously.

- **Customer-support agents**: CX Agents (like Fin or Decagons) handle complex customer interactions, independently resolving issues, offering personalized solutions. They access a knowledgebase and can authorize things like sales or refunds on behalf of the customer.
    
- **Code-gen agents**: Software agents (like Devin) can spec and solve tickets in a codebase, with the output being a PR. The most advanced of these run a full operating system, and can use visual reasoning to build features.
    
- **Sales agents**: SDR agents (like 11x, Rox) can do full personalized outreach and follow-up campaigns with potential customers. (should be noted people in the industry are highly skeptical of these right now).
    

Despite their advanced autonomy, today's agents still operate within constrained scopes:

- **Narrow focus**: Each agent specializes in a single function, limiting its perspective and preventing it from understanding broader organizational contexts and goals. Your customer support agent may be able to see your list of known bugs when a customer asks, but it wont be fixing the bugs themselves.
    
- **Isolated operation**: Agents typically work independently without meaningful communication or coordination with other agents. Your sales agent can't autonomously create a new feature to sell a customer, and it can't tell your coding agent to make that feature.
    
- **Rigid integration**: Although autonomous, their outcomes still require human or predefined systems to aggregate, interpret, and apply across wider contexts. A perfect example is keeping your customer support agent's knowledgebase up to date. It's a huge effort to constantly keep that updated.
    

At General Intelligence, the agent we rely on most is Devin for code gen. It creates over 50% of the commits to our codebase, and that percentage increases daily. The pattern is this: Human creates a ticket for a feature/fix/improvement -> Devin specs it out -> devin writes a PR -> Human reviews and approves.

This pattern is, right now, the state of the art in organizational management involving agents. Agents are confined to the work of individual-contributors (IC), with 100% human management overseeing them. Agents are _optimizers_.

The next step is obvious: a management structure for the agents.

## Coordinators - Management Using Agents

If you apply the same management primitives to agents, you can build a coordinator which breaks down and optimizes higher-level goals, then delegates to ICs and awaits results. If IC Agents are optimizers, coordinator agents are _superoptimizers_.

Let's look at the management primatives and how to use them to build a superoptimizer.

### Delegation

Delegation is the simplest of our management principals, and has been a solved problem in agents since ~August 2024 with Autogen then OpenAI's swarm. In essence, you can just give an agent a tool called "handoff," tell it it has the ability to delegate, then hope the agent is smart enough to know when it should delegate. To the agent itself, handoff is just another tool to accomplish the goal its been given.

Here's an example: You have a planner agent that can perform handoffs and a set of sub-agents for different software applications like Google Calendar and Google Sheets. The calendar sub-agent has various tools to operate your calendar—creating events, deleting events, and so on. If you ask the planner agent to create an event, it simply delegates the "create an event" query to the calendar agent using its handoff tool and awaits the result.

Having each service as a sub-agent allows the planner agent to think at a higher level of abstraction: "This is a calendar task, so it goes to the calendar agent" rather than "This is a calendar task, so I need to use the create-event tool in Google Calendar."

Delegation is what really enables agents to plan. Once you're thinking on a higher level, you can break down goals to accomplish more complex tasks.

### Knowledge

_Note: In practice, agents are much weaker than humans when it comes to memory which makes this a really hard problem. The below section simplifies things pretty heavily compared to actual approaches._

Now that we can delegate, and our agents are thinking at a higher level, we can introduce knowledge.

When it comes to agents, knowledge is the amount of context on the business you can add to the agent whenever its running. Humans do this naturally, but for agents it's a bit more complicated. Each agent operation requires a new LLM call, meaning you must manually include all relevant information in the context window. Since context windows are relatively small (most under 1 million workable tokens at the time of writing) you're limited to manually selecting about 250,000 words of data to pass to the agent for each run.

Memory can be split into two parts: working memory and long-term memory. Working memory contains everything the agent needs to complete the immediate task at hand, and is often denser and larger. Long-term memory encompasses everything the agent needs to know about its operating environment. in this case, what it needs to know about our business.

For example, when an agent performs an internet search for "competitors for my business," the long-term memory contains the description of your business, while the working memory holds the content of the web pages it's analyzing.

Usually, you'll pick a fixed amount of tokens to dedicate to long term memory (like 25%) and working memory is everything left.

Common approaches to long-term memory involve giving the agent a tool to save and recall memories (memGPT) that it calls when it needs specific knowledge, alongside some default knowledge that's always available. For example, if I ask the agent for the company's EIN number, it would simply use its search tool to look up "[company name from default knowledge] EIN," receive the result, and respond to me. This is the same approach that Cursor and Devin use to read codebases, and how ChatGPT's memory system works. It's far more efficient than loading hundreds of thousands of tokens into every LLM call.

Our manager agent can use its memory tools to better plan goals and conserve working memory of sub-agents by passing only relevant knowledge directly to ICs through handoffs. For example, when planning a new product feature, the manager agent can retrieve the roadmap from its memory, scope the feature, then delegate the fully planned scope to a sub-agent. This leaves the sub-agent's working memory free to focus on the individual task.

### Meetings and Comms

Agents don't really need to have meetings. Since agents delegate directly and have real-time logging from subagents whenever they want, communication is relatively straightforward. You put all of the logging in one place and let the planners plan. Its like a single channel in slack where all of the agents send results, and planners see whats happening then modify delegations accordingly.

In the future, there will be debates and implementation differences of hierarchical vs swarm type communications (i.e. a top down manager vs a flat group chat). But, since organizational management of agents doesn't even exist yet, that debate is for another time.

### Evaluations, Hiring, and Firing

This is probably the biggest divergence from human orgs. With Agents, hiring/firing is instant and they can actually change a worker's behavior directly when there are problems. Your manager agent can modify the core instructions of sub-agents by modifying system prompts. For example, if a sub agent writes emails wrong, the manager agent can directly change how that sub agent writes emails (instead of guidance like with a human org).

Hiring a sub agent means creating a new agent from scratch, with new goals and a new set of tools. It's significantly cheaper than hiring a human since the cost is some code (for the tooling), and prompting for the goals. How this is done in practice is a form of prompt-RL - you start by creating a base prompt and an evaluation set, then run the agent on the evals while modifying the prompt until it successfully passes the evals set (95%+).

Once memory is added to the equation, managing agents becomes more complex. Memory is deeply intertwined with an agent's behavior patterns and decision-making processes. When an agent starts performing poorly or exhibiting unexpected behaviors, you often need to completely reset both its prompts and memory stores to restore optimal performance. A clear example of this is seen in Cursor - as conversation threads grow longer, the coding performance noticeably degrades due to memory overload and context confusion.

While firing an agent means potentially losing its accumulated working memory, this isn't as problematic as it might seem in human organizations. The manager agent can efficiently re-initialize and re-train sub-agents, with the only real costs being computational resources and time. This makes agent workforce management much more flexible and iterative than traditional human management.

To effectively manage agent performance, manager agents rely heavily on evaluations (evals). These are sophisticated test suites designed to measure various aspects of agent performance, from task completion rates to decision quality. What makes this system particularly powerful is that the agents themselves can participate in creating and updating evaluation criteria, leading to a self-improving system. Manager agents can then use eval results to make decisions about when to reset, retrain, or replace sub-agents.

### Resource Stores

Resource stores function almost exactly the same for agents as they do for humans. Databases, file systems, budgets, and directories can be interpreted directly by agents so long as the agent's ability to read the resource can be managed around the working memory. Most resource stores nowadays are easily accessible via API, so giving your agent a new resource is as simple as giving it a new tool with some instructions.

A great example is Linear for product management. Everything from creating issues, assigning people, roadmapping, and updating statuses is available via API so everything can be controlled by an agent.

The thing to keep in mind here is that resource stores are specialized. Your codebase - one resource store - doesn't need to be accessible by every agent and should only really be accessed by coding agents.

### Data and Metrics

The final primitive is metrics - the quantifiable indicators that guide agent behavior and measure success. This is how your agents know what to optimize for and how the system evaluates their performance. A good manager agent requires clear, measurable reward signals they can maximize, such as:

- Customer retention rates and satisfaction scores
- Revenue growth and sales metrics
- Product usage statistics and engagement data
- System performance indicators and error rates

The goal of a manager agent should be to strategically maximize these reward signals by coordinating and deploying sub-agents. Without well-defined reward signals and regular measurement, it becomes impossible to evaluate if your manager agent is actually driving meaningful improvements or just performing busy work. The metrics also help identify when interventions are needed, such as adjusting agent strategies or reallocating resources to better achieve desired outcomes.

Orchestrating manager agents together with some metrics unlocks the next level of agentic organizations. Imagine you can tell an agent "go increase my retention" and it then works 24 hours a day until your retention goes up.

## Defining Superoptimization

Superoptimization is the process of an agent swarm optimizing in a hierarchy for a high level goal. To put simply, it's when you give a management structure to agents.

In this paradigm, agents are not merely executing predefined or linear instructions; they are dynamically coordinating, delegating tasks, and adapting to real-time feedback. This involves structured communication protocols, agent dependencies, hierarchical planning, and shared memory systems that enable agents to reorganize workflows and reallocate resources as conditions evolve.

To my knowledge, nobody has _really_ successfully done this yet but there's some early patterns to watch for.

## First Practical Patterns

At The General Intelligence Company, we're building some of the world's first superoptimizers. Here's the first one we're working on:

**Autonomous Product Development**

Using Linear as a product management store-of-record, Devin for code gen, Greptile for PR review, Posthog for metrics, and General Intelligence Company's orchestration platform (called Cofounder) we've built a system that takes user feedback from emails and implements it autonomously.

Here's how it works:

- User requests and feedback come in via email or slack (Data, Feedback)
    
- Cofounder acts as the manager - taking requests and its knowledge base then building sub goals and adding them to Linear then monitoring the status (Manager Agent/Superoptimizer)
    
- Linear stores longer term goals, projects, and subissues (Resource Store)
    
- Devin writes code when assigned an issue from linear (Individual Contributor)
    
- Greptile reviews the code and provides feedback to Devin (Individual Contributor)
    
- A human reviews and approves the PR (coding agents just arent there yet)
    
- Posthog provides reward signal via retention, screen falloff, and other specified goals. (Metrics)
    
- Hiring/Firing is done via issue status in linear, and reward comes from improving metrics.
    

We're still working on it, but its clear where this pattern is going. We will see the first functioning and useful superoptimizers before the end of 2025.

**Email Coordinator**

There are many scheduling assistants, but another manager agent that's emerging this year is a coordinator. Using Cofounder to drive the gmail API, a memory system on your business, calendar, and slack, we've built an early version of a multi-person coordinator to schedule meetings and drive communication across our team.

Here's how it works:

- Each team member has an agent with access to their email and their calendar
    
- Someone requests a meeting
    
- The agent reads relevant context from slack and business memory to write an agenda and determine who should be on the meeting
    
- Their agent messages the other team members via email to check availability
    
- The first agent sends calendar invites to relevant team members
    
- The agents are optimized on calendar invites/declines
    

## What's next?

Agents aren't just coming for ICs. They're coming for managers too. Eventually, org charts will be smaller and titles will be higher. Human jobs will be more like directors, illustrating their vision for something and seeing it come to life by the will of thousands of agents. It will be easier than ever to start and run a business.

Companies will need new systems to manage these swarms of superoptimizers, which is what we're working on at The General Intelligence Company. _We are [hiring](https://generalintelligencecompany.com/careers)!_

_Andrew Pignanelli, Cofounder and CEO of The General Intelligence Company of New York_