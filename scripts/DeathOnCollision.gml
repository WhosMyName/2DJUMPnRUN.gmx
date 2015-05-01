Collider = argument0
if RectangleCollision(Collider){
    Collidance = RectangleCollisionID(Collider);
    with (Collidance){
         Life(0,25,0);
    }
    instance_destroy();
}
