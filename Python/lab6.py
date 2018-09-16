import pygame, sys
from pygame.locals import *
import random as ran

           #R    G    B
BLUE =     (0,   0,   255)
GREEN =    (0,   128, 0)
PURPLE =   (128, 0,   128)
RED =      (255, 0,   0)
YELLOW =   (255, 255, 0)
NAVYBLUE = (0,   0,   128)
WHITE =    (255, 255, 255)
BLACK =    (0,   0,   0)

def lCatIm():
  fileN= ('images/nyan-1.gif','images/nyan-2.gif','images/nyan-3.gif',
  'images/nyan-4.gif','images/nyan-5.gif','images/nyan-6.gif')
  cats= []
  for fil in fileN:
    catImg = pygame.image.load(fil)
    cats.append(catImg)
  return cats

def drawText(text, font, surface, x, y):
  textobj= font.render(text,1,WHITE)
  textrect = textobj.get_rect()
  textrect.topleft
  surface.blit(textobj, textrect)


def playGame():
  pygame.init()
  FPS =30
  DISPLAYSURF = pygame.display.set_mode((400, 300))
  DISPLAYSURF.fill(NAVYBLUE)
  pygame.display.set_caption('Nyan Cat')
  fpsClock= pygame.time.Clock()
  x= 20
  y= 20
  catPos = (x,y)
  catList = lCatIm()
  cupCakeImg = pygame.image.load('images/cupcake.gif')
  brocImg = pygame.image.load('images/broccoli.gif')
  font = pygame.font.SysFont(None,20)
  font2 = pygame.font.SysFont(None,70)
  first = True
  score = 0
  count = 0
  dec = 0
  x1= ran.randint(50,300)
  y1= ran.randint(50,200)
  x2= ran.randint(50,300)
  y2= ran.randint(50,200)
  while True: # main game loop
    for event in pygame.event.get():
      if event.type == QUIT:
        pygame.quit()
        sys.exit()
      elif event.type== KEYDOWN:
        if event.key == K_RIGHT:
          x+=20
        if event.key == K_DOWN:
          y+=20
        if event.key == K_LEFT:
          x-=20
        if event.key == K_UP:
          y-=20
      elif event.type== MOUSEMOTION:
        x,y = event.pos
    print score
    if score < 0:
        drawText('GAME OVER', font2, DISPLAYSURF, 100, 100)
    if score >=100:
        drawText('YOU WIN', font2, DISPLAYSURF, 100, 100)

    theCatRect= catList[0].get_rect()
    theCupcakeRect= cupCakeImg.get_rect()  
    theCatRect.center = (x,y)
    theCupcakeRect.center= (x1,y1)
    theBrocRect= brocImg.get_rect() 
    theBrocRect.center= (x2,y2)   
    DISPLAYSURF.fill(NAVYBLUE)
    DISPLAYSURF.blit(catList[count%6],(x,y))
    DISPLAYSURF.blit(cupCakeImg,theCupcakeRect.center)
    DISPLAYSURF.blit(brocImg,theBrocRect.center)
    if theCatRect.colliderect(theCupcakeRect):
      x1= ran.randint(50,300)
      y1= ran.randint(50,200)
      x2= ran.randint(50,300)
      y2= ran.randint(50,200)
      first = False
      score +=1
    if theCatRect.colliderect(theBrocRect):
      x1= ran.randint(50,300)
      y1= ran.randint(50,200)
      x2= ran.randint(50,300)
      y2= ran.randint(50,200)
      first = False
      score -=2
      
 
    count+=1
    drawText('Score: ' +str(score), font, DISPLAYSURF, 10, 0)
    pygame.display.update()
    fpsClock.tick(FPS)

if __name__ == "__main__":
  playGame()
#for x in range(100,399): 
