
# Job Hunt Pro 🚀

A modern Laravel 11 application built with Sail, Vue.js, and Inertia.js for job hunting and career management.

## 🛠️ Tech Stack

- **Backend**: Laravel 11, PHP 8.3
- **Frontend**: Vue.js 3, TypeScript, Inertia.js
- **Database**: MySQL 8.0
- **Containerization**: Docker with Laravel Sail
- **UI Components**: Tailwind CSS, Radix Vue
- **Authentication**: Laravel Fortify with 2FA support
- **Queue System**: Database-driven queues

## 🚀 Quick Start

### Prerequisites

- Docker & Docker Compose
- Git

### Installation

1. **Clone the repository**
```bash
git clone git@github.com:mafio69/job-hunt-pro.git
cd job-hunt-pro
```

**Note:** This application is configured to use MySQL by default. If you want to use SQLite for development, you need to modify the `.env` file and set:
```
DB_CONNECTION=sqlite
```
Then create an empty database file at `database/database.sqlite`.

2. **Start Docker containers**
```bash
./vendor/bin/sail up -d
```

3. **Install dependencies**
```bash
./vendor/bin/sail npm install
```

4. **Run database migrations and seeders**
```bash
./vendor/bin/sail artisan migrate --seed
```

5. **Build frontend assets**
```bash
./vendor/bin/sail npm run build
```

6. **Access the application**
   Open your browser and go to `http://localhost`

### Development

To start development server:
```bash
./vendor/bin/sail npm run dev
```

### Testing

Run tests with:
```bash
./vendor/bin/sail artisan test
```

## 📁 Project Structure

```
app/
bootstrap/
config/
database/
lang/
public/
resources/
routes/
storage/
tests/
```
### 📋 Available Scripts
Custom Development Scripts  
./start.sh - Complete startup (containers, migrations, queue worker)  
./stop.sh - Stop all containers and processes    
./dev.sh - Start with Vite dev server

## RUN
chmod +x start.sh  
chmod +x stop.sh  
chmod +x dev.sh

. start.sh #!/bin/bash  
. stop.sh #!/bin/bash  
. dev.sh #!/bin/bash

# Run Docker containers
./vendor/bin/sail up -d

# Install dependencies
./vendor/bin/sail npm install

# Run database migrations and seeders
./vendor/bin/sail artisan migrate --seed

# Build frontend assets
./vendor/bin/sail npm run build
## 📖 Documentation

For detailed documentation, please refer to the [Laravel Documentation](https://laravel.com/docs) and [Vue.js Documentation](https://vuejs.org/).

## 🤝 Contributing

1. Fork it
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Create a new Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

# Required for Docker warnings
MYSQL_EXTRA_OPTIONS=
# Example .env file for db connection
DB_CONNECTION=mysql
DB_HOST=mysql
DB_PORT=3306
DB_DATABASE=laravel
DB_USERNAME=sail
DB_PASSWORD=password
