Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBRFJ3XVQKGQETJR5REQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F04AAE4D7
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Sep 2019 09:46:14 +0200 (CEST)
Received: by mail-io1-xd37.google.com with SMTP id t25sf16233687ioj.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Sep 2019 00:46:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568101573; cv=pass;
        d=google.com; s=arc-20160816;
        b=I/W19p0MF6boJQJJWOfqtPqDuGQw2kb9357JinYrnDiUZyFOq/pDhGOO9qrp1FPHsB
         M5oC2wwHn93Cv8xY5Plglry71Vkdk6sOx4QL4xifnbCIc3ndvTa1fMc1oYARO5pHznHm
         bJ+mHgO3uSFxaQE85XkB87WhaWCRsmcGeapKgdJvJcyCOJHEJoBziMSvQtAK6u8EPNIX
         ZT0B4dpA7m9wIF0HrMVNudiDtMn/RxDC8JXZr80gQINaLQ83nwAP2DahrJi1hic1sy3y
         FibDVQw4aE1xB9vve73r4Jr7y+CR/vr29NHlebxczd9vsQuo1l2YUsvyjVPzM/kqrU1f
         rniQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=vPiLDuOoEzXxHlJFv0YGWuOG0yZtM66OAgYt7r8b2ow=;
        b=C7xSxc7RWR25keGEgyjGpzkNNkjABbCfU0rjMzIP3Gc7eEHejV5GWkE2RTt1or3oXs
         20Fa9L/fC8R8I/LbeBHOf98009jGSzRe32bzr0tXINT7eeLkiqbou7w7lRMZ0PeqDYnV
         IXZk6aWz2grnFz8HBqaTawDgdgcJBtfvcn+xEtPHq5JD+ryELZ44O1XE5/gp6oWxfhGM
         k1gA4NAOOfZsJAfl8985Sa/2wcH7nfulmzrqk0y4vvVdAlDnAZ9L+uffy4j23q4d3ECg
         3NsR0fJHl9k9SZJhn/Ryfu8gWjVLu56piWzG3HKeRWqgKnlqf1jTi0HLt0AhbHk7p5PU
         W8Jw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="OJ/93vM+";
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vPiLDuOoEzXxHlJFv0YGWuOG0yZtM66OAgYt7r8b2ow=;
        b=eqlDUEWwmfw3UtvDe7OkEb/GE64M8K/T+eOTjjBi5rEHA80X+Pi1DGYcm0WGJv5tGa
         T0hquElhI5nG/FhFjcB1VUcBBDVW3+ozX4d5kqfTy9Yxnya9lqTCP15mXdoszr37Rv+e
         SRqDAm1W1k+FV6hNQpzUCsYTfHiUDZ6BbH0AxGQU8SPFmxVE+tPCAr+/ibfpAevzM5QM
         4UxQHAp2scMWTPfZrrEPge0zeR8Vm9TjoJjdvkDu/AZfyK07VWTOPaoz+a6b/tbr2zg+
         D3NrWer73t2X5N1jTTVj9I3NCYhgPWNGOU0uz/0/CNrXWZ1LgR3nd1Bsq6P6rcBumuRG
         0UbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vPiLDuOoEzXxHlJFv0YGWuOG0yZtM66OAgYt7r8b2ow=;
        b=QTK2nZTtxBXMNHKQR79fTQBlSb2gYgGj+8wDQc3XY3bL4e0HwztS5/20v8Mo0XWGZq
         jTR+Pg7hFHkBAWC97Yj7ZXqqa6GdcrTcGdw1LiQlCCihEHakLQ+iV+Z41GIVreXLyAPx
         bvkK4Id29cehoF7zG5ldfpNskZDMvrg1BVji7vE0JKEc6oUMetPjBshdOFuqDS4vaL3+
         T6SuEpcNh59wWCLRmMNQB4XLG1G+sw7477Tz4vaEVHrVj3K03Ipsgur+zqONiATR9Ajc
         jaFM7b7OMK9NWSB/tUNxvMOrK38MdLbsVgQ2XryVHt41sghIIFvGxXhYfzu9RvxRh5Qh
         18EA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXl23zhgJl8PRo2WnySQX4VSBmkc9sCj85531GgReoHBu8nYERl
	VXAxHKag9NodZEJuI2PO1kU=
X-Google-Smtp-Source: APXvYqyS2aG+KggUlMaQ1J2pC3y3IxNjaVpjBTnahq+y+6RYoHkFrMXLrZ3P1kYSpR+Gvv3skuj99g==
X-Received: by 2002:a02:170a:: with SMTP id 10mr2761579jah.65.1568101572805;
        Tue, 10 Sep 2019 00:46:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:9710:: with SMTP id x16ls1390146jai.11.gmail; Tue, 10
 Sep 2019 00:46:12 -0700 (PDT)
X-Received: by 2002:a05:6638:692:: with SMTP id i18mr29692625jab.108.1568101572516;
        Tue, 10 Sep 2019 00:46:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568101572; cv=none;
        d=google.com; s=arc-20160816;
        b=TBBQqnSoUxRbpFvNNXCP8m7AojeQ7YX1MW2d9jb/ELK3rH2lGthLWnNeZTKbeQPbYC
         ieCJllw3zU8acTLOWTasBHZCfME0ZWbNajvdgAlkJ686MtbGuolIwR8Qy2JZgNg/9Owu
         DOF/zIfsVWBBAj86pp0ft9J4+/HDsrzX6+z58qqKUlgWMrrIBJlvyO/QkSjPtoQDFrCR
         Vof+A5qP8AGe5Ut5/q3fb3/WoGZ0T7jgq9aE0eou4deYGWtfKg3mPkZxOWx63XxnxfuL
         L3S8XTTjTiOQ5g3Gmj8tIotKO/z1hKpULTg4AGr5TCnd5VIxiGdm0IIwCW56crn46MzD
         g3rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=qCKK+ZwRK74U3hEJqtiKQ6iZ3hduhTpM7HIjKwVnRAA=;
        b=UBr4tOk6M9PCrrcKLVXh+jY/hW385aNqUOnvzCV7J3HrR6ebQRgDKJevsYLILUxDwP
         HD3dFjTwBufJufRHqTcLFlwx+5xa29+VK9TCc0X+SKaV2BkhZkTsvRpAcX9OGXbMCCfq
         gvo04s0Rtw/5WUoPbDLhVfJqtJ57YGPtypYFOFR/5YBfB8mnctljccGVg9XIQeJRH5hl
         NMtD+vzSDylPWixGW6M2icSihivqUZew/YUpWDo3WaDGo3AqIpa1tgzYzlHPRMVsekoA
         fb7BEo2eI5MkZw0xXB+4ZAHJOZ2j5mqYfgZroEYfNn2TS7TM441vG7x60mQaLFZBjrzZ
         6VKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="OJ/93vM+";
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b206si1130149iof.0.2019.09.10.00.46.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Sep 2019 00:46:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 543572084D;
	Tue, 10 Sep 2019 07:46:10 +0000 (UTC)
Date: Tue, 10 Sep 2019 08:46:07 +0100
From: Will Deacon <will@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Andrew Murray <andrew.murray@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] arm64: fix unreachable code issue with cmpxchg
Message-ID: <20190910074606.45k5m2pkztlpj4nj@willie-the-truck>
References: <20190909202153.144970-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190909202153.144970-1-arnd@arndb.de>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="OJ/93vM+";       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Mon, Sep 09, 2019 at 10:21:35PM +0200, Arnd Bergmann wrote:
> On arm64 build with clang, sometimes the __cmpxchg_mb is not inlined
> when CONFIG_OPTIMIZE_INLINING is set.

Hmm. Given that CONFIG_OPTIMIZE_INLINING has also been shown to break
assignment of local 'register' variables on GCC, perhaps we should just
disable that option for arm64 (at least) since we don't have any toolchains
that seem to like it very much! I'd certainly prefer that over playing
whack-a-mole with __always_inline.

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190910074606.45k5m2pkztlpj4nj%40willie-the-truck.
