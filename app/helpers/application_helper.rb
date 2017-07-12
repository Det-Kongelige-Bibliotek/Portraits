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

end
