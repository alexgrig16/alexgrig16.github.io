<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Кафе "Березка" - Русская кухня</title>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@600;700&family=Open+Sans:wght@400;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        :root {
            --primary-color: #3A5F0B;
            --accent-color: #FFD700;
            --light-color: #F5F5F0;
            --dark-color: #333333;
        }
        
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        body {
            font-family: 'Open Sans', sans-serif;
            color: var(--dark-color);
            background-color: var(--light-color);
        }
        
        header {
            background-color: white;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
            position: sticky;
            top: 0;
            z-index: 100;
        }
        
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }
        
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px 0;
        }
        
        .logo {
            display: flex;
            align-items: center;
        }
        
        .logo img {
            height: 50px;
            margin-right: 10px;
        }
        
        .logo h1 {
            font-family: 'Montserrat', sans-serif;
            color: var(--primary-color);
            font-size: 24px;
        }
        
        nav ul {
            display: flex;
            list-style: none;
        }
        
        nav ul li {
            margin-left: 30px;
        }
        
        nav ul li a {
            text-decoration: none;
            color: var(--dark-color);
            font-weight: 600;
            transition: color 0.3s;
        }
        
        nav ul li a:hover {
            color: var(--primary-color);
        }
        
        .cta-button {
            background-color: var(--primary-color);
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
            font-weight: 600;
            transition: background-color 0.3s;
        }
        
        .cta-button:hover {
            background-color: #2d4a08;
            color: white;
        }
        
        .hero {
            background: linear-gradient(rgba(0,0,0,0.5), rgba(0,0,0,0.5)), url('https://images.unsplash.com/photo-1517248135467-4c7edcad34c4?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80');
            background-size: cover;
            background-position: center;
            color: white;
            text-align: center;
            padding: 100px 20px;
        }
        
        .hero h2 {
            font-family: 'Montserrat', sans-serif;
            font-size: 48px;
            margin-bottom: 20px;
        }
        
        .hero p {
            font-size: 20px;
            max-width: 700px;
            margin: 0 auto 30px;
        }
        
        .action-buttons {
            display: flex;
            justify-content: center;
            gap: 20px;
        }
        
        .action-buttons .btn {
            padding: 15px 30px;
            border-radius: 5px;
            font-weight: 600;
            text-decoration: none;
            transition: all 0.3s;
        }
        
        .primary-btn {
            background-color: var(--accent-color);
            color: var(--dark-color);
        }
        
        .primary-btn:hover {
            background-color: #e6c200;
        }
        
        .secondary-btn {
            background-color: transparent;
            color: white;
            border: 2px solid white;
        }
        
        .secondary-btn:hover {
            background-color: rgba(255,255,255,0.1);
        }
        
        section {
            padding: 80px 0;
        }
        
        .section-title {
            text-align: center;
            margin-bottom: 50px;
        }
        
        .section-title h2 {
            font-family: 'Montserrat', sans-serif;
            font-size: 36px;
            color: var(--primary-color);
            margin-bottom: 15px;
        }
        
        .section-title p {
            font-size: 18px;
            color: #666;
            max-width: 700px;
            margin: 0 auto;
        }
        
        .menu-categories {
            display: flex;
            justify-content: center;
            margin-bottom: 40px;
            flex-wrap: wrap;
            gap: 15px;
        }
        
        .category-btn {
            padding: 10px 20px;
            background-color: white;
            border: 1px solid #ddd;
            border-radius: 30px;
            cursor: pointer;
            transition: all 0.3s;
        }
        
        .category-btn:hover, .category-btn.active {
            background-color: var(--primary-color);
            color: white;
            border-color: var(--primary-color);
        }
        
        .menu-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
            gap: 30px;
        }
        
        .menu-item {
            background-color: white;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
            transition: transform 0.3s;
        }
        
        .menu-item:hover {
            transform: translateY(-10px);
        }
        
        .menu-item-img {
            height: 200px;
            overflow: hidden;
        }
        
        .menu-item-img img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.5s;
        }
        
        .menu-item:hover .menu-item-img img {
            transform: scale(1.1);
        }
        
        .menu-item-content {
            padding: 20px;
        }
        
        .menu-item-title {
            font-family: 'Montserrat', sans-serif;
            font-size: 20px;
            margin-bottom: 10px;
            display: flex;
            justify-content: space-between;
        }
        
        .menu-item-price {
            color: var(--primary-color);
            font-weight: 600;
        }
        
        .menu-item-desc {
            color: #666;
            margin-bottom: 15px;
            font-size: 14px;
        }
        
        .menu-item-footer {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        
        .add-to-cart {
            background-color: var(--primary-color);
            color: white;
            border: none;
            padding: 8px 15px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        
        .add-to-cart:hover {
            background-color: #2d4a08;
        }
        
        .allergens {
            display: flex;
            gap: 5px;
        }
        
        .allergen {
            width: 20px;
            height: 20px;
            border-radius: 50%;
            background-color: #f8f8f8;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 10px;
            font-weight: bold;
        }
        
        .reservation {
            background-color: #f9f9f9;
        }
        
        .reservation-form {
            max-width: 600px;
            margin: 0 auto;
            background-color: white;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.05);
        }
        
        .form-group {
            margin-bottom: 20px;
        }
        
        .form-group label {
            display: block;
            margin-bottom: 8px;
            font-weight: 600;
        }
        
        .form-control {
            width: 100%;
            padding: 12px 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-family: 'Open Sans', sans-serif;
        }
        
        .form-row {
            display: flex;
            gap: 20px;
        }
        
        .form-row .form-group {
            flex: 1;
        }
        
        .submit-btn {
            width: 100%;
            padding: 15px;
            background-color: var(--primary-color);
            color: white;
            border: none;
            border-radius: 5px;
            font-weight: 600;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        
        .submit-btn:hover {
            background-color: #2d4a08;
        }
        
        footer {
            background-color: var(--dark-color);
            color: white;
            padding: 50px 0 20px;
        }
        
        .footer-content {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 30px;
            margin-bottom: 40px;
        }
        
        .footer-column h3 {
            font-family: 'Montserrat', sans-serif;
            margin-bottom: 20px;
            font-size: 18px;
        }
        
        .footer-column ul {
            list-style: none;
        }
        
        .footer-column ul li {
            margin-bottom: 10px;
        }
        
        .footer-column ul li a {
            color: #bbb;
            text-decoration: none;
            transition: color 0.3s;
        }
        
        .footer-column ul li a:hover {
            color: white;
        }
        
        .social-links {
            display: flex;
            gap: 15px;
        }
        
        .social-links a {
            color: white;
            font-size: 20px;
            transition: color 0.3s;
        }
        
        .social-links a:hover {
            color: var(--accent-color);
        }
        
        .copyright {
            text-align: center;
            padding-top: 20px;
            border-top: 1px solid #444;
            color: #bbb;
            font-size: 14px;
        }
        
        @media (max-width: 768px) {
            .navbar {
                flex-direction: column;
                padding: 15px 0;
            }
            
            nav ul {
                margin-top: 20px;
            }
            
            nav ul li {
                margin: 0 10px;
            }
            
            .hero h2 {
                font-size: 36px;
            }
            
            .hero p {
                font-size: 18px;
            }
            
            .action-buttons {
                flex-direction: column;
                align-items: center;
            }
            
            .form-row {
                flex-direction: column;
                gap: 0;
            }
        }
    </style>
</head>
<body>
    <header>
        <div class="container">
            <div class="navbar">
                <div class="logo">
                    <img src="https://via.placeholder.com/50x50?text=Березка" alt="Логотип кафе Березка">
                    <h1>Березка</h1>
                </div>
                <nav>
                    <ul>
                        <li><a href="#home">Главная</a></li>
                        <li><a href="#menu">Меню</a></li>
                        <li><a href="#reservation">Бронирование</a></li>
                        <li><a href="#about">О нас</a></li>
                        <li><a href="#contacts">Контакты</a></li>
                        <li><a href="#cart" class="cta-button"><i class="fas fa-shopping-cart"></i> Корзина</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </header>

    <section class="hero" id="home">
        <div class="container">
            <h2>Настоящая русская кухня</h2>
            <p>Добро пожаловать в кафе "Березка" - место, где традиции встречаются с современным комфортом</p>
            <div class="action-buttons">
                <a href="#menu" class="btn primary-btn">Посмотреть меню</a>
                <a href="#reservation" class="btn secondary-btn">Забронировать стол</a>
            </div>
        </div>
    </section>

    <section id="menu">
        <div class="container">
            <div class="section-title">
                <h2>Наше меню</h2>
                <p>Попробуйте наши фирменные блюда, приготовленные по традиционным рецептам</p>
            </div>
            
            <div class="menu-categories">
                <button class="category-btn active">Все блюда</button>
                <button class="category-btn">Закуски</button>
                <button class="category-btn">Супы</button>
                <button class="category-btn">Основные блюда</button>
                <button class="category-btn">Десерты</button>
                <button class="category-btn">Напитки</button>
            </div>
            
            <div class="menu-grid">
                <div class="menu-item">
                    <div class="menu-item-img">
                        <img src="https://images.unsplash.com/photo-1544025162-d76694265947?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80" alt="Борщ">
                    </div>
                    <div class="menu-item-content">
                        <h3 class="menu-item-title">Борщ <span class="menu-item-price">350 ₽</span></h3>
                        <p class="menu-item-desc">Традиционный украинский борщ с говядиной, сметаной и свежей зеленью</p>
                        <div class="menu-item-footer">
                            <div class="allergens">
                                <span class="allergen" title="Мясо">М</span>
                                <span class="allergen" title="Молочные продукты">Мл</span>
                            </div>
                            <button class="add-to-cart">В корзину</button>
                        </div>
                    </div>
                </div>
                
                <div class="menu-item">
                    <div class="menu-item-img">
                        <img src="https://images.unsplash.com/photo-1599305445671-ac291c95aaa9?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80" alt="Пельмени">
                    </div>
                    <div class="menu-item-content">
                        <h3 class="menu-item-title">Пельмени <span class="menu-item-price">420 ₽</span></h3>
                        <p class="menu-item-desc">Домашние пельмени с говядиной и свининой, подаются со сметаной и уксусом</p>
                        <div class="menu-item-footer">
                            <div class="allergens">
                                <span class="allergen" title="Мясо">М</span>
                                <span class="allergen" title="Молочные продукты">Мл</span>
                                <span class="allergen" title="Глютен">Г</span>
                            </div>
                            <button class="add-to-cart">В корзину</button>
                        </div>
                    </div>
                </div>
                
                <div class="menu-item">
                    <div class="menu-item-img">
                        <img src="https://images.unsplash.com/photo-1601050690597-df0568f70950?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80" alt="Блины">
                    </div>
                    <div class="menu-item-content">
                        <h3 class="menu-item-title">Блины с икрой <span class="menu-item-price">580 ₽</span></h3>
                        <p class="menu-item-desc">Тонкие блины с красной икрой, сливочным маслом и зеленым луком</p>
                        <div class="menu-item-footer">
                            <div class="allergens">
                                <span class="allergen" title="Молочные продукты">Мл</span>
                                <span class="allergen" title="Глютен">Г</span>
                                <span class="allergen" title="Рыба">Р</span>
                            </div>
                            <button class="add-to-cart">В корзину</button>
                        </div>
                    </div>
                </div>
                
                <div class="menu-item">
                    <div class="menu-item-img">
                        <img src="https://images.unsplash.com/photo-1604908176997-125f25cc6f3d?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80" alt="Гречка">
                    </div>
                    <div class="menu-item-content">
                        <h3 class="menu-item-title">Гречка с грибами <span class="menu-item-price">320 ₽</span></h3>
                        <p class="menu-item-desc">Ароматная гречневая каша с лесными грибами и луком</p>
                        <div class="menu-item-footer">
                            <div class="allergens">
                                <span class="allergen" title="Вегетарианское">В</span>
                            </div>
                            <button class="add-to-cart">В корзину</button>
                        </div>
                    </div>
                </div>
                
                <div class="menu-item">
                    <div class="menu-item-img">
                        <img src="https://images.unsplash.com/photo-1563805042-7684c019e1cb?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80" alt="Оливье">
                    </div>
                    <div class="menu-item-content">
                        <h3 class="menu-item-title">Салат Оливье <span class="menu-item-price">290 ₽</span></h3>
                        <p class="menu-item-desc">Классический новогодний салат с колбасой, овощами и майонезом</p>
                        <div class="menu-item-footer">
                            <div class="allergens">
                                <span class="allergen" title="Мясо">М</span>
                                <span class="allergen" title="Яйца">Я</span>
                            </div>
                            <button class="add-to-cart">В корзину</button>
                        </div>
                    </div>
                </div>
                
                <div class="menu-item">
                    <div class="menu-item-img">
                        <img src="https://images.unsplash.com/photo-1519676867240-f03562e64548?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80" alt="Медовик">
                    </div>
                    <div class="menu-item-content">
                        <h3 class="menu-item-title">Медовик <span class="menu-item-price">250 ₽</span></h3>
                        <p class="menu-item-desc">Нежный медовый торт со сметанным кремом</p>
                        <div class="menu-item-footer">
                            <div class="allergens">
                                <span class="allergen" title="Молочные продукты">Мл</span>
                                <span class="allergen" title="Глютен">Г</span>
                                <span class="allergen" title="Яйца">Я</span>
                            </div>
                            <button class="add-to-cart">В корзину</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="reservation" id="reservation">
        <div class="container">
            <div class="section-title">
                <h2>Забронировать стол</h2>
                <p>Забронируйте стол онлайн и получите 10% скидку на первый заказ</p>
            </div>
            
            <div class="reservation-form">
                <form>
                    <div class="form-row">
                        <div class="form-group">
                            <label for="name">Ваше имя</label>
                            <input type="text" id="name" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label for="phone">Телефон</label>
                            <input type="tel" id="phone" class="form-control" required>
                        </div>
                    </div>
                    
                    <div class="form-row">
                        <div class="form-group">
                            <label for="date">Дата</label>
                            <input type="date" id="date" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label for="time">Время</label>
                            <input type="time" id="time" class="form-control" required>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label for="guests">Количество гостей</label>
                        <select id="guests" class="form-control" required>
                            <option value="">Выберите количество</option>
                            <option value="1">1 человек</option>
                            <option value="2">2 человека</option>
                            <option value="3-4">3-4 человека</option>
                            <option value="5-6">5-6 человек</option>
                            <option value="7+">Более 6 человек</option>
                        </select>
                    </div>
                    
                    <div class="form-group">
                        <label for="comments">Особые пожелания</label>
                        <textarea id="comments" class="form-control" rows="3"></textarea>
                    </div>
                    
                    <button type="submit" class="submit-btn">Забронировать стол</button>
                </form>
            </div>
        </div>
    </section>

    <footer id="contacts">
        <div class="container">
            <div class="footer-content">
                <div class="footer-column">
                    <h3>Кафе "Березка"</h3>
                    <p>Традиционная русская кухня в современной интерпретации</p>
                    <div class="social-links">
                        <a href="#"><i class="fab fa-instagram"></i></a>
                        <a href="#"><i class="fab fa-vk"></i></a>
                        <a href="#"><i class="fab fa-facebook"></i></a>
                        <a href="#"><i class="fab fa-telegram"></i></a>
                    </div>
                </div>
                
                <div class="footer-column">
                    <h3>Часы работы</h3>
                    <ul>
                        <li>Понедельник-Четверг: 10:00-22:00</li>
                        <li>Пятница-Суббота: 10:00-23:00</li>
                        <li>Воскресенье: 10:00-21:00</li>
                    </ul>
                </div>
                
                <div class="footer-column">
                    <h3>Контакты</h3>
                    <ul>
                        <li><i class="fas fa-map-marker-alt"></i> г. Москва, ул. Тверская, 12</li>
                        <li><i class="fas fa-phone"></i> +7 (495) 123-45-67</li>
                        <li><i class="fas fa-envelope"></i> info@berezka-cafe.ru</li>
                    </ul>
                </div>
                
                <div class="footer-column">
                    <h3>Быстрые ссылки</h3>
                    <ul>
                        <li><a href="#menu">Меню</a></li>
                        <li><a href="#reservation">Бронирование</a></li>
                        <li><a href="#">Доставка</a></li>
                        <li><a href="#">Акции</a></li>
                        <li><a href="#">О нас</a></li>
                    </ul>
                </div>
            </div>
            
            <div class="copyright">
                <p>&copy; 2023 Кафе "Березка". Все права защищены.</p>
            </div>
        </div>
    </footer>

    <script>
        // Простая логика для переключения категорий меню
        document.querySelectorAll('.category-btn').forEach(button => {
            button.addEventListener('click', () => {
                document.querySelector('.category-btn.active').classList.remove('active');
                button.classList.add('active');
                // Здесь должна быть логика фильтрации меню
            });
        });
        
        // Логика добавления в корзину
        document.querySelectorAll('.add-to-cart').forEach(button => {
            button.addEventListener('click', () => {
                const item = button.closest('.menu-item');
                const itemName = item.querySelector('.menu-item-title').textContent.split('₽')[0].trim();
                alert(`"${itemName}" добавлено в корзину!`);
                // Здесь должна быть логика добавления в корзину
            });
        });
    </script>
</body>
</html>
