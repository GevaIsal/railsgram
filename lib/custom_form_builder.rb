# frozen_string_literal: true

class CustomFormBuilder < ActionView::Helpers::FormBuilder
  def form_error
    if object.errors.any?
      model_name = object.class.model_name.human
      plural_name = object.class.model_name.plural
      is_new = object.persisted? ? 'edit' : 'new'

      @template.content_tag :div, class: 'alert alert-danger' do
        @template.content_tag :h6, I18n.t("#{plural_name}.#{is_new}.form.error", model: model_name)
      end
    end
  end

  def field_error(attribute)
    if object.errors[attribute].any?
      @template.content_tag :span, object.errors[attribute].first, class: 'badge alert-danger'
    end
  end
end
