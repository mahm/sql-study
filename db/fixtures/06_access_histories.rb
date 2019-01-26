require 'csv'

file_path = Rails.root.join('db', 'fixtures', 'access_histories.csv')

CSV.open(file_path, headers: true).each do |row|
  AccessHistory.seed do |s|
    s.id                 = row[0]
    s.service_user_id    = row[1]
    s.book_id            = row[2]
    s.service_channel_id = row[3]
    s.accessed_at        = row[4]
  end
end
