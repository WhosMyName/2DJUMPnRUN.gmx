Collider = argument0;
Damage = argument1;

if RectangleCollision(Collider){
    Collidance = RectangleCollisionID(Collider);
    Collidance.Damage = Damage;
    with (Collidance){
         Life(0,Damage,0);
    }
    instance_destroy();
}
