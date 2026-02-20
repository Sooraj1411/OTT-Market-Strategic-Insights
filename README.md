<h1 align="center">🎬📊 LioCinema vs Jotstar – Strategic Merger Analysis</h1>

<h2>📌 Introduction</h2>

<p>
Lio, a leading telecom provider in India, is planning a strategic merger with Jotstar, 
one of the country’s prominent streaming platforms. The goal is to combine 
<b>LioCinema’s expansive subscriber base</b> with <b>Jotstar’s diverse content library</b> 
to establish the leading OTT platform in India.
</p>

<p>
As part of the merger preparation, management requested a detailed analysis 
of performance and user behavior (Jan–Nov 2024) across both platforms.
</p>

<hr>

<h2>🧑‍💼 My Role</h2>

<p>
As a Data Analyst at Lio</b>, responsible for:
</p>

<ul>
  <li>Analyzing platform performance</li>
  <li>Studying user behavior trends</li>
  <li>Evaluating upgrades, downgrades & inactivity patterns</li>
  <li>Delivering strategic, data-driven recommendations</li>
</ul>

<hr>

<h2>🎯 Objective of the Analysis</h2>

<ul>
  <li>📚 Content Library Comparison</li>
  <li>👥 Subscriber Growth & Demographics</li>
  <li>💤 Inactivity Behavior Analysis</li>
  <li>⬆️ Subscription Upgrade Trends</li>
  <li>⬇️ Subscription Downgrade Trends</li>
  <li>🎬 Content Consumption Behavior</li>
</ul>

<hr>

<h2>⚙️ Tools Used</h2>

<ul>
  <li><b>MySQL</b> – Data exploration, joins, aggregations, window functions</li>
  <li><b>Power BI</b> – Dashboard creation & advanced DAX measures</li>
  <li><b>MS Excel</b> – Data validation & cross-checking</li>
  <li><b>MS PowerPoint</b> – Executive-level presentation</li>
</ul>

<p>
Initially mapped table relationships manually before implementing the BI model.
</p>

<hr>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>OTT Merger Strategic Insights</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f6f9;
            color: #333;
        }
        header {
            background-color: #111827;
            color: white;
            padding: 20px;
            text-align: center;
        }
        nav {
            background-color: #1f2937;
            padding: 10px;
            text-align: center;
        }
        nav a {
            color: white;
            margin: 0 15px;
            text-decoration: none;
            font-weight: bold;
        }
        section {
            padding: 40px;
            border-bottom: 1px solid #ddd;
        }
        h2 {
            color: #111827;
        }
        .card {
            background: white;
            padding: 20px;
            margin: 15px 0;
            border-radius: 8px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.08);
        }
        .highlight {
            background-color: #e0f2fe;
            padding: 15px;
            border-left: 5px solid #0284c7;
            margin-top: 20px;
            border-radius: 6px;
        }
        footer {
            background-color: #111827;
            color: white;
            text-align: center;
            padding: 15px;
        }
    </style>
</head>
<body>

<header>
    <h1>Insights for a Strategic Merger in the OTT Domain</h1>
    <h3>LioCinema vs Jotstar (Disney+ Hotstar)</h3>
</header>

<nav>
    <a href="#home">Home</a>
    <a href="#context">Context & Objective</a>
    <a href="#executive">Executive View</a>
    <a href="#content">Content View</a>
    <a href="#subscriber">Subscriber View</a>
    <a href="#transition">Plan Transition View</a>
</nav>

<section id="home">
    <h2>Home / Landing Page</h2>
    <p>This dashboard serves as the navigation hub for analyzing a potential merger between LioCinema and Jotstar.</p>
    <ul>
        <li>Executive View</li>
        <li>Content View</li>
        <li>Subscriber View</li>
        <li>Plan Transition View</li>
    </ul>
</section>

<section id="context">
    <h2>Context & Objective</h2>

    <div class="card">
        <h3>Context</h3>
        <p>Lio is evaluating a merger with Jotstar to combine subscriber scale with premium content and strengthen its OTT market position.</p>
    </div>

    <div class="card">
        <h3>Objective</h3>
        <p>Analyze platform performance and user behavior from Jan–Nov 2024 to support strategic merger decisions.</p>
    </div>

    <div class="card">
        <h3>Dashboard Coverage</h3>
        <ul>
            <li>Platform performance & revenue comparison</li>
            <li>Subscriber growth, churn & plan transitions</li>
            <li>Content library and engagement patterns</li>
        </ul>
    </div>
</section>

<section id="executive">
    <h2>Executive View</h2>

    <div class="card">
        <h3>LioCinema</h3>
        <p><strong>Total Users:</strong> 16.2K | <strong>Contents:</strong> 1,250 | <strong>Revenue:</strong> 2.3M | <strong>Watch Time:</strong> 1.10M</p>
        <p><strong>Largest Age Group:</strong> 18–24 (7.3K)</p>
        <p><strong>Plan Distribution:</strong> Free dominant (9.4K)</p>
    </div>

    <div class="card">
        <h3>Jotstar</h3>
        <p><strong>Total Users:</strong> 4.1K | <strong>Contents:</strong> 2,360 | <strong>Revenue:</strong> 4.4M | <strong>Watch Time:</strong> 1.15M</p>
        <p><strong>Largest Age Group:</strong> 25–34 (1,812)</p>
        <p><strong>Plan Distribution:</strong> Paid dominant (VIP & Premium)</p>
    </div>

    <div class="highlight">
        <strong>Key Insight:</strong> LioCinema has scale but low monetization. Jotstar has fewer users but nearly double revenue per user with stronger paid adoption.
    </div>
</section>

<section id="content">
    <h2>Content View</h2>

    <div class="card">
        <h3>LioCinema</h3>
        <p><strong>Contents:</strong> 1,250 | <strong>Revenue:</strong> 23.6M | <strong>Avg Watch Time:</strong> 25.61</p>
        <p><strong>Top Languages:</strong> Hindi, Telugu, Tamil</p>
    </div>

    <div class="card">
        <h3>Jotstar</h3>
        <p><strong>Contents:</strong> 2,360 | <strong>Revenue:</strong> 55.2M | <strong>Avg Watch Time:</strong> 117.24</p>
        <p><strong>Top Languages:</strong> English, Hindi, Tamil</p>
    </div>

    <div class="highlight">
        <strong>Key Insight:</strong> Jotstar’s average watch time is nearly 5x higher, indicating significantly deeper user engagement and premium content pull.
    </div>
</section>

<section id="subscriber">
    <h2>Subscriber View</h2>

    <div class="card">
        <h3>LioCinema</h3>
        <p><strong>Total Users:</strong> 183.4K | <strong>Paid Users:</strong> 63.5K | <strong>Revenue:</strong> 23.6M</p>
        <p><strong>Free Tier Dependency:</strong> 65%</p>
    </div>

    <div class="card">
        <h3>Jotstar</h3>
        <p><strong>Total Users:</strong> 44.6K | <strong>Paid Users:</strong> 32K | <strong>Revenue:</strong> 55.2M</p>
        <p><strong>Paid Subscriber Base:</strong> ~71%</p>
    </div>

    <div class="highlight">
        <strong>Key Insight:</strong> Jotstar generates more than double revenue despite a fraction of users due to strong paid subscriber base.
    </div>
</section>

<section id="transition">
    <h2>Plan Transition View</h2>

    <div class="card">
        <h3>LioCinema</h3>
        <p><strong>Upgrade Rate:</strong> 4.40% | <strong>Downgrade Rate:</strong> 32.85%</p>
        <p>Upgrade trend declining month-over-month.</p>
    </div>

    <div class="card">
        <h3>Jotstar</h3>
        <p><strong>Upgrade Rate:</strong> 13.73% | <strong>Downgrade Rate:</strong> 8.66%</p>
        <p>Healthier transition behavior and stronger paid retention.</p>
    </div>

    <div class="highlight">
        <strong>Key Insight:</strong> LioCinema struggles with downgrades, while Jotstar maintains strong retention and upgrade momentum.
    </div>
</section>

<section>
    <h2>Overall Merger Takeaway</h2>
    <div class="highlight">
        LioCinema brings scale and Tier 3 penetration.  
        Jotstar brings monetization strength, premium content, and deeper engagement.  
        Together, they create a powerful strategic fit for OTT market dominance.
    </div>
</section>

<footer>
    © 2024 OTT Strategic Merger Analysis Dashboard
</footer>

</body>
</html>
<hr>

<h2>🗂 Data Modelling</h2>

<ul>
  <li>Implemented <b>Star Schema</b> for optimized reporting</li>
  <li>Built fact and dimension tables for scalable analytics</li>
  <li>Created DAX measures for:
    <ul>
      <li>Retention %</li>
      <li>Churn %</li>
      <li>ARPU</li>
      <li>Growth Rate</li>
    </ul>
  </li>
</ul>

<hr>

<h2>📈 Dashboard Overview</h2>

<ul>
  <li>📊 Subscriber Growth Comparison</li>
  <li>💰 Revenue & ARPU Analysis</li>
  <li>📚 Content Library Comparison</li>
  <li>💤 Inactivity Dashboard</li>
  <li>⬆️ Upgrade vs ⬇️ Downgrade Insights</li>
  <li>🎬 Content Consumption Trends</li>
  <li>📱 Device Usage Analysis</li>
</ul>

<p>
📄 <b>Dashboard PDF:</b> <a href="#">Add Link</a><br>
🌐 <b>Live Dashboard:</b> <a href="#">Add Link</a><br>
📘 <b>Complete Strategic Report:</b> <a href="#">Add Link</a>
</p>

<hr>

<h2>💡 Strategic Insights</h2>

<ul>
  <li>Identified high-growth demographics for post-merger targeting</li>
  <li>Highlighted churn-prone segments requiring retention strategies</li>
  <li>Found correlation between premium content & upgrades</li>
  <li>Observed city-tier-based consumption differences</li>
  <li>Identified device-based engagement patterns</li>
</ul>

<hr>

<h2>🚀 Recommendations</h2>

<ul>
  <li>Invest in high-performing genres</li>
  <li>Bundle telecom + premium OTT plans</li>
  <li>Focus on tier-2 & tier-3 cities with regional content</li>
  <li>Improve personalization to reduce inactivity</li>
  <li>Introduce loyalty incentives</li>
</ul>

<hr>

<h2>🤝 Let’s Connect</h2>

<p>
📌 LinkedIn: <a href="https://www.linkedin.com/in/surajkumar-analyst/">Suraj Kumar</a><br>
📧 Email: suraj783856@gmail.com
</p>

<p align="center">
✨ Thank you for reading!
</p>
