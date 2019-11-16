#!/bin/bash
# Requirements: cowsay, lolcat, toilet, boxes, termtosvg
# termtosvg command to record: termtosvg ./A_MYSTERY_STORY.svg -c './A_MYSTERY_STORY.sh' -D 5000 -g 85x35 -m 200 -t window_frame_js

# =============== Helper functions below ===============

# Sleep and clear
snc(){
	sleep $1
	clear
}

# Between the scenes
_bts(){
	for(( i = 1; i <= 20; i = i + 1 ))
	do
		echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
	done
}
bts(){
	# _bts | lolcat -a -d 1 -s 50 -F 0.4
	_bts | lolcat -F 0.4
	sleep 1
	tput civis
	clear
}

# Pre scene clear stage
clear_stage(){
	tput civis
	clear
}

# Post scene clean up
clean_up(){
	tput cnorm
	clear
}

# =============== Helper functions above ===============
# =============== Scenes functions below ===============

pre_scene_one(){
	echo
	echo
	toilet -f pagga A MYSTERY STORY
	snc 5
}

scene_one(){
	cowsay -f moose Yooooo look who\'s back !!
	snc 2
	cowsay -f moofasa Ohhhh it\'s the cow !
	snc 2
	cowsay -f cock Didn\'t he go to the mystery place ? Did he find the treasures ?
	snc 3
	cowsay -w Heeeeey guuuuys ! I found the treasures !!!
	snc 3
	cowsay -f moofasa What !
	snc 1
	cowsay -f cock Really !
	snc 1
	cowsay -f moose What happened ?
	snc 1
	cowsay -w Easy guys
	snc 2
	cowsay Let me tell you what happened.
	snc 3
}

pre_scene_two(){
	bts
	echo
	toilet -f pagga Two and a half
	toilet -f pagga trillion
	toilet -f pagga years ago
	snc 5
}

scene_two(){
	cowsay -g I need to find the treasures !
	snc 2
	cowsay -w Let me go find \'em !
	snc 2
	cowsay -e '??' But where should I go ?
	snc 2
	cowsay ...
	snc 4
	cowsay -w Let\' s go to the mountains ! There must be some treasures !
	snc 3

	echo
	echo
	toilet -f future Two days later...
	snc 3

	cowsay -t I\'m finally on the mountain !
	snc 2
	cowsay -g Any TREASURES ??
	snc 2
	cowsay -f daemon Hold on there ! What are you doing here ?
	snc 3
	cowsay -p WOAH WOAH WOAH easy buddy !
	snc 2
	cowsay I\'m here to look for treasures !
	snc 2
	cowsay Do you know where are the treasures ?
	snc 3
	cowsay -f daemon Well, draw me something.
	snc 2
	cowsay -f daemon If I can\'t tell what it is,
	snc 2
	cowsay -f daemon I will tell you where are the treasures.
	snc 3
	cowsay -e '??' wtf...
	snc 1
	cowsay All right all right, let me see.
	snc 2
	cowsay ....
	snc 4
	cowsay Here ! Guess what is this.
	snc 2
	cowsay -f elephant-in-snake what\'s this | head -n 10
	snc 4
	cowsay -f daemon Hahaha easy peasy ! It is a hat !
	snc 3
	cowsay -e '!!' NOOOOO you are WRONG !
	snc 2
	# Credit: The Little Prince
	cowsay It\'s an elephant inside a snake !
	snc 3
	cowsay -f daemon OK. I lose. But I don\'t know where are the treasures.
	snc 4
	cowsay -f daemon May be you can ask GOD.
	snc 2
	cowsay -f daemon Go all the way to the east, cross the river, 
	snc 3
	cowsay -f daemon then walk down the river, you will find GOD.
	snc 3
	cowsay Alright then, thank you daemon !
	snc 3

	echo
	echo
	toilet -f future A hundred years later...
	snc 3

	cowsay -w Oh this looks like the river !
	snc 2
	cowsay -f duck Quack Quack
	snc 2
	cowsay There are ducks ! Cool
	snc 2
	cowsay Let\'s cross the river then.
	snc 2

	echo
	echo
	toilet -f future Five minutes later...
	snc 3

	cowsay -f www Good lord that\'s a deep river !
	snc 2
	cowsay Anyway let\'s walk down the river to find GOD !
	snc 3

	echo
	echo
	toilet -f future Three months later...
	snc 3

	cowsay -f cheese Hold on there ! Who are you ? Why are you here ?
	snc 4
	cowsay -w Oh are you GOD ?
	snc 2
	cowsay -f gnu Yes I am. I am GOD.
	snc 2
	cowsay -w WOW you can change appearance ?
	snc 2
	cowsay -f milk Yes I can be EVERYTHING, and I can do EVERYTHING.
	snc 3
	cowsay WOW then you are GOD no doubt.
	snc 2
	cowsay -g Can you tell me where are the treasures?
	snc 3
	cowsay -f pony Sure. But first, I have a challenge for you.
	snc 3
	cowsay -f unipony Ask me a question that I can\'t solve.
	snc 3
	cowsay -f snowman Remember, I am GOD, I know EVERYTHING.
	snc 3
	cowsay Ok...
	snc 2

	think(){
		cowsay -e 'ab' Let me think.
		snc 0.6
		cowsay -e 'bc' Let me think.
		snc 0.6
		cowsay -e 'cd' Let me think.
		snc 0.6
		cowsay -e 'd1' Let me think.
		snc 0.6
		cowsay -e '12' Let me think.
		snc 0.6
		cowsay -e '23' Let me think.
		snc 0.6
		cowsay -e '34' Let me think.
		snc 0.6
		cowsay -e '4a' Let me think.
		snc 0.6
	}
	think
	think

	cowsay Ok GOD. Let me ask you.
	snc 2
	cowsay Since you can do EVERYTHING, 
	snc 2
	cowsay Can you create a stone SO HEAVY that you can\'t lift it YOURSELF ?
	snc 5
	cowsay -f stegosaurus How dare you !!
	snc 2
	cowsay -f stegosaurus ...
	snc 2
	cowsay -f turkey Ok cow, you won.
	snc 2
	cowsay -f turtle Go all the way south, there is a huge pit.
	snc 3
	cowsay -f cheese There are treasures there.
	snc 2
	cowsay -g Got it ! Thanks GOD !
	snc 3

	echo
	echo
	toilet -f future Seven billion years later...
	snc 3

	cowsay -t Ohhhhh that has been such a trip...
	snc 2
	cowsay -t Why there is no sign of destination...
	snc 2
	cowsay -w Wait what\'s that ?
	snc 2
	cowsay -w It\'s the pit !!! It\'s the pit !!!!!
	snc 3
	cowsay Finally I\'m here !!!!
	snc 2
	cowsay Let\'s go in.
	snc 2

	echo
	echo
	toilet -f future Thirty six seconds later...
	snc 3

	cowsay -g I\'m in !! Where are the treasures ???
	snc 3
	cowsay -f dragon-and-cow Woah who are you ??
	snc 4
	cowsay Easy dragon ! I\'m cow.
	snc 2
	cowsay I come all the way here to find treasures.
	snc 3
	cowsay -f dragon Well then you are in the right place.
	snc 3
	cowsay -f dragon I have the treasure you want, but you have to pass this challenge.
	snc 4
	cowsay -f dragon What\'s the Answer to the Ultimate Question of Life, the Universe, and Everything ?
	snc 6
	cowsay ...
	snc 2
	cowsay Let me see...
	snc 4
	cowsay ...
	snc 3

	echo
	echo
	toilet -f future Eight and a quarter
	toilet -f future centuries later...
	snc 5

	cowsay ...
	snc 3

	echo
	echo
	toilet -f future 9 3/4 billion years later...
	snc 5

	cowsay ...
	snc 3

	echo
	echo
	toilet -f future Four point six eternities
	toilet -f future later...
	snc 5

	cowsay ...
	snc 3

	echo
	echo
	toilet -f future One second later...
	snc 5

	cowsay -w I know !!
	snc 2
	cowsay -e '42' It\'s 42 !!!
	snc 3
	cowsay -f dragon OMG ! You solved it !
	snc 3
	cowsay -f dragon You shall get the treasures !
	snc 3
	cowsay -w YEAHHHHHHHH !!!
	snc 3
}

pre_scene_three(){
	bts
	echo
	echo
	toilet -f pagga Present
	snc 5
}

scene_three(){
	cowsay -f moose Wow that is a hell of story !
	snc 2
	cowsay -f moofasa True
	snc 2
	cowsay -f cock So what are the treasures ?
	snc 3
	cowsay Well, there are a lot of jewel and gold.
	snc 3
	cowsay But dragon told me, beyond all of that
	snc 3
	cowsay The most valuable treasure is a Monolith.
	snc 3
	cowsay -f moofasa Is there anything on the monolith ?
	snc 2
	cowsay Yes.
	snc 2
	cowsay Hereby I introduce you
	snc 3
	cowsay To the monolith:
	snc 3
	toilet -f ivrit Happy Birthday \ My Friend ! | boxes -d cat -a hc -p h2 | lolcat -a -d 3 -s 30 -F 0.2
	tput civis
	snc 10
}

# =============== Scenes functions above ===============

show(){
	clear_stage
	pre_scene_one
	scene_one
	pre_scene_two
	scene_two
	pre_scene_three
	scene_three
	clean_up
}
show
