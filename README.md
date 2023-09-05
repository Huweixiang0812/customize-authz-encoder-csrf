# Customized Authz Encoder with CSRF Protection

This project, `customize-authz-encoder-csrf`, demonstrates how to build a custom authentication and authorization system with CSRF (Cross-Site Request Forgery) protection using Java 8, MySQL 8, Docker, Maven, and a variety of dependencies including Spring Security, MyBatis-Plus, MySQL JDBC Driver, and Lombok.

## Prerequisites

Before you get started with this project, make sure you have the following prerequisites installed:

1. **Java 8**: You'll need Java 8 to run this application.

2. **MySQL 8**: Install MySQL 8 and ensure it's running.

3. **Docker**: Make sure Docker is installed on your system.

4. **Maven**: This project uses Maven for managing dependencies. Install it if you haven't already.

## Setup

Follow these steps to set up and run the project:

1. **Database Setup**:

    - Create a MySQL 8 database.
    - Import the database script from the directory.
    - Map the database running on port 3306 in Docker to your localhost.

2. **Accessing CSRF Token**:

    - You can obtain the CSRF token by making a GET request with basic authorization in your browser, Postman, or any other HTTP client.

      ```
      GET http://localhost:80/csrf-token
      Authorization: Basic <base64-encoded-username-and-password>
      ```

3. **Making Authorized Requests**:

    - Once you have obtained the CSRF token, you can use it in your POST requests for authorization. Include the CSRF token in the header like this:

      ```
      ### Example POST Request
      POST http://localhost/hello
      Authorization: Basic <base64-encoded-username-and-password>
      X-CSRF-TOKEN: <your-csrf-token>
      ```

4. **Authorization**:

    - Your requests will be granted authorization if the provided Authorization credentials and CSRF token match the expected values.

## License

This project is licensed under the [MIT License](LICENSE).

---

Feel free to contribute to this project, report issues, or provide feedback.