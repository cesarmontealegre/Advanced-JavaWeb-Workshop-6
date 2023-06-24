# Example of Form Login and Register Users Creation with Bootstrap 5 Using Jakarta EE and Wildfly

This is a sample project designed to help beginner developers understand the parts and technologies used in creating web applications with Bootstrap 5, Jakarta EE, and Wildfly. The sample application is a simple form application that uses Bootstrap 5 for the user interface.

## Technologies Used

The sample application uses several technologies, including:

- Bootstrap 5: For UI design and styling.
- Jakarta EE: To provide the application framework.
- Wildfly: As a Java application server.

The technical implementation of the application uses several Jakarta EE technologies, including:

- Servlets: To handle client requests.
- JSP: To generate dynamic web pages.
- JPA: To access and manipulate application data in the database.

Additionally, we added the following features:

- MySQL Database: A MySQL database was created to store user data for registration and login.
- User Registration and Login: Registration and login forms were created to allow users to register and access the application.

## Different Ways To Connect To a Database

1. BasicConnection.

![image](https://user-images.githubusercontent.com/84823972/236591151-e9ef1142-dbda-4834-826a-12e6b55c7d0e.png)

2. BasicConnectionSingleton.

![image](https://user-images.githubusercontent.com/84823972/236591197-61bf7a72-b4c5-4b7d-832f-070c3e95827b.png)

3. BasicConnectionWithResources.

![image](https://user-images.githubusercontent.com/84823972/236591220-5a27d6b8-3363-4191-bd7a-bb3fe6ffeaf3.png)

4. ConnectionPool.

![image](https://user-images.githubusercontent.com/84823972/236591259-c34df47e-fb98-4aad-b0ab-cb0139294707.png)

5. UseBasicConnectionSingleton.

![image](https://user-images.githubusercontent.com/84823972/236591296-0e177840-64b6-4212-8364-6ebc1077f772.png)

6. UseConnectionPool.

![image](https://user-images.githubusercontent.com/84823972/236591330-57986f21-e4ac-41f1-a3d1-32f8b08adf23.png)

## Password security MySQL

- Encryption (AES_ENCRYPT)

AES_ENCRYPT is a MySQL function that encrypts a string using the AES algorithm with a specified key. The resulting encrypted string is returned as a binary string.

![image](https://user-images.githubusercontent.com/84823972/236591540-439462e1-1a4e-402b-b96b-6170da3bd78c.png)

- Decrypt (AES_DECRYPT)

AES_DECRYPT is a MySQL function that decrypts an AES-encrypted string using the specified key. The function takes the encrypted string and the key as inputs and returns the original plaintext string.

![image](https://user-images.githubusercontent.com/84823972/236591609-a642343c-39c1-446d-ba3d-266201a77774.png)

## Repository Pattern


The Repository Pattern is a design pattern that separates the business logic of an application from the data access layer, by using a repository object as an intermediary between the application and the data storage system. It helps in writing modular and scalable code, and makes the application easier to maintain and test.

- TestUserRepositoryImpl

![image](https://github.com/cesarmontealegre/Advanced-JavaWeb-Workshop-4/assets/84823972/0b3b526e-ced1-4e77-bd75-7d1947af6ad4)

## How to Run the Project

To run the project, you will need to follow these steps:

1. Clone or download this repository to your local machine.
2. Import the project into your preferred Java IDE.
3. Ensure that Wildfly is installed on your local machine.
4. Configure the Wildfly server in your Java IDE.
5. Deploy the application to the Wildfly server.
6. Open a web browser and go to the URL http://localhost:"configured port" to access the application.
