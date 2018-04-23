class MatchingQuestion < Question
  #validates  inclusion: { in: %w(A B C D), message: "must be one of A/B/C/D" }

  #validates_presence_of :answer_a, :answer_b, :answer_c, :answer_d,

  def self.kind
    "Matching Question"
  end

  def matching_question?
    true
  end
end
