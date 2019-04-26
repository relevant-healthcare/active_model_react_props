module ActiveModelReactProps
  def props_for(object, **options)
    if object.respond_to?(:map)
      object.map { |obj| props_for(obj, **options) }
    else
      JbuilderTemplate.new(self) do |json|
        json.partial! partial: object, formats: [:json], **options
      end.attributes!
    end
  end

  def errors_for(model)
    model.errors.map do |attribute, message|
      { attribute: attribute, message: message }
    end
  end
end
