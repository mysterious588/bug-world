--
-- Project: bug world
-- Description: 
--
-- Version: 1.0
-- Managed with http://CoronaProjectManager.com
--
-- Copyright 2015 . All Rights Reserved.
-- 


local num=0
local physics=require ( "physics" )
physics.start(  )
local background
local halfW=display.contentWidth*.5
local halfH=display.contentHeight*.5
local centerX=display.contentCenterX
local centerY=display.contentCenterY

local function main()
background=display.newImageRect( "background.png",halfW*2,halfH*2  )
background.x=centerX
background.y=centerY
title()
end
function title()
	 title =display.newText(  "BUgs World", centerX, centerY, Helvetica, 20)
	title.x=centerX
	title.y=centerY
	title.alpha=0
 title:addEventListener ( "tap", start )
	trans1()
end

	function trans1 ()
			transition.to ( title, {alpha=1,time=1000,onComplete=trans2} )
	
	end

	function trans2()
		transition.to ( title, {alpha=0,time=200 ,onComplete=trans3})
	end
	function trans3()
		transition.to ( title, {alpha=1,time=400 ,onComplete=trans4})
		num = num+1
	end
	function trans4()
		transition.to ( title, {delay=2000,alpha=.3,time=1000 })
	end
	function start()
		
		 title:removeSelf()
		 background:removeSelf()
		 local floor=display.newImage( "floor.png" )
		 floor.x = centerX; floor.y = 320;
		  local floor2=display.newImage( "floor.png" )
		 floor2.x = 490; floor2.y = 300;
		 floor2:rotate( 90 )
		 	  local floor3=display.newImage( "floor.png" )
		 floor3.x = -10; floor3.y = 200;
	 floor3:rotate(90 )
	 local floor4=display.newImage( "floor.png" )
		 floor4.x = centerX; floor4.y = 0;
	floor.alpha=0
	floor2.alpha=0
	floor3.alpha=0
	floor4.alpha=0
	
		--a
		        txta=display.newText( "a ",centerX,centerY,arial,20 )
		txta.x=math.random (display.contentWidth)
        txta.y=math.random(display.contentHeight)
        --b
		txtb=display.newText( "b ",centerX,centerY,arial,20 )
		txtb.x=math.random (display.contentWidth)
        txtb.y=math.random(display.contentHeight)
       --c
              txtc=display.newText( "c",centerX,centerY,arial,20 )
		txtc.x=math.random (display.contentWidth)
        txtc.y=math.random(display.contentHeight)
--d
        txtd=display.newText( "d",centerX,centerY,arial,20 )
		txtd.x=math.random (display.contentWidth)
        txtd.y=math.random(display.contentHeight)
        --e
                txte=display.newText( "e ",centerX,centerY,arial,20 )
		txte.x=math.random (display.contentWidth)
        txte.y=math.random(display.contentHeight)
        --f
        txtf=display.newText( "f ",centerX,centerY,arial,20 )
		txtf.x=math.random (display.contentWidth)
        txtf.y=math.random(display.contentHeight)
        --g
        txtg=display.newText( "g ",centerX,centerY,arial,20 )
		txtg.x=math.random (display.contentWidth)
        txtg.y=math.random(display.contentHeight)
        --h
        txth=display.newText( "h ",centerX,centerY,arial,20 )
		txth.x=math.random (display.contentWidth)
        txth.y=math.random(display.contentHeight)
        --i
        txti=display.newText( "i ",centerX,centerY,arial,20 )
		txti.x=math.random (display.contentWidth-50)
        txti.y=math.random(display.contentHeight-50)
        --j
        txtj=display.newText( "j",centerX,centerY,arial,20 )
		txtj.x=math.random (display.contentWidth-50)
        txtj.y=math.random(display.contentHeight-50)
        --k
        txtk=display.newText( "k ",centerX,centerY,arial,20 )
		txtk.x=math.random (display.contentWidth-50)
        txtk.y=math.random(display.contentHeight-50)
        --l
        txtl=display.newText( "l ",centerX,centerY,arial,20 )
		txtl.x=math.random (display.contentWidth-50)
        txtl.y=math.random(display.contentHeight-50)
        --m
        txtm=display.newText( "m",centerX,centerY,arial,20 )
		txtm.x=math.random (display.contentWidth-50)
        txtm.y=math.random(display.contentHeight-50)
        --n
        txtn=display.newText( "n",centerX,centerY,arial,20 )
		txtn.x=math.random (display.contentWidth-50)
        txtn.y=math.random(display.contentHeight-50)
        --o
        txto=display.newText( "o",centerX,centerY,arial,20 )
		txto.x=math.random (display.contentWidth-50)
        txto.y=math.random(display.contentHeight-50)
        --p
        txtp=display.newText( "p ",centerX,centerY,arial,20 )
		txtp.x=math.random (display.contentWidth-50)
        txtp.y=math.random(display.contentHeight-50)
        --q
        txtq=display.newText( "q ",centerX,centerY,arial,20 )
		txtq.x=math.random (display.contentWidth-50)
        txtq.y=math.random(display.contentHeight-50)
        --r
        txtr=display.newText( "r",centerX,centerY,arial,20 )
		txtr.x=math.random (display.contentWidth-50)
        txtr.y=math.random(display.contentHeight-50)
        --s
        txts=display.newText( "s ",centerX,centerY,arial,20 )
		txts.x=math.random (display.contentWidth-50)
        txts.y=math.random(display.contentHeight-50)
        --group
        local group=display.newGroup ( )
        group:insert(txta)
        group:insert(txtb)
        group:insert(txtc)
        group:insert(txtd)
        group:insert(txte)
        group:insert(txtf)
        group:insert(txtg)
        group:insert(txth)
        group:insert(txti)
        group:insert(txtj)
        group:insert(txtk)
        group:insert(txtl)
        group:insert(txtm)
        group:insert(txtn)
        group:insert(txto)
        group:insert(txtp)
        group:insert(txtq)
        group:insert(txtr)
        group:insert(txts)
        group.alpha=1
      
        
        --end of the group
        
        physics.addBody ( txta,{bounce=1})
        physics.addBody ( txtb,{bounce=1})
        physics.addBody ( txtc,{bounce=1})
        physics.addBody ( txtd,{bounce=1})
        physics.addBody ( txte,{bounce=1})
        physics.addBody ( txtf,{bounce=1})
        physics.addBody ( txtg,{bounce=1})
        physics.addBody ( txth,{bounce=1})
        physics.addBody ( txti,{bounce=1})
        physics.addBody ( txtj,{bounce=1}) 
        physics.addBody ( txtk,{bounce=1})
        physics.addBody ( txtl,{bounce=1})
        physics.addBody ( txtm,{bounce=1})
        physics.addBody ( txtn,{bounce=1})
        physics.addBody ( txto,{bounce=1})
        physics.addBody ( txtp,{bounce=1})
        physics.addBody ( txtq,{bounce=1})
        physics.addBody ( txtr,{bounce=1})
        physics.addBody ( txts,{bounce=1})
        physics.addBody( floor, "static", { friction=0.5, bounce=1 } )
        physics.addBody( floor2, "static", { friction=0.5, bounce=1 } )
        physics.addBody( floor3, "static", { friction=0.5, bounce=1 } )
        physics.addBody( floor4, "static", { friction=0.5, bounce=1 } )
        group:addEventListener ( "touch", move )
        timer.performWithDelay ( 1500, nice ,1 )
        timer.performWithDelay ( 1500, nicer ,1 )
	end
	function nicer()
	    physics.removeBody( txth )
		physics.removeBody( txti )
		physics.removeBody( txtj )
		physics.removeBody( txtk )
		physics.removeBody( txtl )
		physics.removeBody( txtm )
		physics.removeBody( txtn)
	

		transition.to ( txth, {x=308,rotation=0} )
		transition.to ( txti, {x=309,rotation=0} )
		transition.to ( txtj, {x=310,rotation=0} )
		transition.to ( txtk, {x=311,rotation=0} )
		transition.to ( txtl, {x=312,rotation=0} )
		transition.to ( txtm, {x=313,rotation=0 })
		transition.to ( txtn, {x=314,rotation=0} )
		
	end
	function nice ()
		physics.removeBody( txta )
		physics.removeBody( txtb )
		physics.removeBody( txtc )
		physics.removeBody( txtd )
		physics.removeBody( txte )
		physics.removeBody( txtf )
		physics.removeBody( txtg )
	

		transition.to ( txta, {x=1,rotation=0} )
		transition.to ( txtb, {x=2,rotation=0} )
		transition.to ( txtc, {x=3,rotation=0} )
		transition.to ( txtd, {x=4,rotation=0} )
		transition.to ( txte, {x=5,rotation=0} )
		transition.to ( txtf, {x=6 ,rotation=0})
		transition.to ( txtg, {x=7,rotation=0} )
		
	end
	function move(event)
		local obj =event.target
		obj.alpha=obj.alpha-.1
		if obj.alpha==0 then 
			level1()
		end
		
	end
	function level1 ()
		txtwin=display.newText( "congartz",centerX,centerY,arial,20 )
		txtwin.x=centerX
        txtwin.y=centerY
	end
main()

	