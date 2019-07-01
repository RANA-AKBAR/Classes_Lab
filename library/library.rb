class Library
  attr_reader :books

  def initialize(books)
    @books = books
  end

  def find_book(name)
    for book in @books
      if book[:title] == name
        return book
      end
    end
  end

  def find_rental(name)
    for book in @books
      if book[:title] == name
        return book[:rental_details]
      end
    end
  end

  def add_book(title)
    @books.push({
    title: title,
    rental_details: {
     student_name: "" ,
     date: ""
    }
    })
  end

  def update_rental(title, student, return_date)
    book = find_book(title)
    book[:rental_details][:student_name] = student
    book[:rental_details][:date] = return_date
  end

end
