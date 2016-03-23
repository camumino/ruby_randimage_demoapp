class DemoController < ApplicationController
  
  def index
    options0 = EXAMPLES[0]
    options1 = EXAMPLES[1]
    options2 = EXAMPLES[2]
    options3 = EXAMPLES[3]

    @image0 = RubyRandimage.create(options0)
    @image1 = RubyRandimage.create(options1)
    @image2 = RubyRandimage.create(options2)
    @image3 = RubyRandimage.create(options3)
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
