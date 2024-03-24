*** Settings ***
Library    SeleniumLibrary    run_on_failure=Capture Page Screenshot    screenshot_root_directory=EMBED
Library    OperatingSystem
Library    Collections



*** Variables ***

${BROWSER}                      chrome
${URL}                          https://automationexercise.com/
${Automation_image}             //img[contains(@alt,'Website for automation practice')]
${Menu_products}                //a[contains(.,' Products')]
${Search_bar}                   //input[@type='text'][contains(@id,'product')]
${Search_button}                //button[@type='button'][contains(@id,'search')]
${Men_tshirt_image}             //img[contains(@alt,'ecommerce website products')]
${View_product}                  //a[@href='/product_details/2'][contains(.,'View Product')]
${Add_to_cart_button}           //button[@type='button'][contains(.,'Add to cart')]
${Continue_shopping}            //button[@class='btn btn-success close-modal btn-block'][contains(.,'Continue Shopping')]
${Polo_product_brand}           //a[contains(.,'(6)Polo')]
${polo_men_image}               //img[@src='/get_product_picture/29']
${polo_view_product}            //a[@href='/product_details/29'][contains(.,'View Product')]
${View_cart_link}               //u[contains(.,'View Cart')]
${Shopping_cart_image}          //li[@class='active'][contains(.,'Shopping Cart')]
${element1_cart}                //p[@class='cart_total_price'][contains(.,'Rs. 400')]
${element2_cart}                //p[@class='cart_total_price'][contains(.,'Rs. 1000')]
${proceed_to_checkout}          //a[@class='btn btn-default check_out'][contains(.,'Proceed To Checkout')]





*** Keywords ***

Opens the browser
   Open browser   browser=chrome
Closes the browser
    Close Browser


Navigate to page 'http://automationexercise.com'
   Go To    url=${URL}
    Wait Until Element Is Visible    locator=${Automation_image}
    Maximize Browser Window 

Navigate to page 'Products'
    Click Element    locator=${Menu_products} 

Verify if search bar is visible
   Element Should Be Visible    locator=${Search_bar} 


Write 'men tshirt'
    Input Text    locator=${Search_bar}    text=men tshirt


Click on 'search button'
    Click Button    locator=${Search_button}   

Verify 'men tshirt' is visible
  Wait Until Element Is Visible    locator=${Men_tshirt_image}

Add product to cart
    Click Element    locator=${View_product}
    Click Element    locator=${Add_to_cart_button}  

Continue shopping
   Click Button      locator=${Continue_shopping}

Add a second item to the cart (your choice)
  Click Element      locator=${Polo_product_brand}   
  Wait Until Element Is Visible    locator=${polo_men_image}
  

Click on 'Cart' button
    Click Link       locator=${polo_view_product} 
    Click Element    locator=${Add_to_cart_button}  
     
Verify that product are visible in cart
    Wait Until Element Is Visible    locator=${View_cart_link}  timeout=10
    Click Element          locator=${View_cart_link}
    Wait Until Element Is Visible    locator=${Shopping_cart_image}

Verify that the sum of the product values is correct
    Element Should Be Visible    locator=${element1_cart}
    Element Should Be Visible    locator=${element2_cart}      
    Click Element                locator=${proceed_to_checkout}   
     


  





    
   



