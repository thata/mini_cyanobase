require 'test_helper'

class OrganismsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @organism = organisms(:one)
  end

  test "should get index" do
    get organisms_url
    assert_response :success
  end

  test "should get new" do
    get new_organism_url
    assert_response :success
  end

  test "should create organism" do
    assert_difference('Organism.count') do
      post organisms_url, params: { organism: { data_source_name: @organism.data_source_name, full_name: @organism.full_name, release_note: @organism.release_note, tax_id: @organism.tax_id, tax_lineage: @organism.tax_lineage } }
    end

    assert_redirected_to organism_url(Organism.last)
  end

  test "should show organism" do
    get organism_url(@organism)
    assert_response :success
  end

  test "should get edit" do
    get edit_organism_url(@organism)
    assert_response :success
  end

  test "should update organism" do
    patch organism_url(@organism), params: { organism: { data_source_name: @organism.data_source_name, full_name: @organism.full_name, release_note: @organism.release_note, tax_id: @organism.tax_id, tax_lineage: @organism.tax_lineage } }
    assert_redirected_to organism_url(@organism)
  end

  test "should destroy organism" do
    assert_difference('Organism.count', -1) do
      delete organism_url(@organism)
    end

    assert_redirected_to organisms_url
  end
end
