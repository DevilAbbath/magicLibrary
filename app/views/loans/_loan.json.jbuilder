json.extract! loan, :id, :user_id, :book_id, :loanDate, :returnDate, :created_at, :updated_at
json.url loan_url(loan, format: :json)
