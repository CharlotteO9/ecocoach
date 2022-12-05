module IconsHelper
  def find_icon(category)
    case category
    when 'Food'
      'fa-utensils'
    when 'Energy'
      'fa-battery-three-quarters'
    when 'Transport'
      'fa-bicycle'
    when 'Waste'
      'fa-recycle'
    when 'Purchase'
      'fa-cart-shopping'
    end
  end

  def seniority_icons(name)
    case name
    when 'little-seed'
      'fa-seedling'
    when 'beautiful-flower'
      'fa-fan'
    when 'giant-sequoia'
      'fa-tree'
    end
  end

end
