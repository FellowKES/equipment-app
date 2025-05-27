Laravel Equipment Management

Система обліку обладнання на Laravel з адмінпанеллю Filament, мобільним фронтом для користувачів і підтримкою Redmine API.

⚙️ Склад проекту

Laravel 11 (у контейнері app)

PostgreSQL 15 (контейнер db)

Mailpit для email-тестування (8025)

Filament Admin Panel (темна тема)

Excel-імпорт/експорт обладнання

Redmine API інтеграція

🚀 Швидкий запуск

1. Клонувати репозиторій:

git clone <https://github.com/FellowKES/equipment-app>
cd equipment-app

2. Запустити Docker-контейнери:

docker-compose up -d --build

3. Ініціалізація Laravel всередині контейнера:

docker exec -it laravel_app bash
composer install
cp .env.example .env
php artisan key:generate
php artisan migrate --seed
exit

4. Доступи

Застосунок: http://localhost:8000

Mailpit (email UI): http://localhost:8025

🔐 Доступ до адмінки

URL: /admin

Admin:

Email: admin@example.com

Password: password

📥 Імпорт обладнання з Excel

В адмінці → Обладнання → Імпорт

Підтримуються формати: .xlsx, .csv

Структура прикладу буде у /storage/import-template.xlsx

🔗 Підключення до Redmine

Вказати API-ключ і URL у .env:

REDMINE_URL=https://redmine.local
REDMINE_API_KEY=your_api_key

Laravel створює задачі в Redmine при списанні, поверненні або поломці обладнання

📱 Публічна сторінка для користувача

Користувач вводить пароль або код → переглядає обладнання, закріплене за ним

Підтримка QR-коду для швидкого доступу

Адаптивна мобільна верстка

📌 TODO (етапи розробки)



