class User < ActiveRecord::Base
  has_many :checkouts
  has_many :books, through: :checkouts

  def check_out_book(book, due_date: due_date)
    Checkout.create(book_id: book.id, user_id: self.id, due_date: due_date)
  end

  def return_book(book)
    temp = Checkout.where(user_id: self.id, book_id: book.id, returned: 0)[0]
    temp.returned = true
    temp.save
  end
end
