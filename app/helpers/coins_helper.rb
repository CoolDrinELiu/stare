module CoinsHelper
  def latest_time r
    t = r.blank? ? Time.current : Time.zone.at(r.birth_mark)
    t.strftime("%Y-%m-%d %H:%M:%S")
  end

  def remove_postfix str
    return "" if str.blank?
    str.split("_")[0]
  end
end
