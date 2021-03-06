module JsonRenders
  extend ActiveSupport::Concern

  included do
  end

  private

  def render_errors(errors)
    render :json => {:success => false, :error => errors}, status: :unprocessable_entity
  end

  def render_unauthorized
    render :json=> {:success => false,  :error => "unauthorized"}, :status=>:unauthorized
  end

  def render_not_found
    render :json => {:success => false}, status: :not_found
  end

end
