Return-Path: <clang-built-linux+bncBDYJPJO25UGBB5G3VT6QKGQE3UXESFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93d.google.com (mail-ua1-x93d.google.com [IPv6:2607:f8b0:4864:20::93d])
	by mail.lfdr.de (Postfix) with ESMTPS id 87DF12AE4D0
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Nov 2020 01:19:01 +0100 (CET)
Received: by mail-ua1-x93d.google.com with SMTP id m27sf64417uab.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 16:19:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605053940; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZqjZyibeXLL/qNIIk71WiPIleLQmhPSft9E3YKAO+BPIgyVmp66oEM8SOyS2A8awdN
         qxEI6zh6aMS+nCA8YY0vFyXrZrd+E5ku+/J8+zhR1hNstgLI6k/vAG/ipifR179Iqy/8
         UVNs9WNqacZxdyoGGdbL2yx0ssMua6fW29Y9VKaAL3eNBske6QTUaL+QfvDFntO15NUA
         aLGvSAi1qrhjnOnZdoD1KZ7EsfrQi1AputgGmCeSmmGjDcs9K1ElGirqn02jzB+5kwWg
         f8nFFu8FyQNTlhP4FSgtqYO3MUbkKkYxlQzyTyX0X4e3oJKFAlPPW/IPxvVO2nkU8TZN
         KkAg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=7WeoGh7f3+T4cY5QgPfEM/rIg/0Jd3I5dtVpxdzn5S8=;
        b=jTgJUoB1B9AY5AVk0FdZ8RYYbP0vsIx3bELNmo7TnXgvXrYiE5HPvCUmms9HOnC/NK
         dWSNxeF2xl4ZmG8jPGids31giX5xsp1JnB8G5TMFarncSTfCPLMzUxoQFYv+NVjqVWqF
         HTBHlLNHT3elhh6VsyBVP57f3ce/5plhG3d10u8/a8Oghr9XTyOjY7+DgYrCwzEPtm34
         oYDHJd6RMYh/EZI4u78XfvbC6b/zmFU/zxKbEJYVNRGX+C6AxL2W9AMFRi5tkhFpgTgg
         lt8PsynBNte6Hnh45lJUNdI2NiqGVvjINgpGTTOqjM5IMF4VCAj12aFcrmKny96P3c49
         NeQA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hKTKy5CT;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7WeoGh7f3+T4cY5QgPfEM/rIg/0Jd3I5dtVpxdzn5S8=;
        b=puiGGI1sCE6+BDAjVu1titZvJk5oD46JHLzY+LcOwHicj84dweC1zKMOZbZg72s2r7
         GlIxCQdyxZPQjCvUf/HjvzoLsfpknJ/evnXH8w/1/NHbFBFqXRJ+ZbSH3JN/hQjK7I8M
         s3piiglAE4oM34RlKVgWw4MKG0tPFKuDKRCJmShDjRQlo6d7YIuMfOqJ0YJDXCq9FpBN
         R/24TbLX+vqkbAERBcPg2bZ5rOOejP09T5XRKEjiPYJNLMndZkvd9rJet1Np30D0hZ0x
         5ep8ZWw469MqoeoXLi7Nlz8blFYvvzABvFfnnVKvGEg/5vOMxlVN9eFH8vLC0BOOm9u8
         jAKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7WeoGh7f3+T4cY5QgPfEM/rIg/0Jd3I5dtVpxdzn5S8=;
        b=sXr9uAyl7xzPp/WDhtGGnFSjMSnuY+RutVEUzvMpdmY8jaLR5VdxVty1QCurchazEE
         utDSdF2RrxLyMKhxgrCuWi8m5PzIK+rnREulRpd2WUgduQFTJULDoFbhVVWOFTeMVGbn
         sXJcXEYZkKrHKHV5gyoIn42WXYQ9sVfDXAtHDca7gVrIzTjs0MO8f0gF/ygI1Ss9gSYb
         VabIc3lx6FZs88x6ZUk35C9FoODq//6i1pqpYzwLw5c3F8shL6LI9oL7JQK3Zxrzx7Pc
         d/A27jxKQfAFmc5nulTOM0IhIlH2ELmMe3uHiR8KFVCvqFT4C1XdJzFBKRnWoQon8xBa
         VwHA==
X-Gm-Message-State: AOAM5325DS/27NYaOUv2t5mKsvDe6/qfM4RB4//z19QEfNoQQzHVJmeF
	Y3xQfmXDRUdSlrY4GAUBEsc=
X-Google-Smtp-Source: ABdhPJw6TnK4/y00OPEcFm+YPU9xHtl37Vs6LEtuYaoQ40JafpbJmCqbk1sgHzxE0dtMEGDELRGB3g==
X-Received: by 2002:a1f:38d2:: with SMTP id f201mr12251111vka.17.1605053940560;
        Tue, 10 Nov 2020 16:19:00 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:ed19:: with SMTP id l25ls1710907vsp.2.gmail; Tue, 10 Nov
 2020 16:19:00 -0800 (PST)
X-Received: by 2002:a67:fb4d:: with SMTP id e13mr8914019vsr.46.1605053940098;
        Tue, 10 Nov 2020 16:19:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605053940; cv=none;
        d=google.com; s=arc-20160816;
        b=B8y/UIGA77ffUD4uK4QzXmwK0NU+DbtW60sboM/h4aHFLXJLHROUqg52faVvBasmGp
         THF92agal0UcvExfLvJENDyCLyvAGn0DCrhwR7FoIcYhGTVslfKX8p+aQgXPtv5F81dZ
         FDRYz3o27VBSg4zRrXxk6Hhh/4l4B4Grlj97OeClBbYOaAza43r8NM3po6GLJsAT2s9/
         imZJP5VljwBfGJ8UQ1zXLxmxriBavtx3HmMZ55bwcvtprT6OJYWXs0c8eETLjaidmmkP
         TXhNYWKTkmmyB1OwiyowewkV79v7PBeaKRfHucqOLcaXx2plIC0ltMtaqtnJ2hGqS5vE
         CTkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=AEiAgZw9G02MtGpg1xfKr5SR9IWLclqQ32M+RKFyvw8=;
        b=dX78edyWb6wDCWwu7qHi4XAhbS7cxbE6Sy6h2ILUsvHD9hmEjUPcLBRDMjI2JSgYNP
         SEFOV7x+4aRZwjhJ36xRQ5ROqu6ArUxYpxQzrSq4WVl8En1mau+Oe1nsUQrT7EXnssrp
         +o+YdD2Uu1gxgCH78lj9Zmars12rM2cNtT/9YQRq/dbdcqrKjeLKI6zDN6V8Twi8RcgU
         /zPHDfBYcBR9DN4pjDA4wibE4UyGjO6uZ/8dU5OSDJrvA8JJQPegy9OfItNYmc5lWTzt
         TY2FNRKgATgEiKq3uu98pv0dE0SQH2svuPFENULIISe6AaoYsBKS04ttykKSPq26ed99
         Hqzg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hKTKy5CT;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id c124si31913vkb.4.2020.11.10.16.19.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Nov 2020 16:19:00 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id h6so187789pgk.4
        for <clang-built-linux@googlegroups.com>; Tue, 10 Nov 2020 16:19:00 -0800 (PST)
X-Received: by 2002:a63:b55e:: with SMTP id u30mr18497132pgo.381.1605053939029;
 Tue, 10 Nov 2020 16:18:59 -0800 (PST)
MIME-Version: 1.0
References: <20201106051436.2384842-1-adrian.ratiu@collabora.com>
 <20201106051436.2384842-3-adrian.ratiu@collabora.com> <20201106101419.GB3811063@ubuntu-m3-large-x86>
 <87wnyyvh56.fsf@collabora.com> <CAKwvOdkodob0M0r_AK_4nG3atLGMyNENMd6qVAHSPa92Zh7UZA@mail.gmail.com>
 <871rh2i9xg.fsf@iwork.i-did-not-set--mail-host-address--so-tickle-me>
 <CAKwvOdkm3u83TQDBB-fC0TwKZCFXGh5sAfahKXxA+mnzgDid_w@mail.gmail.com> <87sg9ghil5.fsf@collabora.com>
In-Reply-To: <87sg9ghil5.fsf@collabora.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 10 Nov 2020 16:18:47 -0800
Message-ID: <CAKwvOd=QrU6rCQ4_Ji=XsskPovOSXpk0NkjTqVjLijw1-CZ17Q@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm: lib: xor-neon: disable clang vectorization
To: Adrian Ratiu <adrian.ratiu@collabora.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Russell King <linux@armlinux.org.uk>, 
	LKML <linux-kernel@vger.kernel.org>, Collabora Kernel ML <kernel@collabora.com>, 
	Ard Biesheuvel <ardb@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=hKTKy5CT;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541
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

On Tue, Nov 10, 2020 at 3:54 PM Adrian Ratiu <adrian.ratiu@collabora.com> wrote:
>
> On Tue, 10 Nov 2020, Nick Desaulniers <ndesaulniers@google.com>
> wrote:
> > On Mon, Nov 9, 2020 at 11:51 AM Adrian Ratiu
> > <adrian.ratiu@collabora.com> wrote:
> >>
> >> On Fri, 06 Nov 2020, Nick Desaulniers <ndesaulniers@google.com>
> >> wrote:
> >> > +#pragma clang loop vectorize(enable)
> >> >         do {
> >> >                 p1[0] ^= p2[0] ^ p3[0] ^ p4[0] ^ p5[0]; p1[1]
> >> >                 ^= p2[1] ^ p3[1] ^ p4[1] ^ p5[1];
> >> > ``` seems to generate the vectorized code.
> >> >
> >> > Why don't we find a way to make those pragma's more toolchain
> >> > portable, rather than open coding them like I have above
> >> > rather than this series?
> >>
> >> Hi again Nick,
> >>
> >> How did you verify the above pragmas generate correct
> >> vectorized code?  Have you tested this specific use case?
> >
> > I read the disassembly before and after my suggested use of
> > pragmas; look for vld/vstr.  You can also add
> > -Rpass-missed=loop-vectorize to CFLAGS_xor-neon.o in
> > arch/arm/lib/Makefile and rebuild arch/arm/lib/xor-neon.o with
> > CONFIG_BTRFS enabled.
> >
> >>
> >> I'm asking because overrulling the cost model might not be
> >> enough, the only thing I can confirm is that the generated code
> >> is changed, but not that it is correct in any way. The object
> >> disasm also looks weird, but I don't have enough knowledge to
> >> start debugging what's happening within LLVM/Clang itself.
> >
> > It doesn't "look weird" to me. The loop is versioned based on a
> > comparison whether the parameters alias or not. There's a
> > non-vectorized version if the parameters are equal or close
> > enough to overlap.  There's another version of the loop that's
> > vectorized.  If you want just the vectorized version, then you
> > have to mark the parameters as __restrict qualified, then check
> > that all callers are ok with that.
> >
>
> Thank you for the explanation, that does make sense now. I'm just
> a compiler optimization noob, sorry. All your help is much
> appreciated.

Don't worry about it; you'll get the hang of it in no time, just stick with it.

>
> >>
> >> I also get some new warnings with your code [1], besides the
> >> previously 'vectorization was possible but not beneficial'
> >> which is still present. It is quite funny because these two
> >> warnings seem to contradict themselves. :)
> >
> > From which compiler?  ``` $ clang
> > -Wpass-failed=transform-warning -c -x c /dev/null warning:
> > unknown warning option '-Wpass-failed=transform-warning'; did
> > you mean '-Wprofile-instr-missing'? [-Wunknown-warning-option]
> > ```
>
> I'm using Clang 10.0.1-1 from the Arch Linux repo.
>
> In the LLVM sources that transform-warning appears to be
> documented under
> llvm-10.0.1.src/docs/Passes.rst:1227:-transform-warning
>
> Here's a build log: http://ix.io/2DIc
>
> I always get those warnings with the pragma change you suggested,
> even on clean builds on latest linux-next.
>
> I looked at the Arch PKGBUILD and they don't appear to do anything
> special other than patching to enable SSP and PIE by default (eg
> llvm bug 13410).

Ah, custom builds of LLVM.  Grepping for transform-warning in LLVM's
sources, I can indeed see such a pass. I'm curious whether Arch is
turning on that pass by default or if you manually enabled
-Wpass-failed=transform-warning in the Makefile?  Maybe I need to do
an assertions enabled build of LLVM or a debug build. Reading through
llvm/docs/Passes.rst and llvm/docs/TransformMetadata.rst, it sounds
like this should be triggered when a "forced optimization has failed."
So I wonder what's the missing variable between it working for me, vs
warning for you?

Godbolt seems to agree with me here: https://godbolt.org/z/Wf6YKv.
Maybe related to the "New Pass Manager" ... digging into that...

>
> >
> > The pragma is clang specific, hence my recommendation to wrap it
> > in an #ifdef __clang__.
> >
>
> Yes, I understand that. :)
>
> >>
> >> At this point I do not trust the compiler and am inclined to do
> >
> > Nonsense.
> >
> >> like was done for GCC when it was broken: disable the
> >> optimization and warn users to upgrade after the compiler is
> >> fixed and confirmed to work.
> >>
> >> If you agree I can send a v2 with this and also drop the GCC
> >> pragma as Arvind and Ard suggested.
> >
> > If you resend "this" as in 2/2, I will NACK it.  There's nothing
> > wrong with the cost model; it's saying there's little point in
> > generating the vectorized version because you're still going to
> > need a non-vectorized loop version anyways.  Claiming there is a
> > compiler bug here is dubious just because the cost models
> > between two compilers differ slightly.
>
> Ok, so that "remark" from the compiler is safe to ignore.

Are you always seeing it when building with the pragma's added, no
change to CFLAGS_xor-neon.o in arch/arm/lib/Makefile?

>
> >
> > Resend the patch removing the warning, remove the GCC pragma,
> > but if you want to change anything here for Clang, use `#pragma
> > clang loop vectorize(enable)` wrapped in an `#ifdef __clang__`.
> >
>
> Thanks for making the NACK clear, so the way forward is to either
> use the pragma if I can figure out the new 'loop not vectorized'
> warning (which might also be a red herring) or just leave Clang as
> is. :)

Yes, though additionally Arvind points out that this code is kind of
curious if there was overlap; maybe the parameters should just be
restrict-qualified.

>
> >>
> >> Kind regards,
> >> Adrian
> >>
> >> [1]
> >> ./include/asm-generic/xor.h:11:1: warning: loop not vectorized:
> >> the optimizer was unable to perform the requested transformation;
> >> the transformation might be disabled or specified as part of an
> >> unsupported transformation ordering
> >> [-Wpass-failed=transform-warning] xor_8regs_2(unsigned long bytes,
> >> unsigned long *p1, unsigned long *p2)

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DQrU6rCQ4_Ji%3DXsskPovOSXpk0NkjTqVjLijw1-CZ17Q%40mail.gmail.com.
