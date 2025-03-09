# Task Manager Application

## Overview
This is a simple **Task Manager** application built using **Spring Boot**, **Maven**, **MySQL**, and **JSP**. It allows users to create, update, delete, and view tasks with a due date and status.

## Features
- Add new tasks with a title, due date, and status.
- View all tasks in a list format.
- Edit existing tasks.
- Mark tasks as completed.
- Delete tasks.

## Technologies Used
- Java 17
- Spring Boot
- Maven
- MySQL
- JSP (Java Server Pages)
- Bootstrap (for UI)
- Toastr.js (for notifications)

## Installation & Setup
### Prerequisites
- Java 17 installed
- MySQL installed and running
- Maven installed
- IntelliJ IDEA (or any IDE with Spring Boot support)

### Steps to Run the Project
1. Clone this repository:
   ```sh
   git clone https://github.com/ChhandaviGowardhan/Task-Manager-Application.git

2. Navigate to the project directory:
   ```sh 
   cd task-manager

3. Configure application.properties (replace credentials accordingly):
   ```sh
   spring.datasource.url=jdbc:mysql://localhost:3306/todo_app
   spring.datasource.username=root
   spring.datasource.password=your_password
   
4. Build and run the project using Maven:
   ```sh
   mvn spring-boot:run

5. Access the application in your browser:
   ```sh
   http://localhost:8080/viewToDoList

## API Endpoints

| Method | Endpoint                   | Description              |
|--------|----------------------------|--------------------------|
| GET    | `/viewToDoList`            | View all tasks          |
| POST   | `/saveToDoItem`            | Add a new task          |
| GET    | `/updateToDoStatus/{id}`    | Mark task as completed  |
| POST   | `/editSaveToDoItem`        | Update an existing task |
| GET    | `/deleteToDoItem/{id}`      | Delete a task          |


## Contributor
- Chhandavi Gowardhan
