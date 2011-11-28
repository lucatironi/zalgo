require 'htmlentities'

module Zalgo
  module ViewHelpers
    ZALGO_MID = [
      '&#789;', '&#795;', '&#832;', '&#833;',
      '&#856;', '&#801;', '&#802;', '&#807;',
      '&#808;', '&#820;', '&#821;', '&#822;',
      '&#847;', '&#860;', '&#861;', '&#862;',
      '&#863;', '&#864;', '&#866;', '&#824;',
      '&#823;', '&#865;', '&#1161;'
    ]

    def rand_zalgo(array)
      ind = (rand * array.length).floor
      return array[ind]
    end

    def to_zalgo(text)
      newtext = ""
      text.each_char do |char|
        unless ZALGO_MID.include?(char)
          newtext << char
          num_mid = rand(2)
          num_mid.times { newtext << rand_zalgo(ZALGO_MID) }
        end
      end
      HTMLEntities.new.decode newtext
    end
  end
end
