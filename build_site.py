import os
import shutil

base_dir = r"c:\web4"
assets_dir = os.path.join(base_dir, "assets")
os.makedirs(assets_dir, exist_ok=True)

brain_dir = r"C:\Users\User\.gemini\antigravity\brain\6fc03b55-0220-4fc9-8128-c2c80125f610"

image_map = {
    "logo_1778046621661.png": "logo.png",
    "casual_tshirt_1778046637071.png": "casual_tshirt.png",
    "casual_jeans_1778046651063.png": "casual_jeans.png",
    "casual_hoodie_1778046665778.png": "casual_hoodie.png",
    "casual_sneakers_1778046679718.png": "casual_sneakers.png",
    "formal_suit_1778046701611.png": "formal_suit.png",
    "formal_shirt_1778046715225.png": "formal_shirt.png",
    "formal_tie_1778046729174.png": "formal_tie.png",
    "formal_shoes_1778046742757.png": "formal_shoes.png",
    "jewelry_watch_1778046759151.png": "jewelry_watch.png",
    "jewelry_bracelet_1778046780198.png": "jewelry_bracelet.png",
    "jewelry_ring_1778046796855.png": "jewelry_ring.png",
    "jewelry_cufflinks_1778046809958.png": "jewelry_cufflinks.png",
    "accessories_belt_1778046825862.png": "accessories_belt.png",
    "accessories_sunglasses_1778046838916.png": "accessories_sunglasses.png",
    "others_wallet_1778046878568.png": "others_wallet.png",
    "others_backpack_1778046894844.png": "others_backpack.png"
}

for src, dst in image_map.items():
    src_path = os.path.join(brain_dir, src)
    dst_path = os.path.join(assets_dir, dst)
    if os.path.exists(src_path):
        shutil.copy2(src_path, dst_path)

products = [
    {"id": "casual_tshirt", "name": "Premium White T-Shirt", "category": "casual", "price": "$45", "img": "assets/casual_tshirt.png"},
    {"id": "casual_jeans", "name": "Classic Blue Denim", "category": "casual", "price": "$85", "img": "assets/casual_jeans.png"},
    {"id": "casual_hoodie", "name": "Essential Grey Hoodie", "category": "casual", "price": "$70", "img": "assets/casual_hoodie.png"},
    {"id": "casual_sneakers", "name": "Minimalist White Sneakers", "category": "casual", "price": "$120", "img": "assets/casual_sneakers.png"},
    {"id": "formal_suit", "name": "Signature Black Suit", "category": "formal", "price": "$450", "img": "assets/formal_suit.png"},
    {"id": "formal_shirt", "name": "Tailored White Dress Shirt", "category": "formal", "price": "$90", "img": "assets/formal_shirt.png"},
    {"id": "formal_tie", "name": "Woven Silk Tie", "category": "formal", "price": "$45", "img": "assets/formal_tie.png"},
    {"id": "formal_shoes", "name": "Classic Leather Oxfords", "category": "formal", "price": "$180", "img": "assets/formal_shoes.png"},
    {"id": "jewelry_watch", "name": "Chronograph Silver Watch", "category": "jewelry", "price": "$250", "img": "assets/jewelry_watch.png"},
    {"id": "jewelry_bracelet", "name": "Link Silver Bracelet", "category": "jewelry", "price": "$75", "img": "assets/jewelry_bracelet.png"},
    {"id": "jewelry_ring", "name": "Minimalist Silver Ring", "category": "jewelry", "price": "$60", "img": "assets/jewelry_ring.png"},
    {"id": "jewelry_cufflinks", "name": "Engraved Cufflinks", "category": "jewelry", "price": "$55", "img": "assets/jewelry_cufflinks.png"},
    {"id": "accessories_belt", "name": "Full Grain Leather Belt", "category": "accessories", "price": "$65", "img": "assets/accessories_belt.png"},
    {"id": "accessories_sunglasses", "name": "Aviator Sunglasses", "category": "accessories", "price": "$140", "img": "assets/accessories_sunglasses.png"},
    {"id": "others_wallet", "name": "Bifold Leather Wallet", "category": "others", "price": "$80", "img": "assets/others_wallet.png"},
    {"id": "others_backpack", "name": "Urban Leather Backpack", "category": "others", "price": "$210", "img": "assets/others_backpack.png"}
]

categories = {
    "casual": "休閒服飾 (Casual Wear)",
    "formal": "正式服飾 (Formal Wear)",
    "jewelry": "飾品 (Jewelry)",
    "accessories": "配件 (Accessories)",
    "others": "其它類 (Others)"
}

nav_html = '''
<nav class="glass-nav">
    <div class="nav-content">
        <a href="index.html" class="logo-container">
            <img src="assets/logo.png" alt="ELEVATE Logo" class="logo">
            <span class="brand-name">ELEVATE</span>
        </a>
        <div class="nav-links">
            <a href="index.html">首頁</a>
            <a href="about.html">公司簡介</a>
            <div class="dropdown">
                <a href="#" class="dropbtn">產品分類</a>
                <div class="dropdown-content">
                    <a href="casual.html">休閒服飾</a>
                    <a href="formal.html">正式服飾</a>
                    <a href="jewelry.html">飾品</a>
                    <a href="accessories.html">配件</a>
                    <a href="others.html">其它類</a>
                </div>
            </div>
            <a href="contact.html">聯絡我們</a>
        </div>
    </div>
</nav>
'''

footer_html = '''
<footer>
    <div class="footer-content">
        <div class="footer-section">
            <h3>ELEVATE</h3>
            <p>Redefining modern men's elegance.</p>
        </div>
        <div class="footer-section">
            <h3>Contact</h3>
            <p>Email: contact@elevate.com</p>
            <p>Phone: +1 234 567 890</p>
        </div>
    </div>
    <div class="footer-bottom">
        <p>&copy; 2026 ELEVATE. All rights reserved.</p>
    </div>
</footer>
'''

def get_html_template(title, content):
    return f'''<!DOCTYPE html>
<html lang="zh-TW">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{title} | ELEVATE</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&family=Outfit:wght@400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    {nav_html}
    <main>
        {content}
    </main>
    {footer_html}
</body>
</html>'''

# Write index.html
index_content = '''
<section class="hero">
    <div class="hero-text">
        <h1>Elevate Your Style</h1>
        <p>Premium men's clothing designed for the modern gentleman.</p>
        <a href="formal.html" class="cta-button">Shop Collection</a>
    </div>
</section>
<section class="featured-categories">
    <h2>Explore Collections</h2>
    <div class="category-grid">
        <a href="casual.html" class="category-card" style="background-image: url('assets/casual_tshirt.png')">
            <div class="category-overlay"><h3>休閒服飾 Casual</h3></div>
        </a>
        <a href="formal.html" class="category-card" style="background-image: url('assets/formal_suit.png')">
            <div class="category-overlay"><h3>正式服飾 Formal</h3></div>
        </a>
        <a href="jewelry.html" class="category-card" style="background-image: url('assets/jewelry_watch.png')">
            <div class="category-overlay"><h3>飾品 Jewelry</h3></div>
        </a>
        <a href="accessories.html" class="category-card" style="background-image: url('assets/accessories_sunglasses.png')">
            <div class="category-overlay"><h3>配件 Accessories</h3></div>
        </a>
    </div>
</section>
'''
with open(os.path.join(base_dir, "index.html"), "w", encoding="utf-8") as f:
    f.write(get_html_template("首頁 (Home)", index_content))

# Write about.html
about_content = '''
<section class="page-header">
    <h1>About ELEVATE</h1>
</section>
<section class="about-content">
    <div class="glass-card about-card">
        <h2>Our Story</h2>
        <p>Founded in 2026, ELEVATE is a premium men's clothing brand dedicated to providing high-quality, modern, and elegant attire for the contemporary gentleman. We believe that true style is timeless and should be accessible to everyone who values craftsmanship and design.</p>
        <h2>Our Mission</h2>
        <p>To redefine men's fashion by combining classic tailoring with modern aesthetics, ensuring every piece we create is a testament to quality and sophistication.</p>
    </div>
</section>
'''
with open(os.path.join(base_dir, "about.html"), "w", encoding="utf-8") as f:
    f.write(get_html_template("公司簡介 (About Us)", about_content))

# Write contact.html
contact_content = '''
<section class="page-header">
    <h1>Contact Us</h1>
</section>
<section class="contact-content">
    <div class="glass-card contact-card">
        <h2>Get In Touch</h2>
        <form class="contact-form">
            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" id="name" placeholder="Your Name">
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" placeholder="Your Email">
            </div>
            <div class="form-group">
                <label for="message">Message</label>
                <textarea id="message" rows="5" placeholder="Your Message"></textarea>
            </div>
            <button type="button" class="cta-button submit-btn">Send Message</button>
        </form>
    </div>
</section>
'''
with open(os.path.join(base_dir, "contact.html"), "w", encoding="utf-8") as f:
    f.write(get_html_template("聯絡我們 (Contact Us)", contact_content))

# Write category pages
for cat_key, cat_name in categories.items():
    cat_products = [p for p in products if p["category"] == cat_key]
    cat_content = f'''
    <section class="page-header">
        <h1>{cat_name}</h1>
    </section>
    <section class="product-grid">
    '''
    for p in cat_products:
        cat_content += f'''
        <div class="product-card glass-card">
            <img src="{p["img"]}" alt="{p["name"]}" class="product-img">
            <div class="product-info">
                <h3>{p["name"]}</h3>
                <p class="price">{p["price"]}</p>
                <a href="{p["id"]}.html" class="view-btn">View Details</a>
            </div>
        </div>
        '''
    cat_content += '</section>'
    with open(os.path.join(base_dir, f"{cat_key}.html"), "w", encoding="utf-8") as f:
        f.write(get_html_template(cat_name, cat_content))

# Write product pages
for p in products:
    product_content = f'''
    <section class="product-detail-section">
        <div class="glass-card product-detail-card">
            <div class="product-detail-img">
                <img src="{p["img"]}" alt="{p["name"]}">
            </div>
            <div class="product-detail-info">
                <h1>{p["name"]}</h1>
                <p class="category-tag">{categories[p["category"]]}</p>
                <p class="price-large">{p["price"]}</p>
                <p class="description">Experience the pinnacle of craftsmanship with our {p["name"]}. Designed for elegance, comfort, and durability. Every detail is meticulously crafted to ensure you look and feel your best.</p>
                <button class="cta-button add-to-cart">Add to Cart</button>
            </div>
        </div>
    </section>
    '''
    with open(os.path.join(base_dir, f"{p['id']}.html"), "w", encoding="utf-8") as f:
        f.write(get_html_template(p["name"], product_content))

# Write styles.css
css_content = '''
:root {
    --bg-color: #0f172a;
    --text-color: #f8fafc;
    --accent-color: #38bdf8;
    --glass-bg: rgba(30, 41, 59, 0.7);
    --glass-border: rgba(255, 255, 255, 0.1);
    --hover-color: #7dd3fc;
}

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Inter', sans-serif;
    background-color: var(--bg-color);
    color: var(--text-color);
    line-height: 1.6;
    min-height: 100vh;
    display: flex;
    flex-direction: column;
    overflow-x: hidden;
}

h1, h2, h3, .brand-name {
    font-family: 'Outfit', sans-serif;
}

a {
    color: var(--text-color);
    text-decoration: none;
    transition: color 0.3s ease;
}

a:hover {
    color: var(--accent-color);
}

/* Glassmorphism Navigation */
.glass-nav {
    position: fixed;
    top: 0;
    width: 100%;
    background: rgba(15, 23, 42, 0.8);
    backdrop-filter: blur(12px);
    -webkit-backdrop-filter: blur(12px);
    border-bottom: 1px solid var(--glass-border);
    z-index: 1000;
}

.nav-content {
    max-width: 1200px;
    margin: 0 auto;
    padding: 1rem 2rem;
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.logo-container {
    display: flex;
    align-items: center;
    gap: 1rem;
}

.logo {
    height: 40px;
    width: 40px;
    border-radius: 50%;
    object-fit: cover;
}

.brand-name {
    font-size: 1.5rem;
    font-weight: 700;
    letter-spacing: 2px;
}

.nav-links {
    display: flex;
    gap: 2rem;
    align-items: center;
}

.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background: rgba(30, 41, 59, 0.95);
    backdrop-filter: blur(10px);
    min-width: 160px;
    box-shadow: 0 8px 32px rgba(0, 0, 0, 0.3);
    border: 1px solid var(--glass-border);
    border-radius: 8px;
    top: 100%;
    left: 0;
    padding: 0.5rem 0;
}

.dropdown-content a {
    color: var(--text-color);
    padding: 12px 16px;
    display: block;
}

.dropdown-content a:hover {
    background-color: rgba(255, 255, 255, 0.1);
}

.dropdown:hover .dropdown-content {
    display: block;
    animation: fadeIn 0.3s ease;
}

/* Main Content */
main {
    flex: 1;
    margin-top: 80px; /* Space for nav */
}

/* Hero Section */
.hero {
    height: calc(100vh - 80px);
    display: flex;
    align-items: center;
    justify-content: center;
    text-align: center;
    background: radial-gradient(circle at center, #1e293b 0%, #0f172a 100%);
    position: relative;
    overflow: hidden;
}

.hero::before {
    content: '';
    position: absolute;
    top: -50%;
    left: -50%;
    width: 200%;
    height: 200%;
    background: radial-gradient(circle, rgba(56,189,248,0.1) 0%, transparent 50%);
    animation: rotate 20s linear infinite;
}

.hero-text {
    z-index: 1;
    animation: slideUp 1s ease;
}

.hero h1 {
    font-size: 4rem;
    margin-bottom: 1rem;
    background: linear-gradient(to right, #fff, #38bdf8);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
}

.hero p {
    font-size: 1.2rem;
    color: #cbd5e1;
    margin-bottom: 2rem;
}

.cta-button {
    display: inline-block;
    padding: 1rem 2.5rem;
    background: linear-gradient(135deg, #38bdf8 0%, #0284c7 100%);
    color: white;
    font-weight: 600;
    border-radius: 30px;
    border: none;
    cursor: pointer;
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.cta-button:hover {
    transform: translateY(-3px);
    box-shadow: 0 10px 20px rgba(56, 189, 248, 0.3);
    color: white;
}

/* Glass Cards */
.glass-card {
    background: var(--glass-bg);
    backdrop-filter: blur(16px);
    -webkit-backdrop-filter: blur(16px);
    border: 1px solid var(--glass-border);
    border-radius: 16px;
    padding: 2rem;
    box-shadow: 0 4px 30px rgba(0, 0, 0, 0.1);
}

/* Category Grid */
.featured-categories {
    max-width: 1200px;
    margin: 4rem auto;
    padding: 0 2rem;
}

.featured-categories h2 {
    text-align: center;
    font-size: 2.5rem;
    margin-bottom: 3rem;
}

.category-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
    gap: 2rem;
}

.category-card {
    height: 300px;
    border-radius: 16px;
    background-size: cover;
    background-position: center;
    position: relative;
    overflow: hidden;
    transition: transform 0.4s ease;
}

.category-card:hover {
    transform: scale(1.05);
}

.category-overlay {
    position: absolute;
    bottom: 0;
    left: 0;
    right: 0;
    background: linear-gradient(to top, rgba(0,0,0,0.9), transparent);
    padding: 2rem 1rem 1rem;
    text-align: center;
}

.category-overlay h3 {
    color: white;
    margin: 0;
    transform: translateY(10px);
    transition: transform 0.3s ease;
}

.category-card:hover .category-overlay h3 {
    transform: translateY(0);
    color: var(--accent-color);
}

/* Page Headers */
.page-header {
    text-align: center;
    padding: 4rem 2rem;
    background: linear-gradient(to bottom, #1e293b, #0f172a);
}

.page-header h1 {
    font-size: 3rem;
    color: var(--accent-color);
}

/* Product Grid */
.product-grid {
    max-width: 1200px;
    margin: 2rem auto 4rem;
    padding: 0 2rem;
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
    gap: 2rem;
}

.product-card {
    padding: 0;
    overflow: hidden;
    display: flex;
    flex-direction: column;
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.product-card:hover {
    transform: translateY(-10px);
    box-shadow: 0 15px 30px rgba(0, 0, 0, 0.4);
}

.product-img {
    width: 100%;
    height: 300px;
    object-fit: cover;
    border-bottom: 1px solid var(--glass-border);
}

.product-info {
    padding: 1.5rem;
    text-align: center;
    flex: 1;
    display: flex;
    flex-direction: column;
}

.product-info h3 {
    margin-bottom: 0.5rem;
    font-size: 1.2rem;
}

.price {
    color: var(--accent-color);
    font-weight: 600;
    font-size: 1.2rem;
    margin-bottom: 1rem;
    flex: 1;
}

.view-btn {
    display: inline-block;
    padding: 0.5rem 1.5rem;
    border: 1px solid var(--accent-color);
    color: var(--accent-color);
    border-radius: 20px;
    transition: all 0.3s ease;
}

.view-btn:hover {
    background: var(--accent-color);
    color: white;
}

/* Product Detail */
.product-detail-section {
    max-width: 1000px;
    margin: 4rem auto;
    padding: 0 2rem;
}

.product-detail-card {
    display: flex;
    gap: 3rem;
    padding: 3rem;
}

.product-detail-img {
    flex: 1;
}

.product-detail-img img {
    width: 100%;
    border-radius: 12px;
    box-shadow: 0 10px 30px rgba(0,0,0,0.5);
}

.product-detail-info {
    flex: 1;
    display: flex;
    flex-direction: column;
    justify-content: center;
}

.product-detail-info h1 {
    font-size: 2.5rem;
    margin-bottom: 0.5rem;
}

.category-tag {
    color: #94a3b8;
    text-transform: uppercase;
    letter-spacing: 1px;
    font-size: 0.9rem;
    margin-bottom: 1rem;
}

.price-large {
    font-size: 2rem;
    color: var(--accent-color);
    font-weight: 700;
    margin-bottom: 2rem;
}

.description {
    color: #cbd5e1;
    margin-bottom: 3rem;
    font-size: 1.1rem;
}

/* About & Contact */
.about-content, .contact-content {
    max-width: 800px;
    margin: 0 auto 4rem;
    padding: 0 2rem;
}

.about-card h2 {
    color: var(--accent-color);
    margin-top: 1.5rem;
    margin-bottom: 1rem;
}

.about-card h2:first-child {
    margin-top: 0;
}

.contact-form {
    display: flex;
    flex-direction: column;
    gap: 1.5rem;
    margin-top: 1.5rem;
}

.form-group {
    display: flex;
    flex-direction: column;
    gap: 0.5rem;
}

.form-group label {
    color: #94a3b8;
}

.form-group input, .form-group textarea {
    background: rgba(15, 23, 42, 0.5);
    border: 1px solid var(--glass-border);
    padding: 1rem;
    border-radius: 8px;
    color: white;
    font-family: inherit;
    outline: none;
    transition: border-color 0.3s ease;
}

.form-group input:focus, .form-group textarea:focus {
    border-color: var(--accent-color);
}

.submit-btn {
    align-self: flex-start;
}

/* Footer */
footer {
    background: #0b1120;
    border-top: 1px solid var(--glass-border);
    padding: 4rem 2rem 1rem;
    margin-top: 4rem;
}

.footer-content {
    max-width: 1200px;
    margin: 0 auto;
    display: flex;
    justify-content: space-between;
    flex-wrap: wrap;
    gap: 2rem;
}

.footer-section h3 {
    color: var(--accent-color);
    margin-bottom: 1rem;
}

.footer-section p {
    color: #94a3b8;
    margin-bottom: 0.5rem;
}

.footer-bottom {
    text-align: center;
    margin-top: 3rem;
    padding-top: 1rem;
    border-top: 1px solid var(--glass-border);
    color: #64748b;
    font-size: 0.9rem;
}

/* Animations */
@keyframes fadeIn {
    from { opacity: 0; transform: translateY(-10px); }
    to { opacity: 1; transform: translateY(0); }
}

@keyframes slideUp {
    from { opacity: 0; transform: translateY(30px); }
    to { opacity: 1; transform: translateY(0); }
}

@keyframes rotate {
    from { transform: rotate(0deg); }
    to { transform: rotate(360deg); }
}

/* Responsive */
@media (max-width: 768px) {
    .nav-links {
        display: none; /* Add a hamburger menu for real app */
    }
    
    .hero h1 {
        font-size: 2.5rem;
    }
    
    .product-detail-card {
        flex-direction: column;
        padding: 1.5rem;
    }
}
'''
with open(os.path.join(base_dir, "styles.css"), "w", encoding="utf-8") as f:
    f.write(css_content)

print("Site built successfully.")
