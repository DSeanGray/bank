# Bank Tech Test
This project is a technical test to build a banking application that meets the following requirements.

## Requirements

* You should be able to interact with the your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

## Acceptance criteria

Given a client makes a deposit of 1000 on 10-01-2012 And a deposit of 2000 on 13-01-2012 And a withdrawal of 500 on 14-01-2012 When she prints her bank statement Then she would see

```
date       || credit || debit   || balance
14/01/2012 ||        || 500.00  || 2500.00
13/01/2012 || 2000.00||         || 3000.00
10/01/2012 || 1000.00||         || 1000.00
```

## Technologies Used
* Ruby
* RSPEC

## User Stories

```
As a customer,
I would like to create a bank account,
So that I can manage my money.
```
```
As a customer,
I would like to deposit my money,
So that I can keep my money safe.
```
```
As a customer,
I would like to withdraw money,
So that I can spend my hard earned pennies.
```
```
As a customer,
I would like to view my bank statement.
So I can keep track of my money.
```
