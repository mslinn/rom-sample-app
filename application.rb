require_relative 'boot'

configuration = ROM::Configuration.new(:sql, 'sqlite::memory')
configuration.register_relation(Companies, Posts)
configuration.register_command(CreateCompany, DeleteCompany)
configuration.register_command(CreatePost, UpdatePost, DeletePost)

MAIN_CONTAINER = ROM.container(configuration)

# What does this do?
# MAIN_CONTAINER.gateways[:default].connection.schema(:companies)

p "Here we are"
