require_relative 'test_helper'

class ItemTest < MiniTest::Test

  def test_it_exists
    item = Item.new

    assert_instance_of Item, item
  end

  def test_it_can_access_attributes
    item = Item.new({:id => 1, :name => "Turing School",
      :description => "teach me to code", :unit_price => 100,
      :unit_price_to_dollars => 20000, :created_at => 18,
      :updated_at => 19, :merchant_id => 999})

    assert_equal 1, item.id
    assert_equal "Turing School", item.name
    assert_equal "teach me to code", item.description
    assert_equal 100, item.unit_price
    assert_equal 20000, item.unit_price_to_dollars
    assert_equal 18, item.created_at
    assert_equal 19, item.updated_at
    assert_equal 999, item.merchant_id
  end

end
