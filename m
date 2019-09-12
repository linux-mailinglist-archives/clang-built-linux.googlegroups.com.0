Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB25V47VQKGQEXYEUSTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F9F1B0866
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Sep 2019 07:43:08 +0200 (CEST)
Received: by mail-lf1-x13c.google.com with SMTP id z7sf5043019lfj.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Sep 2019 22:43:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568266988; cv=pass;
        d=google.com; s=arc-20160816;
        b=FgSR/Bn1mQqKFjsuKjL6e+EDBHEb7STCUmgW9yRdHU+aQRn0waY2H9orqZK1U3rY47
         toE3WVYJWD9rieARiP8Z8PH+At3EAodIFZIBUsSaV9BWJTkNvqnbQAI4bLMcVa1oPkmk
         +LL67OI85z1XBNybWGDA7vqk7+5/wrzHLJzyt/OV96/O5SJVjMA8DT5ZxXCSCvU19//9
         n7FHE2h9OawzCaNPDqwc+KY4aDWF8NWjG4o8iiXhpW63rdfTuyznZXGpUvDisfBWKlBx
         k8ycB7S3tTDGK1FQ/4vBQ0jtaQLr1jMCJvPS9zPR+U36Gvl002O4cH6Kj9FLZVxU0eA0
         KJTA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=effTp4GmG1YBQKJ4Sk8zzxCEnergEQOC0DYv9b6mudI=;
        b=1AkQEyMl6GrTF5VFs3eRUwPoQnY6QaiWrUPPcv9AGriUcvcuE1bBChx2vqKmMRVhnf
         1CjOd0LwjvTfVGriYGZtRsYMzTplGP+rFsCaZzaltpX7dM3c9wH+Y53QdYCU56PNRHOe
         NeeaYW7Wsr/vm+EPlZ6Dju+t1cCYCLfzZ19+Xn+khNp5DSEbmxhARyhtGupduHp7A9t1
         M/UsQUe7PMWygwNPW0ZEib2prFBI1SaA6k0A0XtqQvbtAx8fDfUt8SmccB5mvhqH9FSD
         1lh3VG2lm5uuPyKgGgdatZA+flJITRzLMf5U1Stw0BpqXfyAEH4is0+a0lpFjybBYxyk
         Llsw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eoTwfksJ;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=effTp4GmG1YBQKJ4Sk8zzxCEnergEQOC0DYv9b6mudI=;
        b=lmdc2F2Xvtbrsl2s0nVQeTWLn7rtUZJwQtviH6dABo9ArG9mQ5ZVdD4u11g3YZrrC5
         04oevMlsbfe61U01/uT1OKbRsb0VSx8Gytna2sqKmK9LcAYT4Z4/7d5DjY+BO5TTMVT5
         FI4cx2KjrqDI1zOQnAuzDVevjqtYEG4BmfA7LmCDLhMtjTS/KrUbs2/ym69bYp2DBoeV
         MEPSOqX3xnvHLBJSV0zjLImbk7Dn5N8mLgzoyo+WoeHaxoedzFKvcbAgy8amhLUD8Q98
         pXkS+RwNT9eKJQloUpiwo1W+MoEy9cRqDfKAOmF/cweqsSakzwDQm04IRBfwOM95PJXg
         HbFg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=effTp4GmG1YBQKJ4Sk8zzxCEnergEQOC0DYv9b6mudI=;
        b=VJICyRSecSuJq+XqMm3AFQNryoHmWY4vZyEYo/y+UK5IQaxf5QPgX9sWNzA5X9Sslx
         4EEogYFjw4nOM91XDAkpYCmHvtYMmNK1tTDpMXDd14VbqasZ2BmKDHFEjV49KVKFN68z
         zFXj6zyY5WUa2wK4MB8fBdBosmgJHpvgZ5UPZA2u0mOQ/V4xTQxLaetFd1rQytdHzGmD
         Iu3xsGLZBsfwhgcHhC+oCOMubY58ehU8rNZehu+Y/41r17yrs2nZooD575pttGK6hwgb
         A8RYq8rhQZNer4cjtiiHPtjlqazKeyqAAZA1YkU7Tl4rDm3aZArfRs+isofHBkk4cbGM
         +QDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=effTp4GmG1YBQKJ4Sk8zzxCEnergEQOC0DYv9b6mudI=;
        b=HJnGt97Fpva8H6lf3tY4S5lg/8XcSv3sYxTL+MkRF2hvrJHbs354s7Zfg8ZTTSL22z
         RZtC3OOidonNUr8urUZEATFe1e7xivIREqpxIwECbUqklXRQ1AD+DUjJbSbCmImkTf63
         8DLPEuinOHQum5WpUOUYerGlYO5nQn1MhjdYtP6ek2G9wlRlBUBRbTnrUrl+AtFtit2c
         ehmIheb/REEtHMJxgPCfzEOh/Jhl1hixB8/myMSzMXDlxqa77zdt80ZQDWQAxeedL9Xq
         xnsGMUrNA7q9CMmRz9b4RC43AV/JVT6w5JD3rfILpcpUxgl0SAT+1YP4tuDRbpQ/CYZY
         m5QQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWrZl1gGGcsiBdjElNOZC+Ae9Xn40G0d+lu5eL9SHSKJUa964a4
	LMDUuD8Z7iQqV4ZyBMrqinM=
X-Google-Smtp-Source: APXvYqxv2MDGRgqZDMGU1I2dd66CXdeQldpp4WaKT9YFeTFVTnTkE62tUyYUaOOf3fMuFRkVUf1eHQ==
X-Received: by 2002:a2e:8899:: with SMTP id k25mr4789645lji.31.1568266987920;
        Wed, 11 Sep 2019 22:43:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:1285:: with SMTP id 5ls2832008ljs.11.gmail; Wed, 11 Sep
 2019 22:43:07 -0700 (PDT)
X-Received: by 2002:a05:651c:110:: with SMTP id a16mr7761689ljb.101.1568266987465;
        Wed, 11 Sep 2019 22:43:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568266987; cv=none;
        d=google.com; s=arc-20160816;
        b=i62iWWKMen9uB460QoKSGF4s5KaVJov1+BzZjxZQU3yOERb+V+eor9z3wWx9WFmayr
         L4xpaXAE5Ohe/iFF4017r5PUNw20hthVINUKTEf1+SnSEWzyDrVCYKRxF7m6C/nG89W4
         n2lMBX+W55tZAqXZiSVoSmGl4LcSIBBgvSKBPqKoHIzYCT9wG7lmNZINpJJSdalu/xCY
         WyYr7nqkITXGBlVOuNBghKhUaoSX5BBsmodQ11Z8Abd6eMEZ0bJbLhGG2TipULPaLyO2
         3TWuIp0soMMPElWfjKLnMJFppuE/VBtxTCgIk51GWmcGNjSg19v/SuGomMD2VaQDcHMq
         0UeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=WMphAgSBPHIKk4SYSy5DiphCnKasXaVbpOhSBFsQlZM=;
        b=sqZOqKgfgTdvbVe1kEQJagIcD0k1dY+NoCIfEsscFas3QvmiUxFs5eYRmAc/rMuRUr
         k0pkmy/+o6Ctmvg2EPSKtJyylqHCEn2Qw7AoPmqE88fizGYFxdzyCnA6VpYuG5iaqW6g
         pzka+IS7gJJUZj645Tz+kMFmJzGkPBDvPmoe7nyEBPckJTRDvmjOaxYNoa1oAdVE+RZp
         DyqNWQ4J2GJLYCiS6NsLjJwnO8GMTilAZkYtei/wfYUYASEm3W/sBJeA7NN4ZJFCb6/q
         KuloqeJmP8bms3iW70TuVLMR5SUVsEEbdqUdHkKXooMn8cyyk5ZIgiGJsTmLLwpGFiDl
         2Pig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eoTwfksJ;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id a9si978295lfk.5.2019.09.11.22.43.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Sep 2019 22:43:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id i1so26378619wro.4
        for <clang-built-linux@googlegroups.com>; Wed, 11 Sep 2019 22:43:07 -0700 (PDT)
X-Received: by 2002:a5d:54cd:: with SMTP id x13mr9856547wrv.12.1568266986685;
        Wed, 11 Sep 2019 22:43:06 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id b194sm11035883wmg.46.2019.09.11.22.43.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Sep 2019 22:43:05 -0700 (PDT)
Date: Wed, 11 Sep 2019 22:43:04 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	Michael Ellerman <mpe@ellerman.id.au>,
	linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH v3 3/3] powerpc/prom_init: Use -ffreestanding to avoid a
 reference to bcmp
Message-ID: <20190912054304.GA103826@archlinux-threadripper>
References: <20190911182049.77853-1-natechancellor@gmail.com>
 <20190911182049.77853-4-natechancellor@gmail.com>
 <CAKwvOdnh+YoACaX4Oxk7ZiEQAQ2VgA6W=Dtbk7gzK5yJduFvGQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnh+YoACaX4Oxk7ZiEQAQ2VgA6W=Dtbk7gzK5yJduFvGQ@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=eoTwfksJ;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Wed, Sep 11, 2019 at 02:01:59PM -0700, Nick Desaulniers wrote:
> On Wed, Sep 11, 2019 at 11:21 AM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > r370454 gives LLVM the ability to convert certain loops into a reference
> > to bcmp as an optimization; this breaks prom_init_check.sh:
> >
> >   CALL    arch/powerpc/kernel/prom_init_check.sh
> > Error: External symbol 'bcmp' referenced from prom_init.c
> > make[2]: *** [arch/powerpc/kernel/Makefile:196: prom_init_check] Error 1
> >
> > bcmp is defined in lib/string.c as a wrapper for memcmp so this could be
> > added to the whitelist. However, commit 450e7dd4001f ("powerpc/prom_init:
> > don't use string functions from lib/") copied memcmp as prom_memcmp to
> > avoid KASAN instrumentation so having bcmp be resolved to regular memcmp
> > would break that assumption. Furthermore, because the compiler is the
> > one that inserted bcmp, we cannot provide something like prom_bcmp.
> >
> > To prevent LLVM from being clever with optimizations like this, use
> > -ffreestanding to tell LLVM we are not hosted so it is not free to make
> > transformations like this.
> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/647
> > Link: https://github.com/llvm/llvm-project/commit/5c9f3cfec78f9e9ae013de9a0d092a68e3e79e002
> 
> The above link doesn't work for me (HTTP 404).  PEBKAC?
> https://github.com/llvm/llvm-project/commit/5c9f3cfec78f9e9ae013de9a0d092a68e3e79e002

Not really sure how an extra 2 got added on the end of that... Must have
screwed up in vim somehow.

Link: https://github.com/llvm/llvm-project/commit/5c9f3cfec78f9e9ae013de9a0d092a68e3e79e00

I can resend unless the maintainer is able to fix that up when it gets
applied.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190912054304.GA103826%40archlinux-threadripper.
