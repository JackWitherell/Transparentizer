void setup(){
  try{
    PImage fromDrag=loadImage(args[0]);
    fromDrag.loadPixels();
    for (int i=0; i<fromDrag.pixels.length; i++){
      if(fromDrag.pixels[i]==-1237980){
        fromDrag.pixels[i]=0;
      }
    }
    String filename=args[0].substring(args[0].lastIndexOf('\\')+1);
    fromDrag.save(filename);
  }
  catch(NullPointerException e){
    text("No File as Argument!",20,height);
  }
  exit();
}