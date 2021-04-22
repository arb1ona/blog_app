STYLING - Build ArticlesPage

- Cards
- Rails Magic
  - Display short description
    <p class="card-text"><%= truncate(article.description, length: 100) %></p>
  - Display time of create/update
    <p>Created <%= time_ago_in_words(article.created_at) %> ago, 
       edited <%= time_ago_in_words(article.updated_at) %> ago
