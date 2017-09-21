# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'

Organism.destroy_all
Gene.destroy_all

# Organism
orgs = open('http://genome.annotation.jp/cyanobase.txt').each_line.first(5)
orgs.each do |org|
  dsn, full_name, tax_id, lineage, release_note =  org.split("\t")
  Organism.create(
    data_source_name: dsn,
    full_name: full_name,
    tax_id: tax_id,
    tax_lineage: lineage,
    release_note: release_note)
end

# Gene
Organism.all.each do |org|
  genes = open("http://genome.annotation.jp/cyanobase/#{org.data_source_name}/genes.txt").each_line.first(100)
  genes.each do |gene|
      dsn, gene_name, chromosome_name, start_pos, end_pos, orientation, definition = gene.chomp.split("\t")
      org.genes.create(
        gene_name: gene_name,
        chromosome_name: chromosome_name,
        start_position: start_pos,
        end_position: end_pos,
        orientation: orientation,
        definition: definition)
  end
end

