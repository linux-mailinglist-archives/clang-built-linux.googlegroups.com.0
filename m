Return-Path: <clang-built-linux+bncBDZKHAFW3AGBBVMBTSDAMGQEAFTMW6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33e.google.com (mail-wm1-x33e.google.com [IPv6:2a00:1450:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 473A23A5D74
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 09:10:14 +0200 (CEST)
Received: by mail-wm1-x33e.google.com with SMTP id o82-20020a1ca5550000b029019ae053d508sf5277607wme.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 00:10:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623654614; cv=pass;
        d=google.com; s=arc-20160816;
        b=cAvRkQ5cc9V1YnJyPz3Xr8L+vVbmhGFr84DXRvofo4dzG4enSxELU3jOwh9XR9wP/2
         NWTm1GQNDW5O7/f6iRj92CrK7swKmrZZNTIkY96H/0cKCQ7WJsVeHbZZhTsYd6nx1CNK
         0UNtlNWfhuUENwd7RXxhco3vz+ZLb6a/XSRgak9emScRxZBRn8tISyvN3/KTFKRMSNrc
         dLqsIgpWwJI3v6RFClsj9f1pEdib6wWQtsEwDBF+F5LI+U8jrpHVBYGhPycq3KPHGStS
         Na2VTE8D7VXUS8DNzTxEs4K8lWKQTqRWaTUlrXzRgnh6NB9JRpRiSLOOBxt9mRVvlRJx
         XQSA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=sruq+znVr/pur4ZsocH7aAJSDTLOdFzXqp6OzHEeOQ8=;
        b=CKlI7dF5KlkHBs+C8vrGCzp0lgZNRI5waTpffR/1dXLFOSfHXKe1BOT3EY0VXGTlHp
         CaNvglxeu4jfXrJHg0KPe3IvMhfBdZyVUYNGJQZR3Ek+Vm04rlr49HRb0E1avJcpm3ey
         BCx1/+IKSIE6jIScy8HV5Mt8DWa0ifrBCGZBOlgyplP6gdME2QK61P7awfYPK83wEmDI
         K3eJnfM02+z9WdSxIpScyKIuLqOqBQRAXmDASTnkZy4TkAQcSlDXE1zx6K21HrqIsLfm
         xDgK6yPpNnAsU/eu87qaQgdFMSECn0tblcfRTwCLdm1tW76F63JK/vQ0m2x1+QfVdCgk
         JMLQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=M8dqK02t;
       spf=pass (google.com: domain of pmladek@suse.com designates 195.135.220.28 as permitted sender) smtp.mailfrom=pmladek@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=sruq+znVr/pur4ZsocH7aAJSDTLOdFzXqp6OzHEeOQ8=;
        b=NvG15NjUIvj+zGvMU6onq4kk5gB4G1W71ngZs68Jv6wNfWLn+nvivixejYYY5KxkL9
         mhp1uzgEnUSes4ocZN+GP3d5cIvQWqSrJwyFsgTj4wjXU78u0L6KL9BKbQ3qOFozmLF3
         6nojircskwV2s8VFhrpPgwG9uaxshxw6K5brD5+1Xwv30Atk7ir56R4N5ORAkFULlSrM
         4EsiTIWWcaeuntkDRhG+1FCYVBz6tbTDZG0GSGi4FHIs+vO8AL4RqW6tHlb5WqGAb9/S
         ts1gfMQHp5LSYTQtADhW9Y5NtAFNxLwAFSGS0Q5U64eRJTV6QN2WbL7WLEfNbwxtj2f1
         yGJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sruq+znVr/pur4ZsocH7aAJSDTLOdFzXqp6OzHEeOQ8=;
        b=sn1gNPdaFJg/Ppcm2Chv+b+VQ1/zuzjMQTDBmMAmkBoZu7/3jR8uGARS/ESQNLDU6S
         yEulk6Q0Gdhsfd4SMV+Q5xT5tGO52paIu1UAohRlcL4gbHOvfQfj2It+opoZbymK7ZFR
         dSMzxUV4oMEhNSSGisZjg7/5k4f28DbwvfnRMSefs/2rTLMOmcYTtdG5MuL9dln7wibA
         E4Bmf9L4DAKJP73g6qDdL4SJ+soodbjY8HLAJYRAWsvE/g69el9MVVqv7Xwx/ryZ3Q5h
         Zho0FmrrUXX0v1YozzGvXprG9WQ1Ir5/E87PBQ+4HpUQPxqUx+E+n+thFG3JKXMoH54e
         4xTw==
X-Gm-Message-State: AOAM530xVN06ExzIENHK1Wyl9IOmkbfTBjf/RuRkDDAqEbrIrv2Sy0oP
	tGqN+uTVpFOrkI3RTLp8rD8=
X-Google-Smtp-Source: ABdhPJyb0eJbjRS/+zOH/Z3xvOTpaIXfSAANrPDuCVetGC621S+ToSPWYcxVT9Hp0NmoDpdshijpOA==
X-Received: by 2002:adf:9c93:: with SMTP id d19mr16916543wre.17.1623654614000;
        Mon, 14 Jun 2021 00:10:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:ded0:: with SMTP id i16ls10329153wrn.1.gmail; Mon, 14
 Jun 2021 00:10:13 -0700 (PDT)
X-Received: by 2002:adf:a291:: with SMTP id s17mr16886907wra.399.1623654613152;
        Mon, 14 Jun 2021 00:10:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623654613; cv=none;
        d=google.com; s=arc-20160816;
        b=ChtAfq2LLa0hIagxHIZpqh7Zf1B5Hx9g+qGBwO3KZBHR7nNgaXY8JGuIsXnXPGSCiW
         jr0RR0WvY8hnkF94oTaCoxibYjZecQXO+GQO7ocLoK3Kd3rqRe/m8H1pMc1h7rkrNDex
         QJE2z3Yxcd2p7LXdRztXhvZkObQiy9GWgZVgBCbxPUCMbba/j/oggUC7x+z4xwYJqAmO
         Mk6buTvNHSVV1EZQCWaLQXESqciW6iG1y0bqvhqpeyaLjNGmopqRBFZEDqFHvw3t1V/3
         +WKhb7EYWuM0p+Nuyk9SlZ3U5S1w3AD4Cle+5Mwmp+83HgYrAX3xJYVTqL4peevn3uE0
         TwKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=imIsqFRpuOqsurBwOcFSF/CSyRUJvFV1150r+mLEIm8=;
        b=eU5Fzha8JKqri9UEifsJ/2yKFc67maAl6YVyjqic5K7QOeIRp3iOqUv0WHpl8ihJfm
         od3NoZxuybIHJ9kh2eOg2hlMrRFu6p1mTcuf+e1Oi9k14/Zy6kXNGdGoKfZhaWqshwwe
         wSP8ZPt9TeQWdAU4emsFqyZOtz4sxb5GtU6xFGNb7bP06oo/MbJ0LI7KtojxHlqVUYFB
         G86KjvIbYoExnZzePewJR1txQnufw1L1PQ6lsSYqLLE5JifHkAm/qq2oxsGkVrTL3N0N
         pVNfxx/zd/iG7t1oLw7LVDYDO2S/kDCJM3r2hCiJ9WsF629IeDKXEr59rhORiW+9/BPD
         flcQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=M8dqK02t;
       spf=pass (google.com: domain of pmladek@suse.com designates 195.135.220.28 as permitted sender) smtp.mailfrom=pmladek@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
Received: from smtp-out1.suse.de (smtp-out1.suse.de. [195.135.220.28])
        by gmr-mx.google.com with ESMTPS id s13si654876wrr.5.2021.06.14.00.10.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Jun 2021 00:10:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of pmladek@suse.com designates 195.135.220.28 as permitted sender) client-ip=195.135.220.28;
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
	by smtp-out1.suse.de (Postfix) with ESMTP id CDC1621975;
	Mon, 14 Jun 2021 07:10:12 +0000 (UTC)
Received: from suse.cz (unknown [10.100.216.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by relay2.suse.de (Postfix) with ESMTPS id AD2A7A3B87;
	Mon, 14 Jun 2021 07:10:12 +0000 (UTC)
Date: Mon, 14 Jun 2021 09:10:12 +0200
From: "'Petr Mladek' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Martin Liu <liumartin@google.com>, Oleg Nesterov <oleg@redhat.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Tejun Heo <tj@kernel.org>, minchan@google.com, davidchao@google.com,
	jenhaochen@google.com, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] kthread: Prevent deadlock when
 kthread_mod_delayed_work() races with kthread_cancel_delayed_work_sync()
Message-ID: <YMcA1BL5RVRm25bu@alley>
References: <20210610133051.15337-1-pmladek@suse.com>
 <20210610133051.15337-3-pmladek@suse.com>
 <20210610143030.f599946ec11e1eccde6af4f0@linux-foundation.org>
 <YMMN5IoXyXqoRsBX@alley>
 <20210611134125.bdb08ba0d2b6b87dc60d446d@linux-foundation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210611134125.bdb08ba0d2b6b87dc60d446d@linux-foundation.org>
X-Original-Sender: pmladek@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.com header.s=susede1 header.b=M8dqK02t;       spf=pass
 (google.com: domain of pmladek@suse.com designates 195.135.220.28 as
 permitted sender) smtp.mailfrom=pmladek@suse.com;       dmarc=pass
 (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
X-Original-From: Petr Mladek <pmladek@suse.com>
Reply-To: Petr Mladek <pmladek@suse.com>
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

On Fri 2021-06-11 13:41:25, Andrew Morton wrote:
> On Fri, 11 Jun 2021 09:16:52 +0200 Petr Mladek <pmladek@suse.com> wrote:
> 
> > On Thu 2021-06-10 14:30:30, Andrew Morton wrote:
> > > On Thu, 10 Jun 2021 15:30:50 +0200 Petr Mladek <pmladek@suse.com> wrote:
> > > 
> > > > The system might hang with the following backtrace:
> > > 
> > > Well that's not good.
> > 
> > Fortunately, the API users normally synchronize these operations
> > another way. The race should never happen when the API is used
> > a reasonable way,
> > see https://lore.kernel.org/lkml/YKZLnTNOlUQ85F2s@alley/
> > 
> > > > Fixes: 9a6b06c8d9a220860468a ("kthread: allow to modify delayed kthread work")
> > > > Reported-by: Martin Liu <liumartin@google.com>
> > > > Signed-off-by: Petr Mladek <pmladek@suse.com>
> > > 
> > > Was a -stable backport considered?
> > 
> > Good point! It would make sense to backport it. System hang is never
> > good.
> > 
> > Could you please add Cc: stable@vger.kernel.org or should I resend the
> > patchset?
> 
> I made that change to patches 1&2.  I don't think patch 3 need be
> backported?

Sounds good to me. Thanks a lot for the update.

Best Regards,
Petr

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YMcA1BL5RVRm25bu%40alley.
