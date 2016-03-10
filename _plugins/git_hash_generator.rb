# Jekyll plugin for generating Git hash
#
# Place this file in the _plugins directory and
# use {{ site.git.hash }} in your Liquid templates
#

module Jekyll
  class GitHashGenerator < Generator
    priority :high
    safe true
    def generate(site)
      hash = %x( git rev-parse --short HEAD ).strip
      site.config['git'] = {}
      site.config['git']['hash'] = hash
    end
  end
end