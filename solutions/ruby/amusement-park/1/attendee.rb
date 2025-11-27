class Attendee
  def initialize(height)
    @heigth = height
    @pass_id = nil
  end

  def height
    @heigth 
  end

  def pass_id
    @pass_id
  end

  def issue_pass!(pass_id)
    @pass_id = pass_id
  end

  def revoke_pass!
    @pass_id = nil
  end
end
