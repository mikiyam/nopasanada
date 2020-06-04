module Jekyll
  module TagsFilter
    def sort_tags_by_name(tags)
      return tags.map { |k,v| 
        [ k, v.size] 
      }
      .sort_by { |x| 
        [ x[0].downcase ] 
      }
    end
  end
end

Liquid::Template.register_filter(Jekyll::TagHelpersFilter)
