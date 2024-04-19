
# Fedha - Mobile Application

Welcome to the **Fedha Expense Tracker Application**  This project allows you to efficiently manage expenses by providing APIs for recording, managing, and analyzing financial data.

## Getting Started

1. **Clone the Repository:**
   ```
   git clone https://github.com/MikeMwita/fedha_mobile.git
   ```

2. **Navigate to the Project Directory:**
   ```
   cd fedha/fedha_server
   ```

3. **Start the Server:**
   - Build and launch the Docker containers:
     ```
     docker compose up --build --detach
     ```
   - Apply database migrations:
     ```
     dart bin/main.dart --apply-migrations
     ```


5. **Project Structure:**
   - `lib/`: Contains the main Dart code for the backend.
   - `lib/api/`: Defines API routes and controllers.
   - `lib/models/`: Contains data models (e.g., Expense, User, Category).
   - `lib/database/`: Includes database setup and migrations.
   - `lib/utils/`: Utility functions and helpers.




9. **Contributing:**
   - Feel free to contribute by opening issues, suggesting improvements, or submitting pull requests. Let's make this Expense Tracker even better!

## License

This project is licensed under the **MIT License**. See the [LICENSE](LICENSE) file for details.


