Feature: Bookcategory

  Background: I should be able to see home page
    Given I enter URL"https://demo.nopcommerce.com/" in browser
    And   I am on home page

  Scenario Outline: I should be able to see top menu tabs on homepage with categories
    When I am on home page
    Then I should be able to see top menu tabs with "<categories>"
    Examples:
      | Categories        |
      | Computer          |
      | Electronics       |
      | Apparel           |
      | Digital downloads |
      | Books             |
      | Jewellery         |
      | Gift card         |

  Scenario Outline:  I should be able to see book page with filters
    When I select book category from top menu tabs on home page
    Then I should be navigated to book category
    And  I should be able to see "<filters>"
    Examples:
      | Filters  |
      | Short by |
      | Display  |
      | The Grid |
      | List Tab |

  Scenario Outline: I sholud be able to see list of terms of each filter
    Given I am on book page
    When  I click on "<filter>"
    Then  I should be able to see "<List>" in dropdown menu
    Examples:
      | Filter  | List                                                                          |
      | Sort by | Name: AtoZ, name : Z to A, Price: Low to High, Price: High to Low, Created on |
      | Display | 3, 6, 9                                                                       |

  Scenario Outline: I should be able to choose any filter option with specific result
    Given I am on book page
    When  I click on "<filter>"
    And   I click on any "<option>"
    Then  I should be able to choose any filter option from the list
    And   I should be able to see "<result>"
    Examples:
      | Filter  | option            | result                                                            |
      | Sort by | Name: A to Z      | Sorted product with the product name in alphabetical order A to Z |
      | Sort by | Name: Z to A      | Sorted product with the product name in alphabetical order A to Z |
      | Sort by | Price:Low to High | sorted Product with price in descending order                     |
      | Sort by | Price:High to Low | sorted Product with price in ascending order                      |
      | Sort by | Created on        | Recently added product should be show first                       |
      | Display | 3                 | 3 products in a page                                              |
      | Display | 6                 | 6 products in a page                                              |
      | Display | 9                 | 9 products in a page                                              |

  Scenario Outline:  I should be able to see product display format according display format type as per given picture in srs document
    Given I am on book page
    When  I click on "<display format icon>"
    Then  I should be able to see product display format according display format type as per given picture in SRS document
    Examples:
      | Display format icon |
      | Grid                |
      | List                |