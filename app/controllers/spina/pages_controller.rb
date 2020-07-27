module Spina
  class PagesController < Spina::ApplicationController
    include Spina::Frontend
    helper_method :page

    def homepage
      render_with_template(page)
    end
  end
end
