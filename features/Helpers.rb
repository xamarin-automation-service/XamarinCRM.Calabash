module Helpers

  def scroll_to(scrolling_view, direction, visible_block, tries = 3)
    i = 0
    until view_exists?(visible_block) || i < tries do
      scroll(scrolling_view, direction)
      i++
    end
  end

end