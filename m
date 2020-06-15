Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBVOGTX3QKGQETDFAUBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id D8CD21F95EC
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jun 2020 14:02:30 +0200 (CEST)
Received: by mail-qk1-x73c.google.com with SMTP id a5sf14041930qkk.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jun 2020 05:02:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592222549; cv=pass;
        d=google.com; s=arc-20160816;
        b=yaKR2n1F6NnyOTXjD8o3agjPKSi202MyH2lU03bEpbau9I5hTCRCNfxjAD7KVZUYua
         sUS6+pkkcpvZnl88bbrMCNM33OaNNXYF5LrbCGVSU1+zIgRfMe8CV+7HX90WfgEr2lhD
         7rUoQVravhURKJwjh7LPYFGM85OPABhNBJ21dsiADnbpWQoaE+7pA6m7F30fCTbUf2Wn
         DMT0j7Z6K8Hd9HXLSZxBPbT/wjb9LBMv0O7FjDFKB+rE/0sxQmdmTvY7I3AlY3fB2q14
         zJ/4MAbonAb8/Tn6rGuXqLVxGTJclY37VFQbL01uFGBAnjrZErSIO15pxyChnAuWYq9U
         h3pQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=z/yFhdD0QKR1sgqPU7RQxavVzQFIgW4xGl/CgUsrX9M=;
        b=k3L4r08uyJPCLVl4PztlR+vq2SkDnuKznEelaIJ7SdrSw7t+3Vlm6A9FVikFErPFOK
         q2lERz9QzrTov6sOIq8Ua6yUf1wPav6iEVs9zSYF/JNvSuQDb3iys1i3RqImTU93pRn0
         qNl7xiHCYR1BLGRfznr+5fLyJLtd7R5n083zxZKURRmd57MNkHAoinyy3V5jffivdf7E
         sxOAY+jCqmKDTgXvM6gLOTDhRa8LkqR+Cz5MI14xU91Ac9DR40MWOksZ9j+RuMAQQBch
         T9GpZ6xQWY9QN4gjyOn1gnKywSxPqPNMLSlHP42q82DOP+8uPuLPV6HQbZJHesr/z26t
         7KWg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=B8ZeL55N;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=z/yFhdD0QKR1sgqPU7RQxavVzQFIgW4xGl/CgUsrX9M=;
        b=RH1FND746CLenkBFeKsOSuZAs4T/bno/DFVHHaOHWHZ9qX1grwJhVcNIf2rQg1jdCo
         XQwY62FJURzhnKbc6xvII8CTGDeGb/fpU6wHLQX4hEttXutlzZ9f6Zlk6ErjV+IsHHlh
         LdAbAdahWteawHmRKdv9EzkJWvXrxz4uEZKAtugenC47yYxg5uHrZprwP+1JgC82SF7L
         UUSRcyTgzdnas6uum/+QgzXNBJGKglmuH5n80tChwfqQaqEdS2JuR1uH8FrpeOYLIjDp
         t1fRY1l+d2XOL3OR3j2E4DPwuTSQC+rLQGZsiGvDkbuRc4u8bSkUvJO2DyXv58+lTKlJ
         KOtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=z/yFhdD0QKR1sgqPU7RQxavVzQFIgW4xGl/CgUsrX9M=;
        b=UsQEXzLdLv5EfCN6KHPIbKKGh1xjSA5jd93QtPIZhIf9oWej4hHCVLH0UR6GjLtbD4
         WvYEijhqhEmPvwQJcMuYCFqgrsu2SzIr2mbusmpu375CD7YvN49e2sHVj36kFqeKWEM0
         +CfJz+s/MRefInub/g01JYvgefjyj80OjekQ8dJMmOkcFMV1nL76AwwI9N5GgOXiIg3I
         x/9V+FDM5yRKGyot19SPxLTva+/ocFGc/+GvToyUzMYP/Mkrf+1GQOWMZ85NA9WP8mU7
         xmCJjnTznow5190I/JbNPgjHbjT8Np+lunLplCCuvqSoXabrFhy172vpH4Yd3m9/Pdld
         feaQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533TrkqwM4hgwPCS5bTg7Osmeg/FheqJGdEFAnvfnleHFgy+1ogf
	1nwkOz6yF3NpF/7sy8m3Yj0=
X-Google-Smtp-Source: ABdhPJyDjRBCuAf0pWBs8tuHHJC18fXLuCVDOjjzFNgewXmEjJJ2AWDZE1M7hVEr0o3VdAXZNwGPwA==
X-Received: by 2002:a37:9d52:: with SMTP id g79mr14941784qke.331.1592222549767;
        Mon, 15 Jun 2020 05:02:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:78d:: with SMTP id 135ls6482227qkh.8.gmail; Mon, 15 Jun
 2020 05:02:29 -0700 (PDT)
X-Received: by 2002:a37:68d6:: with SMTP id d205mr15568566qkc.275.1592222549303;
        Mon, 15 Jun 2020 05:02:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592222549; cv=none;
        d=google.com; s=arc-20160816;
        b=CwkE/afE0bVxk44vGIMrSzUasgLfLPDFmsSZNQKe3tibixsluvKf/8E2TWJzQ3hNig
         2Cc6rVHZc5WDnGnTkB/lZMDzBneqxhtRp0hzihd+Vs6jWoxJi7UvIRLr+2z1ctQVKSal
         B0N33dk1IeRXMQX//b1dKpag+ioY50k6nN2nmwe/GUbXJiy5fvxQ8AVfGp3qAp9Twte9
         puHC2dWlTBfPOM9WIRth9Td/lumHMO7GYw37vHBaop8zCY91vwSI9lihS89cAiI7c5TD
         ZNfJXj5mJ6mUVIPMkzOm8kYOCQevhGYKQd/v894i9oBzflcuG+V3QmrDuQHUYfQuesDM
         ks/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Zu+XVzcpZAZ1SfEmg8EphowmbHkpH6OSOVWHJ1osmSk=;
        b=YeJQApdOv+XPV3R5vo1hPJHw3t9ZUpPPlBkxOsX0+JgHBqxwNKI6vzy9ToJrshpmgr
         V62M52QRmSDM39pyxkFnOIjKMPxysWkMI8J1OLvIsWEfmQIoZ8EF44404dUjQ2DWYbJK
         +emDifYD0WNUVidxBFVdhCzX6HlMVcJcjFqcPPZQCLHu+3jiGoIuBjpodJsfhsI4HoQ6
         wPPLtQH9KyVKwNCOa6gotx3IFtno0FRKRauN3iDOBV1DSyYpyJRE9qKyUu3Z/Iaf4Hru
         K7AAqlFnLcxiattpYr1fj0Ktb7UTOXdYPKhc5OEuoA63PIcb3vyU0Geoo4zoZ2bolMaX
         dgnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=B8ZeL55N;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m1si972806qki.3.2020.06.15.05.02.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Jun 2020 05:02:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id DE7A220679;
	Mon, 15 Jun 2020 12:02:26 +0000 (UTC)
Date: Mon, 15 Jun 2020 13:02:23 +0100
From: Will Deacon <will@kernel.org>
To: Mark Brown <broonie@kernel.org>
Cc: ndesaulniers@google.com, clang-built-linux@googlegroups.com,
	linux-arm-kernel@lists.infradead.org, mark.rutland@arm.com,
	catalin.marinas@arm.com, android-kvm@google.com,
	daniel.kiss@arm.com
Subject: Re: Clang miscompiling arm64 kernel with BTI and PAC?
Message-ID: <20200615120223.GC2694@willie-the-truck>
References: <20200615105524.GA2694@willie-the-truck>
 <20200615115337.GG4447@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200615115337.GG4447@sirena.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=B8ZeL55N;       spf=pass
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

On Mon, Jun 15, 2020 at 12:53:37PM +0100, Mark Brown wrote:
> On Mon, Jun 15, 2020 at 11:55:24AM +0100, Will Deacon wrote:
> 
> > Here, the switch statement has been replaced by a jump table which we *tail
> > call* into. The register dump shows we're going to 0xffffd68929392e14:
> 
> > ffff800010032e14:       d503233f        paciasp
> > ffff800010032e18:       a9bf7bfd        stp     x29, x30, [sp, #-16]!
> > ffff800010032e1c:       910003fd        mov     x29, sp
> > ffff800010032e20:       aa0803e0        mov     x0, x8
> > ffff800010032e24:       940017c0        bl      ffff800010038d24 <kvm_vm_ioctl_check_extension>
> > ffff800010032e28:       93407c00        sxtw    x0, w0
> > ffff800010032e2c:       a8c17bfd        ldp     x29, x30, [sp], #16
> > ffff800010032e30:       d50323bf        autiasp
> > ffff800010032e34:       d65f03c0        ret
> 
> > The problem is that the paciasp instruction is not BTYPE-compatible with BR;
> > it expects to be called with a branch-and-link, and so we panic. I think you
> > need to emit a 'bti j' here prior to the paciasp.
> 
> I checked with our internal teams and they actually ran into this
> recently with some other code, the patch:
> 
>    https://reviews.llvm.org/D81746
> 
> ([AArch64] Fix BTI instruction emission) should fix this, it's been
> reviewed so should be merged shortly.

Cheers, that's good to hear. Shall we have a guess at the clang release
that will get the fix, or just disable in-kernel BTI with clang for now?

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200615120223.GC2694%40willie-the-truck.
