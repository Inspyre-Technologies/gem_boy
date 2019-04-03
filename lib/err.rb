require_relative 'err_code'
module GemBoy
  class GBProc
    module Err

      

      def execute(code)
        LOG.warn('Caught error, seeing if I can handle it')
        info = determine_err(code)
        if info
          entry = info[code.to_s]
          desc = entry[:s_desc]
          hint = entry[:s_hint]
          type = entry[:type]
        else
          return "Error Code: #{code} (#{type}) |-| Description: #{desc} |-| How to Proceed: #{hint}"
        end
      end
    end
  end
end
