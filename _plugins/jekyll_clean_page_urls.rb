module Jekyll
  module Commands
    class Serve

      class << self
        alias :_original_webrick_options :webrick_options
      end

      def self.webrick_options(config)
        options = _original_webrick_options(config)
        options[:MimeTypes].merge!({nil => "text/html"})
        options[:DirectoryIndex] = ["index", "index.html", "index.htm"]
        options
      end

    end
  end
end