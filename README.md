# Simple Terminal Animation

Simple terminal animation (for celebrating your friend's birthday). For documents & explanations in Chinese, see my blog post [here](https://stevehawk.tk/posts/).

## What’s the idea?

The idea of this project is to create terminal animations, using only simple CLI tools including `cowsay`, `lolcat`, `toilet` and `boxes`. Since these tools are quite easy and intuitive to use, we can just focus on the plot instead of appearance. 

So it’s most suitable to surprise friends who loves nerdy terminal style animations.

One way to use this, is putting the `A_MYSTERY_STORY.sh` file somewhere in your friend’s computer, and wait for him/her to find out. You will have to make sure the script does run on his/her computer.

Another way is to record this animation to some other forms. My solution is turning it into a SVG format animation so that it can be easily embedded in web pages, but you can definitely try video or some other kinds of format. Note that SVG animation is really demanding on both CPU and memory resources, so choose wisely.

## “A MYSTERY STORY” the story

The story is actually nowhere near “MYSTERY”, just a plain treasure hunting story based on conversations. The script of this play is basically the code (self-documenting code lol) and you could read it yourself.

For TD;LR, the story is about a cow trying to find treasures, and finally find a monolith with happy birthday carved on it. A ton of bad jokes involved.

You can use/modify my story freely if you want (it’s under GPL v3), and you can always write your own. I’ll do some explanations below about the codes.

## Requirements

cowsay

lolcat

toilet

boxes

termtosvg (Optional for recording svg)

## File structure

The file includes three part:

1. Helper functions. `snc` for sleep and clear, `bts` for animations between the scenes, `clear_stage` for clearing the stage and hiding cursor before show starts, and `clean_up` for clearing everything up and take cursor back at the end.
2. Scenes. I split them up into functions so that I can debug easily. In the scenes, basically it’s just a whole bunch of `cowsay`s. You can use `man cowsay` in terminal to view the documentation. Sometimes I use toilet to display a title or time, also `man toilet` to see how to use it. In the end I use `boxes` and `lolcat` to print the monolith in a fancy way.
3. The main function to run these scenes.

## SVG recording

I chose [termtosvg](https://github.com/nbedos/termtosvg) as my recording tool. Go check out their repo, it’s great.

The command I used to record, is

```bash
termtosvg ./A_MYSTERY_STORY.svg -c './A_MYSTERY_STORY.sh' -D 5000 -g 85x35 -m 200 -t window_frame_js
```

You might want to change some parameters based on your content. Read their documentation for more information.

Note: Set `-m` to a larger number (1 by default) can massively reduce size, thus increase SVG rendering performance.

## How to embed in Hugo

In my case, I use [Hugo](https://gohugo.io/) as my blog framework, so I only figured out how to embed it in Hugo.

Reference: https://discourse.gohugo.io/t/embedding-inline-svg-in-content-markdown/7511/7

Related documents: https://gohugo.io/functions/readfile/ , https://gohugo.io/content-management/shortcodes/

I did some modification based on this answer. First, create a folder `$HUGO_SITE/layouts/shortcodes`. `$HUGO_SITE` is the root of your site folder. Create a file `svg.html` under this folder, put these in:

```html
<figure align="center">
{{ readFile (index .Params 0) | safeHTML }}
</figure>
```

Then you can simply embed your SVG file in markdown using:

```html
{{< svg "svg/A_MYSTERY_STORY.svg" >}}
```

The string within the quotes is the path to your SVG file. Here I put it in `$HUGO_SITE/svg/A_MYSTERY_STORY.svg`, you can choose other places you prefer. Remember that the SVG file doesn’t necessarily have to be copied to `$HUGO_SITE/public` when building, because it is directly injected into the page html.