![](https://youtu.be/-UQ6OZywZ2I)

### All you need to know about model context protocol - by Krish Naik

- It's an opensource protocol by Antropic
	- Its a protocol that defines how context and data can be communicated with AI agents
	- Its like a USB-C port for AI applications
- Before MCP, to build a multi modal AI agent, you will have to write the integration code for each tool.
  eg: Let's say that you are integrating the weather tool to you Agent, so u will have to write a warpper for the weather API, and in future if the API change their request or response signature, you will have to change your code.
- What MCP does is define a set of rules (protocols) for an AI agent to commnuicate (or use ) to a tool. So you just have to make sure that your code follows that protocol while communicating with the tool, the tool provide will take the responsibility to maintain the same protocol in the response.
  Eg: the weather API will have an MCP library which they maintain, so you just have to follow the same protocol to interact with the weather api.
- Just like REST APIs who provide a way to communicate with web services, MCP provies a way for communication between AI agents and tools.
