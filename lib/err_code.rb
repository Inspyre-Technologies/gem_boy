module GemBoy
  class GBProc
    module Err
      module Codes

        class IncorrectArgumentError < ArgumentError


          def message
            'Incorrect number of arguments provided'
          end

          def hint
            'Try gem_boy <options> <word1> <word2> <word3> <etc>'
          end

          def code
            '100'
          end

        end
      end
    end
  end
end
