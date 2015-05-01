Collider = argument0;
Damage = argument1;
if RectangleCollision(Collider){
    Collidance = RectangleCollisionID(Collider);
    with (Collidance){
         Life(0,Damage,0);
    }
    instance_destroy();
}
