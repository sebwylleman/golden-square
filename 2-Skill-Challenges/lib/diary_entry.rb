class DiaryEntry

  attr_reader :date, :content, :contact

  def initialize(date, content, contact)
    @date = date
    @content = content
    @contact = contact
  end 
end