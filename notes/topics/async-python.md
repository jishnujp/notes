---
title: Asynchronous Python
aliases:
  - async-python
tags:
  - tech
  - python
---

Async in Python is **cooperative, single-threaded concurrency**. One thread, one event loop many concurrent tasks.

https://www.hackerrank.com/domains/python

- `yield` -  it returns a generator. Yield is the foundation of async
- What are generators ? - functions using yields are called generators ??
	- Functions that can return in the middle of its execution and can resume in the `next` call 
	- such returning in the middle of something is called yielding
- yield can both send out a values and recieve input at the same time ?
- generator pipelines
- yield from


- Generatos vs coroutines
	- A function that can be **paused and resumed**
	- All generators **can pause/resume**, but **not all are coroutines**.
	- Before `async/await` was added in Python 3.5, Python used generators to implement coroutines:
```python
def coroutine():
	while True:
		x = yield
		print(f"Got {x}")

```
	- You could `send()` values into this generator, this is **generator-as-coroutine**.
	- But it’s **manual**: you have to handle scheduling and “resuming” yourself.


- Generators are building blocks of coroutines.
- Every coroutine is a generator under the hood, but not every generator is a coroutine.
- Generators: lazy evaluation → streaming / ETL / pipelines
- Coroutines: asynchronous / concurrent tasks → async IO, streaming, event loops

Practice questions to learn yield:
- Write a generator that yields **Fibonacci numbers** indefinitely.
- Implement a generator pipeline that reads a file, removes blank lines, converts text to uppercase, and yields each line.
- Create a generator-based coroutine that accumulates values and resets if a negative number is sent.
- Implement a generator that yields prime numbers lazily.