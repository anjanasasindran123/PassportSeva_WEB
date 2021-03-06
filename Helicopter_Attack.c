#include <GL/glut.h>
#include <GL/gl.h>
#include <GL/glu.h>
#include<math.h>
#include <unistd.h>

#include <stdio.h>

static int thrust;

static int rotor_angle;

static int fire;

static int bullet_x,bullet_y;

static int obstacle_y;

static int score;

void init(void)
{
      
        glClearColor (1.0, 1.0, 1.0, 0.0);
        glColor3f(0,0,0);
        glShadeModel (GL_FLAT);

}

void collision_check()
{
        if(bullet_x == 100 && (bullet_y>=obstacle_y-20) && (bullet_y<=obstacle_y) )
                {
                score++;
                printf("Score : %d\n",score);
                }
}

void body() // helicopter
{
        glColor3f(0.3,0.3,0.3);
        glutSolidSphere(50,20,10);
        glTranslatef(30,0,0);
        glutSolidSphere(50,20,10);
        
        glBegin(GL_LINES);
                glVertex2i(-50,15);
                glVertex2i(-160,10);
                glVertex2i(-160,-10);
                glVertex2i(-50,-15);
               glEnd();
        glFlush();
        
        glTranslatef(-30,0,0);
        glTranslatef(-150,0,0);
        
        glPushMatrix();
        glRotatef(rotor_angle,0,0,1);
        glutWireSphere(27,10,5);
        glPopMatrix();
        
}
void display(void)
{
        

        
        glClear(GL_COLOR_BUFFER_BIT);
        
        // begin
        
        glPushMatrix();
        
                glTranslatef(-80,0,0);
                glTranslatef(0,thrust,0);
                body();
                
                
        glPopMatrix();
        
        
        // bullet 
        if(fire == 1) // fire
        {
                glColor3f(1,0,0);
                glPushMatrix();
                
                glTranslatef(120,0,0);
                glRectf(bullet_x,bullet_y,bullet_x+20,bullet_y+10);
                glPopMatrix();
                
                bullet_x=bullet_x+10;
                
                glColor3f(0,0,0);
        }       
        
        
        
        // obstacle
        
        glColor3f(1,1,0);
        glPushMatrix();
                glTranslatef(0,obstacle_y,0);
                glRectf(250,0,260,-20);
        glPopMatrix();
        
        // collision check
        collision_check();
        
        
        // end
        glutSwapBuffers();
       
         
}

void reshape (int w, int h)
{
        glViewport (0, 0,w,h);
        glMatrixMode (GL_PROJECTION);
        glLoadIdentity ();
//        gluPerspective(60.0,w/h, 1.0, 20.0);
        glOrtho(-300,300,-300,300,-300,300);
        glMatrixMode(GL_MODELVIEW);
        glLoadIdentity();
        gluLookAt (0.0, 0.0, 5.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0);
}

void keyboard (unsigned char key, int x, int y)
{
       
       
        if(key=='w')
        {
                thrust+=10;
        }
        else if(key == 's')
        {
                thrust-=10;
        }
        
        else if(key == 32) // space -> fire
        {
                bullet_x=-150;
                bullet_y=thrust;
                fire=1;
        }
      
        glutPostRedisplay();
}


void IdleFunc()
{
      rotor_angle=(rotor_angle+60)%360;


        
        obstacle_y +=1;
        if(obstacle_y>=300)
                obstacle_y=-300;

      glutPostRedisplay();
                
}



int main(int argc, char** argv){
        glutInit(&argc, argv);
        glutInitDisplayMode (GLUT_DOUBLE | GLUT_RGB);
        glutInitWindowSize (500, 500);
        glutInitWindowPosition (100, 100);
        glutCreateWindow ("Helicopter");
        init ();
        glutDisplayFunc(display);
        glutReshapeFunc(reshape);
        glutIdleFunc(IdleFunc);
        glutKeyboardFunc(keyboard);
        glutMainLoop();
        return 0;
}

