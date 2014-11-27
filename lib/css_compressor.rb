require "css_compressor/version"

class CssCompressor
  def initialize
  end

  def compress_raw(css_input)
    return _compress(css_input)
  end

  def compress(file_path)
    css_input = File.read file_path
    return _compress(css_input)
  end

private

  def _compress(css_input)
    css_input.gsub!(/\/\*.*?\*\//m, "") # Remove comments
    css_input.gsub!(/\n/, "")           # Remove line breaks
    css_input.gsub!(/\s+{/, "{")        # Remove spaces before opening brackets
    css_input.gsub!(/{\s+/, "{")        # Remove spaces after opening brackets
    css_input.gsub!(/\s+}/, "}")        # Remove spaces before closing brackets
    css_input.gsub!(/}\s+/, "}")        # Remove spaces after closing brackets
    css_input.gsub!(/;\s+/, ";")        # Remove trailing spaces after ; (different properties)
    css_input.gsub!(/:\s+/, ":")        # Remove spaces between property name and value

    css_input.strip!

    return css_input
  end
end
