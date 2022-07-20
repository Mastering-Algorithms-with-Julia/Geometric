function cvxhull(points::List{Point})
  minpoint, lowpoint, p0, pi, pc, low = repeat([nothing], 6)
  minpoint = first(points)

  for point in points
    p0 = point
    if p0.y < minpoint.y
      minpoint = p0
      low = point
    elseif p0.y == minpoint.y && p0.x < minpoint.x
      minpoint = p0
      low = point
    end
  end

  polygon = List(Point)
  p0 = low
  while true
    push!(polygon, p0)
    count = 0
    for point in points
      pi = point
      if pi == p0
        continue
      end

      count += 1
      if count == 1
        pc = point
        continue
      end

      z = (pi.x - p0.x) * (pc.y - p0.y) - (pi.y - p0.y) * (pc.x - p0.x)
      if z > 0
        pc = pi
      elseif z == 0
        length1 = sqrt((pi.x - p0.x) ^ 2 + (pi.y - p0.y) ^ 2)
        length2 = sqrt((pc.x - p0.x) ^ 2 + (pc.y - p0.y) ^ 2)

        if length1 > length2
          pc = pi
        end
      end
    end

    p0 = pc

    if p0 == low
      break
    end
  end

  return polygon
end