require 'ruport'

table = Ruport::Data::Table.new :column_names => ["country", "wine"],
  data: [["France", "Bordeaux"], ["Italy", "Chianti"], ["France", "Chablis"], ["Chile", "Carmenere"]]
table.to_text
