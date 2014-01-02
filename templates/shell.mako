## -*- coding: utf-8 -*-
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="robots" content="index,follow">
    <%block name="header">
      <title>${site_name}</title>
    </%block>
    <link rel="alternate" type="application/rss+xml" title="RSS 2.0" href="${site_root}/feed/index.xml" />
    <link rel="alternate" type="application/atom+xml" title="Atom 1.0" href="${site_root}/feed/atom/index.xml" />
    <link rel="stylesheet" type="text/css" href="${site_root}/static/css/pygments.css" />
    <link href='http://fonts.googleapis.com/css?family=Dosis:300,600' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Gentium+Basic' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="${site_root}/static/css/bootstrap.min.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="${site_root}/static/css/font-awesome.min.css">
    <link rel="stylesheet" href="${site_root}/static/css/site.css" type="text/css" media="screen" />
  </head>
  <body>
    <div class="container">
      <!-- Header -->
      <header id="siteTitle">
        <h1><a href="${site_root}/">${site_name}</a></h1>
        <nav>
          <a href="${site_root}/">Latest</a>
          <a href="${site_root}/posts.html">Posts</a>
          <a href="${site_root}/about">About</a>
        </nav>
      </header>

      <!-- Main Body -->
      <article id="mainColumn">
        <%block name="mainColumn" />
      </article>

      <!-- Meta -->
      <%block name="pageMeta" />

      <div class="row footerSection" id="siteMeta">
        <div class="col-sm-4" id="contact">
          <h3>Contact</h3>
          <div>
            <i class="fa fa-envelope-o"></i> <a title="Email address" href="mailto:gb@cs.unc.edu"> gb@cs.unc.edu</a><br/>
          </div>
        </div>

        <div class="col-sm-4" id="latest">
          <h3>Latest</h3>
          <ul>
          % for recent in all_pages[:4]:
            <li><a href="${site_root}/${recent['slug']}">${recent['title']}</a></li>
          % endfor
          </ul>
        </div>

        <div class="col-sm-4" id="other">
          <h3>More</h3>
          <ul>
            <li><a href="${site_root}/posts.html">See all posts &#187;</a></li>
            <li><a href="${site_root}/feed/index.xml">Subscribe to posts &#187;</a></li>
          </ul>
        </div>
      </div>

      <!-- Footer -->
      <footer id="siteFooter" class="footerSection">
        <p>Copyright &copy; 2014 Gary Bishop. All rights reserved.</p>
      </footer>
    </div>
  </body>
</html>
