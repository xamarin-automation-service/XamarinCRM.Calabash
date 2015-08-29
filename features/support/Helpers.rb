module Helpers

  def scroll_to(direction, visible_block, scrolling_view = "*", tries = 3)
    i = 0
    until view_exists?(visible_block) || i < tries do
      scroll(scrolling_view, direction)
      i += 1
    end
  end

end