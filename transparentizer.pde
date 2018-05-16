void setup(){
  size(100,100);
  try{
    PImage fromDrag=loadImage(args[0]);
    fromDrag.loadPixels();
    PGraphics toOut=createGraphics(fromDrag.width,fromDrag.height);
    toOut.beginDraw();
    toOut.loadPixels();
    for (int i=0; i<fromDrag.pixels.length; i++){
      if(fromDrag.pixels[i]!=-1237980){
        toOut.pixels[i]=fromDrag.pixels[i];
      }
    }
    toOut.updatePixels();
    toOut.endDraw();
    toOut.save(args[0]);
  }
  catch(NullPointerException e){
    text("No File as Argument!",20,height);
  }
  exit();
}