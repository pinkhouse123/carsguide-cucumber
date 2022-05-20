Feature: Search functionality

  @smoke@sanity
  Scenario Outline: Search the buy car with model
    Given I am on homepage
    When I mouse hover on “buy+sell” tab
    And I click ‘Search Cars’ link
    Then I navigate to ‘new and used car search’ page
    And I select make "<make>"
    And I select model "<model>"
    And I select location "<location>"
    And I select price "<price>"
    And I click on Find My Next Car tab
    Then I should see the make "<make>" in results

    Examples:
      | make          | model             | location            | price    |
      | Land Rover    | Range Rover Sport | QLD - Brisbane      | $100,000 |
      | Audi          | A1                | NSW - Sydney        | $90,000  |
      | Mercedes-Benz | A-Class           | NSW - All           | $150,000 |
      | Ford          | Focus             | NSW - New England   | $70,000  |
      | Hyundai       | Imax              | NSW - Sydney        | 40000    |
      | Mitsubishi    | Outlander         | SA - North          | 60000    |



  @regression
  Scenario Outline: Search the used car with model
    Given I am on homepage
    When I mouse hover on “buy+sell” tab
    And I click ‘Used’ link
    Then I navigate to ‘Used Cars For Sale’ page
    And I select make "<make>"
    And I select model "<model>"
    And I select location "<location>"
    And I select price "<price>"
    And I click on Find My Next Car tab
    Then I should see the make "<make>" in results

    Examples:
      | make          | model     | location          | price    |
      | Jeep          | Compass   | NSW - New England | $80,000  |
      | BMW           | Any Model | NSW - All         | $100,000 |
      | Volkswagen    | Tiguan    | ACT - All         | $50,000  |
      | Kia           | Stinger   | WA - All          | 30000    |
      | Fiat          | Punto     | WA - Perth        | 40000    |
      | Nissan        | Silvia    | QLD - Brisbane    | 30000    |