# rom-sample-app

Uses Sqlite instead of MySql, and Visual Studio Code instead of `pry`.

Before running `console`, run the database migrations `db/migrate`.
See https://rom-rb.org/4.0/learn/sql/migrations/

```shell
$ bundle exec rake db:migrate
"Boot.rb requiring '/mnt/_/work/ruby/rom-sample-app/lib/commands/create_company.rb'"
"Boot.rb requiring '/mnt/_/work/ruby/rom-sample-app/lib/commands/create_post.rb'"
"Boot.rb requiring '/mnt/_/work/ruby/rom-sample-app/lib/commands/delete_company.rb'"
"Boot.rb requiring '/mnt/_/work/ruby/rom-sample-app/lib/commands/delete_post.rb'"
"Boot.rb requiring '/mnt/_/work/ruby/rom-sample-app/lib/commands/update_post.rb'"
"Boot.rb requiring '/mnt/_/work/ruby/rom-sample-app/lib/relations/companies.rb'"
"Boot.rb requiring '/mnt/_/work/ruby/rom-sample-app/lib/relations/posts.rb'"
<= db:migrate executed
```
