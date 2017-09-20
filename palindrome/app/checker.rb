class Checker
  def is_palindrome? original_string
    return false if original_string.nil?

    format_original_string(original_string) == format_reverse_string(original_string)
  end

  private
  def format_original_string string
    string.delete(' ')
          .downcase
          .gsub(/[^0-9A-Za-z]/, '')
  end

  def format_reverse_string string
    format_original_string(string).reverse
  end
end
