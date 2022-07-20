function arclen(p1::SphericalPoint, p2::SphericalPoint)
  p1rct, p2rct = Point(0, 0, 0), Point(0, 0, 0)

  p1rct.x = p1.rho * sin(p1.phi) * cos(p1.theta)
  p1rct.y = p1.rho * sin(p1.phi) * sin(p1.theta)
  p1rct.z = p1.rho * cos(p1.phi)

  p2rct.x = p2.rho * sin(p2.phi) * cos(p2.theta)
  p2rct.y = p2.rho * sin(p2.phi) * sin(p2.theta)
  p2rct.z = p2.rho * cos(p2.phi)

  dot = p1rct.x * p2rct.x + p1rct.y * p2rct.y + p1rct.z * p2rct.z
  alpha = acos(dot / (p1.rho ^ 2))

  return alpha * p1.rho
end