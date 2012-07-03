class Fixnum
  def ordinalize
    case self % 10
      when 1
        "#{self}st"
      when 2
        "#{self}nd"
      when 3
        "#{self}rd"
      else
        "#{self}th"
    end
  end
end
