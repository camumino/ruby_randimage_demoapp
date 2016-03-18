class DemoController < ApplicationController
  
  def index
    @image = RubyRandimage.create(:title => "Awesome image", :colors => ["#aaaaaa", "#990000"], :symmetry_axes=> [true, true], :num_cells => 10)
  end

  def generate
    title = params[:title].blank? ? "Awesome image" : params[:title]
    colors = params[:colors].blank? ? ["#aaaaaa", "#990000"] : params[:colors]
    axe_x = params[:axe_x].blank? ? false : true
    axe_y = params[:axe_y].blank? ? false : true
    cells = params[:cells].blank? ? 8 : params[:cells].to_i

    @image = RubyRandimage.create(:title => title, :colors => colors, :symmetry_axes=> [axe_x, axe_y], :num_cells => cells)
  end


  def example
    @example = params[:example].to_i
    options = EXAMPLES[@example]

    @image = RubyRandimage.create(options)
  end


end
