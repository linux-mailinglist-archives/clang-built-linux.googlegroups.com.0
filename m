Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBIFV2H7AKGQEETHMXOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id C83012D84F2
	for <lists+clang-built-linux@lfdr.de>; Sat, 12 Dec 2020 06:52:34 +0100 (CET)
Received: by mail-pg1-x53a.google.com with SMTP id i187sf7984756pgd.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 21:52:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607752353; cv=pass;
        d=google.com; s=arc-20160816;
        b=MYy7Eh+Nsf2VbwxWT3uglL8T41hATkGJThAcJHglCfPs9EkUHpNTsGlaXjLVcWbG7w
         RcdtkYRdjrX0XogQT+mBzl6RpaMlS6UWdQS8PUyMfO2LS/XhA5nYeIDNc1v8tnm1bUlq
         iWkouESwicLjPtlvi55hMp1CFU9nZPlm2pTIp/J2Ugwz758KEEjBzcNzDJKz9mFz4kBu
         TMPHHhm4xcDt2zf9wEcEwNT5mRsGF2jT8D0+mxw6C9xZt7ePKH0icefguMcpnz2P10EN
         XyeqhVMftiUeT/E55eUXWfCwx2yCOZcxWlVUxG0+1LqL2N14fJ0jkH8AjJ8H0zDaHapU
         YGDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=tQ82Vj4D9hsIdWQaHq92E++rk1Zr1c1FOt08kgAnfjI=;
        b=dWl8QtjJDVaF+rJ9+aHQ2WXDXMsBuPktOJUYz5+k3X0CJUTynoBf/fdM8Of5ARldiL
         iEFJ+digp1qV4gySz+eVuERdsqLzAXtF6G9/3KrlyZWT2UfqPnO1l26S5tZjT9V7ypy4
         y6KCJhhMGY9tdNe0FRlbK/Tc24I/fzYrY3gRl5Y18NpPaJ40BeIfxY57JG7ZFb1D2BAA
         WkJ6CtlyycGDrS+FkErRRsIJ0GwN03iWng3JJCBDXnmPXUIozw78G9aChGjhSQYA8GxR
         Bg1Sb5DLSW50czXH3ylIFCkJ2Zr+/K24F2v1xyR5vCJwchqPU+yAHObs0pWEMNpbQ9KF
         9Q6A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vREtwM0Y;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tQ82Vj4D9hsIdWQaHq92E++rk1Zr1c1FOt08kgAnfjI=;
        b=nSrcBAh621GkoEItuvPzTqS8xJIF4b/fXWCb0Qn3+V0lgPG6sUDYHlPIaOQUjAg9uG
         ChD3XYYLTMKdTnFEjoIySiCbQWFetA+fpJlQ3AkZ0sU0Tg5g0LcZcbGNexBDP5Rq73ux
         ybHnJ3g4U7imM+A6ZSzWm3VrbisIfMY1xaluKZPOyKm7ec95FaLr379AWVZFOCI27g2C
         /bJ14YHhRl8D1/d93fsewtmsC2ywfHQz1cwlnnigfXT1J3Qg1KKb0OpTujQHWyeBiyj9
         bnJoEwQGKeBqSqYtF/Y24DgtHizuPWQ+joEZScuRU4GCcLDSlW3lsydPXciDYv8/sp/8
         vp8A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tQ82Vj4D9hsIdWQaHq92E++rk1Zr1c1FOt08kgAnfjI=;
        b=gxV9S/OY6bb7YMlnI50bQbk4fIXgpo+XZ0CVZiVT8W9YCc7m2immERfNyb2EAAtE3z
         2uHGAonbnOVURneCnINNiBct6vcBJ2Dj8+pVyYeZmoyfgVAfsSMzxpXYb0t1SQa5qPAF
         Udb4MGcmN8R3e+u225V8jLasCLsothHSXNBz9bYrrGMcsjLP07nu4icYIE9wfhK9ugZu
         9JRHD6ssWC5sHbDyyJCP92aWwvS4+7+o6XQlQX9toln7zpO4IB5KKRmWYzYQZLmcdC7a
         rBwCujZV25/R+etQbGZ5GDX1qiIFcsIwY3h+cGdxIw56+oiD9ivlYaMH//aUykm8Gzuv
         RcPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=tQ82Vj4D9hsIdWQaHq92E++rk1Zr1c1FOt08kgAnfjI=;
        b=npVUS9b6opHuxPF8x9r4ROyKyKX0QfNrppibYJ1enq4ARDAoKNY6k9qRrFzCK1jJ4l
         qe7TTK9+9yIEMDss/uJG27cQP9qYq0e5E1z8AkBDxfR6HRtwj6aE4dtmPi9BtzxBGA2C
         1l5bGCDEnhTJFm5Skn/zE4l9zhUXSa3QpElYE0RVAcbscEcl7+GnbhqB6lWFyJotfgzz
         XPjvnlKf/vLlcDb6Oumi8/YI58nZImhwbTNX7l1ceR3UVQ7XNZzdex7CMbxg4/1lq2rv
         dz8nFs4e3xyFtDTD5yKsmDlFQRGx5MpkXTK8+cHp6tYBJDlylEgqt7s/Mpt4rb9BMmsm
         AVZA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530mZIVwvmSlRAODyO0dt7kalLTtRcgcVugTEIVQamxbcxEV2Nxo
	OyZPGbVjErWkYSPNUtwH8AY=
X-Google-Smtp-Source: ABdhPJy4AswJLicgIWKioeWc98F2i0qjlPgnEqiAtrT1MwDqnSKvxZc1OBQDlITDL1JCeHv84Klj/g==
X-Received: by 2002:a17:902:7c0a:b029:da:62c8:90cb with SMTP id x10-20020a1709027c0ab02900da62c890cbmr14165968pll.59.1607752352995;
        Fri, 11 Dec 2020 21:52:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:3896:: with SMTP id f144ls4154301pfa.4.gmail; Fri, 11
 Dec 2020 21:52:32 -0800 (PST)
X-Received: by 2002:a63:d5b:: with SMTP id 27mr15344965pgn.185.1607752352264;
        Fri, 11 Dec 2020 21:52:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607752352; cv=none;
        d=google.com; s=arc-20160816;
        b=hQVsR0RDwPsHeVNbK70mJjjVNsgubEZz/Vt6/ToClAkamX7KPod50uki93ERBdy13R
         yMzgW8ufpzaoDf1DbJ1kmxHXNghHRjzZwUUUBS0uOCRGMU+us50nU4TxEOBPhrF3Jbl0
         FvYh8LTILgE1V1MweJ0s0uNVWVO9ZCRBM+79QtMAUjsDNG4geM/CnsTY+op50yP1bGH3
         CjSOzS1NHQyq8wz6YDYcWYp69ChBjidYPC09OpHyp5pRfinsNSiEOy8aTWySIYcXcOfv
         Du+rw62FAjljS1PAoVrePSZRI44Iby/pDpekkHA+0fi4uaVP6yLFw6kKBli4ulDyMKB5
         pKGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=de8qBW77ez2vG1k7g514vZ/gVwv8ByEiy7/gkUkjT1M=;
        b=BjqbMp6GGTS+Lul0+k+grGBf0qtXY7ctEpHNScDDHaGL8g8lG0lhSLAmrVQzySlOOi
         A0HScNBOjaotc2ZDfBvLB2WgTkSCYRVH01MwSavRQ3Kb7MO/Ou0AKGz7Tq3wxQ20HY6q
         TWX3Cc3t2ENMc+SMWQraeLBb+LSsoMCKOtaKJIWOOeejuCmo7Sg5m4Wt2BnitdFw8d6G
         8OCHB8imjLETInaYgkPI9YBe58XpD0rbUNr/We6OD20aBR1FtJiNzCs+MSiIoobmH2gi
         1LqaT0f4PMb5kvIHZwSE5mTlJmkUOLBMdbrKY5Rxay89wWbTfQUQMUOg+GYqmZ8oj156
         dxNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vREtwM0Y;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com. [2607:f8b0:4864:20::d42])
        by gmr-mx.google.com with ESMTPS id mp23si790280pjb.1.2020.12.11.21.52.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Dec 2020 21:52:32 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) client-ip=2607:f8b0:4864:20::d42;
Received: by mail-io1-xd42.google.com with SMTP id r9so11768885ioo.7
        for <clang-built-linux@googlegroups.com>; Fri, 11 Dec 2020 21:52:32 -0800 (PST)
X-Received: by 2002:a05:6638:5b2:: with SMTP id b18mr20364316jar.69.1607752351667;
        Fri, 11 Dec 2020 21:52:31 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id 143sm6795278ila.4.2020.12.11.21.52.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Dec 2020 21:52:30 -0800 (PST)
Date: Fri, 11 Dec 2020 22:52:28 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: "Maciej W. Rozycki" <macro@linux-mips.org>
Cc: Anders Roxell <anders.roxell@linaro.org>, tsbogend@alpha.franken.de,
	ndesaulniers@google.com, linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2] mips: lib: uncached: fix non-standard usage of
 variable 'sp'
Message-ID: <20201212055228.GA823758@ubuntu-m3-large-x86>
References: <20201211102437.3929348-1-anders.roxell@linaro.org>
 <alpine.LFD.2.21.2012111950290.2104409@eddie.linux-mips.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <alpine.LFD.2.21.2012111950290.2104409@eddie.linux-mips.org>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=vREtwM0Y;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, Dec 11, 2020 at 07:54:07PM +0000, Maciej W. Rozycki wrote:
> On Fri, 11 Dec 2020, Anders Roxell wrote:
> 
> > diff --git a/arch/mips/lib/uncached.c b/arch/mips/lib/uncached.c
> > index 09d5deea747f..f80a67c092b6 100644
> > --- a/arch/mips/lib/uncached.c
> > +++ b/arch/mips/lib/uncached.c
> > @@ -37,10 +37,12 @@
> >   */
> >  unsigned long run_uncached(void *func)
> >  {
> > -	register long sp __asm__("$sp");
> >  	register long ret __asm__("$2");
> >  	long lfunc = (long)func, ufunc;
> >  	long usp;
> > +	long sp;
> > +
> > +	__asm__("move %0, $sp" : "=r" (sp));
> 
>  I thought it might be better to make `sp' global instead, so that it's 
> the compiler that chooses how to schedule accesses.  Have you tried that?
> 
>   Maciej

This will not work, as the LLVM Mips backend does not support using $sp
as a global register variable:

https://github.com/llvm/llvm-project/commit/1440bb2a26ff13df1b29762658ee122cc0bc47ae

$ make -skj"$(nproc)" ARCH=mips CROSS_COMPILE=mipsel-linux-gnu- LLVM=1 O=out \
distclean malta_kvm_guest_defconfig vmlinux
fatal error: error in backend: Invalid register name global variable
...

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201212055228.GA823758%40ubuntu-m3-large-x86.
