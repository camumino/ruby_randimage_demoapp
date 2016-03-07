class DemoController < ApplicationController
  def index
  end

  def generate
    debugger
    puts "hola"
    imagen = RubyRandimage.create_and_save_file "temp_image_#{i}.svg" , { :title=>"image_#{i}", :colors=> ["#aaaaaa", "#990000"], :symmetry_axes=> [true, true], :num_cells=> 5}
  end

end
