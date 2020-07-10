Return-Path: <clang-built-linux+bncBDYJPJO25UGBBYPNUL4AKGQEZED3CDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C86021BD27
	for <lists+clang-built-linux@lfdr.de>; Fri, 10 Jul 2020 20:43:46 +0200 (CEST)
Received: by mail-io1-xd37.google.com with SMTP id k10sf4162805ioh.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 10 Jul 2020 11:43:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594406625; cv=pass;
        d=google.com; s=arc-20160816;
        b=bguyISJzkxvXcgz3VZKuA1z0sJfXhqsZl5D7S7t2z2+ALgR3UdiCPAB886kmHSrO+F
         8ayHbn/KI27ABM5+RAZT7YuD2nWNTB7Dvtc3rkkYawA6NwfjWYjAstTEtRtJrynTRG3E
         40kz4RfKneEqYwHHxLuQsYd+y3RVcKtsMjEaKOcm/XJpD809Lh4aqGVmXdfoKwRd1Hu1
         JUWSJeGYaYncoBCAZJj9Kpq+D2UsoHNnN5mOhrMwyOe3fnbCPZeuoSPRmcyU+kdE87IU
         cleFPk2cyIpXuw+HEq1joVvFG/i8NuzOVnWghaljdBNXJQYoGbbq63qOxtfAuttOtSmN
         wa1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:in-reply-to:references:mime-version:dkim-signature;
        bh=knhbU1Niv8wnVjb9gQqhXnXIK3BZz8vpqABqoUD2jog=;
        b=qiU6V5ljW16je7XSe87cYnMcF3jHOIJ7xqYwJaK0gwmBglSxmlTOtL3TgPBQTPcQWI
         afhfHTu8HKDTDbeYJRi423t/zfZEer7dXwgasbceBBC96so4LV1sY4bOjE1BJ2+9LkE1
         RKWLZAhE4a21lwKIjCE0B5+W1PcBltd0Fibuv0meRsejT/WRcyqYYh7z/QIVub/3J6Wn
         ZEJF7m7FpYRMnI5hADe58AeO19YlPYvv1TQNk9CMUX62b4e/f562Z9iMSojyTl3nrGjQ
         6ICYuBNNtoiYe1gTHBnO9AmBPg++PYD3btrv3fDx2Ld6KdW4dFXor73ZzyeJ0+Cvoh32
         iqLA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=s1yAuFdf;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=knhbU1Niv8wnVjb9gQqhXnXIK3BZz8vpqABqoUD2jog=;
        b=RwhyY+qkcrYSulFqSvBsb4hwvB8i0BltYx3HG/BrCkeHM+K85+jULOw02dyDk/WgFW
         IXbGN0jwKhXdxrmsQmPFaF2JXTEWP2xUYOmXJau7jb0BP6Is2lf01ZU4Cg7l+X2uuuVd
         RKcdXcysbQGC4kLcDhDq74QcLZqZMntKzz/Be9iydrH7EbeAwvm/nPoaZGf5BZmLKLGq
         GeoiDRwkW/NUas8IpbTQFqPVnKSNS7vHvSvZIr8KaYssAOwKUuThfDH2Z24v8rl5RpI5
         XxYJ1NDfGr1q3CDxHGqtxRCcJLqNcjyEnRLou6zJN9eM6aDNyCApTZHQBy69lSLGC6ms
         5duQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=knhbU1Niv8wnVjb9gQqhXnXIK3BZz8vpqABqoUD2jog=;
        b=Im5ksyBEHDGZCx7+PEZdG9tZowHXoP5Nu+aIrOE8Akk5C33doiqTofB/kUyJr7vbYU
         AVZMATpR8HJ4EZnyHg2aHjOicHYUXsgI8QGFrkDpKJ2Tr+TBgEpyfv+qU5I5q9v0tB0m
         NOyo5YBaojbYcrdJApVfEu6VQlAHFqhWztB6vYiTWL6tlfYyA2dqzMy7E7RcFtOSkFAS
         Hq4jXSiUpeb3mn1i3xeI9ro8XeDgB5gsP9sAIuPHa0ogSr3XMXEudP6gu/2y7qvB0lwC
         eTH2S00KfgMfgB3zg98ItA7Xty7K7D7zKjzSYfPBcfnDIyUutoPTbNmBdYwR47H8Sprq
         8LlA==
X-Gm-Message-State: AOAM532v8o9o3yqYI6ydOob4Ziw08Qszig/ttbVrDVAwLbM1GJn0llSq
	Q8J3XqjVp/4iCjxy+E9dFVE=
X-Google-Smtp-Source: ABdhPJxm2BbkMSLEmlcqhn9K0RSXgur2HtUqa0Hfa7Gu3C7ijm0O/GoWwpOwP8yUnB9oboJYjV9RGg==
X-Received: by 2002:a6b:3985:: with SMTP id g127mr33397652ioa.107.1594406625198;
        Fri, 10 Jul 2020 11:43:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:aadd:: with SMTP id p90ls2586544ill.11.gmail; Fri, 10
 Jul 2020 11:43:44 -0700 (PDT)
X-Received: by 2002:a92:1814:: with SMTP id 20mr54955234ily.81.1594406624757;
        Fri, 10 Jul 2020 11:43:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594406624; cv=none;
        d=google.com; s=arc-20160816;
        b=I73lxYu8eyL1wA4VpRAMsifQo0Wfnb+SmrzTIyqYQOD1R60+1kVlZm0PQazoJBf6ah
         B9WbnShhMl4y9eu6L8mr0EAa5aVOnvo+0ywpLucBYDoVNjxuJqYGr60Xy0fv/BWmVNo1
         JYhIzOZwg/sCS1YjmIq3xhti/mMo2NJ2AGeUSlV1Lxe4CvqoSGwkGPxkjGZLW514Cr9x
         lteFjZebCjm0L61ZsvUYo+Nmhj46QBvUaYc4waFyC0OC6tIrKqpETAouXuYSOY0fXHG6
         tMPq1kchXl7SGhpw5J+7lS2w/7lAvxAFfd2h/G1Yq6sz4kpydGd54wi00ThEWSK4ed0o
         9wkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=S5Cu30CBRpOOdwBoehsOCwxW14UWy1Qa18c93Z1aMRM=;
        b=bslQr5gvj5rq6XmKcQYEihVyoV9AnjfMavppa0MmtSNLPhQclj+TeA1iyQKJalm1FQ
         uDdXJqlnKjeutoV2zo9orInKsrakOHr7BGzVZ4KR0QUBhpmt3VD/wSOtSbMdvKdnODPl
         uSTWlHjjDSayx9ibIbAD8AukkvFd2lgPQarH3dp3b2Npe9fK/LiDU1HapxTB4BeI6o7S
         8MlB4vNDvqB6+XMQLiiaCEGA//4YoYx8RqnVV//T9zFLE1sQhPfA6K8wotCnY864o2HB
         ehsiXHpj0xEaVciaWsqFteLYH1G+38zQOHVAw8gTzyMaQqgx0i2t3xO4R21haItx5YM5
         Bd1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=s1yAuFdf;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com. [2607:f8b0:4864:20::62a])
        by gmr-mx.google.com with ESMTPS id z71si430966ilf.5.2020.07.10.11.43.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Jul 2020 11:43:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62a as permitted sender) client-ip=2607:f8b0:4864:20::62a;
Received: by mail-pl1-x62a.google.com with SMTP id x11so2600487plo.7
        for <clang-built-linux@googlegroups.com>; Fri, 10 Jul 2020 11:43:44 -0700 (PDT)
X-Received: by 2002:a17:902:7204:: with SMTP id ba4mr28262295plb.179.1594406623991;
 Fri, 10 Jul 2020 11:43:43 -0700 (PDT)
MIME-Version: 1.0
References: <20200709221102.323356-1-cesarb@cesarb.eti.br> <CAHk-=wjUEmO4GiC9mCyzZ8_WS=ZWgfg6CnpxPSLq=uoF1F3Xyw@mail.gmail.com>
 <CAKwvOdnbtbetfN5zF51QOXVhrutE8ak4uPe82iY6g9f6gwk=Vg@mail.gmail.com>
In-Reply-To: <CAKwvOdnbtbetfN5zF51QOXVhrutE8ak4uPe82iY6g9f6gwk=Vg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 10 Jul 2020 11:43:32 -0700
Message-ID: <CAKwvOdm2QBSidX3X13CfM5KR+Mci7bgkPjoRM53f339vefRK9w@mail.gmail.com>
Subject: Fwd: [PATCH] Restore gcc check in mips asm/unroll.h
To: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=s1yAuFdf;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62a
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

forgot to add cc, sorry

---------- Forwarded message ---------
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Fri, Jul 10, 2020 at 11:43 AM
Subject: Re: [PATCH] Restore gcc check in mips asm/unroll.h
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Cesar Eduardo Barros <cesarb@cesarb.eti.br>, Linux Kernel Mailing
List <linux-kernel@vger.kernel.org>, Steven Rostedt
<rostedt@goodmis.org>, Masahiro Yamada <masahiroy@kernel.org>


On Thu, Jul 9, 2020 at 5:53 PM Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> On Thu, Jul 9, 2020 at 3:11 PM Cesar Eduardo Barros
> <cesarb@cesarb.eti.br> wrote:
> >
> > While raising the gcc version requirement to 4.9, the compile-time check
> > in the unroll macro was accidentally changed from being used on gcc and
> > clang to being used on clang only.
> >
> > Restore the gcc check, changing it from "gcc >= 4.7" to "all gcc".
>
> This is clearly a thinko on my side: the old
>
>     CONFIG_GCC_VERSION >= 40700
>
> became pointless, so I removed, it, but it was mixed with an "||" so
> we actually wanted to make it unconditional on gcc, and instead now it
> checks for CLANG version even when it shouldn't.
>
> My bad, and your patch is obviously correct.
>
> At the same time, I do wonder if  we could just remove the check for
> CLANG_VERSION >= 80000 too, and just remove all the compiler check
> hackery entirely?

What I'd really like to see as a policy in the kernel going forward in
that ANY new commit that adds some hack or workaround for a specific
compiler version add a comment about which toolchain version was
problematic, that way when we drop support for that version years
later, we can drop whatever hacks and technical debt we've accumulated
to support that older version.  I'd prefer a comment that can be
`grep`ed rather than a commit message that may need to be searched.
That way when bump the compiler version we can grep for comparisons
against that version and start cleaning up code.

The case that comes to mind:
commit 87e0d4f0f37f ("kbuild: disable clang's default use of
-fmerge-all-constants")
cites https://bugs.llvm.org/show_bug.cgi?id=18538
The fix for which shipped shortly after reported in clang-6.
https://github.com/ClangBuiltLinux/linux/issues/9
Looking at the dates between kernel patch and toolchain patch, I guess
that the kernel patch authors didn't know what release that workaround
would be fixed in, but basically they need it for CLANG_VERSION <=
600001.
We can remove that entirely if we commit to a minimally supported
version of clang.

Also, I'm a little salty still about our conversation with
asm_volatile_goto:
https://lore.kernel.org/lkml/20180907222109.163802-1-ndesaulniers@google.com/
I think lore is missing your response, that triggered a v2:
https://lore.kernel.org/lkml/20181031182909.169342-1-ndesaulniers@google.com/
(Strange, I literally cannot find evidence that you ever responded to
that...am I going crazy? Looks like my work email has been being
auto-deleted because...lawyers) (lkml.org is missing it:
https://lkml.org/lkml/2018/9/7/1628, and I didn't have our mailing
list set up then).
You also know how I feel about empty asm statements (`asm("");`). ;)

Anyways, the point is "please tag these workarounds with a toolchain
version somehow such that someday we may pay off our debts."

>
> Older versions of clang weren't very good at compiling the Linux
> kernel in the first place. Do people actually use old clang versions?
> That sounds like a really bad idea.
>
> People who used to build the kernel with clang tended to actually get
> their clang version from the clang git sources afaik (I still do, but
> that's because I test experimental new features that aren't released
> yet), exactly because back in the bad old days there were so many

Thanks for the endorsement. :P

What's the latest on that `clac` in exception handlers discussion?

> problems.
>
> These days you can use release versions, but they'd presumably not be
> older than clang-8.
>
> Adding Nick - is it really reasonable to build any kernel with any
> clang version before 8.0.0?

TL;DR: probably not.

For Pixel 2, we shipped a Clang built kernel using clang-4.  Since
then I've moved it to be using near ToT Clang (clang-11).  That device
was aarch64 with no hard dependency on `asm goto` (only x86 added
that, and only in 4.20, so not really an issue for stable kernel
branches older than that).  `asm goto` support shipped in clang-9.

>
> It turns out that the arm side also has a check for clang < 8 because
> of -mcmodel=tiny, so raising the minimum required clang version to
> that would solve that issue too.
>
> Right now we don't mention minimum clang/llvm versions in our docs at
> all, because we only mention gcc. Mayeb this would be good to clarify.

Yeah, I think so, too.

Are you planning on attending plumbers? I'm planning a session on
talking about this more, which I think would be helpful.  What I
really want is the CI people in the room, because I don't want to
claim version X+ is supported if we don't have the CI coverage of it.
Also, there's a few footnotes as to our compatibility table at the
moment; completely missing backends, broken backends, targets we only
got working recently, etc. etc. etc..  I also think we need to be
delicate in the wording for what tools are required for building a
kernel vs optional or substitutes.

Will older versions of clang work? It's highly likely and we don't
have a list of what if anything is actually broken with them.  But if
we can get CI coverage for the latest release or two, I'm happy to
commit to supporting just those.
--
Thanks,
~Nick Desaulniers


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm2QBSidX3X13CfM5KR%2BMci7bgkPjoRM53f339vefRK9w%40mail.gmail.com.
