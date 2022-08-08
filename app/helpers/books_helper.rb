module BooksHelper
  def rent_button(book)
    button_to("Rent this book", rents_path(book_id: book), method: :post, class: 'btn btn-primary') if book.rents.last.ended?
  end

  def book_status(book)
    book.rents.last.ongoing? ? "rented" : "available"
  end

end
