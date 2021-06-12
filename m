Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBMNTSSDAMGQER4IP4VA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x339.google.com (mail-wm1-x339.google.com [IPv6:2a00:1450:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E43A3A5092
	for <lists+clang-built-linux@lfdr.de>; Sat, 12 Jun 2021 22:31:45 +0200 (CEST)
Received: by mail-wm1-x339.google.com with SMTP id n2-20020a05600c3b82b02901aeb7a4ac06sf5847654wms.5
        for <lists+clang-built-linux@lfdr.de>; Sat, 12 Jun 2021 13:31:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623529905; cv=pass;
        d=google.com; s=arc-20160816;
        b=igcYSzChzxHx2eOu45e3rNnC5fYk/JeHICloLaZhFP/wIDK1a8a2ypmedhCUPaIj57
         qZ1lj8W27MkXRSOfTvN5vKjVCyZyrI4BUa5FxYlrUOtM65mdhZkB7cHZ3VVFfrkX8e0z
         C7fad0rFXy7LjyKVt/DEo1s1Do5AleADkmswTYCkTB+SnaWjh4sG548S3dvB+hmU88j/
         5YERIKCYKPahcpncPQ6OSmDzz3AKdOrTDMW/3nenTaPu8nobtcw3ukJqMDieUd+aqbgS
         vaDKH2Gzd4FrD3BA3z9jR07c8I0s7E44WG8ekKmVqbKjux8KSRbo2cnVLtKImWTtoQTv
         uYYw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=h5x+zgTBzYn2VDl008FocpMIdYDnFyjen+aI0MECJYQ=;
        b=lbMxcnqIFBV0rxH/hYoMEZ9s6EpBYCkiGwIbHqHtm26dbB2uFHT6D1RvU/mkXJ4Jlw
         MsvQePqmCTuqC38Mok9V/e7kJ9ZBSQxvCS0vgVTHLpqtq0rvHsV5urIDm8Ak+6SqLIXi
         KbYvbVwoXCje4pnPFuOfA9o14vsD09yim33+T+0Z0ZUkGoZLjCtNIhaNkQnjWEk8EB5s
         QDGG8NV6KMsJA7xrgyJsNd2L7nE//EgQJ0zgJWj3OmkidrzVzWm0fBWBSChp5/1kfLZF
         Fi0GI+1Lv82X3b4S5tPOoZk/40DgMwuPEg1nf6PoP8TuyvBoNFGHT7mH/eplOWPjjAC4
         m96g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b="HqC/lKMB";
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=h5x+zgTBzYn2VDl008FocpMIdYDnFyjen+aI0MECJYQ=;
        b=jLMZW7kkeZUsKxlxZQSnnrkC5KOXIA8qAzhP3AHAVlJWoVdyeoctemv0glDYnpSKeS
         5YO+/XIWevw9j2vImGNtlhIOLSuhUIx+sc8klsBHtQSnUhzsaO7mVZm10MnFkeSMksNt
         MMYSkTKB5z+dERUl2FNuQUrw97RtWIwE4gucSNlfIPZvlYhQHZubmaCgxXQP8AvRMxah
         sg37JOuuI7JQ9R4iYl2SAZGzl9C0fjPm259/VjUdlXs6rtDqS9ftmaq85S7dgjNVCW71
         n2tW+YEdbCfqwsEgKj5+NNQkLZ1LAMYK0tcviP7GfM33ZN9ME2unGN5hSeKKihcGH2Sz
         JJHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=h5x+zgTBzYn2VDl008FocpMIdYDnFyjen+aI0MECJYQ=;
        b=az8iBpn64Q7NlLPLagfniGkpKAO+ZlmQin4W8/C7JRRKa4elX131FVk5Udjk2G63eP
         1JlrHHbIs7wI66xh5xGwGLlg+MsDiuAtaCbS/o15NvuHYcKrxSg/RFpxFpECs0VdITyB
         Uw44YiZos/cCFF/YHLHiS1FZnLRlPBvDF2gUQvaEBJ7AhNv3QCLTHxlgks8JKzuAzNZO
         b6hUoUz4M7iSpY/Yjsew6j0JdUxdIda4tKS4wuSWakgmn9FAt74z3QJjRdfGJfasZinv
         /QFifH2N2V0yVYAWDcuapY5xGVRD3a/Um9zDtIKWgixGaUINikU/ARY0rlUDqlNHqZp4
         H3LA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532BYLAwXPhx+IzN9xoJbZ7NE+qEgUzmPLh2D/ixS0OJzjWY9wCA
	leZRXfgXzLWCElH+lZ9xmrA=
X-Google-Smtp-Source: ABdhPJwe7E2hS/WcOwFIRohUbh37lN7TnjMpn9EPk/3tXuMTC8FJHHQQJFxpLxfQI2jctEw2gs17Eg==
X-Received: by 2002:adf:9ccf:: with SMTP id h15mr5232019wre.217.1623529905259;
        Sat, 12 Jun 2021 13:31:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:ded0:: with SMTP id i16ls6108629wrn.1.gmail; Sat, 12 Jun
 2021 13:31:44 -0700 (PDT)
X-Received: by 2002:adf:c843:: with SMTP id e3mr3561518wrh.25.1623529904471;
        Sat, 12 Jun 2021 13:31:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623529904; cv=none;
        d=google.com; s=arc-20160816;
        b=XvNi6PFdk0akA4bw9FiR3seykBNEIU0CSUDTxE/+lKvL8DNIIqs7x2zcQXz4kYeiGE
         w9PmDNxfRDb8RZtR6oZbSbmJWvW0RgxC6QP3LdCJY8sNHwAgvHa/uux3UG2r8qGFhF4e
         SE1aRmKipfH0x1lssNnskOJ94lCuovSa9LWl0BLDGQNRsRpsGEBBg3z3c36UyY8QEWDC
         ntafFFtCrl0BO2PAORdF55/u6xHG5CngtjG51KyQpNoDu276KFo+N833a3ORWN71iRQR
         zEKi0Al6eeAvMfK/4vKFf5tZkIIcIXCeCNZVVAG1agofotywiHlIq75Vz34rZRvfhczB
         0gyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ye0j1hPtMrtorLTQXMFdA47MBQh6LFL8kooJgqW9gwQ=;
        b=IeokOanWwCeY7mml94Wop0X1/3B7Lb3gRPklTA7fL1DIHZ81VR+eOjOBbuV4GLYPIl
         5hEHKpZfmg1FUNecPO0LDBvG9J2S1qHfStXsoykPTh0VvptIOXAgJV0JMdoH7gAChYvN
         T12vzlCRO8YbiBwDdvyNE0GCmpknkHc1BSNrKkFdfk7lE69r5nB4pmjClBjCOAIxNyEX
         XBTm2+kyPKrD6UFVreyE1Ox+NyToAjFDojiH+I+ynS4uguL2kiQ/r2w30wJq2l8nXbQO
         fionRipBEU61o3X+FMFzt8Sk//xgdKR4JEQBgfA5M//XALtwYWkXGfcpegTSx5ACUcm8
         f7rQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b="HqC/lKMB";
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id m35si378941wms.2.2021.06.12.13.31.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Jun 2021 13:31:44 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=worktop.programming.kicks-ass.net)
	by casper.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
	id 1lsAI7-003zTx-Bf; Sat, 12 Jun 2021 20:31:39 +0000
Received: by worktop.programming.kicks-ass.net (Postfix, from userid 1000)
	id 1C4DF986F3B; Sat, 12 Jun 2021 22:31:38 +0200 (CEST)
Date: Sat, 12 Jun 2021 22:31:38 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Fangrui Song <maskray@google.com>
Cc: Bill Wendling <morbo@google.com>, Kees Cook <keescook@google.com>,
	Jonathan Corbet <corbet@lwn.net>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Linux Doc Mailing List <linux-doc@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>
Subject: Re: [PATCH v9] pgo: add clang's Profile Guided Optimization
 infrastructure
Message-ID: <20210612203138.GH68208@worktop.programming.kicks-ass.net>
References: <20210111081821.3041587-1-morbo@google.com>
 <20210407211704.367039-1-morbo@google.com>
 <YMTn9yjuemKFLbws@hirez.programming.kicks-ass.net>
 <CAGG=3QXjD1DQjACu=CQQSP=whue-14Pw8FcNcXrJZfLC_E+y9w@mail.gmail.com>
 <YMT5xZsZMX0PpDKQ@hirez.programming.kicks-ass.net>
 <20210612202015.s4743sr6d3lv3lgf@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210612202015.s4743sr6d3lv3lgf@google.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b="HqC/lKMB";
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Sat, Jun 12, 2021 at 01:20:15PM -0700, Fangrui Song wrote:

> For applications, I think instrumentation based PGO can be 1%~4% faster
> than sample-based PGO (e.g. AutoFDO) on x86.

Why? What specifically is missed by sample-based? I thought that LBR
augmented samples were very useful for exactly this.

> Sample-based PGO has CPU requirement (e.g. Performance Monitoring Unit).
> (my gut feeling is that there may be larger gap between instrumentation
> based PGO and sample-based PGO for aarch64/ppc64, even though they can
> use sample-based PGO.)
> Instrumentation based PGO can be ported to more architectures.

Every architecture that cares about performance had better have a
hardware PMU. Both argh64 and ppc64 have one.

> In addition, having an infrastructure for instrumentation based PGO
> makes it easy to deploy newer techniques like context-sensitive PGO
> (just changed compile options; it doesn't need new source level
> annotation).

What's this context sensitive stuff you speak of? The link provided
earlier is devoid of useful information.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210612203138.GH68208%40worktop.programming.kicks-ass.net.
