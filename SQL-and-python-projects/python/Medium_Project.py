# library_management.py

# Simple Library Management System

library = {
    "Python101": "Available",
    "SQLBasics": "Available",
    "DataScience": "Issued"
}

def display_books():
    print("\nLibrary Books:")
    for book, status in library.items():
        print(f"{book} - {status}")

def issue_book(book):
    if library.get(book) == "Available":
        library[book] = "Issued"
        print(f"✅ {book} issued successfully!")
    else:
        print(f"❌ {book} is not available.")

def return_book(book):
    if library.get(book) == "Issued":
        library[book] = "Available"
        print(f"✅ {book} returned successfully!")

# Example usage
display_books()
issue_book("Python101")
display_books()
return_book("Python101")
display_books()
