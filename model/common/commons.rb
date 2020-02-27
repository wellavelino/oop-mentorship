require 'securerandom'

module Common
  def id
    SecureRandom.hex
  end

  def register_as(*)
    raise 'Not implemented'
  end

  def search_by_id(*)
    raise 'Not implemented'
  end

  def update(*)
    raise 'Not implemented'
  end

  def delete(*)
    raise 'Not implemented'
  end
end