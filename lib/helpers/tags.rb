module TagsHelper
  def prettify_tag(tag)
    tag.split(/-|_/).map(&:downcase).join(' ')
  end

  def tags_for(article)
    article.tags.map { |e| link_to prettify_tag(e), tag_url(e) }.fancy_join
  end

  def tag_url(tag)
    "/tags/#{tag}.html" # todo: implement
  end
end
