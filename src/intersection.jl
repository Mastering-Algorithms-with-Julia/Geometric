mutable struct PointVector
  startPoint::Point
  endPoint::Point
  x::Number
  y::Number

  PointVector(startPoint::Point, endPoint::Point) = new(startPoint, endPoint, endPoint.x - startPoint.x, endPoint.y - startPoint.y)
end

negative(vector::PointVector) = PointVector(vector.endPoint, vector.startPoint)
product(vectorA::PointVector, vectorB::PointVector) = vectorA.x * vectorB.y - vectorB.x * vectorA.y

function intersection(pointA::Point, pointB::Point, pointC::Point, pointD::Point)
  AC = PointVector(pointA, pointC)
  AD = PointVector(pointA, pointD)
  BC = PointVector(pointB, pointC)
  BD = PointVector(pointB, pointD)
  CA = negative(AC)
  CB = negative(BC)
  DA = negative(AD)
  DB = negative(BD)

  return product(AC, AD) * product(BC, BD) <= 0 &&
    product(CA, CB) * product(DA, DB) <= 0
end