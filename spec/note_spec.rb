require 'exercise_1'

describe Note do
  it "displays a Note" do
    formatter_double = double :formatter, format: "formatted message"
    note = Note.new("ToDo", "go to the shops",formatter_double)
    expect(note.display).to eq("formatted message")
  end
end
