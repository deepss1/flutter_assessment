# Review of the code

- Follow proper linting rules to ensure that the best practices in the Dart and Flutter world is followed
- Always annotate variables with type making it clear for code readability
- Always declare variables as final when the value is not to be updated
- Each class should be in a different file to maintain modularity of the code
- Follow proper naming of the widgets
- Follow proper naming of the files
- Only import the required classes to make the page load faster
- The correct way of passing a super.key is the take Key? key as a parameter and pass
- Use ListTile widget instead of Row widget including text and a button. The ListTile have properties like `title` and `trailing` which could have been used. The ListTile widget will format the code in a more structured way along with other properties.
- Understand the reason behind using MaterialButton with only text instead of using a TextButton directly which will also follow the designing guidelines set in the ThemeData of the MaterialApp.
- The `setState` method is called inside the `onPressed` method of the button. This is not the correct way of updating the state of the widget. The `setState` method should be called in a extracted method.

> Above changes have been applied to the code.
> The code is now more readable and follows the best practices of the Dart and Flutter world.
> The code is now more modular and can be easily extended.

# Description

- Load ListWidget and run the app.
- Increment first list item by clicking it 3 times. Scroll to bottom and then scroll to top, the
  count will get reset

# Functional/Product Requirement

- There should be 100 list items, each should be set at 0 initially and user can increment its
  count.
- The count incremented by user should be persisted when he scrolls the list.

# Task:

- Solve the functional requirement.
- Review this file from Code Review perspective, list the issues and what changes should be made,
  perform the changes to the file.
- Think of it as a intern checked in this code and as a senior has to code review and fix the code
  from implementation perspective to make it correct and efficient.
- Send the fixed file back to the recruiter.