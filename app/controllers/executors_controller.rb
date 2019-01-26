class ExecutorsController < ApplicationController
  def create
    result_json = SqlExecutor.new(params[:body]).execute.to_json
    render json: result_json
  rescue ActiveRecord::StatementInvalid => e
    render json: { error: e.message }, status: :unprocessable_entity
  end
end
