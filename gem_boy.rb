#!/usr/bin/ruby

require 'logger'
require_relative 'lib/err'
module GemBoy
  class GBProc
    include Err

    LOG = Logger.new(STDOUT)

    LOG.level = Logger::DEBUG
    LOG.info('# Logger started')

    args = ARGV






    case lev

    when 'v', 'verbose'

      verbose

    when 'silent'

      silent
    when 'debug'

      LOG.info('Caught debug signal')
      debug

    when 'quiet', 'q'
      LOG.debug 'Found no verbosity option or was passed quiet option'
    end
      p 'Method entered'
    end
    # Insert code here
    def log_verbosity(verbosity='q')
    end

    def start(level)
      case level

      when 'v', 'verbose'

        verbose

      when 'silent'

        silent

      when 'debug'

        LOG.info('Caught debug signal')
        debug

      when 'quiet', 'q'
        LOG.debug 'Found no verbosity option or was passed quiet option'

      end
    end

    # LOG.debug('Setting up error codes')

    NoArgumentError = Codes::IncorrectArgumentError

    def self.switch_board(arg)
      if arg.is_a?(Array)
        opts = arg
        opts.each do |opt|
          # LOG.debug "Dealing with #{opt}, stripping and downcasing..."
          f_opt = opt
          puts f_opt.delete('-')
          # LOG.debug "Result: #{f_opt}")

          # LOG.debug "Checking #{f_opt} to see if it matches any of my keywords"
          # LOG.debug "Establishing case and...investigating..teehee"
          case f_opt

          when 'v', 'verbose', 'silent', 'debug', 'quiet', 'q'
            # LOG.debug "Found verbosity switch for # LOGging. Setting # LOGger..."
            log = Log.new
            log = log.begin_logger(f_opt)
            log
          end
        end
      end
    end

    def self.check_arg(args)
      LOG.debug('Checking to see if enough parameters were provided.')
      if args.count < 2
        # LOG.warn('Less than two arguments provided.')
        raise NoArgumentError
      elsif args.is_a?(Array)
        args.each do |arg|
          next unless arg.start_with?('-')

          case arg

          when '-v', '--verbose', '-q', '--quiet', '--debug', '-s', '--silent'

            # LOG.info('Caught # LOG verbosity switch! Starting # LOG handler...')
            # LOG_MAN.begin_# LOGger(arg)
          end
        end
        # LOG.debug('Found enough arguments provdided. Checking for other options...')
        switch_board(args)
      end
    rescue NoArgumentError => e
      # LOG.fatal(e.code)
      # LOG.fatal(e.message)
      # LOG.info(e.hint)
    end

    check_arg(args)

    words = []
    opts = []


    args.each do |arg|
      if arg.include?('-')
        opts << [arg]
        switch_board(arg)
      else
        words << [arg]
      end
    end

    def compare(word, wordlist)
      wordlist.each do |wl|
        i = wl.chars
        j = word.chars
        i.each do |letter|
          j.each do |w_letter|
            if w_letter == letter
              p w_letter
              p letter
            end
          end
        end
      end
    end
  end
end
