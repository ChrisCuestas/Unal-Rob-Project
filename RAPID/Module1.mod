MODULE Module1
        CONST jointtarget Home:=[[0,0,0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget CercaBanda:=[[512.711291646,329.999813254,380.968702941],[0.707106756,0.000000033,0.707106806,-0.000000027],[0,-2,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Horizontal_Balde_Banda:=[[512.711297367,480.553581146,380.968682458],[0.707106789,0.000000108,0.707106774,-0.000000057],[0,-2,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Vertical_Balde_Banda:=[[512.711272515,480.55360557,436.302799201],[0.707106771,0.000000171,0.707106791,-0.00000007],[0,-2,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Posicion_Intermedia_Banda2Piso:=[[512.711293234,-10.590219085,436.302802391],[0.707106793,0.000000244,0.707106769,-0.000000033],[-1,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Vertical_Balde_Piso:=[[658.529,-2.581,436.3],[0.707106781,0,0.707106781,0],[-1,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Dejar_Balde_Piso:=[[658.529207615,-2.580885125,154.394570397],[0.707106755,0.000000642,0.707106808,-0.000001248],[-1,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Horizontal_Balde_Piso_Dejando:=[[658.529212992,-31.325000832,154.394585511],[0.707106775,0.000000642,0.707106787,-0.000001248],[-1,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Vertical_Balde_Dejando:=[[658.529213147,-31.325000562,178.331286068],[0.707106791,0.000000641,0.707106771,-0.000001247],[-1,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Bajando_Asa_1:=[[658.529,8.91,178.331],[0.707106781,0,0.707106781,0],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Bajando_Asa_2:=[[658.529219737,8.907316508,168.160610823],[0.707106797,0.000000641,0.707106765,-0.000001247],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Bajando_Asa_3:=[[658.529216283,-12.204339977,168.160599818],[0.70710679,0.000000641,0.707106772,-0.000001247],[-1,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Bajando_Asa_4:=[[658.529220843,-40.116632276,144.560706947],[0.707106807,0.00000064,0.707106756,-0.00000125],[-1,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Bajando_Asa_5:=[[658.529279361,-65.249600945,119.618112273],[0.707106804,0.000000649,0.707106759,-0.000001257],[-1,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget SUP_IZQ_1:=[[109.271322767,521.370086701,-58.763942775],[0.999961007,0.008830845,0.000000045,-0.00000049],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget SUP_IZQ_2:=[[109.271318689,408.602282452,-23.1959539],[0.999961007,0.008830842,0.000000051,-0.000000474],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget SUP_IZQ_3:=[[121.505079052,406.395912678,30.70477243],[0.999961007,0.008830852,0.000000022,-0.000000467],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget SUP_IZQ_4:=[[138.015506933,406.395912269,30.704770912],[0.999961007,0.008830854,0.000000048,-0.000000464],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget SUP_IZQ_5:=[[121.505079052,406.395912678,30.70477243],[0.999961007,0.008830852,0.000000022,-0.000000467],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget SUP_IZQ_6:=[[109.271318689,408.602282452,-23.1959539],[0.999961007,0.008830842,0.000000051,-0.000000474],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget SUP_IZQ_7:=[[109.271322767,521.370086701,-58.763942775],[0.999961007,0.008830845,0.000000045,-0.00000049],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget SUP_IZQ_8:=[[1.7,640.601392502,-218.927618424],[0.923879024,-0.38268466,0,0],[-1,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget SUP_IZQ_9:=[[283.605429603,640.601620537,-218.927552847],[0.923879536,-0.382683425,-0.000000129,-0.00000041],[-1,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget SUP_DER_1:=[[109.271321954,521.546696714,-68.762383099],[0.999961007,0.008830845,0.000000045,-0.00000049],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget SUP_DER_2:=[[109.27130502,156.63688303,-76.886771885],[0.999961007,0.008830865,0.000000031,-0.00000047],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget SUP_DER_3:=[[109.271295848,124.388726112,24.088442568],[0.999961007,0.008830848,0.000000033,-0.00000047],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget SUP_DER_4:=[[137.887689602,124.388726584,24.088442655],[0.999961007,0.008830847,0.000000015,-0.00000047],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget SUP_DER_5:=[[109.271295848,124.388726112,24.088442568],[0.999961007,0.008830848,0.000000033,-0.00000047],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget SUP_DER_6:=[[109.27130502,156.63688303,-76.886771885],[0.999961007,0.008830865,0.000000031,-0.00000047],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget SUP_DER_7:=[[109.271321954,521.546696714,-68.762383099],[0.999961007,0.008830845,0.000000045,-0.00000049],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget SUP_DER_8:=[[1.7,640.601392502,-218.927618424],[0.923879024,-0.38268466,0,0],[-1,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget SUP_DER_9:=[[283.605429603,640.601620537,-218.927552847],[0.923879536,-0.382683425,-0.000000129,-0.00000041],[-1,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget MED_IZQ_1:=[[248.271322767,521.369950597,-58.763956487],[0.999961007,0.008830845,0.000000045,-0.00000049],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget MED_IZQ_2:=[[248.271318689,408.60215081,-23.195969241],[0.999961007,0.008830842,0.000000051,-0.000000474],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget MED_IZQ_3:=[[260.505079052,406.395782911,30.704765168],[0.999961007,0.008830852,0.000000022,-0.000000467],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget MED_IZQ_4:=[[277.015506933,406.3957834,30.704756429],[0.999961007,0.008830854,0.000000048,-0.000000464],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget MED_IZQ_5:=[[260.505079052,406.395782911,30.704765168],[0.999961007,0.008830852,0.000000022,-0.000000467],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget MED_IZQ_6:=[[248.271318689,408.60215081,-23.195969241],[0.999961007,0.008830842,0.000000051,-0.000000474],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget MED_IZQ_7:=[[248.271322767,521.369950597,-58.763956487],[0.999961007,0.008830845,0.000000045,-0.00000049],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget MED_IZQ_8:=[[1.7,640.601392502,-218.927618424],[0.923879024,-0.38268466,0,0],[-1,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget MED_IZQ_9:=[[283.605429603,640.601620537,-218.927552847],[0.923879536,-0.382683425,-0.000000129,-0.00000041],[-1,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget MED_DER_1:=[[243.271321954,521.546565506,-68.762396318],[0.999961007,0.008830845,0.000000045,-0.00000049],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget MED_DER_2:=[[243.27130502,156.636757148,-76.886781305],[0.999961007,0.008830865,0.000000031,-0.00000047],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget MED_DER_3:=[[243.271295848,124.388600235,24.088432612],[0.999961007,0.008830848,0.000000033,-0.00000047],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget MED_DER_4:=[[271.887689602,124.388600664,24.088437522],[0.999961007,0.008830847,0.000000015,-0.00000047],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget MED_DER_5:=[[243.271295848,124.388600235,24.088432612],[0.999961007,0.008830848,0.000000033,-0.00000047],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget MED_DER_6:=[[243.27130502,156.636757148,-76.886781305],[0.999961007,0.008830865,0.000000031,-0.00000047],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget MED_DER_7:=[[243.271321954,521.546565506,-68.762396318],[0.999961007,0.008830845,0.000000045,-0.00000049],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget MED_DER_8:=[[1.7,640.601392502,-218.927618424],[0.923879024,-0.38268466,0,0],[-1,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget MED_DER_9:=[[283.605429603,640.601620537,-218.927552847],[0.923879536,-0.382683425,-0.000000129,-0.00000041],[-1,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget INF_DER_1:=[[378.271321954,521.546433318,-68.762409636],[0.999961007,0.008830845,0.000000045,-0.00000049],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget INF_DER_2:=[[378.27130502,156.636630327,-76.886790795],[0.999961007,0.008830865,0.000000031,-0.00000047],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget INF_DER_3:=[[378.271295848,124.388473419,24.088422582],[0.999961007,0.008830848,0.000000033,-0.00000047],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget INF_DER_4:=[[406.887689602,124.388473805,24.088432352],[0.999961007,0.008830847,0.000000015,-0.00000047],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget INF_DER_5:=[[378.271295848,124.388473419,24.088422582],[0.999961007,0.008830848,0.000000033,-0.00000047],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget INF_DER_6:=[[378.27130502,156.636630327,-76.886790795],[0.999961007,0.008830865,0.000000031,-0.00000047],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget INF_DER_7:=[[378.271321954,521.546433318,-68.762409636],[0.999961007,0.008830845,0.000000045,-0.00000049],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget INF_DER_8:=[[1.7,640.601392502,-218.927618424],[0.923879024,-0.38268466,0,0],[-1,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget INF_DER_9:=[[283.605429603,640.601620537,-218.927552847],[0.923879536,-0.382683425,-0.000000129,-0.00000041],[-1,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget INF_IZQ_1:=[[383.271322768,521.369818408,-58.763969806],[0.999961007,0.008830845,0.000000045,-0.00000049],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget INF_IZQ_2:=[[383.271318689,408.602022956,-23.195984142],[0.999961007,0.008830842,0.000000051,-0.000000474],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget INF_IZQ_3:=[[395.505079051,406.395656877,30.704758115],[0.999961007,0.008830852,0.000000022,-0.000000467],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget INF_IZQ_4:=[[412.015506933,406.395658238,30.704742364],[0.999961007,0.008830854,0.000000048,-0.000000464],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget INF_IZQ_5:=[[395.505079051,406.395656877,30.704758115],[0.999961007,0.008830852,0.000000022,-0.000000467],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget INF_IZQ_6:=[[383.271318689,408.602022956,-23.195984142],[0.999961007,0.008830842,0.000000051,-0.000000474],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget INF_IZQ_7:=[[383.271322768,521.369818408,-58.763969806],[0.999961007,0.008830845,0.000000045,-0.00000049],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget INF_IZQ_8:=[[1.7,640.601392502,-218.927618424],[0.923879024,-0.38268466,0,0],[-1,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget INF_IZQ_9:=[[283.605429603,640.601620537,-218.927552847],[0.923879536,-0.382683425,-0.000000129,-0.00000041],[-1,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Subiendo_Asa_1:=[[658.529276643,-81.288705261,154.39450767],[0.707106726,0.000000536,0.707106837,-0.000001238],[-1,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Subiendo_Asa_2:=[[601.694516222,-81.288703797,79.94454066],[0.697272468,0.117519407,0.697272789,-0.117520008],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Subiendo_Asa_3:=[[619.429870565,-51.993521616,79.944368104],[0.60555265,0.365110836,0.705517109,0.047388562],[-1,0,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Subiendo_Asa_4:=[[627.690481919,-66.411381291,122.373383869],[0.692142773,0.144700196,0.69214303,-0.144700592],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Subiendo_Asa_5:=[[658.529207615,-2.580885125,154.394570397],[0.707106755,0.000000642,0.707106808,-0.000001248],[-1,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Dejar_Balde_Piso_2:=[[658.529207615,-2.580885125,154.394570397],[0.707106755,0.000000642,0.707106808,-0.000001248],[-1,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Vertical_Balde_Piso_2:=[[658.529,-2.581,436.3],[0.707106781,0,0.707106781,0],[-1,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Posicion_Intermedia_Banda2Piso_2:=[[512.711293234,-10.590219085,436.302802391],[0.707106793,0.000000244,0.707106769,-0.000000033],[-1,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Vertical_Balde_Banda_2:=[[512.711272515,480.55360557,436.302799201],[0.707106771,0.000000171,0.707106791,-0.00000007],[0,-2,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Horizontal_Balde_Banda_2:=[[512.711297367,480.553581146,380.968682458],[0.707106789,0.000000108,0.707106774,-0.000000057],[0,-2,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget CercaBanda_2:=[[512.711291646,329.999813254,380.968702941],[0.707106756,0.000000033,0.707106806,-0.000000027],[0,-2,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ReposicionamientoArriba:=[[658.529,-2.581,436.3],[0.707106781,0,0.707106781,0],[-1,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ReposicionamientoDejar:=[[648.529,-2.581,204.395],[0.001371,0.368529808,0.929614762,-0.000543509],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Reorientacion:=[[512.711272515,480.55360557,436.302799201],[0.707106793,0.000000244,0.707106769,-0.000000033],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
!***********************************************************
    !
    ! Módulo:  Module1
    !
    ! Descripción:
    !   <Introduzca la descripción aquí>
    !
    ! Autor: Juan
    !
    ! Versión: 1.0
    !
    !***********************************************************
    
    
    !***********************************************************
    !
    ! Procedimiento Main
    !
    !   Este es el punto de entrada de su programa
    !
    !***********************************************************
    
    !Ambas trayectorias que recorren los 6 espacios de la estantería seguidos aquí.
    PROC main()
        Primeros3;Ultimos3;
    ENDPROC
    
    !La trayectoria Homing apaga el testigo lumínico DO_03, apaga la señal del solenoide DO_02 que implica el inicio de la succión
    !de la ventosa, y enciende la señal del solenoide que implica la dirección contraria a succión Do_01, tras esperar un segundo 
    !se apaga esta señal, para asegurar que no está succionando por toda la operación y se mueve hasta Home, donde todas las articulaciones
    !se encuentran en 0. Posteriormente espera la entrada DI_01, que indica el encendido del testigo lumínico DO_03 y, ya en conjunto con las
    !trayectorias posteriores, el inicio del proceso.
    PROC Homing()
        SetDO DO_03,0;
        SetDO DO_02,0;
        SetDO DO_01,1;
        WaitTime 1;
        SetDO DO_01,0;
        MoveAbsJ Home,v100,z100,tool0\WObj:=wobj0;
        WaitDI DI_01,1;
        SetDO DO_03,1;
    ENDPROC
    !La trayectoria Banda2Piso corresponde al movimiento del balde desde la banda hasta el el punto de colocación del balde.
    !Empieza por acercarce a la banda en el punto 'CercaBanda', toma el balde con 'Horizontal/Vertical_Balde_Banda'.
    !Con los demás puntos se traslada en el espacio hasta el punto de colocación del balde. Las instrucciones
    !'Horizontal/Vertical_Balde_Piso_Dejando' Corresponden a cuando el balde ya se encuentra en 0 en la dirección z respecto al mundo
    !Y se separa el Gancho del mismo.
    PROC Banda2Piso()
        MoveJ CercaBanda,v100,z10,Gancho\WObj:=Mundo;
        MoveJ Horizontal_Balde_Banda,v100,z10,Gancho\WObj:=Mundo;
        MoveJ Vertical_Balde_Banda,v50,z10,Gancho\WObj:=Mundo;
        MoveJ Posicion_Intermedia_Banda2Piso,v100,z10,Gancho\WObj:=Mundo;
        MoveJ Vertical_Balde_Piso,v100,z10,Gancho\WObj:=Mundo;
        MoveJ Dejar_Balde_Piso,v100,z10,Gancho\WObj:=Mundo;
        MoveJ Horizontal_Balde_Piso_Dejando,v100,z10,Gancho\WObj:=Mundo;
        MoveJ Vertical_Balde_Dejando,v100,z10,Gancho\WObj:=Mundo;
    ENDPROC
    !La trayectoria Piso_Baja_Asa corresponde a una primera consideración que no se llevó a cabo prácticamente, que implica bajar el asa del balde 
    !para introducir las piezas sin que esta asa se encontrara en el camino y llegara a modificar la trayectoria de las piezas
    PROC Piso_Baja_Asa()
        MoveJ Vertical_Balde_Dejando,v50,z10,Gancho\WObj:=Mundo;
        MoveJ Bajando_Asa_1,v50,z10,Gancho\WObj:=Mundo;
        MoveJ Bajando_Asa_2,v50,z10,Gancho\WObj:=Mundo;
        MoveJ Bajando_Asa_3,v50,z10,Gancho\WObj:=Mundo;
        MoveJ Bajando_Asa_4,v50,z10,Gancho\WObj:=Mundo;
        MoveJ Bajando_Asa_5,v50,z10,Gancho\WObj:=Mundo;
    ENDPROC
    
    !Todas las trayectorias para recoger piezas se encuentran en SUP/MED/INF_DER/IZQ, que, con las 6 combinaciones posibles, corresponde a los
    !6 espacios de la repisa. Donde DER, IZQ, SUP, MED e INF corresponde a derecho, izquierdo, superior, medio e inferior, respectivamente. 
    !Todos están compuestos por 2 primeros puntos de posicionamiento, seguidos de dos puntos de acercamiento. Posteriormente se espera y se empieza
    !la succión, al encender DO_02, se devuelve la pieza hasta el mismo punto de acercamiento y, mediante los puntos 'ReposicionamientoArriba/Dejar'
    !se gira el manipulador hasta una posición adecuada. Se espera 1 segundo a que llegue, se apaga la succión de la ventosa, se espera 1 segundo, se
    !prende el solenoide que devuelve la válvula a su estado inicial, al encender D0_01, de nuevo se espera 1 segundo y se apaga esta señal, a
    !continuación se devuelve a un punto arriba. Cabe resaltar que cada estante tiene su propio Wobj para realizar modificaciones, no obstante,
    !es posible copiar y pegar esta configuración mediante el flex pendant, que facilita la modificación.
    
    PROC SUP_IZQ()
        MoveJ SUP_IZQ_1,v100,z10,Ventosa\WObj:=Estante_SUP_IZQ;
        MoveJ SUP_IZQ_2,v100,z10,Ventosa\WObj:=Estante_SUP_IZQ;
        MoveJ SUP_IZQ_3,v100,z10,Ventosa\WObj:=Estante_SUP_IZQ;
        MoveJ SUP_IZQ_4,v100,z10,Ventosa\WObj:=Estante_SUP_IZQ;
        WaitTime 1;
        SetDO DO_02,1;
        MoveJ SUP_IZQ_5,v100,z10,Ventosa\WObj:=Estante_SUP_IZQ;
        MoveJ SUP_IZQ_6,v100,z10,Ventosa\WObj:=Estante_SUP_IZQ;
        MoveJ SUP_IZQ_7,v100,z10,Ventosa\WObj:=Estante_SUP_IZQ;
        MoveJ ReposicionamientoArriba,v100,z100,Ventosa\WObj:=Mundo;
        MoveJ ReposicionamientoDejar,v100,z100,Ventosa\WObj:=Mundo;
        WaitTime 1;
        SetDO DO_02,0;
        WaitTime 1;
        SetDO DO_01,1;
        WaitTime 1;
        SetDO DO_01,0;
        WaitTime 1;
        MoveJ ReposicionamientoArriba,v100,z100,Ventosa\WObj:=Mundo;
    ENDPROC
    PROC SUP_DER()
        MoveJ SUP_DER_1,v100,z10,Ventosa\WObj:=Estante_SUP_DER;
        MoveJ SUP_DER_2,v100,z10,Ventosa\WObj:=Estante_SUP_DER;
        MoveJ SUP_DER_3,v100,z10,Ventosa\WObj:=Estante_SUP_DER;
        MoveJ SUP_DER_4,v100,z10,Ventosa\WObj:=Estante_SUP_DER;
        WaitTime 1;
        SetDO DO_02,1;
        MoveJ SUP_DER_5,v100,z10,Ventosa\WObj:=Estante_SUP_DER;
        MoveJ SUP_DER_6,v100,z10,Ventosa\WObj:=Estante_SUP_DER;
        MoveJ SUP_DER_7,v100,z10,Ventosa\WObj:=Estante_SUP_DER;
        MoveJ ReposicionamientoArriba,v100,z100,Ventosa\WObj:=Mundo;
        MoveJ ReposicionamientoDejar,v100,z100,Ventosa\WObj:=Mundo;
        WaitTime 1;
        SetDO DO_02,0;
        WaitTime 1;
        SetDO DO_01,1;
        WaitTime 1;
        SetDO DO_01,0;
        WaitTime 1;
        MoveJ ReposicionamientoArriba,v100,z100,Ventosa\WObj:=Mundo;
    ENDPROC
    PROC MED_IZQ()
        MoveJ MED_IZQ_1,v100,z10,Ventosa\WObj:=Estante_MED_IZQ;
        MoveJ MED_IZQ_2,v100,z10,Ventosa\WObj:=Estante_MED_IZQ;
        MoveJ MED_IZQ_3,v100,z10,Ventosa\WObj:=Estante_MED_IZQ;
        MoveJ MED_IZQ_4,v100,z10,Ventosa\WObj:=Estante_MED_IZQ;
        WaitTime 1;
        SetDO DO_02,1;
        MoveJ MED_IZQ_5,v100,z10,Ventosa\WObj:=Estante_MED_IZQ;
        MoveJ MED_IZQ_6,v100,z10,Ventosa\WObj:=Estante_MED_IZQ;
        MoveJ MED_IZQ_7,v100,z10,Ventosa\WObj:=Estante_MED_IZQ;
        MoveJ ReposicionamientoArriba,v100,z100,Ventosa\WObj:=Mundo;
        MoveJ ReposicionamientoDejar,v100,z100,Ventosa\WObj:=Mundo;
        WaitTime 1;
        SetDO DO_02,0;
        WaitTime 1;
        SetDO DO_01,1;
        WaitTime 1;
        SetDO DO_01,0;
        WaitTime 1;
        MoveJ ReposicionamientoArriba,v100,z100,Ventosa\WObj:=Mundo;
    ENDPROC
    PROC MED_DER()
        MoveJ MED_DER_1,v100,z10,Ventosa\WObj:=Estante_MED_DER;
        MoveJ MED_DER_2,v100,z10,Ventosa\WObj:=Estante_MED_DER;
        MoveJ MED_DER_3,v100,z10,Ventosa\WObj:=Estante_MED_DER;
        MoveJ MED_DER_4,v100,z10,Ventosa\WObj:=Estante_MED_DER;
        WaitTime 1;
        SetDO DO_02,1;
        MoveJ MED_DER_5,v100,z10,Ventosa\WObj:=Estante_MED_DER;
        MoveJ MED_DER_6,v100,z10,Ventosa\WObj:=Estante_MED_DER;
        MoveJ MED_DER_7,v100,z10,Ventosa\WObj:=Estante_MED_DER;
        MoveJ ReposicionamientoArriba,v100,z100,Ventosa\WObj:=Mundo;
        MoveJ ReposicionamientoDejar,v100,z100,Ventosa\WObj:=Mundo;
        WaitTime 1;
        SetDO DO_02,0;
        WaitTime 1;
        SetDO DO_01,1;
        WaitTime 1;
        SetDO DO_01,0;
        WaitTime 1;
        MoveJ ReposicionamientoArriba,v100,z100,Ventosa\WObj:=Mundo;
    ENDPROC
    PROC INF_DER()
        MoveJ INF_DER_1,v100,z10,Ventosa\WObj:=Estante_INF_DER;
        MoveJ INF_DER_2,v100,z10,Ventosa\WObj:=Estante_INF_DER;
        MoveJ INF_DER_3,v100,z10,Ventosa\WObj:=Estante_INF_DER;
        MoveJ INF_DER_4,v100,z10,Ventosa\WObj:=Estante_INF_DER;
        WaitTime 1;
        SetDO DO_02,1;
        MoveJ INF_DER_5,v100,z10,Ventosa\WObj:=Estante_INF_DER;
        MoveJ INF_DER_6,v100,z10,Ventosa\WObj:=Estante_INF_DER;
        MoveJ INF_DER_7,v100,z10,Ventosa\WObj:=Estante_INF_DER;
        MoveJ ReposicionamientoArriba,v100,z100,Ventosa\WObj:=Mundo;
        MoveJ ReposicionamientoDejar,v100,z100,Ventosa\WObj:=Mundo;
        WaitTime 1;
        SetDO DO_02,0;
        WaitTime 1;
        SetDO DO_01,1;
        WaitTime 1;
        SetDO DO_01,0;
        WaitTime 1;
        MoveJ ReposicionamientoArriba,v100,z100,Ventosa\WObj:=Mundo;
    ENDPROC
    PROC INF_IZQ()
        MoveJ INF_IZQ_1,v100,z10,Ventosa\WObj:=Estante_INF_IZQ;
        MoveJ INF_IZQ_2,v100,z10,Ventosa\WObj:=Estante_INF_IZQ;
        MoveJ INF_IZQ_3,v100,z10,Ventosa\WObj:=Estante_INF_IZQ;
        MoveJ INF_IZQ_4,v100,z10,Ventosa\WObj:=Estante_INF_IZQ;
        WaitTime 1;
        SetDO DO_02,1;
        MoveJ INF_IZQ_5,v100,z10,Ventosa\WObj:=Estante_INF_IZQ;
        MoveJ INF_IZQ_6,v100,z10,Ventosa\WObj:=Estante_INF_IZQ;
        MoveJ INF_IZQ_7,v100,z10,Ventosa\WObj:=Estante_INF_IZQ;
        MoveJ ReposicionamientoArriba,v100,z100,Ventosa\WObj:=Mundo;
        MoveJ ReposicionamientoDejar,v100,z100,Ventosa\WObj:=Mundo;
        WaitTime 1;
        SetDO DO_02,0;
        WaitTime 1;
        SetDO DO_01,1;
        WaitTime 1;
        SetDO DO_01,0;
        WaitTime 1;
        MoveJ ReposicionamientoArriba,v100,z100,Ventosa\WObj:=Mundo;
    ENDPROC
    !La trayectoria Piso_Subir_Asa corresponde a una primera consideración que no se llevó a cabo prácticamente, que implica subir el asa del balde 
    !para poder mover de nuevo el balde, una vez se hubiera bajado esta asa previamiente.
    PROC Piso_Subir_Asa()
        MoveJ Subiendo_Asa_1,v50,z10,Gancho\WObj:=Mundo;
        MoveJ Subiendo_Asa_2,v50,z10,Gancho\WObj:=Mundo;
        MoveJ Subiendo_Asa_3,v50,z10,Gancho\WObj:=Mundo;
        MoveJ Subiendo_Asa_4,v50,z10,Gancho\WObj:=Mundo;
        MoveJ Subiendo_Asa_5,v50,z10,Gancho\WObj:=Mundo;
    ENDPROC
    !La trayectoria Banda2Piso corresponde al movimiento del balde desde el punto donde recibe las piezas, hasta la banda.
    !Empieza por acercarce al balde en el punto 'Dejar_Balde_Piso_2', toma el balde con 'Vertical_Balde_Piso2'.
    !Con los demás puntos se traslada en el espacio hasta el punto de colocación del balde. Las instrucciones
    !'Horizontal/Vertical_Balde_Banda_2' Corresponden a cuando el balde ya se encuentra en la banda
    !Y se separa el Gancho del mismo. La instrucción termina en 'CercaBanda_2'.
    PROC Piso2Banda()
        MoveAbsJ Home,v100,z100,tool0\WObj:=wobj0;
        MoveJ Dejar_Balde_Piso_2,v100,z10,Gancho\WObj:=Mundo;
        MoveJ Vertical_Balde_Piso_2,v100,z10,Gancho\WObj:=Mundo;
        MoveJ Posicion_Intermedia_Banda2Piso_2,v100,z10,Gancho\WObj:=Mundo;
        MoveJ Vertical_Balde_Banda_2,v50,z10,Gancho\WObj:=Mundo;
        MoveJ Horizontal_Balde_Banda_2,v100,z10,Gancho\WObj:=Mundo;
        MoveJ CercaBanda_2,v100,z10,Gancho\WObj:=Mundo;
        MoveAbsJ Home,v100,z100,tool0\WObj:=wobj0;
    ENDPROC
    !Trayectoria que corresponde a superior izquierdo, derecho y medio izquierdo de la estantería
    PROC Primeros3()
        Homing;
        Banda2Piso;
        SUP_IZQ;
        SUP_DER;
        MED_IZQ;
        Piso2Banda;
    ENDPROC
    !Trayectoria que corresponde a medio derecho, inferior izquierdo y derecho de la estantería
    PROC Ultimos3()
        Homing;
        Banda2Piso;
        MED_DER;
        INF_IZQ;
        INF_DER;
        Piso2Banda;
    ENDPROC
ENDMODULE