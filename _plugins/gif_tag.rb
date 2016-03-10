# Title: Gif tags for Jekyll
# Author: Ross Beale
# Description: easy way to set up a gif for display
#
# updated 02/02/2016
#
# Syntax {% gif gif_image_name %}
#
# Example:
# {% gif LateLikelyDassierat %}
#
# Output:
# <img src="/public/images/LateLikelyDassierat.gif">
#

module Jekyll

  class GifTag < Liquid::Tag
    @gif = ''

    def initialize(tag_name, markup, tokens)
      @gif = markup.strip
      super
    end

    def render(context)
      output = super
      video = "<img src=\"/public/images/#{@gif}.gif\">"
    end

  end

end

Liquid::Template.register_tag('gif', Jekyll::GifTag)