class Dictionary

  def initialize
    @entries = {}
  end

  def entries
    @entries
  end

  def add(entry)
    if entry.class == Hash
      @entries.merge!(entry)
      return true
    elsif entry.class == String
      @entries.merge!({entry => nil})
      return true
    else
      return false
    end
  end

  def keywords
    @entries.keys.sort!
  end

  def include?(key_string)
    @entries.keys.include?(key_string)
  end

  def find(key_string)
    @entries.select {|key,value| key.include?(key_string)}
  end
end
