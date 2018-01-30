# Environment set up

1. Install Ruby.
2. Install [bundler](https://bundler.io/) with `gem install bundler`
3. Run `bundle install` from project root
4. Run `bundle exec rake db:create` to create your sqlite db
5. Start up server with `bundle exec rails s`
6. Access the site at [localhost:3000](http://localhost:3000)

# Problem explanation

You have a collection of products with unique SKU numbers. Products belong in different categories including cell phones and tablets, but should be able to handle additional categories should we decide to add more to our database. Products can also be included in orders. An invoice can be generated from an order.

### Tasks

1. Develop ActiveRecord models for our data.
2. Develop a page that is rendered at /products that shows a table view of your products. Using query parameters, a user should be able to define ordering (by category, SKU or price), or filter by category.
3. Add a display page at /orders/:id that shows an invoice with products in order and total price.

### Some example data

SKUs are restricted to alphanumeric (a-z, 0-9) characters.

#### Products

| Name         | SKU          | Category     | Price |
|--------------|--------------|--------------|-------|
| iPhone X     | bc32h5i6     | cell phones  | $1000 |
| iPad Pro     | hsl1v00p     | tablets      | $800  |
| Google Pixel | gp732qt1     | cell phones  | $700  |

### Goals

- This is meant to be a fairly open exercise. Feel free to be creative with your solution.
- We want to do our best to ensure data accuracy in the models.
- Track progress with commits.
