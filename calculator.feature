Feature: Calculator
  As a user
  I want to use a calculator
  So that I don't need to calculate myself

    Scenario: Add two numbers
    Given I have a calculator
    When I add 4 and 7
    Then the result should be 11
    
    Scenario: Substract two numbers
    Given I have a calculator
    When I Substract 7 from 2
    Then the result should be 5
    
    Scenario: Multiple Two Numbers
    Given I have a calculator
    When I Multiply 9 with 9
    Then the result should be 81
    
    Scenario: Division 
    Given I have a calculator
    When I Divide 10 with 2
    Then the result should be 5