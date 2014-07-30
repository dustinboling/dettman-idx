class RetsImportsController < ApplicationController
  before_action :set_rets_import, only: [:show, :edit, :update, :destroy]

  def index
    @rets_imports = RetsImport.all
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rets_import
      @rets_import = RetsImport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rets_import_params
      params.require(:rets_import).permit(:error_message,:property_count,:query,:successful_import)
    end

end
