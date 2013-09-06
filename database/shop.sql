


<!DOCTYPE html>
<html>
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# githubog: http://ogp.me/ns/fb/githubog#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>minishop/database/shop.sql at master · Ivnmaksimovic/minishop</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub" />
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub" />
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-144.png" />
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144.png" />
    <link rel="logo" type="image/svg" href="https://github-media-downloads.s3.amazonaws.com/github-logo.svg" />
    <meta property="og:image" content="https://github.global.ssl.fastly.net/images/modules/logos_page/Octocat.png">
    <meta name="hostname" content="github-fe128-cp1-prd.iad.github.net">
    <meta name="ruby" content="ruby 1.9.3p194-tcs-github-tcmalloc (2012-05-25, TCS patched 2012-05-27, GitHub v1.0.36) [x86_64-linux]">
    <link rel="assets" href="https://github.global.ssl.fastly.net/">
    <link rel="xhr-socket" href="/_sockets" />
    
    


    <meta name="msapplication-TileImage" content="/windows-tile.png" />
    <meta name="msapplication-TileColor" content="#ffffff" />
    <meta name="selected-link" value="repo_source" data-pjax-transient />
    <meta content="collector.githubapp.com" name="octolytics-host" /><meta content="github" name="octolytics-app-id" /><meta content="3866e60d-f808-48e1-8e4f-1e4565242f9f" name="octolytics-dimension-request_id" /><meta content="4590466" name="octolytics-actor-id" /><meta content="Ivnmaksimovic" name="octolytics-actor-login" /><meta content="ced3dfeb83d3788f1b98179d2f4dde3114e151e8054f04b25757590c39a5a1fe" name="octolytics-actor-hash" />
    

    
    
    <link rel="icon" type="image/x-icon" href="/favicon.ico" />

    <meta content="authenticity_token" name="csrf-param" />
<meta content="wZ2sWpoQi1w8K2oseyG23iMXlr/g1CwiUIp1XU7cpDY=" name="csrf-token" />

    <link href="https://github.global.ssl.fastly.net/assets/github-b32603fd8ee026332c07090893545726a65e92c1.css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://github.global.ssl.fastly.net/assets/github2-0544faad11fc00f7090d3536d2b2111e9b1940ae.css" media="all" rel="stylesheet" type="text/css" />
    


      <script src="https://github.global.ssl.fastly.net/assets/frameworks-f86a2975a82dceee28e5afe598d1ebbfd7109d79.js" type="text/javascript"></script>
      <script src="https://github.global.ssl.fastly.net/assets/github-c219bcb5f03d60b25255d8c0841e1fe75781b4a0.js" type="text/javascript"></script>
      
      <meta http-equiv="x-pjax-version" content="f58b475ea21e5ffb50fd8a04363ea07f">

        <link data-pjax-transient rel='permalink' href='/Ivnmaksimovic/minishop/blob/436f2dc50c19436b08fd3bbafd73ef6efd3dcaab/database/shop.sql'>
  <meta property="og:title" content="minishop"/>
  <meta property="og:type" content="githubog:gitrepository"/>
  <meta property="og:url" content="https://github.com/Ivnmaksimovic/minishop"/>
  <meta property="og:image" content="https://github.global.ssl.fastly.net/images/gravatars/gravatar-user-420.png"/>
  <meta property="og:site_name" content="GitHub"/>
  <meta property="og:description" content="minishop - Mini online shop"/>

  <meta name="description" content="minishop - Mini online shop" />

  <meta content="4590466" name="octolytics-dimension-user_id" /><meta content="Ivnmaksimovic" name="octolytics-dimension-user_login" /><meta content="12440254" name="octolytics-dimension-repository_id" /><meta content="Ivnmaksimovic/minishop" name="octolytics-dimension-repository_nwo" /><meta content="true" name="octolytics-dimension-repository_public" /><meta content="false" name="octolytics-dimension-repository_is_fork" /><meta content="12440254" name="octolytics-dimension-repository_network_root_id" /><meta content="Ivnmaksimovic/minishop" name="octolytics-dimension-repository_network_root_nwo" />
  <link href="https://github.com/Ivnmaksimovic/minishop/commits/master.atom" rel="alternate" title="Recent Commits to minishop:master" type="application/atom+xml" />

  </head>


  <body class="logged_in  env-production windows vis-public page-blob">
    <div class="wrapper">
      
      
      


      <div class="header header-logged-in true">
  <div class="container clearfix">

    <a class="header-logo-invertocat" href="https://github.com/">
  <span class="mega-octicon octicon-mark-github"></span>
</a>

    <div class="divider-vertical"></div>

    
    <a href="/notifications" class="notification-indicator tooltipped downwards" data-gotokey="n" title="You have no unread notifications">
        <span class="mail-status all-read"></span>
</a>    <div class="divider-vertical"></div>


      <div class="command-bar js-command-bar  in-repository">
          <form accept-charset="UTF-8" action="/search" class="command-bar-form" id="top_search_form" method="get">

<input type="text" data-hotkey="/ s" name="q" id="js-command-bar-field" placeholder="Search or type a command" tabindex="1" autocapitalize="off"
    
    data-username="Ivnmaksimovic"
      data-repo="Ivnmaksimovic/minishop"
      data-branch="master"
      data-sha="31eddb2d58b9cea8d308fa293fd50adc812741ee"
  >

    <input type="hidden" name="nwo" value="Ivnmaksimovic/minishop" />

    <div class="select-menu js-menu-container js-select-menu search-context-select-menu">
      <span class="minibutton select-menu-button js-menu-target">
        <span class="js-select-button">This repository</span>
      </span>

      <div class="select-menu-modal-holder js-menu-content js-navigation-container">
        <div class="select-menu-modal">

          <div class="select-menu-item js-navigation-item js-this-repository-navigation-item selected">
            <span class="select-menu-item-icon octicon octicon-check"></span>
            <input type="radio" class="js-search-this-repository" name="search_target" value="repository" checked="checked" />
            <div class="select-menu-item-text js-select-button-text">This repository</div>
          </div> <!-- /.select-menu-item -->

          <div class="select-menu-item js-navigation-item js-all-repositories-navigation-item">
            <span class="select-menu-item-icon octicon octicon-check"></span>
            <input type="radio" name="search_target" value="global" />
            <div class="select-menu-item-text js-select-button-text">All repositories</div>
          </div> <!-- /.select-menu-item -->

        </div>
      </div>
    </div>

  <span class="octicon help tooltipped downwards" title="Show command bar help">
    <span class="octicon octicon-question"></span>
  </span>


  <input type="hidden" name="ref" value="cmdform">

</form>
        <ul class="top-nav">
          <li class="explore"><a href="/explore">Explore</a></li>
            <li><a href="https://gist.github.com">Gist</a></li>
            <li><a href="/blog">Blog</a></li>
          <li><a href="https://help.github.com">Help</a></li>
        </ul>
      </div>

    


  <ul id="user-links">
    <li>
      <a href="/Ivnmaksimovic" class="name">
        <img height="20" src="https://2.gravatar.com/avatar/9b34eb6384a9c63f5dc87bd75c710cdb?d=https%3A%2F%2Fidenticons.github.com%2F76c13af4198f05370eeb511a2b994ab8.png&amp;s=140" width="20" /> Ivnmaksimovic
      </a>
    </li>

      <li>
        <a href="/new" id="new_repo" class="tooltipped downwards" title="Create a new repo" aria-label="Create a new repo">
          <span class="octicon octicon-repo-create"></span>
        </a>
      </li>

      <li>
        <a href="/settings/profile" id="account_settings"
          class="tooltipped downwards"
          aria-label="Account settings "
          title="Account settings ">
          <span class="octicon octicon-tools"></span>
        </a>
      </li>
      <li>
        <a class="tooltipped downwards" href="/logout" data-method="post" id="logout" title="Sign out" aria-label="Sign out">
          <span class="octicon octicon-log-out"></span>
        </a>
      </li>

  </ul>

<div class="js-new-dropdown-contents hidden">
  

<ul class="dropdown-menu">
  <li>
    <a href="/new"><span class="octicon octicon-repo-create"></span> New repository</a>
  </li>
  <li>
    <a href="/organizations/new"><span class="octicon octicon-organization"></span> New organization</a>
  </li>



    <li class="section-title">
      <span title="Ivnmaksimovic/minishop">This repository</span>
    </li>
    <li>
      <a href="/Ivnmaksimovic/minishop/issues/new"><span class="octicon octicon-issue-opened"></span> New issue</a>
    </li>
      <li>
        <a href="/Ivnmaksimovic/minishop/settings/collaboration"><span class="octicon octicon-person-add"></span> New collaborator</a>
      </li>
</ul>

</div>


    
  </div>
</div>

      

      




          <div class="site" itemscope itemtype="http://schema.org/WebPage">
    
    <div class="pagehead repohead instapaper_ignore readability-menu">
      <div class="container">
        

<ul class="pagehead-actions">

    <li class="subscription">
      <form accept-charset="UTF-8" action="/notifications/subscribe" class="js-social-container" data-autosubmit="true" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="authenticity_token" type="hidden" value="wZ2sWpoQi1w8K2oseyG23iMXlr/g1CwiUIp1XU7cpDY=" /></div>  <input id="repository_id" name="repository_id" type="hidden" value="12440254" />

    <div class="select-menu js-menu-container js-select-menu">
        <a class="social-count js-social-count" href="/Ivnmaksimovic/minishop/watchers">
          2
        </a>
      <span class="minibutton select-menu-button with-count js-menu-target">
        <span class="js-select-button">
          <span class="octicon octicon-eye-unwatch"></span>
          Unwatch
        </span>
      </span>

      <div class="select-menu-modal-holder">
        <div class="select-menu-modal subscription-menu-modal js-menu-content">
          <div class="select-menu-header">
            <span class="select-menu-title">Notification status</span>
            <span class="octicon octicon-remove-close js-menu-close"></span>
          </div> <!-- /.select-menu-header -->

          <div class="select-menu-list js-navigation-container">

            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <div class="select-menu-item-text">
                <input id="do_included" name="do" type="radio" value="included" />
                <h4>Not watching</h4>
                <span class="description">You only receive notifications for discussions in which you participate or are @mentioned.</span>
                <span class="js-select-button-text hidden-select-button-text">
                  <span class="octicon octicon-eye-watch"></span>
                  Watch
                </span>
              </div>
            </div> <!-- /.select-menu-item -->

            <div class="select-menu-item js-navigation-item selected">
              <span class="select-menu-item-icon octicon octicon octicon-check"></span>
              <div class="select-menu-item-text">
                <input checked="checked" id="do_subscribed" name="do" type="radio" value="subscribed" />
                <h4>Watching</h4>
                <span class="description">You receive notifications for all discussions in this repository.</span>
                <span class="js-select-button-text hidden-select-button-text">
                  <span class="octicon octicon-eye-unwatch"></span>
                  Unwatch
                </span>
              </div>
            </div> <!-- /.select-menu-item -->

            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <div class="select-menu-item-text">
                <input id="do_ignore" name="do" type="radio" value="ignore" />
                <h4>Ignoring</h4>
                <span class="description">You do not receive any notifications for discussions in this repository.</span>
                <span class="js-select-button-text hidden-select-button-text">
                  <span class="octicon octicon-mute"></span>
                  Stop ignoring
                </span>
              </div>
            </div> <!-- /.select-menu-item -->

          </div> <!-- /.select-menu-list -->

        </div> <!-- /.select-menu-modal -->
      </div> <!-- /.select-menu-modal-holder -->
    </div> <!-- /.select-menu -->

</form>
    </li>

  <li>
  
<div class="js-toggler-container js-social-container starring-container ">
  <a href="/Ivnmaksimovic/minishop/unstar" class="minibutton with-count js-toggler-target star-button starred upwards" title="Unstar this repo" data-remote="true" data-method="post" rel="nofollow">
    <span class="octicon octicon-star-delete"></span><span class="text">Unstar</span>
  </a>
  <a href="/Ivnmaksimovic/minishop/star" class="minibutton with-count js-toggler-target star-button unstarred upwards" title="Star this repo" data-remote="true" data-method="post" rel="nofollow">
    <span class="octicon octicon-star"></span><span class="text">Star</span>
  </a>
  <a class="social-count js-social-count" href="/Ivnmaksimovic/minishop/stargazers">0</a>
</div>

  </li>


        <li>
          <a href="/Ivnmaksimovic/minishop/fork" class="minibutton with-count js-toggler-target fork-button lighter upwards" title="Fork this repo" rel="nofollow" data-method="post">
            <span class="octicon octicon-git-branch-create"></span><span class="text">Fork</span>
          </a>
          <a href="/Ivnmaksimovic/minishop/network" class="social-count">0</a>
        </li>


</ul>

        <h1 itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="entry-title public">
          <span class="repo-label"><span>public</span></span>
          <span class="mega-octicon octicon-repo"></span>
          <span class="author">
            <a href="/Ivnmaksimovic" class="url fn" itemprop="url" rel="author"><span itemprop="title">Ivnmaksimovic</span></a></span
          ><span class="repohead-name-divider">/</span><strong
          ><a href="/Ivnmaksimovic/minishop" class="js-current-repository js-repo-home-link">minishop</a></strong>

          <span class="page-context-loader">
            <img alt="Octocat-spinner-32" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
          </span>

        </h1>
      </div><!-- /.container -->
    </div><!-- /.repohead -->

    <div class="container">

      <div class="repository-with-sidebar repo-container ">

        <div class="repository-sidebar">
            

<div class="repo-nav repo-nav-full js-repository-container-pjax js-octicon-loaders">
  <div class="repo-nav-contents">
    <ul class="repo-menu">
      <li class="tooltipped leftwards" title="Code">
        <a href="/Ivnmaksimovic/minishop" aria-label="Code" class="js-selected-navigation-item selected" data-gotokey="c" data-pjax="true" data-selected-links="repo_source repo_downloads repo_commits repo_tags repo_branches /Ivnmaksimovic/minishop">
          <span class="octicon octicon-code"></span> <span class="full-word">Code</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

        <li class="tooltipped leftwards" title="Issues">
          <a href="/Ivnmaksimovic/minishop/issues" aria-label="Issues" class="js-selected-navigation-item js-disable-pjax" data-gotokey="i" data-selected-links="repo_issues /Ivnmaksimovic/minishop/issues">
            <span class="octicon octicon-issue-opened"></span> <span class="full-word">Issues</span>
            <span class='counter'>0</span>
            <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>        </li>

      <li class="tooltipped leftwards" title="Pull Requests"><a href="/Ivnmaksimovic/minishop/pulls" aria-label="Pull Requests" class="js-selected-navigation-item js-disable-pjax" data-gotokey="p" data-selected-links="repo_pulls /Ivnmaksimovic/minishop/pulls">
            <span class="octicon octicon-git-pull-request"></span> <span class="full-word">Pull Requests</span>
            <span class='counter'>0</span>
            <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>


        <li class="tooltipped leftwards" title="Wiki">
          <a href="/Ivnmaksimovic/minishop/wiki" aria-label="Wiki" class="js-selected-navigation-item " data-pjax="true" data-selected-links="repo_wiki /Ivnmaksimovic/minishop/wiki">
            <span class="octicon octicon-book"></span> <span class="full-word">Wiki</span>
            <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>        </li>
    </ul>
    <div class="repo-menu-separator"></div>
    <ul class="repo-menu">

      <li class="tooltipped leftwards" title="Pulse">
        <a href="/Ivnmaksimovic/minishop/pulse" aria-label="Pulse" class="js-selected-navigation-item " data-pjax="true" data-selected-links="pulse /Ivnmaksimovic/minishop/pulse">
          <span class="octicon octicon-pulse"></span> <span class="full-word">Pulse</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

      <li class="tooltipped leftwards" title="Graphs">
        <a href="/Ivnmaksimovic/minishop/graphs" aria-label="Graphs" class="js-selected-navigation-item " data-pjax="true" data-selected-links="repo_graphs repo_contributors /Ivnmaksimovic/minishop/graphs">
          <span class="octicon octicon-graph"></span> <span class="full-word">Graphs</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

      <li class="tooltipped leftwards" title="Network">
        <a href="/Ivnmaksimovic/minishop/network" aria-label="Network" class="js-selected-navigation-item js-disable-pjax" data-selected-links="repo_network /Ivnmaksimovic/minishop/network">
          <span class="octicon octicon-git-branch"></span> <span class="full-word">Network</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>
    </ul>


      <div class="repo-menu-separator"></div>
      <ul class="repo-menu">
        <li class="tooltipped leftwards" title="Settings">
          <a href="/Ivnmaksimovic/minishop/settings" data-pjax aria-label="Settings">
            <span class="octicon octicon-tools"></span> <span class="full-word">Settings</span>
            <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
          </a>
        </li>
      </ul>
  </div>
</div>

            <div class="only-with-full-nav">
              

  

<div class="clone-url open"
  data-protocol-type="http"
  data-url="/users/set_protocol?protocol_selector=http&amp;protocol_type=push">
  <h3><strong>HTTPS</strong> clone URL</h3>

  <div class="clone-url-box">
    <input type="text" class="clone js-url-field"
           value="https://github.com/Ivnmaksimovic/minishop.git" readonly="readonly">

    <span class="js-zeroclipboard url-box-clippy minibutton zeroclipboard-button" data-clipboard-text="https://github.com/Ivnmaksimovic/minishop.git" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>

  

<div class="clone-url "
  data-protocol-type="ssh"
  data-url="/users/set_protocol?protocol_selector=ssh&amp;protocol_type=push">
  <h3><strong>SSH</strong> clone URL</h3>

  <div class="clone-url-box">
    <input type="text" class="clone js-url-field"
           value="git@github.com:Ivnmaksimovic/minishop.git" readonly="readonly">

    <span class="js-zeroclipboard url-box-clippy minibutton zeroclipboard-button" data-clipboard-text="git@github.com:Ivnmaksimovic/minishop.git" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>

  

<div class="clone-url "
  data-protocol-type="subversion"
  data-url="/users/set_protocol?protocol_selector=subversion&amp;protocol_type=push">
  <h3><strong>Subversion</strong> checkout URL</h3>

  <div class="clone-url-box">
    <input type="text" class="clone js-url-field"
           value="https://github.com/Ivnmaksimovic/minishop" readonly="readonly">

    <span class="js-zeroclipboard url-box-clippy minibutton zeroclipboard-button" data-clipboard-text="https://github.com/Ivnmaksimovic/minishop" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>



<p class="clone-options">You can clone with
    <a href="#" class="js-clone-selector" data-protocol="http">HTTPS</a>,
    <a href="#" class="js-clone-selector" data-protocol="ssh">SSH</a>,
    <a href="#" class="js-clone-selector" data-protocol="subversion">Subversion</a>,
  and <a href="https://help.github.com/articles/which-remote-url-should-i-use">other methods.</a>
</p>


  <a href="github-windows://openRepo/https://github.com/Ivnmaksimovic/minishop" class="minibutton sidebar-button">
    <span class="octicon octicon-device-desktop"></span>
    Clone in Desktop
  </a>

                <a href="/Ivnmaksimovic/minishop/archive/master.zip"
                   class="minibutton sidebar-button"
                   title="Download this repository as a zip file"
                   rel="nofollow">
                  <span class="octicon octicon-cloud-download"></span>
                  Download ZIP
                </a>
            </div>
        </div><!-- /.repository-sidebar -->

        <div id="js-repo-pjax-container" class="repository-content context-loader-container" data-pjax-container>
          


<!-- blob contrib key: blob_contributors:v21:545d8e68f2e95e48bd045e0649c69ed5 -->
<!-- blob contrib frag key: views10/v8/blob_contributors:v21:545d8e68f2e95e48bd045e0649c69ed5 -->

<p title="This is a placeholder element" class="js-history-link-replace hidden"></p>

<a href="/Ivnmaksimovic/minishop/find/master" data-pjax data-hotkey="t" style="display:none">Show File Finder</a>

<div class="file-navigation">
  


<div class="select-menu js-menu-container js-select-menu" >
  <span class="minibutton select-menu-button js-menu-target" data-hotkey="w"
    data-master-branch="master"
    data-ref="master" role="button" aria-label="Switch branches or tags">
    <span class="octicon octicon-git-branch"></span>
    <i>branch:</i>
    <span class="js-select-button">master</span>
  </span>

  <div class="select-menu-modal-holder js-menu-content js-navigation-container" data-pjax>

    <div class="select-menu-modal">
      <div class="select-menu-header">
        <span class="select-menu-title">Switch branches/tags</span>
        <span class="octicon octicon-remove-close js-menu-close"></span>
      </div> <!-- /.select-menu-header -->

      <div class="select-menu-filters">
        <div class="select-menu-text-filter">
          <input type="text" aria-label="Find or create a branch…" id="context-commitish-filter-field" class="js-filterable-field js-navigation-enable" placeholder="Find or create a branch…">
        </div>
        <div class="select-menu-tabs">
          <ul>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="branches" class="js-select-menu-tab">Branches</a>
            </li>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="tags" class="js-select-menu-tab">Tags</a>
            </li>
          </ul>
        </div><!-- /.select-menu-tabs -->
      </div><!-- /.select-menu-filters -->

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="branches">

        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <div class="select-menu-item js-navigation-item selected">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Ivnmaksimovic/minishop/blob/master/database/shop.sql" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="master" data-skip-pjax="true" rel="nofollow" title="master">master</a>
            </div> <!-- /.select-menu-item -->
        </div>

          <form accept-charset="UTF-8" action="/Ivnmaksimovic/minishop/branches" class="js-create-branch select-menu-item select-menu-new-item-form js-navigation-item js-new-item-form" method="post"><div style="margin:0;padding:0;display:inline"><input name="authenticity_token" type="hidden" value="wZ2sWpoQi1w8K2oseyG23iMXlr/g1CwiUIp1XU7cpDY=" /></div>
            <span class="octicon octicon-git-branch-create select-menu-item-icon"></span>
            <div class="select-menu-item-text">
              <h4>Create branch: <span class="js-new-item-name"></span></h4>
              <span class="description">from ‘master’</span>
            </div>
            <input type="hidden" name="name" id="name" class="js-new-item-value">
            <input type="hidden" name="branch" id="branch" value="master" />
            <input type="hidden" name="path" id="branch" value="database/shop.sql" />
          </form> <!-- /.select-menu-item -->

      </div> <!-- /.select-menu-list -->

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="tags">
        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


        </div>

        <div class="select-menu-no-results">Nothing to show</div>
      </div> <!-- /.select-menu-list -->

    </div> <!-- /.select-menu-modal -->
  </div> <!-- /.select-menu-modal-holder -->
</div> <!-- /.select-menu -->

  <div class="breadcrumb">
    <span class='repo-root js-repo-root'><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/Ivnmaksimovic/minishop" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">minishop</span></a></span></span><span class="separator"> / </span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/Ivnmaksimovic/minishop/tree/master/database" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">database</span></a></span><span class="separator"> / </span><strong class="final-path">shop.sql</strong> <span class="js-zeroclipboard minibutton zeroclipboard-button" data-clipboard-text="database/shop.sql" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>


  
  <div class="commit file-history-tease">
    <img class="main-avatar" height="24" src="https://0.gravatar.com/avatar/9b34eb6384a9c63f5dc87bd75c710cdb?d=https%3A%2F%2Fidenticons.github.com%2F76c13af4198f05370eeb511a2b994ab8.png&amp;s=140" width="24" />
    <span class="author"><a href="/Ivnmaksimovic" rel="author">Ivnmaksimovic</a></span>
    <time class="js-relative-date" datetime="2013-09-02T09:54:00-07:00" title="2013-09-02 09:54:00">September 02, 2013</time>
    <div class="commit-title">
        <a href="/Ivnmaksimovic/minishop/commit/d7fdc0a4fed1975b832f71d6562a55f9e5a54d0c" class="message" data-pjax="true" title="added database">added database</a>
    </div>

    <div class="participation">
      <p class="quickstat"><a href="#blob_contributors_box" rel="facebox"><strong>1</strong> contributor</a></p>
      
    </div>
    <div id="blob_contributors_box" style="display:none">
      <h2 class="facebox-header">Users who have contributed to this file</h2>
      <ul class="facebox-user-list">
        <li class="facebox-user-list-item">
          <img height="24" src="https://0.gravatar.com/avatar/9b34eb6384a9c63f5dc87bd75c710cdb?d=https%3A%2F%2Fidenticons.github.com%2F76c13af4198f05370eeb511a2b994ab8.png&amp;s=140" width="24" />
          <a href="/Ivnmaksimovic">Ivnmaksimovic</a>
        </li>
      </ul>
    </div>
  </div>


<div id="files" class="bubble">
  <div class="file">
    <div class="meta">
      <div class="info">
        <span class="icon"><b class="octicon octicon-file-text"></b></span>
        <span class="mode" title="File Mode">file</span>
          <span>174 lines (146 sloc)</span>
        <span>9.531 kb</span>
      </div>
      <div class="actions">
        <div class="button-group">
                <a class="minibutton"
                   href="/Ivnmaksimovic/minishop/edit/master/database/shop.sql"
                   data-method="post" rel="nofollow" data-hotkey="e">Edit</a>
          <a href="/Ivnmaksimovic/minishop/raw/master/database/shop.sql" class="button minibutton " id="raw-url">Raw</a>
            <a href="/Ivnmaksimovic/minishop/blame/master/database/shop.sql" class="button minibutton ">Blame</a>
          <a href="/Ivnmaksimovic/minishop/commits/master/database/shop.sql" class="button minibutton " rel="nofollow">History</a>
        </div><!-- /.button-group -->
            <a class="minibutton danger empty-icon tooltipped downwards"
               href="/Ivnmaksimovic/minishop/delete/master/database/shop.sql"
               title=""
               data-method="post" data-test-id="delete-blob-file" rel="nofollow">
            Delete
          </a>
      </div><!-- /.actions -->

    </div>
        <div class="blob-wrapper data type-sql js-blob-data">
        <table class="file-code file-diff">
          <tr class="file-code-line">
            <td class="blob-line-nums">
              <span id="L1" rel="#L1">1</span>
<span id="L2" rel="#L2">2</span>
<span id="L3" rel="#L3">3</span>
<span id="L4" rel="#L4">4</span>
<span id="L5" rel="#L5">5</span>
<span id="L6" rel="#L6">6</span>
<span id="L7" rel="#L7">7</span>
<span id="L8" rel="#L8">8</span>
<span id="L9" rel="#L9">9</span>
<span id="L10" rel="#L10">10</span>
<span id="L11" rel="#L11">11</span>
<span id="L12" rel="#L12">12</span>
<span id="L13" rel="#L13">13</span>
<span id="L14" rel="#L14">14</span>
<span id="L15" rel="#L15">15</span>
<span id="L16" rel="#L16">16</span>
<span id="L17" rel="#L17">17</span>
<span id="L18" rel="#L18">18</span>
<span id="L19" rel="#L19">19</span>
<span id="L20" rel="#L20">20</span>
<span id="L21" rel="#L21">21</span>
<span id="L22" rel="#L22">22</span>
<span id="L23" rel="#L23">23</span>
<span id="L24" rel="#L24">24</span>
<span id="L25" rel="#L25">25</span>
<span id="L26" rel="#L26">26</span>
<span id="L27" rel="#L27">27</span>
<span id="L28" rel="#L28">28</span>
<span id="L29" rel="#L29">29</span>
<span id="L30" rel="#L30">30</span>
<span id="L31" rel="#L31">31</span>
<span id="L32" rel="#L32">32</span>
<span id="L33" rel="#L33">33</span>
<span id="L34" rel="#L34">34</span>
<span id="L35" rel="#L35">35</span>
<span id="L36" rel="#L36">36</span>
<span id="L37" rel="#L37">37</span>
<span id="L38" rel="#L38">38</span>
<span id="L39" rel="#L39">39</span>
<span id="L40" rel="#L40">40</span>
<span id="L41" rel="#L41">41</span>
<span id="L42" rel="#L42">42</span>
<span id="L43" rel="#L43">43</span>
<span id="L44" rel="#L44">44</span>
<span id="L45" rel="#L45">45</span>
<span id="L46" rel="#L46">46</span>
<span id="L47" rel="#L47">47</span>
<span id="L48" rel="#L48">48</span>
<span id="L49" rel="#L49">49</span>
<span id="L50" rel="#L50">50</span>
<span id="L51" rel="#L51">51</span>
<span id="L52" rel="#L52">52</span>
<span id="L53" rel="#L53">53</span>
<span id="L54" rel="#L54">54</span>
<span id="L55" rel="#L55">55</span>
<span id="L56" rel="#L56">56</span>
<span id="L57" rel="#L57">57</span>
<span id="L58" rel="#L58">58</span>
<span id="L59" rel="#L59">59</span>
<span id="L60" rel="#L60">60</span>
<span id="L61" rel="#L61">61</span>
<span id="L62" rel="#L62">62</span>
<span id="L63" rel="#L63">63</span>
<span id="L64" rel="#L64">64</span>
<span id="L65" rel="#L65">65</span>
<span id="L66" rel="#L66">66</span>
<span id="L67" rel="#L67">67</span>
<span id="L68" rel="#L68">68</span>
<span id="L69" rel="#L69">69</span>
<span id="L70" rel="#L70">70</span>
<span id="L71" rel="#L71">71</span>
<span id="L72" rel="#L72">72</span>
<span id="L73" rel="#L73">73</span>
<span id="L74" rel="#L74">74</span>
<span id="L75" rel="#L75">75</span>
<span id="L76" rel="#L76">76</span>
<span id="L77" rel="#L77">77</span>
<span id="L78" rel="#L78">78</span>
<span id="L79" rel="#L79">79</span>
<span id="L80" rel="#L80">80</span>
<span id="L81" rel="#L81">81</span>
<span id="L82" rel="#L82">82</span>
<span id="L83" rel="#L83">83</span>
<span id="L84" rel="#L84">84</span>
<span id="L85" rel="#L85">85</span>
<span id="L86" rel="#L86">86</span>
<span id="L87" rel="#L87">87</span>
<span id="L88" rel="#L88">88</span>
<span id="L89" rel="#L89">89</span>
<span id="L90" rel="#L90">90</span>
<span id="L91" rel="#L91">91</span>
<span id="L92" rel="#L92">92</span>
<span id="L93" rel="#L93">93</span>
<span id="L94" rel="#L94">94</span>
<span id="L95" rel="#L95">95</span>
<span id="L96" rel="#L96">96</span>
<span id="L97" rel="#L97">97</span>
<span id="L98" rel="#L98">98</span>
<span id="L99" rel="#L99">99</span>
<span id="L100" rel="#L100">100</span>
<span id="L101" rel="#L101">101</span>
<span id="L102" rel="#L102">102</span>
<span id="L103" rel="#L103">103</span>
<span id="L104" rel="#L104">104</span>
<span id="L105" rel="#L105">105</span>
<span id="L106" rel="#L106">106</span>
<span id="L107" rel="#L107">107</span>
<span id="L108" rel="#L108">108</span>
<span id="L109" rel="#L109">109</span>
<span id="L110" rel="#L110">110</span>
<span id="L111" rel="#L111">111</span>
<span id="L112" rel="#L112">112</span>
<span id="L113" rel="#L113">113</span>
<span id="L114" rel="#L114">114</span>
<span id="L115" rel="#L115">115</span>
<span id="L116" rel="#L116">116</span>
<span id="L117" rel="#L117">117</span>
<span id="L118" rel="#L118">118</span>
<span id="L119" rel="#L119">119</span>
<span id="L120" rel="#L120">120</span>
<span id="L121" rel="#L121">121</span>
<span id="L122" rel="#L122">122</span>
<span id="L123" rel="#L123">123</span>
<span id="L124" rel="#L124">124</span>
<span id="L125" rel="#L125">125</span>
<span id="L126" rel="#L126">126</span>
<span id="L127" rel="#L127">127</span>
<span id="L128" rel="#L128">128</span>
<span id="L129" rel="#L129">129</span>
<span id="L130" rel="#L130">130</span>
<span id="L131" rel="#L131">131</span>
<span id="L132" rel="#L132">132</span>
<span id="L133" rel="#L133">133</span>
<span id="L134" rel="#L134">134</span>
<span id="L135" rel="#L135">135</span>
<span id="L136" rel="#L136">136</span>
<span id="L137" rel="#L137">137</span>
<span id="L138" rel="#L138">138</span>
<span id="L139" rel="#L139">139</span>
<span id="L140" rel="#L140">140</span>
<span id="L141" rel="#L141">141</span>
<span id="L142" rel="#L142">142</span>
<span id="L143" rel="#L143">143</span>
<span id="L144" rel="#L144">144</span>
<span id="L145" rel="#L145">145</span>
<span id="L146" rel="#L146">146</span>
<span id="L147" rel="#L147">147</span>
<span id="L148" rel="#L148">148</span>
<span id="L149" rel="#L149">149</span>
<span id="L150" rel="#L150">150</span>
<span id="L151" rel="#L151">151</span>
<span id="L152" rel="#L152">152</span>
<span id="L153" rel="#L153">153</span>
<span id="L154" rel="#L154">154</span>
<span id="L155" rel="#L155">155</span>
<span id="L156" rel="#L156">156</span>
<span id="L157" rel="#L157">157</span>
<span id="L158" rel="#L158">158</span>
<span id="L159" rel="#L159">159</span>
<span id="L160" rel="#L160">160</span>
<span id="L161" rel="#L161">161</span>
<span id="L162" rel="#L162">162</span>
<span id="L163" rel="#L163">163</span>
<span id="L164" rel="#L164">164</span>
<span id="L165" rel="#L165">165</span>
<span id="L166" rel="#L166">166</span>
<span id="L167" rel="#L167">167</span>
<span id="L168" rel="#L168">168</span>
<span id="L169" rel="#L169">169</span>
<span id="L170" rel="#L170">170</span>
<span id="L171" rel="#L171">171</span>
<span id="L172" rel="#L172">172</span>
<span id="L173" rel="#L173">173</span>

            </td>
            <td class="blob-line-code">
                    <div class="highlight"><pre><div class='line' id='LC1'><span class="c1">-- phpMyAdmin SQL Dump</span></div><div class='line' id='LC2'><span class="c1">-- version 3.5.2.2</span></div><div class='line' id='LC3'><span class="c1">-- http://www.phpmyadmin.net</span></div><div class='line' id='LC4'><span class="c1">--</span></div><div class='line' id='LC5'><span class="c1">-- Host: 127.0.0.1</span></div><div class='line' id='LC6'><span class="c1">-- Generation Time: Sep 02, 2013 at 06:51 PM</span></div><div class='line' id='LC7'><span class="c1">-- Server version: 5.5.27</span></div><div class='line' id='LC8'><span class="c1">-- PHP Version: 5.4.7</span></div><div class='line' id='LC9'><br/></div><div class='line' id='LC10'><span class="k">SET</span> <span class="n">SQL_MODE</span><span class="o">=</span><span class="ss">&quot;NO_AUTO_VALUE_ON_ZERO&quot;</span><span class="p">;</span></div><div class='line' id='LC11'><span class="k">SET</span> <span class="n">time_zone</span> <span class="o">=</span> <span class="ss">&quot;+00:00&quot;</span><span class="p">;</span></div><div class='line' id='LC12'><br/></div><div class='line' id='LC13'><br/></div><div class='line' id='LC14'><span class="cm">/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */</span><span class="p">;</span></div><div class='line' id='LC15'><span class="cm">/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */</span><span class="p">;</span></div><div class='line' id='LC16'><span class="cm">/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */</span><span class="p">;</span></div><div class='line' id='LC17'><span class="cm">/*!40101 SET NAMES utf8 */</span><span class="p">;</span></div><div class='line' id='LC18'><br/></div><div class='line' id='LC19'><span class="c1">--</span></div><div class='line' id='LC20'><span class="c1">-- Database: `shop`</span></div><div class='line' id='LC21'><span class="c1">--</span></div><div class='line' id='LC22'><br/></div><div class='line' id='LC23'><span class="c1">-- --------------------------------------------------------</span></div><div class='line' id='LC24'><br/></div><div class='line' id='LC25'><span class="c1">--</span></div><div class='line' id='LC26'><span class="c1">-- Table structure for table `brand`</span></div><div class='line' id='LC27'><span class="c1">--</span></div><div class='line' id='LC28'><br/></div><div class='line' id='LC29'><span class="k">CREATE</span> <span class="k">TABLE</span> <span class="n">IF</span> <span class="k">NOT</span> <span class="k">EXISTS</span> <span class="o">`</span><span class="n">brand</span><span class="o">`</span> <span class="p">(</span></div><div class='line' id='LC30'>&nbsp;&nbsp;<span class="o">`</span><span class="n">id</span><span class="o">`</span> <span class="nb">int</span><span class="p">(</span><span class="mi">11</span><span class="p">)</span> <span class="k">NOT</span> <span class="k">NULL</span> <span class="n">AUTO_INCREMENT</span><span class="p">,</span></div><div class='line' id='LC31'>&nbsp;&nbsp;<span class="o">`</span><span class="n">brand_name</span><span class="o">`</span> <span class="nb">varchar</span><span class="p">(</span><span class="mi">255</span><span class="p">)</span> <span class="k">COLLATE</span> <span class="n">utf8_unicode_ci</span> <span class="k">NOT</span> <span class="k">NULL</span><span class="p">,</span></div><div class='line' id='LC32'>&nbsp;&nbsp;<span class="o">`</span><span class="n">brand_description</span><span class="o">`</span> <span class="n">longtext</span> <span class="k">COLLATE</span> <span class="n">utf8_unicode_ci</span> <span class="k">NOT</span> <span class="k">NULL</span><span class="p">,</span></div><div class='line' id='LC33'>&nbsp;&nbsp;<span class="o">`</span><span class="n">img_path</span><span class="o">`</span> <span class="nb">varchar</span><span class="p">(</span><span class="mi">255</span><span class="p">)</span> <span class="k">COLLATE</span> <span class="n">utf8_unicode_ci</span> <span class="k">DEFAULT</span> <span class="k">NULL</span><span class="p">,</span></div><div class='line' id='LC34'>&nbsp;&nbsp;<span class="k">PRIMARY</span> <span class="k">KEY</span> <span class="p">(</span><span class="o">`</span><span class="n">id</span><span class="o">`</span><span class="p">)</span></div><div class='line' id='LC35'><span class="p">)</span> <span class="n">ENGINE</span><span class="o">=</span><span class="n">InnoDB</span>  <span class="k">DEFAULT</span> <span class="n">CHARSET</span><span class="o">=</span><span class="n">utf8</span> <span class="k">COLLATE</span><span class="o">=</span><span class="n">utf8_unicode_ci</span> <span class="n">AUTO_INCREMENT</span><span class="o">=</span><span class="mi">9</span> <span class="p">;</span></div><div class='line' id='LC36'><br/></div><div class='line' id='LC37'><span class="c1">--</span></div><div class='line' id='LC38'><span class="c1">-- Dumping data for table `brand`</span></div><div class='line' id='LC39'><span class="c1">--</span></div><div class='line' id='LC40'><br/></div><div class='line' id='LC41'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="o">`</span><span class="n">brand</span><span class="o">`</span> <span class="p">(</span><span class="o">`</span><span class="n">id</span><span class="o">`</span><span class="p">,</span> <span class="o">`</span><span class="n">brand_name</span><span class="o">`</span><span class="p">,</span> <span class="o">`</span><span class="n">brand_description</span><span class="o">`</span><span class="p">,</span> <span class="o">`</span><span class="n">img_path</span><span class="o">`</span><span class="p">)</span> <span class="k">VALUES</span></div><div class='line' id='LC42'><span class="p">(</span><span class="mi">1</span><span class="p">,</span> <span class="s1">&#39;Etnies&#39;</span><span class="p">,</span> <span class="s1">&#39;Americki brand bla bla&#39;</span><span class="p">,</span> <span class="s1">&#39;brand_026e223a2759e1c84e7609e2e930e1780d5a7255.jpg&#39;</span><span class="p">),</span></div><div class='line' id='LC43'><span class="p">(</span><span class="mi">2</span><span class="p">,</span> <span class="s1">&#39;Fallen&#39;</span><span class="p">,</span> <span class="s1">&#39;Australijski brand poznat po&#39;</span><span class="p">,</span> <span class="s1">&#39;brand_2072b19dbe101cba8b76f18575d443f6038a9ceb.jpg&#39;</span><span class="p">),</span></div><div class='line' id='LC44'><span class="p">(</span><span class="mi">3</span><span class="p">,</span> <span class="s1">&#39;Emerica&#39;</span><span class="p">,</span> <span class="s1">&#39;Americki brand stari&#39;</span><span class="p">,</span> <span class="s1">&#39;brand_f1451df8573d80aa2c031024254754b471f09553.jpg&#39;</span><span class="p">),</span></div><div class='line' id='LC45'><span class="p">(</span><span class="mi">4</span><span class="p">,</span> <span class="s1">&#39;Dakine&#39;</span><span class="p">,</span> <span class="s1">&#39;Rancevi vrhunskog kvaliteta&#39;</span><span class="p">,</span> <span class="s1">&#39;brand_1f19e7ba12546833b6a46c670089519dea097007.jpg&#39;</span><span class="p">),</span></div><div class='line' id='LC46'><span class="p">(</span><span class="mi">5</span><span class="p">,</span> <span class="s1">&#39;Roxy&#39;</span><span class="p">,</span> <span class="s1">&#39;Zenski fensi brand&#39;</span><span class="p">,</span> <span class="s1">&#39;brand_8f6735dfa905fd78feeb1584289001f8aaa30fc8.jpg&#39;</span><span class="p">),</span></div><div class='line' id='LC47'><span class="p">(</span><span class="mi">6</span><span class="p">,</span> <span class="s1">&#39;Rope&#39;</span><span class="p">,</span> <span class="s1">&#39;Domaci brand&#39;</span><span class="p">,</span> <span class="s1">&#39;brand_7ec97f5f01134448567782462fd2fc2a40205ef6.jpg&#39;</span><span class="p">),</span></div><div class='line' id='LC48'><span class="p">(</span><span class="mi">7</span><span class="p">,</span> <span class="s1">&#39;O&#39;&#39;Neill&#39;</span><span class="p">,</span> <span class="s1">&#39;Stari brand, izmislili neopren&#39;</span><span class="p">,</span> <span class="s1">&#39;brand_a81faafc7c208af3fb8e93c5867b7c1aa8b121d0.jpg&#39;</span><span class="p">),</span></div><div class='line' id='LC49'><span class="p">(</span><span class="mi">8</span><span class="p">,</span> <span class="s1">&#39;ES&#39;</span><span class="p">,</span> <span class="s1">&#39;Fensi skate brand&#39;</span><span class="p">,</span> <span class="s1">&#39;brand_4c530529a51eb4b761a69028fd133a529ad0cda2.jpg&#39;</span><span class="p">);</span></div><div class='line' id='LC50'><br/></div><div class='line' id='LC51'><span class="c1">-- --------------------------------------------------------</span></div><div class='line' id='LC52'><br/></div><div class='line' id='LC53'><span class="c1">--</span></div><div class='line' id='LC54'><span class="c1">-- Table structure for table `category`</span></div><div class='line' id='LC55'><span class="c1">--</span></div><div class='line' id='LC56'><br/></div><div class='line' id='LC57'><span class="k">CREATE</span> <span class="k">TABLE</span> <span class="n">IF</span> <span class="k">NOT</span> <span class="k">EXISTS</span> <span class="o">`</span><span class="n">category</span><span class="o">`</span> <span class="p">(</span></div><div class='line' id='LC58'>&nbsp;&nbsp;<span class="o">`</span><span class="n">id</span><span class="o">`</span> <span class="nb">int</span><span class="p">(</span><span class="mi">11</span><span class="p">)</span> <span class="k">NOT</span> <span class="k">NULL</span> <span class="n">AUTO_INCREMENT</span><span class="p">,</span></div><div class='line' id='LC59'>&nbsp;&nbsp;<span class="o">`</span><span class="n">category_name</span><span class="o">`</span> <span class="nb">varchar</span><span class="p">(</span><span class="mi">255</span><span class="p">)</span> <span class="k">COLLATE</span> <span class="n">utf8_unicode_ci</span> <span class="k">NOT</span> <span class="k">NULL</span><span class="p">,</span></div><div class='line' id='LC60'>&nbsp;&nbsp;<span class="k">PRIMARY</span> <span class="k">KEY</span> <span class="p">(</span><span class="o">`</span><span class="n">id</span><span class="o">`</span><span class="p">)</span></div><div class='line' id='LC61'><span class="p">)</span> <span class="n">ENGINE</span><span class="o">=</span><span class="n">InnoDB</span>  <span class="k">DEFAULT</span> <span class="n">CHARSET</span><span class="o">=</span><span class="n">utf8</span> <span class="k">COLLATE</span><span class="o">=</span><span class="n">utf8_unicode_ci</span> <span class="n">AUTO_INCREMENT</span><span class="o">=</span><span class="mi">8</span> <span class="p">;</span></div><div class='line' id='LC62'><br/></div><div class='line' id='LC63'><span class="c1">--</span></div><div class='line' id='LC64'><span class="c1">-- Dumping data for table `category`</span></div><div class='line' id='LC65'><span class="c1">--</span></div><div class='line' id='LC66'><br/></div><div class='line' id='LC67'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="o">`</span><span class="n">category</span><span class="o">`</span> <span class="p">(</span><span class="o">`</span><span class="n">id</span><span class="o">`</span><span class="p">,</span> <span class="o">`</span><span class="n">category_name</span><span class="o">`</span><span class="p">)</span> <span class="k">VALUES</span></div><div class='line' id='LC68'><span class="p">(</span><span class="mi">1</span><span class="p">,</span> <span class="s1">&#39;Patike&#39;</span><span class="p">),</span></div><div class='line' id='LC69'><span class="p">(</span><span class="mi">3</span><span class="p">,</span> <span class="s1">&#39;Majice&#39;</span><span class="p">),</span></div><div class='line' id='LC70'><span class="p">(</span><span class="mi">4</span><span class="p">,</span> <span class="s1">&#39;Duksevi&#39;</span><span class="p">),</span></div><div class='line' id='LC71'><span class="p">(</span><span class="mi">5</span><span class="p">,</span> <span class="s1">&#39;Rancevi&#39;</span><span class="p">),</span></div><div class='line' id='LC72'><span class="p">(</span><span class="mi">7</span><span class="p">,</span> <span class="s1">&#39;Ostalo&#39;</span><span class="p">);</span></div><div class='line' id='LC73'><br/></div><div class='line' id='LC74'><span class="c1">-- --------------------------------------------------------</span></div><div class='line' id='LC75'><br/></div><div class='line' id='LC76'><span class="c1">--</span></div><div class='line' id='LC77'><span class="c1">-- Table structure for table `product`</span></div><div class='line' id='LC78'><span class="c1">--</span></div><div class='line' id='LC79'><br/></div><div class='line' id='LC80'><span class="k">CREATE</span> <span class="k">TABLE</span> <span class="n">IF</span> <span class="k">NOT</span> <span class="k">EXISTS</span> <span class="o">`</span><span class="n">product</span><span class="o">`</span> <span class="p">(</span></div><div class='line' id='LC81'>&nbsp;&nbsp;<span class="o">`</span><span class="n">id</span><span class="o">`</span> <span class="nb">int</span><span class="p">(</span><span class="mi">11</span><span class="p">)</span> <span class="k">NOT</span> <span class="k">NULL</span> <span class="n">AUTO_INCREMENT</span><span class="p">,</span></div><div class='line' id='LC82'>&nbsp;&nbsp;<span class="o">`</span><span class="n">category_id</span><span class="o">`</span> <span class="nb">int</span><span class="p">(</span><span class="mi">11</span><span class="p">)</span> <span class="k">DEFAULT</span> <span class="k">NULL</span><span class="p">,</span></div><div class='line' id='LC83'>&nbsp;&nbsp;<span class="o">`</span><span class="n">brand_id</span><span class="o">`</span> <span class="nb">int</span><span class="p">(</span><span class="mi">11</span><span class="p">)</span> <span class="k">DEFAULT</span> <span class="k">NULL</span><span class="p">,</span></div><div class='line' id='LC84'>&nbsp;&nbsp;<span class="o">`</span><span class="n">product_name</span><span class="o">`</span> <span class="nb">varchar</span><span class="p">(</span><span class="mi">255</span><span class="p">)</span> <span class="k">COLLATE</span> <span class="n">utf8_unicode_ci</span> <span class="k">NOT</span> <span class="k">NULL</span><span class="p">,</span></div><div class='line' id='LC85'>&nbsp;&nbsp;<span class="o">`</span><span class="n">product_description</span><span class="o">`</span> <span class="n">longtext</span> <span class="k">COLLATE</span> <span class="n">utf8_unicode_ci</span> <span class="k">NOT</span> <span class="k">NULL</span><span class="p">,</span></div><div class='line' id='LC86'>&nbsp;&nbsp;<span class="o">`</span><span class="n">product_price</span><span class="o">`</span> <span class="nb">int</span><span class="p">(</span><span class="mi">11</span><span class="p">)</span> <span class="k">NOT</span> <span class="k">NULL</span><span class="p">,</span></div><div class='line' id='LC87'>&nbsp;&nbsp;<span class="o">`</span><span class="n">product_rabat</span><span class="o">`</span> <span class="nb">int</span><span class="p">(</span><span class="mi">11</span><span class="p">)</span> <span class="k">NOT</span> <span class="k">NULL</span><span class="p">,</span></div><div class='line' id='LC88'>&nbsp;&nbsp;<span class="o">`</span><span class="n">product_size</span><span class="o">`</span> <span class="nb">varchar</span><span class="p">(</span><span class="mi">255</span><span class="p">)</span> <span class="k">COLLATE</span> <span class="n">utf8_unicode_ci</span> <span class="k">NOT</span> <span class="k">NULL</span><span class="p">,</span></div><div class='line' id='LC89'>&nbsp;&nbsp;<span class="o">`</span><span class="n">img_path</span><span class="o">`</span> <span class="nb">varchar</span><span class="p">(</span><span class="mi">255</span><span class="p">)</span> <span class="k">COLLATE</span> <span class="n">utf8_unicode_ci</span> <span class="k">DEFAULT</span> <span class="k">NULL</span><span class="p">,</span></div><div class='line' id='LC90'>&nbsp;&nbsp;<span class="k">PRIMARY</span> <span class="k">KEY</span> <span class="p">(</span><span class="o">`</span><span class="n">id</span><span class="o">`</span><span class="p">),</span></div><div class='line' id='LC91'>&nbsp;&nbsp;<span class="k">KEY</span> <span class="o">`</span><span class="n">IDX_1CF73D3112469DE2</span><span class="o">`</span> <span class="p">(</span><span class="o">`</span><span class="n">category_id</span><span class="o">`</span><span class="p">),</span></div><div class='line' id='LC92'>&nbsp;&nbsp;<span class="k">KEY</span> <span class="o">`</span><span class="n">IDX_1CF73D3144F5D008</span><span class="o">`</span> <span class="p">(</span><span class="o">`</span><span class="n">brand_id</span><span class="o">`</span><span class="p">)</span></div><div class='line' id='LC93'><span class="p">)</span> <span class="n">ENGINE</span><span class="o">=</span><span class="n">InnoDB</span>  <span class="k">DEFAULT</span> <span class="n">CHARSET</span><span class="o">=</span><span class="n">utf8</span> <span class="k">COLLATE</span><span class="o">=</span><span class="n">utf8_unicode_ci</span> <span class="n">AUTO_INCREMENT</span><span class="o">=</span><span class="mi">30</span> <span class="p">;</span></div><div class='line' id='LC94'><br/></div><div class='line' id='LC95'><span class="c1">--</span></div><div class='line' id='LC96'><span class="c1">-- Dumping data for table `product`</span></div><div class='line' id='LC97'><span class="c1">--</span></div><div class='line' id='LC98'><br/></div><div class='line' id='LC99'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="o">`</span><span class="n">product</span><span class="o">`</span> <span class="p">(</span><span class="o">`</span><span class="n">id</span><span class="o">`</span><span class="p">,</span> <span class="o">`</span><span class="n">category_id</span><span class="o">`</span><span class="p">,</span> <span class="o">`</span><span class="n">brand_id</span><span class="o">`</span><span class="p">,</span> <span class="o">`</span><span class="n">product_name</span><span class="o">`</span><span class="p">,</span> <span class="o">`</span><span class="n">product_description</span><span class="o">`</span><span class="p">,</span> <span class="o">`</span><span class="n">product_price</span><span class="o">`</span><span class="p">,</span> <span class="o">`</span><span class="n">product_rabat</span><span class="o">`</span><span class="p">,</span> <span class="o">`</span><span class="n">product_size</span><span class="o">`</span><span class="p">,</span> <span class="o">`</span><span class="n">img_path</span><span class="o">`</span><span class="p">)</span> <span class="k">VALUES</span></div><div class='line' id='LC100'><span class="p">(</span><span class="mi">3</span><span class="p">,</span> <span class="mi">1</span><span class="p">,</span> <span class="mi">1</span><span class="p">,</span> <span class="s1">&#39;Cinch&#39;</span><span class="p">,</span> <span class="s1">&#39;mnogo dobre bla bla&#39;</span><span class="p">,</span> <span class="mi">7990</span><span class="p">,</span> <span class="mi">30</span><span class="p">,</span> <span class="s1">&#39;42&#39;</span><span class="p">,</span> <span class="s1">&#39;product_88909c68dc9394c72ed0b2e98e9f40f4a02d10c2.jpg&#39;</span><span class="p">),</span></div><div class='line' id='LC101'><span class="p">(</span><span class="mi">4</span><span class="p">,</span> <span class="mi">1</span><span class="p">,</span> <span class="mi">2</span><span class="p">,</span> <span class="s1">&#39;Heritage&#39;</span><span class="p">,</span> <span class="s1">&#39;mnogo dobre bla bla&#39;</span><span class="p">,</span> <span class="mi">10290</span><span class="p">,</span> <span class="mi">0</span><span class="p">,</span> <span class="s1">&#39;45&#39;</span><span class="p">,</span> <span class="s1">&#39;product_5d5ebc61e02f9051497fedb3d5fff055320fc5cc.jpg&#39;</span><span class="p">),</span></div><div class='line' id='LC102'><span class="p">(</span><span class="mi">5</span><span class="p">,</span> <span class="mi">1</span><span class="p">,</span> <span class="mi">3</span><span class="p">,</span> <span class="s1">&#39;Jinx&#39;</span><span class="p">,</span> <span class="s1">&#39;mnogo dobre bla bla&#39;</span><span class="p">,</span> <span class="mi">6990</span><span class="p">,</span> <span class="mi">20</span><span class="p">,</span> <span class="s1">&#39;42.5&#39;</span><span class="p">,</span> <span class="s1">&#39;product_4e13db680ce31891cf6c6859030d89de1e42c394.jpg&#39;</span><span class="p">),</span></div><div class='line' id='LC103'><span class="p">(</span><span class="mi">6</span><span class="p">,</span> <span class="mi">4</span><span class="p">,</span> <span class="mi">6</span><span class="p">,</span> <span class="s1">&#39;Heyho&#39;</span><span class="p">,</span> <span class="s1">&#39;Duks sa kapuljacom&#39;</span><span class="p">,</span> <span class="mi">3890</span><span class="p">,</span> <span class="mi">30</span><span class="p">,</span> <span class="s1">&#39;XXL&#39;</span><span class="p">,</span> <span class="s1">&#39;product_dc0ad756596c2c4c845436d9136b9a6db8bbc04c.jpg&#39;</span><span class="p">),</span></div><div class='line' id='LC104'><span class="p">(</span><span class="mi">7</span><span class="p">,</span> <span class="mi">4</span><span class="p">,</span> <span class="mi">6</span><span class="p">,</span> <span class="s1">&#39;Trikolor&#39;</span><span class="p">,</span> <span class="s1">&#39;Duks sa kapuljacom&#39;</span><span class="p">,</span> <span class="mi">4290</span><span class="p">,</span> <span class="mi">30</span><span class="p">,</span> <span class="s1">&#39;L&#39;</span><span class="p">,</span> <span class="s1">&#39;product_287c1c2897f55558d194928f42cc08663347a4ba.jpg&#39;</span><span class="p">),</span></div><div class='line' id='LC105'><span class="p">(</span><span class="mi">8</span><span class="p">,</span> <span class="mi">5</span><span class="p">,</span> <span class="mi">4</span><span class="p">,</span> <span class="s1">&#39;Ranac&#39;</span><span class="p">,</span> <span class="s1">&#39;sa pregradom za laptop&#39;</span><span class="p">,</span> <span class="mi">5990</span><span class="p">,</span> <span class="mi">30</span><span class="p">,</span> <span class="s1">&#39;20l&#39;</span><span class="p">,</span> <span class="s1">&#39;product_079556284f24d7b0a72c4a09d6940a7267740c35.jpg&#39;</span><span class="p">),</span></div><div class='line' id='LC106'><span class="p">(</span><span class="mi">9</span><span class="p">,</span> <span class="mi">7</span><span class="p">,</span> <span class="mi">5</span><span class="p">,</span> <span class="s1">&#39;Kais&#39;</span><span class="p">,</span> <span class="s1">&#39;sadf&#39;</span><span class="p">,</span> <span class="mi">1990</span><span class="p">,</span> <span class="mi">30</span><span class="p">,</span> <span class="s1">&#39;metar&#39;</span><span class="p">,</span> <span class="s1">&#39;product_b036182029c86a5783a5a55db4b91f46fb9f7c78.jpg&#39;</span><span class="p">),</span></div><div class='line' id='LC107'><span class="p">(</span><span class="mi">10</span><span class="p">,</span> <span class="mi">3</span><span class="p">,</span> <span class="mi">6</span><span class="p">,</span> <span class="s1">&#39;Zenska majica&#39;</span><span class="p">,</span> <span class="s1">&#39;Sa velikim izrezom&#39;</span><span class="p">,</span> <span class="mi">1390</span><span class="p">,</span> <span class="mi">0</span><span class="p">,</span> <span class="s1">&#39;M&#39;</span><span class="p">,</span> <span class="s1">&#39;product_667db91f5b9b7b5126fdbbd3f98d01650db4ef7d.jpg&#39;</span><span class="p">),</span></div><div class='line' id='LC108'><span class="p">(</span><span class="mi">11</span><span class="p">,</span> <span class="mi">7</span><span class="p">,</span> <span class="mi">7</span><span class="p">,</span> <span class="s1">&#39;Novcanik Crni&#39;</span><span class="p">,</span> <span class="s1">&#39;Dobar crni kozni novcanik sa uloskom za karticu&#39;</span><span class="p">,</span> <span class="mi">3190</span><span class="p">,</span> <span class="mi">40</span><span class="p">,</span> <span class="s1">&#39;podeblji&#39;</span><span class="p">,</span> <span class="s1">&#39;product_c31f64580a842c8aa355aa48375056a452e83cb1.jpg&#39;</span><span class="p">),</span></div><div class='line' id='LC109'><span class="p">(</span><span class="mi">17</span><span class="p">,</span> <span class="mi">1</span><span class="p">,</span> <span class="mi">1</span><span class="p">,</span> <span class="s1">&#39;Heritage&#39;</span><span class="p">,</span> <span class="s1">&#39;mnogo dobre bla bla&#39;</span><span class="p">,</span> <span class="mi">4000</span><span class="p">,</span> <span class="mi">30</span><span class="p">,</span> <span class="s1">&#39;42&#39;</span><span class="p">,</span> <span class="s1">&#39;product_ffbda293d7990309aac510fc4bda00894c064386.jpg&#39;</span><span class="p">),</span></div><div class='line' id='LC110'><span class="p">(</span><span class="mi">18</span><span class="p">,</span> <span class="mi">5</span><span class="p">,</span> <span class="mi">5</span><span class="p">,</span> <span class="s1">&#39;Mision&#39;</span><span class="p">,</span> <span class="s1">&#39;sa pregradom za laptop&#39;</span><span class="p">,</span> <span class="mi">4500</span><span class="p">,</span> <span class="mi">10</span><span class="p">,</span> <span class="s1">&#39;25l&#39;</span><span class="p">,</span> <span class="s1">&#39;product_e7a893d4c54bb477b8b6a30d16d8ed300fd5039e.jpg&#39;</span><span class="p">),</span></div><div class='line' id='LC111'><span class="p">(</span><span class="mi">19</span><span class="p">,</span> <span class="mi">5</span><span class="p">,</span> <span class="mi">4</span><span class="p">,</span> <span class="s1">&#39;Ranac&#39;</span><span class="p">,</span> <span class="s1">&#39;mnogo dobre bla bla&#39;</span><span class="p">,</span> <span class="mi">3000</span><span class="p">,</span> <span class="mi">50</span><span class="p">,</span> <span class="s1">&#39;20l&#39;</span><span class="p">,</span> <span class="s1">&#39;product_dc527797626ac8441b654bb496273fd1d2ab0ced.jpg&#39;</span><span class="p">),</span></div><div class='line' id='LC112'><span class="p">(</span><span class="mi">20</span><span class="p">,</span> <span class="mi">3</span><span class="p">,</span> <span class="mi">2</span><span class="p">,</span> <span class="s1">&#39;Fader&#39;</span><span class="p">,</span> <span class="s1">&#39;poluduboke za svako vreme...&#39;</span><span class="p">,</span> <span class="mi">200</span><span class="p">,</span> <span class="mi">0</span><span class="p">,</span> <span class="s1">&#39;38.5&#39;</span><span class="p">,</span> <span class="s1">&#39;product_33e3263437705e8703077e2d758d7fc12dfb9b11.jpg&#39;</span><span class="p">),</span></div><div class='line' id='LC113'><span class="p">(</span><span class="mi">21</span><span class="p">,</span> <span class="mi">1</span><span class="p">,</span> <span class="mi">1</span><span class="p">,</span> <span class="s1">&#39;Hi Volt&#39;</span><span class="p">,</span> <span class="s1">&#39;kozne braon patike&#39;</span><span class="p">,</span> <span class="mi">2000</span><span class="p">,</span> <span class="mi">30</span><span class="p">,</span> <span class="s1">&#39;42&#39;</span><span class="p">,</span> <span class="s1">&#39;product_d10b533df109f61b4cb63b64d78b3a912884b6bc.jpg&#39;</span><span class="p">),</span></div><div class='line' id='LC114'><span class="p">(</span><span class="mi">22</span><span class="p">,</span> <span class="mi">1</span><span class="p">,</span> <span class="mi">8</span><span class="p">,</span> <span class="s1">&#39;La Brea&#39;</span><span class="p">,</span> <span class="s1">&#39;kozne braon patike&#39;</span><span class="p">,</span> <span class="mi">5000</span><span class="p">,</span> <span class="mi">50</span><span class="p">,</span> <span class="s1">&#39;42&#39;</span><span class="p">,</span> <span class="s1">&#39;product_1f37c0842f0ed79647d9f62ff7925ee113793594.jpg&#39;</span><span class="p">),</span></div><div class='line' id='LC115'><span class="p">(</span><span class="mi">23</span><span class="p">,</span> <span class="mi">4</span><span class="p">,</span> <span class="mi">6</span><span class="p">,</span> <span class="s1">&#39;Hoodie&#39;</span><span class="p">,</span> <span class="s1">&#39;Duks sa kapuljacom&#39;</span><span class="p">,</span> <span class="mi">4290</span><span class="p">,</span> <span class="mi">30</span><span class="p">,</span> <span class="s1">&#39;L&#39;</span><span class="p">,</span> <span class="s1">&#39;product_63a37b82ebfbc61ae2d03aa4aa75f9b4c8712753.jpg&#39;</span><span class="p">),</span></div><div class='line' id='LC116'><span class="p">(</span><span class="mi">24</span><span class="p">,</span> <span class="mi">1</span><span class="p">,</span> <span class="mi">1</span><span class="p">,</span> <span class="s1">&#39;Piston&#39;</span><span class="p">,</span> <span class="s1">&#39;&lt;p&gt;Features:&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Mens lace-up shoe&lt;/li&gt;\r\n&lt;li&gt;Action nubuck / Synthetic nubuck upper&lt;/li&gt;\r\n&lt;li&gt;New 300 NBS double cup rubber outsole with exposed EVA midsole&lt;/li&gt;\r\n&lt;li&gt;STI Foam Lite level 1 footbed&lt;/li&gt;\r\n&lt;li&gt;Padded tongue and collar - Trademark Arrow logo&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;a href=&quot;http://etnies.com/&quot; target=&quot;_blank&quot;&gt;Etnies.com&lt;/a&gt;&lt;/p&gt;&#39;</span><span class="p">,</span> <span class="mi">10290</span><span class="p">,</span> <span class="mi">30</span><span class="p">,</span> <span class="s1">&#39;45 (29cm)&#39;</span><span class="p">,</span> <span class="s1">&#39;product_1067e8e84a2682d392b2c8d6ac5c20644f70dbb0.jpg&#39;</span><span class="p">),</span></div><div class='line' id='LC117'><span class="p">(</span><span class="mi">25</span><span class="p">,</span> <span class="mi">1</span><span class="p">,</span> <span class="mi">2</span><span class="p">,</span> <span class="s1">&#39;Bomber II&#39;</span><span class="p">,</span> <span class="s1">&#39;This page shows how to make different kinds of bulleted lists.\r\n\r\nYou have the following bullet options:\r\ndisc\r\n\r\ncircle\r\n\r\nsquare\r\n\r\nLook at these examples to see the detailed syntax&#39;</span><span class="p">,</span> <span class="mi">9000</span><span class="p">,</span> <span class="mi">35</span><span class="p">,</span> <span class="s1">&#39;44.5 (29cm)&#39;</span><span class="p">,</span> <span class="s1">&#39;product_a63a34f58bdda1e1f4e5f2ea433411e5c59d689c.jpg&#39;</span><span class="p">),</span></div><div class='line' id='LC118'><span class="p">(</span><span class="mi">26</span><span class="p">,</span> <span class="mi">1</span><span class="p">,</span> <span class="mi">3</span><span class="p">,</span> <span class="s1">&#39;La Brea&#39;</span><span class="p">,</span> <span class="s1">&#39;lsdjf:\n- fsdaf\n- lsadjf\n- lskdf\n\nivan fsdkj ksfd kasdjf j sadkfj lsjdf sakdjf js dfk.\n\n1. lsdkfdgj\n2. lskjgk\n3. lskjg&#39;</span><span class="p">,</span> <span class="mi">8000</span><span class="p">,</span> <span class="mi">20</span><span class="p">,</span> <span class="s1">&#39;42&#39;</span><span class="p">,</span> <span class="s1">&#39;product_4403b651625b4480fc680df2ddd1a2969390904d.jpg&#39;</span><span class="p">),</span></div><div class='line' id='LC119'><span class="p">(</span><span class="mi">29</span><span class="p">,</span> <span class="mi">1</span><span class="p">,</span> <span class="mi">2</span><span class="p">,</span> <span class="s1">&#39;La Brea&#39;</span><span class="p">,</span> <span class="s1">&#39;&lt;ul&gt;\r\n&lt;li&gt;slakdjf&lt;/li&gt;\r\n&lt;li&gt;alsddfjk&lt;/li&gt;\r\n&lt;li&gt;sslkfjd&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;sjfdklskdjfjksfd&lt;/p&gt;\r\n&lt;ol&gt;\r\n&lt;li&gt;&lt;span style=&quot;font-size: 11px;&quot;&gt;sladfkjlksjf&lt;/span&gt;&lt;/li&gt;\r\n&lt;li&gt;&lt;span style=&quot;font-size: 11px;&quot;&gt;slkdjf&lt;/span&gt;&lt;/li&gt;\r\n&lt;li&gt;&lt;span style=&quot;font-size: 11px;&quot;&gt;lsdjkf&lt;/span&gt;&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p style=&quot;text-align: right;&quot;&gt;slakdjfslkjfd sdkj fk jsfkl j&lt;/p&gt;&#39;</span><span class="p">,</span> <span class="mi">5555</span><span class="p">,</span> <span class="mi">55</span><span class="p">,</span> <span class="s1">&#39;20l&#39;</span><span class="p">,</span> <span class="s1">&#39;product_ada1db81e23b3f3a66f4441764ce369abe1dd8e7.jpg&#39;</span><span class="p">);</span></div><div class='line' id='LC120'><br/></div><div class='line' id='LC121'><span class="c1">-- --------------------------------------------------------</span></div><div class='line' id='LC122'><br/></div><div class='line' id='LC123'><span class="c1">--</span></div><div class='line' id='LC124'><span class="c1">-- Table structure for table `shop_user`</span></div><div class='line' id='LC125'><span class="c1">--</span></div><div class='line' id='LC126'><br/></div><div class='line' id='LC127'><span class="k">CREATE</span> <span class="k">TABLE</span> <span class="n">IF</span> <span class="k">NOT</span> <span class="k">EXISTS</span> <span class="o">`</span><span class="n">shop_user</span><span class="o">`</span> <span class="p">(</span></div><div class='line' id='LC128'>&nbsp;&nbsp;<span class="o">`</span><span class="n">id</span><span class="o">`</span> <span class="nb">int</span><span class="p">(</span><span class="mi">11</span><span class="p">)</span> <span class="k">NOT</span> <span class="k">NULL</span> <span class="n">AUTO_INCREMENT</span><span class="p">,</span></div><div class='line' id='LC129'>&nbsp;&nbsp;<span class="o">`</span><span class="n">username</span><span class="o">`</span> <span class="nb">varchar</span><span class="p">(</span><span class="mi">255</span><span class="p">)</span> <span class="k">COLLATE</span> <span class="n">utf8_unicode_ci</span> <span class="k">NOT</span> <span class="k">NULL</span><span class="p">,</span></div><div class='line' id='LC130'>&nbsp;&nbsp;<span class="o">`</span><span class="n">username_canonical</span><span class="o">`</span> <span class="nb">varchar</span><span class="p">(</span><span class="mi">255</span><span class="p">)</span> <span class="k">COLLATE</span> <span class="n">utf8_unicode_ci</span> <span class="k">NOT</span> <span class="k">NULL</span><span class="p">,</span></div><div class='line' id='LC131'>&nbsp;&nbsp;<span class="o">`</span><span class="n">email</span><span class="o">`</span> <span class="nb">varchar</span><span class="p">(</span><span class="mi">255</span><span class="p">)</span> <span class="k">COLLATE</span> <span class="n">utf8_unicode_ci</span> <span class="k">NOT</span> <span class="k">NULL</span><span class="p">,</span></div><div class='line' id='LC132'>&nbsp;&nbsp;<span class="o">`</span><span class="n">email_canonical</span><span class="o">`</span> <span class="nb">varchar</span><span class="p">(</span><span class="mi">255</span><span class="p">)</span> <span class="k">COLLATE</span> <span class="n">utf8_unicode_ci</span> <span class="k">NOT</span> <span class="k">NULL</span><span class="p">,</span></div><div class='line' id='LC133'>&nbsp;&nbsp;<span class="o">`</span><span class="n">enabled</span><span class="o">`</span> <span class="n">tinyint</span><span class="p">(</span><span class="mi">1</span><span class="p">)</span> <span class="k">NOT</span> <span class="k">NULL</span><span class="p">,</span></div><div class='line' id='LC134'>&nbsp;&nbsp;<span class="o">`</span><span class="n">salt</span><span class="o">`</span> <span class="nb">varchar</span><span class="p">(</span><span class="mi">255</span><span class="p">)</span> <span class="k">COLLATE</span> <span class="n">utf8_unicode_ci</span> <span class="k">NOT</span> <span class="k">NULL</span><span class="p">,</span></div><div class='line' id='LC135'>&nbsp;&nbsp;<span class="o">`</span><span class="n">password</span><span class="o">`</span> <span class="nb">varchar</span><span class="p">(</span><span class="mi">255</span><span class="p">)</span> <span class="k">COLLATE</span> <span class="n">utf8_unicode_ci</span> <span class="k">NOT</span> <span class="k">NULL</span><span class="p">,</span></div><div class='line' id='LC136'>&nbsp;&nbsp;<span class="o">`</span><span class="n">last_login</span><span class="o">`</span> <span class="n">datetime</span> <span class="k">DEFAULT</span> <span class="k">NULL</span><span class="p">,</span></div><div class='line' id='LC137'>&nbsp;&nbsp;<span class="o">`</span><span class="n">locked</span><span class="o">`</span> <span class="n">tinyint</span><span class="p">(</span><span class="mi">1</span><span class="p">)</span> <span class="k">NOT</span> <span class="k">NULL</span><span class="p">,</span></div><div class='line' id='LC138'>&nbsp;&nbsp;<span class="o">`</span><span class="n">expired</span><span class="o">`</span> <span class="n">tinyint</span><span class="p">(</span><span class="mi">1</span><span class="p">)</span> <span class="k">NOT</span> <span class="k">NULL</span><span class="p">,</span></div><div class='line' id='LC139'>&nbsp;&nbsp;<span class="o">`</span><span class="n">expires_at</span><span class="o">`</span> <span class="n">datetime</span> <span class="k">DEFAULT</span> <span class="k">NULL</span><span class="p">,</span></div><div class='line' id='LC140'>&nbsp;&nbsp;<span class="o">`</span><span class="n">confirmation_token</span><span class="o">`</span> <span class="nb">varchar</span><span class="p">(</span><span class="mi">255</span><span class="p">)</span> <span class="k">COLLATE</span> <span class="n">utf8_unicode_ci</span> <span class="k">DEFAULT</span> <span class="k">NULL</span><span class="p">,</span></div><div class='line' id='LC141'>&nbsp;&nbsp;<span class="o">`</span><span class="n">password_requested_at</span><span class="o">`</span> <span class="n">datetime</span> <span class="k">DEFAULT</span> <span class="k">NULL</span><span class="p">,</span></div><div class='line' id='LC142'>&nbsp;&nbsp;<span class="o">`</span><span class="n">roles</span><span class="o">`</span> <span class="n">longtext</span> <span class="k">COLLATE</span> <span class="n">utf8_unicode_ci</span> <span class="k">NOT</span> <span class="k">NULL</span> <span class="k">COMMENT</span> <span class="s1">&#39;(DC2Type:array)&#39;</span><span class="p">,</span></div><div class='line' id='LC143'>&nbsp;&nbsp;<span class="o">`</span><span class="n">credentials_expired</span><span class="o">`</span> <span class="n">tinyint</span><span class="p">(</span><span class="mi">1</span><span class="p">)</span> <span class="k">NOT</span> <span class="k">NULL</span><span class="p">,</span></div><div class='line' id='LC144'>&nbsp;&nbsp;<span class="o">`</span><span class="n">credentials_expire_at</span><span class="o">`</span> <span class="n">datetime</span> <span class="k">DEFAULT</span> <span class="k">NULL</span><span class="p">,</span></div><div class='line' id='LC145'>&nbsp;&nbsp;<span class="o">`</span><span class="n">ime</span><span class="o">`</span> <span class="nb">varchar</span><span class="p">(</span><span class="mi">255</span><span class="p">)</span> <span class="k">COLLATE</span> <span class="n">utf8_unicode_ci</span> <span class="k">NOT</span> <span class="k">NULL</span><span class="p">,</span></div><div class='line' id='LC146'>&nbsp;&nbsp;<span class="o">`</span><span class="n">prezime</span><span class="o">`</span> <span class="nb">varchar</span><span class="p">(</span><span class="mi">255</span><span class="p">)</span> <span class="k">COLLATE</span> <span class="n">utf8_unicode_ci</span> <span class="k">NOT</span> <span class="k">NULL</span><span class="p">,</span></div><div class='line' id='LC147'>&nbsp;&nbsp;<span class="k">PRIMARY</span> <span class="k">KEY</span> <span class="p">(</span><span class="o">`</span><span class="n">id</span><span class="o">`</span><span class="p">),</span></div><div class='line' id='LC148'>&nbsp;&nbsp;<span class="k">UNIQUE</span> <span class="k">KEY</span> <span class="o">`</span><span class="n">UNIQ_4C61303292FC23A8</span><span class="o">`</span> <span class="p">(</span><span class="o">`</span><span class="n">username_canonical</span><span class="o">`</span><span class="p">),</span></div><div class='line' id='LC149'>&nbsp;&nbsp;<span class="k">UNIQUE</span> <span class="k">KEY</span> <span class="o">`</span><span class="n">UNIQ_4C613032A0D96FBF</span><span class="o">`</span> <span class="p">(</span><span class="o">`</span><span class="n">email_canonical</span><span class="o">`</span><span class="p">)</span></div><div class='line' id='LC150'><span class="p">)</span> <span class="n">ENGINE</span><span class="o">=</span><span class="n">InnoDB</span>  <span class="k">DEFAULT</span> <span class="n">CHARSET</span><span class="o">=</span><span class="n">utf8</span> <span class="k">COLLATE</span><span class="o">=</span><span class="n">utf8_unicode_ci</span> <span class="n">AUTO_INCREMENT</span><span class="o">=</span><span class="mi">3</span> <span class="p">;</span></div><div class='line' id='LC151'><br/></div><div class='line' id='LC152'><span class="c1">--</span></div><div class='line' id='LC153'><span class="c1">-- Dumping data for table `shop_user`</span></div><div class='line' id='LC154'><span class="c1">--</span></div><div class='line' id='LC155'><br/></div><div class='line' id='LC156'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="o">`</span><span class="n">shop_user</span><span class="o">`</span> <span class="p">(</span><span class="o">`</span><span class="n">id</span><span class="o">`</span><span class="p">,</span> <span class="o">`</span><span class="n">username</span><span class="o">`</span><span class="p">,</span> <span class="o">`</span><span class="n">username_canonical</span><span class="o">`</span><span class="p">,</span> <span class="o">`</span><span class="n">email</span><span class="o">`</span><span class="p">,</span> <span class="o">`</span><span class="n">email_canonical</span><span class="o">`</span><span class="p">,</span> <span class="o">`</span><span class="n">enabled</span><span class="o">`</span><span class="p">,</span> <span class="o">`</span><span class="n">salt</span><span class="o">`</span><span class="p">,</span> <span class="o">`</span><span class="n">password</span><span class="o">`</span><span class="p">,</span> <span class="o">`</span><span class="n">last_login</span><span class="o">`</span><span class="p">,</span> <span class="o">`</span><span class="n">locked</span><span class="o">`</span><span class="p">,</span> <span class="o">`</span><span class="n">expired</span><span class="o">`</span><span class="p">,</span> <span class="o">`</span><span class="n">expires_at</span><span class="o">`</span><span class="p">,</span> <span class="o">`</span><span class="n">confirmation_token</span><span class="o">`</span><span class="p">,</span> <span class="o">`</span><span class="n">password_requested_at</span><span class="o">`</span><span class="p">,</span> <span class="o">`</span><span class="n">roles</span><span class="o">`</span><span class="p">,</span> <span class="o">`</span><span class="n">credentials_expired</span><span class="o">`</span><span class="p">,</span> <span class="o">`</span><span class="n">credentials_expire_at</span><span class="o">`</span><span class="p">,</span> <span class="o">`</span><span class="n">ime</span><span class="o">`</span><span class="p">,</span> <span class="o">`</span><span class="n">prezime</span><span class="o">`</span><span class="p">)</span> <span class="k">VALUES</span></div><div class='line' id='LC157'><span class="p">(</span><span class="mi">1</span><span class="p">,</span> <span class="s1">&#39;ivan&#39;</span><span class="p">,</span> <span class="s1">&#39;ivan&#39;</span><span class="p">,</span> <span class="s1">&#39;ivan@ivan.com&#39;</span><span class="p">,</span> <span class="s1">&#39;ivan@ivan.com&#39;</span><span class="p">,</span> <span class="mi">1</span><span class="p">,</span> <span class="s1">&#39;ncfywl36tg08gowgkow4owgkss4go8c&#39;</span><span class="p">,</span> <span class="s1">&#39;/jJbP7xiqMIseZg2umc1eDPs5wk4w6vPL5ThSktI+0rQ71eaePy28aXNGhUFY40I3rwBngLL5+eTKSKCkTdtOQ==&#39;</span><span class="p">,</span> <span class="s1">&#39;2013-09-01 20:53:48&#39;</span><span class="p">,</span> <span class="mi">0</span><span class="p">,</span> <span class="mi">0</span><span class="p">,</span> <span class="k">NULL</span><span class="p">,</span> <span class="k">NULL</span><span class="p">,</span> <span class="k">NULL</span><span class="p">,</span> <span class="s1">&#39;a:1:{i:0;s:10:&quot;ROLE_ADMIN&quot;;}&#39;</span><span class="p">,</span> <span class="mi">0</span><span class="p">,</span> <span class="k">NULL</span><span class="p">,</span> <span class="s1">&#39;ivan&#39;</span><span class="p">,</span> <span class="s1">&#39;maksimovic&#39;</span><span class="p">),</span></div><div class='line' id='LC158'><span class="p">(</span><span class="mi">2</span><span class="p">,</span> <span class="s1">&#39;kupac&#39;</span><span class="p">,</span> <span class="s1">&#39;kupac&#39;</span><span class="p">,</span> <span class="s1">&#39;kupac@kupac.com&#39;</span><span class="p">,</span> <span class="s1">&#39;kupac@kupac.com&#39;</span><span class="p">,</span> <span class="mi">1</span><span class="p">,</span> <span class="s1">&#39;3i7urrrhwgqo48o4gg4gssc4coswwkw&#39;</span><span class="p">,</span> <span class="s1">&#39;79JMWbj+NFnSkPS7btl58LaQpDJK1nDU07W9yPvXjDkkIMBrFG2bJQhYi8IljH40+jJLLMDEwyFNwZA1cfqyXw==&#39;</span><span class="p">,</span> <span class="s1">&#39;2013-08-11 00:22:13&#39;</span><span class="p">,</span> <span class="mi">0</span><span class="p">,</span> <span class="mi">0</span><span class="p">,</span> <span class="k">NULL</span><span class="p">,</span> <span class="k">NULL</span><span class="p">,</span> <span class="k">NULL</span><span class="p">,</span> <span class="s1">&#39;a:0:{}&#39;</span><span class="p">,</span> <span class="mi">0</span><span class="p">,</span> <span class="k">NULL</span><span class="p">,</span> <span class="s1">&#39;Danica&#39;</span><span class="p">,</span> <span class="s1">&#39;Gilic&#39;</span><span class="p">);</span></div><div class='line' id='LC159'><br/></div><div class='line' id='LC160'><span class="c1">--</span></div><div class='line' id='LC161'><span class="c1">-- Constraints for dumped tables</span></div><div class='line' id='LC162'><span class="c1">--</span></div><div class='line' id='LC163'><br/></div><div class='line' id='LC164'><span class="c1">--</span></div><div class='line' id='LC165'><span class="c1">-- Constraints for table `product`</span></div><div class='line' id='LC166'><span class="c1">--</span></div><div class='line' id='LC167'><span class="k">ALTER</span> <span class="k">TABLE</span> <span class="o">`</span><span class="n">product</span><span class="o">`</span></div><div class='line' id='LC168'>&nbsp;&nbsp;<span class="k">ADD</span> <span class="k">CONSTRAINT</span> <span class="o">`</span><span class="n">FK_1CF73D3112469DE2</span><span class="o">`</span> <span class="k">FOREIGN</span> <span class="k">KEY</span> <span class="p">(</span><span class="o">`</span><span class="n">category_id</span><span class="o">`</span><span class="p">)</span> <span class="k">REFERENCES</span> <span class="o">`</span><span class="n">category</span><span class="o">`</span> <span class="p">(</span><span class="o">`</span><span class="n">id</span><span class="o">`</span><span class="p">),</span></div><div class='line' id='LC169'>&nbsp;&nbsp;<span class="k">ADD</span> <span class="k">CONSTRAINT</span> <span class="o">`</span><span class="n">FK_1CF73D3144F5D008</span><span class="o">`</span> <span class="k">FOREIGN</span> <span class="k">KEY</span> <span class="p">(</span><span class="o">`</span><span class="n">brand_id</span><span class="o">`</span><span class="p">)</span> <span class="k">REFERENCES</span> <span class="o">`</span><span class="n">brand</span><span class="o">`</span> <span class="p">(</span><span class="o">`</span><span class="n">id</span><span class="o">`</span><span class="p">);</span></div><div class='line' id='LC170'><br/></div><div class='line' id='LC171'><span class="cm">/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */</span><span class="p">;</span></div><div class='line' id='LC172'><span class="cm">/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */</span><span class="p">;</span></div><div class='line' id='LC173'><span class="cm">/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */</span><span class="p">;</span></div></pre></div>
            </td>
          </tr>
        </table>
  </div>

  </div>
</div>

<a href="#jump-to-line" rel="facebox[.linejump]" data-hotkey="l" class="js-jump-to-line" style="display:none">Jump to Line</a>
<div id="jump-to-line" style="display:none">
  <form accept-charset="UTF-8" class="js-jump-to-line-form">
    <input class="linejump-input js-jump-to-line-field" type="text" placeholder="Jump to line&hellip;" autofocus>
    <button type="submit" class="button">Go</button>
  </form>
</div>

        </div>

      </div><!-- /.repo-container -->
      <div class="modal-backdrop"></div>
    </div><!-- /.container -->
  </div><!-- /.site -->


    </div><!-- /.wrapper -->

      <div class="container">
  <div class="site-footer">
    <ul class="site-footer-links right">
      <li><a href="https://status.github.com/">Status</a></li>
      <li><a href="http://developer.github.com">API</a></li>
      <li><a href="http://training.github.com">Training</a></li>
      <li><a href="http://shop.github.com">Shop</a></li>
      <li><a href="/blog">Blog</a></li>
      <li><a href="/about">About</a></li>

    </ul>

    <a href="/">
      <span class="mega-octicon octicon-mark-github"></span>
    </a>

    <ul class="site-footer-links">
      <li>&copy; 2013 <span title="0.10080s from github-fe128-cp1-prd.iad.github.net">GitHub</span>, Inc.</li>
        <li><a href="/site/terms">Terms</a></li>
        <li><a href="/site/privacy">Privacy</a></li>
        <li><a href="/security">Security</a></li>
        <li><a href="/contact">Contact</a></li>
    </ul>
  </div><!-- /.site-footer -->
</div><!-- /.container -->


    <div class="fullscreen-overlay js-fullscreen-overlay" id="fullscreen_overlay">
  <div class="fullscreen-container js-fullscreen-container">
    <div class="textarea-wrap">
      <textarea name="fullscreen-contents" id="fullscreen-contents" class="js-fullscreen-contents" placeholder="" data-suggester="fullscreen_suggester"></textarea>
          <div class="suggester-container">
              <div class="suggester fullscreen-suggester js-navigation-container" id="fullscreen_suggester"
                 data-url="/Ivnmaksimovic/minishop/suggestions/commit">
              </div>
          </div>
    </div>
  </div>
  <div class="fullscreen-sidebar">
    <a href="#" class="exit-fullscreen js-exit-fullscreen tooltipped leftwards" title="Exit Zen Mode">
      <span class="mega-octicon octicon-screen-normal"></span>
    </a>
    <a href="#" class="theme-switcher js-theme-switcher tooltipped leftwards"
      title="Switch themes">
      <span class="octicon octicon-color-mode"></span>
    </a>
  </div>
</div>



    <div id="ajax-error-message" class="flash flash-error">
      <span class="octicon octicon-alert"></span>
      <a href="#" class="octicon octicon-remove-close close ajax-error-dismiss"></a>
      Something went wrong with that request. Please try again.
    </div>

    
  </body>
</html>

