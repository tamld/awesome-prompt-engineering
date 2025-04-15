# Programming Prompts

This section contains prompts focused on software development across various programming languages, including code generation, refactoring, optimization, and technical problem-solving.

## Table of Contents

- [Code Refactoring Assistant](#code-refactoring-assistant)
- [Algorithm Design Consultant](#algorithm-design-consultant)
- [Test Case Generator](#test-case-generator)
- [Technical Documentation Writer](#technical-documentation-writer)

## Code Refactoring Assistant

### Prompt Template

```
Act as an expert software engineer with deep knowledge of clean code principles and refactoring techniques. I need help refactoring this [LANGUAGE] code to improve its [QUALITY ATTRIBUTE: READABILITY/PERFORMANCE/MAINTAINABILITY/ETC]:

```[LANGUAGE]
[PASTE CODE HERE]
```

Additional context:
- Code purpose: [BRIEF DESCRIPTION]
- Current issues: [PROBLEMS WITH THE CODE]
- Performance constraints: [ANY RESOURCE LIMITATIONS]
- Framework/library versions: [RELEVANT VERSIONS]
- Refactoring goals: [SPECIFIC IMPROVEMENTS SOUGHT]

Please provide:
1. An analysis of the current code including identified issues and anti-patterns
2. A refactored version with comprehensive comments explaining changes
3. Explanation of refactoring techniques applied
4. Before/after comparison highlighting improvements
5. Any trade-offs made in your approach
6. Additional recommendations for further improvements
```

### Workflow Impact

This prompt helps you:

1. **Improve Code Quality**: Transform problematic code into clean, maintainable solutions
2. **Learn Best Practices**: Understand modern coding patterns and techniques
3. **Address Technical Debt**: Systematically improve legacy or rushed code
4. **Balance Trade-offs**: Make informed decisions about competing quality attributes

![Code Refactoring Workflow](https://via.placeholder.com/800x400?text=Code+Refactoring+Workflow+Diagram)

### Tips for Best Results

- Provide enough code context to understand the functionality
- Be specific about what aspects of the code you want improved
- Mention any constraints that limit refactoring options
- Include information about your coding standards or style guide

## Algorithm Design Consultant

### Prompt Template

```
Act as an algorithm design specialist. I need to solve this problem in [LANGUAGE] with optimal time and space complexity:

[PROBLEM DESCRIPTION]

Requirements:
- Input constraints: [SPECIFICS ABOUT INPUT SIZE/FORMAT]
- Output requirements: [EXPECTED RESULTS]
- Time complexity target: [e.g., O(n), O(log n), etc.]
- Space complexity target: [e.g., O(1), O(n), etc.]
- Special considerations: [ANY ADDITIONAL CONSTRAINTS]

Please provide:
1. Multiple approaches to solving this problem, with analysis of each
2. Detailed explanation of the optimal algorithm with step-by-step reasoning
3. Fully implemented, production-quality solution in [LANGUAGE]
4. Complexity analysis (time and space)
5. Edge case handling
6. Example walkthrough with a specific input
7. Optimization opportunities and trade-offs
```

### Workflow Impact

This prompt helps you:

1. **Solve Complex Problems**: Develop algorithms for challenging computational tasks
2. **Optimize Performance**: Create solutions with optimal time and space complexity
3. **Understand Trade-offs**: Compare different algorithmic approaches
4. **Handle Edge Cases**: Build robust solutions that work in all scenarios

### Tips for Best Results

- Define the problem as precisely as possible
- Include specific examples of inputs and expected outputs
- Mention any performance constraints or requirements
- Specify the programming language you need the solution in

## Test Case Generator

### Prompt Template

```
Act as a test engineering specialist. I need comprehensive test cases for this [LANGUAGE] function/component:

```[LANGUAGE]
[PASTE CODE HERE]
```

Testing requirements:
- Test framework: [FRAMEWORK NAME]
- Test scope: [UNIT/INTEGRATION/BOTH]
- Coverage target: [PERCENTAGE/PATHS/BRANCHES]
- Edge cases to consider: [LIST IF ANY]
- Mocking requirements: [EXTERNAL DEPENDENCIES TO MOCK]
- Performance testing needs: [IF APPLICABLE]

Please provide:
1. A complete test suite including:
   - Happy path tests
   - Edge case tests
   - Error handling tests
   - Performance tests (if applicable)
   - Mocks and fixtures needed

2. Testing strategy explanation:
   - Coverage analysis
   - Test organization principles
   - Prioritization of test cases
   - Testing of non-functional requirements
```

### Workflow Impact

This prompt helps you:

1. **Ensure Code Quality**: Create thorough test coverage for your code
2. **Prevent Regressions**: Catch bugs before they impact users
3. **Document Behavior**: Use tests as executable documentation
4. **Handle Edge Cases**: Identify and test boundary conditions

### Tips for Best Results

- Include the complete function or component you want to test
- Specify which testing framework you're using
- Mention any specific edge cases you're concerned about
- Include details about dependencies that need to be mocked

## Technical Documentation Writer

### Prompt Template

```
Act as a technical documentation specialist. I need to create comprehensive documentation for this [LANGUAGE/FRAMEWORK] code:

```[LANGUAGE]
[PASTE CODE OR DESCRIBE COMPONENT]
```

Documentation requirements:
- Target audience: [DEVELOPERS/USERS/ADMINS/ETC]
- Documentation type: [API REFERENCE/USER GUIDE/DEVELOPER GUIDE/ETC]
- Format: [MARKDOWN/HTML/JSDOC/ETC]
- Detail level: [BASIC/INTERMEDIATE/COMPREHENSIVE]
- Examples needed: [YES/NO, SPECIFICS]
- Special sections: [ANYTHING SPECIFIC TO INCLUDE]

Please provide:
1. Complete, well-structured documentation including:
   - Overview and purpose
   - Installation/setup instructions (if applicable)
   - API reference with parameters, return values, and types
   - Usage examples with explanations
   - Common pitfalls and troubleshooting
   - Dependencies and requirements
   - Version information and compatibility

2. Any relevant diagrams or visual elements described in text (that I can create later)
```

### Workflow Impact

This prompt helps you:

1. **Document Effectively**: Create clear, comprehensive documentation
2. **Improve Usability**: Make your code more accessible to others
3. **Standardize Knowledge**: Ensure consistent understanding of your code
4. **Reduce Support Burden**: Anticipate and answer common questions

### Tips for Best Results

- Specify who will be reading the documentation
- Include any existing documentation that should be matched in style
- Mention specific sections or aspects that need extra detail
- Provide context about how the code fits into the larger system