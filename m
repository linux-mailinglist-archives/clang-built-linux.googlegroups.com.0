Return-Path: <clang-built-linux+bncBCU4TIPXUUFRBUWZVOJQMGQEYKJVMEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id D3B37513C25
	for <lists+clang-built-linux@lfdr.de>; Thu, 28 Apr 2022 21:36:51 +0200 (CEST)
Received: by mail-il1-x13f.google.com with SMTP id u11-20020a056e021a4b00b002cc315db462sf2381875ilv.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 28 Apr 2022 12:36:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1651174611; cv=pass;
        d=google.com; s=arc-20160816;
        b=KAB3ytjtcp60XvzAsZdTvfPwZgxK+BK4pmikQxsLgRPNqAjJtMQCji1K2zng4UEw4Q
         SEMr3xcxHU7xHdJ9SlzlWaP/noS8oul6ZKFFt3hJ7BMHjZF0W67r+hkZIEoCMQHNTOTT
         V68WjOFyZVOwavRF2uz+FKFbyic28XAh9RirmalMFqnrbBaW22i6aPxnR7YhJRQxET7t
         xS9iQC3IilTWLic358DWPzp2JSGhtNm0z5WDAy/Eo1BLuI3QSxaxFYEpb60lCF6EVjCM
         tB+lj6QYCXGzu66b/qsvUBylbsoXz9ThoCC15J0GU9ZkjyhiggdULd4PZYxhuQ3UOpSZ
         if9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=0GdaZlsOztKSQM03Zp/pmW2BQcZ5NNw6XCWXT15m7js=;
        b=Os6XZhKbU4lxqawc/8NHjpOJd6Vj/UPZv0WDFi62TXrvhoIpTS6QFgFT5mHQxlEa/N
         cf4g5y2pQKe1EGwPcvFRaXkW0drhyuK0+DMCzUXpA3xFTZjLaMbpw31J2kU8MIYAF6uh
         hmqqPuHYRtWk+3qUFSATHyUor02xORyEKLWUDw1z5XtGQF6k3hZJ1zf56056HddhWyIh
         N+3ESXhY6zPaPMMUhLI/8dzPjQm/8dSAtOwfu4LxFcaVGmYZoi6ixgtujTO8kYS0m76/
         NGW+Ey6tFc+/BswSF0tbtIdeX6X8EkCtQeOlVonjQdubGo4OkISEOMqVsNWvcuul6oFu
         tdpg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=YYDbGqO+;
       spf=pass (google.com: domain of ardb@kernel.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0GdaZlsOztKSQM03Zp/pmW2BQcZ5NNw6XCWXT15m7js=;
        b=kVTXbIEKsQcw1/3yIAffPbwlFmzj+yFKF7gbJDa8ZLTXi1Z3F4WspwrjoUEOnXFY7x
         aNAf2NxXX0f1DG50tv+C0En6MvtGr/HLd0x/WFMtBuG8dRL508tgKkpzjGV8rulHn5Fc
         +G1LXSzWuO3iDKUWWH5JWxr+XwXVj48YSFST1+2vamksmZGSHxnyjr0BlFB3CCt3Pshg
         xEq44cDllMx6Cb0ucvuOYZz+4U3G5YZYlgrFd3jFw+f+ByoPWnpQiAZPPEKTbvXvhxBk
         zn6p7GKKDSRI56DNZBgj3LsEHcwOClZ1l2YfBHxejbFmtD86IBd++FDBnGGMg7XU6+Ag
         byJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0GdaZlsOztKSQM03Zp/pmW2BQcZ5NNw6XCWXT15m7js=;
        b=2LYnrYT4n+u/T3RaxK4h67JP+f2VBp62IMdOCXxr8rX4RYySR/cJnFtQYShgmVbLZC
         PUMIPlmoFua1GNw2ClCnp2/k6hFJNNocSvfTJOQyiz/NXL6rMq4joMOE+lUXwUPv4UoJ
         IZlTtYHzoT/CALhtMmY3Rh1FZnmksoJdIdjAszuxHzKnHRELpp3LY0HrXIP1Uv6pdYv0
         3KHmqnJ+Tl2l7eNbLbi/k8cUXnPensa3UoFsTi3M2xwEB+3PSTIzp8aGD+e1ufOKRI1o
         JK27JrcktslhAHP/VFG5E6zfbJxJiOiJoYEavbx1uAJLCzE4bHuMFEwrlRVT8i8Vhvqt
         LuYQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5304EUmS7LNmEwiwjBrSdZQb+F82fh11Q4rxYhZ4BqCnP0JWMycP
	pOTDIadzoHJMKCXcPMF4Yuo=
X-Google-Smtp-Source: ABdhPJzcbt8DFlGI3MdzPTv5aQCL85pZAAXfFwLQQLfKFipt0UBEvvnQ7sH0f4TJhxSJVxkFF0Vpaw==
X-Received: by 2002:a05:6638:240a:b0:32a:a215:41a3 with SMTP id z10-20020a056638240a00b0032aa21541a3mr16240900jat.156.1651174610724;
        Thu, 28 Apr 2022 12:36:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:6f4d:0:b0:326:5851:8cdf with SMTP id b13-20020a026f4d000000b0032658518cdfls219731jae.11.gmail;
 Thu, 28 Apr 2022 12:36:50 -0700 (PDT)
X-Received: by 2002:a05:6638:12cb:b0:323:da89:2caa with SMTP id v11-20020a05663812cb00b00323da892caamr14772887jas.314.1651174610221;
        Thu, 28 Apr 2022 12:36:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1651174610; cv=none;
        d=google.com; s=arc-20160816;
        b=1GSQGeyG2GUWHgdXQyy1bef2Ddn5sr5SzTj/pA127Xy8Qu0J56/ildY34Mqw8y55TM
         8Sv+pHlUDORtxLHwpT6s0cAK/gOhMmny3kML9zIpIk/eDmk3r/rnD92/j5lDPJtXuE7g
         Kx+z+sTVNqki414X2SvW1JaTuxOcT4C2b8zj9CaCcT1jqR7tyigOC5UXRjxke7vaNCCp
         3Poq/y+gQ7bbY1roRMfdprUAqNdiZ7BT5vOz4z2b7d8ogt1Wj1Yurp77cHlHnK+UDTWg
         QxBJ2zj+2IIKnflzJS4qPaAq9eXTuhoCFYu+RTwCVDUrnfpfOkYjWiz9sEXg1E61y6Kc
         eWow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=E7fB07ddGOEOo/SjOuL1wrUYmxE7fYB4vhDEzkvMCgM=;
        b=PKwRyRg200FsdU/lgHt6kW3oTSRnfhu4tZMB8uh6Nbxq4czMyZV04XnH5Jsu0cRDsE
         LOPC++AX4pVt9WvtJtIIzlwgdTvUVUEzkMt97D/Or2JNvd2aMAsv/ZEYRK5HZhAfTi53
         bCN5CRijUVtyZ0juw8zIrlVWH25jOEOvnuahIKTUf+hah0U62wKgKkrI9TXqKgTrIQUA
         eUi9OP3AepdSP6nGJUGmUFohgu7V+2jJOyCMf6f5vmCfJpKanSpuURgAu+gL03Bmqgg4
         nQhrQU92EsK8kms5Qu79TVVNvdwP0eVONl9EnMSuw9e0mvy2QDqaw0SDlt0/lC7oPuYg
         di3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=YYDbGqO+;
       spf=pass (google.com: domain of ardb@kernel.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [2604:1380:40e1:4800::1])
        by gmr-mx.google.com with ESMTPS id 16-20020a056e020cb000b002cc33178a69si361228ilg.1.2022.04.28.12.36.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Apr 2022 12:36:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 2604:1380:40e1:4800::1 as permitted sender) client-ip=2604:1380:40e1:4800::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id 0935CCE2CC4
	for <clang-built-linux@googlegroups.com>; Thu, 28 Apr 2022 19:36:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4B968C385AC
	for <clang-built-linux@googlegroups.com>; Thu, 28 Apr 2022 19:36:46 +0000 (UTC)
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-e5ca5c580fso6171702fac.3
        for <clang-built-linux@googlegroups.com>; Thu, 28 Apr 2022 12:36:46 -0700 (PDT)
X-Received: by 2002:a05:6870:b4a4:b0:e9:4fdc:8ce with SMTP id
 y36-20020a056870b4a400b000e94fdc08cemr8502835oap.126.1651174605483; Thu, 28
 Apr 2022 12:36:45 -0700 (PDT)
MIME-Version: 1.0
References: <20220427171241.2426592-1-ardb@kernel.org> <20220427171241.2426592-3-ardb@kernel.org>
 <20220428024030.gwxb746c5gwvcnw6@google.com> <CAMj1kXEW-KPVWqS33OX0Qw-EAeX+XfocHGisVw8gsb2k_KffJA@mail.gmail.com>
 <20220428065742.rl3w5rz2ni2fhngl@google.com> <CAKwvOdm_zysTbsMp8GmmrwB3MU9MyZU-jtenH7JpPTX7+ZODKQ@mail.gmail.com>
In-Reply-To: <CAKwvOdm_zysTbsMp8GmmrwB3MU9MyZU-jtenH7JpPTX7+ZODKQ@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 28 Apr 2022 21:36:34 +0200
X-Gmail-Original-Message-ID: <CAMj1kXFY5AKvpjetuRGKA5Dt0hOPKY5S=oSFqgANTde=fe9rBA@mail.gmail.com>
Message-ID: <CAMj1kXFY5AKvpjetuRGKA5Dt0hOPKY5S=oSFqgANTde=fe9rBA@mail.gmail.com>
Subject: Re: [RFC PATCH 2/2] arm64: kernel: switch to PIE code generation for
 relocatable kernels
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Fangrui Song <maskray@google.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Will Deacon <will@kernel.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Kees Cook <keescook@chromium.org>, 
	Mark Rutland <mark.rutland@arm.com>, Nathan Chancellor <nathan@kernel.org>, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=YYDbGqO+;       spf=pass
 (google.com: domain of ardb@kernel.org designates 2604:1380:40e1:4800::1 as
 permitted sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, 28 Apr 2022 at 20:53, Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Wed, Apr 27, 2022 at 11:57 PM Fangrui Song <maskray@google.com> wrote:
> >
> > On 2022-04-28, Ard Biesheuvel wrote:
> > >On Thu, 28 Apr 2022 at 04:40, Fangrui Song <maskray@google.com> wrote:
> > >>
> > >> On 2022-04-27, Ard Biesheuvel wrote:
> > >> >Fortunately, we can convince the compiler to handle this in a way that
> > >> >is a bit more suitable for freestanding binaries such as the kernel, by
> > >> >setting the 'hidden' visibility #pragma, which informs the compiler that
> > >> >symbol preemption or CoW footprint are of no concern to us, and so
> > >> >PC-relative references that are resolved at link time are perfectly
> > >> >fine.
> > >>
> > >> Agree
> > >>
> > >
> > >The only unfortunate thing is that -fvisibility=hidden does not give
> > >us the behavior we want, and we are forced to use the #pragma instead.
> >
> > Right. For a very long time there had been no option controlling the
> > access mode for undefined symbols (-fvisibility= is for defined
> > symbols).
> >
> > I added -fdirect-access-external-data to Clang which supports
> > many architectures (x86, aarch64, arm, riscv, ...).
> > GCC's x86 port added -mdirect-extern-access in 2022-02 (not available on aarch64).
> >
> > The use of `#pragma GCC visibility push(hidden)` looks good as a
> > portable solution.
>
> Portable, sure, which is fine for now.
>
> But there's just something about injecting a header into ever TU via
> -include in order to set a pragma and that there's such pragmas
> effecting codegen that makes my skin crawl.
>
> Perhaps we can come up with a formal feature request for toolchain
> vendors for an actual command line flag?
>
> Does the pragma have the same effect as
> `-fdirect-access-external-data`/`-mdirect-extern-access`, or wvisould
> this feature request look like yet another distinct flag?

I agree that this is rather nasty. What I don't understand is why
-fvisibility=hidden gives different behavior to begin with, or why
-ffreestanding -fpie builds don't default to hidden visibility for
symbol declarations as well as definitions.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXFY5AKvpjetuRGKA5Dt0hOPKY5S%3DoSFqgANTde%3Dfe9rBA%40mail.gmail.com.
