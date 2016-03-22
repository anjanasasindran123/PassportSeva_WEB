#include <GL/gl.h>
#include <GL/glu.h>
#include <GL/glut.h>
#include<stdio.h>

static int score = 0;
static int move_nx=0;
static int move_px=0;
static int move_id=0;


void init(void)
{
glClearColor (0.0, 1.0, 1.0, 0.0);
glShadeModel (GL_SMOOTH);
}

void display(void)
{
glClear (GL_COLOR_BUFFER_BIT);

glColor3f(1.0,0.0,1.0);
        
GLvoid *font_style = GLUT_BITMAP_TIMES_ROMAN_24;
glRasterPos2i(90,90);
glutBitmapCharacter(font_style, score+'0');

glColor3f(1.0,0.0,0.0);
move_id += 1;
if(move_id>=180)
	move_id=-100;
        

//baserect
glPushMatrix();
glTranslatef(move_px,0,0);
glRectf(-10,-80,10,-90);
glPopMatrix();

//bullet rect
glPushMatrix();
glTranslatef(move_px,move_nx,0);
glRectf(-5,-70,5,-80);
glPopMatrix();

glColor3f(0.0,0.0,1.0);

//flies

glPushMatrix();
glTranslatef(move_id,0,0);
glRectf(-90,90,-40,80);
glPopMatrix();

glutSwapBuffers();
}

void reshape (int w, int h)
{
glViewport (0, 0, (GLsizei) w, (GLsizei) h);
glMatrixMode (GL_PROJECTION);
glLoadIdentity ();
glOrtho(-100,100,-100,100,-100,100);
glMatrixMode(GL_MODELVIEW);
glLoadIdentity();
gluLookAt (0.0, 0.0, 5.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0);
}
void keyboard (unsigned char key, int x, int y)
{
 
       
       
        if(key=='p')
        {
	 if(move_px +2 <= 100)
                move_px+=2;
        }
        if(key == 'q')
        {
         if(move_px -2 >= -100)
                move_px-=2;
        }
         
   glutPostRedisplay();
}


void moving_up(void){

	move_nx+=3;
		if(move_nx >= 180)
		{
			if(move_px >= (move_id-90+4)&& move_px <= (move_id + 25-90+29))
			{
				score++;			
				move_nx = 0;
				glutIdleFunc(NULL);
			}
			else
			{			
				move_nx = 0;
				glutIdleFunc(NULL);
			}
		}
	glutPostRedisplay();
}

void mouse(int button, int state, int x, int y)
{
switch (button) {
case GLUT_LEFT_BUTTON:
if (state == GLUT_DOWN)
glutIdleFunc(moving_up);
break;
case GLUT_MIDDLE_BUTTON:
if (state == GLUT_DOWN)
glutIdleFunc(NULL);
break;
default:
break;
}
}

int main(int argc, char** argv){
glutInit(&argc, argv);
glutInitDisplayMode (GLUT_DOUBLE | GLUT_RGB);
glutInitWindowSize (500, 500);
glutInitWindowPosition (100, 100);
glutCreateWindow ("The Hunter");
init ();
glutDisplayFunc(display);
glutReshapeFunc(reshape);
glutMouseFunc(mouse);
glutKeyboardFunc(keyboard);
glutMainLoop();
return 0;
}
