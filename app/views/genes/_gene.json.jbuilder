json.extract! gene, :id, :organism_id, :gene_name, :chromosome_name, :start_position, :end_position, :orientation, :definition, :created_at, :updated_at
json.url gene_url(gene, format: :json)
