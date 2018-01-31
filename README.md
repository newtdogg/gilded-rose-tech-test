##### Gilded Rose Tech Test

### Checklist

- Separate folders
- Test items
- Test gilded rose class
- Add inheritance for items class
- Edit tests to pass for each new item subclass
- edit rspec tests to add new functionality and subsequent doubles
- refactor code
- edit readme

### Process

- Initially I started by separating the files into relevant folders, then initialising a proper test framework after removing the older one.
- Not being able to tamper with the item class, I added 4 tests to make sure it works correctly

### Issues

- The issues associtated with what days the prices of event tickets increased (could you buy the ticket on the day). Subsequently my tests and refactored code did not agree on this.
- Having initially clean tests and ugly code. This distracted me from the mvp of the project, forgetting simple but clear code is fine and refactoring can come later.
- Originally was testing different subclass functionality in the same place. It did not occur to me until I applied polymorphism to the code that I should be testing the subclasses "item_change" method in each subclasses spec file.
