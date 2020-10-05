Return-Path: <clang-built-linux+bncBCGN3SFZVUBRBGVD5P5QKGQEABF66KY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 18ABE283128
	for <lists+clang-built-linux@lfdr.de>; Mon,  5 Oct 2020 09:56:11 +0200 (CEST)
Received: by mail-lj1-x23d.google.com with SMTP id j23sf106219lji.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 05 Oct 2020 00:56:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601884570; cv=pass;
        d=google.com; s=arc-20160816;
        b=Vx1snYoE3fcKVgd6kZf0nkUxrzpCP1Li2M7oSwIEqlTqk1WfCfTPC7hcqVX93e5UUx
         wwBlB74eDUrVIDT6kaOkXguGYXo6dvy4FhL9zqb6ufFatuR217lTnGO5CIZ5ZBhqXe4S
         xSs8+6oDV0CWd/eD/h5NFfmMFEQV8BXfTjWhNWb+vbI+o8Vj40s1aXUGU1KD2cw5LnCY
         bY2Kd46kxmA+7jYojLQq4VItOIdwAM6sO5FSKnc0tLEU543YBkAwwBLuOqJFCPxvY9GC
         lBFGllfra0BvSGQDPpae1HYc0TrLyICJAIAT1liZfzlba6D6ZA/fDH6AtppEz3B/7GsU
         1xEA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=xbmkjO9k2z5GWAYGr+tQ7Fji3l3TxhIgLDsAwmr5m/A=;
        b=wkAGLp9pFRUfv5QZve71OyVUsVmItfTnJoVEHCLc/y6eJSe0P4M8nHyxf0f/lymTHV
         /VULrzooGvjGAquEqnv+tkj+rrE7qSIHl5sVkV38q3k9pIOQ3nm0Gykjh3tLCFoX6O9Y
         zeA8b8Zc4bDxwB3LRuWewCEbKGYzcpyHtMQiI3Zj7NRPifkhuPfPxPk7sTs8ddy+2mbX
         kiz3N2Mp7IUAs/RHL0gTJbdR3VypmUSoqECvVxKDDUIwQa6oETgRlKhQAjpZvV0U4c3g
         9HLTCqI+JbzU4WZbnthLaiCEvUc4+qVJdNe3NVNUbtEvOGwzbb1v3n4FUMOTpdWCek5V
         hUnw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mgorman@techsingularity.net designates 81.17.249.64 as permitted sender) smtp.mailfrom=mgorman@techsingularity.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xbmkjO9k2z5GWAYGr+tQ7Fji3l3TxhIgLDsAwmr5m/A=;
        b=ryjihVHoQUodQuxjjWKVx3PZio0VD8xSvmS1/BeEfdwjrqp6nuN2RqMrSBnzNYn2OF
         lWio6XSZLw5K12B/omkIbfJlSUKRmBXvSxa7/wNf07shtpJysc93awtySqx4UD42aaZO
         o4FfEN/f3Gr+VQyu2ja+vV/zQC4kf9LKsi5UpyEfXtJT23pMVqkA9L7S41TxGovKEg8w
         UH7evQM05Sj5uz2yUHYCsL6tab/+8eyA5LZbrfXV/6XeD538AS91GTICzEh3O9bYGtgW
         gFYaQn42TxgkRff+IIMosINq2QOAPN+kBpkY0D2aIdKt0yU8KKE10RRup8btY14jOMu2
         IdWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xbmkjO9k2z5GWAYGr+tQ7Fji3l3TxhIgLDsAwmr5m/A=;
        b=LVgIgIK+87gFAE+dtfsEPcSXyZ9ta2DRHjIESLJcN+uZOs4Evu+CkW7zraHvCviDm3
         X/Ox3ba8cRQHd9mSUfCANotNUXLzcumbMDiMz1RRxJbTtu+mhYXWoCRn4+dJXT3yWPTI
         sBYWPbCjUl1gjj87a/WiKFTAlRdFvV53f+n06Y2TPbbJR04ro7k/HWGWLlUR7GpW1IDm
         vSJiRNDq8r30Fg3O+Xy9rOZTjXc2JW1tFSbFE61E3pObK7PtIHversdH3vKS4pGZAcRb
         rT0W3JIJpezzg5ZJVZphydbwajpjA3tc2dEKc2iB1m22O5d4YZE2pt4DY/AGmh0iX1BK
         QNYw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533j2Eq6kf+c8P0RJAUljJQ2/8CFaVBlE2ZRjQllk6QvyLrJXGga
	1yWz1oT6WHUXvGk8ANCEDZo=
X-Google-Smtp-Source: ABdhPJwiyY0hd3UmOP8Yz4fBH+Zs/cp5+Dt0+JBZRlBy1A8GdahKoZPOzT95ya3gtc/JCALIo59TNA==
X-Received: by 2002:ac2:530b:: with SMTP id c11mr747165lfh.569.1601884570573;
        Mon, 05 Oct 2020 00:56:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:804f:: with SMTP id p15ls263480ljg.2.gmail; Mon, 05 Oct
 2020 00:56:09 -0700 (PDT)
X-Received: by 2002:a2e:b167:: with SMTP id a7mr1974375ljm.359.1601884569547;
        Mon, 05 Oct 2020 00:56:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601884569; cv=none;
        d=google.com; s=arc-20160816;
        b=FDY/4OL4DnmSAjvoZd6kwr9RMD2Tj3r2LdIiNBiE3RYwVMAjkqacYm+n6a3QXg+R/l
         8C9btARDelRvw33YwR3pd54+tXC9T17aOUYI0Dr2l/2uJ4OWkoo8QRuZFj3K4Keo6ySj
         w3hAmZIv/6vRqvz370Ms6vjLKdV/QPxd3UV6C9RZ/ijSqDRaEQhfmCSE8ovyaBTp7gjR
         OnsW+cBIPNddRoxoBVTN+33TgcXTXf9NLYJeoEwqFxJOTN4dRQtZubVmpUwNzj0ZXGuH
         FrVcfhd4Yam0YZdS8pAapATFON9AS7QBfC5IK5lADhkJ+GUIlqcAgxBmt+rAWFCA0fi6
         Pkdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=mw4ApbePIIEXAjadlmBT+7vAtDLt2f2ZSSVr/1eAGVw=;
        b=rn5O8qdPJ4iagloYQyu0x3Kr7hQRgu5DXv9Zk424uB7uHSfAvSX7BQhvI4G5etvfw9
         K80Mp/1KIBzP2HXV84Pa2sXWPbwwbhO7Y8fX31cMS4232O7ZeBBEW9KslWgLSiEfLsy/
         rkPIEXScerlt4o3fxbr+ZfZLMPu+N7vnyNUlRkXlpC/Mzd/qV0EGeUCS9ntWUkqDc7yU
         4LB96+M7Il2yIIim+w5SAJ6BNeBOMhQ/Sw2D0BuKM3k2fGWR2Mhxl9rtcvYMvC35t6S5
         KTwaZpL+da+LQAraL1DRm+tqbPYxup0UMHW7Sy04NA+0dt7jpEvFknzEp3hMLK9kfSd7
         B0Xw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mgorman@techsingularity.net designates 81.17.249.64 as permitted sender) smtp.mailfrom=mgorman@techsingularity.net
Received: from outbound-smtp32.blacknight.com (outbound-smtp32.blacknight.com. [81.17.249.64])
        by gmr-mx.google.com with ESMTPS id o142si155901lff.6.2020.10.05.00.56.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 05 Oct 2020 00:56:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of mgorman@techsingularity.net designates 81.17.249.64 as permitted sender) client-ip=81.17.249.64;
Received: from mail.blacknight.com (pemlinmail04.blacknight.ie [81.17.254.17])
	by outbound-smtp32.blacknight.com (Postfix) with ESMTPS id 94F34BEF9A
	for <clang-built-linux@googlegroups.com>; Mon,  5 Oct 2020 08:56:08 +0100 (IST)
Received: (qmail 16739 invoked from network); 5 Oct 2020 07:56:08 -0000
Received: from unknown (HELO techsingularity.net) (mgorman@techsingularity.net@[84.203.22.4])
  by 81.17.254.9 with ESMTPSA (AES256-SHA encrypted, authenticated); 5 Oct 2020 07:56:08 -0000
Date: Mon, 5 Oct 2020 08:56:07 +0100
From: Mel Gorman <mgorman@techsingularity.net>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, linux-mm@kvack.org,
	Vlastimil Babka <vbabka@suse.cz>, Michal Hocko <mhocko@suse.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	kernel-janitors@vger.kernel.org, linux-safety@lists.elisa.tech
Subject: Re: [PATCH] mm/vmscan: drop unneeded assignment in kswapd()
Message-ID: <20201005075606.GG3227@techsingularity.net>
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
 (google.com: domain of mgorman@techsingularity.net designates 81.17.249.64 as
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

After your patch, the code is

	unsigned int alloc_order, reclaim_order;
	...

	for ( ; ; ) {
                alloc_order = READ_ONCE(pgdat->kswapd_order);
                highest_zoneidx = kswapd_highest_zoneidx(pgdat,
                                                        highest_zoneidx);

kswapd_try_sleep:
                kswapd_try_to_sleep(pgdat, alloc_order, reclaim_order,
                                        highest_zoneidx);
	...
		reclaim_order = balance_pgdat(pgdat, alloc_order,
                                                highest_zoneidx);

reclaim_order is declared, not initialised at the start of the loop and
passed into kswapd_try_to_sleep. There is a sequence where it is not used
so it does not matter but it depends on the compiler figuring that out.

-- 
Mel Gorman
SUSE Labs

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201005075606.GG3227%40techsingularity.net.
