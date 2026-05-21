<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>NexusShop - Modern E-Commerce UI</title>

    <!-- Google Fonts -->
    <link
        href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap"
        rel="stylesheet">

    <!-- Font Awesome -->
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            scroll-behavior: smooth;
        }

        :root {
            --bg: #0f172a;
            --card: rgba(255, 255, 255, 0.06);
            --surface: #1e293b;
            --primary: #ffffff;
            --accent: #06b6d4;
            --accent2: #8b5cf6;
            --muted: #94a3b8;
            --success: #22c55e;
            --danger: #ef4444;
            --radius: 20px;
            --container: 1300px;
        }

        body {
            font-family: 'Inter', sans-serif;
            color: var(--primary);

            background:
                radial-gradient(circle at top left, #1e1b4b 0%, transparent 30%),
                radial-gradient(circle at bottom right, #0f766e 0%, transparent 25%),
                var(--bg);

            min-height: 100vh;
            overflow-x: hidden;
        }

        a {
            text-decoration: none;
            color: inherit;
        }

        img {
            width: 100%;
            display: block;
        }

        .container {
            width: 100%;
            max-width: var(--container);
            margin: auto;
            padding: 0 20px;
        }

        /* HEADER */

        header {
            position: sticky;
            top: 0;
            z-index: 1000;
            backdrop-filter: blur(16px);
            background: rgba(15, 23, 42, .7);
            border-bottom: 1px solid rgba(255, 255, 255, .08);
        }

        .header-inner {
            height: 80px;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .logo {
            font-size: 28px;
            font-weight: 800;
        }

        .logo span {
            background: linear-gradient(135deg, var(--accent), var(--accent2));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        nav {
            display: flex;
            gap: 30px;
        }

        nav a {
            color: #cbd5e1;
            transition: .3s;
        }

        nav a:hover {
            color: white;
        }

        .search-box {
            display: flex;
            align-items: center;
            background: rgba(255, 255, 255, .08);
            border: 1px solid rgba(255, 255, 255, .08);
            border-radius: 999px;
            padding: 12px 18px;
            width: 260px;
        }

        .search-box input {
            width: 100%;
            background: transparent;
            border: none;
            outline: none;
            color: white;
            font-size: 14px;
        }

        .search-box i {
            color: var(--muted);
        }

        .header-right {
            display: flex;
            align-items: center;
            gap: 20px;
        }

        .icon-btn {
            width: 42px;
            height: 42px;
            border-radius: 50%;
            background: rgba(255, 255, 255, .08);
            display: flex;
            align-items: center;
            justify-content: center;
            transition: .3s;
            cursor: pointer;
        }

        .icon-btn:hover {
            transform: translateY(-3px);
            background: rgba(255, 255, 255, .15);
        }

        /* HERO */

        .hero {
            min-height: 90vh;
            display: flex;
            align-items: center;
            position: relative;

            background:
                linear-gradient(rgba(0, 0, 0, .6), rgba(0, 0, 0, .7)),
                url('https://images.unsplash.com/photo-1523275335684-37898b6baf30?q=80&w=1600&auto=format&fit=crop') center/cover no-repeat;
        }

        .hero::before {
            content: '';
            position: absolute;
            width: 600px;
            height: 600px;
            background: rgba(6, 182, 212, .18);
            filter: blur(120px);
            border-radius: 50%;
            top: -150px;
            right: -100px;
        }

        .hero-content {
            position: relative;
            z-index: 2;
            max-width: 750px;
        }

        .hero h1 {
            font-size: 72px;
            line-height: 1;
            margin-bottom: 25px;
            font-weight: 800;
        }

        .hero p {
            font-size: 18px;
            color: #dbeafe;
            margin-bottom: 35px;
            line-height: 1.7;
        }

        .btn-group {
            display: flex;
            gap: 18px;
            flex-wrap: wrap;
        }

        .btn {
            padding: 15px 32px;
            border: none;
            border-radius: 999px;
            font-weight: 700;
            cursor: pointer;
            transition: .3s ease;
            font-size: 15px;
        }

        .btn-primary {
            background: linear-gradient(135deg, var(--accent), var(--accent2));
            color: white;
            box-shadow: 0 10px 30px rgba(6, 182, 212, .35);
        }

        .btn-secondary {
            background: rgba(255, 255, 255, .08);
            color: white;
            border: 1px solid rgba(255, 255, 255, .1);
        }

        .btn:hover {
            transform: translateY(-4px) scale(1.03);
        }

        /* SECTION */

        section {
            padding: 100px 0;
        }

        .section-title {
            text-align: center;
            margin-bottom: 60px;
        }

        .section-title h2 {
            font-size: 42px;
            margin-bottom: 12px;
        }

        .section-title p {
            color: var(--muted);
        }

        /* CATEGORY */

        .categories {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(180px, 1fr));
            gap: 25px;
        }

        .category-card {
            background: rgba(255, 255, 255, .05);
            border: 1px solid rgba(255, 255, 255, .08);
            border-radius: 24px;
            padding: 35px 20px;
            text-align: center;
            transition: .35s ease;
            backdrop-filter: blur(14px);
            cursor: pointer;
        }

        .category-card:hover {
            transform: translateY(-12px);
            border-color: rgba(6, 182, 212, .5);
            box-shadow: 0 20px 40px rgba(6, 182, 212, .18);
        }

        .category-card i {
            font-size: 42px;
            margin-bottom: 20px;

            background: linear-gradient(135deg, var(--accent), var(--accent2));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .category-card h3 {
            margin-bottom: 10px;
        }

        .category-card p {
            color: var(--muted);
            font-size: 14px;
        }

        /* PRODUCTS */

        .products {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 30px;
        }

        .product-card {
            background: rgba(255, 255, 255, .05);
            border: 1px solid rgba(255, 255, 255, .08);
            border-radius: 24px;
            overflow: hidden;
            transition: .4s;
            backdrop-filter: blur(16px);
            position: relative;
        }

        .product-card:hover {
            transform: translateY(-14px);
            box-shadow:
                0 20px 50px rgba(0, 0, 0, .45),
                0 0 25px rgba(6, 182, 212, .2);
        }

        .product-card img {
            height: 280px;
            object-fit: cover;
            transition: .5s;
        }

        .product-card:hover img {
            transform: scale(1.08);
        }

        .product-content {
            padding: 22px;
        }

        .product-content h3 {
            margin-bottom: 10px;
        }

        .product-content p {
            color: var(--muted);
            margin-bottom: 18px;
        }

        .price {
            display: flex;
            align-items: center;
            gap: 12px;
            margin-bottom: 20px;
        }

        .price h4 {
            font-size: 26px;
        }

        .price span {
            text-decoration: line-through;
            color: var(--muted);
        }

        .card-btn {
            width: 100%;
            padding: 14px;
            border-radius: 14px;
            border: none;
            font-weight: 700;
            cursor: pointer;

            background: linear-gradient(135deg, var(--accent), var(--accent2));
            color: white;
        }

        /* DEAL SECTION */

        .deal-box {
            background: linear-gradient(135deg, #111827, #1e293b);
            border-radius: 30px;
            overflow: hidden;
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(320px, 1fr));
            align-items: center;
            border: 1px solid rgba(255, 255, 255, .08);
        }

        .deal-content {
            padding: 50px;
        }

        .deal-content h2 {
            font-size: 48px;
            margin-bottom: 20px;
        }

        .deal-content p {
            color: var(--muted);
            line-height: 1.8;
            margin-bottom: 30px;
        }

        .deal-image img {
            height: 100%;
            object-fit: cover;
        }

        /* FOOTER */

        footer {
            padding: 60px 0 30px;
            border-top: 1px solid rgba(255, 255, 255, .08);
        }

        .footer-content {
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
            gap: 40px;
        }

        .footer-logo {
            font-size: 28px;
            font-weight: 800;
            margin-bottom: 20px;
        }

        .footer-logo span {
            background: linear-gradient(135deg, var(--accent), var(--accent2));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .footer-links h4 {
            margin-bottom: 20px;
        }

        .footer-links a {
            display: block;
            margin-bottom: 12px;
            color: var(--muted);
        }

        .footer-links a:hover {
            color: white;
        }

        .copyright {
            text-align: center;
            color: var(--muted);
            margin-top: 50px;
        }

        /* RESPONSIVE */

        @media(max-width:900px) {
            nav {
                display: none;
            }

            .hero h1 {
                font-size: 52px;
            }
        }

        @media(max-width:600px) {

            .hero {
                min-height: 75vh;
            }

            .hero h1 {
                font-size: 40px;
            }

            .section-title h2 {
                font-size: 32px;
            }

            .deal-content h2 {
                font-size: 34px;
            }

            .search-box {
                display: none;
            }
        }
    </style>
</head>

<body>

    <!-- HEADER -->

    <header>
        <div class="container header-inner">

            <div class="logo">
                Nexus<span>Shop</span>
            </div>

            <nav>
                <a href="#">Home</a>
                <a href="#">Products</a>
                <a href="#">Categories</a>
                <a href="#">Deals</a>
                <a href="#">Contact</a>
            </nav>

            <div class="header-right">

                <div class="search-box">
                    <input type="text" placeholder="Search products...">
                    <i class="fas fa-search"></i>
                </div>

                <div class="icon-btn">
                    <i class="far fa-heart"></i>
                </div>

                <div class="icon-btn">
                    <i class="fas fa-shopping-cart"></i>
                </div>

            </div>

        </div>
    </header>

    <!-- HERO -->

    <section class="hero">

        <div class="container">

            <div class="hero-content">

                <h1>
                    Premium Shopping Experience
                </h1>

                <p>
                    Discover futuristic gadgets, premium fashion, and modern accessories
                    with next-generation shopping UI experience.
                </p>

                <div class="btn-group">

                    <button class="btn btn-primary">
                        Shop Now
                    </button>

                    <button class="btn btn-secondary">
                        Explore Deals
                    </button>

                </div>

            </div>

        </div>

    </section>

    <!-- CATEGORY -->

    <section>

        <div class="container">

            <div class="section-title">
                <h2>Shop by Category</h2>
                <p>Explore premium collections</p>
            </div>

            <div class="categories">

                <div class="category-card">
                    <i class="fas fa-mobile-alt"></i>
                    <h3>Smartphones</h3>
                    <p>Latest flagship phones</p>
                </div>

                <div class="category-card">
                    <i class="fas fa-laptop"></i>
                    <h3>Laptops</h3>
                    <p>Powerful workstations</p>
                </div>

                <div class="category-card">
                    <i class="fas fa-headphones"></i>
                    <h3>Audio</h3>
                    <p>Premium sound devices</p>
                </div>

                <div class="category-card">
                    <i class="fas fa-clock"></i>
                    <h3>Watches</h3>
                    <p>Luxury smart watches</p>
                </div>

            </div>

        </div>

    </section>

    <!-- PRODUCTS -->

    <section>

        <div class="container">

            <div class="section-title">
                <h2>Trending Products</h2>
                <p>Best selling premium gadgets</p>
            </div>

            <div class="products">

                <!-- PRODUCT 1 -->

                <div class="product-card">

                    <img
                        src="https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?q=80&w=1200&auto=format&fit=crop"
                        alt="iPhone">

                    <div class="product-content">

                        <h3>iPhone 15 Pro Max</h3>

                        <p>Premium Apple flagship smartphone</p>

                        <div class="price">
                            <h4>$1199</h4>
                            <span>$1399</span>
                        </div>

                        <button class="card-btn">
                            Add to Cart
                        </button>

                    </div>

                </div>

                <!-- PRODUCT 2 -->

                <div class="product-card">

                    <img
                        src="https://images.unsplash.com/photo-1496181133206-80ce9b88a853?q=80&w=1200&auto=format&fit=crop"
                        alt="Laptop">

                    <div class="product-content">

                        <h3>MacBook Pro M3</h3>

                        <p>Powerful creator workstation</p>

                        <div class="price">
                            <h4>$2499</h4>
                            <span>$2799</span>
                        </div>

                        <button class="card-btn">
                            Add to Cart
                        </button>

                    </div>

                </div>

                <!-- PRODUCT 3 -->

                <div class="product-card">

                    <img
                        src="https://images.unsplash.com/photo-1505740420928-5e560c06d30e?q=80&w=1200&auto=format&fit=crop"
                        alt="Headphones">

                    <div class="product-content">

                        <h3>Sony XM5</h3>

                        <p>Industry-leading noise cancellation</p>

                        <div class="price">
                            <h4>$399</h4>
                            <span>$499</span>
                        </div>

                        <button class="card-btn">
                            Add to Cart
                        </button>

                    </div>

                </div>

            </div>

        </div>

    </section>

    <!-- DEAL SECTION -->

    <section>

        <div class="container">

            <div class="deal-box">

                <div class="deal-content">

                    <h2>Flash Sale 50% OFF</h2>

                    <p>
                        Upgrade your lifestyle with futuristic gadgets and luxury
                        accessories. Limited time premium offers available now.
                    </p>

                    <button class="btn btn-primary">
                        Buy Now
                    </button>

                </div>

                <div class="deal-image">

                    <img
                        src="https://images.unsplash.com/photo-1542291026-7eec264c27ff?q=80&w=1400&auto=format&fit=crop"
                        alt="Deal Product">

                </div>

            </div>

        </div>

    </section>

    <!-- FOOTER -->

    <footer>

        <div class="container">

            <div class="footer-content">

                <div>

                    <div class="footer-logo">
                        Nexus<span>Shop</span>
                    </div>

                    <p style="color: var(--muted); max-width: 350px;">
                        Modern futuristic e-commerce UI design with premium shopping experience.
                    </p>

                </div>

                <div class="footer-links">

                    <h4>Company</h4>

                    <a href="#">About</a>
                    <a href="#">Careers</a>
                    <a href="#">Support</a>

                </div>

                <div class="footer-links">

                    <h4>Quick Links</h4>

                    <a href="#">Products</a>
                    <a href="#">Categories</a>
                    <a href="#">Deals</a>

                </div>

                <div class="footer-links">

                    <h4>Follow Us</h4>

                    <a href="#"><i class="fab fa-facebook"></i> Facebook</a>
                    <a href="#"><i class="fab fa-instagram"></i> Instagram</a>
                    <a href="#"><i class="fab fa-twitter"></i> Twitter</a>

                </div>

            </div>

            <div class="copyright">
                © 2026 NexusShop. All Rights Reserved.
            </div>

        </div>

    </footer>

</body>

</html>
