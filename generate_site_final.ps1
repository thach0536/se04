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
            <p>重新定義現代男士的優雅品味。</p>
        </div>
        <div class="footer-section">
            <h3>聯絡資訊</h3>
            <p>電子郵件：contact@elevate.com</p>
            <p>電話：+1 234 567 890</p>
        </div>
    </div>
    <div class="footer-bottom">
        <p>&copy; 2026 ELEVATE. 保留所有權利。</p>
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
    @{id="casual_tshirt"; name="頂級白色T恤"; category="casual"; price='$45'; img="assets/casual_tshirt.png"},
    @{id="casual_jeans"; name="經典藍色牛仔褲"; category="casual"; price='$85'; img="assets/casual_jeans.png"},
    @{id="casual_hoodie"; name="百搭灰色連帽衫"; category="casual"; price='$70'; img="assets/casual_hoodie.png"},
    @{id="casual_sneakers"; name="極簡白色運動鞋"; category="casual"; price='$120'; img="assets/casual_sneakers.png"},
    @{id="formal_suit"; name="經典黑色西裝"; category="formal"; price='$450'; img="assets/formal_suit.png"},
    @{id="formal_shirt"; name="修身白色襯衫"; category="formal"; price='$90'; img="assets/formal_shirt.png"},
    @{id="formal_tie"; name="純絲編織領帶"; category="formal"; price='$45'; img="assets/formal_tie.png"},
    @{id="formal_shoes"; name="經典牛津皮鞋"; category="formal"; price='$180'; img="assets/formal_shoes.png"},
    @{id="jewelry_watch"; name="計時銀色手錶"; category="jewelry"; price='$250'; img="assets/jewelry_watch.png"},
    @{id="jewelry_bracelet"; name="銀色鍊條手環"; category="jewelry"; price='$75'; img="assets/jewelry_bracelet.png"},
    @{id="jewelry_ring"; name="極簡銀色戒指"; category="jewelry"; price='$60'; img="assets/jewelry_ring.png"},
    @{id="jewelry_cufflinks"; name="雕花袖扣"; category="jewelry"; price='$55'; img="assets/jewelry_cufflinks.png"},
    @{id="accessories_belt"; name="全粒面真皮皮帶"; category="accessories"; price='$65'; img="assets/accessories_belt.png"},
    @{id="accessories_sunglasses"; name="飛行員太陽眼鏡"; category="accessories"; price='$140'; img="assets/accessories_sunglasses.png"},
    @{id="others_wallet"; name="雙摺真皮皮夾"; category="others"; price='$80'; img="assets/others_wallet.png"},
    @{id="others_backpack"; name="都會真皮後背包"; category="others"; price='$210'; img="assets/others_backpack.png"}
)

$Categories = @{
    "casual" = "休閒服飾"
    "formal" = "正式服飾"
    "jewelry" = "飾品"
    "accessories" = "配件"
    "others" = "其它類"
}

# Index
$IndexContent = @"
<section class="hero">
    <div class="hero-text">
        <h1>提升您的品味</h1>
        <p>為現代紳士設計的頂級男裝。</p>
        <a href="formal.html" class="cta-button">探索系列</a>
    </div>
</section>
<section class="featured-categories">
    <h2>探索分類</h2>
    <div class="category-grid">
        <a href="casual.html" class="category-card" style="background-image: url('assets/casual_tshirt.png')">
            <div class="category-overlay"><h3>休閒服飾</h3></div>
        </a>
        <a href="formal.html" class="category-card" style="background-image: url('assets/formal_suit.png')">
            <div class="category-overlay"><h3>正式服飾</h3></div>
        </a>
        <a href="jewelry.html" class="category-card" style="background-image: url('assets/jewelry_watch.png')">
            <div class="category-overlay"><h3>飾品</h3></div>
        </a>
        <a href="accessories.html" class="category-card" style="background-image: url('assets/accessories_sunglasses.png')">
            <div class="category-overlay"><h3>配件</h3></div>
        </a>
    </div>
</section>
"@
[System.IO.File]::WriteAllText("$BaseDir\index.html", (Get-HtmlTemplate "首頁" $IndexContent), [System.Text.Encoding]::UTF8)

# About
$AboutContent = @"
<section class="page-header">
    <h1>關於 ELEVATE</h1>
</section>
<section class="about-content">
    <div class="glass-card about-card">
        <h2>我們的故事</h2>
        <p>ELEVATE 成立於 2026 年，是一家頂級男裝品牌，致力於為現代紳士提供高品質、現代且優雅的服飾。我們相信真正的品味是永恆的，並且應該讓每一個重視工藝和設計的人都能輕鬆擁有。</p>
        <h2>我們的使命</h2>
        <p>將經典剪裁與現代美學結合，重新定義男士時尚，確保我們打造的每一件單品都是品質與精緻的證明。</p>
    </div>
</section>
"@
[System.IO.File]::WriteAllText("$BaseDir\about.html", (Get-HtmlTemplate "公司簡介" $AboutContent), [System.Text.Encoding]::UTF8)

# Contact
$ContactContent = @"
<section class="page-header">
    <h1>聯絡我們</h1>
</section>
<section class="contact-content">
    <div class="glass-card contact-card">
        <h2>與我們聯繫</h2>
        <form class="contact-form">
            <div class="form-group">
                <label for="name">姓名</label>
                <input type="text" id="name" placeholder="您的姓名">
            </div>
            <div class="form-group">
                <label for="email">電子郵件</label>
                <input type="email" id="email" placeholder="您的電子郵件">
            </div>
            <div class="form-group">
                <label for="message">訊息內容</label>
                <textarea id="message" rows="5" placeholder="您的訊息內容"></textarea>
            </div>
            <button type="button" class="cta-button submit-btn">發送訊息</button>
        </form>
    </div>
</section>
"@
[System.IO.File]::WriteAllText("$BaseDir\contact.html", (Get-HtmlTemplate "聯絡我們" $ContactContent), [System.Text.Encoding]::UTF8)

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
                <a href="$prodId.html" class="view-btn">查看詳情</a>
            </div>
        </div>
"@
        }
    }
    
    $CatContent += "</section>"
    [System.IO.File]::WriteAllText("$BaseDir\$CatKey.html", (Get-HtmlTemplate $CatName $CatContent), [System.Text.Encoding]::UTF8)
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
                <p class="description">體驗 $pName 的極致工藝。專為優雅、舒適和耐用而設計。每一個細節都經過精心打造，確保您展現最佳狀態。</p>
                <button class="cta-button add-to-cart">加入購物車</button>
            </div>
        </div>
    </section>
"@
    [System.IO.File]::WriteAllText("$BaseDir\$prodId.html", (Get-HtmlTemplate $pName $ProductContent), [System.Text.Encoding]::UTF8)
}


