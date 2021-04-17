The front-end: Creating articles

- Route ~ :new, :create
- Controller#action ~ new create
  Strong parameters - whitelisting of data (values associated with attributes) that are received through the params hash. During this process for articles you had to 'whitelist' the data coming through for the title and description fields.
- View ~ Form to create article
