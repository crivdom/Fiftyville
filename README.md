# Fiftyville — SQL Investigation

A SQL-based investigation completed as part of Harvard's **CS50x** course. The project involves investigating a fictional crime by analyzing and correlating evidence stored across multiple relational database tables.

## Overview

The goal of Fiftyville is to identify the individuals involved in a fictional theft using only information contained in a SQLite database.

Rather than searching a single table for the answer, the investigation requires progressively connecting evidence across multiple sources, including interviews, financial transactions, phone records, travel information, and other records.

The project provided practical experience using SQL as an investigative tool and reinforced the importance of validating conclusions through multiple pieces of related data.

## Technologies

- SQL
- SQLite
- Relational databases

## Investigation Approach

I approached the problem as a progressive investigation rather than attempting to construct one large query immediately.

### 1. Understand the database

I first reviewed the database schema to understand the available tables, relationships, and fields.

### 2. Establish the initial evidence

I identified records associated with the known location and timeframe of the incident and used those findings to determine which datasets could provide additional evidence.

### 3. Narrow the candidates

Each query was used to test or eliminate potential leads. Results from one stage of the investigation informed the queries used in the next.

### 5. Validate the conclusion

Before reaching a final conclusion, I cross-referenced the remaining evidence across multiple records rather than relying on a single query result.

## What I Learned

This project strengthened my ability to navigate an unfamiliar relational database and use SQL to answer investigative questions.

The most valuable part of the exercise was learning to break a broad problem into smaller questions, use data to test each hypothesis, and progressively build a conclusion supported by multiple sources of evidence.

## Course Attribution

This project was completed as part of CS50x — Introduction to Computer Science by Harvard University.

The original problem specification and starter materials were provided by CS50. The SQL investigation and solution queries in this repository represent my own coursework.
This project was completed as part of **CS50x — Introduction to Computer Science** by Harvard University.

The original problem specification and starter materials were provided by CS50. The SQL investigation and solution queries in this repository represent my own coursework.
