module Jekyll
  module BrymckFilter
    def cleanup(content)
      content.gsub /align/, "class"
    end

    def remove_pubdate(time)
      time.gsub /pubdate\s?/, ""
    end
  end
end

Liquid::Template.register_filter Jekyll::BrymckFilter
