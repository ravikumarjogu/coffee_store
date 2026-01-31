# Coffee Store

A simple web application to manage a list of coffee products. Users can add, edit, remove, and export information about different coffees including their name, flavor, and price.

## Features

- Add new coffee entries with name, flavor, and price.
- Edit or delete existing coffees.
- View all coffees in a Bootstrap-styled table.
- Export all coffee data as a CSV file.

## Technologies

- Ruby on Rails
- Bootstrap 4 (via CDN)
- SQLite (default development database)

## Setup Instructions

1. **Clone the repository**
    ```bash
    git clone https://github.com/YOUR_GITHUB_USERNAME/coffee_store.git
    cd coffee_store
    ```

2. **Install dependencies**
    ```bash
    bundle install
    ```

3. **Set up the database**
    ```bash
    rails db:migrate
    ```

4. **Start the server**
    ```bash
    rails server
    ```

5. **Visit the app**
    Open [http://localhost:3000](http://localhost:3000) in your web browser.

## Exporting Coffees

- Click the **Export Coffees** button on the homepage to download all coffee entries in CSV format.

## Notes

- Do **not** commit sensitive files like `config/master.key` or production credentials.
- For collaborative development, consider branch-based workflows and code reviews.

## License

[Specify your license here, if applicable]

## Contributing

Pull requests are welcome. For significant changes, please open an issue first to discuss what you would like to change.

---

For questions or support, please contact [Your Name or Contact Info].
