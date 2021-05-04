Return-Path: <clang-built-linux+bncBCUO3AHUWUIRBAO2Y2CAMGQENKIZMSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id 338C5373151
	for <lists+clang-built-linux@lfdr.de>; Tue,  4 May 2021 22:22:26 +0200 (CEST)
Received: by mail-qk1-x73a.google.com with SMTP id b3-20020a05620a0cc3b02902e9d5ca06f2sf5489228qkj.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 04 May 2021 13:22:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620159745; cv=pass;
        d=google.com; s=arc-20160816;
        b=sJdzqUd+NanJBNKUVh7lKJlT3XWp/KV1g+dgN6YaqDd83xP9P6H1/X70zhFd8izqJS
         swaX2VQIRoiM7pg5rvP1vAskk2/OU9A+ZnwJfQM3jtTezBU+1zTewB90OyUydxu2RTgJ
         Sj3qR/3oUlAZAfhQkL8bZRezYtyXgcFbbmKZZsqSjENbvqq+bm6FgQn/YwpJ/pzNQ7NS
         6COH+N4MuZDhy2/DIRU+dnVGpHI3N22pEDX1SMFk6WAjFrz9tAQQ15eb2VF9IUtkHlRC
         WK6+5D13xBk0FBCRNjj6j0JNCTcNcRbbE1c9y4kogHBWc98nhngF94P1nbWxKwWojprl
         SqvQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=OGowtJaRpGwQvT/0xjq1wOQLbJXm42VYaAKFxdgp6l8=;
        b=08y/QQaezYyeUOCHL80IpPLmwDrF3aTwicxLLRSEMgVsomDf/f3YGYcArG8Uoc2RWH
         3ufmjXZuoJ9wCt10EKuimJtg9w3DnLmLiczrQ8JMMeKFPybaN8e3U+duVRAqlkQ+qbrW
         WllqRpFvZwEJTBJmCa0TBTbh601nQtEs03SwNUt2ac4bP9WRNCBDT0usOgE6BMjuVS9T
         PV20SeEx5xrIVrehjWWIsdEOLa1l0XrJ9h0V8q9Q1LDezIbOj9jtD1G/buSnm4m/ITc3
         sBfO5XZqmTMvPlqNW1t7xtIRSOAByDrUfG+Ugeq4AJK/Ju8P29bH3AF42WEUjG8l8IMu
         dqxg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ziepe.ca header.s=google header.b=cF72n9Kh;
       spf=pass (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::832 as permitted sender) smtp.mailfrom=jgg@ziepe.ca
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OGowtJaRpGwQvT/0xjq1wOQLbJXm42VYaAKFxdgp6l8=;
        b=TgPFm3uw2FkypjaO14WPDPi2PfzbwcUQqc8et73fYOUDFvojMGzUkyp1b01NEqRViA
         Ogpz+nyasr97ig3Y9ySWV70RJXSCMvt3iHVOihTe0XBKSS0AquIn2ZrdBZZhDrQzdzjB
         EJcXf8EGFAOsQRUL7dHrn+iFP+rgsY88FxFn5lZAtMy2d7GA2pywlLZpbjmTTbTcy+DT
         H/GPN6+1eDg+WhwigDjRtCDkgAsiZZ6Q4F4e+CY3HQOiMys5DeBDdYmGmRqff373itS7
         JTHDsIEYBsbHDX4MPUM7cPa3Yqqw07E613e2L+FkVHbIpVg7GPbxEffK+bOq+fGu8tdm
         JbtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=OGowtJaRpGwQvT/0xjq1wOQLbJXm42VYaAKFxdgp6l8=;
        b=OIJBOJIIwrtYRZKmHmwiQ24EaIMwwzpHjKi4zPDaIj2WXrWxUI/H6jHSLuAvxT+0XG
         FkVCAWHJrvKn/LdP/Mt4Ulhbbv32iG3jXAggEeHJnzyT7uhFKHdpgp8LEbWla6kU7oey
         qDfNj0p13W9X1nC3RmiCtcMzUG+j4ujcYMMLWubuHL0TUeg92Qn3SPL9MchXDa9cuA2p
         4jriyFZjyU+iKfYRn1Mz+w7bqvplK96kqXhvPwBOHoABKr5Y4VbzA3aOkhfyzg83WEcD
         Yq/QlRLgq+r+LNlm7t6kbeaEPIL4AfuHfGs+iZlsjKv/mbb4hkJuTvmh3u43R+mhhHaH
         0yng==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5300Z7TQze6/Qg9MavIUDxRXlcM0gufidDKS1eR6tRGpZMR+Dkj6
	gBjov2/0DHOA8HA5v/v4V/U=
X-Google-Smtp-Source: ABdhPJxMgn9lxygz8ps0m5Nl2Gwr+n1x9mKyqWiiSGZKYthJkjXoX5lQxkoQUa+EqLEVo+VNGbBsmg==
X-Received: by 2002:a05:6214:1853:: with SMTP id d19mr27385155qvy.5.1620159745103;
        Tue, 04 May 2021 13:22:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:eb15:: with SMTP id b21ls7086807qkg.10.gmail; Tue, 04
 May 2021 13:22:24 -0700 (PDT)
X-Received: by 2002:a05:620a:5bd:: with SMTP id q29mr11089812qkq.226.1620159744692;
        Tue, 04 May 2021 13:22:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620159744; cv=none;
        d=google.com; s=arc-20160816;
        b=FNKR0ycNlw3U05jzkanmD/oBkyP7OvqNAJ+4ggWWm2+9IwZB3xzelDNV6Bq+gHJ6b2
         CWF+9LED7ZzWA48AR/Ss5kTO90ttt0UyAcLLI5UHwtzOB1o7IraJgz5hPLQoVexDUB67
         G3MmEF+XAQJ5GOl3nJM14zPyIsBB+3eoCrh6wXjvUfSchv6mDmsPerX6oZ6hreNvPDNB
         OyBTxO3G4tEThBV+zMafmHZ3B0DGn/9X9nd8fHah6bQLgeLTaq86ZvbM5OKOi8dupsZp
         lL5BnklHISjV73782To9DfjCy807ecTVB145bZQAZpeEazhjThsOvyGBAljcijhnHqDh
         YuWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=wZ5rLmppeNysLxYZlMRY8jT3QJH17/ddU1plSVt+R7g=;
        b=HucrraR0R+a+kYMnmiieKyqTr4cGil7xKje8z9pHfr7DfxIwbWZqtyIv441J14gQ4M
         aiXJ5XXZDcPXv+qTVDiUu/U5VnoxzX0Rv7+qWv1SJ0AoKKEhG07giehf4oDtkkUXrCeD
         C18pVZouUVtZnQApzcSwvM4M9EiabD59+Y8MUbL0CjVC+Wgom472QlrLSVRjTwcvdZiI
         R55yCre8zLAqxQYqUYxxWSW1+n7FIRNQf1w+Cq818uX82fCAdKygyBM8L1Zlks85YdAb
         PkND1qf39+0tngII7lM98IkITWPywehoAz8isBpVJSFURoPGwaGHB3lV4W++A58fXiNf
         lvIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ziepe.ca header.s=google header.b=cF72n9Kh;
       spf=pass (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::832 as permitted sender) smtp.mailfrom=jgg@ziepe.ca
Received: from mail-qt1-x832.google.com (mail-qt1-x832.google.com. [2607:f8b0:4864:20::832])
        by gmr-mx.google.com with ESMTPS id g22si346613qtx.4.2021.05.04.13.22.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 May 2021 13:22:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::832 as permitted sender) client-ip=2607:f8b0:4864:20::832;
Received: by mail-qt1-x832.google.com with SMTP id p6so5685372qtk.13
        for <clang-built-linux@googlegroups.com>; Tue, 04 May 2021 13:22:24 -0700 (PDT)
X-Received: by 2002:ac8:4a19:: with SMTP id x25mr20683950qtq.389.1620159744382;
        Tue, 04 May 2021 13:22:24 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-47-55-113-94.dhcp-dynamic.fibreop.ns.bellaliant.net. [47.55.113.94])
        by smtp.gmail.com with ESMTPSA id f5sm12471396qkk.12.2021.05.04.13.22.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 May 2021 13:22:23 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.94)
	(envelope-from <jgg@ziepe.ca>)
	id 1le1Yk-000nvc-GB; Tue, 04 May 2021 17:22:22 -0300
Date: Tue, 4 May 2021 17:22:22 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Kees Cook <keescook@chromium.org>, Doug Ledford <dledford@redhat.com>,
	Leon Romanovsky <leon@kernel.org>, Parav Pandit <parav@nvidia.com>,
	Sami Tolvanen <samitolvanen@google.com>, linux-rdma@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: CFI violation in drivers/infiniband/core/sysfs.c
Message-ID: <20210504202222.GB2047089@ziepe.ca>
References: <20210402195241.gahc5w25gezluw7p@archlinux-ax161>
 <202104021555.08B883C7@keescook>
 <20210403065559.5vebyyx2p5uej5nw@archlinux-ax161>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210403065559.5vebyyx2p5uej5nw@archlinux-ax161>
X-Original-Sender: jgg@ziepe.ca
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ziepe.ca header.s=google header.b=cF72n9Kh;       spf=pass
 (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::832 as
 permitted sender) smtp.mailfrom=jgg@ziepe.ca
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

On Fri, Apr 02, 2021 at 11:55:59PM -0700, Nathan Chancellor wrote:
> > So, I think, the solution is below. This hasn't been runtime tested. It
> > basically removes the ib_port callback prototype and leaves everything
> > as kobject/attr. The callbacks then do their own container_of() calls.
> 
> Well that appear to be okay from a runtime perspective.

This giant thing should fix it, and some of the other stuff Greg observed:

https://github.com/jgunthorpe/linux/commits/rmda_sysfs_cleanup

It needs some testing before it gets posted

Jason

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210504202222.GB2047089%40ziepe.ca.
