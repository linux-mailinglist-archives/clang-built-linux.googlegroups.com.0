Return-Path: <clang-built-linux+bncBDS5JPEL3IIRBMEI5P5QKGQE36SVQDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 1103F28307E
	for <lists+clang-built-linux@lfdr.de>; Mon,  5 Oct 2020 08:58:57 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id d9sf3613165wrv.16
        for <lists+clang-built-linux@lfdr.de>; Sun, 04 Oct 2020 23:58:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601881136; cv=pass;
        d=google.com; s=arc-20160816;
        b=06LCyezj8B7JabpPr3o//6E8EpBUoSY08ZJAAwUg8PpVKbOI+SCYhMlgrpB1NpZ9mj
         WS+HKClSyV83/sDUy2FKHI0COPCHrjgZgOmIYfnV6KWj33ebJc9gZKT+Iaawfuzqwft6
         0lfZ5Cy1pySSun71aLl2bTcJW68bXNxQSCoFKU2Fk03hok35SF1LxNLORmjfgvJi82Fq
         /r1ncF15d3M2bnfKmrLg2FVI6c4H9NMz24PbToquwSH96+kDWv4JML81PCCgCtEdsXkx
         BWD4Wi23d1esdmmPEkOFbTew6M7+yAZGay+RS/v7DjGMWPhwYX4oxhfw5NLR4atYjLea
         7Nbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :message-id:in-reply-to:subject:cc:to:date:from:sender
         :dkim-signature:dkim-signature;
        bh=UPbot1QikHP3L+I6bLAXQ8N1ZBqQi7E37WfnO5btbMc=;
        b=blurNgNLOvnPDpYv8QCs1EUeS3FTxDGfHBgmpl5JHPm0JnMCqHE+0LV2jzWhCigGJ9
         jLDi/n2WqOvQzQPFwEe/D2pGwFcLVyKlWqFkgTPpvppknN+IbJV6TJhfZNOKFXKKG2AA
         zBDTzinItd241C/eUjeWkUCJKEpcnLg6aruZHJj0bhi636L9HoMFiYpHDfNeZJTgzNEu
         qI4mAyoAbkyienZWJq8KsR388J0jZp8CZo/pJo2vBWl/Lv5pTHFlzE29kA1qXcpyEjlM
         IVUH5QD5IGV0d5wSlnhc6rlaWMyuCJqlHnXstC/ctUBWqgrwGWuMNIQPH95Y/OC1EjDX
         fyGA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mJKhyuUp;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::542 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UPbot1QikHP3L+I6bLAXQ8N1ZBqQi7E37WfnO5btbMc=;
        b=q2gOyIJQ+belxKqTCYLhA3w6N6viW56n+Qb8TSLNW3A2LilZuLThnKxpQsDg47Ccxe
         rL6LtZu+Mtpmhqc8sWWfbO4D1GP2Ij6HJvjd1TxWU8egSzr6KBiDVwLziAxTj7AlBZPK
         6KxvFuKeJMBKtEHh6E9i3uBwg+9tnmKUklEUugKkuAGsDFpn9GhGDl6JQLqdMwSEuADD
         SQPMrzIn04NG8Jpif3nF4/PR87I3InwE92TIdx73QPT+Zpok2Qm7jZ0vc07abuv79xgl
         xKDkaTdXKoHPPbA7H+GbIWkF56riKwUne4HVRtEyjHtEJnuDESHpdyfk7f6E4pUrXi8l
         hIgw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UPbot1QikHP3L+I6bLAXQ8N1ZBqQi7E37WfnO5btbMc=;
        b=lLwh+lYVyfKgVMgffN9Py/m8LSuzA8meRpbucnq13jsSrYGSxWX8qRjpFEY/aBklwz
         r6hAIOYk/zICRfYsvFgFfwmj+hy21smSqI7pICQDzeQrnhaYIu8QXLK2a8oUqNT3Qmi+
         LAD72ACD6YRRQGkLeRa/LWKC3CQahJ/Dt58wzCnVVzE/XceQx8RnqNgx0//BTjcXcJrv
         ElbbWW5avmdmnASwRwR4CuIf9GztGtOv5mAy6Gos2k24c5sazfrDWSYJSKySpO/ODh1k
         S4wTcRsMxlmgXUb+iwhcsfHBQfene7/yGRD7dnN+bCRju239HrdkXG7JkPzn7Fljx2ua
         targ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:cc:subject:in-reply-to
         :message-id:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UPbot1QikHP3L+I6bLAXQ8N1ZBqQi7E37WfnO5btbMc=;
        b=IKKDjUXNWh4CG8NgXtpFJH9P3pZaeEM137dBpleDBUdBFczjensMtVjryvWS3E0ohL
         8r6/DMiJQHGM4CTLIHtkvOFVf3aFwoj43gNsMVFnGa0xCgZzxSy3CHjBS2jO26VWNeIw
         BSBBi/SiqTDs9ED0v4IBUsJOC0XvY+S1v4HZV8Lm2NNm5KAxPjSHzTiDNBvvUO72V81J
         0YUJjVzTCb1rtAsF2dv62X6RFO8i6ERwadaPNS+VQ8ERrhecf0G9KgjNUwsE69H3oCmz
         k0Zz8Wb9ePbJWxIaxhR3cJTrHkoNT2IlkaEFAmV2X/6gbEHvMekxE9pHFYKusl+tHcOW
         vb8Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531nwOZMSQggok7AYWtA8RaqSLgOGjBZYA9dBQlecrcNQ0TEJ0IK
	eMGQTqXBCM7h13XTPxhdwes=
X-Google-Smtp-Source: ABdhPJzDou2UFrPvjcaPBG/bd/P6YDe3RG6psDQK+gxjxvMNfYSlaNEBNfs4fJ7wCZ7ismPdQ39jfA==
X-Received: by 2002:a1c:7302:: with SMTP id d2mr16028674wmb.133.1601881136780;
        Sun, 04 Oct 2020 23:58:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:9986:: with SMTP id b128ls4197515wme.3.canary-gmail;
 Sun, 04 Oct 2020 23:58:55 -0700 (PDT)
X-Received: by 2002:a1c:1bd1:: with SMTP id b200mr15862338wmb.171.1601881135826;
        Sun, 04 Oct 2020 23:58:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601881135; cv=none;
        d=google.com; s=arc-20160816;
        b=Z7DafXe4yHWT7E6I8NbTyffJ9hJeobpKCR/pY5r30jzRf51XTwumRGbKR33eYqm0qi
         SPKblSt7p/L+moLqQrnf7PNV7r9O5oT/DHDthofLUlWyL7QdLkU48ypVPyby2YctMdmA
         Jwt6obATLluBvR3roKGT/jOPAll3e5FjolP963DU7cB4FXLxrVrtrBvBe788IM9+ZzJL
         Kmxx/RZ14uFTaHgZRpswt6eDFrxvxWJ3dXcUXmj15L8DSXroL/nj42+sF12cVsb7Mq+0
         5jaIQFIw1ioNqCcFNhq6ZoqFOOmVN5fy1ZSQSp8PQcFfEeC4Sa/dlJn4wOeuNB2jghL8
         XTLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:date:from:dkim-signature;
        bh=gRVfMn1y3J1C+vGuMZF2LipjcOOXpjH1BPs85qkeY9I=;
        b=aMZ2kIg3vkZlO4GpTodaHrpY2HvWEJYKvP7X/4Q2H1iwFHMtIAPCX1g/h1L6WMN6JS
         nt/ZefX7ABGCjxh9/I894ISQuVYH01qfSRfIKt7mJ/4vDgFmB4hthLZMgnx4QhZNwTk1
         XCAOgjPjomLxSfuwM1IxZFSYO8hfhK3hbailBY9xtUTFfnlveilnSyBQSu+H6cfDGgTv
         7CXPbnVucxd8mWFYYSbvEEzLBxYLhRvRuoePvrXmf9AINj+aPdTTwLzjoommiTotgEn1
         uYAnH4KzyHck/opJfuleh0TtrVTjcz98R7kaL+G+B8mYqzLKPDrsJG532zkrs7ZWyty0
         v+nQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mJKhyuUp;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::542 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com. [2a00:1450:4864:20::542])
        by gmr-mx.google.com with ESMTPS id 63si20940wrc.0.2020.10.04.23.58.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Oct 2020 23:58:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::542 as permitted sender) client-ip=2a00:1450:4864:20::542;
Received: by mail-ed1-x542.google.com with SMTP id cq12so4315995edb.2
        for <clang-built-linux@googlegroups.com>; Sun, 04 Oct 2020 23:58:55 -0700 (PDT)
X-Received: by 2002:aa7:d690:: with SMTP id d16mr7880545edr.301.1601881135466;
        Sun, 04 Oct 2020 23:58:55 -0700 (PDT)
Received: from felia ([2001:16b8:2dcc:7300:fc41:427:81ae:8ef0])
        by smtp.gmail.com with ESMTPSA id a13sm200597edx.53.2020.10.04.23.58.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Oct 2020 23:58:54 -0700 (PDT)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Date: Mon, 5 Oct 2020 08:58:53 +0200 (CEST)
X-X-Sender: lukas@felia
To: Mel Gorman <mgorman@techsingularity.net>
cc: Lukas Bulwahn <lukas.bulwahn@gmail.com>, 
    Andrew Morton <akpm@linux-foundation.org>, linux-mm@kvack.org, 
    Vlastimil Babka <vbabka@suse.cz>, Michal Hocko <mhocko@suse.com>, 
    Nathan Chancellor <natechancellor@gmail.com>, 
    Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org, 
    clang-built-linux@googlegroups.com, kernel-janitors@vger.kernel.org, 
    linux-safety@lists.elisa.tech
Subject: Re: [PATCH] mm/vmscan: drop unneeded assignment in kswapd()
In-Reply-To: <20201004192437.GF3227@techsingularity.net>
Message-ID: <alpine.DEB.2.21.2010050831010.6202@felia>
References: <20201004125827.17679-1-lukas.bulwahn@gmail.com> <20201004192437.GF3227@techsingularity.net>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=mJKhyuUp;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::542
 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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



On Sun, 4 Oct 2020, Mel Gorman wrote:

> On Sun, Oct 04, 2020 at 02:58:27PM +0200, Lukas Bulwahn wrote:
> > The refactoring to kswapd() in commit e716f2eb24de ("mm, vmscan: prevent
> > kswapd sleeping prematurely due to mismatched classzone_idx") turned an
> > assignment to reclaim_order into a dead store, as in all further paths,
> > reclaim_order will be assigned again before it is used.
> > 
> > make clang-analyzer on x86_64 tinyconfig caught my attention with:
> > 
> >   mm/vmscan.c: warning: Although the value stored to 'reclaim_order' is
> >   used in the enclosing expression, the value is never actually read from
> >   'reclaim_order' [clang-analyzer-deadcode.DeadStores]
> > 
> > Compilers will detect this unneeded assignment and optimize this anyway.
> > So, the resulting binary is identical before and after this change.
> > 
> > Simplify the code and remove unneeded assignment to make clang-analyzer
> > happy.
> > 
> > No functional change. No change in binary code.
> > 
> > Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
> 
> I'm not really keen on this. With the patch, reclaim_order can be passed
> uninitialised to kswapd_try_to_sleep. While a sufficiently smart
> compiler might be able to optimise how reclaim_order is used, it's not
> guaranteed either. Similarly, a change in kswapd_try_to_sleep and its
> called functions could rely on reclaim_order being a valid value and
> then introduce a subtle bug.
>

Just for my own understanding:

How would you see reclaim_order being passed unitialised to 
kswapd_try_to_sleep?

From kswapd() entry, any path must reach the line

  alloc_order = reclaim_order = READ_ONCE(pgdat->kswapd_order);

before kswap_try_to_sleep(...).

Then it reads back the order into alloc_order and reclaim_order
and resets pgdat->kswapd to 0.
I argue that the second store to reclaim_order is not used.

Path kthread_should_stop() is true:
Then, it either exits and does not use those temporary values, 
reclaim_order and alloc_order, at all.

Path try_to_freeze() is true:
It goes back to the beginning of the loop and repeats reading alloc_order 
and reclaim_order after the reset to 0, and then passes that to 
kswapd_try_to_sleep(...). Previous reclaim_order is not used.

So, the previous store to alloc_order and reclaim_order is lost.
(Is that intentional?) 

Path try_to_freeze() is false:
We call trace_mm_vmscan_kswapd_wake with alloc_order but not with 
reclaim_order. reclaim_order is set by the return of balance_pgdat(...);
So, the previous reclaim_order is again not used.

The diff in the patch might be a bit small, but we are looking at the 
second assignment after kswapd_try_to_sleep(...), not the first assignment 
that just looks the same.


Lukas


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.DEB.2.21.2010050831010.6202%40felia.
