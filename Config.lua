Config = {}





Config.priceroom = 500 /* سعر الغرفة*/ 


Config.spritemap = 476  /* https://docs.fivem.net/docs/game-references/blips/ */ 
Config.reskey = 1000

Config.targetlabel = "حياك "  /* الكلام الي يطلع على البوت */ 

Config.roomlabel = "Stash"  /* الكلام الي يطلع على الخزنة */

Config.namehotel = "PRX" /* اسم الشقق*/

Config.postionbot = vector4(-661.73, -1101.98, 14.06, 163.45)  /* موقع البوت  */

Config.elevtor =
{
    {
        pos = vector4(-658.84, -1110.41, 14.06, 66.32)
    },
    {
        pos = vector4(-655.42, -1110.5, 20.83, 68.08)
    },
    {
        pos = vector4(-655.43, -1110.5, 25.6, 64.22)
    },
    {
        pos = vector4(-655.52, -1110.42, 31.37, 68.07)
    },
    {
        pos = vector4(-655.44, -1110.42, 35.14, 67.67)
    },
    {
        pos = vector4(-655.45, -1110.43, 40.91, 62.95)
    }
}


Config.rooms = {
    -- Floor 1
    [1] = {
        
        name = "room1",
        
        target = {
            coords = vector3(-660.76, -1098.25, 21.83),
            heading = 335,
            minZ = 19.43,
            maxZ = 23.43
        },
        
       
    },
    [2] = {
        name = "room2",
        
        target = {
            coords = vector3(-654.01, -1102.57, 21.83),
            heading = 335,
            minZ = 19.43,
            maxZ = 23.43
        },
        
    },
    [3] = {
        name = "room3",
        
        target = {
            coords = vector3(-656.54, -1088.57, 21.83),
            heading = 335,
            minZ = 19.43,
            maxZ = 23.43
        },
        
        
    },
    [4] = {
        name = "room4",
        target = {
            coords = vector3(-649.31, -1092.68, 21.83),
            heading = 335,
            minZ = 19.43,
            maxZ = 23.43
        },
       
       
    },
    [5] = {
        name = "room5",
     
        target = {
            coords = vector3(-644.68, -1082.75, 21.83),
            heading = 335,
            minZ = 19.43,
            maxZ = 23.43
        },
        
        
    },
    -- Floor 2
    [6] = {
        name = "room6",
        target = {
            coords = vector3(-661.04, -1098.53, 26.6),
            heading = 335,
            minZ = 24.2,
            maxZ = 28.2
        },
        
    },
    [7] = {
        name = "room7",
        target = {
            coords = vector3(-654.42, -1102.83, 26.6),
            heading = 335,
            minZ = 24.2,
            maxZ = 28.2
        },
        
    },
    [8] = {
        name = "room8",
        target = {
            coords = vector3(-656.29, -1088.11, 26.6),
            heading = 335,
            minZ = 24.2,
            maxZ = 28.2
        },
        
    },
    [9] = {
        name = "room9",
        target = {
            coords = vector3(-649.64, -1092.95, 26.6),
            heading = 335,
            minZ = 24.2,
            maxZ = 28.2
        },
        
    },
    [10] = {
        name = "room10",
        target = {
            coords = vector3(-645.02, -1082.99, 26.6),
            heading = 335,
            minZ = 24.2,
            maxZ = 28.2
        },
        
    },
    -- Floor 3
    [11] = {
        name = "room11",
        target = {
            coords = vector3(-661.01, -1098.48, 31.37),
            heading = 335,
            minZ = 28.97,
            maxZ = 32.97
        },
        
    },
    [12] = {
        name = "room12",
        target = {
            coords = vector3(-654.13, -1103.05, 31.37),
            heading = 335,
            minZ = 28.97,
            maxZ = 32.97
        },
        
    },
    [13] = {
        name = "room13",
        target = {
            coords = vector3(-656.08, -1088.23, 31.37),
            heading = 335,
            minZ = 28.97,
            maxZ = 32.97
        },
        
    },
    [14] = {
        name = "room14",
        target = {
            coords = vector3(-649.98, -1092.79, 31.37),
            heading = 335,
            minZ = 28.97,
            maxZ = 32.97
        },
       
    },
    [15] = {
        name = "room15",
        target = {
            coords = vector3(-645.14, -1082.93, 31.37),
            heading = 335,
            minZ = 28.97,
            maxZ = 32.97
        },
        
    },
    -- Floor 4
    [16] = {
        name = "room16",
        target = {
            coords = vector3(-661.18, -1098.53, 36.14),
            heading = 335,
            minZ = 33.74,
            maxZ = 37.74
        },
        
    },
    [17] = {
        name = "room17",
        target = {
            coords = vector3(-654.32, -1102.89, 36.14),
            heading = 335,
            minZ = 33.74,
            maxZ = 37.74
        },
        
    },
    [18] = {
        name = "room18",
        target = {
            coords = vector3(-656.22, -1088.16, 36.14),
            heading = 335,
            minZ = 33.74,
            maxZ = 37.74
        },
        
    },
    [19] = {
        name = "room19",
        target = {
            coords = vector3(-649.73, -1092.91, 36.14),
            heading = 335,
            minZ = 33.74,
            maxZ = 37.74
        },
        
    },
    [20] = {
        name = "room20",
        target = {
            coords = vector3(-644.89, -1082.99, 36.14),
            heading = 335,
            minZ = 33.74,
            maxZ = 37.74
        },
        
    },
    -- Floor 5
    [21] = {
        name = "room21",
        target = {
            coords = vector3(-661.12, -1098.45, 40.91),
            heading = 335,
            minZ=38.51,
            maxZ=42.51          
        },
        
    },
    [22] = {
        name = "room22",
        target = {
            coords = vector3(-654.37, -1102.86, 40.91),
            heading = 335,
            minZ=38.51,
            maxZ=42.51          
        },
        
    },
    [23] = {
        name = "room23",
        target = {
            coords = vector3(-656.08, -1088.22, 40.91),
            heading = 335,
            minZ=38.51,
            maxZ=42.51          
        },
        
    },
    [24] = {
        name = "room24",
        target = {
            coords = vector3(-649.76, -1092.92, 40.91),
            heading = 335,
            minZ=38.51,
            maxZ=42.51          
        },
        
    },
    [25] = {
        name = "room25",
        target = {
            coords = vector3(-645.0, -1083.0, 40.91),
            heading = 335,
            minZ=38.51,
            maxZ=42.51          
        },
        
    },
}


