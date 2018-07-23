## Create a class for a Library that has an array of books. Each book should be a hash with a title, which is a string, and rental details, which is another hash with a student name and due date.

## Create a getter for the books

## Create a method that takes in a book title and returns all of the information about that book.

## Create a method that takes in a book title and returns only the rental details for that book.

## Create a method that takes in a book title and adds it to our book list (add a new hash for the book with the student name and date being left as empty strings)

# Create a method that changes the rental details of a book by taking in the title of the book, the student renting it and the date it's due to be returned.



class Library
  def initialize()
  @books = []
  end

def get_books()
  return @books
end

def add_book(new_book)
  @books << new_book
end
def get_book_by_name(book_name)
  for book in @books
    if book[:title] == book_name
      return book
    end
  end
end

def check_rental_detail_by_book_name(book_name)
  for book in @books
    if book[:title] == book_name
      return book[:rental_details]
    end
  end
end

def add_book_by_title(title)
  book = {
  title: title,
  rental_details: {
   student_name: "",
   date: "" }
  }
  @books << book
end

def update_rental_detail_by_book_name(book_name, new_student_name, new_date)
  for book in @books
    if book[:title] == book_name
       book[:rental_details][:student_name] = new_student_name
       book[:rental_details][:date] = new_date
    end
  end
end

end
