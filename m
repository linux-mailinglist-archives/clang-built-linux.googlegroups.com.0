Return-Path: <clang-built-linux+bncBDZKHAFW3AGBBA6NRLZAKGQE26ZUFGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E897158F73
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 14:05:08 +0100 (CET)
Received: by mail-lj1-x23e.google.com with SMTP id d14sf3716490ljg.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 05:05:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581426307; cv=pass;
        d=google.com; s=arc-20160816;
        b=DRXzUGLX14QPXOOG+PGFdtnSb8KfbMFGqBnPzoYaXnt2uNnMJyBHzRvIgTWabM/q1O
         m2625rRGreI59ZBlmp3mfBPNYXcew7+JOWtJZRg9z3Y+cTV5qdzcfZ3xnpF2bIksu79u
         DgAVtMe7wZB9bcLiLwIojz27SOJ+4uwjDwGYGrU8AMGvqwHBd8g3WRFG37wqnogUXo5Y
         JCp/upQKZbYCXA7sC0eZd7eyFTdNs4fKyNV3JK1fgyrdcSL/8stPug0chkbaMepz8hUt
         ukTSYW90A38kBWGbGda4TVmlSqmiPpsU6097Qq+/V/8qxFJyaOwEkfevojq3NVN6tyhu
         L16w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=Sa3LswgfvMEBQAZR15QewpFYUeqMUGkZfHI7bkz6GGY=;
        b=toVa/naXmW1Ad5tW3o7RuQX0W26O+M2uGMDOjQar1eHJDgAPRlWNYms/QKaQrA/Wu6
         i2Kov+hHTlDD3AUDcyggQ2dK2Ug8UN1jO7KmDpQZocnDwJJnAuy4hEVcllzCgpR3/rUZ
         NKnuexU7tx6uGaLoLl0uqaYrVYqVc3SFQEzGwwLFEbXePPQzqvbOr3Px0CVwy0m0jIPj
         /dKG1lT6uI6Gx5Q0UcdmF/JwcB9D00dU0hR93yv37XU6xP1j4MMYwWCb+hFNyDWTQUOC
         TDuX1g+YfRSoR2WtbIYIcTNG6a3d7RqTLpfRguTwJgePPAollOztDOvS6hBVPig5pfR9
         lOSQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of pmladek@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=pmladek@suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Sa3LswgfvMEBQAZR15QewpFYUeqMUGkZfHI7bkz6GGY=;
        b=hA0k6OcRUQYGZAsUESdesWUDZMsHcRHpYqas/Mjb0zMr2sdXRUw7NYc0IKKNYknCVQ
         ObX+DPigKwQIxekAobBEifatMUY5SY6LoyliZZssLflB5/j0KtTdH4mLQUtgD4vWrV9G
         BElSJ6dU1km092qTVDnubz4BHsY7Nxun1iIxvvs/e/avF/yr2eX7sldX+sgJsyp91uFO
         e/8A+uwk8NluV91Nip52A7JA+rCyeIjoynj/nELhgGkIvrU+/JihMg853u/nnOnldyF0
         p8oLuNha+61gLLFuavp3Doay+yUkJgbvPmTFXH/BeZr7oOxOmTNuj9uo4pCrbHSFWz7F
         fhUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Sa3LswgfvMEBQAZR15QewpFYUeqMUGkZfHI7bkz6GGY=;
        b=gc52UVE55MaVrnewmvwUWE8CJYvOWCjv6mdFLJ7hDBGD8zmui+XTDnIjt7UCxkJyTD
         PGVsWllq3do709YIaHG5wUfPHRa7ibT8f9FO3R7Wp6TGq8WCmCAAuzrrL5xw69/KwNa9
         Qb1pfqcj90dl8EyFC3xKmjKtLxSLg/yvjBKMkDzuDztuXOFximccQQ3YKb9yFPTZOexV
         1vtzFa4R3f3vq3AqziK5K3H1ClGjv5Qt2Cya0kOKuI+EBwc7shl8W3D7d4wF4ZKYAEpv
         7oQQ2WCxWNT/dHYRc6pN7Lx2+ALnRL/3Y1lxZ2ajEtZmu2BQnQefWaj6oYwebIgkS92a
         i/1Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXU/eMNQJDLcEMSvIapT37XV7e2v2VDDrDoxADkcTXLlM9nglac
	Urgg4L7Bt90LNYPinJhnh/g=
X-Google-Smtp-Source: APXvYqxU6n3YOWCYc49AvtBOs/CTc9b1xLe8E/jwh8KFWVYAMXlMVfZg4pApHWLNyRavBSvxaXTCow==
X-Received: by 2002:a19:c7c5:: with SMTP id x188mr3586997lff.22.1581426307661;
        Tue, 11 Feb 2020 05:05:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9516:: with SMTP id f22ls2164025ljh.2.gmail; Tue, 11 Feb
 2020 05:05:07 -0800 (PST)
X-Received: by 2002:a2e:804b:: with SMTP id p11mr4200976ljg.235.1581426307032;
        Tue, 11 Feb 2020 05:05:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581426307; cv=none;
        d=google.com; s=arc-20160816;
        b=fGhkaXD/CTe9v6OrQYfAc//r2pP88HsyMMitVX7nODZ94x/YaDgVeWf8fJp3yC3NVW
         ikmpPzwZuJ62/68gMBZPolJd87j8i/sEpCKy2/fT1uehoR/mI1p6ecroymEYjU6rvbQQ
         4jrqYALzPcIX0s45CvJ5OIHejIrFLCCHIEsd1YlCJ1UYLszwnkAHTlDNVwQ5CdyWFAq2
         vG4sB9jyv7afQuHxrZ4oGo3fpkiaUoTn3g/qk2/6vzxXEO+j1dvlmhW3LD/vYJbd9M+o
         L4OJj32eiEJRKOjYlCUlb9IjQbX8u0VhDViOa/vNNjYMqEvpVpF6zND5+YEVsFlXPJF/
         nxsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=h0eLTXJODSG9urk7jbCwFOgzg3FrXVlRcd0IvdpMbfo=;
        b=pOtxgpM7jNrKua1FvLuhwsVfoLlaLe0JuA8VrHXlbPOGoPlaYUJRmJS+quFyUUcS7P
         9zHFBoVI/P7VTrU6jtpPm53N9qh5OSDIjoyu8Mx92gg2bbWODHvUoFbE+WSqW1f7O3Fz
         M4dZdvex2VMnsiLUzFRFtuSq8ksMl/HzGLb4Ph5mSYVa3O2ogYhq8TsWGMuZ322iym5a
         MiDyB8CNDx4NI6OaH7MuiermmGvDwpQuuF1tWDxdFhh6NWBtDoouiLqsEm81fwpkzoTI
         OlgERkAbsntkyrKIiTxhoGRk0zsH6lhh46Q90SAFogVgvoZ9rKiHuTiSEre7Dj9atS0L
         U8qw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of pmladek@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=pmladek@suse.com
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id b29si225609lfo.2.2020.02.11.05.05.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 Feb 2020 05:05:07 -0800 (PST)
Received-SPF: pass (google.com: domain of pmladek@suse.com designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx2.suse.de (Postfix) with ESMTP id 3BCF5AD2D;
	Tue, 11 Feb 2020 13:05:06 +0000 (UTC)
Date: Tue, 11 Feb 2020 14:05:05 +0100
From: Petr Mladek <pmladek@suse.com>
To: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
	Steven Rostedt <rostedt@goodmis.org>, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] printk: Convert a use of sprintf to snprintf in
 console_unlock
Message-ID: <20200211130505.2lj2fm6nslbwgmg6@pathway.suse.cz>
References: <20200130221644.2273-1-natechancellor@gmail.com>
 <20200131070237.GB240941@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200131070237.GB240941@google.com>
User-Agent: NeoMutt/20170912 (1.9.0)
X-Original-Sender: pmladek@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of pmladek@suse.com designates 195.135.220.15 as
 permitted sender) smtp.mailfrom=pmladek@suse.com
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

On Fri 2020-01-31 16:02:37, Sergey Senozhatsky wrote:
> On (20/01/30 15:16), Nathan Chancellor wrote:
> > When CONFIG_PRINTK is disabled (e.g. when building allnoconfig), clang
> > warns:
> > 
> > ../kernel/printk/printk.c:2416:10: warning: 'sprintf' will always
> > overflow; destination buffer has size 0, but format string expands to at
> > least 33 [-Wfortify-source]
> >                         len = sprintf(text,
> >                               ^
> > 1 warning generated.
> > 
> > It is not wrong; text has a zero size when CONFIG_PRINTK is disabled
> > because LOG_LINE_MAX and PREFIX_MAX are both zero. Change to snprintf so
> > that this case is explicitly handled without any risk of overflow.
> 
> We probably can add a note here that for !CONFIG_PRINTK builds
> logbuf overflow is very unlikely.

Good point. Well, the sprintf() was used for a well defined string:
"** %llu printk messages dropped **\n" ""

It could overflow only when anyone modified LOG_LINE_MAX to
something really small. It was not the case upstream, definitely.

> Otherwise,
> Reviewed-by: Sergey Senozhatsky <sergey.senozhatsky@gmail.com>

The patch has been committed into printk.git, branch for-5.7.

I did not add any extra comment to keep it simple. I hope
that it is ok.

Best Regards,
Petr

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200211130505.2lj2fm6nslbwgmg6%40pathway.suse.cz.
