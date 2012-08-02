module Jekyll
  class Youtube < Liquid::Tag
    def initialize(name, id, tokens)
      super
      @id = id

      @width  = 640
      @height = 390
    end

    def render(context)
      %(<iframe width="#{@width}" height="#{@height}" src="http://www.youtube.com/embed/#{@id}"></iframe>)
    end
  end
end

Liquid::Template.register_tag('youtube', Jekyll::Youtube)
