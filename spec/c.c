#include <iostream.h>
#include <conio.h>
#include <dos.h>
#include <process.h>

void main(){
     clrscr();_setcursortype(_NOCURSOR);
     REGS regs;
     //Initializing and showing mouse
     regs.x.ax=0;int86(0x33,®s,®s);
     regs.x.ax=1;int86(0x33,®s,®s);
     //Reading mouse click
     for( ; ; ){
   //Updating mouse motions
   regs.x.ax=3;int86(0x33,®s,®s);
   //Reading mouse click
   if(regs.x.bx==1){
      gotoxy(2,2);textbackground(1);textcolor(15);
      cprintf("Left Button Clicked!");
      delay(100);
      }
   if(regs.x.bx==2){
      gotoxy(2,2);textcolor(15);textbackground(1);
      cprintf("Right Button Clicked!");
      delay(100);
      }
   gotoxy(1,2);textbackground(1);cprintf("                         ");
   //Printing mouse coordinates
   gotoxy(1,1);textcolor(11);textbackground(6);
   cprintf(" Mouse Position:(%3d,%3d)",regs.x.cx,regs.x.dx);
   while(kbhit()){exit(0);}
  }
}

#define UNICODE
#include <windows.h>

int main(int argc, char **argv) {
  int speed = 0, speed1 = 0, speed2 = 0; // 1-20
  printf("Set Mouse Speed by Maverick\n");

  //comment?

  SystemParametersInfo(SPI_GETMOUSESPEED, 0, &speed, 0);
  printf("Current speed: %2d\n", speed);

  if (argc == 1) return 0;
  if (argc >= 2) sscanf(argv[1], "%d", &speed1);
  if (argc >= 3) sscanf(argv[2], "%d", &speed2);

  if (argc == 2) // set speed to first value
    speed = speed1;
  else if (speed == speed1 || speed == speed2) // alternate
    speed = speed1 + speed2 - speed;
  else
    speed = speed1;  // start with first value

  SystemParametersInfo(SPI_SETMOUSESPEED, 0,  speed, 0);
  SystemParametersInfo(SPI_GETMOUSESPEED, 0, &speed, 0);
  printf("New speed:     %2d\n", speed);
  return 0;
}
# comment

int CALBACK

WinMain(something, or, other)
{
  int x = 1
}

FindMax.cpp - Function template FindMax (Figs 1.17 and 1.18)

  #include <iostream.h>
        #include "mystring.h"
        #include "vector.h"
        #include "IntCell.h"
        // Figures 1.17 and 1.18, but with illegalities commented out


        /**
         * Return the maximum item in array a.
         * Assumes a.size( ) > 0.
         * Comparable objects must provide
         *   copy constructor, operator<, operator=
         */
        template <class Comparable>
        const Comparable & findMax( const vector<Comparable> & a )
        {
/* 1*/      int maxIndex = 0;

/* 2*/      for( int i = 1; i < a.size( ); i++ )
/* 3*/          if( a[ maxIndex ] < a[ i ] )
/* 4*/              maxIndex = i;
/* 5*/      return a[ maxIndex ];
        }
