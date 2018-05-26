module ArticlesHelper
  def article_paramas
     params.require(:article).permit(:title,:body)
  end
end
