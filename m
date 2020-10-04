Return-Path: <clang-built-linux+bncBCGN3SFZVUBRB6OC5D5QKGQEN3BFH4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B34282D3E
	for <lists+clang-built-linux@lfdr.de>; Sun,  4 Oct 2020 21:24:41 +0200 (CEST)
Received: by mail-wr1-x43d.google.com with SMTP id 47sf865029wrc.19
        for <lists+clang-built-linux@lfdr.de>; Sun, 04 Oct 2020 12:24:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601839481; cv=pass;
        d=google.com; s=arc-20160816;
        b=o65pVEi53LY133tSn/N9jkEHx75254d3csZxeKEoLW2W7mfldTP+BHJQO6OAjbEglO
         ziOyyODOelf/JCa5eQuVEheVIRGDf5PrpHByMAsqxzpimCjAnvBWq3HTBL5Ab+Xc4uJ5
         6S4S6vOXsvxV2/RK49XGtNP92pcBRk/BI5nICtK2DLpdzujHETmoZfvQ/viQ1TXQJrTw
         ZM7wRdFpoLzqcUyTM7xnqDjL/KjtCDLtJuuC4aDKr1Bl3kalC3JNNU7BqcB/qYq+st2H
         Mgpwcjfbp8pICrqQvzy/lGGO4kpgbtWRqFymD6nB/XEBvI3UYd/nslhcgINSqUet4DW8
         RyrA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=D/7cUieQhPO9gFSK7slHn9cRYep9tAx6cfVGM5g+iDs=;
        b=ZKSrPxHsxYTVQlRsvW/b1syGpYtARTGDGJouaO5dPri18jsvamghrJD8m/npT5wSTq
         yjQajRGzeZyCi2UGxs1scT9pp3jEBko9KXuyCxOlVzBpiiHW0RdONa1F0QMGhnWN/Pa4
         oubbeZ+j1YCFnSOZs434biP8XY+TUY6q/9+VlZI8mcEM6m10q7jG7/cki9I6W0Us2cGi
         mIpkqtM+BOmMDIC+mSerqOnrg9h73Vq4dJMOB+RXtcutVV+k15izdfYZjyD6UlJ5wtcv
         RzowAcZtO9nnZsx5leiqNAuAVY9cXyoDMPPVDA97xVtNz9daNCtAnCwnjF3d3NzPutFt
         4zsg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mgorman@techsingularity.net designates 46.22.139.12 as permitted sender) smtp.mailfrom=mgorman@techsingularity.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=D/7cUieQhPO9gFSK7slHn9cRYep9tAx6cfVGM5g+iDs=;
        b=Vy0gO3sQpGW9MTKgDuALXTWq0CZ3LJPTx9aMvgg3GjwzM2RYYeH1PuaQzfo3Kp+Nd4
         SjUoYhylgMx1YcNk68YSrRctJLXi+iBqERCpUwEGTufTaqgVyK3pNPEZc1Sj2TJNqmzn
         pvfV2YAur8yFIoJAYySAqYrSPZqDUUOiBJBMx0l3V2Ak1s7wR0HYrDoWWABDEaBB8/X0
         3X4Gp02AdiC+mfx2gPRJEP569G1S2sMIghwpJApN8glwN/jx0HKvN2gqTyEqNZqgs2il
         7AFOlbynB8qR+EY8X2x+f9b+bSjPSkdqAws0jW9psOS/nCNy4r57stxc1bZdZ5kdcmI0
         yzWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=D/7cUieQhPO9gFSK7slHn9cRYep9tAx6cfVGM5g+iDs=;
        b=aMh3k/kNjFmcmwDL6ybW6rEcyyB5o/rceG4aMaNHDhZCo8lauLux9bXJFqFr3b/voo
         3XMHW42YqPm/YKIPL+1XNhFvkWXsbrN+RWw8zuJrKRK50biRdb0i5e35aSl7h7KLVEIv
         03L8pkHfeCm7ld68Gs59RPrm0r9X/NKjsWmR2XDvqO1F1MqQ68IDZCUUm5vsxeEE4M1q
         lqRCPzptuSOXdM/0U3QykjhbJfa2wz+vWUEhNRx0OFATWrOFyG4Y3Vy5/gSwGfkvWw3e
         WtFHBsFJ/PkWVselySMt8uCs3EGrAbPhC58aIekP/GEN38d0L5dqsjltnzGCVjkJuXUk
         S6QA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5319BRAptauXARHs6vCdDUO94XdT3guQTZUGtX7CyBkQ4d199SJ1
	o1iyOXNVNJtJvGb/H36mJM4=
X-Google-Smtp-Source: ABdhPJzQ5T3oykxWIH8vdNVzscxIvYDbu/DyLGbRsV3alAzGCvJMGF3J+qZgMZFsEgFjX+mQEX6+vQ==
X-Received: by 2002:adf:bbd2:: with SMTP id z18mr4790857wrg.166.1601839481731;
        Sun, 04 Oct 2020 12:24:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:9e53:: with SMTP id h80ls3562209wme.1.canary-gmail; Sun,
 04 Oct 2020 12:24:40 -0700 (PDT)
X-Received: by 2002:a7b:cb81:: with SMTP id m1mr13879429wmi.140.1601839480872;
        Sun, 04 Oct 2020 12:24:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601839480; cv=none;
        d=google.com; s=arc-20160816;
        b=YBmDBqN4uwWG5NnOnKA+phWXWnNKP7L6V7oh5RClByzBqxViizIOtl0DQ9Er0VKkfz
         v9eoi1Pa5MU8Y+BBCFiSD8ZBhHTz9bHelCW5q0MAHjrNtwDYDKEv8cagj77yMoyW30l1
         K+1Z6Qu13F0NKiR7i8vsCxtfIZTPlp5ZR1140VXSkJ5Lf/fKVOTxS/auvIoRjC8gzzyJ
         UY5u1OlRBcCE/Ho5pyuSa5x2oiDKup+7Uf9ltLZvbP8u4rdBsgM0p/cJbt99FoIGZuVq
         xNFycFTOiLEPgFYszr13oAvFPi4Bp+DrdE7J7aLb35JY0xy5nyIg4FMGQDCwqgyu1Tal
         jQ/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=WhajYnONGWebAtA98v1coIWY19GSL100F9YocfIo//Y=;
        b=pgMi6HpYjNWRoWFSM5NTKuM1TVgzbzqVooR9gaTceI2FzvrukgkufcDiZZFxnEdAGr
         SYi5G6IHrdvRIF/sDxV5Jep/0T8+S1vkWYQBxge1ao5bY8DUsRiumwX7/eBhzxsLDpYY
         tGcGt9kX7w7cqwic8383RaOGE6+nV5+HdjKxKApguX0tTUwJg/6bCa1xu5kQOB7ZH3t3
         z205Wa0LPK2hdAqM30xD3AhLHiVVDpamKzv3Mb/xE05ZMTmTz2ZC33oyes3D9CU/hV8W
         nxec/bGdiH+cu4Txmjn4Yda3OqFkBk50NMeEjOlNOcvVsx0NiszBrYg4fUIMN7yglNPO
         CBWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mgorman@techsingularity.net designates 46.22.139.12 as permitted sender) smtp.mailfrom=mgorman@techsingularity.net
Received: from outbound-smtp07.blacknight.com (outbound-smtp07.blacknight.com. [46.22.139.12])
        by gmr-mx.google.com with ESMTPS id 72si35799wme.1.2020.10.04.12.24.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 04 Oct 2020 12:24:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of mgorman@techsingularity.net designates 46.22.139.12 as permitted sender) client-ip=46.22.139.12;
Received: from mail.blacknight.com (pemlinmail03.blacknight.ie [81.17.254.16])
	by outbound-smtp07.blacknight.com (Postfix) with ESMTPS id 882E11C4E44
	for <clang-built-linux@googlegroups.com>; Sun,  4 Oct 2020 20:24:40 +0100 (IST)
Received: (qmail 16067 invoked from network); 4 Oct 2020 19:24:40 -0000
Received: from unknown (HELO techsingularity.net) (mgorman@techsingularity.net@[84.203.22.4])
  by 81.17.254.9 with ESMTPSA (AES256-SHA encrypted, authenticated); 4 Oct 2020 19:24:40 -0000
Date: Sun, 4 Oct 2020 20:24:37 +0100
From: Mel Gorman <mgorman@techsingularity.net>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, linux-mm@kvack.org,
	Vlastimil Babka <vbabka@suse.cz>, Michal Hocko <mhocko@suse.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	kernel-janitors@vger.kernel.org, linux-safety@lists.elisa.tech
Subject: Re: [PATCH] mm/vmscan: drop unneeded assignment in kswapd()
Message-ID: <20201004192437.GF3227@techsingularity.net>
References: <20201004125827.17679-1-lukas.bulwahn@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201004125827.17679-1-lukas.bulwahn@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: mgorman@techsingularity.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mgorman@techsingularity.net designates 46.22.139.12 as
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

On Sun, Oct 04, 2020 at 02:58:27PM +0200, Lukas Bulwahn wrote:
> The refactoring to kswapd() in commit e716f2eb24de ("mm, vmscan: prevent
> kswapd sleeping prematurely due to mismatched classzone_idx") turned an
> assignment to reclaim_order into a dead store, as in all further paths,
> reclaim_order will be assigned again before it is used.
> 
> make clang-analyzer on x86_64 tinyconfig caught my attention with:
> 
>   mm/vmscan.c: warning: Although the value stored to 'reclaim_order' is
>   used in the enclosing expression, the value is never actually read from
>   'reclaim_order' [clang-analyzer-deadcode.DeadStores]
> 
> Compilers will detect this unneeded assignment and optimize this anyway.
> So, the resulting binary is identical before and after this change.
> 
> Simplify the code and remove unneeded assignment to make clang-analyzer
> happy.
> 
> No functional change. No change in binary code.
> 
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>

I'm not really keen on this. With the patch, reclaim_order can be passed
uninitialised to kswapd_try_to_sleep. While a sufficiently smart
compiler might be able to optimise how reclaim_order is used, it's not
guaranteed either. Similarly, a change in kswapd_try_to_sleep and its
called functions could rely on reclaim_order being a valid value and
then introduce a subtle bug.

-- 
Mel Gorman
SUSE Labs

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201004192437.GF3227%40techsingularity.net.
