Return-Path: <clang-built-linux+bncBDT2NE7U5UFRB25Q42EQMGQEYEI26XI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3c.google.com (mail-oo1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 609A64044D8
	for <lists+clang-built-linux@lfdr.de>; Thu,  9 Sep 2021 07:15:25 +0200 (CEST)
Received: by mail-oo1-xc3c.google.com with SMTP id v9-20020a4ae6c9000000b0029003c3f017sf333334oot.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 08 Sep 2021 22:15:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631164524; cv=pass;
        d=google.com; s=arc-20160816;
        b=yea4PF2sKarUTOcNsSFDPxDOdKH4vpw093MKm1n0tw5I+hwXnoJUMnLZG4YW5OPYF+
         of/rs2eHTYQIiUROSRFLti8KoVLHruzcbLilENo9i/F3dYzLXapcO3dX+x4iPnjrw8dC
         T0A+L0kXg10bcI4iG+zOapiTp+4vKiNgLtaCwCsww8+IcbxbDNtffjJ6xky09sbg7nFm
         inCW52MIM9ohqg0UUIdwKIO7j/UCxEyXzVPlldphF9advmKOZ4nLaqHtOwyVwy/z7w7c
         IOzJzP24oOVHcFs5oQnTRd7vW7l7OCdpzU63Awt9udmygOJHid/fhG9hKc7Dmfew9bkH
         R3/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=jFqYv7Uv/4n50jHlali1fUlv9jJOxgOg3FJCF2XKyxg=;
        b=K0degLDn6zuse8ch+oqSdK+4Lnxf/5kD8momabai81t+KhC7N92IFXbZF7rML0Omfs
         EqJ7gX7qDamJg4MEJ7MqjOg2yj4FChXLS/2MVh9X2pbwb0d5P6H6NyHBnIjhAHRIpzcN
         myMQodgCoTpCktTN3l63RSwhgb+/vQtUeKv4OnYJJS/SbNlRVoQ3iBJ6+GbJ/qIEZ3+5
         zWDW/mGMZ83gJ8Qa6FRYZhArPShUDLbbc3mE8+gjfmyc9jAg3/GbbmBi3LiepfHxnElB
         0MOf2KvXgP0kMQXAcu7Oyn2PzA15qnXEa+vc2akLkibkUospw6dDUKfUGrXMvhi7zTZ1
         9IfA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=rGqgIpLl;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jFqYv7Uv/4n50jHlali1fUlv9jJOxgOg3FJCF2XKyxg=;
        b=m4Z24+m+0o706EldNWIBNA4451ChjkZ8uadQNX9LUyGh1r9QqOW9NmGv6Jj9anawyP
         GuVxg/UJ5Puz0XYkQUALQcM/D2FwLFzj2wdP00t2hRJrJdGj/wIgWZqfkLQVtbIIlwHX
         Vh2ACysy14XTTfuOb3sK9Tmlbv89iDhVC0uhDmkQQeX0sRRB/q5B0EFCmjqvx3cDGtiL
         7Y3ovfGHmaSUURmhY0t45N+GrcIRLM3O4y3yJILe46+QIdU9yN2G8BT4TfTW1Gv1MJRJ
         BptnVw7ZfTZjPw4lEVy3ZrygdiTxKL0tRLIXydusUwGuBIsFCd2Dq4rRHDg5tXIsFvbM
         qKwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jFqYv7Uv/4n50jHlali1fUlv9jJOxgOg3FJCF2XKyxg=;
        b=dPyXIZL2Hm9cB6odFMfg2m8RRLnpb6/x7Vev4m/0J9GPzs6vCIV0iRnf7tk2uvbiNz
         NX5FihZ1j460Di+Pkrns9Fv6edCuXQHyKlvWryiOiB95ZWp2MsHdCR9PJSo0k3Ynwffi
         DebCmQ831YXTvQr0hPX1WA+VaCfm6fKJfjGzTSM9VNqTj1ZuO9/psPiV5r89noD2CejF
         4j6tIAf5WVOICWUmiG/DzG0/wSdK7j7gZd90DFYzewhtwjGQcZl/2f5TBFehG4ck4ohM
         LKLZIB4v9l51M4cM8HbQ+cYTAmLqtXqxabZXnAtPA2uvQsSXDcMTZE2Cgqd5gf2KN2Y1
         uVfA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531L78GVa47ll76FiBmbr7cBhHCuUVUoeH06RiAJMJ91kK+WFHXb
	G/RBsXegESylMWJzIZwI/wg=
X-Google-Smtp-Source: ABdhPJzplBoZVQhzW/hj2MH4FALZKicCYXf4G9wCfrY6stmU4xdqOpAG5KKY6UsjEe9CHqfcXOS2mA==
X-Received: by 2002:aca:670c:: with SMTP id z12mr785750oix.14.1631164523880;
        Wed, 08 Sep 2021 22:15:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:9b99:: with SMTP id x25ls47584ooj.9.gmail; Wed, 08 Sep
 2021 22:15:23 -0700 (PDT)
X-Received: by 2002:a4a:c119:: with SMTP id s25mr1033460oop.22.1631164523475;
        Wed, 08 Sep 2021 22:15:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631164523; cv=none;
        d=google.com; s=arc-20160816;
        b=kR8gWBkdfh23qpBneefikwQB8hUdrwYSXxsiAMLewq7S6YDirbG38fZbUZcV5Mxszi
         5SAMV7nlTYa2g/GJSQsuYmQbSRH75SUO/jrJ3yHV+kAlc8TogKlUKLPxQwZjxJOvGPod
         MAa+cNsPiAGRGFvAx+XRmYY5wlzBWZsGrvqTjXdxeAS9ZvScwvXkh+DE1diZi5aORXGu
         Y7Isnshbfd4ES31UjLALxop7prFxE7I9pTfkoM2r2IgVm6baP34Vk/0qfoKpLv7mkkzR
         LW6fyEEtjT8x6oD3n1BPwTfz4/EZaBLlsY1TbsLDCi92g4FRgwi/YQD+4FmczukwMDqN
         FcHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=ghCcarr3Wa8g2fBREVBbfn3a3wQyCXTSnt9W+mVN4Mw=;
        b=STx441H6PyDj1uXgvGTqvJFNn1HYnpWGS8Dcy1UTfqyVf0BJgqaXtSXiWSMQKwKlQQ
         DtntqsOa2tDr3CHx3ojHjM5vuxb/7vp7wnIU1miBXXd6LdF2tDUK/xCMq+XIrZ7e09A2
         sM9ZtTUj5ajIJuwbjGvkvFzEZg+QI2LgyeBcnLJKmpnemfa7C5kgVLtCJeJGYCUoIS6d
         eu0ter/0LmGi6pAE6FJz9C2xS2eaCOLxKsFT0ylEfjakcZBV1AYI+L9NrAStI5XniWrS
         yco6nc1V6kloYt9gPMxhqwc50Hr5vy1bfIyEFUd87wdkftAxjAMpZJN1rm1CW9Clm0dZ
         IKQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=rGqgIpLl;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-05.nifty.com (conssluserg-05.nifty.com. [210.131.2.90])
        by gmr-mx.google.com with ESMTPS id c9si69855ook.2.2021.09.08.22.15.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Sep 2021 22:15:23 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) client-ip=210.131.2.90;
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182]) (authenticated)
	by conssluserg-05.nifty.com with ESMTP id 1895EtKN031233
	for <clang-built-linux@googlegroups.com>; Thu, 9 Sep 2021 14:14:55 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com 1895EtKN031233
X-Nifty-SrcIP: [209.85.214.182]
Received: by mail-pl1-f182.google.com with SMTP id j2so322679pll.1
        for <clang-built-linux@googlegroups.com>; Wed, 08 Sep 2021 22:14:55 -0700 (PDT)
X-Received: by 2002:a17:902:6b42:b0:13a:54d0:39c4 with SMTP id
 g2-20020a1709026b4200b0013a54d039c4mr1244141plt.42.1631164494718; Wed, 08 Sep
 2021 22:14:54 -0700 (PDT)
MIME-Version: 1.0
References: <CAHk-=wjc1rxah3xt8mKN=aCxQigjy3-hEf4xh_Y-r=MXAKVrag@mail.gmail.com>
 <20210906154642.GV1583@gate.crashing.org> <CAHk-=wj=WpWO_V86cZH99LgZGBbvdDb4wR26ce5van0hJqjzLA@mail.gmail.com>
 <20210906172701.GX1583@gate.crashing.org> <CAHk-=wh0MBVfA89WLWnCiSnJ2a=hSAoSxfG-jyf7JJeBDPK3ew@mail.gmail.com>
 <87lf49wodu.fsf@oldenburg.str.redhat.com> <20210906194808.GY1583@gate.crashing.org>
 <20210906201432.GZ920497@tucnak> <CAHk-=wi80NGPppGmBpc5zuGRAsv4_7qsDu7ehW515J2FJoezAQ@mail.gmail.com>
 <20210906215218.GA920497@tucnak> <20210907145247.GH1583@gate.crashing.org>
In-Reply-To: <20210907145247.GH1583@gate.crashing.org>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 9 Sep 2021 14:14:17 +0900
X-Gmail-Original-Message-ID: <CAK7LNATNZRbdxCkdu=+wW1bcyoX0YcZYRTSW129n7AnnLyKbWg@mail.gmail.com>
Message-ID: <CAK7LNATNZRbdxCkdu=+wW1bcyoX0YcZYRTSW129n7AnnLyKbWg@mail.gmail.com>
Subject: Re: [GIT PULL v2] Kbuild updates for v5.15-rc1
To: Segher Boessenkool <segher@kernel.crashing.org>
Cc: Jakub Jelinek <jakub@redhat.com>,
        Linus Torvalds <torvalds@linuxfoundation.org>,
        Florian Weimer <fweimer@redhat.com>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        llvm@lists.linux.dev, linux-toolchains@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=rGqgIpLl;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Tue, Sep 7, 2021 at 11:54 PM Segher Boessenkool
<segher@kernel.crashing.org> wrote:
>
> On Mon, Sep 06, 2021 at 11:52:18PM +0200, Jakub Jelinek wrote:
> > On Mon, Sep 06, 2021 at 02:08:58PM -0700, Linus Torvalds wrote:
> > There is a stddef.h include too and that's it
> > (I must say I don't see the reason for that include though).
>
> Yeah me neither.  Maybe the header used NULL before?
>
> > Other compiler provided headers (not talking about C++ now) also have no
> > or very limited includes, including stddef.h, stdarg.h, stdatomic.h, etc.
> > The only exceptions are tgmath.h which isn't usable without libc
> > math.h/complex.h,
>
> <tgmath.h> is only for hosted environments.  That requires a C library
> for GCC (we do not implement this stuff ourselves).  The compiler and
> the C library have to work together to get this done, and the relation
> between GCC and Glibc has been a bit too tight for this, it is true.
>
> But a kernel build is not in a hosted environment.
>
> > in some cases stdint.h and limits.h which are in some
> > configurations provided both by the C library and the compiler and include
> > each other in that case (but e.g. stdint.h has an alternate version that
> > only uses compiler provided builtin macros) and openacc.h.
>
> On what targets is <stdint.h> still problematic?  And <limits.h>?


Since commit 0c79a8e29b5fcbcbfd611daf9d500cfad8370fcf
all architectures in the kernel space use the same fixed-width
types, which are defined by
include/uapi/asm-generic/int-ll64.h

So, u32 is always 'unsigned int',
and u64 is always 'unsigned long long'.

It is convenient for printk() in common code
because we can always use the 'll' prefix for u64.


  u32 foo = 1;
  u64 bar = 1;

  printk("foo = %u\n", foo);
  printk("bar = %llu\n, bar);



If we use compiler-provided <stdint.h>,
it is not convenient for printk() because
uint64_t is 'unsigned long' on some compilers
and 'unsigned long long' on others.

<intypes.h> provides macros such as PRIx64

    uint32_t foo = 1;
    uint64_t bar = 1;

    printk("foo = %" PRIu32 "\n", foo);
    printk("bar = %" PRIu64 "\n", bar);


This works, but ends up with ugly code,
which I want to avoid.












--
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNATNZRbdxCkdu%3D%2BwW1bcyoX0YcZYRTSW129n7AnnLyKbWg%40mail.gmail.com.
