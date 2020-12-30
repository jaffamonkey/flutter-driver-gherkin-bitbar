Feature: Testing data tables

@datatable @ci
Scenario: Testing the data table
    Given I add the users
      | Firstname | Surname | Age | Gender |
      | Woody     | Johnson | 28  | Male   |
      | Edith     | Summers | 23  | Female |
      | Megan     | Hill    | 83  | Female |