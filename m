Return-Path: <clang-built-linux+bncBDPL7R4J6AKRB3WVQ2AAMGQEOW4XNGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id DE68E2F7E7C
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 15:47:10 +0100 (CET)
Received: by mail-lf1-x139.google.com with SMTP id a19sf3175702lfd.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 06:47:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610722030; cv=pass;
        d=google.com; s=arc-20160816;
        b=loLcditLUlSybQuLQSVv0XgmdW9nMEehqE6t7Bz431txnEFAbctEBwHGpxZGKBysbj
         F5/E1YPwvYG3hm2ggz5oJDP9WV49bIcn+MJqIFqL3DBpSZj8Dib7sMAAsTghvtq9uV5J
         kHFy4HDn0Kr2hbGEdJhkSQ1DKTIrMMnCxAIJ6t3FOZ40nTaPSApSI1GeD/Owe8erH9+P
         2iz3S20Yg864aOtp+CWv4ZD0MrzjTh/qygVThOtQMadAlIHckknMpI3o0NK1nf02Zsds
         61xNdi+0Ue2wkmFEZ5s2e/25pqCEt0R4ZuYlsIHK1Sy0h0xEYe3rETbcgurG9XcKm9CC
         TEbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=7UFTzOwdgdJ/cY9xv8Omz+Y45tZpy2QjlZ5D8VUAS3M=;
        b=0qInahQhJxSnQHvf4Rx2NNCvojJk+BB3CUCu5Jfze79N28P1Z+HIxVRTMa7xXZ2NR3
         oLw+CHvyuBfglvWP2eSbE97ctaq8Ki9ZYz9ER7xEBQhC/GGHFNQrqZtsy7bTk1fTmAHn
         +4MG5oCVB6xNwpFC8Ltn2P8iQoX3Ags/Dr7Yfpr8ktRA+n2+r0BtlknahQRYbytix+r9
         5QW0MJ1cg873IJS7alexHIkspMag3reBcabmsyVyXv+mtpUJNuE480LEPZmU1qG+ex8B
         IG0rKJiXeExEFP3KwiHElU1DHPiEGqZz2iW5509PgtMMBMWgNeqy/6Q1OXkYtwW+VRsx
         QEig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7UFTzOwdgdJ/cY9xv8Omz+Y45tZpy2QjlZ5D8VUAS3M=;
        b=Ty6Xb+zpJDaJa19pXEILxusMGacoJg0bwVc5ia+mHt/lDTi4Upren7lWZ8eyW6f+eA
         67f2OWqROHGPofd29ugn2QstPBh/gxjtWApa4lAZ1/32qY1hqwM2u9un2lbcS5KO955v
         VObvAkCcumCkdeak2PVl/PpSDBuEVwVgCMrntZ774FrzCE1eo1sEjJTGnOuKMQgJy/tR
         XVHXfPh1/bp8+WX1+7OkgmkwIdpk811KE/CCM9FHyVNS3Y60Lpk3bVwdNFXGTqHuAGRE
         m7HcomYGmJzNpPZafGpO8Lkwplm1Maw+sdcpc2vUHnOAGDXIvPJz9q0quTHBZN+3csfc
         i0hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7UFTzOwdgdJ/cY9xv8Omz+Y45tZpy2QjlZ5D8VUAS3M=;
        b=G1ii2hvuxyIcrmdkQtySLokboxSAzF85sECxSrz7EZEBkQCobcsUvfRZ4ZNBd/wjTz
         ITApnyrdARIBS9gioKpFVL+O0/TLi+HKAZil/sWnBPuVPh96d6d1BSfKiNx/GaU2YGwJ
         f1xKi/O2/+ul9rbDTsgyYgdFbp7TFIqjk1iHOhNnply0PkdLWSuBvdmDOGvTOx/mIy7e
         E42oEVg+quWxknddO9UcMEjhoeYEVnR5GRM5HL2a9Em5dbbvYJbrkZHyB+vogXmh03La
         G62ramBimOIvaqG5FKlGX1VzM9aAV8YbpoHY9VltS7GDUi4SUMiiRR3qVx8ZYoOJetZL
         kpMg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530wUzDc6ny9bLlV8r8JBf4aSKGZfFfDEYH+mxzzJHPBVmktsVOY
	qLOwsW/IrLSbQZUWzGAKXdQ=
X-Google-Smtp-Source: ABdhPJxN9T3OSlOIhLIVsG8gNBk1VfMd5eqaxC5mQkWdpZuVplUuEb5LeGt6+JE3I4GLJrnrbHTeVw==
X-Received: by 2002:a2e:9250:: with SMTP id v16mr5502683ljg.256.1610722030335;
        Fri, 15 Jan 2021 06:47:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:5816:: with SMTP id m22ls1601287ljb.4.gmail; Fri, 15 Jan
 2021 06:47:09 -0800 (PST)
X-Received: by 2002:a2e:9ad7:: with SMTP id p23mr5423714ljj.465.1610722029320;
        Fri, 15 Jan 2021 06:47:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610722029; cv=none;
        d=google.com; s=arc-20160816;
        b=ieG1MakdRGo3m90Avqh3Yjs9MHpf/b53cU8Oq3D/FE9jAovWespwsfc1+Bo3FCAAFS
         QqdMpS4cGrDj2OUUbd/1m6Om/0704ZYATmjSwH3wXRnf58skP4cTEwnq0IfwCzyBSGeP
         jQsVh09Xxdu0Z+bR3v4wAWBrFE1KHMAo2H+T0kVzw0NwlJ7eQ3Pv4bt2i+/GP9muwuho
         ml1ZbvbHE7JNubde/iyADxLZWxaOJVSg9eQh4AZ4lAuMiLdlfbAolOQseYxIGz6YCdyM
         mzK9dmRnoIW+OhiQ0j5r4dHUt9Kfg9LzHDmufrTFIvnJuj2nhipFLL2r2sd3A2zHuUHe
         EGzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=Y19JEjEja/UFqSCib9YerlVG5CSFZG8365YKlDMA9j0=;
        b=Vjah/8hW2PlxSbsnmNVVOQFqL8P/ZaMroZ0cNOQ3t+NOwb+ODdR+9XykDCLC3ZgY1P
         TrVDeIbw1pKiDK9RMC12vylxOX7Y3IHK3FIPWeGC2DltX11bDh6XhgXgxyWnXq2Be8Nh
         bIMHhCfYp6CR5d8rxR/GSI0T97xS4hmJXUkC6rLBW7TbLL0m9n9MW7L2BudyWsu2TXVD
         Ji+OuAtu9bFWU3UzuIwsKBb+YtA9hgPO/wn+96/FLmpl8bvPtLfgX1SHabvVVz0X3HIe
         noE8JfmOI1i1DHSRB4rG9IGRuiExwIemq1CNpcyPrF5qraF9Idwsxh7J9FpCi8nzI4Yl
         0eow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
Received: from elvis.franken.de (elvis.franken.de. [193.175.24.41])
        by gmr-mx.google.com with ESMTP id w10si282010lfu.1.2021.01.15.06.47.09
        for <clang-built-linux@googlegroups.com>;
        Fri, 15 Jan 2021 06:47:09 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) client-ip=193.175.24.41;
Received: from uucp (helo=alpha)
	by elvis.franken.de with local-bsmtp (Exim 3.36 #1)
	id 1l0QNY-0006aU-01; Fri, 15 Jan 2021 15:47:08 +0100
Received: by alpha.franken.de (Postfix, from userid 1000)
	id 1EE9FC057E; Fri, 15 Jan 2021 15:39:01 +0100 (CET)
Date: Fri, 15 Jan 2021 15:39:01 +0100
From: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	kernel test robot <lkp@intel.com>
Subject: Re: [PATCH] MIPS: Compare __SYNC_loongson3_war against 0
Message-ID: <20210115143901.GB15166@alpha.franken.de>
References: <20210114173416.738455-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210114173416.738455-1-natechancellor@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: tsbogend@alpha.franken.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of tsbogend@alpha.franken.de
 designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
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

On Thu, Jan 14, 2021 at 10:34:16AM -0700, Nathan Chancellor wrote:
> When building with clang when CONFIG_CPU_LOONGSON3_WORKAROUNDS is
> enabled:
> 
>  In file included from lib/errseq.c:4:
>  In file included from ./include/linux/atomic.h:7:
>  ./arch/mips/include/asm/atomic.h:52:1: warning: converting the result of
>  '<<' to a boolean always evaluates to true
>  [-Wtautological-constant-compare]
>  ATOMIC_OPS(atomic64, s64)
>  ^
>  ./arch/mips/include/asm/atomic.h:40:9: note: expanded from macro
>  'ATOMIC_OPS'
>          return cmpxchg(&v->counter, o, n);
>                 ^
>  ./arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro
>  'cmpxchg'
>          if (!__SYNC_loongson3_war)
>               ^
>  ./arch/mips/include/asm/sync.h:147:34: note: expanded from macro
>  '__SYNC_loongson3_war'
>  # define __SYNC_loongson3_war   (1 << 31)
>                                     ^
> 
> While it is not wrong that the result of this shift is always true in a
> boolean context, it is not a problem here. Regardless, the warning is
> really noisy so rather than making the shift a boolean implicitly, use
> it in an equality comparison so the shift is used as an integer value.
> 
> Fixes: 4d1dbfe6cbec ("MIPS: atomic: Emit Loongson3 sync workarounds within asm")
> Fixes: a91f2a1dba44 ("MIPS: cmpxchg: Omit redundant barriers for Loongson3")
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  arch/mips/include/asm/atomic.h  | 2 +-
>  arch/mips/include/asm/cmpxchg.h | 6 +++---
>  2 files changed, 4 insertions(+), 4 deletions(-)

applied ti mips-next.

Thomas.

-- 
Crap can work. Given enough thrust pigs will fly, but it's not necessarily a
good idea.                                                [ RFC1925, 2.3 ]

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210115143901.GB15166%40alpha.franken.de.
