Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBYOOWDZAKGQEVMB2Z2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3e.google.com (mail-yw1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 444A4162DBA
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 Feb 2020 19:05:22 +0100 (CET)
Received: by mail-yw1-xc3e.google.com with SMTP id c130sf15943037ywb.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Feb 2020 10:05:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582049121; cv=pass;
        d=google.com; s=arc-20160816;
        b=JH3aoaVmWu9UxGQQQ6EcxUQEjSVMueLJa2O5wWHFLABsErCXFMv+vEPAritRiZiG4d
         HvXgoTNEhqzM1DDrIvy65Z8rdjr4zDV0V1ywqMqEf3CG4Kfi1NFX/qqV0cHbSxI5NqOU
         IUAFilGbc9ZuE0uaAC8L4lcSRi502xnHgTFq02l9vz7Pj22PqhiOyYLNnOqpl8FCGrvX
         /R/DrB6J+N23o7W40jNs5PETmlJGtkDfcRAwI1l0R4CZMcggsoHhqolGTczgHzOQZzm6
         ZF6mWuMobC8HaqomGQ+dooJ6GAz7ZVEiGOrcOsyBFTUhF4571WUBa++zmTDuB4lbbMw3
         gZRw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=zZDJbYvilGMfLiYkS6W3L2lg0wc48RYsuDpSrBfpT8s=;
        b=Rxg6Ctg2Vxq3uIdJ2qt3ncYCqsHzeUgAJ7hDtUWogyNL6D2yILNqsDm2ohpF3Ufcrw
         QwuYIAaX0WbZtlCCeSmE8sfbyOw03w14T7jkRg4BAiGywJjeMDCfA/YndfA3wEz+H1xC
         nOHZdrGknFkC96MhmZMQoijIOoX/awzFz3VnSXhZMal6UN4tEczQehiUltkaqKd1RAzK
         U9h+TsefL6k4O89jtw3nA7gThrYJLT9aXmCABVOPce9X+i3XHk/xKknACVf28a2D1DFg
         kookw19zqNCRNUioOL5bWnwkwE42+48B34HadBGjCD3VWdGmkhZoj+CjH7Ls27cfB6p7
         ut/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Yo8zCDNl;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zZDJbYvilGMfLiYkS6W3L2lg0wc48RYsuDpSrBfpT8s=;
        b=XPTyVYS/2+1sITtY70GRiQn+PsC9RawHOmzALzb3/49subbkNDxE3FR0/n0vsecsZe
         Q3mxQKVlnGbNYUA4DiwK2mbKKW7bkmr2/HWaNUZxitb9VNutqhiyk8WYyZGEbrn4baVS
         6g6AlNNvrjjHslHhPJjGwR6iXAmRZqR6XSMB5jQrok7V7cvgxBIgHU067z6aamnAQJbA
         nuZyFf2KHVAG6s6+/q9TYeq51EPKfaU7kq/5U+P+KEGl3iJzUeDLXPprzjwvEXEkP7TU
         3BmQq5e43s+dMzluZW8dMyWTAZEUpcR39HNAwvHqVBBU6vkNfZ9WiboK6Mmy/7VWaups
         Gd5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=zZDJbYvilGMfLiYkS6W3L2lg0wc48RYsuDpSrBfpT8s=;
        b=fBmPqVLxtgLMt/WGSTo5QZUJiNG+SEJu4y3JyaaGCH9V2+BkwARRRY6AXcJW0YeUYk
         n7m+H9T0Nr3V44W2ZZJYyJgN5n0vMXwWGIgbZDxKIXyHVCsdYoudkjS50ciY1HfgrLvc
         cWnvtZ2vbJ+BkJ9vb5Rk5yASCwmTvQ2rl7NcbYkjUo1ugg6Md1B3tB4spdKBILQHXZvS
         uhHQFJSNzOFFgloLXu0XVqfM6+qbwYzSseCo2bQyCjeAAkbGbJdnFOqjOqr41SiRCcpE
         y6CJ24L8soEJoHpokrLISeJPOOf6UFo2F6Q5J0X/eWKOEwg+MUZMyTeGxdiltWioIPRm
         cZVQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU95v2+vEunFYMkjDC9q5UyiREYcHAJqL+c6uO62V43VhRIn/yr
	c0Bk+xzhnMCXcxypxFjKgMc=
X-Google-Smtp-Source: APXvYqwl01szdiuoj/el8B9LS+XN/8J7e79+h5HYejbsJLCHXINiNl/ggMdT2uUt+uu0uJ6OiXsATQ==
X-Received: by 2002:a25:33d5:: with SMTP id z204mr2139868ybz.287.1582049121175;
        Tue, 18 Feb 2020 10:05:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5b:888:: with SMTP id e8ls3370402ybq.10.gmail; Tue, 18 Feb
 2020 10:05:20 -0800 (PST)
X-Received: by 2002:a25:2d59:: with SMTP id s25mr21657925ybe.149.1582049120829;
        Tue, 18 Feb 2020 10:05:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582049120; cv=none;
        d=google.com; s=arc-20160816;
        b=kkA2SFz4iZnH1s1F8JHl3WTwfAaTdhZIEd5q3I1PXF5rv2l/7wFPlEmTMP7og5AIMy
         Gz9dlVNMrVwhATt3nh8aoeNAxaqAdR5EtL3ahDHQ6vEmOtLJcn0xqVUuA1saa/JxS+VC
         MS3UXNFaYJk6J+K/LW/4IoZ63JAhMeCpB+OmX5MYfDeNn+qrDRRLBoIxV9HJXSbt0xUv
         Vbg1aNxmUm6oG2x9VHWnXL9G/WzIt3THeHwTDIqu50JJvCHUe7Y+mQSTpuFyxmDctdBn
         +4qPtwBYRrKmPt4s71J4XJ3wfSd4hvoMmeDs54sS+r6sSPcvms9Ik7OHSYYUTA8Lyt52
         1Bow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=txMPBhbV4V6iGmW167z7Gq/k7YVXO9AkI0qX1kDT8uc=;
        b=TXfvcQ7fZxFMQQbvtHjkO4W1uIuI1z7QnUsxiF4rquOCzZpG/1Z134yiXtES8zpbaV
         UirOUlLwfgX+7Zu4KOaEHhgO6Ij/qWnOFuZ7tPKaVp/4otBIc7cRENa063HQmTQAFsHC
         tkb+7zqcZCq72JvNr+7u6H7GHvFxD06xnSstfnJNQ8Mc6KMoT8Wgmf9EFmp+kJrzRWle
         hy3LOvQDMAv12RUvPX1jKhiMSnF9OoBfVhjq3eDIQISgmhlQVqaKKJ8+JPKs/1WaErJJ
         7sX0wDNHUgUAmYEICMibBreNZYZGgBlweAYK6mwH9mWKHsqutsy1HyInDwpiWEKUCIFl
         b9vQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Yo8zCDNl;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x10si277919ybs.1.2020.02.18.10.05.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Feb 2020 10:05:20 -0800 (PST)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9B3C22070B;
	Tue, 18 Feb 2020 18:05:18 +0000 (UTC)
Date: Tue, 18 Feb 2020 18:05:15 +0000
From: Will Deacon <will@kernel.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>,
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	amit.kachhap@arm.com, Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will.deacon@arm.com>
Subject: Re: [PATCH] arm64: lse: Fix LSE atomics with LLVM
Message-ID: <20200218180514.GA2655@willie-the-truck>
References: <20200218164906.35685-1-vincenzo.frascino@arm.com>
 <20200218165451.GE1133@willie-the-truck>
 <CABCJKufJemUuh2SH_wBRe_g1HUA7mzOu696yLPj0KRCxD=DXcQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CABCJKufJemUuh2SH_wBRe_g1HUA7mzOu696yLPj0KRCxD=DXcQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Yo8zCDNl;       spf=pass
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

On Tue, Feb 18, 2020 at 10:02:24AM -0800, Sami Tolvanen wrote:
> On Tue, Feb 18, 2020 at 8:54 AM Will Deacon <will@kernel.org> wrote:
> > > -#define __LSE_PREAMBLE       ".arch armv8-a+lse\n"
> > > +#define __LSE_PREAMBLE       ".arch_extension lse\n"
> >
> > I'm ok with this, but Sami assumedly changed this for a reason in
> > e0d5896bd356cd ("arm64: lse: fix LSE atomics with LLVM's integrated
> > assembler").
> 
> Correct, I changed this because clang's integrated assembler wasn't
> happy with .arch_extension lse at the time. However, it looks like
> current versions of clang don't have this problem, so this change
> looks good to me.
> 
> Tested-by: Sami Tolvanen <samitolvanen@google.com>

Cheers, I'll queue this with your tag.

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200218180514.GA2655%40willie-the-truck.
