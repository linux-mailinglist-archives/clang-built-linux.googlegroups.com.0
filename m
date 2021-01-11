Return-Path: <clang-built-linux+bncBD66FMGZA4IIPCHT74CRUBDZFWBHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 56BC32F21D6
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 22:32:56 +0100 (CET)
Received: by mail-lf1-x140.google.com with SMTP id v187sf91482lfa.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 13:32:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610400776; cv=pass;
        d=google.com; s=arc-20160816;
        b=VfuAegjm7wdUlkCuKZjZy+OYnLwKhuwAT7z3OycovKw0eon987KrR8x8AbLok7qBsZ
         7PMMjdCQAMYFqbcVmm5VzOl010v8+Oe9qdKxFAFBVGZevf0+KlQlQL44UpszQcf+aRTd
         nO/5TJ+kXs2LfF62HOrl4mlJdqMclkQmGF+z81fG7CaD0BX5SFCi+Gwadkl0Y6LGe+ri
         zVBN1ZXBIuHq0hAkTiTGrmacunJ1S0mc84W5O0nZ6s/BEmaEzq5RxmmB0t3wIL8M+RK5
         wAf9VSF3nEjRgjcKEd0vecFphSxi/7dVgVus7Q1GGBgZXNksq1ddTYwmexmfXrgnerj7
         G3BA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=nSjCrTgyXMEw0BABYo2XdKB3G/BKJgQY+UJ4IYyrP5E=;
        b=dAHuRkFgM5hTQiPicKUVwYXOK0Ubo5hkeeuCpmPuvFEfrvoRCJ08g8Bmn3C6sZ57d/
         6pjm8qDt/S+zkNH0WRlQ/g7AC9fvwK+H3HdbF79l2vU0slf65YraYhxWhWWRO+4fh6S/
         PfULOKmFrIm2yKr4aUgnw2eUJGQxl6N01onIib/R+F6N0f/1848q8aQLFrOCk+AMsC3f
         /PZafEZXaCEECoSU9BMSWLtjIdjYO7aU4qKQXRShEYWR7Vowcj0NJYv3g+qgT5pHMO9+
         4MKW2OXqVUar+jGvq7wm4clCtqXRoRvLgH+9UlydXIpxhRtLP8Sj0jgT7a4W/lRHpbOX
         Xy+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rYOp9BCU;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::62f as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nSjCrTgyXMEw0BABYo2XdKB3G/BKJgQY+UJ4IYyrP5E=;
        b=F5sgNieMVmcKasSNOzS34hLIBe1fCEDJs0+EkVJtfXrg3C1qyUgmMqL8P/BiRC3REr
         fAPN5tLRM9JRyDf2htYXS0WseLNvIVxhWCWkNV3xGI4CE2cnEc3f2wXrJnQ1K12v7clC
         GlJtUcEhc8/VgBZV5VmS0H9YPP9YBrBiH6QLrAB5GwtIhhPFe0RJ749HwyncQmr5ufSV
         PjCFXgUh/PfQZrT18d8V1N/B5E9SThZ3wKDbEIOZRdu11yENVH/VY/wuMbpV6IEp8LEI
         /rc8Wc8Zw9fmvHYfWsw/Sv1ylfooli338I6+WA5tKnPlRLGHDWbCfnPglgNJvReOSr9E
         2wlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nSjCrTgyXMEw0BABYo2XdKB3G/BKJgQY+UJ4IYyrP5E=;
        b=TwzwAeMFmo5qqAmqcfO9abtZUEt0Ka29bnFcPMpFuu8ipeaobxbsbhmyLI8JJKG8Sd
         akfzoOHpLN2D/8pO/i0NIprft1W2dPbybbifsrHj+cb+gAIrZADdLsGYmKqWcO0OBa2H
         qSz6D1PAIuPKGlBXMAsxTBGjVORcfaBPHFA9ZmAdFxWsdKhKq6YCDhQMLuEPmkvgMUwJ
         vTO6zNtak0fhQ3pLOINOc9r8AmBAMHHepoPrA4GBD+12aGIfW3h1joaBd+FzYQ1spXlA
         0azU5Q95YF/JRy4+sMjyOSVcBEv10TngzlB2J/wnwTptl3rGJQ9Nwo9TTMad67OYI2o/
         KxMQ==
X-Gm-Message-State: AOAM532FCWK28/LarkF73tvktFj0VSSk9WxopsDJUcXXwioQRf1NbaHT
	Qa9skvTl8D4NkYdBtWqNAp8=
X-Google-Smtp-Source: ABdhPJxqQBWfhnqSUcVC2Bgw2jKv5JfZV9SsaS11xY/4steScp1nSNas3XwhmlQ2zHejcXsL0LQtZg==
X-Received: by 2002:ac2:58e4:: with SMTP id v4mr641312lfo.662.1610400775908;
        Mon, 11 Jan 2021 13:32:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:6145:: with SMTP id m5ls632219lfk.2.gmail; Mon, 11 Jan
 2021 13:32:54 -0800 (PST)
X-Received: by 2002:ac2:456e:: with SMTP id k14mr619338lfm.176.1610400774805;
        Mon, 11 Jan 2021 13:32:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610400774; cv=none;
        d=google.com; s=arc-20160816;
        b=FeXj5af/7KTw5yEytF/oWP4y78wtKiDGRD3AzNLWKUXrS2bEQ/ooPukUt98bLPvzPQ
         a4PNlXrgVapfPnuccOJ/CLkeSvsd5vwbFwVyc37AiB5zqSz7ey5jj2CC1Aa/qIkuWAkH
         88pddHAHRePOWi7ndA+d+6SFA3GzJUCx0S38RVnYTj9rTX3R+0pSfy8ViqJ9R/+Imsw5
         +eKxR+f0LKWcoqlJOjzyRB77TJPoCja1vjfIlf+csu23A9qmxrZEsz7fHfiTUTlHTmd9
         OkSAe1qJjDo7HNKxxvrnhH5N2mog3JqXZts0L6wgEcuVCU8SUVd7gWeE/D1IpVGo6rc+
         yyrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=50L+1hnJJiPA478RLj/gLuEG+isMc9fiaMNBoBubFG8=;
        b=nM3Iru0FtgujaDvmacz2iE+IODF9G2Xv44EwyCxpzcUxu7kN4GhvEXjeyC6lmSSmzS
         DFpXRHa7miVpQWbAu0EFpi/RdE7Agg6NhsnieMUYP2xWv+nQ/1A5G+CnSTAXXGEDu3fa
         MtEHeNUpm4vIvX6LIT8xaU086+xbEjSRpeY6ckkk1ebjfKMvFvRGhCRxaMPkFn9YuPcz
         62eg060fnNs+pcKPjE/DUpiR3vnu4urOo9VaBpMV/GtcNvH0diWuKODvKmAn504OuV0Q
         I4t6NrLuUzq/zJ8rp70z6MvxmKgyS9PXsgIg0smgLPLI6v1ctMCmkpTrnjzgspEaHSkc
         fRZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rYOp9BCU;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::62f as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com. [2a00:1450:4864:20::62f])
        by gmr-mx.google.com with ESMTPS id t65si30831lff.3.2021.01.11.13.32.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Jan 2021 13:32:54 -0800 (PST)
Received-SPF: pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::62f as permitted sender) client-ip=2a00:1450:4864:20::62f;
Received: by mail-ej1-x62f.google.com with SMTP id lt17so504445ejb.3
        for <clang-built-linux@googlegroups.com>; Mon, 11 Jan 2021 13:32:54 -0800 (PST)
X-Received: by 2002:a17:906:cc8c:: with SMTP id oq12mr958706ejb.419.1610400774280;
 Mon, 11 Jan 2021 13:32:54 -0800 (PST)
MIME-Version: 1.0
References: <20210111081821.3041587-1-morbo@google.com> <20210111210418.GA3660906@ubuntu-m3-large-x86>
 <CAKwvOdnssY=CV4daRQvGa659AzGvMT+Kb10g5-DDuZjqbp-J5A@mail.gmail.com>
In-Reply-To: <CAKwvOdnssY=CV4daRQvGa659AzGvMT+Kb10g5-DDuZjqbp-J5A@mail.gmail.com>
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 11 Jan 2021 13:32:43 -0800
Message-ID: <CAGG=3QVpxUpZJJYiy88YYk80-kvRPipnYdk9_9WzN=bToX9POA@mail.gmail.com>
Subject: Re: [PATCH] pgo: add clang's Profile Guided Optimization infrastructure
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Jonathan Corbet <corbet@lwn.net>, 
	Masahiro Yamada <masahiroy@kernel.org>, Linux Doc Mailing List <linux-doc@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=rYOp9BCU;       spf=pass
 (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::62f as
 permitted sender) smtp.mailfrom=morbo@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Bill Wendling <morbo@google.com>
Reply-To: Bill Wendling <morbo@google.com>
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

On Mon, Jan 11, 2021 at 1:18 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Mon, Jan 11, 2021 at 1:04 PM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > On Mon, Jan 11, 2021 at 12:18:21AM -0800, Bill Wendling wrote:
> > > From: Sami Tolvanen <samitolvanen@google.com>
> > >
> > > Enable the use of clang's Profile-Guided Optimization[1]. To generate a
> > > profile, the kernel is instrumented with PGO counters, a representative
> > > workload is run, and the raw profile data is collected from
> > > /sys/kernel/debug/pgo/profraw.
> > >
> > > The raw profile data must be processed by clang's "llvm-profdata" tool before
> > > it can be used during recompilation:
> > >
> > >   $ cp /sys/kernel/debug/pgo/profraw vmlinux.profraw
> > >   $ llvm-profdata merge --output=vmlinux.profdata vmlinux.profraw
> > >
> > > Multiple raw profiles may be merged during this step.
> > >
> > > The data can be used either by the compiler if LTO isn't enabled:
> > >
> > >     ... -fprofile-use=vmlinux.profdata ...
> > >
> > > or by LLD if LTO is enabled:
> > >
> > >     ... -lto-cs-profile-file=vmlinux.profdata ...
> > >
> > > This initial submission is restricted to x86, as that's the platform we know
> > > works. This restriction can be lifted once other platforms have been verified
> > > to work with PGO.
> > >
> > > Note that this method of profiling the kernel is clang-native and isn't
> > > compatible with clang's gcov support in kernel/gcov.
> > >
> > > [1] https://clang.llvm.org/docs/UsersManual.html#profile-guided-optimization
> > >
> > > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> > > Co-developed-by: Bill Wendling <morbo@google.com>
> > > Signed-off-by: Bill Wendling <morbo@google.com>
> >
> > I took this for a spin against x86_64_defconfig and ran into two issues:
> >
> > 1. https://github.com/ClangBuiltLinux/linux/issues/1252
>
> "Cannot split an edge from a CallBrInst"
> Looks like that should be fixed first, then we should gate this
> feature on clang-12.
>
Weird. I'll investigate.

> >
> >    There is also one in drivers/gpu/drm/i915/i915_query.c. For the time
> >    being, I added PGO_PROFILE_... := n for those two files.
> >
> > 2. After doing that, I run into an undefined function error with ld.lld.
> >
> > How I tested:
> >
> > $ make -skj"$(nproc)" LLVM=1 defconfig
> >
> > $ scripts/config -e PGO_CLANG
> >
> > $ make -skj"$(nproc)" LLVM=1 olddefconfig vmlinux all
> > ld.lld: error: undefined symbol: __llvm_profile_instrument_memop
>
> Err...that seems like it should be implemented in
> kernel/pgo/instrument.c in this patch in a v2?
>
Yes. I'll submit a new V2 with this and other feedback integrated.

> > >>> referenced by head64.c
> > >>>               arch/x86/kernel/head64.o:(__early_make_pgtable)
> > >>> referenced by head64.c
> > >>>               arch/x86/kernel/head64.o:(x86_64_start_kernel)
> > >>> referenced by head64.c
> > >>>               arch/x86/kernel/head64.o:(copy_bootdata)
> > >>> referenced 2259 more times
> >
> > Local diff:
> >
> > diff --git a/drivers/char/Makefile b/drivers/char/Makefile
> > index ffce287ef415..4b2f238770b5 100644
> > --- a/drivers/char/Makefile
> > +++ b/drivers/char/Makefile
> > @@ -4,6 +4,7 @@
> >  #
> >
> >  obj-y                          += mem.o random.o
> > +PGO_PROFILE_random.o           := n
> >  obj-$(CONFIG_TTY_PRINTK)       += ttyprintk.o
> >  obj-y                          += misc.o
> >  obj-$(CONFIG_ATARI_DSP56K)     += dsp56k.o
> > diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> > index e5574e506a5c..d83cacc79b1a 100644
> > --- a/drivers/gpu/drm/i915/Makefile
> > +++ b/drivers/gpu/drm/i915/Makefile
> > @@ -168,6 +168,7 @@ i915-y += \
> >           i915_vma.o \
> >           intel_region_lmem.o \
> >           intel_wopcm.o
> > +PGO_PROFILE_i915_query.o := n
> >
> >  # general-purpose microcontroller (GuC) support
> >  i915-y += gt/uc/intel_uc.o \
>
> I'd rather have these both sorted out before landing with PGO disabled
> on these files.
>
Agreed.

-bw

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGG%3D3QVpxUpZJJYiy88YYk80-kvRPipnYdk9_9WzN%3DbToX9POA%40mail.gmail.com.
