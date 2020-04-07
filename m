Return-Path: <clang-built-linux+bncBCXKBPVPXAFRBAUEWP2AKGQEHXH4UWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-f55.google.com (mail-wr1-f55.google.com [209.85.221.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A2D71A1352
	for <lists+clang-built-linux@lfdr.de>; Tue,  7 Apr 2020 20:10:11 +0200 (CEST)
Received: by mail-wr1-f55.google.com with SMTP id t25sf2402260wrb.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 07 Apr 2020 11:10:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586283011; cv=pass;
        d=google.com; s=arc-20160816;
        b=TPaKXPgdIGaPKCs4jgH8NKyjwTnMJOb84Q84mlFJpU3RPXmlKaRe3wOOLo158EEpIC
         q9BdLet20BMYFsMuIt80tstjdkYKA5RmhbetbqUkIogLbn3U59B4RfgMzsbLxq388T+u
         AqIEXgM2ekzMOloAS3BO7qcRFaKRMScUnVrJNedGZ2atw56B837b9LdMUeyNV5epHRbR
         t952EhqCIOaGLXXtn8pFBPMXjtyKi518gaCK/I82lJO7+A5rj+iKDVq5XRwIBuzHvw8G
         P1rqFlIoT0GxXto4dFpR5ngVcOYiq3LYC8HlTWhkthA/zT21TB/Xoro1Kn53b5/SjZZO
         uPag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:sender:date;
        bh=arb8aR26mM0MZiLR63te3EizaLEY86/NQqMGhGW+gpA=;
        b=AKLv94pnQDQDtO1Q4MR+knH0Kf4xewdkQzDEBUoUmB91CyiHOdXvD6k2++1phN18rz
         5o5yjf9pR0dueEii+gLk/sAD5rsi2DENv1p4C/ckK9lmv9Wbb+HNdVUWDwxbppqIHZ5P
         7j17ByvfQVSaVQDzWLFYoR8I9MfNjdF3QgTc4f++zYuIvYqfcGTbveEqgtgkEaS4jqrI
         v2n1rgTE8TcKJ7iuZeWrHhRStiQFZXXI29xlzdiS1+5vKiojuojfPbjdj3oGM96l2rVG
         N4Spp6h6ZhoW1GbtoSDYHx7ZAulw9DlB860ca685EcWQxd3LbzGBbmDRu3qPc4T1zSmx
         gfYQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of macro@linux-mips.org designates 148.251.95.138 as permitted sender) smtp.mailfrom=macro@linux-mips.org
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:sender:from:to:cc:subject:in-reply-to
         :message-id:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=arb8aR26mM0MZiLR63te3EizaLEY86/NQqMGhGW+gpA=;
        b=bUPa4JkrjPrjTq46CvetgrSb/BGdpV9Ncubl8NYKjmmTjlsJPNdIGJT+ii5X5+Kgtb
         fr2kxr59MlicqI/1yXn9+tFHJIJBccrjbIGs+jLN8B07nmnIg4KlZDo3V9EAulpUzh7P
         MBREgIPaJhShjwYxJx1+3OxlicKQQGfY9/5tUxm3bGFKiE+l7bdBQh2pkbetOjfv/YG3
         M8kRBX5tHMBZowaWrh70uoFwRArxB4cFedgyEMoQRmt7PtLqg0YIQQHULKlZ5MJVNd89
         9lFjFl90FNbV47qWzkCcecsOd8jKNZMYKEf3LrXAx5BQsfmcfmXGlL9YDWvsNZ1Gad1o
         YP6g==
X-Gm-Message-State: AGi0PubBwdiz5mgtoqguChDLDAbDP19cAoJUEnfuBYH8VQxbfKU6HpSi
	U8qk2lXYwXXlux7qgfktvaE=
X-Google-Smtp-Source: APiQypJXZoijDpTFjMwfdM3VHMeML7OgxP6Gk+qmBjDVuImuV0ufNRhEMbedtQLYaTtb+B8hzu/K+A==
X-Received: by 2002:a5d:6543:: with SMTP id z3mr1241729wrv.396.1586283011061;
        Tue, 07 Apr 2020 11:10:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:f2cf:: with SMTP id d15ls3452391wrp.8.gmail; Tue, 07 Apr
 2020 11:10:10 -0700 (PDT)
X-Received: by 2002:adf:ce83:: with SMTP id r3mr3840994wrn.419.1586283010568;
        Tue, 07 Apr 2020 11:10:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586283010; cv=none;
        d=google.com; s=arc-20160816;
        b=YS4ed2TrJeXIfsid6Uj12xqL7UQm3jduN08FGjwdHsp5gE9FgUK+TlL7PRHy8OpqbP
         7UlJGkFvUoWINZkNwr93eP7OMsh4V2viXFIbSVkT0jM8/bqg+J+gecAe73931hht6PA0
         yq9oV5SIBAVEZjqF2zfkai+0pxqmI2Y/xQjr64FFPl5aYeOSFtyyoZxOs+XzU0n3YiGr
         IxMLY8u7zN/jc+nqOufzNaoicE1R+2RF9S6WkljnEsRGh0FqjLJoxqBiMevT28NUhF16
         DwvXaWL5QveMQAnav4vU+fPfsvfflqiNf01Crx385PLEcylHXEPbl/Ser2nHvhkUj/YP
         YdmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :sender:date;
        bh=RqRMUcFYybnOGi8AONi7ZDh1UPTZ7wf+AlHIo8q1s3g=;
        b=gUcXo3VT8zbD8K7vfkyjmjRaMItWeSByNdov2LpfhVuqmW0mGgPyLyQUyhzdibzZDX
         8mKTAqEVjAyeW0GqCIJZtkrS2jbgwLBbz7sNDiP37biF88b/CX105H/7owCoeCLG+Q+F
         TO8gTGukeCAR7kXfWosQ4/O4URmr10OrThq6NOHHN6mtFIyl2pwgpkFVcNeHYhIFvQ1W
         sAhautgBIUx+kJQ5r/jcwzS/8AMkmbWsFcRvjDvEsKEEXCHobZ/2i5gtslUbhLIBwqy8
         L6uFTsJPcxY6eNwV7pjT1Fuy/QV8u4vOhoRzB3xBC7kecVw7Ibd07hQB5UKUe3WCxehi
         J2ag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of macro@linux-mips.org designates 148.251.95.138 as permitted sender) smtp.mailfrom=macro@linux-mips.org
Received: from cvs.linux-mips.org (eddie.linux-mips.org. [148.251.95.138])
        by gmr-mx.google.com with ESMTP id z84si110210wmc.2.2020.04.07.11.10.10
        for <clang-built-linux@googlegroups.com>;
        Tue, 07 Apr 2020 11:10:10 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of macro@linux-mips.org designates 148.251.95.138 as permitted sender) client-ip=148.251.95.138;
Received: (from localhost user: 'macro', uid#1010) by eddie.linux-mips.org
        with ESMTP id S23993994AbgDGSKISscAr (ORCPT
        <rfc822;clang-built-linux@googlegroups.com>);
        Tue, 7 Apr 2020 20:10:08 +0200
Date: Tue, 7 Apr 2020 19:10:08 +0100 (BST)
Sender: "Maciej W. Rozycki" <macro@linux-mips.org>
From: "Maciej W. Rozycki" <macro@linux-mips.org>
To: Nick Desaulniers <ndesaulniers@google.com>
cc: Jiaxun Yang <jiaxun.yang@flygoat.com>, linux-mips@vger.kernel.org,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Fangrui Song <maskray@google.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2] MIPS: Truncate load-y into 32bit for 32bit kernel
In-Reply-To: <CAKwvOd=Upj_OcrhBnqf1=woCRm-g2wqjv882R0HQeMJu12Uq9w@mail.gmail.com>
Message-ID: <alpine.LFD.2.21.2004071837440.596385@eddie.linux-mips.org>
References: <20200405082451.694910-1-jiaxun.yang@flygoat.com> <20200407080611.859256-1-jiaxun.yang@flygoat.com> <CAKwvOd=Upj_OcrhBnqf1=woCRm-g2wqjv882R0HQeMJu12Uq9w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: macro@linux-mips.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of macro@linux-mips.org designates
 148.251.95.138 as permitted sender) smtp.mailfrom=macro@linux-mips.org
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

On Tue, 7 Apr 2020, Nick Desaulniers wrote:

> V2 is way too clever, V1 was much more readable.

 I think V2 is a step in the right direction except it still has some 
issues, and also I'd simplify it as there's surely too much processing 
there.

 OTOH V1 is going to be a maintenance nightmare, as you need to handle all 
platforms individually whether they want different 32-bit and 64-bit load 
addresses or not.

> > diff --git a/arch/mips/Makefile b/arch/mips/Makefile
> > index e1c44aed8156..f8fd3c39fb55 100644
> > --- a/arch/mips/Makefile
> > +++ b/arch/mips/Makefile
> > @@ -286,6 +286,9 @@ ifdef CONFIG_64BIT
> >        $(error CONFIG_CPU_DADDI_WORKAROUNDS unsupported without -msym32)
> >      endif
> >    endif
> > +else
> > +       # Truncate address into 32-bit
> > +       load-y := 0x$(shell echo "$(load-y)" | rev | head -c 8 | rev)

 You cannot just truncate `load-y' in place like this as it will break 
logic with `expr' used elsewhere in this Makefile (your original change 
would too) that does a string comparison on this variable.  So you need to 
define another variable for the sole linker's use, like `load-ld'.

 Then I think there's no need to invoke multiple programs, especially ones 
we don't currently rely on (`rev').  How about:

	load-ld = $(shell echo "$(load-y)" | sed 's/.\{8\}\(.\{8\}\)$/\1/')

 Also this really needs to be placed elsewhere, as it has nothing to do 
with KBUILD_SYM32 it has been attached to with this change, and explain 
why it is done rather than what (it's obvious from the command it's meant 
to truncate the address).

 So use something along the lines of:

# When linking a 32-bit executable the LLVM linker cannot cope with a
# 32-bit load address that has been sign-extended to 64 bits.  Simply
# remove the upper 32 bits then, as it is safe to do so with other
# linkers.
ifdef CONFIG_64BIT
	load-ld = $(load-y)
else
	load-ld = $(shell echo "$(load-y)" | sed 's/.\{8\}\(.\{8\}\)$/\1/')
endif

just above the use place, and then adjust the place to refer `load-ld' 
rather than `load-y'.

 Put the justification for this change (feel free to reuse observations I 
made here), like why a new variable, in the change description.

  Maciej

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.LFD.2.21.2004071837440.596385%40eddie.linux-mips.org.
