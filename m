Return-Path: <clang-built-linux+bncBD63HSEZTUIBBSFDUH6QKGQE3JH64MA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 038572AAD57
	for <lists+clang-built-linux@lfdr.de>; Sun,  8 Nov 2020 21:15:06 +0100 (CET)
Received: by mail-pl1-x639.google.com with SMTP id s6sf2626412plp.13
        for <lists+clang-built-linux@lfdr.de>; Sun, 08 Nov 2020 12:15:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604866504; cv=pass;
        d=google.com; s=arc-20160816;
        b=WdHM09cgt00sOQF9052TJSe6TeuA7VOMTyjwFycuh/EdQMLynI9qIruKmy2mq/FhpM
         Mq/Hjbf25Un0PZ3DoKDyB6rRmgRDN7gGbJixAuV3M9iPh2ZAtB1109W0G+zxfNsxrGbr
         K16DI6ubY8tuo0zo0pNMnvlDunPxerBcQUrNkOHatuUawp+34vqmG2MJ/s13UKAZ4Va8
         aL2+fTQhTw7gfzk4RjQV92Uhq7gw9VdWsVKIgXXX5SnJpGrapo0lrJQb+fZh13o+iITs
         3NWHbckEZc52OGEXE0sJBvkRo3QuL//LrrNLOb9niagZ2B5IpcPKlvFwCXiLAzEvC7zw
         x+HA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=EB//lnkZSdWAV5oLvXhBykJ6qTN/g5vr54bi0FW1ipc=;
        b=SsmbNP60jpau774UcvgMm/ewHVWp5qgWe8AZubhCL1SXeIMoh2WZmydlJshwLBAgcF
         L2jiFTvRy5HiaH5SjompIMHLd9VEi3ug70PpQc4DBslo538uTfscGIWcrhLDwdLuhjnt
         iXB8zCwaviQ6m26kysnnrrelbJBQXuB/N1Qxc7Yfrn0Bqhlz+Hwaao5R4pkCrpnOGs/p
         jVwZDSjqG/wxKd8XrMyBeCpp0gg2jM2yx92To3zVdQQWvJSJFldLtNQ1/3PDB8H9V9mh
         ezX/+c947r288av/szPt+RLlFkDWJ5eFSGw5LgpH58KTbtTWUI8ohmjcFG8w1ZAk3Z/d
         M8Hw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=f5oYkN2h;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EB//lnkZSdWAV5oLvXhBykJ6qTN/g5vr54bi0FW1ipc=;
        b=WU7YWkyP4OZFUs3z4C9NjmbZMThVP3xuWg00NEu1BuSDJsjDbj4k+pDxi14TSyGSkw
         shKui8r43xkZTY5yqrlL5x+KuHUPPfy3Tfxi3TC9kzg27FKiFDR4tgmnZ7BOnsexe9XD
         165OTHq69FJpjdJj1J6fESzcL1nMsRERwMJQY8v0twYf8yQsqSGz375xR6vQHPxbDzXm
         rIDf9FaK36rmDWufm0sMxlFik0HZLWiX1jZ2G9Nk4xGDSs2Tg3GJcdljwvjjQv1OEFn2
         llkd7gUhpqbeRtMynLRNA253zyxF0kswckvjGvqX7qd9ejnRfHoUi64F5UNVbjkZz4C7
         O8ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EB//lnkZSdWAV5oLvXhBykJ6qTN/g5vr54bi0FW1ipc=;
        b=Df0hvHa1kvFtLh1Yij1wDgfvOr59hP3ZXaI2xlBMT7PxPPNdGNrO1vAi8QfTP1n4DU
         kr9YR/brGIbHC0VwmFUW7rqmXI3c96iiXn+F+BGzCzWMHcIo51PX6skhSSvzzv4hKcV4
         GMGEEkyo52m0/iA5SBhp6NdjkONZkig6jLJ/BTHaYzGrP6gwm7n61AHV73h2dIYsCzAL
         tB9GP6Y/alWjRYrvetimsYumbhMGJCBhKPng7mNYQHMi4jMeCuyZpmP3F3ZsBBIFKIG9
         0QfxCgVDRl9t8pcv1Fo4SmqJvlTw+aLgr9e3MdjI2uiT3b3EGU5UHcIlIkVNoNhVyy9a
         DOQw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533EZTuT/HsldwNEbtG3tTYDAVVXAWoYME3ltDPtsx4njtKgLXxB
	OwTy05nFi+RgsCagHVQaIGc=
X-Google-Smtp-Source: ABdhPJyPwYbLVpWg9l+w0xT1FC4bZdSX7SYRofEG3PL90pcOq+5p2mLpTT/XMOPIW7ZR8wmXbi+f2Q==
X-Received: by 2002:a05:6a00:213a:b029:18b:4b8b:68c with SMTP id n26-20020a056a00213ab029018b4b8b068cmr10790530pfj.18.1604866504494;
        Sun, 08 Nov 2020 12:15:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:a0e:: with SMTP id o14ls462387pjo.1.canary-gmail;
 Sun, 08 Nov 2020 12:15:03 -0800 (PST)
X-Received: by 2002:a17:90b:3595:: with SMTP id mm21mr9366933pjb.204.1604866503909;
        Sun, 08 Nov 2020 12:15:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604866503; cv=none;
        d=google.com; s=arc-20160816;
        b=mLtgNjAURorhbA2THnaj6uFXG846NGwcGoWFBu2cvGap6hkHBm00zoeF9cfH887QDc
         6NIMIPBDX86TvjRiyJSLb7TVsXziG2jeCXct2ZNn1x2oGovG6NMqUZ3B215qE3LPQv/n
         ljvZoYuZByARK1+Y5vU46kZVS8Tw63JCgaG0XCp/X3XjtVZak5At17PwrOoiqGGKNhYe
         L8WMe5Bh3gnQJbA+Ehmf+ItlsW4JQf6WS8o9V+WHEb+X3zpftUiaS/tDWoY8bMypX9U/
         RxnB6cYluxfC8JsQTCfuiK2ijt3l9NqbEPCuutdKbQjfs8Ki3+2T1HER4Y2UHxCdnMar
         MklQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=xp9MU/9y5ufoLO0NuzfoU0cK03pmsPRntnlp+guWlx4=;
        b=CZoAuYxMkqQo1gXs5zH9tr9aOtSqE24Dnqh2BsN/KSQJVfEU3Xj4DOtV+H3Dz4yWl8
         sxdzEm/PDRLtthNC9zuAcxqKcxQCBT0Vvf+pYu4/HoGBfkrSsja9z1R58Yn34wSPgOZR
         qU4pEhQOey5Z9djv3PkSZexwYJsPy/MtMJsM0qWxHqk/pK4eKuaPfG36Rc0sKGJ5axw6
         BKxgUn8NAc/U32OWdzXCbF4Lpc3R+94NDLSJxUJ8utgm/1dwl5gC5rT8CCgUudS5EPDA
         u/EEqiGNWcm00xENENxjeKNyhMWdFBxSlCI1WneKpfgND+17WoAKhI3fWtqklyUHI3NP
         TFzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=f5oYkN2h;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i5si566907pjz.1.2020.11.08.12.15.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Nov 2020 12:15:03 -0800 (PST)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 75757221E9
	for <clang-built-linux@googlegroups.com>; Sun,  8 Nov 2020 20:15:03 +0000 (UTC)
Received: by mail-ot1-f47.google.com with SMTP id a15so5195288otf.5
        for <clang-built-linux@googlegroups.com>; Sun, 08 Nov 2020 12:15:03 -0800 (PST)
X-Received: by 2002:a9d:62c1:: with SMTP id z1mr7838332otk.108.1604866502776;
 Sun, 08 Nov 2020 12:15:02 -0800 (PST)
MIME-Version: 1.0
References: <20201106051436.2384842-1-adrian.ratiu@collabora.com>
 <20201106051436.2384842-3-adrian.ratiu@collabora.com> <20201108174014.GA219672@rani.riverdale.lan>
 <20201108180942.GA226037@rani.riverdale.lan>
In-Reply-To: <20201108180942.GA226037@rani.riverdale.lan>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Sun, 8 Nov 2020 21:14:50 +0100
X-Gmail-Original-Message-ID: <CAMj1kXEhkW=twpprrqjRahBvgiyL6kkSOcJPAGkeOUZ_DC5euQ@mail.gmail.com>
Message-ID: <CAMj1kXEhkW=twpprrqjRahBvgiyL6kkSOcJPAGkeOUZ_DC5euQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm: lib: xor-neon: disable clang vectorization
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Arnd Bergmann <arnd@arndb.de>, Adrian Ratiu <adrian.ratiu@collabora.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Russell King <linux@armlinux.org.uk>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, kernel@collabora.com, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=f5oYkN2h;       spf=pass
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

On Sun, 8 Nov 2020 at 19:10, Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> On Sun, Nov 08, 2020 at 12:40:14PM -0500, Arvind Sankar wrote:
> > On Fri, Nov 06, 2020 at 07:14:36AM +0200, Adrian Ratiu wrote:
> > > Due to a Clang bug [1] neon autoloop vectorization does not happen or
> > > happens badly with no gains and considering previous GCC experiences
> > > which generated unoptimized code which was worse than the default asm
> > > implementation, it is safer to default clang builds to the known good
> > > generic implementation.
> > >
> > > The kernel currently supports a minimum Clang version of v10.0.1, see
> > > commit 1f7a44f63e6c ("compiler-clang: add build check for clang 10.0.1").
> > >
> > > When the bug gets eventually fixed, this commit could be reverted or,
> > > if the minimum clang version bump takes a long time, a warning could
> > > be added for users to upgrade their compilers like was done for GCC.
> > >
> > > [1] https://bugs.llvm.org/show_bug.cgi?id=40976
> > >
> > > Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
> > > ---
> > >  arch/arm/include/asm/xor.h | 3 ++-
> > >  arch/arm/lib/Makefile      | 3 +++
> > >  arch/arm/lib/xor-neon.c    | 4 ++++
> > >  3 files changed, 9 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/arch/arm/include/asm/xor.h b/arch/arm/include/asm/xor.h
> > > index aefddec79286..49937dafaa71 100644
> > > --- a/arch/arm/include/asm/xor.h
> > > +++ b/arch/arm/include/asm/xor.h
> > > @@ -141,7 +141,8 @@ static struct xor_block_template xor_block_arm4regs = {
> > >             NEON_TEMPLATES;                 \
> > >     } while (0)
> > >
> > > -#ifdef CONFIG_KERNEL_MODE_NEON
> > > +/* disabled on clang/arm due to https://bugs.llvm.org/show_bug.cgi?id=40976 */
> > > +#if defined(CONFIG_KERNEL_MODE_NEON) && !defined(CONFIG_CC_IS_CLANG)
> > >
> > >  extern struct xor_block_template const xor_block_neon_inner;
> > >
> > > diff --git a/arch/arm/lib/Makefile b/arch/arm/lib/Makefile
> > > index 6d2ba454f25b..53f9e7dd9714 100644
> > > --- a/arch/arm/lib/Makefile
> > > +++ b/arch/arm/lib/Makefile
> > > @@ -43,8 +43,11 @@ endif
> > >  $(obj)/csumpartialcopy.o:  $(obj)/csumpartialcopygeneric.S
> > >  $(obj)/csumpartialcopyuser.o:      $(obj)/csumpartialcopygeneric.S
> > >
> > > +# disabled on clang/arm due to https://bugs.llvm.org/show_bug.cgi?id=40976
> > > +ifndef CONFIG_CC_IS_CLANG
> > >  ifeq ($(CONFIG_KERNEL_MODE_NEON),y)
> > >    NEON_FLAGS                       := -march=armv7-a -mfloat-abi=softfp -mfpu=neon
> > >    CFLAGS_xor-neon.o                += $(NEON_FLAGS)
> > >    obj-$(CONFIG_XOR_BLOCKS) += xor-neon.o
> > >  endif
> > > +endif
> > > diff --git a/arch/arm/lib/xor-neon.c b/arch/arm/lib/xor-neon.c
> > > index e1e76186ec23..84c91c48dfa2 100644
> > > --- a/arch/arm/lib/xor-neon.c
> > > +++ b/arch/arm/lib/xor-neon.c
> > > @@ -18,6 +18,10 @@ MODULE_LICENSE("GPL");
> > >   * Pull in the reference implementations while instructing GCC (through
> > >   * -ftree-vectorize) to attempt to exploit implicit parallelism and emit
> > >   * NEON instructions.
> > > +
> > > + * On Clang the loop vectorizer is enabled by default, but due to a bug
> > > + * (https://bugs.llvm.org/show_bug.cgi?id=40976) vectorization is broke
> > > + * so xor-neon is disabled in favor of the default reg implementations.
> > >   */
> > >  #ifdef CONFIG_CC_IS_GCC
> > >  #pragma GCC optimize "tree-vectorize"
> > > --
> > > 2.29.0
> > >
> >
> > It's actually a bad idea to use #pragma GCC optimize. This is basically
> > the same as tagging all the functions with __attribute__((optimize)),
> > which GCC does not recommend for production use, as it _replaces_
> > optimization options rather than appending to them, and has been
> > observed to result in dropping important compiler flags.
> >
> > There've been a few discussions recently around other such cases:
> > https://lore.kernel.org/lkml/20201028171506.15682-1-ardb@kernel.org/
> > https://lore.kernel.org/lkml/20201028081123.GT2628@hirez.programming.kicks-ass.net/
> >
> > For this file, given that it is supposed to use -ftree-vectorize for the
> > whole file anyway, is there any reason it's not just added to CFLAGS via
> > the Makefile? This seems to be the only use of pragma optimize in the
> > kernel.
>
> Eg, this shows that the pragma results in dropping -fno-strict-aliasing.
> https://godbolt.org/z/1nfrKT
>
> The first function does not use vectorization because s and s->a might
> alias.
>

Thanks, Arvind. I wasn't aware of this issue at the time, but I agree
that we should replace the #pragma with a command line option in this
case.

And given that we already set CFLAGS_xor-neon.o in the Makefile,
adding it there would have been more straight-forward to begin with.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXEhkW%3DtwpprrqjRahBvgiyL6kkSOcJPAGkeOUZ_DC5euQ%40mail.gmail.com.
