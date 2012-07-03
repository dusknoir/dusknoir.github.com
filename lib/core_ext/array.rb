class Array
  def fancy_join
    case size
      when 1
        first
      when 2
        "#{first} and #{last}"
      else
        last = pop
        "#{first.join(', ')} and #{last}"
    end
  end
end
