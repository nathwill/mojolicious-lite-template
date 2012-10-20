use Mojolicious::Lite;

get '/' => {text => 'Hello World!'};

app->start;

__DATA__

@@ index.html.ep
% layout 'default';
% title 'Hello World';
<h1>Hello World</h1>

@@ layouts/default.html.ep
<!DOCTYPE html>
<html>
  <head>
    <title><%= title %></title>
    <link href="/css/bootstrap-combined.min.css" rel="stylesheet">
    <script src="/js/jquery.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
  </head>
  <body>
    <div class="container">
      <div class="row">
        <%= content %>
      </div>
    </div>
  </body>
</html>
