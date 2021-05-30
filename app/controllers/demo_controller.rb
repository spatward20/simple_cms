class DemoController < ApplicationController

  layout false

  def index

    # render('hello')
  end

  def hello
    # instance variables are used to pass data to the view
    @array = [1, 2, 3, 4, 5, 6]

    @id = params[:id]
    @page = params[:page]

    # redirect_to(:controller => 'demo', :action => 'index')
    # render('demo/index')
  end

  def about
    render('demo/about_us')
  end

  def contact
    case params[:country]
    when 'us' || 'ca'
      @phone = "(800) 555 6789"
    when 'uk'
      @phone = "(202) 7946 1234"
    else
      @phone = "+1 987 829 - 8939"
    end
    render('demo/contact_us')
  end
end
