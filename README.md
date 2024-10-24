# Testing Workshop

Welcome to the Testing Workshop!

This repository contains a Ruby application designed to demonstrate end-to-end, integration, and unit testing using RSpec. The primary focus of this workshop is to provide hands-on experience with testing methodologies in Ruby.

Note that the definitions of these tests are specific to our team and may vary depending on the context of the project. When approaching testing in other projects, it is worth understanding the specific definitions and requirements of that project.

- [Testing Workshop](#testing-workshop)
  - [Project Structure](#project-structure)
  - [Getting Started](#getting-started)
    - [Prerequisites](#prerequisites)
    - [Installation](#installation)
    - [Running the Application](#running-the-application)
    - [Running Tests](#running-tests)
  - [Types of Testing](#types-of-testing)
    - [End-to-End Testing](#end-to-end-testing)
    - [Integration Testing](#integration-testing)
    - [Unit Testing](#unit-testing)
  - [Workshop Overview](#workshop-overview)
  - [License](#license)


## Project Structure

```
ROOT/
├── src/
│   ├── app.rb
│   └── testing_workshop.rb
├── spec/
│   └── testing_workshop_spec.rb
├── Gemfile
├── Gemfile.lock
└── README.md
```

- **src/**: Contains the source code files.
  - `app.rb`: A simple file demonstrating the execution of the `TestingWorkshop` class.
  - `testing_workshop.rb`: The main class that implements the workshop functionality.

- **spec/**: Contains the RSpec tests for the application.
  - `testing_workshop_spec.rb`: The test file for the `TestingWorkshop` class.

- **Gemfile**: Specifies the gem dependencies for the project.
- **Gemfile.lock**: Contains the exact versions of the gems used.

## Getting Started

### Prerequisites

- Ruby 3.3.3 or later
- Bundler

### Installation

To set up the project, follow these steps:

1. Clone the repository:

   ```
   git clone git@github.com:ryanjwise/Ruby-Testing-Workshop.git
   cd Ruby-Testing-Workshop
   ```

2. Install the required gems using Bundler:

   ```
   bundle install
   ```

### Running the Application

To run the application and see the `TestingWorkshop` class in action, execute the following command:

```
ruby src/app.rb
```

This will run the `app.rb` file, which demonstrates how the `TestingWorkshop` class processes data.

### Running Tests

To run the tests for the project, use the following command:

```
bundle exec rspec -fd
```

This will execute all the tests in the `spec` directory and provide feedback on the test results.

## Types of Testing

In this workshop, we will discuss three main types of testing:

### End-to-End Testing

End-to-end testing assesses the entire workflow of an application to ensure that all components function correctly from the user's perspective.

These tests often simulate real user scenarios, typically using automated tools like Selenium, which can interact with the application through a headless browser. While effective, end-to-end tests can be slow and fragile, so they are often used selectively.

**In our team:** we mainly focus on integration and unit tests. When we refer to end-to-end tests, we often mean tests that validate the complete execution of one side of the application. For instance, we may have end-to-end tests for the backend that verify the entire process of handling a client request, from the initial request to the final response.

### Integration Testing

Integration testing examines how different components or modules of the application work together. It verifies that these components interact correctly and produce the expected results.

These tests are crucial for scenarios where components depend on one another. For example, if one method sorts data and another filters it, an integration test would ensure that the output of the sorting method is accurately filtered by the filtering method.

### Unit Testing

Unit testing focuses on individual methods and functions within a class to confirm that each unit of code operates as intended. These tests are typically isolated and do not rely on external systems, making them the most granular level of testing.

**In our applications:** we aim to cover three scenarios with unit tests:

1. **Happy Path:** A straightforward case where everything functions as expected.
2. **Unhappy Path:** A scenario where something goes wrong, such as passing incorrect input.
3. **Edge Cases:** Situations that test the boundaries of expected behavior.

We strive to keep our unit tests centered on the behavior of the method or function being tested rather than its implementation details. If this focus proves challenging, it may indicate that the method or function is too complex and should be refactored.

**Example of a Unit Test:**

For a method that calculates the sum of two numbers:

- **Happy Path Test:** Pass in two numbers and verify that the sum is correct.
- **Unhappy Path Test:** Pass in a string instead of a number and check that an error is raised.
- **Edge Case Test:** Pass in negative numbers and confirm that the sum is accurate.

## Workshop Overview

During the workshop, we will explore how these testing types relate to our team specifically and provide additional information on best practices and strategies for implementing effective tests.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.
