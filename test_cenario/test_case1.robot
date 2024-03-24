*** Settings ***
Resource        home_page_resource.robot
Test Setup      Opens the browser
Test Teardown   Closes the browser


*** Test cases ***
Cenario 01 - Search a item "men tshirt"
  

  Navigate to page 'http://automationexercise.com'
  Navigate to page 'Products'
  Verify if search bar is visible
  Write 'men tshirt'
  Click on 'search button'
  Verify 'men tshirt' is visible
  Add product to cart
  Add a second item to the cart (your choice)
  Click on 'Cart' button
  Verify that product are visible in cart
  Verify that the sum of the product values is correct
