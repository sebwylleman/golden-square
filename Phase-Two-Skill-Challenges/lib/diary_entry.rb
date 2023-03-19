class DiaryEntry

  attr_reader :date, :content, :contact

  def initialize(date, content, contact)
    @date = date
    @content = content
    @phone_num = phone_num
  end 