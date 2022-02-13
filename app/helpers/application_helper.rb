module ApplicationHelper

  #page generators
  def page_title_with_button(title, button)
    
    html = ['<div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">', 
            title, '</h1>']

    html << '<a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                                class="fas fa-download fa-sm text-white-50"></i> Generate Report</a>' if button
    html << '</div>'
    html.join()
  end

  def generate_value_card(title, icon_style, value, link, color_style)
    html = ['<div class="col-xl-3 col-md-6 mb-4"><div class="card border-left-',
      color_style, 
      ' shadow h-100 py-2"><div class="card-body"><div class="row no-gutters align-items-center">',
      '<div class="col mr-2"><div class="text-xs font-weight-bold text-',
      color_style,
      ' text-uppercase mb-1">',
      title,
      '</div><div class="h5 mb-0 font-weight-bold text-gray-800">',
      value,
      '</div></div><div class="col-auto"><i class="',
      icon_style,
      ' text-gray-300"></i></div></div></div></div></div>']
    html.join()
  end

  def generate_bar_card(title, icon_style, value, link, color_style)
    puts ['<div class="progress-bar bg-', color_style, '" role="progressbar" style="width: ', value, '%" aria-valuenow="', value, '" aria-valuemin="0" aria-valuemax="100"></div>'].join()
    html = ['<div class="col-xl-3 col-md-6 mb-4">',
      '<div class="card border-left-', color_style, ' shadow h-100 py-2">',
      '<div class="card-body">',
      '<div class="row no-gutters align-items-center">',
      '<div class="col mr-2">',
      '<div class="text-xs font-weight-bold text-', color_style, ' text-uppercase mb-1">', title, '</div>',
      '<div class="row no-gutters align-items-center">',
      '<div class="col-auto">',
      '<div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">', value,'%</div>',
      '</div>',
      '<div class="col">',
      '<div class="progress progress-sm mr-2">',
      '<div class="progress-bar bg-', color_style, '" role="progressbar" style="width: ', value, '%" aria-valuenow="', value, '" aria-valuemin="0" aria-valuemax="100"></div>',
      '</div></div></div></div>',
      '<div class="col-auto">',
      '<i class="', icon_style,' text-gray-300"></i>',
      '</div></div></div></div></div>']
    html.join()
  end
end
