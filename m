Return-Path: <clang-built-linux+bncBD63HSEZTUIBB24FVH6QKGQEALRXWRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id A42572AD087
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 08:36:13 +0100 (CET)
Received: by mail-pl1-x639.google.com with SMTP id g2sf6069968plg.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Nov 2020 23:36:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604993772; cv=pass;
        d=google.com; s=arc-20160816;
        b=YYvQfojSttS4fyOY3AwrPiEJ8CsbypAkfUOGw1eQ9Hb3ZHUle7RZjcZjWp2i/OA9n0
         BPC7R14aRWKDBKDiEA3Vvz+ZkohSmbkPGDQZ9r1ERygEaw1EMtI7r1qR5ygdCWoFn6/P
         GpmRXy5EuG+hHvpl0kByKR6sPSWH1AebpQ/dT1IHQtYXolhwS64AJnxjolQE9lojTIuo
         ylomRqiBuiG4+msiby4iLaD2oNJoqAipzs1arTyOGys5mnoSKsyZoexsS2OpnB5W/n4o
         oYh1FUdTcg8o8ik+gk4XSCF7yLjPu1uC2gtZP3ylU/GiC4Ou+vsF1M5VVx00yEHKr5qh
         kaew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=GdfMztK5Ybc99e7jmhirkzdI/v6mDFFCfoE9nRess+4=;
        b=MwYQWT5Y9cgd9Cf1wrXOSV9V0NF9b6TV65NP0AJ6VQDRXJrQuFsVmBsFQyP4Pfqdkp
         MP0ETolLzaHY5NIJvXv7peuVYUoHjIqBE91D81RSkQLIDtRBzSW0ruBc2ZmKSHA3NXtV
         UirUFbIQ1dtrnK/QMNOA8DGM7XD1YdROc7Zh5NwdrTRYrBIEC6QZFHXVdiHGFw+lrSxH
         f3lq/KIBJQ/9NtRpnDPkdolWYaNyBj1DqaK3CQ+4vrKMvm6y5oPe4mJHXnIkI4pnwH/x
         NFwdwbodgs/o304Q6LlZn+ld65jlSQlJfEW15PgvkYd18HODV40z3+HSMHlsDDfFF8r/
         RZWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="OR/fFoSX";
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GdfMztK5Ybc99e7jmhirkzdI/v6mDFFCfoE9nRess+4=;
        b=bTAFr6mZNKfxjGPON9zpjyK06uQ4c9ox5v+5deNOwtToIokKOlaS/oaXJ7W1dnJaGM
         hxyh7UArTLF0nU+YSRMFONC/NmTV1YstClLwBHi01ZTnlsNDDfsmY+AAK4I/aIy/XmH/
         ZKCY5xmKAenxL4MpOeSwc2PeL2XWXUD4krCr/QHZ0MJ2dOllwrGkMIJJpGGOPUbkoSvt
         B7U1S3BErxiO4zY7vaPxUGFubuiQhNx/w2/aMUG907/NGnTIk8P8G17zDEcX+5PzSIIh
         gFeU90BsIXfdv04TKniC0csBCUhF1vXXQbgXEvqRBTyn78kdSBPs2cFi+5nPL7KOqTEl
         Y/Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GdfMztK5Ybc99e7jmhirkzdI/v6mDFFCfoE9nRess+4=;
        b=ms6RTKx6UB3SlLMwzS3QLtQFSTnxrrEDmdsLnZBtsM7dZ8KH9EO7Cmvi9Y/QWhF+To
         gD2RdVk+LKWdrQ+bQHOcjx06TNvCT26CMtCelJ6nV1v/ks3pW752G5fMXkQHZn/fy7KI
         Jpz0/ffnMS3Mx9V6RR5ILjO7fBkDzKsxUcpZCAfMVGN5JFQny01ItQwHqb9YaKqN0OzC
         wabpv8ennqT+SvkVceHjd/oQF2oRDWG6DCHkucpkrzlnnM+q/xYGx31K2CuP3HqDWgd0
         wBJumps7QgoaBNrvoJkX+RCpmVGBmAuG/kgQWro3gcuZRCQLiXdvynF6oacEK6zK/xlF
         JLuQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5308pEstyLCiBHnU+9NBVLhW2f6Dv7Orzfc5JQWGPTlNYfDReWKC
	yyPOnMXcWaot1OWNRA4Ya/g=
X-Google-Smtp-Source: ABdhPJzpRsJYKAhZlqLcEglOUn03ZGbakc8TrBcu62f5TXOyO5au29Zo3Mmy+KoT/xsqY3kCwvp9wQ==
X-Received: by 2002:a65:5289:: with SMTP id y9mr16306970pgp.386.1604993771896;
        Mon, 09 Nov 2020 23:36:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:5d03:: with SMTP id s3ls1384768pji.1.gmail; Mon, 09
 Nov 2020 23:36:11 -0800 (PST)
X-Received: by 2002:a17:902:6a8c:b029:d5:da81:dc42 with SMTP id n12-20020a1709026a8cb02900d5da81dc42mr15788836plk.40.1604993771322;
        Mon, 09 Nov 2020 23:36:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604993771; cv=none;
        d=google.com; s=arc-20160816;
        b=lJdPED0R8crClNDnB2rQtUxUSS6BOUIWKI5C3ZVcteQhWXq549TuFyg46stpqZ37zt
         pAJ0xV9FXAsFhUg267/WxM2rNYc9LZmHXZ5E27ETQ/bv6L89dXeSYqpInmJs7dCupl21
         PJmsY7JAeooPHAItBbYkKvHxpu0gZIFh2fmDLwHad5gsfJacpcrqribZppvQ2EawAjy1
         Zq/jaq4NLqZ/5VKcwp6HICXvxOcGEuK6brX0dk4kcOiCB19djG5WuOT064WLVrgiDykB
         /tvyH196xNonAL3xFw/Th7Na5GWIB49J6vfc5U+8preUXtGpxUv2RqtkyI1hzDgqy1yQ
         08Yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=SywJL0OWB8D8wbkNu7717xgFNVjoh9tformafpK+9AY=;
        b=LvxJFLgtMMb2WNS0zU3AuvBm+vms7yL2EGBwq93JWwAHNu3iBI0Eh10zwP4/Bp/+7j
         +EWr9mHFvj83hpJaNnF7iEqtnANlSDjqD9Haqou9h15n3ZlUo1Ykk3eBNjxtMB4XF1rX
         66xj1n0ObpAuDBRHPLAfNWTJAotNFKlSdIkLO88cN8zIsXuYivcl/LaZ7wT1Zp6fZHFn
         QrVbUYiwz3gkLj7l8BzbroTa71K2XgMQ13adE15Rqs+gM1qi9CIJpsrMUn6pa1R33gLK
         YQLI8kQYx1AGhPgi4JeB81d1rpTAcrKzA9IOlQGKTHxYKJIaA9pPU/0SafpMvFzZbMlW
         mdZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="OR/fFoSX";
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id lw12si22131pjb.1.2020.11.09.23.36.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Nov 2020 23:36:11 -0800 (PST)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A240B207BC
	for <clang-built-linux@googlegroups.com>; Tue, 10 Nov 2020 07:36:10 +0000 (UTC)
Received: by mail-ot1-f46.google.com with SMTP id n89so417838otn.3
        for <clang-built-linux@googlegroups.com>; Mon, 09 Nov 2020 23:36:10 -0800 (PST)
X-Received: by 2002:a05:6830:214c:: with SMTP id r12mr3941559otd.90.1604993769849;
 Mon, 09 Nov 2020 23:36:09 -0800 (PST)
MIME-Version: 1.0
References: <20200409232728.231527-1-caij2003@gmail.com> <20201107001056.225807-1-jiancai@google.com>
 <CAMj1kXG+qb267Hig6zoO=y6_BVsKsqHikvbJ83YsBD8SBaZ1xw@mail.gmail.com> <CAKwvOd=pHgT3LsjYH10eXQjLPtiOKDj-8nJwjQ=NMSFLTG1xAg@mail.gmail.com>
In-Reply-To: <CAKwvOd=pHgT3LsjYH10eXQjLPtiOKDj-8nJwjQ=NMSFLTG1xAg@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Tue, 10 Nov 2020 08:35:57 +0100
X-Gmail-Original-Message-ID: <CAMj1kXHDzj3Q-sCv1szseUC7g2bWRFeVP6WME-sMqDf+0wyU8Q@mail.gmail.com>
Message-ID: <CAMj1kXHDzj3Q-sCv1szseUC7g2bWRFeVP6WME-sMqDf+0wyU8Q@mail.gmail.com>
Subject: Re: [PATCH v2] Make iwmmxt.S support Clang's integrated assembler
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Jian Cai <jiancai@google.com>, Manoj Gupta <manojgupta@google.com>, 
	Luis Lozano <llozano@google.com>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Russell King <linux@armlinux.org.uk>, Nathan Chancellor <natechancellor@gmail.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="OR/fFoSX";       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Tue, 10 Nov 2020 at 02:55, Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Sat, Nov 7, 2020 at 12:29 AM Ard Biesheuvel <ardb@kernel.org> wrote:
> >
> > On Sat, 7 Nov 2020 at 01:11, Jian Cai <jiancai@google.com> wrote:
> > >
> > > This patch replaces 6 IWMMXT instructions Clang's integrated assembler
> > > does not support in iwmmxt.S using macros, while making sure GNU
> > > assembler still emit the same instructions. This should be easier than
> > > providing full IWMMXT support in Clang.
> > >
> > > "Intel Wireless MMX Technology - Developer Guide - August, 2002" should
> > > be referenced for the encoding schemes of these extensions.
> > >
> > > Link: https://github.com/ClangBuiltLinux/linux/issues/975
> > >
> > > Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
> > > Suggested-by: Ard Biesheuvel <ardb@kernel.org>
> > > Signed-off-by: Jian Cai <jiancai@google.com>
> >
> > Please make sure you test this carefully on BE32, as the instruction
> > byte order used by .inst is LE IIRC
>
> Unless that was a recent-ish change in GAS, it looks like I get the
> same disassembly/encodings before/after this patch for
> CONFIG_BIG_ENDIAN with GNU as.
>
> $ ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- make CC=clang -j71 defconfig
> $ ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- make CC=clang -j71 menuconfig
> <enable CPU_BIG_ENDIAN>
> $ grep BIG_ENDIAN .config
> CONFIG_CPU_BIG_ENDIAN=y
> CONFIG_ARCH_SUPPORTS_BIG_ENDIAN=y
> $ ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- make CC=clang -j71
> arch/arm/kernel/iwmmxt.o
> $ arm-linux-gnueabi-objdump -dr arch/arm/kernel/iwmmxt.o > gas_before.txt
> $ b4 am https://lore.kernel.org/lkml/20201107001056.225807-1-jiancai@google.com/
> -o - | git am
> $ ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- make CC=clang -j71
> arch/arm/kernel/iwmmxt.o
> $ arm-linux-gnueabi-objdump -dr arch/arm/kernel/iwmmxt.o > gas_after.txt
> $ diff -u gas_before.txt gas_after.txt
> $ echo $?
> 0
>
> (Orthogonal, it looks like llvm-objdump has issues decoding
> elf32-bigarm that we'll need to fix.)
>
> Either way the patch LGTM for IWMMXT, thanks Jian for the patch and
> Ard for the suggestions.
>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Tested-by: Nick Desaulniers <ndesaulniers@google.com>


BE32 != BE8

Please use, e.g., ixp4xx_defconfig with IWMMXT and BE enabled. It
seems like .inst does the right thing here, i.e., the assembler knows
that it should emit BE for BE32 and LE for BE8, but it needs to be
confirmed.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXHDzj3Q-sCv1szseUC7g2bWRFeVP6WME-sMqDf%2B0wyU8Q%40mail.gmail.com.
