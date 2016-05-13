module ApplicationHelper

  def formatted_date(date)
    date.strftime('%d %b %Y ,   %l:%M %P')
  end

  def image_tag(source, options={})
        options = options.symbolize_keys

        src = options[:src] = path_to_image(source)

        unless src =~ /^(?:cid|data):/ || src.blank?
          options[:alt] = options.fetch(:alt){ image_alt(src) }
        end

        options[:width], options[:height] = extract_dimensions(options.delete(:size)) if options[:size]
        tag("img", options)
   end

end
