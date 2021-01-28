Return-Path: <clang-built-linux+bncBD63HSEZTUIBBOESZWAAMGQEXSMWQYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id A71823081DB
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 00:31:05 +0100 (CET)
Received: by mail-vk1-xa3f.google.com with SMTP id n144sf1885421vke.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 28 Jan 2021 15:31:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611876664; cv=pass;
        d=google.com; s=arc-20160816;
        b=NlfNqIXXXs2Z8+xMsRPU5cSUfgNipAxiCNEsgMersceQEBGGFLjA+EiVpXkTvMkl1y
         /ZvafXzJ51gE1RlkWhMLooIZe1tDFqzUFlQ5GaksgtsJnz0O0zyrKxU9SCOh3Tq6YfSJ
         xTJhyIqoWOdzlRrVZod8bF+yg+jdMUQqn4I5lqm5Q5NEbqpv7vhDEy6H73RVzP7bw3dG
         MS0ajBzk9ShqZTOriFurbc8iA0bVvO+1EmSzayo4REzp7qtpWUwrItKx6s2PPw70YApv
         YSi5hRlqxxAEGfxJ82ec9UdTCQ+wKJ/j5ye97JkSWOyEFchxZf2B8g+Kwr0tVEJVk/xc
         r0oA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=ZvGvAzeRqT4gCTiUGBpb879dEtzGXsH34GDx8fUW4N8=;
        b=JmxAwstXhriVdSaVmdtHYLMGO2J7qdSWm0FJKXe1rgorvHq4A41QhZWx+iqFNP8mGk
         hW6GE2dEcnBFCHWF3zSMUqx+0W3A2Dt0rJaHWuoxgKwh5kBAJgzVQTRQFNxGHEfOOqkM
         9kQJ2wxP9wAPZ0jv3ZuSJOPwF2kpvxqnxx5ZVNjoHWW+Uqk16g5pLsUB3o79otqTp5w7
         zYMawcTr4xC6pmMpbiKkRJ/U+iO4MLh1UM0leqTNX7qKvYhwF6SLdgsccKypPqdBSo98
         jxr8Xusju5EeXav92g1cKIZ+3CZBkkhjhEuRnzH8WXnbiExxstgetkHw7yILpejHylkz
         lIjA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=XPW2F5Cg;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZvGvAzeRqT4gCTiUGBpb879dEtzGXsH34GDx8fUW4N8=;
        b=ESZjLlbqXjP8tSUbeeXiHFhlDFwjrUp4Oi6K275xRMllVbp5MFV6vwdi59RoYCDPuL
         f9+YIiKpG9T26ns0wGSLAh2JR0IbmF3fJA3yrESNbAw81Sb03sAEWeEE6bwFB2JPkEoS
         ZpYzzFjNOyqkxFApFUsbXNnbKYOfI+Y2Ptlk/Gkb+jXbP7yc1sFInRoZ1GsvC3CieRxL
         ru2effTx626kBQAiepjMCumsN8LM0UT/iai4AG+yT9WbvzKsIJEgJHD+a3hWMSXKgDTU
         Gelt7C9/p2jCexqP5BmSs/ewlc5Qs+q45x2bhz+g3cuCrQ45Yeg7Mj03A4+xio9MoYtl
         RnTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZvGvAzeRqT4gCTiUGBpb879dEtzGXsH34GDx8fUW4N8=;
        b=deKAo30afE/DZN8O8L9KlAt+q5++JBjSc41IvBZycsCbv1UFzOhAzIVkConEtJlffW
         xQTYknHDeaYAt+D3YHdCjP8mCHc5defQ+bq1af4hmHHdOZVFgiPBUcgvmGFJ/FnU3jwq
         vUW7Imb6ceb+irZY9n5RWMXrlKBMIC5sovmAEd7OECPeH3zFpFg+E+QfvcGBQOqPx3Hn
         FdkAOQx2m/RjFGYTL9+reQ/myOuYD7W6/F8Rk02A5zCJkbA+MhI7NG695xhLFW0Hssw7
         8+U3y30pxUoDqDowOGuRJAD3Yl4y2Ydty4UbsYu6ygophkI0zlzhGeV8x6uFCpdkwvkz
         91bg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532sbXzil0KMTkFjN7khyF71Ew3uR8YqUyR+7Ja4hrvSJaNxgIEw
	LKLYRqVeY0d3qXLXcBmNfns=
X-Google-Smtp-Source: ABdhPJyBlRVPnH64LXiotFOdJyIfKxN1ZIDqKkZwqnTgHGPJ9oT7SWo8AdZs45+3COrTruCjwlhheA==
X-Received: by 2002:ab0:2851:: with SMTP id c17mr1253665uaq.120.1611876664690;
        Thu, 28 Jan 2021 15:31:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:c48f:: with SMTP id d15ls932412vsk.0.gmail; Thu, 28 Jan
 2021 15:31:04 -0800 (PST)
X-Received: by 2002:a67:99c6:: with SMTP id b189mr1254514vse.58.1611876664185;
        Thu, 28 Jan 2021 15:31:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611876664; cv=none;
        d=google.com; s=arc-20160816;
        b=ZDlP41795vWkJdpuheWxa9DmYgYS72cm/u/mMRcmQNgQR26pkcCPj43IfkqOVNpNsd
         lO2dwsQySI818AgUWHWvOrpFVms3qWLqZXUP9IUToXue334YIEuWwAPnrn1WdypOtMhW
         UqTWnaxR3XPBsIW3VaFlcwLQaBTPEk65PV8qsi1T7iOvFdiR8Aa3quSwnvjchNtEES99
         hrZeAeZyU40jpbjD3bVTr5rbDpyLKqzWA4PLIZKuWA/lAP13Q5ZMFaZOYIw4S+rFwCbg
         oiadh0MVsGZXIfUqmIoA1veSGiqH1AmXw4AFR9FQbXOpn1U1Itd3Q8WrQqbL5I8yUjNN
         3snQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=8+oit+P4+s2dEOmT/n96aE4qKoNJkhLBsiemk0aGOus=;
        b=EsVYxdvPp7czONj+cuTWkkgn02S/8pPrPPnpE9528TJatt8SYHQvYbRfYUQJU4gYyD
         vredwUR1pWmuHZpeOusDzJD6jgc0XAtklQk5DzVMs3AViX3LEWLZX4C4J7cFiPZYL+Kx
         RNJZzRX2XEC4xoR/Ih2t8aSYmW54hePAAyIS7y7l1Blqk5po3opq4LRNeel5G3jXt251
         sgp6n6MS/5J4Mums8gq8r11k6ofVRbhGKy1d4cW2Yq3etOs4c9NjkNwnd+ds3BKtJ/Dm
         4yVJMwgaUnCOZDlI2nuUpSp4Q4QeYNR3ddPFEdbapfRtcL4UCjwSIYOCI/i2VY6IyZ94
         1CbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=XPW2F5Cg;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s196si330097vkb.2.2021.01.28.15.31.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Jan 2021 15:31:04 -0800 (PST)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id B84C864DFD
	for <clang-built-linux@googlegroups.com>; Thu, 28 Jan 2021 23:31:02 +0000 (UTC)
Received: by mail-ot1-f43.google.com with SMTP id 36so6964539otp.2
        for <clang-built-linux@googlegroups.com>; Thu, 28 Jan 2021 15:31:02 -0800 (PST)
X-Received: by 2002:a05:6830:1158:: with SMTP id x24mr1209516otq.108.1611876661885;
 Thu, 28 Jan 2021 15:31:01 -0800 (PST)
MIME-Version: 1.0
References: <CAK8P3a0MbxMC9iLe0NGR0ttLY7sZDjsrgKvfRZOXVJLjzDNKmA@mail.gmail.com>
 <20210128193422.241155-1-ndesaulniers@google.com> <CAMj1kXE5uw4+zV3JVpfA2drOD5TZVMs5a_E5wrrnzjEYc=E_fA@mail.gmail.com>
 <CAK8P3a0CTUh=4h=U6S5A_tqHxYEyO52HTropAV9mKh2hwJvi0g@mail.gmail.com>
In-Reply-To: <CAK8P3a0CTUh=4h=U6S5A_tqHxYEyO52HTropAV9mKh2hwJvi0g@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Fri, 29 Jan 2021 00:30:50 +0100
X-Gmail-Original-Message-ID: <CAMj1kXEx-mUCgX5F6xg8-6jKtpqQ=sRosmo4u-0jhW5zu9A-fw@mail.gmail.com>
Message-ID: <CAMj1kXEx-mUCgX5F6xg8-6jKtpqQ=sRosmo4u-0jhW5zu9A-fw@mail.gmail.com>
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
 header.i=@kernel.org header.s=k20201202 header.b=XPW2F5Cg;       spf=pass
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

On Thu, 28 Jan 2021 at 23:28, Arnd Bergmann <arnd@kernel.org> wrote:
>
> On Thu, Jan 28, 2021 at 10:03 PM Ard Biesheuvel <ardb@kernel.org> wrote:
> > On Thu, 28 Jan 2021 at 20:34, Nick Desaulniers <ndesaulniers@google.com> wrote:
> > > @@ -468,15 +468,15 @@ void kprobe_thumb32_test_cases(void)
> > >
> > >         TEST_UNSUPPORTED("strexb        r0, r1, [r2]")
> > >         TEST_UNSUPPORTED("strexh        r0, r1, [r2]")
> > > -       TEST_UNSUPPORTED("strexd        r0, r1, [r2]")
> > > +       TEST_UNSUPPORTED("strexd        r0, r1, r2, [r2]")
> > >         TEST_UNSUPPORTED("ldrexb        r0, [r1]")
> > >         TEST_UNSUPPORTED("ldrexh        r0, [r1]")
> > > -       TEST_UNSUPPORTED("ldrexd        r0, [r1]")
> > > +       TEST_UNSUPPORTED("ldrexd        r0, r1, [r1]")
> > >
> > >         TEST_GROUP("Data-processing (shifted register) and (modified immediate)")
> > >
> > >  #define _DATA_PROCESSING32_DNM(op,s,val)                                       \
> > > -       TEST_RR(op s".w r0,  r",1, VAL1,", r",2, val, "")                       \
> > > +       TEST_RR(op s"   r0,  r",1, VAL1,", r",2, val, "")                       \
> >
> > What is wrong with these .w suffixes? Shouldn't the assembler accept
> > these even on instructions that only exist in a wide encoding?
>
> I don't know if that is a bug in the integrated assembler or
> intentional behavior, but it may be easier to just change the
> kernel than the compiler in this case, as it also makes it work
> for older versions.
>
> FWIW, I needed a related change in a couple of other files:
>

For fully specified test cases, I suppose removing the .w is fine. But
for the macros below, it really isn't: it depends on the actual
register assignment whether narrow encodings exist or not, and in that
case, we definitely want the wide one. The fact that instantiating the
macro in a different way can only produce wide encodings in the first
place should really not trigger an error.

Things like this can break the Thumb2 build very subtly, so if the
integrated assembler is not up to that, we should simply disable it
for Thumb2 builds.

> diff --git a/arch/arm/lib/copy_from_user.S b/arch/arm/lib/copy_from_user.S
> index 6acdfde56849..3ced01d9afe4 100644
> --- a/arch/arm/lib/copy_from_user.S
> +++ b/arch/arm/lib/copy_from_user.S
> @@ -60,7 +60,7 @@
>  #define LDR1W_SHIFT 0
>
>   .macro ldr1w ptr reg abort
> - USERL(\abort, W(ldr) \reg, [\ptr], #4)
> + USERL(\abort, ldr \reg, [\ptr], #4)
>   .endm
>
>   .macro ldr4w ptr reg1 reg2 reg3 reg4 abort
> @@ -80,7 +80,7 @@
>  #define STR1W_SHIFT 0
>
>   .macro str1w ptr reg abort
> - W(str) \reg, [\ptr], #4
> + str \reg, [\ptr], #4
>   .endm
>
>   .macro str8w ptr reg1 reg2 reg3 reg4 reg5 reg6 reg7 reg8 abort
> diff --git a/arch/arm/lib/copy_to_user.S b/arch/arm/lib/copy_to_user.S
> index 485fa3cffdbe..a6a96f814720 100644
> --- a/arch/arm/lib/copy_to_user.S
> +++ b/arch/arm/lib/copy_to_user.S
> @@ -34,7 +34,7 @@
>  #define LDR1W_SHIFT 0
>
>   .macro ldr1w ptr reg abort
> - W(ldr) \reg, [\ptr], #4
> + ldr \reg, [\ptr], #4
>   .endm
>
>   .macro ldr4w ptr reg1 reg2 reg3 reg4 abort
> @@ -77,7 +77,7 @@
>  #define STR1W_SHIFT 0
>
>   .macro str1w ptr reg abort
> - USERL(\abort, W(str) \reg, [\ptr], #4)
> + USERL(\abort, str \reg, [\ptr], #4)
>   .endm
>
>   .macro str8w ptr reg1 reg2 reg3 reg4 reg5 reg6 reg7 reg8 abort
> diff --git a/arch/arm/lib/memcpy.S b/arch/arm/lib/memcpy.S
> index e4caf48c089f..7b980a1a4227 100644
> --- a/arch/arm/lib/memcpy.S
> +++ b/arch/arm/lib/memcpy.S
> @@ -15,7 +15,7 @@
>  #define STR1W_SHIFT 0
>
>   .macro ldr1w ptr reg abort
> - W(ldr) \reg, [\ptr], #4
> + ldr \reg, [\ptr], #4
>   .endm
>
>   .macro ldr4w ptr reg1 reg2 reg3 reg4 abort
> @@ -31,7 +31,7 @@
>   .endm
>
>   .macro str1w ptr reg abort
> - W(str) \reg, [\ptr], #4
> + str \reg, [\ptr], #4
>   .endm
>
>   .macro str8w ptr reg1 reg2 reg3 reg4 reg5 reg6 reg7 reg8 abort
> diff --git a/arch/arm/lib/memmove.S b/arch/arm/lib/memmove.S
> index 6fecc12a1f51..35c5c06b7588 100644
> --- a/arch/arm/lib/memmove.S
> +++ b/arch/arm/lib/memmove.S
> @@ -84,24 +84,24 @@ WEAK(memmove)
>   addne pc, pc, ip @ C is always clear here
>   b 7f
>  6: W(nop)
> - W(ldr) r3, [r1, #-4]!
> - W(ldr) r4, [r1, #-4]!
> - W(ldr) r5, [r1, #-4]!
> - W(ldr) r6, [r1, #-4]!
> - W(ldr) r7, [r1, #-4]!
> - W(ldr) r8, [r1, #-4]!
> - W(ldr) lr, [r1, #-4]!
> + ldr r3, [r1, #-4]!
> + ldr r4, [r1, #-4]!
> + ldr r5, [r1, #-4]!
> + ldr r6, [r1, #-4]!
> + ldr r7, [r1, #-4]!
> + ldr r8, [r1, #-4]!
> + ldr lr, [r1, #-4]!
>
>   add pc, pc, ip
>   nop
>   W(nop)
> - W(str) r3, [r0, #-4]!
> - W(str) r4, [r0, #-4]!
> - W(str) r5, [r0, #-4]!
> - W(str) r6, [r0, #-4]!
> - W(str) r7, [r0, #-4]!
> - W(str) r8, [r0, #-4]!
> - W(str) lr, [r0, #-4]!
> + str r3, [r0, #-4]!
> + str r4, [r0, #-4]!
> + str r5, [r0, #-4]!
> + str r6, [r0, #-4]!
> + str r7, [r0, #-4]!
> + str r8, [r0, #-4]!
> + str lr, [r0, #-4]!
>
>   CALGN( bcs 2b )

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXEx-mUCgX5F6xg8-6jKtpqQ%3DsRosmo4u-0jhW5zu9A-fw%40mail.gmail.com.
