Return-Path: <clang-built-linux+bncBCU4TIPXUUFRBA7DT2AQMGQE53EYTMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id A158431AAF2
	for <lists+clang-built-linux@lfdr.de>; Sat, 13 Feb 2021 12:01:25 +0100 (CET)
Received: by mail-pf1-x438.google.com with SMTP id g19sf2211577pfo.19
        for <lists+clang-built-linux@lfdr.de>; Sat, 13 Feb 2021 03:01:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613214084; cv=pass;
        d=google.com; s=arc-20160816;
        b=mRBOasHPfMBA+XB2mUIxtcLg/xUnkvFgWdoXpxy5X6L0c7PZF8ocCs0buOMJgJGfDY
         wQPn0TMS0A1FOKTdWZyhMx17r7SnZi8p2zZUiME4PECV482AHGW0f3jj1Myybkq8Tww9
         mp3wve72+ilgOPfJC4Hb8A5ILYYjGlVXz7n1Cr8svh1uUhalDuTBosnBpFYHNH/IPk3U
         u45V9WcCQkBRqTvqSr6bfz14RY6wqOCgUokgxm6xTl4u4TqMRHrjkGZ097gAl7IR1A3s
         8VSklrP1MAAmh+7k/9ajkDWlUu/PrURF/Uc7UUeeCmdbYpDh7Um96k/s0cjwHSktQtWi
         RA4w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=XUL7Lj9XyzElb6/Nu3aXemJppaOU+ABh2ffO1eRMlho=;
        b=dTkyMXsTPhAOYt9nQQ4YEh2R+DeVy3FnEaBv3Uw6NI183fm0WA0ld6ClYAz4Z44Tda
         cLNnNQ6q1wol9MvMCDc0sHLfVH/NAZL/FZTihV2nevo0ASuVuFRzBSp1HX/rd9pf69m9
         El8/93miPszoQ/wAwQbFzmKR5J2W8pTBADtJv2lG3cO5Vxlm3OLCAKco1M3xev/+AUmm
         JsV/VJWjqNTQQKt4BNchtmNLOmGutRX57HtgA6UgSqXfBhCHVFmFPDir7WBjGK9mnT3D
         TEnNqlFDz+a/w697B/CERRs/58AD+NcIf+Jj515jtx3973mvDeHbw38wHGnUIYYJeBzv
         gIZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=GxERvQ0V;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XUL7Lj9XyzElb6/Nu3aXemJppaOU+ABh2ffO1eRMlho=;
        b=Tv6NVFPNzHZzdGoP3iKnGBX6p7hnK/uoyG1Kp4rXhPmW5YdxhuoF3pZCqKyp/XqDEU
         MKl6g64RsQe5Yy+iETyvjK2MYoG5XOewZ9RC49ZDdDKvFfD0VMTqeVi2zLkrGPUqsHsL
         cBscYk1cSpzliltViP9qzyt/v7b041LbpIxOaGHMUG5q694hU5WdXYFbirphFkrgX0V/
         RkobPWNwffdIePIfXHR4IDKH4ySYmNhsMon83M3+JPIBMxsQwm00fYVNIy92+81E6tpY
         asacPT2eDLaln95Q3iLx3ZpEoa9Qcz1V/Ieo5GWCCjRlfROlLhk1wKzms+uDFuq5ugFO
         lYnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XUL7Lj9XyzElb6/Nu3aXemJppaOU+ABh2ffO1eRMlho=;
        b=lgWRmkGIBOr47LDyENs79n6s4tXYrzjKwVpH5gxicoZGHebaKVUgvHbVQm+hzNDMA+
         +LxVqmFGqANjC7ykMq3XInyBLLl4e1LK+u9Jp8z6SPICLxcHGqFyMH2bn3mPgTqYhpE5
         7Ik5JK/65uEH+YgJopiblwzMP5OquXI7mWE1Qbb303ZuZCNsscBs/03NU2rg5o2Qjb0M
         aQ/zhMDEXBGOoKnC1CPanTmncNTDVmAW8Id4901378D5GBCX4KFH9A/FJ3hPnpzbcKp7
         gI/c8w+Di/Rg1u662wBuOmzT5bpIYGrazcDbGYu5ArXIQx3v3noZ3al2CnP9/c4sIfgL
         PpCQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Hgqd4Mx/BVJDKePxtys27Zkj3IqDkDovRhMGCtyhlwInlSaFZ
	yCff/0TqqzrMQ+WgNqEQOrM=
X-Google-Smtp-Source: ABdhPJyokSEX0QJlQ15ahL8sXErZ2K5vVgKZJ7nhir0jIvtEpn+6hiXVWG5WfbHjH5jY4qnD/ueuDg==
X-Received: by 2002:a63:155b:: with SMTP id 27mr6897989pgv.269.1613214084046;
        Sat, 13 Feb 2021 03:01:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:4015:: with SMTP id ie21ls5701335pjb.2.gmail; Sat,
 13 Feb 2021 03:01:23 -0800 (PST)
X-Received: by 2002:a17:902:e847:b029:e1:52b9:d81b with SMTP id t7-20020a170902e847b02900e152b9d81bmr6512355plg.82.1613214083360;
        Sat, 13 Feb 2021 03:01:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613214083; cv=none;
        d=google.com; s=arc-20160816;
        b=lzZwv/bGkAjier1idjw0Cfj9pESp2kPK6A+1DiR7HqmPAlT4kdLJOuDgJ7BR1GwH4r
         aOFd64+NY9Jv/pe5q3eEOTjTFHL9im+ymDyvhTNTokBj/BYcdb1+ua9Q0c4uh4alBPdF
         qbE5H/2ygdsBQ1XavAggFz+ez+Yc3dfVaX7zB9K87MlMlHaK95f10L8Y0PqH5iLHUxCt
         pKsa4g3Fjcn6QUBEfUZ9rDki1zNeGwkNhYYWNbCpm07X41JdZV5hdZ8mCC18JOgse5ob
         hlXMoXiAnxr/38SpHugcPHK31k0VNXbz9H9PmijTN3Xa392ndkT/2+g+RbkHtMoE3lLj
         jD8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Wg5Ly6Cridz2gU/LjH7NDrCS+07g7sn6x7iI4Ngz8YY=;
        b=CJKkBcHbPiDxQZKzZDICbv6auu+9Mno5EnaF2V7sd7JaftrouHobWgl9E77MTcA6mJ
         iB7K90gr0c0nunRhzzn7/uaXed++j8mNdTjDzIDIhPYjzJf7MCNtHG61GW+s1aOXiZGF
         828wwfG7DWwTb+5sRz0ORZc/ix9ods5oWy9DM1xkXKiewAvfi0LNi4l8dhfB0+Vht7k8
         9UgSefkLGa5BB83+hoa/MG2Y3c0nTrD7OuT4oEdWNjv+QUjLnSpK8H3qs8qUN8lUWPcX
         t2TdaMDiJztj0RYjewuooFEXn9BsfvPvEulRfvYFf0l6lmRI82VHMsjgJIA0f7IEs5hG
         /30w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=GxERvQ0V;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b14si333686plg.5.2021.02.13.03.01.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2021 03:01:23 -0800 (PST)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 05D7564E4E
	for <clang-built-linux@googlegroups.com>; Sat, 13 Feb 2021 11:01:23 +0000 (UTC)
Received: by mail-ot1-f44.google.com with SMTP id s107so1684576otb.8
        for <clang-built-linux@googlegroups.com>; Sat, 13 Feb 2021 03:01:22 -0800 (PST)
X-Received: by 2002:a05:6830:13ce:: with SMTP id e14mr4959394otq.108.1613214082190;
 Sat, 13 Feb 2021 03:01:22 -0800 (PST)
MIME-Version: 1.0
References: <CAK8P3a0MbxMC9iLe0NGR0ttLY7sZDjsrgKvfRZOXVJLjzDNKmA@mail.gmail.com>
 <20210128193422.241155-1-ndesaulniers@google.com> <CAMj1kXE5uw4+zV3JVpfA2drOD5TZVMs5a_E5wrrnzjEYc=E_fA@mail.gmail.com>
 <CAK8P3a0CTUh=4h=U6S5A_tqHxYEyO52HTropAV9mKh2hwJvi0g@mail.gmail.com> <CAMj1kXEx-mUCgX5F6xg8-6jKtpqQ=sRosmo4u-0jhW5zu9A-fw@mail.gmail.com>
In-Reply-To: <CAMj1kXEx-mUCgX5F6xg8-6jKtpqQ=sRosmo4u-0jhW5zu9A-fw@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Sat, 13 Feb 2021 12:01:10 +0100
X-Gmail-Original-Message-ID: <CAMj1kXF3Xiveq_ih=5yD5CUdG8r=FXGTdN+qT0Rpgsx_8qi7Hg@mail.gmail.com>
Message-ID: <CAMj1kXF3Xiveq_ih=5yD5CUdG8r=FXGTdN+qT0Rpgsx_8qi7Hg@mail.gmail.com>
Subject: Re: [PATCH v2] ARM: kprobes: rewrite test-[arm|thumb].c in UAL
To: Arnd Bergmann <arnd@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Russell King <linux@armlinux.org.uk>, 
	Arnd Bergmann <arnd@arndb.de>, Nathan Chancellor <natechancellor@gmail.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=GxERvQ0V;       spf=pass
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

On Fri, 29 Jan 2021 at 00:30, Ard Biesheuvel <ardb@kernel.org> wrote:
>
> On Thu, 28 Jan 2021 at 23:28, Arnd Bergmann <arnd@kernel.org> wrote:
> >
> > On Thu, Jan 28, 2021 at 10:03 PM Ard Biesheuvel <ardb@kernel.org> wrote:
> > > On Thu, 28 Jan 2021 at 20:34, Nick Desaulniers <ndesaulniers@google.com> wrote:
> > > > @@ -468,15 +468,15 @@ void kprobe_thumb32_test_cases(void)
> > > >
> > > >         TEST_UNSUPPORTED("strexb        r0, r1, [r2]")
> > > >         TEST_UNSUPPORTED("strexh        r0, r1, [r2]")
> > > > -       TEST_UNSUPPORTED("strexd        r0, r1, [r2]")
> > > > +       TEST_UNSUPPORTED("strexd        r0, r1, r2, [r2]")
> > > >         TEST_UNSUPPORTED("ldrexb        r0, [r1]")
> > > >         TEST_UNSUPPORTED("ldrexh        r0, [r1]")
> > > > -       TEST_UNSUPPORTED("ldrexd        r0, [r1]")
> > > > +       TEST_UNSUPPORTED("ldrexd        r0, r1, [r1]")
> > > >
> > > >         TEST_GROUP("Data-processing (shifted register) and (modified immediate)")
> > > >
> > > >  #define _DATA_PROCESSING32_DNM(op,s,val)                                       \
> > > > -       TEST_RR(op s".w r0,  r",1, VAL1,", r",2, val, "")                       \
> > > > +       TEST_RR(op s"   r0,  r",1, VAL1,", r",2, val, "")                       \
> > >
> > > What is wrong with these .w suffixes? Shouldn't the assembler accept
> > > these even on instructions that only exist in a wide encoding?
> >
> > I don't know if that is a bug in the integrated assembler or
> > intentional behavior, but it may be easier to just change the
> > kernel than the compiler in this case, as it also makes it work
> > for older versions.
> >
> > FWIW, I needed a related change in a couple of other files:
> >
>
> For fully specified test cases, I suppose removing the .w is fine. But
> for the macros below, it really isn't: it depends on the actual
> register assignment whether narrow encodings exist or not, and in that
> case, we definitely want the wide one. The fact that instantiating the
> macro in a different way can only produce wide encodings in the first
> place should really not trigger an error.
>
> Things like this can break the Thumb2 build very subtly, so if the
> integrated assembler is not up to that, we should simply disable it
> for Thumb2 builds.
>

As mentioned in issue #1271, my observation here is not entirely accurate.

In the general case, macros that take register names as inputs can
produce narrow or wide opcodes depending on which exact registers are
being used (narrow opcodes mostly only support registers r0-r7)

However, in this particular case, all the ldr/str instructions are
either the pre-indexed or the post-indexed variants, for which only a
wide encoding exists, and so omitting the .w suffix is safe here.

However, if we apply the change below, can we please document this in
a comment, i.e., that encoding T4 is used for LDR/STR, and so the
result is guaranteed to be wide in spite of the missing suffix?



> > diff --git a/arch/arm/lib/copy_from_user.S b/arch/arm/lib/copy_from_user.S
> > index 6acdfde56849..3ced01d9afe4 100644
> > --- a/arch/arm/lib/copy_from_user.S
> > +++ b/arch/arm/lib/copy_from_user.S
> > @@ -60,7 +60,7 @@
> >  #define LDR1W_SHIFT 0
> >
> >   .macro ldr1w ptr reg abort
> > - USERL(\abort, W(ldr) \reg, [\ptr], #4)
> > + USERL(\abort, ldr \reg, [\ptr], #4)
> >   .endm
> >
> >   .macro ldr4w ptr reg1 reg2 reg3 reg4 abort
> > @@ -80,7 +80,7 @@
> >  #define STR1W_SHIFT 0
> >
> >   .macro str1w ptr reg abort
> > - W(str) \reg, [\ptr], #4
> > + str \reg, [\ptr], #4
> >   .endm
> >
> >   .macro str8w ptr reg1 reg2 reg3 reg4 reg5 reg6 reg7 reg8 abort
> > diff --git a/arch/arm/lib/copy_to_user.S b/arch/arm/lib/copy_to_user.S
> > index 485fa3cffdbe..a6a96f814720 100644
> > --- a/arch/arm/lib/copy_to_user.S
> > +++ b/arch/arm/lib/copy_to_user.S
> > @@ -34,7 +34,7 @@
> >  #define LDR1W_SHIFT 0
> >
> >   .macro ldr1w ptr reg abort
> > - W(ldr) \reg, [\ptr], #4
> > + ldr \reg, [\ptr], #4
> >   .endm
> >
> >   .macro ldr4w ptr reg1 reg2 reg3 reg4 abort
> > @@ -77,7 +77,7 @@
> >  #define STR1W_SHIFT 0
> >
> >   .macro str1w ptr reg abort
> > - USERL(\abort, W(str) \reg, [\ptr], #4)
> > + USERL(\abort, str \reg, [\ptr], #4)
> >   .endm
> >
> >   .macro str8w ptr reg1 reg2 reg3 reg4 reg5 reg6 reg7 reg8 abort
> > diff --git a/arch/arm/lib/memcpy.S b/arch/arm/lib/memcpy.S
> > index e4caf48c089f..7b980a1a4227 100644
> > --- a/arch/arm/lib/memcpy.S
> > +++ b/arch/arm/lib/memcpy.S
> > @@ -15,7 +15,7 @@
> >  #define STR1W_SHIFT 0
> >
> >   .macro ldr1w ptr reg abort
> > - W(ldr) \reg, [\ptr], #4
> > + ldr \reg, [\ptr], #4
> >   .endm
> >
> >   .macro ldr4w ptr reg1 reg2 reg3 reg4 abort
> > @@ -31,7 +31,7 @@
> >   .endm
> >
> >   .macro str1w ptr reg abort
> > - W(str) \reg, [\ptr], #4
> > + str \reg, [\ptr], #4
> >   .endm
> >
> >   .macro str8w ptr reg1 reg2 reg3 reg4 reg5 reg6 reg7 reg8 abort
> > diff --git a/arch/arm/lib/memmove.S b/arch/arm/lib/memmove.S
> > index 6fecc12a1f51..35c5c06b7588 100644
> > --- a/arch/arm/lib/memmove.S
> > +++ b/arch/arm/lib/memmove.S
> > @@ -84,24 +84,24 @@ WEAK(memmove)
> >   addne pc, pc, ip @ C is always clear here
> >   b 7f
> >  6: W(nop)
> > - W(ldr) r3, [r1, #-4]!
> > - W(ldr) r4, [r1, #-4]!
> > - W(ldr) r5, [r1, #-4]!
> > - W(ldr) r6, [r1, #-4]!
> > - W(ldr) r7, [r1, #-4]!
> > - W(ldr) r8, [r1, #-4]!
> > - W(ldr) lr, [r1, #-4]!
> > + ldr r3, [r1, #-4]!
> > + ldr r4, [r1, #-4]!
> > + ldr r5, [r1, #-4]!
> > + ldr r6, [r1, #-4]!
> > + ldr r7, [r1, #-4]!
> > + ldr r8, [r1, #-4]!
> > + ldr lr, [r1, #-4]!
> >
> >   add pc, pc, ip
> >   nop
> >   W(nop)
> > - W(str) r3, [r0, #-4]!
> > - W(str) r4, [r0, #-4]!
> > - W(str) r5, [r0, #-4]!
> > - W(str) r6, [r0, #-4]!
> > - W(str) r7, [r0, #-4]!
> > - W(str) r8, [r0, #-4]!
> > - W(str) lr, [r0, #-4]!
> > + str r3, [r0, #-4]!
> > + str r4, [r0, #-4]!
> > + str r5, [r0, #-4]!
> > + str r6, [r0, #-4]!
> > + str r7, [r0, #-4]!
> > + str r8, [r0, #-4]!
> > + str lr, [r0, #-4]!
> >
> >   CALGN( bcs 2b )

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXF3Xiveq_ih%3D5yD5CUdG8r%3DFXGTdN%2BqT0Rpgsx_8qi7Hg%40mail.gmail.com.
