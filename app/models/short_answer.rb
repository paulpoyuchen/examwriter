class ShortAnswer < Question
  #validates :answer, inclusion: { in: %w(T F), message: "must be T/F" }

  def self.kind
    "Short Answer"
  end

  def short_answer?
    true
  end
end
