float[] quadBezied(PVector p0, PVector p1, PVector p2, float t) {  
    
    float bx = p1.x - p0.x;
    float ax = p2.x - p1.x - bx;
    float by = p1.y - p0.y;
    float ay = p2.y - p1.y - by;

    /* calculate the curve point at parameter value t */
    float tt = t * t;
    float t2 = 2 * t;
    float[] a = {ax*tt + bx*t2 + p0.x, ay*tt + by*t2 + p0.y}; 
    return a;
}
