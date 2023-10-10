Feature: Bookcategory

  Background:       I should be able to see homepage
    Given           I enter URL "https://demo.nopcommerce.com/" in browser
    And             I am on home page

  Scenario Outline: I should be able to see top menu tabs on homepage with categories
    When            I am on home page
    Then            I should be able to see top menu yabs with "<Categories>"

    Examples:
      | Categories        |
      | Computer          |
      | Electronic        |
      | Apparel           |
      | Digital downloads |
      | Books             |
      | Jewelley          |
      | Gift card         |

  Scenario Outline: I should be able to see page with filters
    When            I select book category from top menu tabs on the home page
    Then            I should be navigated to book category
    And             I should be able to see "<Filters>"

    Examples:
      | Filters  |
      | Short by |
      | Display  |
      | Grid     |
      | List tab |

  Scenario Outline: I should be able to see the list of terms of each filter
    Given           I am on Book page
    When            I click on "<Filter>"
    Then            I should be able to see "<List>" in Drop-down menu

    Examples:
      | Filter  | List                                                                           |
      | Sort by | Name: A to Z, Name: Z to A, Price: Low to High, Price: High to Low, Created on |
      | Display | 3,6,9                                                                          |

  Scenario Outline: I should be able to choose any filter option with specific result
    Given           I am on book page
    When            I click on "<Filter>"
    And             I click on any "<Options>"
    Then            I  should be able to choose any filter option from the list
    And             I should be able to see "<Result>"

    Examples:
      | Filter  | Options            | Result                                                               |
      | Sort by | Name: A to Z       | sorted by product with the product name in Alphabetical order A to Z |
      | Sort by | Name: Z to A       | sorted by product with the product name in Alphabetical order Z to A |
      | sort by | Price: Low to High | sorted product with price in descending order                        |
      | sort by | Price: High to Low | sorted product with price in Ascending order                         |
      | sort by | Created on         | recently added product should be show first                          |
      | Display | 3                  | 3 Products in a page                                                 |
      | Display | 6                  | 6 Products in a page                                                 |
      | Display | 9                  | 9 Products in a page                                                 |

  Scenario Outline: I should be able to see product display format according display format type as per given picture in srs document
    Given           I am on book page
    When            I click on "<Diplay format icon>"
    Then            I Should be able to see product diplay format according display format type as per given picture in SRS document

    Examples:
      | Display format icon |
      | Grid                |
      | List                |







