class Note
  def initialize(title, body, formatter = NoteFormatter.new)
    @title = title
    @body = body
    @formatter = formatter
  end

  def display
    @formatter.format(self)
  end

  attr_reader :title, :body
end

class NoteFormatter
  def format(note)
    "Title: #{note.title}\n#{note.body}"
  end
end

note = Note.new("ToDo", "go to the shops")
puts " note.display using NoteFormatter gives: #{note.display}"
formatter_double = double :formatter, format: "note to display"
note2 = Note.new("ToDo", "go to the shops", formatter_double)
puts " note.display using formatter double gives: #{note.display}"
