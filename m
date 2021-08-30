Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBL7XWSEQMGQEPFC26NI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3432A3FBD53
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Aug 2021 22:12:38 +0200 (CEST)
Received: by mail-il1-x13e.google.com with SMTP id y8-20020a92c748000000b00224811cb945sf9840284ilp.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Aug 2021 13:12:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630354352; cv=pass;
        d=google.com; s=arc-20160816;
        b=pTrGETrnxlQYbDTFPsepTZW9meaB/GUyu51ZhTeeBqsi5bhnC5umw+IIY1dHImsvw3
         2p4zVb+WB/r6zD1EW0fUJWnk4aKWnQ/CokBMPmwVZ+47xdtaMaHQSF3E2A+XIiZGMeef
         BdtOm1a6wQ82H2w3veKSAA8FCrvuFj6XK4Q9jiqm6UFAGkYIrEhVrIJW0gDIJU28uUI2
         1oI8E8M7Ah4lXzKfIZdskGHXHHwKh02vKbUCGDtXCituRKvqsiBqqxrcCIDMEnXcfbLR
         jTD/oGQjirP+u6IHpmlTKZNRFigLcPYgSDwLqWDJv21d92er7gk7w7BXxwJ83pEbboRy
         zMkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=msuktfWwWsj/oODwh1d4zIhm3RwTlLT3QMDOt7gVYT4=;
        b=OkHF75gt5/Gtdwq8NLrupQ89qipT/OQCaFhhxXoXN5jTFdGZz7Ftb5iGNplTz1EFOo
         Nj5AwAAgxjuLIpgCyqpaski5yb9oEqTrx2bjuRuBhmR4JeqSXyePu8gWPjGFIQJUtV+a
         515b1nMLJD5RbiXHT+qYH51cteCYKGJP+DbZ9O+ccnIb9XPBAkWa8APq1QUgfW79PRVE
         gT8Ypk0YO6ZJDO8pCjWZRtQLvWLUSy9JjNHvv2XYmvvGuMqlKFb+NeJq7sYsZ0el/bpd
         aHUhq7DT4z/OocPI7YgfFFyJI/jOrSjJBs+d+uVll+WwjQPyjzduz+srysdDoFTU3yqr
         iSEA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=SQIeHtMB;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1031 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=msuktfWwWsj/oODwh1d4zIhm3RwTlLT3QMDOt7gVYT4=;
        b=Di3iwyfC9MkFA2p0pvAKth8Hzuk+/s2o1RXhCr+NR4DIOn8Hdi7xPcaSJDUkbE/I0W
         Hu1CZfVlkrIE9CDdoSOxsm8islZxL1uOzR91ZCl1YXVoeRHkTi9msy3gwu98iYlCLm7p
         q4O/WYZQtEUrIkOFKDYPRxZP5WcirbrcNxD3DYu9fPc9bvJ9chy88f/6lCVG+OTqbjpp
         WALfWi/I7qwif5eFRWLFbxxR1E49GA9tpqlj66H2ZFnSht7+nymz5yWV4i7aEczNSz4m
         vaPbYLZalvVJKZ+QJLV5jPRgyaSTNv3oedJwjI0CvpCY8d3zBYI7hWUhwIZwYZKcY5cH
         E/2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=msuktfWwWsj/oODwh1d4zIhm3RwTlLT3QMDOt7gVYT4=;
        b=iqKa2D9z6DEb5RGKYZBoeXc8oVq1KDi6Ma7td6YT6HJ0KhIfg5je7YST4L/cAzBuk1
         1Xi3p1z24RE1+KkrpsDmXiWzrY1wd6GtKnKTqfqZCJBAqFO6TAsdpAp/okGPYOkEKztA
         w279hFLLbaLITweW0GPvUkTfGBZLxxgmy9W4YVszjBME0eVGOw2A7GZXHsDPhE8m2CRN
         nqs5VOiCYbjqI7oegYZW2eHFJ+ViEwcO9/IAPRpsLwU8Halcx+Ar6vlsEFNBBNJvhJcK
         BC7y1w/Bt+doM4vDB+YpiW/t0fbCMkvltRDRwde68YPSGs3NMIseLve1UD5QjLn9WmlO
         jdzg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5328nVZ5Ba5J78zsSeYDz23C2HCsi/IVnO3TjnUnDmngPMocIEqo
	cEkiyxvUdMTQMzkdvcIaSOc=
X-Google-Smtp-Source: ABdhPJzCLV0/6mEv3u/KflMkt2Zm6muE/bZmdsH5QEQerjFFKhsr4UrnwG6dDg5dO3DhYmCKxoCrUg==
X-Received: by 2002:a02:c7c6:: with SMTP id s6mr165259jao.34.1630354351702;
        Mon, 30 Aug 2021 13:12:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:71b:: with SMTP id f27ls2683289iox.1.gmail; Mon, 30
 Aug 2021 13:12:31 -0700 (PDT)
X-Received: by 2002:a6b:c80f:: with SMTP id y15mr19965887iof.80.1630354351288;
        Mon, 30 Aug 2021 13:12:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630354351; cv=none;
        d=google.com; s=arc-20160816;
        b=ZrOlVmGlJmJB0H0jykXmFAWtIKR9+53v4bgbcirhF896tnAkb0lHruOmQFZNOSBL4U
         f4PiYPKE7bGGHt/5LuubBDwXjsguDXNlrDpHJxO7Dz12HREy2ANB9+nlrJICiYTNy7O4
         iI5+heJKAFEcvQmRePM43UNOTqMBsY/p+0E/IHw7Djvpym/umnmINodUPKdow1SBOS13
         YDWveVVhbwjnc4YWPp7oDptRse5SaWgBE7oTalf87VXRnwK5wjtF6Y9q1DmxacOy8Mia
         rbc+aHMJIo/Y1keL1wgnMkU0/4Syi4CwPlR5uC4nhLyc8SzilrVNjoouBEGQgVjOKVO9
         aRrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=NyqR6zuX2UnSlgO+2J5doXVmpsPXm+DS8g/36ybZddY=;
        b=lEslR9AuMZj/49AXQKi/hF/Tuj7f4XOxgta9ENNBCnp9TZDRP7PHZmUUIi8l5b8Shx
         9g5O/ChjBp72u5xA9JsrZ4GQ+fyqNvJmFpEzPQOCD0w3dFEfQ2f2fAaaWxc+4So42bPG
         V5uXUsdBXBSX1OPkyawO/bBJ7EIbyrwu68uloT8/W+aAuDbGC11fE/xAWIlOJsjmSDXs
         Bfsnnwk3nbtLBIwO6Viz0nIWMTPA8ojEFj+2A7QsiF8Z6sgO0pgQUoJ8nUfwRx7DSP3T
         mTQGS2pon8uK80JnMW8xS142acunv0V5RMu/WZR69MUK/s1KgpS8GyNhCMT/y/sZFRrd
         OIQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=SQIeHtMB;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1031 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com. [2607:f8b0:4864:20::1031])
        by gmr-mx.google.com with ESMTPS id v7si1282292ilo.0.2021.08.30.13.12.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Aug 2021 13:12:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1031 as permitted sender) client-ip=2607:f8b0:4864:20::1031;
Received: by mail-pj1-x1031.google.com with SMTP id 28-20020a17090a031cb0290178dcd8a4d1so625080pje.0
        for <clang-built-linux@googlegroups.com>; Mon, 30 Aug 2021 13:12:31 -0700 (PDT)
X-Received: by 2002:a17:90a:1990:: with SMTP id 16mr940236pji.11.1630354350873;
        Mon, 30 Aug 2021 13:12:30 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id c16sm15534732pfb.196.2021.08.30.13.12.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Aug 2021 13:12:30 -0700 (PDT)
Date: Mon, 30 Aug 2021 13:12:28 -0700
From: Kees Cook <keescook@chromium.org>
To: Nathan Chancellor <nathan@kernel.org>
Cc: linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Keith Packard <keithp@keithp.com>,
	Dan Williams <dan.j.williams@intel.com>,
	Daniel Vetter <daniel.vetter@ffwll.ch>,
	clang-built-linux@googlegroups.com, linux-hardening@vger.kernel.org,
	llvm@lists.linux.dev
Subject: Re: [PATCH v3 0/5] Enable -Warray-bounds and -Wzero-length-bounds
Message-ID: <202108301259.1FC43498@keescook>
References: <20210827163015.3141722-1-keescook@chromium.org>
 <YS0nJtNDCwfbaubZ@Ryzen-9-3900X.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YS0nJtNDCwfbaubZ@Ryzen-9-3900X.localdomain>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=SQIeHtMB;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1031
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Mon, Aug 30, 2021 at 11:44:54AM -0700, Nathan Chancellor wrote:
> On Fri, Aug 27, 2021 at 09:30:10AM -0700, Kees Cook wrote:
> > v3:
> > - fix typo in treewide conversion (u8 should have been __u8)
> > - improve changelog for DECLARE_FLEX_ARRAY patch
> > - add acks/reviews
> > v2: https://lore.kernel.org/lkml/20210826050458.1540622-1-keescook@chromium.org/
> > v1: https://lore.kernel.org/lkml/20210818081118.1667663-1-keescook@chromium.org/
> > 
> > Hi,
> > 
> > In support of the improved buffer overflow detection for memcpy(),
> > this enables -Warray-bounds and -Wzero-length-bounds globally. Mostly
> > it involves some struct member tricks with the new DECLARE_FLEX_ARRAY()
> > macro. Everything else is just replacing stacked 0-element arrays
> > with actual unions in two related treewide patches. There is one set of
> > special cases that were fixed separately[1] and are needed as well.
> > 
> > I'm expecting to carry this series with the memcpy() series in my
> > "overflow" tree. Reviews appreciated! :)
> 
> Hi Kees,
> 
> I ran this series through my local build tests and uncovered two
> warnings in the same file that appear to be unhandled as of
> next-20210830. This is from ARCH=powerpc pseries_defconfig with
> clang-14, I did not try earlier versions of clang.

Thanks for double-checking!

> 
> arch/powerpc/kernel/signal_32.c:780:2: error: array index 3 is past the end of the array (which contains 1 element) [-Werror,-Warray-bounds]
>         unsafe_put_sigset_t(&frame->uc.uc_sigmask, oldset, failed);
>         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> [...]
> arch/powerpc/kernel/signal_32.c:1044:3: error: array index 2 is past the end of the array (which contains 1 element) [-Werror,-Warray-bounds]
>                 unsafe_put_sigset_t(&old_ctx->uc_sigmask, &current->blocked, failed);
>                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This smells like some kind of casting issue. uc_sigmask has only a single
unsigned long element but unsafe_put_compat_sigset() seems to be doing
stuff with [3], etc. Is it expecting u8? I will keep looking...

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108301259.1FC43498%40keescook.
