class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    mensaje = @line.split(": ")
    mensaje[1].strip
  end

  def log_level
    log = @line.split(":")
    log[0].tr("[]", "").downcase
  end

  def reformat
   "#{message} (#{log_level})"
  end
end
