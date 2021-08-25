Return-Path: <clang-built-linux+bncBDJI5MPT4AIBBYOITCEQMGQEFCTUK2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x540.google.com (mail-ed1-x540.google.com [IPv6:2a00:1450:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 956A73F740C
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 13:07:13 +0200 (CEST)
Received: by mail-ed1-x540.google.com with SMTP id v13-20020a056402174d00b003c25d6b2f13sf5340988edx.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 04:07:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629889633; cv=pass;
        d=google.com; s=arc-20160816;
        b=WnHIb7J5Exuzy+2fUZXkrTasEj8XHwFFy61rUx/tR8wKfQZPfYHHo3Ol860n8618ch
         vDhexvw/w3iPcb5HSW/R1CLkGnNIwQ0o9eF3bh2skV9ZF+vYdRlDnDh0uxKN1urTtXMT
         hvIwiE/ny3hlBTVabFTivkez7GU0VROrt4r72c27wtF2ipMO+bFhLgKXWAbXPdqiG6F3
         /sewDKAgTi7SeEzm43bZAaJn4gqAgrjPP/Exp1iBfuCCtAmKeIVofvGJEtJtOZbYwqlS
         JZxUPleA53plKMipNTOdu6v7s14xsI6xSOhQ3Jen5kFE4HBy9xlpWCvcULvs7tWSb9fc
         sl7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=tr5Lywzwc71HN0cjtOPgcbML5xnCyb9ftKvbz2WmoD0=;
        b=fVrcI5XjqS3va6L0hW+i0wyaayJDyRg5pdIgvt9grCDKjjdgyE3FwFQyYGGuar9BVB
         4hwCd7MFzSV3ILfxTohhaPuY/VcWeRddnBHVtqKyUiuakz2MYSa0FyfwH0WLNg0KkLtH
         pd++8mftA64ugWmiT55Z89oFVnzSnxqA1qZxxRgL+N1MKWdhSUKrfXIxCUwF+ZSWRGqT
         5EeVDYiqrNuqc21XACXfpBggRqlT7PThC+M3a2CDbL6Xvj4Ip9tijxEGj3JrLz1XXL+M
         /rt06X1Qz4B3EsmRPXkaR8IIWHYFgPHwAptcyHx8BnvkcAEmHKWGbFLoyXmxbXw+OWbu
         gvGA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of pablo@netfilter.org designates 217.70.188.207 as permitted sender) smtp.mailfrom=pablo@netfilter.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tr5Lywzwc71HN0cjtOPgcbML5xnCyb9ftKvbz2WmoD0=;
        b=a20ajkSwEO73keuiA7Y6iJgbileA9PvHHoMcGL6+NH0205vnRqewQakcAbsAYbmWPS
         KDoC3dYZKX1DNcPE1GPcEfiNkYTHStSx8SwPsV9If6MMgj0EnnlevTZDX13JvHcdTVnH
         7cqlWrogU1z1+PUl/lqIzvp0by3BCba3Gmul58pKn7PSWEAm0nnoH+A2WfWe/6+DGsNV
         cD82fvxJmSZZz2OBwqMcIgQxWD8wi6/38yZ00RnKd8uteBgnMEvL8O+hvsdvyRW2jBQT
         IYpQAolV3IU/OsioUUvRgyS6+5I39ePmQaOOaRStzxZWV4O2CR79yKWap+qzYLncLOrO
         JgHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=tr5Lywzwc71HN0cjtOPgcbML5xnCyb9ftKvbz2WmoD0=;
        b=QCuHSVWu/oA0RtoJXwKfzBg2WvvKiNWopz2BlkLJmL6Y8BMc3pxarNW/fM/wzLN1rF
         gC9dtrdS8Ne7+PV28qqAMkl2DpkMd1Wvq+MKPIcBWiLt+8ZfbBEUS8nkeEyFH0RQ76u2
         23uIbEuLWjQMrTqy/ykiX4dHfczWng+TNGVO3VrE/Ov55mRQ7VblVej0zeuJvGQo0vpK
         kBPbtCKTlfC5XmUewuC1YuJyPho3rjxLrSjzQGMm0DfdwhjYRipTbcStHRK3GEQrD3tx
         K6sE8nRJoYVaKj0VhBreBnDdhyetPo4q0umtuFekonUkZ1ecJpWGoEChnfxGLseMBBV7
         7c4A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Uivlgy/2OvF9DVJuvmXYDhxVOetqU4Gtev2AviS4I3qLYn8lf
	q1h4o1rkfsimODzrP5I7EFE=
X-Google-Smtp-Source: ABdhPJwS/gyRqazNeGnOCQxca7i8oxh1TEIzPh/HWj0nlgTLdFqVyTiSJmk2IprroSShBH8lQiqORg==
X-Received: by 2002:a05:6402:1246:: with SMTP id l6mr47763987edw.12.1629889633360;
        Wed, 25 Aug 2021 04:07:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:538d:: with SMTP id g13ls943268ejo.2.gmail; Wed, 25
 Aug 2021 04:07:12 -0700 (PDT)
X-Received: by 2002:a17:906:a94f:: with SMTP id hh15mr45563543ejb.297.1629889632363;
        Wed, 25 Aug 2021 04:07:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629889632; cv=none;
        d=google.com; s=arc-20160816;
        b=Yc9B3anDDRiwzImSZS3RhxWg2x+kT82XWrcWsw4amtOUKs219NlgZnMuzWLqRpX/7W
         W+vo2hMXIlWyIvEhkeTK7HgfGITsHpS0YhTnOih5ZI0n26WQUh1v9eAp4Mj3lnuoLoad
         nF3WiTaV0H7NoISztRB610le4RTEcKEedB0F92P/QT4PQQdd7Dl4MZisNwsJctF2ZqCZ
         PX8/L8xbbs6hbHpTA7+PQddPbJ8TtPZZyn7KnujnB7L23boWqW6ZfU6tXcWisschOQpW
         OmWI/h4BQQJkuZsg/JdpBr1Zu5Mw3JIu/L8pRRychdog/i3XpCdFMFizD3nsuMNwS2YY
         s81g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=Y1qS4ikNz/U1z5mqgkHcuij5mb7KDjHEIzyXaIYCJUc=;
        b=ZKOq6nP8WXd7czfKEPBxJZdHZof4yqPBaVaOM8a8jdbvBAYi7o7WdlA7tz3ddnPL/X
         v1OttxpGoN5V84pg3laySVDnsX+X781LH/NR1rM1RQD2UVuklJVxvie0HdGobjjXG7e/
         vYG3PslwLYVmaM1O22B2o/tXVhIzO8eDPIHAvnexFII1ZMqm/9/l7gPgreyYU1c1wauR
         zC64pEQT0f7r6wVQGBO6Gtm8Y4HsgFuuIUBVmT6pSjD0fPMxD9qyDPW0mjpHx64mbfMk
         /T5I3HONtT2UZ8p28fXxCvTaakovhoromwTxjQCMmo1BIzXsrMRq9FhesajgpRg/wZyz
         0MGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of pablo@netfilter.org designates 217.70.188.207 as permitted sender) smtp.mailfrom=pablo@netfilter.org
Received: from mail.netfilter.org (mail.netfilter.org. [217.70.188.207])
        by gmr-mx.google.com with ESMTP id w12si1712307edj.5.2021.08.25.04.07.12
        for <clang-built-linux@googlegroups.com>;
        Wed, 25 Aug 2021 04:07:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of pablo@netfilter.org designates 217.70.188.207 as permitted sender) client-ip=217.70.188.207;
Received: from netfilter.org (unknown [78.30.35.141])
	by mail.netfilter.org (Postfix) with ESMTPSA id BF77F60102;
	Wed, 25 Aug 2021 13:06:15 +0200 (CEST)
Date: Wed, 25 Aug 2021 13:07:06 +0200
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Jozsef Kadlecsik <kadlec@netfilter.org>,
	Florian Westphal <fw@strlen.de>, netfilter-devel@vger.kernel.org,
	coreteam@netfilter.org, netdev@vger.kernel.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] netfilter: x_tables: handle xt_register_template()
 returning an error value
Message-ID: <20210825110706.GA3515@salvia>
References: <20210823202729.2009-1-lukas.bulwahn@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210823202729.2009-1-lukas.bulwahn@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: pablo@netfilter.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of pablo@netfilter.org designates 217.70.188.207 as
 permitted sender) smtp.mailfrom=pablo@netfilter.org
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

On Mon, Aug 23, 2021 at 10:27:29PM +0200, Lukas Bulwahn wrote:
> Commit fdacd57c79b7 ("netfilter: x_tables: never register tables by
> default") introduces the function xt_register_template(), and in one case,
> a call to that function was missing the error-case handling.
> 
> Handle when xt_register_template() returns an error value.
> 
> This was identified with the clang-analyzer's Dead-Store analysis.

Applied, thanks.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210825110706.GA3515%40salvia.
