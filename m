Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBAP64X5AKGQEPBGCO7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3e.google.com (mail-vs1-xe3e.google.com [IPv6:2607:f8b0:4864:20::e3e])
	by mail.lfdr.de (Postfix) with ESMTPS id D9F8326397B
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Sep 2020 03:18:58 +0200 (CEST)
Received: by mail-vs1-xe3e.google.com with SMTP id d123sf1244041vsd.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Sep 2020 18:18:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599700738; cv=pass;
        d=google.com; s=arc-20160816;
        b=ix1+dxcBq0NnUpmn8ShXGsEEX4ugICO3jMd9Shoe8dvsu53Hv+K1SWBinmN0oHB/3+
         s3OTEUjzIPfoz+bhE9UUz9Bz+UNhfXQLMo8UsoYMtUT18GJUj+KdRiGa1xINf1XUVWKp
         BGW8ep3N51Geuu6tNRMdrgQ9x4FPS8iUJEQWRF8iFkjOPuN2K7C7/TTTg0jyED748c52
         YetLo039aONt58fnN9/fbpW+AoK1jiW8a/hdE7PnzwXOnVNA9Md7ZM8OvyfBCMmt88eR
         n1lQjCU6HfYJMXMr2FuWXaixzR+N+KN1AdN/+8WHp5B4X2HsyLOxaBcN4tV0SOQo9pQ0
         iMGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=J+poZY6uavPhIaoc3ksGaAfzcwsopJPiZ4mLTRHLVpw=;
        b=SP2S1UcJLAEYIuVrf+MVoUI8svI2sowAs8UnyymHtD7wTo88xm12Rg25PcCoHOdoRE
         oCp8ELbhV1SmbCAhwE9uRFg5xuNZaVyG8JEr7XjPWi3JGJItYt70NPiISgwqOoKBW0UG
         R5qXRC6+6N0gxxSB+egJFzBP7qRF6BxgJgY3AI2iJT8vO9jDlKLVWkUif/D0F1N+yRCv
         WCNb3R9E3Ept+YujawcpMH246PdJkz6jiWnbUJGqJweihp/9yoZUm0HmrmXog8kuNHU5
         UEP79ChIpn+NSR/Zhnhff7R9U4hX+e6TS5gZQSIjUddb1htR7I7yQTdCJyb4taoLy8hT
         +KVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=WGjr5LVs;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=J+poZY6uavPhIaoc3ksGaAfzcwsopJPiZ4mLTRHLVpw=;
        b=Le/Zj5b59c62s+3sMBBzYUT6NSeB3m//x50JR3pdWOUxucVTnzIAcd+o5T9H6nKi6C
         k3eqhDaAMAK4EnhZJ7zzDXIpvl+7IDB/ekOxPBmpVXHk94Q2puByQJkUQUyf6Jy04ZaY
         gsdgIqHDPQOlN/LI6SeAWvFEE6iqW7+fM2VKHfPnqp37fKqZjQyVarXGswiajrZZJaAN
         gBFBgvVB7A/CqXCSAM99ibzxW9RqQMR5rDfKhD4rJ6MNtZkWtgTCAjsYZGU1AYTC2JWS
         vFpzERx1LqU5/ksN17qriUvcaUdZTaJDH/eUllgkh8SaPM+NSWJdJ8GPx4skSZrkpgZw
         3QHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=J+poZY6uavPhIaoc3ksGaAfzcwsopJPiZ4mLTRHLVpw=;
        b=ckd0aRilSQ/kXLxlpBDGHknSH+JXJ2j72I85VaKhyw1n3p7sgLWOb6MpTenY3PbLih
         A7rOUCgntvAIC9mnUm+6f61XaXVsrNFM0CXzdZgkdw1asoCkxUXzwad9O3GgoDHma6Kx
         qoDhjEKcoOu/1JSX8nLegXj5j+SIMbss95KlNolAOXo2X9pzXKWyYaYzDGZ3rswmsX2G
         vfnVJOtoVp6NCp4HfhT2OrdwdlmJPKo77y1wfckCJEs+Qh2bLliAKO3gnC6YYGgSnIwa
         WXT9xjS5NxHoTinqCrgBqHCf2qaum033GZq6qHKYV6UCf0BPcuRcZRVHAHe4qENXHLYZ
         gPMw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531clpQh/2U9OFyg3BHVvjlG/iImDtJsx/SDg+aVrz6b0EQkAjcP
	aQaPOxlH92lwFmPgU3c59ho=
X-Google-Smtp-Source: ABdhPJxLHn5U4/Smh0ePw6cfxOEB0Oo+7YsvWZhVY1PLt0TMzG/coM1c5tSLcRLrSsrPZpWfFo7H6A==
X-Received: by 2002:a67:dc09:: with SMTP id x9mr2653788vsj.25.1599700737848;
        Wed, 09 Sep 2020 18:18:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:f246:: with SMTP id q67ls277374vkh.11.gmail; Wed, 09 Sep
 2020 18:18:57 -0700 (PDT)
X-Received: by 2002:a1f:9ccc:: with SMTP id f195mr2507244vke.47.1599700737380;
        Wed, 09 Sep 2020 18:18:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599700737; cv=none;
        d=google.com; s=arc-20160816;
        b=dGN71N8z0Oqa0PnM+mLV18pgQ9vkBS5uyh8sq+2gPyI68qW9rm7+zOp39l6j/y/Qdj
         7pNlSiuR2fN0UllFSBgT4TURGT9D/IQvZrw0s6JYF9AVncGfoesvKcvu2gKidbcW5XhE
         shBP+b87GAuXgbkeETHweogxF2CARmBOg1so9UgMiQzkONGLdf7RCxjC70t1MjW6lPz3
         K9Fgz5zgI0k6f41gIVRwLIOWeqAzSv66rOyA73lOY++/0vjhVpej8XVDoPBVR6S0vXjx
         yEK+YniOLEs/cMtCTh/iC6/ysTD0+wK+Ik8OgF26Q8SJ+BnwdQfK+Y5BuLcwpZugbxor
         bw+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=x2qUAAqVWiePSrCzfI1IEP4eafAB9yee8r8ckQho/u8=;
        b=YbK34nqrSzkhbHaTMOy8kvPPOx+aQnBsJ2p+US+O8XSs82pzDpjY9fYVHY0HWGlSOj
         oCuvZCJFc3ydd+SRkTMCq3qXuZYM8fDckqnzpBuKmcI8/i3mMxU49LfNRnte8MhVLQKF
         wFemhIhZNMGJ5a52nuiUPgp6Ms+xkP7FXu58hlgYMp3rkAFdWbAabrHTZSuYnKjGXcrB
         DrlnE3E2l/5bCcWUlV4luHOyY0gIwe+iZymoujcVwaumv7611VRaYtS+v+SxOOenv1z6
         FKDh/ZNkKJUS/X8cfT16jp7KxZGl05shRyImTFDmecuclcjyMSIo4ltaxbKKukamXrbh
         dVfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=WGjr5LVs;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-03.nifty.com (conssluserg-03.nifty.com. [210.131.2.82])
        by gmr-mx.google.com with ESMTPS id m5si280119vkh.4.2020.09.09.18.18.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Sep 2020 18:18:57 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) client-ip=210.131.2.82;
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174]) (authenticated)
	by conssluserg-03.nifty.com with ESMTP id 08A1IhXY006882
	for <clang-built-linux@googlegroups.com>; Thu, 10 Sep 2020 10:18:43 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com 08A1IhXY006882
X-Nifty-SrcIP: [209.85.215.174]
Received: by mail-pg1-f174.google.com with SMTP id f2so1313987pgd.3
        for <clang-built-linux@googlegroups.com>; Wed, 09 Sep 2020 18:18:43 -0700 (PDT)
X-Received: by 2002:a63:f546:: with SMTP id e6mr2466312pgk.7.1599700722672;
 Wed, 09 Sep 2020 18:18:42 -0700 (PDT)
MIME-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200903203053.3411268-1-samitolvanen@google.com> <CAK7LNASDUkyJMDD0a5K_HT=1q5NEc6dcN4=FUb330yK0BCKcTw@mail.gmail.com>
 <20200908234643.GF1060586@google.com>
In-Reply-To: <20200908234643.GF1060586@google.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 10 Sep 2020 10:18:05 +0900
X-Gmail-Original-Message-ID: <CAK7LNAR9zzP0ZU3b__PZv8gRtKrwz6-8GE1zG5UyFx1wDpOBzQ@mail.gmail.com>
Message-ID: <CAK7LNAR9zzP0ZU3b__PZv8gRtKrwz6-8GE1zG5UyFx1wDpOBzQ@mail.gmail.com>
Subject: Re: [PATCH v2 00/28] Add support for Clang LTO
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>, Peter Zijlstra <peterz@infradead.org>,
        Steven Rostedt <rostedt@goodmis.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "Paul E. McKenney" <paulmck@kernel.org>,
        Kees Cook <keescook@chromium.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Kernel Hardening <kernel-hardening@lists.openwall.com>,
        linux-arch <linux-arch@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-pci@vger.kernel.org, X86 ML <x86@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=WGjr5LVs;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Wed, Sep 9, 2020 at 8:46 AM Sami Tolvanen <samitolvanen@google.com> wrote:
>
> On Sun, Sep 06, 2020 at 09:24:38AM +0900, Masahiro Yamada wrote:
> > On Fri, Sep 4, 2020 at 5:30 AM Sami Tolvanen <samitolvanen@google.com> wrote:
> > >
> > > This patch series adds support for building x86_64 and arm64 kernels
> > > with Clang's Link Time Optimization (LTO).
> > >
> > > In addition to performance, the primary motivation for LTO is
> > > to allow Clang's Control-Flow Integrity (CFI) to be used in the
> > > kernel. Google has shipped millions of Pixel devices running three
> > > major kernel versions with LTO+CFI since 2018.
> > >
> > > Most of the patches are build system changes for handling LLVM
> > > bitcode, which Clang produces with LTO instead of ELF object files,
> > > postponing ELF processing until a later stage, and ensuring initcall
> > > ordering.
> > >
> > > Note that patches 1-4 are not directly related to LTO, but are
> > > needed to compile LTO kernels with ToT Clang, so I'm including them
> > > in the series for your convenience:
> > >
> > >  - Patches 1-3 are required for building the kernel with ToT Clang,
> > >    and IAS, and patch 4 is needed to build allmodconfig with LTO.
> > >
> > >  - Patches 3-4 are already in linux-next, but not yet in 5.9-rc.
> > >
> >
> >
> > I still do not understand how this patch set works.
> > (only me?)
> >
> > Please let me ask fundamental questions.
> >
> >
> >
> > I applied this series on top of Linus' tree,
> > and compiled for ARCH=arm64.
> >
> > I compared the kernel size with/without LTO.
> >
> >
> >
> > [1] No LTO  (arm64 defconfig, CONFIG_LTO_NONE)
> >
> > $ llvm-size   vmlinux
> >    text    data     bss     dec     hex filename
> > 15848692 10099449 493060 26441201 19375f1 vmlinux
> >
> >
> >
> > [2] Clang LTO  (arm64 defconfig + CONFIG_LTO_CLANG)
> >
> > $ llvm-size   vmlinux
> >    text    data     bss     dec     hex filename
> > 15906864 10197445 490804 26595113 195cf29 vmlinux
> >
> >
> > I compared the size of raw binary, arch/arm64/boot/Image.
> > Its size increased too.
> >
> >
> >
> > So, in my experiment, enabling CONFIG_LTO_CLANG
> > increases the kernel size.
> > Is this correct?
>
> Yes. LTO does produce larger binaries, mostly due to function
> inlining between translation units, I believe. The compiler people
> can probably give you a more detailed answer here. Without -mllvm
> -import-instr-limit, the binaries would be even larger.
>
> > One more thing, could you teach me
> > how Clang LTO optimizes the code against
> > relocatable objects?
> >
> >
> >
> > When I learned Clang LTO first, I read this document:
> > https://llvm.org/docs/LinkTimeOptimization.html
> >
> > It is easy to confirm the final executable
> > does not contain foo2, foo3...
> >
> >
> >
> > In contrast to userspace programs,
> > kernel modules are basically relocatable objects.
> >
> > Does Clang drop unused symbols from relocatable objects?
> > If so, how?
>
> I don't think the compiler can legally drop global symbols from
> relocatable objects, but it can rename and possibly even drop static
> functions.


Compilers can drop static functions without LTO.
Rather, it is a compiler warning
(-Wunused-function), so the code should be cleaned up.



> This is why we need global wrappers for initcalls, for
> example, to have stable symbol names.
>
> Sami



At first, I thought the motivation of LTO
was to remove unused global symbols, and
to perform further optimization.


It is true for userspace programs.
In fact, the example of
https://llvm.org/docs/LinkTimeOptimization.html
produces a smaller binary.


In contrast, this patch set produces a bigger kernel
because LTO cannot remove any unused symbol.

So, I do not understand what the benefit is.


Is inlining beneficial?
I am not sure.


Documentation/process/coding-style.rst
"15) The inline disease"
mentions that inlining is not always
a good thing.


As a whole, I still do not understand
the motivation of this patch set.


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAR9zzP0ZU3b__PZv8gRtKrwz6-8GE1zG5UyFx1wDpOBzQ%40mail.gmail.com.
