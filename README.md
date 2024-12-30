# ChatGPT Integration for Laravel

## Task Summary
Integrate ChatGPT into the Laravel application to manage and facilitate conversations. This feature includes setting up the ChatGPT API, storing conversations, and creating a simple chat interface for user interaction.

## Features
1. **ChatGPT API Integration**: Set up and configure OpenAI's ChatGPT API.
2. **Conversation Management**: Store conversations with timestamps.
3. **Frontend Interface**: Provide a basic and intuitive chat interface for users to interact with ChatGPT.

## Technologies Used
- **Backend**: Laravel 10
- **Language**: PHP 8.2
- **Database**: MySQL 8.35
- **HTTP Client**: Guzzle (for making API requests)

## API Setup
1. Generate an API key by visiting [Groq API](https://groq.com/).

## Installation

### Prerequisites
- PHP >= 8.2
- Composer
- MySQL >= 8.35


### Steps
1. Clone the repository:
   ```bash
   git clone <https://github.com/Karvendhannagaraj/laravel-chatgpt-integration>
   cd laravel-chatgpt-integration
   ```

2. Install dependencies:
   ```bash
   composer install
   ```

3. Create a `.env` file:
   ```bash
   cp .env.example .env
   ```

4. Configure the database and other settings in the `.env` file.

5. Run migrations and seed the database:
   ```bash
   php artisan migrate --seed
   ```

6. Start the server:
   ```bash
   php artisan serve
   ```

## Configuration

### Fine Settings
- Configure the fine amount per day in the `.env` file:
  ```env
  CHATGPT_API_KEY=your-openai-api-key
  ```


