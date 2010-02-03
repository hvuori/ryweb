class Configuration < CustomerData

  def self.get_one(cid)
    cfg = Configuration.find(:first, :conditions => {:customer_id => cid})
    return cfg.value unless cfg.nil?
    nil
  end

end
