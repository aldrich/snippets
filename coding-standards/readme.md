# Coding Standards
- prefer the dot notation
- no extra line breaks
- remove commented out code
- break up lines into columns of 120
- use tabs not spaces
    - select all in code, hold cmd+{ for about 10s to unindent everything, then run control-I in Xcode (Indent)
- use properties whenever available. Don't write `[obj property]` when you can write `obj.property`.

### Spacing and Indentation

- if-else should look like this:

    if (condition) {

    } else if (condition) {

    } else {

    }

(notice the spaces before and after the parentheses)

- Objects and methods

    - (Widget *)methodName
    {

    }

- two empty spaces above, 1 empty space below each method or class definition