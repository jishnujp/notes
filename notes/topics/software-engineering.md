---
title: Software Engineering
aliases:
  - swe
tags:
  - tech
---
## Overview

### Think software in terms of components

Software development is done incrementally, **we don't know all the features upfront features only become relevant gradually as users interact with the software**.
So software **development is done incrementally over a period of time** , and is done component by component (or modules). Everyone is not required know all components (they just have to know the one that they are working on), the components hide the complexity and provide a level of abstraction. These components or modules can be developed independently and integrated together into a unified system.

Components of amazon system:
- Inventory management (logistics and analytics)
- Order placement system
- Recommendation system
- Payment system (buyer to seller)

### Requirement Specification

What is the first step in creating a new software component?

Listing out the requirements that the components will satisfy, this will justify the need for existence of that component. Or in other words - figure out what is the problem that the system is solving, and list out a set of goals the component should achieve to solve that problem. (i.e Gathering requirements)

**Client :**
- Clients can be an external user (eg: mobile banking app)
- Internal users (eg: employees portal )
- Client could be another piece of software also (eg: Payment gateway like Rayzor pay)

**Each component may have a specific set of goals to achieve**, we need to ensure that the requirements that we gather the clients needs. (for each components and for the entire system also)

### Software Design and development

What difficulties are you likely to encounter if you directly start coding after gathering the requirements?

Directly getting into coding once the requirements are available may result in messy - unmaintainable code, bad design and architectures.. difficult to scale.. slow and a lot of bugs

A software is developed my different developers working parallely, (sometimes remotely), without a design to show the bigger picture, they may have different ideas of implementation ( for the same requirements ) in their minds. So its important to document the design first so that all of them share the same idea of the implementation.

Developers write code based on the requirements and design, and they document the interface definitions - which means how the component they have built can interact with other components (inputs and outputs), so that other developers can use these components without bothering about the implementation of those components.

### Testing and maintanance

Even after the developement, the software may have a lot of bugs and issues, the testing phase intent to discover them. Three main type of testing are:
- Unit testing | Testing a single part (function or class) of the software (testing them individually)
- Integration testing | Testing how these different parts of the software work together to acheieve a given requirement or goal
- Accpetance testing | Testing if the end user is getting the value proposed by the product or are the requirements met

There are two types of acceptance testing:
1. Alpha testing | Acceptance testing with an internal team to capture as much as bugs possible
2. Beta Testing | Testing with Real world users 

Even after releasing the software, its important to monitor what users are doing. Are they using it as expected ? Are they getting the contineous value delivery. Also identify and develope new features that the users need and doing patches and upgreades.. all that come under maintanance.


### Software developement Models

Earlier the approach was 'build and fix', i.e start building the product based on an informal and vague understanding of the needs, then fix it to allign it for the user needs. But the industry has evolved years and this software developement approach got matured into software engineering via some well-defined set of activities.

Some of these activities are:
- Software Life Cycle Model
- Software Developement Life Cycle (SDLC)
- Software Developement Process Model

**Software Life Cycle** describes the full life of a software, **SDLC** describes the developement stages, and the **Process Model** defines how those stages are organised.

Looking furthur into the Process Models (Software Developement Process Model), there are :
- Waterfall model
- Prototype Model
- Spiral Model
- Agile Model ...etc..

#### Waterfall Model
Its linear and sequential, where each phase must be completed before the next (once a phase is finished its difficult to go back and make changes).
Typically : Requirements Gathering > Design > Develope > Test > Maintain

It takes a lot of cost and money (1-2 Years) to complete and its very difficult to handle changing requirements (which is often the case where clients may not know what they need until they experience it)

#### Prototype model

An intial prototype of the system is built and given to the users to validate the requirements gathered, this helps refine the requirements before the final system is developed. Then the prototype is thrown away and a new product is developed.
This helps to clarify the unclear or incomplete requirements and plan technical architecture in a beter way.
But still this is expensive (building and throwing away), also it donot account for the bugs thatwil be later introduced in the maintaining phase and the changing user requirements.

#### Spiral model

This is basically a mix of waterfall and prototype model, or we can say that it combines the itterative developement with risk analysis. Developement proceeds through repeated cycles (spirals), where each cycle includes:
- Planning (get requirements, objectives, constraints)
- Risk Analysis (evaluate alternatives, identify and resolve risk)
- Developement
- Evaluation (involves planning of next phase also)

This provides strong risk management and early problem detection, but is still complex and expensive to implement.


### Agile

The process  models that we have seen so far comes under the plan and document model, and data shows that between 1995 and 2000 this process model resulted in 80-90% of the projects delivered late or is over budget or is just abandoned.  

A group of software engineers identified some frameworks to resolve the issues of plan and document model, and identified the core philosophies of these frameworks. This philosophy or mindset is called Agile.

Agile Manifesto:
- Individuals and interactions over Processes and tools.
- Working software over comprehensive documentations
- Customer collaboration over contract negotiation
- Responding to change over following a plan

The agile mindset that even though the items on the right side are important, the items on the left side are more important.
Its an incremental style where there are quick plan and implement cycles.

There are different Agile approaches:
- Extreme Programming (test driven , behavior driven etc..)
- Scrum (sprint based)
- Kanban

Its not about the framework or the process.. its more about the philosophy (the 4 points)


## Requirements gathering

### Why
Why do we need to document the requirement ?
- All devs should understand what the customers want
- Customers comes to an agrement about their requirements
- Time and money is waisted in iterations if the requirements are not understood properly initially

 For a software system there could be different types of users (or stakeholders).
 - Primary users (frequent users)
 - Secondary users (may use via an intermediary)
 - Tertiary user (may not use the system directly, but may be affected by the system or may influence its sales)
There could be more than one group of people in each of these stakeholder categories. (eg: In an LMS both students and teachers could be primary users)

Its important to gather the requirements of all the users in a holistic way i.e from all the stakeholders.

After gathering , analysing them is essential to identify ambiguities, inconsistencies and incomplete requiremnts. Sometimes the requirements can be vague enough to have different ideas in different peoples (devs) mind. 

### How to gather requirements?

there are different techniques for gathering requirements
- Questionnaires
	To get get answers for specific questions that help us to identify the focus areas (often used along with other techniques)
- Interviews
	Exploring the issues of the user to elicit scenarios and pain points 
- Focus Groups
	In interview we focus on a single persons perspective, in focus groups we get them to discuss their problems and observe a pattern emerging
- Naturalistic Observation
	Involves shadowing the user and understanding the context, often people may not be able to articulate their pain points in the best manner, so observe it and document it directly
- Documentation
	Sometimes there are rules, steps to do something, or even regulations that have to be followed and those will be documented, analyzing them also will reveal the users requirements
	
There is no single solution for all products.. use a combination of these techniques as needed.
Its also good to run a pilot session (test run) to make sure that data gathering is going as planned.
It is expensive and time consuming, so we have to be pragmatic and often make compromises.

### Software requirements Specification (SRS)

Usually a system analyst talks to the rest of the team and prepare a long document with all the requirements listed - the SRS.
A typical SRS document structure.
![[srs_structure.png]]

This helps to form an agrement between customer and developers and reduce future reworks, and providfes a basis for estimating cost and schedules, but its a lot of documentation (its good if the requirements are fixed, but in agile we have to adopt a different technique instead of SRS)
SRS is used in a plan and document models.


### Behavior driven design - User stories

SRS is not ideal for agile, instead we use a behaviour driven version of the same  called user stories.
User stories are short, informal, plain language description of whata user wants to do within a software product. (the smallest unit of developement which can be done in 1 sprint)
They are written in Role - feature - benefit pattern or template like:
```
As a [type of user],
I want [an action],
So that [a benefit/value]. 
```

Example (in an e-commerce seller portal)
***Feature - Track customer feedback*** 
*As an **Independent seller**,
I want to **view my customers feedback for each product** 
so that **I can get sense of pertinent issues in my product***

#### User story guidelines

The guidelines to write good user stories can be explained in the acronym SMART .

- Specific
	It should specify who, what and why - helps the devs to know exactly what to implement.
- Measurable
	You should be able to verify when it's done (usually using some acceptance criteria per user stories)
- Achievable
	The story should be realistic and doable by the team ( within a sprint ) (feasibility)
- Relevant
	It must deliver value to the user or business
- Time Boxed
	Can the story be completed within a sprint . 


The main disadvantage of user stories is that it may not be possible to keep a continuous contact with the user to get feedback in all scenarios, and the other one is that it don't scale well to very large or safety critical applications

[Requirement Specification Vs User stories](https://www.youtube.com/watch?v=KP0U3I-f9-Y)


## Interaction design

When a software is presented to a user , they see the foam first and the functionality second. 
Interaction design make sure that the user have a good experience while getting the value provided by the software. The software should be easy and intuitive to use and learn.
The job profiles like UI /UX designer comes under this field.
This involve:
- Identifying the needs of the user
- Exploring alternate designs
- Build interactive versions
- Evaluate

### Usability Goals

**Usability (ISO defenition)**

The extent to which a product can be used by specified users to achieve specified goals with effectiveness, efficiency and satisfaction in a specified context of use.

Usability Goals:
- Effectiveness
	How good a system is at doing what it is supposed to do.
- Efficiency
	How does a system support users in carrying out their tasks. (common tasks aving minimum number of steps)
- Safety to use
	Helping users in any situations to avoid carrying out unwanted actions accidently.
	(Eg: Reduce risk of wrong button press like keeping close and save buttons apart.)
	(Providing a means of recovery if you made errors)
- Learnability 
	How easy a system is to learn to use, can we start right away and carry out task without much effort?
	For Complex systems `wizards`, `tours` and `templates` can be helpful.
- Memorability
	How easy a system is to remember how to use once learned.

Apart from these we want to the users to experience a positive emotion while usuing the software. It should be satisfying, enjoyable, fun, helpful, entertaining.. these are more subjective.
![[usability_goals.png]]

### Prototyping techniques

Developing prototypes allow you to quickly stest on users, get feedback, iterate and pivot.
It test out technical feasibility of an idea, Clarify some vague requirements, users testing and evaluation.

![[prototyping_techniques.png|697]]

Stroyboard is a hand drawn comic that features :
- Settings (people involved , environment, task being accomplished)
- Sequence (steps involved, why would someone use the app, what is the task being illustrated)
- Satisfaction (what motivates people to use it, what does it enable people to accomplish, what need does it fill)
Eg: Speed-Up a VR tool to help give effective presentations (by simulating a presentation session for practice)
![[story_board_example.png]]


**Resources**
[Rapid Prototyping | google for startups](https://www.youtube.com/watch?v=JMjozqJS44M)
[Low-fidelity paper prototype testing of a concept for a new bike repair app](https://youtu.be/6dre0P4tRTc)
### Heuristics for understanding 

Once we have a UI/UX design , how can we evaluate it? - one way is based on a set of rules (heuristics) listed by experienced designers.

Heuristics are the strategiesderived from previous experiences with similar problems.
They are just guidelines.

A good example of a common heuirstics for UI is given by Jacob Nielsen

1. For Understanding
	- Consistency (layout, typography, color theme icons etc.. across all screens)
	- Use Familiar languages and metaphors (Dont use technical terms or Jargons, eg: ecomm - cart, e-walet..etc..)
	- Clean and functional Design (minimal and easy to understand, remove things that are not giving value to user, and focus should be on how easy it is to use)
2. For Action
	- Freedom (to undo, to explore without commitment or contrains )
	- Flexibility (shortcuts for experts, personalization, customization)
	- Recognition over Recall (Users find it easier to recognize something they have seen earlier instead of learning and recalling something new - eg icon should remind them what the feature is for like post card for an email)
3. For Feedback
	- Show status (keep users informed via appropriate feedback within a reasonable amount of time. Eg; Loader, time indication, showing steps, warnings in advance)
	- Prevent Errors ( constrains eg: depart date should be before return time, suggestions eg: spelling suggestions)
	- Support Error recovery (Make the problem clear eg: highlight missing fields in forms; provide solution eg: tooltip giving solution)
	- Provide Help (Easy to search help, provide help in context eg: i-buttons and ?-buttons with tooltip popups)

**Deceptive Patterns**
Tricks used in websites and apps that make you do things that you didn't mean to. Also known as 'dark patterns'.
[Types of deceptive patterns](https://www.deceptive.design/types)
## Project Management

What are the responsibilities of a project manager (plan and document) ?
- Act as the main point of contact between the clients and dev team (ensure that the customers needs are delivererd)
- Estimating time, schedule and ensuring Timely delivery
- Find the right talent, create a team and manage them
- Identify and mitigate the risks (eg a team member leaving)
- Configuration management (Documentation, versioning of code , data etc.. right tools for each task)

The goal here is to make the software engineering predictable in budget and schedule (in a plan and document model).

### Project estimation techniques

Estimation is necessary to have a rough idea about the cost and also the schedule or time it will take for the project.

Key estimation Parameters:
- Size of code (number of lines, KLOC number of 1000 lines of code)
- Effort (person-month - effort an individual can typically put in a month, how many people are required for completing in the given time.)

Main types of estimation techniques:
1. Empirical Estimation (Ask people who have done similar projects)
2. Heuristic Techniques (model using suitable mathematical expressions)

#### Empirical Estimation

Expert judgement (educated guess) for the cost and time for different components and combines them.
But this can have human errors and individual biases. They may give optimistic estimate or overlook some factors because of lack of knowledge.

These drawbacks can be mitigated to some extend using a group of experts using Delphi technique. 
- Provide the multiple experts the SRS + form for recording cost estimate
- Experts record their individual responses and gives back to a coordinator who evaluates all the responses and give them individual feedback.
- The experts modify their estimate based on the feedback.. and this itteration continues until the majority falls in the same cost bracket
In Delphi technique the process is iterated over several rounds, coordinator compiles results and prepares final estimate.



## Software Design

Outcomes of the design process is the Software architecture (a high level software design): 
- Components (or modules)
	Collection of functions and Data that should accomplish a well-defined task
- Interfaces among different components
	How components communicate with each other
- Data structures of individual components
	Suitable for storing and managing the data
- Algorithms required to implement individual components

Characteristics of a good software design:
- Correctness
	Does correctly implement all the functionalities of the system (covering all requirements)
- Efficiency
	Ensure that the resource - time, space and cost are managed well
- Maintainability
	Easy to change or modify
- Understandable
	to everyone in the development team

### Design modularity

**Coupling :** Measure of degree of interaction between two modules
**Cohesion :** measure how functions in a module cooperate together to perform a single objective

A good design will have **High Cohesion and Low coupling**
in other words..
A good design a design which is Modular.

**Modular :** Problem has been decomposed into a set of modules that have only limited interactions with each other

#### Types of coupling
- Data Coupling 
	Communincation using a primitive data trype - int, float etc.., passed as parameter between two modules (eg user_id)
- Control coupling
	Data is passed that influences the internal logic of a module (eg: flasgs and switches)
- Common Coupling
	Two modules are commonly coupled , if they shares a global data item (eg - Global variables and flags), so other modules also may be connected to it.. and usually not recommended
- Content coupling

#### Types of Cohesion
- Functional cohesion (Best!)
	Different functions of the module cooperate to complete a single task
	Eg: inventory management module - view, add, del functions
- Sequential Cohesion
	Different functions of the module execute  in sequence, output from one function is input to next (eg: Order Processing module - create_order, check_availability, place_order )
- Communicational Cohesion
	If all functions of the module refer or update the same data structure (eg: instead of inventory or catalog - just a product module - CRUD of catalogue and inventory happens in this module itself)
- Procedural Cohesion
	The activities in the module are related by a sequence, but unlike sequential cohesion, they work towars entirely different purposes (eg: Seller portal - login>add_product>add_product_to_catalog >add_to_inventory>...)
- Coincidental Cohesion (extreme - not good)
	Module has functinos with meaningless relationships with one another

### Object oriented design Basics

We know that a good design is modular i.e., High cohesion and Low coupling
How do we represent modules?

**Objects :** Usually represent a tangible real-world entity
objects have
- Data
- Methods

Data and methods are encapsulated into the object. The data is usually only available to the methods, not outside the object providing data abstraction. This promotes low coupling and high cohesion.

**Class :** Is a template for object creation, all objects possessing similar attributes and methods are created from the same template. In other words classes are abstract concepts of objects.

Different classes can be related in many ways:
- Association
	Objects of one class invoke the method of other objects of other classes
- Composition
	Object of one class is used inside another class (eg: list of products in a cart)
- Inheritance
	One class represents a type of another class, or one is a specialization of other
- Dependency
	If changes in one class will need changes in another.
	Eg: Interfaces and the class that implements those interfaces
	
### Unified Modelling Language (UML)

Modelling: Creating an external, explicit representation of the system
UML helps us do the same via multiple views.
Two important views are :
- Structural View
	Describing the logical parts like class, function , modules - eg: class diagram
- Dynamic Behavioral view
	- State Machine View (show different state of objects of a class)
	- Activity view (models flow of control among computational activities)
	- Interaction view (show sequence of message exchanges among parts of a system. Eg: sequence diagram)
![[sequence_diagram_example.png]]


There are a lot of different types of UML diagrams, butwe will only be using a subset of them in software engineering:
![[types_of_uml_diagram.png]]

Purpose of modelling:
- its a vehicle for communication and idea generation
- It guides developement of software
- Close correspondence with implementation (code) - or generate code from models

### Case studies

Large-scale software systems often evolve from monolithic architectures to more modular designs to improve maintainability and scalability. Here are some case studies

Uber :  [https://www.uber.com/en-IN/blog/service-oriented-architecture/](https://www.uber.com/en-IN/blog/service-oriented-architecture/)

Amazon : [https://spawn-queue.acm.org/doi/pdf/10.1145/1142055.1142065](https://spawn-queue.acm.org/doi/pdf/10.1145/1142055.1142065)

Shopify : [https://shopify.engineering/deconstructing-monolith-designing-software-maximizes-developer-productivity](https://shopify.engineering/deconstructing-monolith-designing-software-maximizes-developer-productivity)

## Software Development

Once the design is ready, its time for developement, and the major ways that you will interact with code is 
- Writing code
	- IDE (eg: VScode )
	- Frameworks (flask, vue etc..)
- Sharing code 
	- Version control systems (git)
	- https://git-scm.com/book/en/v2
- Debugging

### Tools for debugging
- Logging (print statements - or log into DBs)
- Dump & Diff - use a diff tool to compare logging data between executions
- Stepping in Debugger
- Profiling tool - how often how long various parts od the program are executed.(eg: pyinstrument)
- 

### Strategies in Debugging

- Input manipulation : Edit / change inputs and observe difference in outputs
- Backwards debugging : Find the statement that generated incorrect output, follow data and control dependencies backwards to find incorrect line of code.
- Forwards Debugging: Find event that triggered incorrect behaviour, follow control flow forward until incorrect state reached
- Blackbox debugging: Find documentatino, code examples to understand correct use of API


### Software Metrices

Reasons to write clean code:
- Easier to understand by members of your team
- Testing bugs in your code
- Easier to maintain and extend


There are several tools that analyse code. Eg: **Radon** and give us different metrices.

- **Cyclomatic complexity (CC Score)**
	- Number of decision blocks the code contains + 1
	- Higher the CC code, complex is the system and chance of bugs or error prone
	- Calculated per function
	![[cyclomatic_complexity_table.png]]
- **Raw Metrics**
	- LOC : The total number of lines of code 
	- LLOC: The number of logical lines of code. (Every logical line contains exactly one statement)
	- SLOC: Number of source lines (single logical line of code can be split into two lines if they are long, and LLOC will count it as one, and SLOC will count it as multiple lines)
	- Comments
- **Halsteads Metrics**
	- It calculates different metrices like program vocabulary, program length, volume, difficulty, effort , time required etc.. using the following parameters:
		- the number of distinct operators 
		- the number of distinct operands
		- the total number of Operators
		- the total number of operands

### Writing clean code

**Code Smells :** Certain problematic characteristics of code
- 63 such code smells are listed in Clean Code - by Robert martin
Example Code Smells:
- Related to comments
	- Redundant comments
	- Commented out code
- Related to functions
	- Functions doing more than one thing
	- Functions that are too long or is having higher CC
	- Functions having too many argument (max limit is 3 argument)
	- Functions having flag arguments
	- Dead functions
- General Code smells
	- Clumps of identical codes throughout the program (Use DRY principal instead)
	- Incorrect behavior at the boundaries
	- meaningless variables (use meaningful variable names)

Resources worth exploring:
[Code Smells List](https://luzkan.github.io/smells/)
[Python code metrics](https://www.fullstackpython.com/code-metrics.html)
## Software Architecture

### SOLID Principles

#### Single Responsibility 
- Class should have only one responsibility (or one reason to change)
- It dosent mean one class should have only one job - dont take it too far, it means what ever a class do should be related and serving a single responsibility
- Focus on cohesion , not strict minimalism

#### Open Close
- Open to extension but close to modification
- Extend behaviour without modifying existing code
- For adding additional functionality, you shouldn't have to edit an existing class , instead extend from that to build a new class
- Use abstraction + polymorphism

#### Liskov Substitution 
- A child class should be able to do everything a parent class can
- A subtype (child) must not break expectations of the parent class
- i.e Same behaviour contracts (inputs, outputs and exceptions)

#### Interface Segregation
- Prefer small , specific interfaces over large general ones
- Clients shouldn't depend on methods they dont use

#### Dependency injection
- High level modules shouldn't depend on Low-level modules, they should both depend on abstractions.


### Design patterns

Design patterns are recurring solutions to recurring design pressures.

| Pattern Type | Main Question                            |
| ------------ | ---------------------------------------- |
| Creational   | How should objects be created?           |
| Structural   | How should objects/classes be connected? |
| Behavioral   | How should objects collaborate?          |

#### Creational Pattern

##### Factory pattern
A Factory encapsulates object creation logic so the caller does not need to know which concrete implementation is being created. i.e Give me something that behaves like X” instead of “instantiate this exact class.

Used when :
- object creation has conditions
- creation logic is complicated (eg: may involve dynamic configurations)
- multiple implementations exist
- you want to hide concrete classes from callers

Eg: 
1. Database driver, `create_database("postgres")` may return postgress, mysql or sqlite connections
2. Payment Gateway `get_payment_provider("stripe")` may return stripe, razorpay or paypal
3. LLM Loader `get_llm("gemini-2.5")`, may return gemini, claude or openai connections

##### Builder pattern
Builder constructs a complex object step-by-step while allowing different final representations/configurations. i.e construction process is separated from representation.

Used when:
- object creation has many optional parts
- construction order matters
- object becomes unreadable with huge constructors
- object must be built incrementally
- Parameters may have inter dependencies that need validation and a particular order

**NOTE**: builder is not just a class that creates object (that will be just factory), but builder specifically involves complex staged construction.

**NOTE**: Python reduces the need for Builder via  named arguments, default parameters, dictionaries, dataclasses. So Builder appears less often in Python than Java. But it still matters when there is staged validation, object creation workflow matters.

eg:
1. Query builder (this example is for SQL, for applicable for any kind of query builder)
```
query.select()
     .where()
     .group_by()
     .limit()
```
2. Building Docker Container Config 
3. Trading Strategy Config (indicators, risk management, timeframe, broker, execution mode etc..)

#### Structural patterns
##### Facade Pattern

Facade provides a simplified interface over a complex subsystem. i.e  hide complexity behind one clean entry point. In fastapi file structures often the service layer code that encapsulates the business logic is a facade.

Use when:
- Abstraction adds simplification
- Caller don't bother about the lower objects or  should not know internal orchestration
- Subsystem is complex and have many moving parts

Eg:
1. `process_payment()` internally fraud detection,  tax, ledger, bank api, notifications
2. `export_video()` internally  audio encoding, rendering, compression, thumbnail

##### Adapter pattern
Adapter make incompatible systems work together, by connecting incompatible interfaces via an adapter. 
NOTE: its not adding business logic or extending functionality, its just interface translation

Use when:
- third-party interface is incompatible
- legacy code must integrate
- you cannot modify existing code

Do NOT use when:
- you control both interfaces
- simple refactoring is enough

eg:
1. Payment API mitigation | old system `pay(amount)` and new provider `make_payment(currency, amount, token)`, may be connected via an adapter.
2. Logging system | your app expects `logger.log()`, third party exposes `write_entry()`
3. Hardware Driver | App expects standard printer interface, but different printers expose different protocols. Adapter normalizes them.

#### Behavioral Pattern
##### Iterator pattern

Iterator provides sequential access to elements without exposing underlying representation (or data structures). The iterator pattern is often hidden inside the language now and we use it via loops. eg: `for x in obj:` internally uses an iterator protocol.

Use Iterator when:
- traversal logic is complex
- multiple traversal strategies exist
- internal structure should stay hidden

eg:
1. Tree Traversal - DFS and BFS
2. Paginated APIs
3. Streaming large files (Iterator yields chunks lazily instead of loading all data.)

##### Observer pattern
Observer defines a one-to-many dependency so that when one object changes state, all subscribers are notified automatically. like event subscription.

Observer is NOT:
- monitoring
- DB polling
- automatic state detection

Something still triggers the event.Observer only solves:
- who gets notified
- how subscribers are decoupled

Without Observer:
```
OrderService directly calls:- EmailService- SMSService- AnalyticsService- InventoryService
```
Tightly coupled.

With Observer:
```
OrderPlaced event emitted
```
Subscribers react independently.Publisher does not know subscribers.
That is the real value.

Use Observer when:
- many systems react to events
- decoupling is important
- event-driven architecture exists

eg:
1. Trading system - `price_updated` subscribers  = signal engine, logger, dashboard, alert system. etc.
2. GUI framework - Button click subcribers are animation, validation, sound , analytics etc..
3. Order system e-com -> Order placed ->send email, reserve inventory, generate invoice.


##### Strategy Pattern

Strategy encapsulates interchangeable algorithms behind a common interface. i.e  same task, different algorithms.

Use Strategy when:
- algorithms vary independently
- runtime switching is needed
- giant if-else chains appear

eg:
1. Trading system (Momentum, mean reversion, arbitrage  strategies trigger on price change)
2. Compression (zip, gzip, lz4)
3. Route planning (shortest path, fastest path, cheapest path)


#### Summary of Design patterns

| Problem                    | Likely Pattern |
| -------------------------- | -------------- |
| complex creation           | Builder        |
| conditional creation       | Factory        |
| incompatible interfaces    | Adapter        |
| too many subsystem details | Facade         |
| many event listeners       | Observer       |
| interchangeable algorithms | Strategy       |
| traversal abstraction      | Iterator       |

Do NOT force patterns into code.  Apply smallest useful abstraction.

---

Resources worth exploring:
[Is High Quality Software Worth the Cost?](https://martinfowler.com/articles/is-quality-worth-cost.html)
[The Catalogue of design patterns](https://refactoring.guru/design-patterns/catalog)

## Software Testing

Errors in software products are expensive, here are some examples:
- [system failure at British Airways](https://web.archive.org/web/20200805221414/https://www.nytimes.com/2017/05/27/world/europe/british-airways-flights-heathrow-and-gatwick-airports-.html)
- [Therac-25 Radiation Overdose](https://smartbear.com/blog/bug-day-race-condition-therac-25/)
- [Mars Climate Orbiter Probe Lost](https://www.latimes.com/archives/la-xpm-1999-oct-01-mn-17288-story.html)
    
The industry has matured into doing different levels of testing to prevent such expensive mistakes (sometimes even at the cost of slowing down the development process).

**Activities in testing:**

- Provide input | Test cases or Test Suites (a number of test cases)
- Run tests and check results (see if they deviated from expectation)
- Locate errors
- Error correction

**Test Case:**  
A test case will have:
- _Input to the program_
- _State of the program_ in which the input is to be given
- _Expected result from the program_
    
I - Input to system  
S - State of program  
R - Result expected

A **test suite** is a set of test cases designed to test a particular software or feature.

Test cases are designed carefully (not randomly) because the domain of all inputs is usually too large to test completely. So tests are designed in such a way that they are minimal while still helping to detect different types of errors.

**Black box testing:** A type of testing in which we do not look into the code. We focus only on the domain of input and expected output.

**White box testing:** Here we look into the code and design test cases in such a way that different paths/branches of the code are tested.

**Types of testing:**

- **Unit testing:** Testing individual units (functions, classes, or modules) independently.
- **Integration testing:** Testing the interactions/interfaces between units or modules to see whether they work together properly (eg: Recommendation system modules interacting together).
- **System testing:** Testing the entire system end-to-end to verify that all subsystems work together correctly to produce the intended system output.
    - **Alpha testing:** Testing by internal team.
    - **Beta testing:** Releasing to actual users for feedback/testing.
- **Acceptance testing:** Testing whether the system satisfies business/user requirements and delivers expected value to the customer.

### Unit testing

Unit testing is mostly done by the developer who writes the unit (function, class, or module). At that time other modules may not yet be complete, but we still need to test that unit. This makes debugging easier later.

The module under unit test may access global (non-local) data or call other modules/functions. To test this unit independently, we should not let failures in other modules affect this unit's tests. So we use:
- **Stubs:** Simple mock implementations used in place of called modules/functions.
- **Drivers:** Simple programs/functions that call the unit under test and provide test input.

Unit testing can be done both as black box testing and white box testing.

#### Black box testing

In black box testing, the input and output are decided from the requirements. The input domain is divided into `equivalence classes`.

The program is expected to behave similarly for inputs within the same equivalence class. So:
- One representative test case is selected from each equivalence class.
- Additional cases are added for boundaries between equivalence classes (`boundary value analysis`).
    
For example, for a function that accepts two numbers and returns the greater number:
- Equivalence classes:
    - `x > y`
    - `y > x`
- Boundary case:
    - `x = y`

#### White box testing

Analyze the internal structure of the program and design tests according to code coverage heuristics.

Heuristics used:
- **Branch Coverage**  
    Loops and conditions split the program into branches. Each branch should be executed at least once.
- **Multiple Condition Coverage**  
    If a conditional statement contains multiple conditions, test different combinations of True/False values.
- **Path Coverage**  
    Cover all linearly independent execution paths of the program at least once.
    `Cyclomatic Complexity = Number of decision points (conditions/loops) + 1`

### Integration testing

Checks whether different modules work together properly. At this stage, most or all modules are completed. The goal is to find errors in module interactions/interfaces such as incorrect parameter passing, data format mismatch, API contract mismatch, etc.

**Types of integration testing:**

- **Big Bang:**  
    All modules are integrated together and tested in a single step. Difficult to isolate errors, but acceptable for smaller systems.
- **Bottom Up:**  
    Lower-level modules/subsystems are integrated and tested first, then higher-level integrations are tested. Drivers may be needed, but stubs are usually not needed.
- **Top Down:**  
    Start from the top/root module and gradually integrate lower-level modules. Stubs may be needed for incomplete lower modules, but drivers are usually not needed.
- **Mixed (Sandwich/Hybrid) Approach:**  
    Combination of top-down and bottom-up integration.
    

### Other types of testing

1. **Smoke testing**  
    Basic testing to check whether the build/application is stable enough for further testing.
2. **Performance testing**  
    Testing system behavior under load (speed, scalability, response time, resource usage, etc.)
    
### Test Driven Development (TDD)

Used especially in Agile teams.
Write tests before writing the actual implementation logic. The tests define how the system is supposed to behave, and development is driven by satisfying those tests.

Process:
- Express features in the form of test cases
- Create and run tests -> `FAIL`
- Write minimal code to satisfy the tests -> `PASS`
- Refactor code for quality and modularity
    
i.e:

`RED -> GREEN -> REFACTOR`

[Writing unit test in python](https://youtu.be/YbpKMIUjvK8)

[TDD explained in detail](https://youtu.be/yfP_v6qCdcs)
[TDD Practice space](https://cyber-dojo.org/creator/home)
[Cyber dojo tutorial](https://www.youtube.com/watch?v=lIRF8MgyXho)

## Deployment

### Deployment Environments
- Local
- Testing
- Staging
- Production

### Deployment Strategies
- Blue/green
	- Blue = current production| Green = new version
	- Traffic is switched entirely from blue to green once testing passes.
	- Fast rollback: switch traffic back to blue.
	- Good for low-downtime releases.
- Canary
	- New version is released gradually to a small percentage of users first.
	- Monitor errors, latency, crashes, etc.
	- Slowly increase traffic if stable.
	- Reduce risk by exposing only a small group initially.
- Versioned
	- Multiple versions run simultaneously and are explicitly accessible.
	- Clients/users choose or are routed to a specific version.
	- Common in APIs and mobile-backend compatibility.
	- Support backward compatibility while introducing newer versions.
### Deployment Hosting
