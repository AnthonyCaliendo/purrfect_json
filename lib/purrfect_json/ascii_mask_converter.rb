module PurrfectJson::AsciiMaskConverter

  def converts(source_type, target_type, &mask_proc)
    define_method "to_#{target_type}" do |*args|
      input_chars = send("to_#{source_type}", *args).to_s.gsub(/\s/, '').chars.to_a
      mask_stream = AsciiMaskStream.new(mask_proc)

      String.new.tap do |output|
        until input_chars.empty?
          next_char = mask_stream.next
          output << ((next_char =~ /\s/).nil? ? input_chars.shift : next_char)
        end
      end
    end
  end

  private
  class AsciiMaskStream
    attr_reader :mask_proc, :mask

    def initialize(mask_proc)
      reset! mask_proc
    end

    def next
      reset! if mask.empty?
      mask.shift
    end

    private
    def reset!(proc = @mask_proc)
      @mask_proc = proc
      @mask      = mask_proc.call.chars.to_a
    end

  end

end