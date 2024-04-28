# README

Project Overview:

Technical Description:

Models and Attributes
    Meal Model:
        Attributes: Title (string), Cooking Time (integer), Category (string), Difficulty Level (string)
        Validations: Presence, Length (for title), Numeric (for cooking time), Inclusion (for category and difficulty level)
        Enums: Difficulty Level (easy, intermediate, advanced), Category (breakfast, lunch, dinner, snack, dessert)
    AddOn Model:
        Attributes: Name (string), Servings (integer), Price (decimal), Category (string)
        Validations: Presence, Length (for name), Numeric (for servings and price)
        Enums: Category (breakfast, lunch, dinner, snack, dessert)

Seed Data:
    Seed data provided for both model classes.
    example:
        Meal.create!(title: "Pub-Style Shepherds Pie with White Cheddar Mashed Potatoes",cooking_time: 45,category: 2,difficulty_level: 2)
        AddOn.create!(name: "Double Chocolate Cheesecake",servings: 2,price: 9.99,category: 4)

Client-Side Feature:
    Meals index page has client-side sorting by attribute.
    The sortTable() function is called when a header cell is clicked or when the "Toggle Sort Order" button is clicked. It sorts the table rows based on the clicked attribute and the current sorting order.


Challenges:
    - Dealing with so many moving pieces in so many different places.
    - Using enum. I couldn't get the data to display for the attributes I made enums for. Resolved by changing from string to integer in migrate then resetting the db.
    Getting the index page to work properly was the most challenging.
    - table wouldn't generate: resolved by adding link_to
    - table kept generating twice; resolved by fixing format of _meal.html.erb
    - headers stayed at the bottom of the page, no idea how I fixed this. I ended up scrapping the whole index file and starting over.
    - Getting the array to sort by attribute first, then in ascending/descending order; resolved by just adding a toggle button. This one made me feel dumb.