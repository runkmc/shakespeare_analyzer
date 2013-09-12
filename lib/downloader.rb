require 'open-uri'

class Downloader

  def initialize options = {}
    @file_to_download = options[:file]
  end

  def download_file
    complete_file = ""
    open(@file_to_download) do |f|
      f.each_line { |line| complete_file << line.rstrip }
    end
    complete_file
  end

end
