Spinboard
"I'll get to trying this out some day, maybe." — Jeff Casimir

"Isn't there already something that does this already?" — Josh Mejia

"I own a yacht." — Richard B. Hathaway

Notes

You're welcome to use any library (e.g. lodash, Underscore, jQuery) you'd like as long as it does not replace the desponstrating proficiency in one of the skill areas addressed by the rubric below.
For any given page, you can choose to render the initial content on the server or you can provide and API and load it dynamically on the client.
Iteration 1 - Sign Up, Sign In, and Sign Out

(Less than one hour.)

As an unauthenticated user, when I visit the root of the application, I should be redirected to a page which prompts me to "Log In or Sign Up".

Nota Bene: You should aim to complete user auth in the simplest way possible. Using Rails' built-in has_secure_password functionality is the most straightforward and recommended way to implement this.

Sign Up

If I click "Sign Up", I should be taken to a user form where I can enter an email address, a password, and a password confirmation.

I cannot sign up with an email address that has already been used.
Password and confirmation must match.
Upon submitting this information, I should be logged in via a cookie and redirected to the "Links Index" page.

Sign Out

As an authenticated user viewing the index page, I should see a link to "Sign Out". This should clear my cookies and redirect me back to the login page.

Iteration 2 - Submitting and Viewing Links

(This section will be testing your basic Rails CRUD abilities, with some validation logic thrown in. Aim to complete this section in 90 minutes or less.)

As an authenticated user viewing the main page (links#index), I should see a simple form to submit a link.

The Link model should include:

A valid URL location for the link
A title for the link
Additionally, all links have a read status that is either true or false. This column will default to false.

Submitting an invalid link should result in an error message being displayed.

Hint: Use Ruby's built in URI.parse method to determine if a link is a valid URL or not. This StackOverflow post has more information. Alternatively, you could use a gem like this one.

Once a link has been submitted, loading the index page should display all of my links.

Iteration 3 - Updating Link Status

(Aim to complete this section in 30-45 minutes.)

As an authenticated user who has added links to my Spinboard, when I view the link index:

Next to each unread link I should see an option to "Mark as Read".
Clicking this should update the link appropriately and take me immediately back to the my links.
Next to each read link I should see an option to "Mark as Unread".
Clicking this should update the link appropriately and take me immediately back to the my links.
Read links should be stylistically differentiated from unread links. You could gray them out or use a strike through.
Note: Later iterations will require that you be able to update the status of the link without reloading the page. Depending on your approach, it might be easier to implement that now.

Iteration 4 - Editing Links

(Aim to complete this section in 45 minutes.)

As an authenticated user who has added links to my Spinboard, when I view the link index:

Each link has an "Edit" button that either takes me to a page to edit the link or allows me to edit the link in place.
I can edit the title or the URL of the link.
I cannot change the URL to an invalid URL.
Iteration 5 - Client-side

(Aim to complete this section in one hour.)

As an authenticated user, I can do the following in the link index without reloading the page:

Mark a link as read or unread
Filter the list of links by a search term
Filter the list by status (e.g. "read" and "unread")
Sort the list alphabetically
Iteration 6 - Supporting Feature(s)

To finish up, you'll need to build at least one of the following Supporting Features. You may choose which one you'd like to build from the following list.

Note: This section will require you to flex your coding muscles a bit more. You have choices here, so depending on how much time is left, you may want to pick a topic you're more familiar or comfortable with. Depending on which task you choose, you should be able to complete it in 1 - 2 hours.

A - Live Page Summary

It would be great if our Reading List pulled a little more data about each item to be read. Fortunately there's a solution for this -- The Internet!

Whenever a new link is submitted, use a Ruby HTTP client (Hurley, Faraday, etc.) to pull the contents of the provided page.

From this page, pull 2 pieces of information -- the page's <title> attribute and its <h1> -- and use these to construct a short "summary" for the page. Add a column to your table to store this summary, and make sure it displays on the main "links" list.

Mega bonus points if you use a background job processing library to perform this request asynchronously. If you do this, you can fill each link with an initial summary of "Summary Pending" and update the data in your background job.

Note: A proper HTML document will only have a single <h1> element on the page. However you may encounter documents that use more than one. In these cases just use the first <h1> you encounter.

B - Recommend a Link

Next to each link, I should have an option to "recommend link". This should take me to a new page where I can enter an email address of a person I'd like to recommend the link to. Submitting an email address via this form should send the provided address an email containing a link to the recommended page.

These emails should actually deliver in development mode (not in test mode). Use an external SMTP provider like Mandrill or SendGrid to deliver your messages.

C - Tagging and/or Lists

Over a long enough period of time. You're likely to have a lot of links. You're probably going to want to organize these links, right?

Lists

As an authenticated user, I should be able to:

Create a new list
Add a link to a list
See all of my lists
Update the name of a list
See all of the links that are currently not on a list
Delete a list
If a list has been deleted, all of the links on the list should be preserved, but no longer on a list
Tags

Add a tag to a link
Remove a tag from a link
Click on the tag on a link and see all of the other links with that same tag
Remove a link from the database
Short Links

As an authenticated user, I should be able to:

See a shortned version of each URL saved to my account.
When I visit that shorted URL, I should be automatically redirected to the original URL.
Detailed Rubric

Subjective evaluation will be made on your work/process according to the following criteria:

1. Satisfactory Progress

4: Developer completes iterations 1 through 6 as well as an additional supporting feature
3: Developer completes iterations 1 through 6 (this includes one supporting feature) with few bugs or missing functionality
2: Developer completes iterations 1 through 5 with some bugs or missing functionality
1: Developer fails to complete iterations 1 through 4, or there are significant issues with delivered functionality.
2. Ruby Syntax & Style

4: Developer is able to write Ruby demonstrating a broad/deep understanding of available language features. Application demonstrates great understanding of Object-Oriented modeling.
3: Developer is able to write idiomatic and effective Ruby. Application makes good use of Object-Oriented modeling with few gaps in class identification and component extraction.
2: Developer is able to accomplish tasks with Ruby code, but lacks attention to broader design and organizational concepts.
1: Developer is generally able to write Ruby, but code is sloppy, disorganized, or poorly factored.
3. Rails Style & API

4: Developer is able to craft Rails features that follow the principles of MVC, push business logic down the stack, and skillfully utilizes ActiveRecord to model application state.
3: Developer generally writes clean Rails features that make smart use of Ruby, with some struggles in pushing logic down the stack. The application displays good judgement in modeling the problem as data.
2: Developer struggles with some concepts of MVC
1: Developer struggles with MVC and pushing logic down the stack
0: Developer shows little or no understanding of how to craft Rails applications
4. Javascript Syntax & Style

4: Developer uses elegant and idiomatic Javascript to accomplish common tasks. Demonstrates solid understanding of function passing and manipulation.
3: Developer writes solid Javascript code using common patterns and idioms. Code is organized appropriately within objects and functions.
2: Developer can accomplish basic tasks with Javascript but implementation is largely copy/pasted or non-idiomatic.
1: Developer can manipulate Javascript syntax but implementation is buggy or inconsistent.
0: Developer shows little or no understanding of Javascript syntax and idioms
5. Testing

4: Developer excels at taking small steps and using the tests for both design and verification
3: Developer writes tests that are effective validation of functionality, but don't drive the design
2: Developer uses tests to guide development, but implements more functionality than the tests cover
1: Developer is able to write tests, but they're written after or in the middle of implementation
0: Developer does not use tests to guide development
6. User Interface

4: The application is pleasant, logical, and easy to use
3: The application has many strong pages/interactions, but a few holes in lesser-used functionality
2: The application shows effort in the interface, but the result is not effective
1: The application is confusing or difficult to use
7. Delivery Deadlines

4: The project was completed by 5pm of the day it was assigned.
3: The project was completed by 9pm of the day it was assigned.
2: The project was completed by 9am the next morning.
1: The project was not completed.
