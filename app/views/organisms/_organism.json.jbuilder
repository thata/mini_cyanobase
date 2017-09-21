json.extract! organism, :id, :data_source_name, :full_name, :tax_id, :tax_lineage, :release_note, :created_at, :updated_at
json.url organism_url(organism, format: :json)
