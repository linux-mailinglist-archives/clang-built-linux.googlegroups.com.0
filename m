Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBJ7TT33AKGQECINOESQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id B51871DE5AA
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 May 2020 13:38:16 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id y17sf7639179plb.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 22 May 2020 04:38:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590147495; cv=pass;
        d=google.com; s=arc-20160816;
        b=sSeQc/TtT6dSX+56wyJoFRSiyyf/VnCvHND0V998mp0bTZS9n23C9qX2Vh5N1AqtNK
         1TQiRNdugIjPkfX8RxRAADf26pCSmSrYz+m0yaJxFYl/er3F+hloTca1uSSmxITZf5s3
         8zSCAvtHv7ZZW29oDMiWODWk0dzdVkHtBwGezqucWzo0WEuyjbg6EemBeArRBW/QC8Bw
         9o3jB9q/4bgmOkXG0jIScz8ELo69/2Aj/g3bjpJKv1UcWq74v/7kBh5JCI85kjnCUGqD
         +RVgB6KpLiS8YCIc/oAO+2JlMmF8fu9qP08wD6Bbq14/1/R82ReeYODTit9QMn8FlOQU
         eaXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=cki4VtRORplKPCmUu/hNjCwRh57gh5oaCQciMtBdYRQ=;
        b=ebGvaDaTGwX2Hg+yn2cP4y0WMITyS7sLnR02EgC/vvqH9ValmaL5a4eFMTUmT/khnk
         bfcNsPyj40ZkJzIa0OOxKtTAU45rhZ9mAP9eVRh+pb7dWfAxROa9Vntm+VnAZg477CVc
         YCVCBEo8pzs7ywchaaG0xfdkbVPz0mAIKOPvRat/9zQPLOUKuuVnWQ37MCSMgdHOBx1c
         O1sJDZKUDkF+Vyz1XsGMeJmBqkoizs+Ed4GAKQ9CsDwF846KaxFT+SiKRos+zlquEFhR
         xZWazfy13p+shzXWi3O7qDmXi1LNSmqUCa47ANmdUCtZkMJICZp18o9ogr8iCi8BeAlb
         Tt+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=d6QGp6Xm;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 205.233.59.134 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cki4VtRORplKPCmUu/hNjCwRh57gh5oaCQciMtBdYRQ=;
        b=MKpCIn2IWsRwPrFATcMB8r++ZuIrjjm0RqwnkjXAhfcglNC4BMMjI3etOZj9W44yZX
         IgKMXmq3EUZoABIcQ4cY31WG9M3Jw11SnoceSOqSa8FXGVsmYkcZZsXMu9xPjDpWB/TM
         4wYbjOZ0EofR8t6GP2cdJ4NisfWmriKLlNOixP6qNxW6SU+KyDD6oii45AvfjHi48eY4
         H0lA8i/bK71HZeMurU90sTZVP29YJj5rFc7p/aLkwiYy4qPYvLU/USSu/wJcE0XKTUY1
         Qsc1hm//rXaPuj0iEcmr6BVblE+uOHjROawxBQ8V+iKFwgki+styfsVGqQ2brdn3+UHR
         YLDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=cki4VtRORplKPCmUu/hNjCwRh57gh5oaCQciMtBdYRQ=;
        b=XTgKmWgsah7cS3ts65D6cGlje6T9Joz4UlQgtqzLupTvkw1soGYWlNnJ3AlWJ6vA0U
         HQsDsDVUxn4i/Gmye5ncEPHtyNJHFfBv+ZWjs492IVV3H/ML1d05/d0Ae2dUV87wqq04
         X+hQ9a/1L0+K9P36RDDGOr9bB/vzPgNjxXynP4R6se75jSnt5tf50ToTqVJwl3/125XW
         /T/4BthIOajBkKUl4vzYaK+DuTo4bTiuJc6qe2a0gg+yvwUg25X8brOHzzpjJ3h+RPaj
         qyhWfT96wUPPJ8Ouje+awb4YzMUq94b96MWMOannpWI6skm++SZZozlTrhVabXVTRtcV
         PEEA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Cr0P3ajmplsCX7liGN+7LJE9G8NWD0PhuXlA5Tt/Wk2Nbg61W
	6TEAn/tVdqri2Bz4GzBDR5k=
X-Google-Smtp-Source: ABdhPJxyTguWaJ9fDBrHC9CzngVq1XrNlvSfbQpOSzUiM+O57faKTCSUc0UtQVt4fStBlr+yulv7bQ==
X-Received: by 2002:a17:902:ea8a:: with SMTP id x10mr14408129plb.220.1590147495450;
        Fri, 22 May 2020 04:38:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:384c:: with SMTP id nl12ls640023pjb.2.canary-gmail;
 Fri, 22 May 2020 04:38:15 -0700 (PDT)
X-Received: by 2002:a17:902:694b:: with SMTP id k11mr14971391plt.59.1590147495068;
        Fri, 22 May 2020 04:38:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590147495; cv=none;
        d=google.com; s=arc-20160816;
        b=PYtXA4dqRTCzPoYJnom0bxzjXXroo4AOHZMz+Nl3TSR/vGMoIILAG7m1qdAtHURI5x
         0Q5ApaHvwaFFDZsvYiuFtaurCGQJsyQzh/XFIlet7ssJdKHfazR2qcgsQ4dBvytWUEKO
         OQaZLCNRrDWMW/j01MV+6gHA9LqLSeOsY4sXJ/QB6dLNC/6++lJcxEAnIc0mtFImUXaZ
         LtigY/anXmSor+r0xHayn0Zx0Qj/NwR5w5oA32tv4DByZMtXwZCpdhl+j/dcTdCiLxwY
         emW/xUfqZwRzhZRK9o+8iUlzdfj1JNv9+qbGQfpOq3tidNgPtqSomfWYAoPs3EkHKyX6
         sidg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=XH1Yj5aOcR07TnTGoIfuiVoH/MNimUictOSMhtQ2KiY=;
        b=MhJiVJ000jnlJgGNIVY5d4/mvDXWGJ5xi54MzC/GT497ahOkK2yA1VfuRiQ4usV6jv
         Nb8p5WZ73Z5SO0nKdB5EkcAmPNR7+186ZohTS0fYljE3AJax7wMWMWoCmNwXxNxSOmZT
         3HCcMI8hbiioo2KCV/SkCWqzN9O+S3wqoTIel7l6sRy/8EkgmqfA5hrXeBLBiNntlCuy
         gjAidnbZvcm1jWBhIZ5D0TZDd+uTsagoWCzSMS0DtvjUvwzA40AayvnkOFd7OOXfyB7P
         MFCptB7kIQTDRuKjphWtq5/X+cnI4zH5FwHCC55mNV5A1Dk43iOCoZyGNgZsdis4djRJ
         RRmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=d6QGp6Xm;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 205.233.59.134 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [205.233.59.134])
        by gmr-mx.google.com with ESMTPS id c15si996994pjv.1.2020.05.22.04.38.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 May 2020 04:38:15 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 205.233.59.134 as permitted sender) client-ip=205.233.59.134;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc5xy-0007dX-JN; Fri, 22 May 2020 11:35:55 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 2D6EE300478;
	Fri, 22 May 2020 13:35:53 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id F2D12201479A0; Fri, 22 May 2020 13:35:47 +0200 (CEST)
Date: Fri, 22 May 2020 13:35:47 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Marco Elver <elver@google.com>
Cc: paulmck@kernel.org, dvyukov@google.com, glider@google.com,
	andreyknvl@google.com, kasan-dev@googlegroups.com,
	linux-kernel@vger.kernel.org, tglx@linutronix.de, mingo@kernel.org,
	will@kernel.org, clang-built-linux@googlegroups.com, bp@alien8.de
Subject: Re: [PATCH -tip v3 00/11] Fix KCSAN for new ONCE (require Clang 11)
Message-ID: <20200522113547.GL325280@hirez.programming.kicks-ass.net>
References: <20200521142047.169334-1-elver@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200521142047.169334-1-elver@google.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=d6QGp6Xm;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 205.233.59.134 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Thu, May 21, 2020 at 04:20:36PM +0200, Marco Elver wrote:
> Arnd Bergmann (1):
>   ubsan, kcsan: don't combine sanitizer with kcov on clang
> 
> Marco Elver (10):
>   kcsan: Avoid inserting __tsan_func_entry/exit if possible
>   kcsan: Support distinguishing volatile accesses
>   kcsan: Pass option tsan-instrument-read-before-write to Clang
>   kcsan: Remove 'noinline' from __no_kcsan_or_inline
>   kcsan: Restrict supported compilers
>   kcsan: Update Documentation to change supported compilers
>   READ_ONCE, WRITE_ONCE: Remove data_race() and unnecessary checks
>   data_race: Avoid nested statement expression
>   compiler.h: Move function attributes to compiler_types.h
>   compiler_types.h, kasan: Use __SANITIZE_ADDRESS__ instead of
>     CONFIG_KASAN to decide inlining
> 
>  Documentation/dev-tools/kcsan.rst |  9 +-----
>  include/linux/compiler.h          | 54 ++++---------------------------
>  include/linux/compiler_types.h    | 32 ++++++++++++++++++
>  kernel/kcsan/core.c               | 43 ++++++++++++++++++++++++
>  lib/Kconfig.kcsan                 | 20 +++++++++++-
>  lib/Kconfig.ubsan                 | 11 +++++++
>  scripts/Makefile.kcsan            | 15 ++++++++-
>  7 files changed, 127 insertions(+), 57 deletions(-)

LTGM

Acked-by: Peter Zijlstra (Intel) <peterz@infradead.org>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200522113547.GL325280%40hirez.programming.kicks-ass.net.
