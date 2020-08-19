Return-Path: <clang-built-linux+bncBCIO53XE7YHBBLXQ6X4QKGQEFNONKNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C74924A686
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Aug 2020 21:06:24 +0200 (CEST)
Received: by mail-oo1-xc39.google.com with SMTP id d20sf11938426ooh.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 Aug 2020 12:06:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597863983; cv=pass;
        d=google.com; s=arc-20160816;
        b=mJDyRsrwAENZqm++PUVQpHgjC9i26/isEGKN8MxIVUr4we2z/gnYLhDaBwu8YoaRSK
         kDzbs0H/eG+uDzk7savjPZbEnSh9veKsERA3zlVc++L8xkyHogB9eTla+VVeJZIfv2U+
         bbioesxp431Q0xpAD3y9Zv2MZvQZLxSCKPWHB45jYToY6DTypqB6UwECfVSQg5xo1uzc
         GUmsMW9n5X9UkQxpF9JNuDzOMkLrgO32S/BCkvIgPV+ZZr2UF3Z+CgOF3rHzUessnoRj
         y0/ACjH57C/Z70y3O1WYHBUPHM/ysKS+gx6p1BRXrzxTf9R+WP7PVklpqE+mlGEXvbzc
         KWxg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=WhjTkxdvIjBqfytm0Ni11Oj7SQ8pRAPEKCbmUJnjvHU=;
        b=LDZbMknSuLF5ViNbaLcvyapFyPYXshD0/Y64PC72rPyviDktdi+5DnuNoy0P2tPDkO
         VKEZLGC/mzg4v34+qxljhAbOsopUe+sKandNaiQ6TcWvQNOUom2yTuEos3kmkPnkgLuv
         xv4Ie+PFQb6aL1M6oowqlJEJo70adfsMGJrDLkIESxHj9lO2znvL2gAJnvNqfUyDNcYq
         vZf5M8p9hswz7IODb+dCNjDfSDTBWaqrpER+5dOF+LBTTK4xms+jI+dRxBnBjX7fDp3M
         yeSIeV7aSLfHgIHoC4mjyX2VZAw2o1XkPY0+2fKH88ZJppGX4kiRgtWuKxQSQCTfqxUK
         4nDg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=U0md1oG9;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WhjTkxdvIjBqfytm0Ni11Oj7SQ8pRAPEKCbmUJnjvHU=;
        b=srPDqyvebOzau7N3D+CR6ml+2yRpqcl/9buMLXz1ACBcMP2D0n2GdFVJNFItXkbcp4
         E34fyNQgVbgkRLiBREfWcDlNaUVwfAQEIH1gb1NcMtHoPngJZghecLKJOJfodrSCicti
         5uXWkxZdLYD6mqn78Qkm9czm2kw2SUNY/IrCaCxlhfcN3yWTZHLdDEvT8PuwHxjWVPo/
         U8EQIE71TzIBcdPYritO6o0/0J4SFhJ5lknlQZ1o0D46tBYvYsXyAcjbSpJGhDt/Wx9U
         Mga8JCc/nvNMZk9x9TceiTqu9wJUJJgJcAR4t5B4mlWlWi4yWG2drMhJPichRJNp9xdC
         BqsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=WhjTkxdvIjBqfytm0Ni11Oj7SQ8pRAPEKCbmUJnjvHU=;
        b=OvCPN1tluSsG0ywLHFNe1xSbB9fzNqzaLZ65fRi2LNxviSP7MuRq3XXRKs+2fhCnRR
         A1GE6ir3B7QN6zX4mtmMzzMtl8qVF569yP+lcmdys34njTrXt0yIRai6KhB7RAVuYXuV
         YSo5ZApUBdOtcnOyPcx6o4+LeeCfhhECdogzkN89sLHtYa3LEyfZi0cgyS4azzU6jbHg
         PcfMLdnjow5SzLpr7UFtN0I+HsH8xliYRIIh4ftSAbX7m/J8MMiYg+jh8C2Eqzy+8vpG
         QyKJexvmCKUIFGVmY7Io+BgxKjT8AVgyegzQb7nDVQSCGXvhOxftJWxqKxrZRh8GMsfJ
         yyVw==
X-Gm-Message-State: AOAM533gDy93XdRsBf13gXhVXawjujMJoIaP5XJXtnLsD9bQ2CSUV/R9
	m05tJ0Td47qLUmnvdi64pY4=
X-Google-Smtp-Source: ABdhPJwRgVh5kRBEwhluhc3Svbb9hYvP8Z9pXZAoZMXQNGn5qmFIh7Kd8neiusl9N6ybh0+bfJ0Nvg==
X-Received: by 2002:a9d:454d:: with SMTP id p13mr18886645oti.126.1597863982846;
        Wed, 19 Aug 2020 12:06:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:ea21:: with SMTP id y1ls1437280ood.10.gmail; Wed, 19 Aug
 2020 12:06:22 -0700 (PDT)
X-Received: by 2002:a4a:9cd6:: with SMTP id d22mr20143680ook.0.1597863982478;
        Wed, 19 Aug 2020 12:06:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597863982; cv=none;
        d=google.com; s=arc-20160816;
        b=ZLrKS+LDdDeMEF53RnOm+pcmUpfDUPSi8dd+fQplFPD82DpVYOxL7GgjUGarymjyDE
         hceAmDrYmAlf81V+oknp/pnonuDRW7BO0uQubhmMCGwZcByWOEbvdc0iLR25ULMfEywm
         7D6V4F11YesRCIN7NolAPY0upto4eSi9gOs2Huj1zcqdyvecMtdXNs4V0/qHgy4eiOjZ
         ZYSpsDjZ5MHi2jRHqgq2rQGJcA0oi/Dtxeax6/cDqypFntbT1NPPwEt4yMi5PCXDlZ1s
         U2vuoAi0Ze7FdS0MeYexsk/21s5Ya+XsnUfTA0+Y1Cb0mgy4JTmcwqUoLXjmJozUNQ/e
         M+Yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=nBo8PSBZeaGMeAMnr74jCiSvVKt1AfbKh1e/zCH2wlU=;
        b=XZnpvY8AwXHXGf3xmgWwGxV0/YVFMppGbk6m2KLxT5sTc0+hZ4CdEyPidpjyDAC1RK
         pLerIA3GzuJewMJCRWt+6UaDY6IC6yICi8ziAt+BXuHLrFz8mRYzQxjhDC8firzvLwtA
         HAz1aqYyvfYTPmM4LyXLd008+3Wco3+Nc8lNhY98iRX6ZNBIYVrhoV/W+YUohfpR6QRt
         3UB52NARIpmWt1ifGWnJyMZfE6ANqoNNo1G/BLXEPAarY1i+1rsu7ARiDHfiq/I4PacF
         wYen55I91YR8FmiHu6igqQk18p+8TXXR0vRBXp8Cr19oCiXRs/LJm+C+gwsCpgrrXvag
         DN5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=U0md1oG9;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id c199si1089932oob.1.2020.08.19.12.06.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Aug 2020 12:06:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Received: by mail-qt1-x843.google.com with SMTP id c12so18659795qtn.9
        for <clang-built-linux@googlegroups.com>; Wed, 19 Aug 2020 12:06:22 -0700 (PDT)
X-Received: by 2002:aed:2358:: with SMTP id i24mr24215013qtc.234.1597863981858;
        Wed, 19 Aug 2020 12:06:21 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id u21sm22927752qkk.1.2020.08.19.12.06.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Aug 2020 12:06:21 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Wed, 19 Aug 2020 15:06:19 -0400
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
	Andrew Morton <akpm@linux-foundation.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH v2] lib/string.c: Use freestanding environment
Message-ID: <20200819190619.GA4135577@rani.riverdale.lan>
References: <CAHk-=wiJLvqS1_O+yAQSZr-Lj49HdJyLpt3J_nW=otHLfEN4RA@mail.gmail.com>
 <20200819140816.3807604-1-nivedita@alum.mit.edu>
 <CAKwvOdn-mv1D1GEk3pWnPYsyzQRRk5qZFhSi0CYn6tRDo1O_iw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdn-mv1D1GEk3pWnPYsyzQRRk5qZFhSi0CYn6tRDo1O_iw@mail.gmail.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=U0md1oG9;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Wed, Aug 19, 2020 at 11:35:11AM -0700, Nick Desaulniers wrote:
> On Wed, Aug 19, 2020 at 7:08 AM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> >
> > gcc can transform the loop in a naive implementation of memset/memcpy
> > etc into a call to the function itself. This optimization is enabled by
> > -ftree-loop-distribute-patterns.
> >
> > This has been the case for a while (see eg [0]), but gcc-10.x enables
> > this option at -O2 rather than -O3 as in previous versions.
> >
> > Add -ffreestanding, which implicitly disables this optimization with
> > gcc. It is unclear whether clang performs such optimizations, but
> > hopefully it will also not do so in a freestanding environment.
> >
> > [0] https://gcc.gnu.org/bugzilla/show_bug.cgi?id=56888
> >
> > Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
> 
> For Clang:
> For x86_64 defconfig:
> This results in no change for the code generated.
> 
> For aarch64 defconfig:
> This results in calls to bcmp being replaced with calls to memcmp in
> strstr and strnstr.  I plan on adding -fno-built-bcmp then removing
> bcmp anyways.  Not a bug either way, just noting the difference is
> disassembly.
> 
> For arm defconfig:
> This results in no change for the code generated.
> 
> I should check the other architectures we support, but my local build
> doesn't have all backends enabled currently; we'll catch it once it's
> being testing in -next if it's an issue, but I don't foresee it
> (knocks on wood, famous last words, ...)
> 
> If it helps GCC not optimize these core functions into infinite
> recursion, I'm for that, especially since I'd bet these get called
> frequently and early on in boot, which is my least favorite time to
> debug.
> 
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> 

I verified that arch/c6x with gcc-10 downloaded from kernel.org has the
broken memset with CC_OPTIMIZE_FOR_PERFORMANCE and gets fixed with this
patch. The default is optimize for size though, which doesn't seem to be
busted.

Thanks.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200819190619.GA4135577%40rani.riverdale.lan.
