class Edge
  attr_accessor :src, :dest, :length
  
  def initialize(src, dest, length = 1)
    @src = src
    @dest = dest
    @length = length
  end
end

class Graph < Array
  attr_reader :edges
  
  def initialize
    @edges = []
  end
  
  def connect(src, dest, length = 1)
    unless self.include?(src)
      raise ArgumentException, "No such vertex: #{src}"
    end
    unless self.include?(dest)
      raise ArgumentException, "No such vertex: #{dest}"
    end
    @edges.push Edge.new(src, dest, length)
  end
  
  def connect_mutually(vertex1, vertex2, length = 1)
    self.connect vertex1, vertex2, length
    self.connect vertex2, vertex1, length
  end

  def neighbors(vertex)
    neighbors = []
    @edges.each do |edge|
      neighbors.push edge.dest if edge.src == vertex
    end
    return neighbors.uniq
  end

  def length_between(src, dest)
    @edges.each do |edge|
      return edge.length if edge.src == src and edge.dest == dest
    end
    nil
  end

  def dijkstra(src, dest = nil)
    distances = {}
    previouses = {}
    self.each do |vertex|
      distances[vertex] = nil 
      previouses[vertex] = nil
    end
    distances[src] = 0
    vertices = self.clone
    until vertices.empty?
      nearest_vertex = vertices.inject do |a, b|
        next b unless distances[a]
        next a unless distances[b]
        next a if distances[a] < distances[b]
        b
      end
      break unless distances[nearest_vertex] 
      if dest and nearest_vertex == dest
        path = get_path(previouses, src, dest)
        return { path: path, distance: distances[dest] }
      end
      neighbors = vertices.neighbors(nearest_vertex)
      neighbors.each do |vertex|
        alt = distances[nearest_vertex] + vertices.length_between(nearest_vertex, vertex)
        if distances[vertex].nil? or alt < distances[vertex]
          distances[vertex] = alt
          previouses[vertex] = nearest_vertex
        end
      end
      vertices.delete nearest_vertex
    end
    if dest
      return nil
    else
      paths = {}
      distances.each { |k, v| paths[k] = get_path(previouses, src, k) }
      return { paths: paths, distances: distances }
    end
  end

  private
  def get_path(previouses, src, dest)
    path = get_path_recursively(previouses, src, dest)
    path.is_a?(Array) ? path.reverse : path
  end

  def get_path_recursively(previouses, src, dest)
    return src if src == dest
    raise ArgumentException, "No path from #{src} to #{dest}" if previouses[dest].nil?
    [dest, get_path_recursively(previouses, src, previouses[dest])].flatten
  end
end

graph = Graph.new
(1..6).each {|node| graph.push node }
graph.connect_mutually 1, 2, 7
graph.connect_mutually 1, 3, 9
graph.connect_mutually 1, 6, 14
graph.connect_mutually 2, 3, 10
graph.connect_mutually 2, 4, 15
graph.connect_mutually 3, 4, 11
graph.connect_mutually 3, 6, 2
graph.connect_mutually 4, 5, 6
graph.connect_mutually 5, 6, 9

p graph
p graph.length_between(2, 1)
p graph.neighbors(1)
p graph.dijkstra(1)
p graph.dijkstra(1, 5)

