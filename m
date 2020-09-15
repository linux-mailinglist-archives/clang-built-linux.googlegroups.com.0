Return-Path: <clang-built-linux+bncBDYJPJO25UGBB2NNQT5QKGQEJQQPDUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id E807926ADA6
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 21:33:00 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id 78sf2490026pgf.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 12:33:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600198379; cv=pass;
        d=google.com; s=arc-20160816;
        b=f3Fc/qkibfDafUg9oTPB5qjFOi28rx57tXZLb8zjoyj3gZ2MXe1q/UsNOKJh+ZYKoF
         J5VMXISXcDEH+l9uuirCc7ibtwwY+66tUxGwU7WHpBXMsIgy/0uZOMPFQvHS26Xk3JvN
         6LTITXIhEAg0homm6klH7DzVuvnYBxLPFoiCOeMPvYHqnjENIcykPFA7TU5+zNYGviu+
         uoZGZw/rkuz9ApsVff3/RFYqTh8xjdwS1u4ikoBtgdzQ/kCKnKQIG6KVNgefC2l5kcsO
         U/J4YS8/bV20NqlVbRFwdBU6fJ5zuyjATMOS7qkuZZxRdGsUdJ8m6ImsCHV73nMn2YBS
         EmJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=cU6MCnkDtFuvHR5wRuWUfm6xkNng1pGQTdDIpXALnQQ=;
        b=Xy7DzF7ViAsGd0/EIBi3vWEWR/P69muih5EJ3IyO9LqaFtZLEwrJF8117DKocTtXtB
         F1GKQqCwephlfmkMoFTI7rIt6dzbovV5z20iFY+I8B35LPTS25wav/qvrGyS16bCzeiV
         3zTK+kxHJF8AndF4fawN+KSV7vQwEx3pQmlARCGcINAbMDw6V/HfKbkuQmSlN/onj/D9
         cDLw3PAnjfo3fGKED1WlGFpOth1E9JoNXt8WUSIi+hTIZXZ61KaraAvYtXNjnDudOtb1
         p2Z9O0i6fL6eog1vJFJi7ELms4vYTcbsGDfaH3JhuSfpauAZenJqce26JNMjCZqSZ3Lx
         6bBw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=T1U8Hwb3;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cU6MCnkDtFuvHR5wRuWUfm6xkNng1pGQTdDIpXALnQQ=;
        b=dUMUm0uBblpRTBGjBNGt+eW0+WUCWwOz5us2d8ylB+C91yGCJUD7AVWHFftO9AMbkd
         cCTTtElq6w+RcbrVqFkTbhiMpPdJkkQWIOCpWw3WrFix3Nmb2KfxxLG+Bruj11wrPpM7
         kb0+bMq0k2RrLcErLoSciOG7A09z0DFVZKDMF41BygY8xDQMPTJJEek3oR5WEa7gP6xm
         ejUxPINRHKbmph8vRUYfW5rgM+SU48ObwKVWxP8Ld1SpLe7fOfo47SyAx/sMdQdVdDku
         gGf+xBg+B7jSlQAAVt65CQGogVb6qovvDTHvIabSSvX8D2qJ4BK2HOagFUl1pxb8AuOL
         5TfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cU6MCnkDtFuvHR5wRuWUfm6xkNng1pGQTdDIpXALnQQ=;
        b=sH+514lG048uKZTzEZQHUEfYsqAvBy6JiOXX4Zdo+2FWYUS+6Mzv178ZxYIE+hVrFc
         CEIDBo5F99MzWpmAdjT3Iao39zlGvC7zI5ASArZ5T7mT23e0orw+dj6CeTdEY7UQ0+je
         j6SOg7DzW2VrMj2fdVLnKX8ZdIOAvg+LXZzRBLNNQkigOqzH0V3bBq0XPCDBEhyZJMcD
         BCf+kBws0sh4XbFoP9EQYqbH1esqBPoKsRo2oPPWFMYlQPxKh5EBxlfPkzvZKxpkdn7o
         giyS7RvxG3/e+2U1WxypcQeyH4KowtoCvRmB+wxBJYMgS/d5JVWHxFqXm46KvSydf/TS
         pVlA==
X-Gm-Message-State: AOAM530rfw1osfRBauIWb8aIJhSo2GjxfkqK/EVcISpBzJLkWdQmVjte
	rJDLCZBHp64ScNipYDFg1ew=
X-Google-Smtp-Source: ABdhPJxwQSsuaDY5vQon6aDYXrGdxR3kLmAWpijz0/la3T5lw40PtjX7BhDcavZNyXc14ySj8syEAw==
X-Received: by 2002:a65:680d:: with SMTP id l13mr16548729pgt.112.1600198379466;
        Tue, 15 Sep 2020 12:32:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:c7d3:: with SMTP id gf19ls45174pjb.0.canary-gmail;
 Tue, 15 Sep 2020 12:32:56 -0700 (PDT)
X-Received: by 2002:a17:902:8bc2:b029:d0:cbe1:e743 with SMTP id r2-20020a1709028bc2b02900d0cbe1e743mr20401074plo.30.1600198376860;
        Tue, 15 Sep 2020 12:32:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600198376; cv=none;
        d=google.com; s=arc-20160816;
        b=Y3KvY/uLvp7yZKVMLdOyFNZ4pyFmKI51lGffzdXxLgg6vW1AxG8iI2OqC+PwNsMvG1
         DJ57038AwERuwtLVXKfSjCFveGukHo6BVjQw7rAJf+KyMUcqeC3eAZpfqhFPvE2h99qh
         ZI1PCexA8fchbbUCkzeQMiXdNI0bqopa294FL3YsWTAu/NC0JXgh0UdWGKRjpNI8BNWg
         k19hVgDN0cMuOGlO3W101q8XWbtbC6gUmV0bslLNkE0tij9v+oO+jEOVeaBsXvghbBQi
         7tTpeUy2VDfB4sL8FKdJdxD0cmhz2+NMMC8jVOQdDO6+DLn6fTAQZHxNPCuj8Q0DK0yr
         gLVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=qxKJop9QMXTVBqn7Xak1Ua9rcBtw9SzcSG+L7X2qAGY=;
        b=nuTv3vmdTtr8vP0MbGCTwtvnQGbaBp6yeKvfS9ixjtiwRO/GVA1wIswi/Gg/32wX8I
         +qhast6qu7c9kKTgkQhpnUxwpgbnRooY04h2U2KCZQp7SDEVZKcA8DJaCIYAhg+sLJxI
         wtyVJiWda6pexFyRV5IvhvjZfTXVUj1cvHrU0lniTxXWcSEjdXLldYtyF63arIxx6b0G
         JFOr/ogauWAwXEH9P1VAU81wJ/FoVk9w5AB26O7F8xdLPHiaafBVUZeawUZpMV9AY7Gg
         GxTDzy+qQUgGtuHQDNmCzI8CiPE3F09IPSoIQnNTfEmkKH+1i7em5m/2dvOI+r0siKkp
         4cjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=T1U8Hwb3;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id r24si416919pls.4.2020.09.15.12.32.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Sep 2020 12:32:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id kk9so308822pjb.2
        for <clang-built-linux@googlegroups.com>; Tue, 15 Sep 2020 12:32:56 -0700 (PDT)
X-Received: by 2002:a17:902:c3d2:b029:d1:9bc8:15f8 with SMTP id
 j18-20020a170902c3d2b02900d19bc815f8mr19985449plj.29.1600198376175; Tue, 15
 Sep 2020 12:32:56 -0700 (PDT)
MIME-Version: 1.0
References: <20200914095706.3985-1-ardb@kernel.org>
In-Reply-To: <20200914095706.3985-1-ardb@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 15 Sep 2020 12:32:43 -0700
Message-ID: <CAKwvOdmSXm7cV3hB_Yp=DD0RwwDHtPzzDBU8Xj5kBREn3xqYdA@mail.gmail.com>
Subject: Re: [PATCH 00/12] ARM: use adr_l/ldr_l macros for PC-relative references
To: Ard Biesheuvel <ardb@kernel.org>
Cc: linux-efi <linux-efi@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, Russell King <linux@armlinux.org.uk>, 
	Linus Walleij <linus.walleij@linaro.org>, Nicolas Pitre <nico@fluxnic.net>, 
	Stefan Agner <stefan@agner.ch>, Peter Smith <Peter.Smith@arm.com>, Marc Zyngier <maz@kernel.org>, 
	Will Deacon <will@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Jian Cai <jiancai@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=T1U8Hwb3;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042
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

On Mon, Sep 14, 2020 at 2:57 AM Ard Biesheuvel <ardb@kernel.org> wrote:
>
> This is a respin of the adr_l/ldr_l code I wrote some years ago in the
> context of my KASLR proof of concept for 32-bit ARM.
>
> A new use case came up, in the form of Clang, which does not implement
> the 'adrl' pseudo-instruction in its assembler, and so for PC-relative
> references that don't fit into a ARM adr instruction, we need something
> else. Patch #2 addresses an actual Clang build issue of this nature, by
> replacing an occurrence of adrl with adr_l.
>
> I have included my existing cleanup patches that were built on top of the
> adr_l macro, which replace several occurrences of open coded arithmetic to
> calculate runtime addresses based on link time virtual addresses stored
> in literals.
>
> Note that all of these patches with the exception of #2 were reviewed or
> acked by Nico before, but given that this was a while ago (and the fact
> that neither of us work for Linaro anymore), I have dropped these. Note
> that only patch #1 deviates significantly from the last version that I
> sent out, the remaining ones were just freshened up (and their commit
> logs slightly expanded).

Tested-by: Nick Desaulniers <ndesaulniers@google.com>

Thanks for the series, Ard.  I was able to compile and boot the
following with this series (and the fixup to 01/12 applied):

$ ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make defconfig
$ ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make LLVM=1 defconfig
$ ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make LLVM=1 aspeed_g5_defconfig
$ ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make LLVM=1 multi_v5_defconfig

(So ARM v7/GCC, ARM v5,6,7/LLVM).  (Technically, the v6 is not
booting, but it's not related to this series and fails to boot without
the series as well.  Our CI on -next is red for an unrelated issue
which is masking the regression).

I was also able to build+boot the defconfig with v5 and v7 with some
configs disabled and a few hacks with LLVM_IAS=1.  This series allowed
me to get further in the build/testing, and I have a few new bugs to
go chase.  If anyone's interested:
https://github.com/ClangBuiltLinux/linux/issues/1154
https://github.com/ClangBuiltLinux/linux/issues/1155
so we're still a handful of bugs away from LLVM_IAS=1 with ARCH=arm,
but we're steadily chipping away at it, and this series is a big help.
Lest it look like there's only kernel fixes in this area, Jian's
https://reviews.llvm.org/D69411 recently was a big help, specifically
for ARCH=arm LLVM_IAS=1.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmSXm7cV3hB_Yp%3DDD0RwwDHtPzzDBU8Xj5kBREn3xqYdA%40mail.gmail.com.
