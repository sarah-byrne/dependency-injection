require 'exercise_3'

describe Diary do
  it "stores a new entry" do
#    entry_double = double :entry, title: "first entry"
    entry_class_double = double :entry_class
    allow(entry_class_double).to receive(:new) do |title, body|
      double :entry_double, title: title
    end
    diary = Diary.new(entry_class_double)
    diary.add("first entry","my first secret")
    expect(diary.index).to eq("first entry")
  end
end
