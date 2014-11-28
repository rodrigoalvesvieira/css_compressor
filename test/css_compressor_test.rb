require "test_helper"

class CssCompressorTest < MiniTest::Test
  def setup
    @@compressor = CssCompressor.new
  end

  def test_object_initialization
    assert_equal @@compressor.class, CssCompressor
  end

  def test_compress_raw
    content = "
    background-color: #fff;
    border: 1px solid #ddd;
    border-bottom-left-radius: 3px;
    border-bottom-right-radius: 3px;
    padding: 30px;
    word-wrap: break-word;"

    compressed = "background-color:#fff;border:1px solid #ddd;border-bottom-left-radius:3px;border-bottom-right-radius:3px;padding:30px;word-wrap:break-word;"

    result = @@compressor.compress_raw(content)
    assert_equal result, compressed
  end

  def test_compress
    css_file = File.dirname(__FILE__) + "/seeds/styles.css"

    compressed_file = ".myElement{background-color:rgba(0,0,0,.2);background-clip:padding-box;border:solid transparent;border-width:1px 1px 1px 6px;min-height:28px;padding:100px 0 0;box-shadow:inset 1px 1px 0 rgba(0,0,0,.1),inset 0 -1px 0 rgba(0,0,0,.07);}.beautifilDiv{box-shadow:0 1px 0 rgba(0,0,0,.05);background-color:#427fed;background-image:-webkit-linear-gradient(top,transparent,transparent);background-image:linear-gradient(top,transparent,transparent);border:1px solid transparent;color:#fff;}"

    result = @@compressor.compress css_file
    assert_equal result, compressed_file
  end
end
