
// devuelve el comando ruby_randimage correspondiente a los parametros de entrada 
function get_command( title, num_cells, colors, symmetry_axes ,seed)
{  

  res = "RubyRandimage.create( title: \""+ title +"\", num_cells: "+ num_cells
      + ", colors: "+ get_string_colors(colors)
      + ", symmetry_axes: " + get_string_symmetry_axes(symmetry_axes);
  
  if (seed != "")
    res += ", seed: "+seed
  res += " )";
  return res;
}

// array de colores a String
function get_string_colors(colors)
{
  s_colors = "[ ";
  $.each(colors, function( index, value ) {
    s_colors += "\""+value+"\"";
    if (index < colors.length -1)
      s_colors += ", ";
  });
  s_colors += "]";
  return s_colors;
}

// Array de booleanos a string
function get_string_symmetry_axes(symmetry_axes)
{
  return "[ "+symmetry_axes[0] + ", " + symmetry_axes[1] + "]";
}