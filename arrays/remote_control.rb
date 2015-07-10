class RemoteControl
  attr_accessor :char_grid, :char_map

  def initialize(char_grid)
    @char_grid = char_grid
    generate_char_map()
  end

  def self.generate_char_map
    // char_map = {'a' => (0,0), 'b' => (0,1), ..}
  end

  def find_shortest_direction(word)
    return nil if word.nil?

    while (i < word.size)
      char = str[i]
      p = char_map[char]
      dist = distance(curr.x, curr.y, p.x, p.y)

      append_to_direction(min(dist, dist_h, dist_v), direction)
      curr = p
      i += 1
    end
  end

  def self.append_to_direction(dist, direction)
    dist.x > 0 ? direction.append 'd' : direction.append 'u'
    dist.y > 0 ? direction.append 'r' : direction.append 'l'
  end
end