PROGRAM tutor0;

BEGIN

    set_mode(m640x480);
    load_fpg("tutor0.fpg");

    player();

    LOOP
        FRAME;
    END
END


PROCESS player()

BEGIN

    y = 400;
    graph = 1;

    LOOP

        x = mouse.x;

        FRAME;

    END

END
