program leo_workshop.aleo;

record Score:
    owner as address.private;
    val as u32.private;


function mint:
    input r0 as u32.private;
    mul r0 r0 into r1;
    mul r1 r0 into r2;
    add r2 r0 into r3;
    add r3 5u32 into r4;
    assert.eq r4 35u32;
    cast self.caller 100u32 into r5 as Score.record;
    output r5 as Score.record;


function transfer:
    input r0 as Score.record;
    input r1 as address.private;
    input r2 as u32.private;
    cast self.caller r2 into r3 as Score.record;
    sub r0.val r2 into r4;
    cast r1 r4 into r5 as Score.record;
    output r3 as Score.record;
    output r5 as Score.record;
