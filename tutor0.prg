PROGRAM tutor0;

include "linea.prg";

BEGIN
    // Set our screen resolution
    set_mode(m640x480);

    // Load our graphics file
    load_fpg("tutor0.fpg");

    // put the graphic on screen
    put_screen(file,2);

    // spawn our player process
    player();

    // Loop forever
    LOOP

        // draw fram
        FRAME;
    END
END


PROCESS player()

BEGIN

    // set y coordinate to 400 pixels from top of screen
    y = 400;

    // use the graphic id 1 from our fpg
    graph = 1;

    // loop forever
    LOOP

        // update x coordinate to the current mouse x position
        x = mouse.x;

        // check for mouse button pressed
        // and if so, spawn a bullet from our current position
        IF ( mouse.left )

            // spwan a bullet 24 from the centre of our ship.
            bullet(x, y - 24 );
        END


        // draw frame
        FRAME;

    END

END


PROCESS bullet(x,y)

BEGIN

    // use sprite 3
    graph = 3;

    WHILE ( ! out_region( id, 0 ) )

        y = y - 16;

        FRAME;
    END

END

