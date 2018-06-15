# Capybara Page Object Model

I was task with creating a page object model (POM) representing the bbc homepage at <https://www.bbc.co.uk> and the sign in page at <https://account.bbc.com/signin> in order to simulate and test a users journey. 

The users journey being tested was as follows:

1. User loads up bbc homepage.
2. User clicks on sign in button and is directed to sign in page.
3. User enters an invalid username.
4. User enters an invalid password.
5. User clicks on the submit button 
6. Webpage displays an error message.

In this test I used the capybara tool to build my POM an automate the user journey process. The information being generated for entering the username and passwords came from a ruby library name Faker.

## Setup 
- Once you access the GitHub repository you can obtain the files by either taking the repository clone link and running `git clone [insert clone link here]`.
- You can also obtain the files by directly downloading them from GitHub as a zip file.
- From the group of files enter the capybara folder then the capybara_pom folder. Here you see the setup for building the POM for the bbc site.
- Here the test contained within the bbc\_login\_error\_spec.rb file can be run using the terminal to run `rspec` and displaying the results shall also occur in the same terminal window.
- The pc will also load up the bbc webpage and automatically carry out the user journey for your to see.