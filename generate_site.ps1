$BaseDir = "c:\web4"

$NavHtml = @"
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
"@

$FooterHtml = @"
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
"@

function Get-HtmlTemplate ($Title, $Content) {
    return @"
<!DOCTYPE html>
<html lang="zh-TW">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>$Title | ELEVATE</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&family=Outfit:wght@400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    $NavHtml
    <main>
        $Content
    </main>
    $FooterHtml
</body>
</html>
"@
}

$Products = @(
    @{id="casual_tshirt"; name="Premium White T-Shirt"; category="casual"; price="$45"; img="assets/casual_tshirt.png"},
    @{id="casual_jeans"; name="Classic Blue Denim"; category="casual"; price="$85"; img="assets/casual_jeans.png"},
    @{id="casual_hoodie"; name="Essential Grey Hoodie"; category="casual"; price="$70"; img="assets/casual_hoodie.png"},
    @{id="casual_sneakers"; name="Minimalist White Sneakers"; category="casual"; price="$120"; img="assets/casual_sneakers.png"},
    @{id="formal_suit"; name="Signature Black Suit"; category="formal"; price="$450"; img="assets/formal_suit.png"},
    @{id="formal_shirt"; name="Tailored White Dress Shirt"; category="formal"; price="$90"; img="assets/formal_shirt.png"},
    @{id="formal_tie"; name="Woven Silk Tie"; category="formal"; price="$45"; img="assets/formal_tie.png"},
    @{id="formal_shoes"; name="Classic Leather Oxfords"; category="formal"; price="$180"; img="assets/formal_shoes.png"},
    @{id="jewelry_watch"; name="Chronograph Silver Watch"; category="jewelry"; price="$250"; img="assets/jewelry_watch.png"},
    @{id="jewelry_bracelet"; name="Link Silver Bracelet"; category="jewelry"; price="$75"; img="assets/jewelry_bracelet.png"},
    @{id="jewelry_ring"; name="Minimalist Silver Ring"; category="jewelry"; price="$60"; img="assets/jewelry_ring.png"},
    @{id="jewelry_cufflinks"; name="Engraved Cufflinks"; category="jewelry"; price="$55"; img="assets/jewelry_cufflinks.png"},
    @{id="accessories_belt"; name="Full Grain Leather Belt"; category="accessories"; price="$65"; img="assets/accessories_belt.png"},
    @{id="accessories_sunglasses"; name="Aviator Sunglasses"; category="accessories"; price="$140"; img="assets/accessories_sunglasses.png"},
    @{id="others_wallet"; name="Bifold Leather Wallet"; category="others"; price="$80"; img="assets/others_wallet.png"},
    @{id="others_backpack"; name="Urban Leather Backpack"; category="others"; price="$210"; img="assets/others_backpack.png"}
)

$Categories = @{
    "casual" = "休閒服飾 (Casual Wear)"
    "formal" = "正式服飾 (Formal Wear)"
    "jewelry" = "飾品 (Jewelry)"
    "accessories" = "配件 (Accessories)"
    "others" = "其它類 (Others)"
}

# Index
$IndexContent = @"
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
"@
Set-Content -Path "$BaseDir\index.html" -Value (Get-HtmlTemplate "首頁 (Home)" $IndexContent) -Encoding UTF8

# About
$AboutContent = @"
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
"@
Set-Content -Path "$BaseDir\about.html" -Value (Get-HtmlTemplate "公司簡介 (About Us)" $AboutContent) -Encoding UTF8

# Contact
$ContactContent = @"
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
"@
Set-Content -Path "$BaseDir\contact.html" -Value (Get-HtmlTemplate "聯絡我們 (Contact Us)" $ContactContent) -Encoding UTF8

# Category Pages
foreach ($cat in $Categories.GetEnumerator()) {
    $CatKey = $cat.Key
    $CatName = $cat.Value
    
    $CatContent = @"
    <section class="page-header">
        <h1>$CatName</h1>
    </section>
    <section class="product-grid">
"@
    
    foreach ($p in $Products) {
        if ($p.category -eq $CatKey) {
            $prodId = $p.id
            $pName = $p.name
            $pPrice = $p.price
            $pImg = $p.img
            $CatContent += @"
        <div class="product-card glass-card">
            <img src="$pImg" alt="$pName" class="product-img">
            <div class="product-info">
                <h3>$pName</h3>
                <p class="price">$pPrice</p>
                <a href="$prodId.html" class="view-btn">View Details</a>
            </div>
        </div>
"@
        }
    }
    
    $CatContent += "</section>"
    Set-Content -Path "$BaseDir\$CatKey.html" -Value (Get-HtmlTemplate $CatName $CatContent) -Encoding UTF8
}

# Product Pages
foreach ($p in $Products) {
    $prodId = $p.id
    $pName = $p.name
    $pPrice = $p.price
    $pImg = $p.img
    $pCatName = $Categories[$p.category]
    
    $ProductContent = @"
    <section class="product-detail-section">
        <div class="glass-card product-detail-card">
            <div class="product-detail-img">
                <img src="$pImg" alt="$pName">
            </div>
            <div class="product-detail-info">
                <h1>$pName</h1>
                <p class="category-tag">$pCatName</p>
                <p class="price-large">$pPrice</p>
                <p class="description">Experience the pinnacle of craftsmanship with our $pName. Designed for elegance, comfort, and durability. Every detail is meticulously crafted to ensure you look and feel your best.</p>
                <button class="cta-button add-to-cart">Add to Cart</button>
            </div>
        </div>
    </section>
"@
    Set-Content -Path "$BaseDir\$prodId.html" -Value (Get-HtmlTemplate $pName $ProductContent) -Encoding UTF8
}
