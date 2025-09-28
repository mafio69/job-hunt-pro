
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
