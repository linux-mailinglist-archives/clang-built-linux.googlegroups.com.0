Return-Path: <clang-built-linux+bncBCGN3SFZVUBRBS5E5P5QKGQE6HOZEKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33e.google.com (mail-wm1-x33e.google.com [IPv6:2a00:1450:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id C28F928313D
	for <lists+clang-built-linux@lfdr.de>; Mon,  5 Oct 2020 09:59:07 +0200 (CEST)
Received: by mail-wm1-x33e.google.com with SMTP id y83sf1453846wmc.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 05 Oct 2020 00:59:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601884747; cv=pass;
        d=google.com; s=arc-20160816;
        b=Lh/AMC4YTBCvYfkeQLdRsiOjppOF4XPyBJ+2X7lkA1xIVCLa+1iTahudPGD5Y2PtnH
         tUxuYux4F4lZWhRR3nsmWtLRwVt0ofbJH+M921kvPdmx6G42gImm0J30mUc/N51qhVP8
         Ercoqq1FC+MRPDZX/OqePmjoUPfeOk3Qb3MQ17uwLAjKhIoraYImJaUby+Y6S7mITxKo
         WAYFot/KGcRpdV7r5SFSlOICtZu08R9glbwNLRMHLuuoTOZiWmsHLzSBn4JzpHzbKmLG
         t9Tv6CIBygy7/INHx/5E/Yj5442eWJYIVPVCAuh7e/hJtGEBZ7+/qx+45OuYO0VicNWA
         Nn2w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=KclYjJB91XCnjBSNIvvpM56hRv66jOp0yDgZTYAOSBc=;
        b=dqEC8zwRA347qrB43bEJIaPcYqd3IPpudKG/XLYBlFzX9iH7Kw1+Li6LCCCftkmAnY
         RKAkiqInmlhxYoRNq3j+AmscCYTBVBkl83qQUCD27FNSVgWSwBS6lbojy4VsZuXPxNqE
         Te2oWRw0tISMy1ocqdyEl++J3AVSBxY0/k55pGtkLsiJAHFFkDF8Dr+OkoxYYUDZAkTo
         HGKXLofD9kzmIFLMVW+DIPG+IeCYREOGZWEuZV1UE3phIQCjWuefsq66LrjbqpTJAaPI
         Q1N/d4tuUf0d0WSwYTLCFULdroeJYBTJaqEvkoUvITEhm8raqXCiX2DdceiZ/3vpBKMB
         wuSQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mgorman@techsingularity.net designates 46.22.139.13 as permitted sender) smtp.mailfrom=mgorman@techsingularity.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KclYjJB91XCnjBSNIvvpM56hRv66jOp0yDgZTYAOSBc=;
        b=JGtuR5lvpMU8OUZi5t/Rv0+LWBia6IflzeUzeNlAU+ohlTpTiej5cFd4E7l+hZQZkC
         epnv9ptT4t0oKvtOmWaMbqmjoy9UzzqucsuJdsiAdzDihI4pL8pkr73k0458dJTjcWHZ
         OqwFy6DqKwFclLKbxcg7QZTEFjm55RALdyBkeOVcVTQSWfEBJQsPtZ8IaeoO8HBfTQdB
         6myHnK6fox3SEv4b+AFdSVBf9r2ear55x1K7V76mpVUUZ7RZlxxpxAoNyJ5gi8+iu2u2
         Uk94NZXW09qqcUCVj7AA5fNcE4qzgFU2BeDJpt99JFsLC7sO+D0HzW06UGWj8HxJUBIk
         2scA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=KclYjJB91XCnjBSNIvvpM56hRv66jOp0yDgZTYAOSBc=;
        b=WFa4F0/+1A4CNy1yZVsNOtW369EBHfEHWlIXrROkD0Sws2HuXQkKjH3uUSOQDvoeFz
         jyCmhJA4cPdZPcaFSNecyzX1iOE1uPS0M6OSKUYzprX1aMWhkZUq7yuaF8Tw7E1pKxwV
         bWJCiM/yJYUzgJR0AXMbztf5Z+kA4/EjXCxOgtDUi3wHPDtLnd/qJ0VMOdg1i+6pvLXx
         hlGkr7GkDga7f6Ut/fVxYv/7q3VMfWRvZwTILjdZbMudjebhEgGnLv+LcSZtUvRYWz1F
         ixYLu0Od4tFglzWfCsB09RXP1m+TxPQrWSz7n/xFcgYRvN/EFLxdquu0XiK8LPWgHSrX
         89/g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ni1zkaXLNkbXMoXWHtIQqY9y+bQL4cEl7SlOCvOr1gp6TSwbk
	/ZTGDCxC/Gq/xLUlsSX4hXM=
X-Google-Smtp-Source: ABdhPJyqpxyugb/BMyj+xPvxL5crHfxb8yBzNmzZnAQAFhVC9xEkEfeczdVRkNOpu9VglATW6gf1LQ==
X-Received: by 2002:adf:f212:: with SMTP id p18mr11798482wro.386.1601884747496;
        Mon, 05 Oct 2020 00:59:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:e3c3:: with SMTP id k3ls6899504wrm.1.gmail; Mon, 05 Oct
 2020 00:59:06 -0700 (PDT)
X-Received: by 2002:adf:e58b:: with SMTP id l11mr17196891wrm.210.1601884746712;
        Mon, 05 Oct 2020 00:59:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601884746; cv=none;
        d=google.com; s=arc-20160816;
        b=vwAblSSiXz/PUEL14MIXcXfb//5+pAHtbGZSvi8baN8wkaLs/lbTNCWHo6XvRjQQwe
         JYqMJhYyIv/b8Gs/VY3kdD8Yrs0wEU/MqETlNJH4Q9BCP71MPpB6HMUVd6p+tdj6sQXv
         VqOnVqa5UOGO5WYLhYU77x9J2m3GTmO2JKbUZC2VGrxKBDOG0bRRBzHMI34AaUKjwgZP
         uTUcrmuV/wvvHZL5GV0tWQuL0Tl1kp1DfnIUNb2a1i5FWmGe1/UxmTDASJ0S4ztMF5X3
         xJVRJQZEhGMD42VdQMoRjRcSdd7zU2TJNEpbjTOdgOi3DH3Ym15NtFHkVO7sDVhDaFw0
         BnjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=4jE/wI0nFAadCL7ROtotCVfM5iXQF3r8aiBFwtTsOpc=;
        b=Ov5Sidazpq1mOEctJ87n4D2RWpVZZH6+9RdOHzzxWZ1UHl+nRGgNWeI1VXnJUZiQ2f
         ifEaUDswEyMorau2kqEq4CZCnusQ7iDDBLgEa4ij9C+HRjVma01oFJXoC2RdzTcEdJ1b
         q5tjkcOqbtu347Ca2oB3nX/do0+jtrdnGM3W4i5kQpMV+eXdqdXnUraupoArAnsd5Pr+
         NVL2VCrRe25jkk1D9SEQbnFjlkltSj1KY17Ihs2t2BhgMQI48KAGVhN4QL7Scy1Jw6UL
         3hwUmoW+U92iVKFZ9U1GE6JwmLkX/UpS+ulb+Kzdo9LzDDPd+/z251/ry1N2HYJp3uMO
         o+5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mgorman@techsingularity.net designates 46.22.139.13 as permitted sender) smtp.mailfrom=mgorman@techsingularity.net
Received: from outbound-smtp08.blacknight.com (outbound-smtp08.blacknight.com. [46.22.139.13])
        by gmr-mx.google.com with ESMTPS id p17si101213wre.2.2020.10.05.00.59.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 05 Oct 2020 00:59:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of mgorman@techsingularity.net designates 46.22.139.13 as permitted sender) client-ip=46.22.139.13;
Received: from mail.blacknight.com (pemlinmail02.blacknight.ie [81.17.254.11])
	by outbound-smtp08.blacknight.com (Postfix) with ESMTPS id 721F91C5111
	for <clang-built-linux@googlegroups.com>; Mon,  5 Oct 2020 08:59:06 +0100 (IST)
Received: (qmail 27315 invoked from network); 5 Oct 2020 07:59:06 -0000
Received: from unknown (HELO techsingularity.net) (mgorman@techsingularity.net@[84.203.22.4])
  by 81.17.254.9 with ESMTPSA (AES256-SHA encrypted, authenticated); 5 Oct 2020 07:59:06 -0000
Date: Mon, 5 Oct 2020 08:59:03 +0100
From: Mel Gorman <mgorman@techsingularity.net>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, linux-mm@kvack.org,
	Vlastimil Babka <vbabka@suse.cz>, Michal Hocko <mhocko@suse.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	kernel-janitors@vger.kernel.org, linux-safety@lists.elisa.tech
Subject: Re: [PATCH] mm/vmscan: drop unneeded assignment in kswapd()
Message-ID: <20201005075903.GH3227@techsingularity.net>
References: <20201004125827.17679-1-lukas.bulwahn@gmail.com>
 <20201004192437.GF3227@techsingularity.net>
 <alpine.DEB.2.21.2010050831010.6202@felia>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.2010050831010.6202@felia>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: mgorman@techsingularity.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mgorman@techsingularity.net designates 46.22.139.13 as
 permitted sender) smtp.mailfrom=mgorman@techsingularity.net
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

On Mon, Oct 05, 2020 at 08:58:53AM +0200, Lukas Bulwahn wrote:
> 
> 
> On Sun, 4 Oct 2020, Mel Gorman wrote:
> 
> > On Sun, Oct 04, 2020 at 02:58:27PM +0200, Lukas Bulwahn wrote:
> > > The refactoring to kswapd() in commit e716f2eb24de ("mm, vmscan: prevent
> > > kswapd sleeping prematurely due to mismatched classzone_idx") turned an
> > > assignment to reclaim_order into a dead store, as in all further paths,
> > > reclaim_order will be assigned again before it is used.
> > > 
> > > make clang-analyzer on x86_64 tinyconfig caught my attention with:
> > > 
> > >   mm/vmscan.c: warning: Although the value stored to 'reclaim_order' is
> > >   used in the enclosing expression, the value is never actually read from
> > >   'reclaim_order' [clang-analyzer-deadcode.DeadStores]
> > > 
> > > Compilers will detect this unneeded assignment and optimize this anyway.
> > > So, the resulting binary is identical before and after this change.
> > > 
> > > Simplify the code and remove unneeded assignment to make clang-analyzer
> > > happy.
> > > 
> > > No functional change. No change in binary code.
> > > 
> > > Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
> > 
> > I'm not really keen on this. With the patch, reclaim_order can be passed
> > uninitialised to kswapd_try_to_sleep. While a sufficiently smart
> > compiler might be able to optimise how reclaim_order is used, it's not
> > guaranteed either. Similarly, a change in kswapd_try_to_sleep and its
> > called functions could rely on reclaim_order being a valid value and
> > then introduce a subtle bug.
> >
> 
> Just for my own understanding:
> 
> How would you see reclaim_order being passed unitialised to 
> kswapd_try_to_sleep?
> 
> From kswapd() entry, any path must reach the line
> 
>   alloc_order = reclaim_order = READ_ONCE(pgdat->kswapd_order);
> 
> before kswap_try_to_sleep(...).
> 

Bah, I misread the patch because I'm an idiot.

Acked-by: Mel Gorman <mgorman@techsingularity.net>

-- 
Mel Gorman
SUSE Labs

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201005075903.GH3227%40techsingularity.net.
