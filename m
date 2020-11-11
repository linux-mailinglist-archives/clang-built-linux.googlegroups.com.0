Return-Path: <clang-built-linux+bncBCOLRCPDYMPRBWPKV36QKGQESKL67DQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 115BD2AEE3D
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Nov 2020 10:56:43 +0100 (CET)
Received: by mail-oo1-xc39.google.com with SMTP id t8sf718795oor.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Nov 2020 01:56:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605088602; cv=pass;
        d=google.com; s=arc-20160816;
        b=u1YaBO7VxW8O+OQJ+CO9EiPm15W1bFRIhpjhTywj7gfxztY1Ih+QMWGqt3Q3NJTrnp
         YUNF0JDJw85T/RStMa30bE9gQ/8d9fRAzwOXlVvl3uGIvs2ys0Iyou1MT2/eYorvNnW/
         KnCw29nm3QDuqWjLmi95PVzZEh9mtEKx1YAONKKqDy3DNuzv/C7j5uvEjPrH9pG+upfG
         33/pWDU69kRebi5VRrvzJQykZ4vRsV2NiaoGevOGt8o9j7lxG7aUXoImycjoru9hs/Qf
         a+U4r1V99i1eGFhYeJBkZMafkslcsjKm8h6LfOINOMppf24ST/u2Fgpe+ngyPbGeARCW
         eU7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :message-id:in-reply-to:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=+XA2Ly6G9+uqaj4t90Nv+OVjOkGfko8/whq+z9+8i7E=;
        b=IS/vbAk0VYW/DxzGVOpc5gRbC/TouvZ3HVtV/a/ilUonIppi77odlvjz3XAURg0yt8
         DKNnFe7E4LZ0XjpQhtcjrIu1grLPW0Jkc4ZQpMyOoTb/IR2RQAIhMN2CRX0r1VDusTFM
         wooODGHhrsdUUjpIZE/Hh+mrhJOdfuJ3nxl71xjryk/8+XPDOnlyt9dpIsh92nkOcYxo
         nuilX1R91KqD5wsOfjY7GxSbt5VB/U0MFTRTk6xTc6hGwCmMxYv+9GIPWVhbMa+2tyL5
         5xLtqnylQHY6KGRG8K64LFiE4sTh818e24fE7IvyX+0NPILWCktsK9xMZNbw9rSBDY+y
         AyaA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=abm4tmw2;
       spf=pass (google.com: domain of mpatocka@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=mpatocka@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+XA2Ly6G9+uqaj4t90Nv+OVjOkGfko8/whq+z9+8i7E=;
        b=IiT8W1beWnOmMexAbXPYFjJ2MzUpOzZ1Nvjy/J9ObqONgIp1pw5HQAe6fFNOB0UJb4
         lb1O1pdKpAh1w4bQ7eMUT5BPGPYgzQFg2HYCruwKCgXvCb4tiJLjJEsudMwHsl9X/jbE
         i95Ou7QuXj+fX2hMpEtLttdUU0kiRx/wIiK2FVnu1b4y+08euDKb+Dq67WDraaZ6nzB5
         8gxeC//JpvyiLkSebhVJHZl0xxPN9Z+f7HAQIf1GjkK8WLHEAMr4q92n+3FZJ+u4xKHv
         FRhADocn+EK5uOmxtjnCXWomtSXLBUv/7j2sUT5aaLsGXW99fYbursSCyXCqh9IfuVlD
         QH3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+XA2Ly6G9+uqaj4t90Nv+OVjOkGfko8/whq+z9+8i7E=;
        b=gY1fh3wrtj9ocpBkkc/ljHSeeG66TviTZKGLvJRpNLDahpifqxbQ+GqcOI5/U2r1S2
         ae/Btkckw8zPNU5ptsiHsbdtcsUQYh0fbm5soP2cb76ZbX4Rmk6/4Pd6Mt+iPH5t16/i
         uzFHqCZrs2A8sQeTItpLB5t1e1A3W1G8LdO5WCXlJyhEAbMfwJBeZRwKXkeMT+dtxvPb
         VTHvcKrJC8OWLVoBw9prwMtI3kHOGtSxiHzn92YN0mmnjvzG42hmObycJAWm53onwC77
         O3VGI2I77p1l+qG6G9iKWIwbO8qhmXCJMge0KrMslJvExHyw+xCZ60OvesnKpvQqoe1b
         ioZA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530lbkBpXtnq3kUuKsodR1kpK+4Gcrd86+r2So98HSLeAr/5VUbs
	gPSpjuZ8dDRT86YkksDv9D0=
X-Google-Smtp-Source: ABdhPJzU4VfKBeitSTQWowsxrOVHbytTqhT5AKTmjGkpSmpqpzEK/A9X/5mvgIsVoBwnnkbUslSniw==
X-Received: by 2002:a4a:e09a:: with SMTP id w26mr16652808oos.18.1605088602020;
        Wed, 11 Nov 2020 01:56:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:1917:: with SMTP id l23ls2811503oii.1.gmail; Wed, 11 Nov
 2020 01:56:41 -0800 (PST)
X-Received: by 2002:aca:aa47:: with SMTP id t68mr1754110oie.40.1605088601649;
        Wed, 11 Nov 2020 01:56:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605088601; cv=none;
        d=google.com; s=arc-20160816;
        b=rgOaARxDEzdGVuJ7glZ3JLieVpYEosHQ4ri2MKmXu0237Fd0iPFmiU33Dc3TYMHFAZ
         DtwSOhkmz+OWHnlYsLRlL3DBmr/vsr9CaRRAUvyGuOrhMgabJGCktSa6cyRajO9mpur1
         B0IltYLJ9BL8g2wJ3VTjiKshqJl6SxQoXkKmDZhTcduD5rnq+ytcPRokjVhBdXixMHKK
         IS7PDKOzhyfzrWpbZSvUqzg1Jz1Qk2DGhN/dzcJ84W8rOYMxxXzP1UnRWpt1km4CEgNE
         bRWHifejdqdoatn/UuB+KT2+a7itzwqdXQPoMs29ZaoU1H8UEt49Kh3KaaGC033v0STq
         cXsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:dkim-signature;
        bh=+XA2Ly6G9+uqaj4t90Nv+OVjOkGfko8/whq+z9+8i7E=;
        b=OygKWaB6JZnSqV9VsLi9jF76nRFiFDVGvG5n9Wcr9dLl4pv6Xf0fXLgYd3eZsaNCEl
         M1jX3Gjk8AWN+Y2ri/oMmre3FJ28mwP0BccRAqhPF5JjUMr+S4rS7yy3hGtH/v6mJ99G
         +maNeB8fMkIZsXuiev7sVn4MuUE0e+dTt6InIBzTkxlPTW0SVbmtT5Voi0QhSdKrmNry
         r+XtmT66NulCQpxatb8PCCGrrRSO0kZztVtsm8Y57CEEHeCxznpnV8bg+Cy2dg4OfbxZ
         gbocmne3SLhejKFehz/FMjwEHMfWaQ4o3kvs0tPDl1mo+i5V69BOUJWmk4qfPf+F/FJg
         tBeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=abm4tmw2;
       spf=pass (google.com: domain of mpatocka@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=mpatocka@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id e13si139121oth.3.2020.11.11.01.56.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Nov 2020 01:56:41 -0800 (PST)
Received-SPF: pass (google.com: domain of mpatocka@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-375-kw35YCLhNA-EYDOl6FMLMQ-1; Wed, 11 Nov 2020 04:56:36 -0500
X-MC-Unique: kw35YCLhNA-EYDOl6FMLMQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D0F3C80476E;
	Wed, 11 Nov 2020 09:56:28 +0000 (UTC)
Received: from file01.intranet.prod.int.rdu2.redhat.com (file01.intranet.prod.int.rdu2.redhat.com [10.11.5.7])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A0B3C6EF5B;
	Wed, 11 Nov 2020 09:56:28 +0000 (UTC)
Received: from file01.intranet.prod.int.rdu2.redhat.com (localhost [127.0.0.1])
	by file01.intranet.prod.int.rdu2.redhat.com (8.14.4/8.14.4) with ESMTP id 0AB9uSqU029365;
	Wed, 11 Nov 2020 04:56:28 -0500
Received: from localhost (mpatocka@localhost)
	by file01.intranet.prod.int.rdu2.redhat.com (8.14.4/8.14.4/Submit) with ESMTP id 0AB9uSYG029361;
	Wed, 11 Nov 2020 04:56:28 -0500
X-Authentication-Warning: file01.intranet.prod.int.rdu2.redhat.com: mpatocka owned process doing -bs
Date: Wed, 11 Nov 2020 04:56:27 -0500 (EST)
From: Mikulas Patocka <mpatocka@redhat.com>
X-X-Sender: mpatocka@file01.intranet.prod.int.rdu2.redhat.com
To: Nick Desaulniers <ndesaulniers@google.com>
cc: Alasdair Kergon <agk@redhat.com>, Mike Snitzer <snitzer@redhat.com>,
        Rob Herring <robherring2@gmail.com>,
        clang-built-linux@googlegroups.com, dm-devel@redhat.com,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] Revert "dm cache: fix arm link errors with inline"
In-Reply-To: <20201111024140.1483879-1-ndesaulniers@google.com>
Message-ID: <alpine.LRH.2.02.2011110456030.25804@file01.intranet.prod.int.rdu2.redhat.com>
References: <20201111024140.1483879-1-ndesaulniers@google.com>
User-Agent: Alpine 2.02 (LRH 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Original-Sender: mpatocka@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=abm4tmw2;
       spf=pass (google.com: domain of mpatocka@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=mpatocka@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

Acked-by: Mikulas Patocka <mpatocka@redhat.com>



On Tue, 10 Nov 2020, Nick Desaulniers wrote:

> This reverts commit 43aeaa29573924df76f44eda2bbd94ca36e407b5.
> 
> Since
> commit 0bddd227f3dc ("Documentation: update for gcc 4.9 requirement")
> the minimum supported version of GCC is gcc-4.9. It's now safe to remove
> this code.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/427
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  drivers/md/dm-cache-target.c | 4 ----
>  1 file changed, 4 deletions(-)
> 
> diff --git a/drivers/md/dm-cache-target.c b/drivers/md/dm-cache-target.c
> index 9644424591da..4bc453f5bbaa 100644
> --- a/drivers/md/dm-cache-target.c
> +++ b/drivers/md/dm-cache-target.c
> @@ -712,10 +712,6 @@ static bool block_size_is_power_of_two(struct cache *cache)
>  	return cache->sectors_per_block_shift >= 0;
>  }
>  
> -/* gcc on ARM generates spurious references to __udivdi3 and __umoddi3 */
> -#if defined(CONFIG_ARM) && __GNUC__ == 4 && __GNUC_MINOR__ <= 6
> -__always_inline
> -#endif
>  static dm_block_t block_div(dm_block_t b, uint32_t n)
>  {
>  	do_div(b, n);
> -- 
> 2.29.2.222.g5d2a92d10f8-goog
> 

