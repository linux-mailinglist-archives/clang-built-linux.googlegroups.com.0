Return-Path: <clang-built-linux+bncBDYJPJO25UGBBS4A3WDQMGQESNJLXLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ACCB3D03DE
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Jul 2021 23:29:47 +0200 (CEST)
Received: by mail-wm1-x33c.google.com with SMTP id n5-20020a05600c3b85b02902152e9caa1dsf715059wms.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Jul 2021 14:29:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626816587; cv=pass;
        d=google.com; s=arc-20160816;
        b=OdxDB/0XWx8zjXgI4kCgp4rxLLqg990TM9gQ4Iw9ehQtnPkot95cbSUKKQvlH4jrw1
         11L2seKonsitieXJEOb3cjcPbmpxG1bjI/8xJGGdHJuEMMh9hJ9KaZXpfIS+mTl3QvK6
         NyTCYLe/oAkHSrmZYlqjBYa7QhvXFlpxuHZiCT1Fkv7iiARM0PyS7yRc765QuNlQ1jOq
         2gSaahtKoornc6K/E2JHEitcFms/2uTmRdzH8/UUF+m5+aXg6Fx4h90D6cuwXHrTm4V0
         t/q4Jm9VZuU70vyzbAkbLsUtPaF26MRhO6N2a45IoRfBzu4ozZFX18b5ampqd9poPRCd
         Jc9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=IPgsoq1I3NUzVgt+Q+t+n5PDwks75tj4M8nikSMLtqk=;
        b=SO8TlCxBd6zzcguYGGue7knbXns7eZUU3VNf+AigjwxJOGEdG85xB7gnaOXCJQ8mLi
         m7O6Fp3Cs0Nbqa2tJDnptnILyBXMN4Arq5xEpKoNwaj2+N7qlV7IFZX8ERTd3NekRF14
         WB/bbiWvlcSHQfT0MLoveUyM/yaNz9SF5oXgs5zcBrwTijKQWoEinKMCoN0RCE2q/vaX
         fsJi6asJUpMKHmWnWqLQ0g32JM8cG8msoTSMC55vRaWXWJy3GKBwZyVs5kWOlWl0uDv1
         KK0P9Xz/3X19F4mAeTD1T2H2tCs8eNQHK6hoBDXs4UUKE+NAs6U2THMs0h0UlWW0bEoi
         y2ng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=V1vQhpEk;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IPgsoq1I3NUzVgt+Q+t+n5PDwks75tj4M8nikSMLtqk=;
        b=VK2Vh7PGgpToq7hRnFXbXjHDnbgDMyvke75rnaVj+YvstFAL2tXXlLE5oUnwo5/GJO
         rtXmL6DO5Z4wzP5UgBGVpJGKfc9ViCofSZ+UoHso2v1igr/xtB7JlA/tpUO7sDAm04MD
         +tSq681P1NAv+3v4WAQpFOiIIziuBQZGaLgHVlmYrBAwsON3UTxgTm/5f+rkmEFmA5ay
         4PaxfLZerU4WhZpEW0lnvh9hbPwSmCb+Ba/u6ShHYaEdA746YZgZa0AOkrk8DUKVsBL6
         jRhPtZbxdR+e0Tp69rQV4HkYExSopQ2joQxVOtt6yMwrspV9BjST8wS2v3bAVtiHbqpu
         1t1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IPgsoq1I3NUzVgt+Q+t+n5PDwks75tj4M8nikSMLtqk=;
        b=BmGR4kDCSIxJK9tN/VqkOlvrP2ZThEpR8qkUpq2pOgyz3OMHjOKb5ozCn9L0cPl1m8
         VmU76vQvAjzVnsAr1HLvgDjFczxU7cvnWvkO1PbEmFEK9OovHC17bSnxcpo2/9dFPQTN
         IofU6PqgdSyiMYxn3rRvYchEzBCKcJw0rIqfm1siVKsTVr0ir70QPZ4wC1aunO8Wx2ha
         ZlagIRGeUpiXzGUfI/9rIhM4LTcOdcgz5MsGvFsv3YGddTa1u4tzAyQ/1WL+t+ExXaNs
         HgHFGsHDCJVC+VSXT00XF9ioefFcXDCsgh6n1m8WDkB7PeB9u3kDfKfJ4Owdii9QwqO5
         rGoQ==
X-Gm-Message-State: AOAM530AT3ihiXKVP5XGWUcnL9LodjlBVszpJkWmUwckmzaruYdU8fjY
	wcDVsJjLrYJfKqpxJnP4Ux8=
X-Google-Smtp-Source: ABdhPJz1P5TcIhZ/Yy6Py1fE+0ZhQl2OvLCGHJBVcWNDIFSVSueFpSWTlWlKf13fTA/neeaUKd4Xhg==
X-Received: by 2002:a1c:7dcf:: with SMTP id y198mr26357608wmc.140.1626816587246;
        Tue, 20 Jul 2021 14:29:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:dd86:: with SMTP id x6ls215422wrl.1.gmail; Tue, 20 Jul
 2021 14:29:46 -0700 (PDT)
X-Received: by 2002:adf:9084:: with SMTP id i4mr38934667wri.23.1626816586376;
        Tue, 20 Jul 2021 14:29:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626816586; cv=none;
        d=google.com; s=arc-20160816;
        b=JYsHzuDK7mPg4Hux8F3Frpi4UNzdj0cyjhsc29QghnzWPoN7LwP3MoMN1vTG4JkiXP
         Lod1faT8RZw9fjkkpxPL3MzoMkVaDuCoIZuJPw/wp9RLzVZu/ToHaGkEPCZ6wsNn4M3x
         R3ZECu7gk/Wfik49q7WFXkEV1ntmhXVQs9M7rph8HGiXwN+fnq2Uk2BrS2kJdMJ74R2X
         AJtOhhwses4ZLfKZGtn7wtQWSzSzsGb8i7USJ61OM27Gv8+omX++FuqAVHzeRw8URsXS
         V3aS4iOtlpCV5kcjIkVyelOrIeUWE3fXtuq8r05pr9PS9eQnxD4co9TxrfpTBCez8D/Y
         YRXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=lD7MSr2tHShwP24PsDQ+AQ045DheEanjMiBeVzyowZM=;
        b=iTqfmqMmCR7FUfNpCrT2h+hK48Qt7PHkjt2iNfUi2Gc+7skEAPlDjZFIfhBZYR4rNY
         Th6K7S59hX7wPzeUVV1yErCWeGBsn7K4d2IsL6eyHHFXI3TR5wpY57T1j5UFHA1Ne7lk
         HDdH1cmoKOUVdDn5bk2Idc5FZvzYguSFX6ysKYZcYigpXXPIC4IOVjKVyx72pX2FdT0t
         nucfoW6jRZgiq5ZQwkjyMP7BErOZpNcOlb+PRSumN08GvxhiwYubcE31ZjoTJ8JKlSbn
         el8Z/Lv2aaWuHC3flqkj7WWYNo+BxNnINgF+jYc9Xw8n9ONjKPlxGJAw8s5Ok4FKlxYz
         fMNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=V1vQhpEk;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com. [2a00:1450:4864:20::233])
        by gmr-mx.google.com with ESMTPS id n5si133104wms.1.2021.07.20.14.29.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jul 2021 14:29:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233 as permitted sender) client-ip=2a00:1450:4864:20::233;
Received: by mail-lj1-x233.google.com with SMTP id j1so231482ljo.10
        for <clang-built-linux@googlegroups.com>; Tue, 20 Jul 2021 14:29:46 -0700 (PDT)
X-Received: by 2002:a2e:a911:: with SMTP id j17mr28176107ljq.341.1626816585818;
 Tue, 20 Jul 2021 14:29:45 -0700 (PDT)
MIME-Version: 1.0
References: <20210708232522.3118208-1-ndesaulniers@google.com>
 <20210708232522.3118208-3-ndesaulniers@google.com> <CAK7LNARye5Opc0AdXpn+DHB7hTaphoRSCUWxJgXu+sjuNjWUCg@mail.gmail.com>
 <CAHk-=wgGxu4_hgzdYpFuKd95SfnkJbPTWAQ9-fMgmMN1Oxs2xQ@mail.gmail.com>
In-Reply-To: <CAHk-=wgGxu4_hgzdYpFuKd95SfnkJbPTWAQ9-fMgmMN1Oxs2xQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 20 Jul 2021 14:29:35 -0700
Message-ID: <CAKwvOdkvju7heeNpk87brsjkhXHbdKFsUgf63KWhXox9rDkQsA@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] Makefile: infer CROSS_COMPILE from SRCARCH for
 LLVM=1 LLVM_IAS=1
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Miguel Ojeda <ojeda@kernel.org>, 
	Fangrui Song <maskray@google.com>, Michal Marek <michal.lkml@markovi.net>, 
	Arnd Bergmann <arnd@kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Geert Uytterhoeven <geert@linux-m68k.org>, Christoph Hellwig <hch@infradead.org>, 
	Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=V1vQhpEk;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233
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

On Tue, Jul 20, 2021 at 10:43 AM Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> But clang has become a primary compiler for some kernel communities,
> and I think it might be time to just re-visit that entirely.
>
> In particular, I think we should just make it a Kconfig option. I hate
> the command flag stuff so much, that my clang tree literally has this
> patch in it:
>
>     -CC = $(CROSS_COMPILE)gcc
>     +CC = $(CROSS_COMPILE)clang
>
> so that I can just do the same "make -j128" in both my gcc tree and my
> clang tree.
>
> But each build tree already has its own .config file, so it would be a
> lot more convenient if that was how the compiler was chosen, and then
> "make oldconfig" would just DTRT.
>
> We do most of the other heavy lifting in this area in Kconfig anyway,
> why not add that compiler choice?
>
> Obviously it would be gated by the tests to see which compilers are
> _installed_ (and that they are valid versions), so that it doesn't ask
> stupid things ("do you want gcc or clang" when only one of them is
> installed and/or viable).
>
> Hmm? So then any "LLVM=1" thing would be about the "make config"
> stage, not the actual build stage.
>
> (It has annoyed me for years that if you want to cross-compile, you
> first have to do "make ARCH=xyz config" and then remember to do "make
> ARCH=xyz" for the build too, but I cross-compile so seldom that I've
> never really cared).
>
> Let the flame wars^H^Hpolite discussions ensue..

I will concede that "why do I need to respecify all of my command line
args/env vars to make when I already did so for a configure step?" is
a reasonable question to ask, and may be worth pursuing.

There's still some that we can eliminate for BOTH configure and actual
build, like CROSS_COMPILE. :^)
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkvju7heeNpk87brsjkhXHbdKFsUgf63KWhXox9rDkQsA%40mail.gmail.com.
