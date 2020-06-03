Return-Path: <clang-built-linux+bncBDYJPJO25UGBB7GN4D3AKGQEKCREBYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 397FF1ED8B8
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 00:41:02 +0200 (CEST)
Received: by mail-oo1-xc39.google.com with SMTP id r24sf2355266oos.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Jun 2020 15:41:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591224061; cv=pass;
        d=google.com; s=arc-20160816;
        b=ucEUHp8urtgMEJYlZAoxGK2urDteXVdr5Pw/DRkybPw+W1KJzaTo2if73mntLoNgjk
         ldFNkLgXenacujeC0EHhLmChHYcIBrtLed87Inb2KjbECt5hgpezqqiPOPIgLTZULcFl
         zznHjM6sKNMZclFWQE0cDjofa/nLWc35yLwJ+SLTB59Csb3yDLe4ldcDTkeGJ6Pu1Rh9
         uOMBWUoWpdqoGpKeHINqI5PlZR9RRgfuetFFtmG11oCvVQk8KMyMZ/O2oR6hb3PMg9Wr
         KpVL2hnwtXINSkqQrB0cg2D7vQC/Wre4tt2IKhB/ozfuXXWs6+La9fu4PMYmOEscPwOd
         5wlA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+9eINokhKO5idDn6lm2LLwloCXqi1rM0kBABOJkGKEA=;
        b=0Ifo6ib0zPqvO1IUOj1eedTrgQC3L2mBfODD5rO4yu8QW9jF7RUY2MFsJF6TTHEErL
         0aYiHV3kez/OAugD1mUIhJcNvES5aRwadP5q+SS2LrblyIREyUe7jHmxvQBuWoRyrKtW
         iboc7Ez+Zcbq1pCv9XcGu+LCEYkeMcZB2ROsZ+eYOc4vC0icNDlnwRkrdlTCnjxn2QEb
         +Ryrdvq0fjuRuz9gYdFjGyDZaLprGDfxMaBXOf5lgBpwpT7SgjdGrtt0H+mULWGiW1An
         9U5koaF+dlHH5HFKbnW7F9FZIlseLETp76/nd5MPAsvOU60PLlvBFXNGcWLXjRyArAVP
         bNIQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=p0WBf+Nn;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=+9eINokhKO5idDn6lm2LLwloCXqi1rM0kBABOJkGKEA=;
        b=qtlIKtrfZZTmWDmdF3DiuPc3t4Oztkb/qjHTzxk1FOlxfZlqDIVBv5KEovM4kQ1EYA
         6S36/809fXb3QXpdntWtOgVKcPMTILaEFzAdHMhsyAEjrTTgWXAvfIoBD1TsrPf48wH+
         vQKH+SYfCdiWjYQqiNiQrgObiyCKpa2wiDlQvx/dok44/TfyV6q8K3cOhMWQvBjwf5bB
         mOu71WqVlCkw69OvkvnsPWl+hH6uOklPu4SLn2zG2wCJ4KhIFGM8RH/0N85sfNe7G84a
         t266+Jtf9nu4eqoEacxDMXNQkEjE93UcR/YXlcwTUU1cJAp6caRAg/tAiU05BRqDvvQh
         yGwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+9eINokhKO5idDn6lm2LLwloCXqi1rM0kBABOJkGKEA=;
        b=XWy2Lww1vkwra4x//G0p/cZEQdZBI0ttK+DIpWVkIGBbkblOCdrcLT6doTcsa/MqDN
         FwH0RDeY/VAtb+U0O1UVNJqQYFMz6D+zNFUuzaDK8GTJhfjyx5Y/Rhrx74wDmD/a+RRu
         cHSCc95LFRLmI0moldyL8+OYzYNFjegKKiuGuBVVs7yVHfxVvMXwZOSUUvfKm4XoRqzu
         8Jyb1bRUFSasbAtI/44Ln2wQsJXZ+c35zIwrb+j2t6p9JsU+hTDeSuwoXjSnAI+IymBd
         pCIMGdbcG32UOF2UbNFaUDOybw6KXOx6c7LDs+OO/XBOFukGeIAReSco271yu/FhsMQU
         9PMg==
X-Gm-Message-State: AOAM5309BQjPgWM4C8l94cEGxrRg2BZqQlVClVAqUt/ZLmx1tF2o4f7M
	BIncHmZn+OcTabX3RJcGWiQ=
X-Google-Smtp-Source: ABdhPJxmxrstIIebfjs7gJyz2nz+vTTjQgMhpy8RlWczRkFLIv9bFDcCCg9mcciCIPUQETADRDeE7Q==
X-Received: by 2002:a9d:966:: with SMTP id 93mr1686378otp.104.1591224061048;
        Wed, 03 Jun 2020 15:41:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1e19:: with SMTP id s25ls936378otr.5.gmail; Wed, 03
 Jun 2020 15:41:00 -0700 (PDT)
X-Received: by 2002:a9d:6b16:: with SMTP id g22mr1625226otp.356.1591224060695;
        Wed, 03 Jun 2020 15:41:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591224060; cv=none;
        d=google.com; s=arc-20160816;
        b=PFg0/E4nzZKNFnMf0c3kVuMVCknDWQ2tZfh4guBlStbY5ZzF4uhDAzxLX9qa76HOvT
         csHTTFRCtHZ81Sibi2XcerBK4Zx1xk3xPmuO4QqUO34CvH9bXdOmADLIM0OtgP0e+D55
         XDyr8jYrQeueTufIq97MZYySbfNqQdkXIr+SicdjFxdkPu6/aHb+3avXqbib/qLZsDrI
         aKM1EfTqFcZ0/HqQIaXc6QAo6vgMLWp3KtKK0bPKPpNlT8ATu8HgDYyfFEq4/nyfzk0D
         sL5o1SDymIMiGFAkK/ASEtjudQIUkuvh/rYMraswy3Lz0F7cl9pPeRLvwAvbV5JfIQnH
         f6gQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=ufYwZCJ7KIbZq0ws3/zOEeGRtBm5Hwpww9wgL6kpzDk=;
        b=IzytxIJDJ/Ll2bW5tRDexB79VHKH6PRpHPn6Xw9SJWS1sM2WTFRS9xAkTg8SvOQxC1
         nXUQis/cl/chHJubrtupRBoBznvaRAr9hYBfTrztHMcgQbQAJbXQfz/u21P5safGD72F
         4L7ewpql9jSRjfr152cHV9dFlNg2X98gGGOYnxvNQGayXHcN1wpGD2mW73sYTaDtMyxu
         CsVSm1ja//l9EK9gZCpfFQw8Us24nqU580tLks+cP6EybV0aQWqqD3CLdWhtWTww6Lp9
         5uFFGey27K9tiradunMe3ww8w8RSzZqW8NFWFJrtwCP0qGDOkXyFi6dqap1NyQ3NlVCL
         ztxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=p0WBf+Nn;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id d25si172899ooa.1.2020.06.03.15.41.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Jun 2020 15:41:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id n9so1343439plk.1
        for <clang-built-linux@googlegroups.com>; Wed, 03 Jun 2020 15:41:00 -0700 (PDT)
X-Received: by 2002:a17:90a:e2c4:: with SMTP id fr4mr2457676pjb.32.1591224059734;
 Wed, 03 Jun 2020 15:40:59 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8P3a1BYXSHmX_sAFEFH8j2ou6swf8Kts5+ryqo4dk3eOTSJw@mail.gmail.com>
In-Reply-To: <CAK8P3a1BYXSHmX_sAFEFH8j2ou6swf8Kts5+ryqo4dk3eOTSJw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 3 Jun 2020 15:40:47 -0700
Message-ID: <CAKwvOdmP_K=s1O1kT23aKBDgq8eA07=qTjSHUo=cRZQo9qDP0A@mail.gmail.com>
Subject: Re: irc discussion with mauro
To: Arnd Bergmann <arnd@arndb.de>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=p0WBf+Nn;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

On Wed, Jun 3, 2020 at 12:32 PM Arnd Bergmann <arnd@arndb.de> wrote:
>
> <mchehab> Mauro Carvalho Chehab hi, today, I found one issue
> initializing static structs with clang...
> 7:49 PM basically, doing things like:
> 7:49 PM const struct foo foo;
> 7:50 PM const struct bar { .foo =3D foo } ;
> 7:50 PM causes Clang to crash
> 7:51 PM drivers/staging/media/atomisp/pci/sh_css_pipe.c:24:12: error:
> initializer element is not a compile-time constant
> 7:51 PM         .info                   =3D ia_css_binary_default_frame_i=
nfo,
> 7:51 PM                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~
> 7:51 PM any ideas?
> 7:51 PM same code works fine with gcc
> 7:51 PM the actual structs are:
> 7:51 PM const struct ia_css_frame_info ia_css_binary_default_frame_info =
=3D {
> 7:51 PM .format =3D IA_CSS_FRAME_FORMAT_NUM,
> 7:51 PM .raw_bayer_order =3D IA_CSS_BAYER_ORDER_NUM,
> 7:51 PM };
> 7:51 PM const struct ia_css_frame ia_css_default_frame =3D {
> 7:51 PM .info =3D ia_css_binary_default_frame_info,
> 7:51 PM .dynamic_queue_id =3D SH_CSS_INVALID_QUEUE_ID,
> 7:51 PM .buf_type =3D IA_CSS_BUFFER_TYPE_INVALID,
> 7:51 PM .flash_state =3D IA_CSS_FRAME_FLASH_STATE_NONE,
> 7:51 PM };
> 7:52 PM =EF=BF=BC<arnd> Arnd Bergmann mchehab: I've tried reproducing the
> problem on https://godbolt.org/z/YfbMBF
> 7:52 PM but that example seems to work
> 7:52 PM ah, it doesn't work outside of a structure, because clang does
> not consider the initializer constant
> 7:52 PM https://godbolt.org/z/NLabHJ
> 7:53 PM mchehab: can you move the two into a function body?
> 7:53 PM M<mchehab> Mauro Carvalho Chehab it can be done... it will be
> *a lot* of work
> 7:54 PM =EF=BF=BC<arnd> Arnd Bergmann ah, it's still broken when they are
> 'static const', and just making them 'const' but not 'static is what
> caused the original problem
> 7:54 PM M<mchehab> Mauro Carvalho Chehab (I actually tried, but it
> also is complaining the way I'm doing)
> 7:55 PM =EF=BF=BC<arnd> Arnd Bergmann mchehab: I suppose you are doing th=
is in
> part because you want to avoid the macros, correct?
> 7:55 PM M<mchehab> Mauro Carvalho Chehab yeah, that macros are really ugl=
y.
> 7:55 PM the code is now a lot easier to read and understand
> 7:55 PM IMO
> 7:55 PM but the thing is that the macros caused a breakage on gcc
> 7:56 PM after your patch
> 7:56 PM =EF=BF=BC<arnd> Arnd Bergmann would it be possible to have one fu=
lly
> initialized 'static const' structure, and then just memcpy() the parts
> you really need in that function?
> 7:56 PM M<mchehab> Mauro Carvalho Chehab with your patch, gcc was
> complaining that the initializer were not const :-p
> 7:57 PM yeah, I guess. There are dozens of copies of the same things
> 7:57 PM 16 copies of ia_css_binary_default_frame_info
> 7:58 PM 15 copies of ia_css_binary_default_settings
> 7:58 PM 9 copies of ia_css_binary_default_frame_info
> 7:58 PM 6 copies of ia_css_default_frame
> 7:59 PM and 1 copy of ia_css_default_preview_settings
> 7:59 PM (I may have missed something)
> 7:59 PM it will be a lot of coding for something that, IMHO, the
> compiler should do automatically
> 8:01 PM IMO, there's an issue with clang, as there's nothing wrong
> initializing vars like that
> 8:02 PM the compiler knows already how do to that, as it does this
> replacement when macros are used
> 8:02 PM =EF=BF=BC<arnd> Arnd Bergmann mchehab: so you basically need some=
thing
> that would make https://godbolt.org/z/Z6NDnD work on clang without
> adding macros or duplicating the same thing for each member of 'b',
> right?
> 8:03 PM M<mchehab> Mauro Carvalho Chehab yes
> 8:03 PM for now, I'm thinking of eventually add something like:
> 8:03 PM #ifdef __clang_
> 8:03 PM /* ugly macros */
> 8:03 PM #else
> 8:03 PM /* nice consts */
> 8:03 PM #endif
> 8:04 PM =EF=BF=BC<arnd> Arnd Bergmann I wonder if the gcc behavior is sta=
ndard
> C, but I guess it's a GNU extension that clang is missing, either
> intentionally or because it has never been needed

IIRC, this sounds like something I've looked into.
https://reviews.llvm.org/D76096
Basically the C standard has some curious language that doesn't
precisely nail down what a constant expression is.  There's some
pushback because evaluating whether every element of an array or every
member of a record for large arrays/records recursively is potentially
expensive.

> 8:04 PM M<mchehab> Mauro Carvalho Chehab yeah, that's a good question
> 8:04 PM =EF=BF=BC<arnd> Arnd Bergmann nathanchancellor, do you remember a=
 bug
> with code like that?
> 8:09 PM mchehab: fwiw, the version from my patch could be fixed by
> turning the constructor into a normal initialization, see
> https://godbolt.org/z/XeZSYf
> 8:09 PM gcc accepts the initialization from line 22 but not the one from =
25
> 8:10 PM clang rejects the one from line 12, but doesn't complain about
> the other two
> 8:10 PM but that won't help you kill off the macros
> 8:11 PM M<mchehab> Mauro Carvalho Chehab what do you mean? on the
> example you pointed, both gcc and clang didn't compile (for different
> reasons)
> 8:12 PM =EF=BF=BC<arnd> Arnd Bergmann right, each compiler complained abo=
ut
> one of the three versions but not the other two
> 8:15 PM oh, actually gcc only complains one corner case in
> https://godbolt.org/z/vEMBXA
> 8:16 PM M<mchehab> Mauro Carvalho Chehab arnd: with your patch applied
> as-is (without mine), gcc 10 produce those errors:
> 8:16 PM In file included from
> ./drivers/staging/media/atomisp//pci/runtime/debug/interface/ia_css_debug=
.h:31,
> 8:16 PM                  from drivers/staging/media/atomisp/pci/sh_css.c:=
41:
> 8:16 PM drivers/staging/media/atomisp/pci/sh_css.c: In function
> =E2=80=98init_pipe_defaults=E2=80=99:
> 8:16 PM ./drivers/staging/media/atomisp//pci/ia_css_pipe.h:161:1:
> error: initializer element is not constant
> 8:16 PM   161 | (struct ia_css_pipe) { \
> 8:16 PM       | ^
> 8:16 PM it sounds that gcc doesn't accept the macros in runtime
> 8:17 PM =EF=BF=BC<arnd> Arnd Bergmann so "static const struct b =3D (stru=
ct b) {
> .a =3D { 1} };" is fine, "static const struct b =3D { .a =3D (struct a) {=
 1}
> };" is also good, but  "static const struct b =3D (struct b){ .a =3D
> (struct a) { 1} };" is something that gcc doesn't like
> 8:19 PM It looks like both gcc and clang are inconsistent in their own
> behavior and unhelpful, but also different for this ;-)
> 8:19 PM M<mchehab> Mauro Carvalho Chehab yep
> 8:19 PM finding something that would work for both seems tricky
> 8:21 PM removing const didn't work either (gcc):
> 8:21 PM static struct ia_css_pipe default_pipe =3D IA_CSS_DEFAULT_PIPE;
> 8:21 PM =EF=BF=BC<arnd> Arnd Bergmann I think my version would work on bo=
th if
> you just remove the "(struct foo)" things in the macros, but I agree
> that your version looks much nicer for gcc
> 8:23 PM https://www.irccloud.com/pastebin/vnbP1e7l/
>  Plain Text =E2=80=A2 14 lines raw | =EF=BF=BCline numbers
> =EF=BF=BC
> 4
> 5
> 6
> 7
> 8
> 9
> 10
> 11
> 12
> 13
> 14
> 15
> +++ b/drivers/staging/media/atomisp/pci/ia_css_pipe.h
> @@ -156,8 +156,7 @@ struct ia_css_pipe {
>     unsigned int pipe_num;
>  };
>
> -#define IA_CSS_DEFAULT_PIPE \
> -(struct ia_css_pipe) { \
> +#define IA_CSS_DEFAULT_PIPE { \
>     .config         =3D DEFAULT_PIPE_CONFIG, \
>     .info           =3D DEFAULT_PIPE_INFO, \
>     .mode           =3D IA_CSS_PIPE_ID_ACC, /* (pipe_id) */ \
> 8:25 PM mchehab: I should probably also open a bug against the
> excessive stack usage on clang, but it's most likely one that has
> already been reported
> 8:26 PM M<mchehab> Mauro Carvalho Chehab yeah, I'm trying this right now
> 8:30 PM =EF=BF=BC<arnd> Arnd Bergmann mchehab: I've pulled in your latest=
 git
> version into my randconfig tree now, maybe I see some other solution
> 8:31 PM M<mchehab> Mauro Carvalho Chehab i'll likely rebase it once I
> get the right patch, in order to avoid compilation breakages for clang
> 8:31 PM (this is not my main tree, so I can rebase without much troubles)
> 8:34 PM <arnd> Arnd Bergmann mchehab: with your media-next master
> branch pulled into linux-next, I see another unrelated build failure
> on x86 allmodconfig:
> "drivers/staging/media/atomisp/pci/hmm/hmm_bo.c:899:26: error: no
> member named 'mmap_sem' in 'struct mm_struct'"
> 8:36 PM M<mchehab> Mauro Carvalho Chehab weird
> 8:37 PM =EF=BF=BC<arnd> Arnd Bergmann ah: 9ebb13bcfe93 ("mmap locking API=
:
> rename mmap_sem to mmap_lock")
> 8:38 PM M<mchehab> Mauro Carvalho Chehab ok, so indeed unrelated
> 8:39 PM probably the right solution would be to cherry-pick it from
> next and apply a fix for it
> 8:39 PM =EF=BF=BC<arnd> Arnd Bergmann https://www.irccloud.com/pastebin/D=
xHVgQvz/
>  Plain Text =E2=80=A2 57 lines raw | =EF=BF=BCline numbers
> =EF=BF=BC
> 12
> 13
> 14
> 15
> 16
> 17
> 18
> 19
> 20
> 21
> 22
>  #endif /* __IA_CSS_PIPE_H__ */
> diff --git a/drivers/staging/media/atomisp/pci/sh_css.c b/drivers
> /staging/media/atomisp/pci/sh_css.c
> index e193caa5628f..a6d654f77d52 100644
> --- a/drivers/staging/media/atomisp/pci/sh_css.c
> +++ b/drivers/staging/media/atomisp/pci/sh_css.c
> @@ -8782,7 +8782,7 @@ sh_css_init_host_sp_control_vars(void) {
>  void ia_css_pipe_config_defaults(struct ia_css_pipe_config
> *pipe_config)
>  {
>         ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE,
> "ia_css_pipe_config_defaults()\n");
> -       *pipe_config =3D ia_css_default_pipe_config;
> 8:40 PM this takes care of one of the errors without making the code any =
worse
> 8:41 PM M<mchehab> Mauro Carvalho Chehab arnd: I tried this
> approach.... I stopped when the size of the code bumped to 500+ lines
> 8:41 PM and there were still a lot of replacements to do
> 8:42 PM removing (struct foo) seemed to work, but I got this:
> 8:42 PM drivers/staging/media/atomisp/pci/sh_css.c: In function
> =E2=80=98ia_css_pipe_config_defaults=E2=80=99:
> 8:42 PM ./drivers/staging/media/atomisp//pci/ia_css_pipe_public.h:152:29:
> error: expected expression before =E2=80=98{=E2=80=99 token
> 8:42 PM   152 | #define DEFAULT_PIPE_CONFIG { \
> 8:42 PM       |                             ^
> 8:42 PM drivers/staging/media/atomisp/pci/sh_css.c:8784:17: note: in
> expansion of macro =E2=80=98DEFAULT_PIPE_CONFIG=E2=80=99
> 8:42 PM  8784 |  *pipe_config =3D DEFAULT_PIPE_CONFIG;
> 8:42 PM       |                 ^~~~~~~~~~~~~~~~~~~
> 8:43 PM after this patch https://pastebin.com/ANvNLNpa
> =EF=BF=BC
> 8:43 PM (and your patch applied as-is without my patches)
> 8:44 PM =EF=BF=BC<arnd> Arnd Bergmann you still need to replace the "
> *pipe_config =3D DEFAULT_PIPE_CONFIG" with a memcpy() as I did in my
> patch then
> 8:44 PM or "*pipe_config =3D default_pipe"
> 8:47 PM mchehab: you can also decide to keep the macros but make them
> all local to drivers/staging/media/atomisp/pci/sh_css_pipe.c and then
> memcpy from there
> 8:48 PM M<mchehab> Mauro Carvalho Chehab yeah, but this would be a
> cleanup... let me first find a solution for it to work with both clang
> and gcc ;-)
> 8:59 PM worked for gcc
> 8:59 PM and for llvm
> 9:01 PM the change should be merged with your patch, as otherwise it
> will fail build for llvm
> 9:02 PM complete patch: https://pastebin.com/YvDcDZA9
> =EF=BF=BC
> 9:02 PM I added myself as co-authored-by
> 9:05 PM if ok for you ;-)
> 9:13 PM =EF=BF=BC<arnd> Arnd Bergmann mchehab: ok, looks good
> 9:13 PM M<mchehab> Mauro Carvalho Chehab testing on the hardware... it
> shouldn't have broken anything, hopefully ;-)
> 9:15 PM I'll keep the static vars where they are, and just remove the
> sh_css_pipe.c file (currently, it doesn't have anything but comments)
> 9:15 PM worked
> 9:16 PM thanks for the help and for the patches
> 9:16 PM btw, I removed the ugly warning disable logic from atomisp's Make=
file
> 9:16 PM it is compiling without warnings here with both gcc and clang now
> 9:17 PM (with the config that it is needed for it to run at the
> hardware - and with allmodconfig - didn't test with randconfigs)
> 9:38 PM =E2=86=92 behanw joined  =E2=87=90 enriooooooo quit



--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdmP_K%3Ds1O1kT23aKBDgq8eA07%3DqTjSHUo%3DcRZQo9qDP0A=
%40mail.gmail.com.
