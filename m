Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBBZ62WKCAMGQEHFNG4ZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id F169A3704AB
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 May 2021 03:22:47 +0200 (CEST)
Received: by mail-lf1-x13f.google.com with SMTP id v23-20020a05651203b7b02901abd47176ffsf20801048lfp.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Apr 2021 18:22:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619832167; cv=pass;
        d=google.com; s=arc-20160816;
        b=V0r4XXEOHrzRuhmJpj/nxIlEXgmncwCUmLh9bhLB1GH4m+dTtfWtSiJWO1PBnGUZcC
         gt0cbOATLxVl2LCxOQg6ybi8thmq/aT5sy+kc5P1+CKunXdpMBWeG6yIQ3PvKo8Rosln
         wIHftQCow23y3cTFz8P/OrGRmYJ5WQNpnP3UF71N1kulCzA27MpPonzQwd93wGu3qLCv
         zied2yC8rpUQhI7TpSXLMa2T9uCXs9dIKtZAY7Shwc3ZInAqL/KfPXTh20EdaWwGdlJq
         ixEUQg3CrW1p65Jl9GXhkmh5MSPmBweouEBPMHio2KbO6f4+1XSB9Zldm1odPXANEcKC
         q3HA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=TIoo9159Pg54dGK2DISoiwOMiv1l4F1SjWf9FaqvR8c=;
        b=LxwEPR0mZhY+Ay8xxY0LsrxC5A1Bo6S53xrXJcWkFLVVpYLMb48MN9TYiUVJpvfPWA
         /E/HQ4PqhNAkg+ScoAD7sdEh162dkfAsoCqpLGzjB0MpLUbwegbQCLSWRUTbVdVVqECn
         /+JsqhOKCu8HukWe8W8MO82QKzQjUxcIwatgCMdnQDBfADnnRzJZv/IzIbAyANuhjB6D
         Xsp5iCC6FIpqk92u1FJ7R/IPTi20nu2r+uFsRHVNw1XyWMibaZyEqUKf2G9rLqyFXZL4
         Ij7UnkP1soRraVXP1hehqZLlEovkGCU5IygDq0wDbD/HyUrubx2PprnTPqvpaisbktex
         CWVw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=cWa96zKJ;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::12d as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TIoo9159Pg54dGK2DISoiwOMiv1l4F1SjWf9FaqvR8c=;
        b=qgGo6r0h90ckQsWsz/ELpzLutLDoLcCWNUmx/3TuiUoe9feNnDzUAx1wIRYtlJ4Ldl
         Pek6kCmzShAddafqTtOZ/uJs6/Dth+PfUh6oj4McOa/7CUjefwf5nYi1BauhQGureeKZ
         Ve3s5byZnXAd/ZZyjaGWiVZN9gnutmX52k9Y9dwvecoKtJsoeacVZFQOMcFNsE+3IYzW
         YKW9jP1Xd+PSEndlr42rn4N70uU4ceT2BAUpIUHUvmFolmdmRc6cF31dSKj1WgQjr0HP
         6f8AVnoFshWRNpwOoxm0l7VQMbJv6BC09tuMIPQXwcKKUQzxfoX1/+3v/KuLZi/WU1ze
         Pl0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TIoo9159Pg54dGK2DISoiwOMiv1l4F1SjWf9FaqvR8c=;
        b=c5DSshKaQ31KO/qrzQ3tng+DxwKfuctumPSjKCFfwDPAfHRfM4QJg4cslWeLFRx+Tr
         R+6n3+SHrGfXkLow/paURKSCTA8hiZO+YSp1+3R2RUVOmcqmTC+9DhWw+UU1FIYJ4qjZ
         coBdmAWyiJjEQ2Ax5I/Ogsje10F49N9IYSdk4q4TpKjss2IJCd9lfdzb1MtFUxcw1doI
         pCC7CfgfXAZqdO7lW76mmMxNigky2VvJrBlASxWk1y6hGxNQqQLRx9GGkMlPuYHK5d6D
         qfKOhmXSigMJ5OSdmVexUCuFGkeTOvn17XFLeMZmaZ+1tfcMjA59PxuGhI/DDLwpfswM
         +fGQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532I4tXIoF7jv/LqsWZ7YFdHy3er1DEJTFoDuZOohb8zrKVlHwKG
	e5wHSEe7x32vNEZLrWm1/5M=
X-Google-Smtp-Source: ABdhPJzLJiS0RSdDVNfY/3do6/4+sPuwKPHdFCjedJ44mNabSxrK40VFb4OiM0qau2Xk0SHfqtFcdQ==
X-Received: by 2002:a05:6512:11c2:: with SMTP id h2mr5237213lfr.94.1619832167571;
        Fri, 30 Apr 2021 18:22:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:a785:: with SMTP id c5ls2265053ljf.8.gmail; Fri, 30 Apr
 2021 18:22:46 -0700 (PDT)
X-Received: by 2002:a2e:b538:: with SMTP id z24mr5721315ljm.8.1619832166409;
        Fri, 30 Apr 2021 18:22:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619832166; cv=none;
        d=google.com; s=arc-20160816;
        b=rmvG8w8h3x6KOsQ4oT/0M3NkQzUmS2QEzNNd6ySM9ntgJck3wciHBb0/ne/MrN78bs
         or7xpT3SI/1D7DR4BzVZ66TI1OgO+Ni8jjdolgAKRuSEvMeKQjaXoVxQrT+rwambfWOf
         BkbS33N/Mtj/lvio96+xVt7+u7hw59k+JuzPHbezgeQaH4m273CNRlnQLwEkVuUCH+qZ
         2Pm8skScKiPPYTi2hTnSZrKPyDmp+lLdE4XQKLHB+S/z5OWVM5R9wiGBlNRpMbibNLcQ
         c2jQW8z9knPtHof2PyL0HgSs72eXO8ORgbSf4/cEST7TeYwcVyaAt97NdrKNqOSpjuGL
         +p4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=AYQ9Il+dA/pq2ZY5nJ7eyP52AYYn0pZLbsxAJBCe+mw=;
        b=m/EuBtm+rYhNRa6lo9fF0yHemAj1nxtea+UayGMoR2+jj57TDz0N/dy9KjByXEES93
         UhTJPCDwGHbkTnplSrLXUyJn+jh20ACAyeqNGKd0K+RhzmsQCc1rRG6jetk3xEq6Ctpe
         L3mLdjf2aAG3ENXfRzdODI3IvDI04ClxXPWaKrlO90O1I9uAaItWQneL/j9ouh+eN5eM
         U9buHhPAWYUfgC+lTia8CwbG23LyOrwHqYP0sIE5dPgY39cNLgcBqxAmIMxaMc5jAx6G
         7QKxpXi3xMFW5ufBKiOsRK/xKCkeTQecOS74b43dk7+tTOlPQk3794z3kGnfCqPFXReS
         habQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=cWa96zKJ;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::12d as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com. [2a00:1450:4864:20::12d])
        by gmr-mx.google.com with ESMTPS id p18si535366lji.8.2021.04.30.18.22.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Apr 2021 18:22:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::12d as permitted sender) client-ip=2a00:1450:4864:20::12d;
Received: by mail-lf1-x12d.google.com with SMTP id b23so30278565lfv.8
        for <clang-built-linux@googlegroups.com>; Fri, 30 Apr 2021 18:22:46 -0700 (PDT)
X-Received: by 2002:a05:6512:b83:: with SMTP id b3mr3601199lfv.312.1619832165945;
        Fri, 30 Apr 2021 18:22:45 -0700 (PDT)
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com. [209.85.208.180])
        by smtp.gmail.com with ESMTPSA id a10sm413644ljq.90.2021.04.30.18.22.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Apr 2021 18:22:45 -0700 (PDT)
Received: by mail-lj1-f180.google.com with SMTP id a13so361329ljp.2
        for <clang-built-linux@googlegroups.com>; Fri, 30 Apr 2021 18:22:45 -0700 (PDT)
X-Received: by 2002:a2e:b555:: with SMTP id a21mr5593886ljn.507.1619832164814;
 Fri, 30 Apr 2021 18:22:44 -0700 (PDT)
MIME-Version: 1.0
References: <CAHk-=wjmNOoX8iPtYsM8PVa+7DE1=5bv-XVe_egP0ZOiuT=7CQ@mail.gmail.com>
 <CAKwvOdmMF_v9TzBtFn2S1qSS_yCDO8D-u3WhBehUM7gzjcdjUQ@mail.gmail.com>
 <CAKwvOdk+V2dc31guafFM=N2ez4SrwCmah+mimUG3MzPMx_2efQ@mail.gmail.com>
 <CAKwvOdn3uXniVedgtpD8QFAd-hdVuVjGPa4-n0h64PTxT4XhWg@mail.gmail.com>
 <CAKwvOdm3D=dqKw=kx46PLaiqfHOZJL3QFKGc8kxqJqpwdFFWqw@mail.gmail.com> <CAKwvOdkp_P8BCtFuKqDrtC_=A89ZfDf66Yr3FL2e=ojwv4KaMA@mail.gmail.com>
In-Reply-To: <CAKwvOdkp_P8BCtFuKqDrtC_=A89ZfDf66Yr3FL2e=ojwv4KaMA@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 30 Apr 2021 18:22:28 -0700
X-Gmail-Original-Message-ID: <CAHk-=wi1yiBBr3b3RbCEte6-yzAApsZN5zRdr3xoW8Av9jOX=Q@mail.gmail.com>
Message-ID: <CAHk-=wi1yiBBr3b3RbCEte6-yzAApsZN5zRdr3xoW8Av9jOX=Q@mail.gmail.com>
Subject: Re: Very slow clang kernel config ..
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b=cWa96zKJ;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::12d as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

On Fri, Apr 30, 2021 at 5:25 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Ah, no, sorry, these are the runtime link editor/loader. So probably
> spending quite some time resolving symbols in large binaries.

Yeah. Appended is the profile I see when I profile that "make
oldconfig", so about 45% of all time seems to be spent in just symbol
lookup and relocation.

And a fair amount of time just creating and tearing down that huge
executable (with a lot of copy-on-write overhead too), with the kernel
side of that being another 15%. The cost of that is likely also fairly
directly linked to all the dynamic linking costs, which brings in all
that data.

Just to compare, btw, this is the symbol lookup overhead for the gcc case:

   1.43%  ld-2.33.so             do_lookup_x
   0.96%  ld-2.33.so             _dl_relocate_object
   0.69%  ld-2.33.so             _dl_lookup_symbol_x

so it really does seem to be something very odd going on with the clang binary.

Maybe the Fedora binary is built some odd way, but it's likely just
the default clang build.

             Linus

----
  23.59%  ld-2.33.so          _dl_lookup_symbol_x
  11.41%  ld-2.33.so          _dl_relocate_object
   9.95%  ld-2.33.so          do_lookup_x
   4.00%  [kernel.vmlinux]    copy_page
   3.98%  [kernel.vmlinux]    next_uptodate_page
   3.05%  [kernel.vmlinux]    zap_pte_range
   1.81%  [kernel.vmlinux]    clear_page_rep
   1.68%  [kernel.vmlinux]    asm_exc_page_fault
   1.33%  ld-2.33.so          strcmp
   1.33%  ld-2.33.so          check_match
   0.92%  libLLVM-12.so       llvm::StringMapImpl::LookupBucketFor
   0.83%  [kernel.vmlinux]    rmqueue_bulk
   0.77%  conf                yylex
   0.75%  libc-2.33.so        __gconv_transform_utf8_internal
   0.74%  libc-2.33.so        _int_malloc
   0.69%  libc-2.33.so        __strlen_avx2
   0.62%  [kernel.vmlinux]    pagecache_get_page
   0.58%  [kernel.vmlinux]    page_remove_rmap
   0.56%  [kernel.vmlinux]    __handle_mm_fault
   0.54%  [kernel.vmlinux]    filemap_map_pages
   0.54%  libc-2.33.so        __strcmp_avx2
   0.54%  [kernel.vmlinux]    __free_one_page
   0.52%  [kernel.vmlinux]    release_pages

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3Dwi1yiBBr3b3RbCEte6-yzAApsZN5zRdr3xoW8Av9jOX%3DQ%40mail.gmail.com.
