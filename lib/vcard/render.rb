Mime::Type.register 'text/x-vcard', :vcf

ActionController::Renderers.add :vcf do |object, options|
  self.content_type ||= 'text/x-vcard'
  self.response_body  = object.respond_to?(:to_vcf) ? object.to_vcf : object
end
