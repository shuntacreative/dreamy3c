class HomeController < ApplicationContoroller

  def trash_em
    @trash_em = List.where(:completed => true).destroy_all
    redirect_to lists_path, notice: 'All Marked Item Were Successfully Deleted.'
  end
  def trash_em_all
    @trash_em_all = List.all.destroy_all
    redirect_to lists_path, notice: 'All Item Were Successfuly Deleted.'
  end

end