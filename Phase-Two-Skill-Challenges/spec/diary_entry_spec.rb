require diary_entry

RSpec.describe "DiaryEntry class" do

  let(:entry1) {double(:entry1, date: "12/12/12", content: "First holiday abroad with Ben", contact: "Ben: 07777777199")}
  let(:entry2) {double(:entry2, date: "17/17/17", content: "First driving lesson with Charlie", contact: "Charlie: 07799777199")}