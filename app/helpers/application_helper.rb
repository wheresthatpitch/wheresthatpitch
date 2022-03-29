module ApplicationHelper
  def inline_svg(filename, options = {})
    assets = Rails.application.assets
    asset = assets.find_asset(filename)

    return raw "<!-- SVG #{filename} not found -->" unless asset

    file = asset.source.force_encoding("UTF-8")
    doc = Nokogiri::HTML::DocumentFragment.parse file
    svg = doc.at_css "svg"
    if options[:class].present?
      svg["class"] = options[:class]
    end

    raw doc
  end

  def icon(filename)
    inline_svg(File.join("icons", filename))
  end
end
