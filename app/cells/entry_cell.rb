class EntryCell < Cell::Rails
  def show(args)
    @entry = args[:entry]
    @name = @entry[:user]
    @rank = @entry[:rank]
    @score = @entry[:score]
    render
  end

  def delete_form(args)
    @entry = args[:entry]
    render
  end
end
