module ApplicationHelper

  def get_tags doc
    tags = []
    doc[:document]['_childDocuments_'].each do |child|
      if child['label_ssi']
        tags << child['label_ssi']
      end
      if child['entity_ssi']
        tags << child['entity_ssi']
      end
    end
    return tags.to_sentence
  end

  def get_tags_dk doc
    tags_dk = []
    doc[:document]['_childDocuments_'].each do |child|
      if child['label_ssi']
        tags_dk << child['label_dk_ssi']
      end
      if child['entity_ssi']
        tags_dk << child['entity_dk_ssi']
      end
    end
    return tags_dk.to_sentence
  end

  def show_array doc
    return doc[:document]['partial_matching_images_ssim'].to_sentence
  end
    def show_scaled_image(doc, opts)
      uri = "http://udvikling-03.kb.dk/images/"+doc['file_name_ssi']
      return img_tag = image_tag(URI(uri))


    end
end
