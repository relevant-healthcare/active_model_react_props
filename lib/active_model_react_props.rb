module ActiveModelReactProps
  def props_for(object, **options)
    JbuilderTemplate.new(self) do |json|
      json.partial! partial: object, formats: [:json], **options
    end.attributes!
  end

  def props_for_collection(objects, **options)
    objects.map { |obj| props_for(obj, **options) }
  end

  def errors_for(model)
    model.errors.map do |attribute, message|
      { attribute: attribute, message: message }
    end
  end
end
