---
tags:
  - JSON
  - C++
  - Build from scratch
---

# JSON in C++

## Introduction

JSON (JavaScript Object Notation) is a lightweight data interchange format that is easy for humans to read and write and easy for machines to parse and generate. It is often used for data transmission between a server and a web application, or between different parts of an application. JSON is language-independent, which means it can be used with virtually any programming language.

You can find more information about JSON [here](https://www.json.org/json-en.html).

Parsing and generating JSON is supported by most programming languages through built-in libraries or third-party packages, making it easy to work with JSON data in various software applications.

There are many JSON libraries available for C++. To explore how they work, let's build a simple JSON library from scratch.

## Learning Objectives

Through this challenge, you will:

- Interpret and understand the JSON data format.
- Learn how to encode (serialize) and decode (deserialize) JSON data.
- Overload operators to make your code more readable and intuitive.
- Smart pointers and memory management.
- Differentiate between static typing and dynamic typing in programming languages (not only C++).
- Move semantics and rvalue references.

## Your Tasks

You must create a class named `Json` that can:

- [ ] Construct a JSON object from a JSON string literal.
- [ ] Have a function named `toString` that returns a JSON string literal that represents the JSON object.
- [ ] Can get/set JSON object properties using the `[]` operator.
- [ ] Make sure your code is memory-safe and does not have memory leaks.
- [ ] Define copy constructor, move constructor and assignment operators.

There are some examples of how your code should work:

```cpp
Json json = Json::parse(R"({"name": "John", "age": 30})");
std::cout << json.toString() << std::endl;// {"name": "John", "age": 30}

json["name"] = "Jane";
json["age"] = 20;
std::cout << json.toString() << std::endl; // {"name": "Jane", "age": 20}

std::cout << json["name"] << std::endl; // Jane
```

Don't use any third-party libraries. You can only use the standard library and the STL.
