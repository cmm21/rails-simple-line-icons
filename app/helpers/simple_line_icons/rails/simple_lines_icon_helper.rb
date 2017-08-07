module SimpleLineIcons
  module Rails
    module SimpleLinesIconHelper
      # Creates an icon tag given an icon name and possible icon
      # modifiers.
      #
      # Examples
      #
      #   <%= sl_icon "home" %>
      #   # => <i class="icon-home">
      #   <%= sl_icon "social-google" %>
      #   # => <i class="icon-social-google" 
      #
      #   <%= sl_icon "home", text: "Welcome home" %>
      #   <i class="icon-home"> Welcome home
      #
      #   <%= sl_icon "home", data: { id: 777 } %>
      #   # => <i class="icon-home"data-id="777">
      #   
      #   <%= sl_icon "home", class: "large" %>
      #   # => <i class="icon-home large"></i>
      #
      #   <%= sl_icon "home lg", data: {id: 77}, class: "large" %>
      #   # => <i data-id="77" class="icon-home icon-lg pull-left"></i>

      def sl_icon(names = "flag", original_options = {})
        options = original_options.deep_dup
        classes = Private.icon_names(names)
        classes.concat Array(options.delete(:class))
        text = options.delete(:text)
        right_icon = options.delete(:right)
        icon = content_tag(:i, nil, options.merge(:class => classes))
        Private.icon_join(icon, text, right_icon)
      end

      module Private
        extend ActionView::Helpers::OutputSafetyHelper

        def self.icon_join(icon, text, reverse_order = false)
          return icon if text.blank?
          elements = [icon, ERB::Util.html_escape(text)]
          elements.reverse! if reverse_order
          safe_join(elements, " ")
        end

        def self.icon_names(names = [])
          array_value(names).map { |n| "icon-#{n}" }
        end

        def self.array_value(value = [])
          value.is_a?(Array) ? value : value.to_s.split(/\s+/)
        end
      end
    end
  end
end