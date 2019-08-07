Return-Path: <clang-built-linux+bncBDV37XP3XYDRBSVZVPVAKGQE6FCUIPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x340.google.com (mail-wm1-x340.google.com [IPv6:2a00:1450:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E8E284E58
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Aug 2019 16:14:34 +0200 (CEST)
Received: by mail-wm1-x340.google.com with SMTP id v125sf50908wme.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Aug 2019 07:14:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565187274; cv=pass;
        d=google.com; s=arc-20160816;
        b=qMCuyX6diuB+bciRvhVXmtwbkuRHRBD0g1idjDaxAwweRhRzEEDrgSKtBFsDBR437B
         I/LCopAJ2mWMKDyz5B3jY/gdSYAzIE/hZIkLlmakNddfaKtyCYnpSiusi6DR5IAa01PX
         L3ElaIIt2m8fUrLwzGlLUbjVXDjJCnv0fnQPpFJpNiHbOygcER0mxAFuE6Rvml0Thzie
         BqI2aUcNCqJzILbrQcGxsvV289OUCctieJ7Zg52Z0Y5jn4DRAWzM8ZfYe6sLE9aw/0t+
         wDKVuudMJZdNL612u+Y6OxKRfeu0Y0YqnbYJ4MO0lhaW9Als0Bn0hnOz9F4Wc0XQkyex
         sWUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=c3YRvsKTljLQtunCKpjO4nrB0fuBLauCfrKRlfWc6GI=;
        b=Fqk63hZR90nmoeyaz0oHKOgW2YHjKnuCUw6R4ofqAy4X4u3QR3d0Q9oNFceuyEmKth
         25OYL0Cz/E9PldSSRFLXiRdhqrjASAdYcrMDoT0obR+GGikzC0ZJ2h+Y7ycM+LS4hSYN
         QUwYG62GAAHZpfc+frEc6RmvmEJy60re4NbEYsfBRnNS6k9Q+wRlp9ZL4ke1za4EBw8J
         srNI2tTMt6Kgf7WDWOsqB85jbDQepNCzhmAAN2blYceqHGu0MsHNeqG0C0WKDsAdRHbF
         cFJglNAFp41GT9o7BIX300rP1QRXv4kWYXI+o0zWav8Vb4XDZ4p3lBafxmyDjfZtKcG5
         l8UQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=c3YRvsKTljLQtunCKpjO4nrB0fuBLauCfrKRlfWc6GI=;
        b=gz3GLIi/QpmqgQqxX10hCQ6m7aHfxA1o+VuwdfqLyRYMpehwpilzPXA+v9SWtK7pKS
         mD85iqPw30u1/susdvuPEBxcfBejnjcNdgy1I+E9OhtuIlxW34iBVnsdeRhAniuXueyN
         G2aCWADDyfLIHgvTrRbJoypAMhpycSwpGqzxSI+EQH2wcGX/RNS6PmDfL9av2JLo6BTi
         JxNjibIqMG7AiwBgqZ4gP+oy0U4EOyKStaIBQIkxDXWQcuKQzneAoodidrLBLBQA1A8x
         ZPjPrWnZAtJHEp/Yh2keekMyAEVEhB9Un1C+IPrPVEowi+ZqJC3ltdSaHeMMB1gQYLQL
         EbFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=c3YRvsKTljLQtunCKpjO4nrB0fuBLauCfrKRlfWc6GI=;
        b=RvKCIDZK5GwU3fFvBvF1QKpi8+f9Vm6YukV4ZQMUcz+TbhT+mheRScoJjwAzNWZTag
         xB1RdjkrzFNemSPDzLJZPjEnNYlf/AiUElzQQ8xGCTuFMdXGD+hH433ouEceSVuSsu1T
         ssnl4uCanwoewXj2xtN5MrgVaBfTcT77jVP1q1uJblAI2r6kmZaY6aPDT0zS7nHfaxLR
         n3Ky+vIUdSu92LO/YXPHde/G/0oYWH74ZMkG9F+K5vha7YzNJKKAdpsrtQTO+lypb1vw
         pMzpHvGfLxqL5WxvDeI6Nk1yuR8zG58tm4D2rXmopElSYQCnL6cJ34S1OD8vjKa6hM50
         EBlA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXqxuMHtKI3QzyhzGNA014m0EWRdRapx95joXvIdT/bVxPnSQFI
	yDLJSEppIaC82Du91yHyrh8=
X-Google-Smtp-Source: APXvYqw/aZ7+7RIjQUAQZ7NF1A6qBYO9rXdnYv3QQhap93hovkj1FrQzgssbbQVh61Zig/87a97X7w==
X-Received: by 2002:a5d:4742:: with SMTP id o2mr4843627wrs.235.1565187274355;
        Wed, 07 Aug 2019 07:14:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:448b:: with SMTP id j11ls26600748wrq.3.gmail; Wed, 07
 Aug 2019 07:14:33 -0700 (PDT)
X-Received: by 2002:a05:6000:1186:: with SMTP id g6mr11705665wrx.17.1565187273838;
        Wed, 07 Aug 2019 07:14:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565187273; cv=none;
        d=google.com; s=arc-20160816;
        b=nDKFzg9+reAFkz7lHqxg//1zz1LwY5vR4cgND9xFGcxxH9JAQ+ThnKSWYvui66lUxb
         6MniOrRYw9KJ/b31UatRhwUCE3SA85q+wXkFCyurhXjhdn/O8QNK9eVYIVkiP5daa0Fq
         5ZqRDooNaWsHJB0XbCnFpzxpDpTAQtSc/d8xTunYml9Lvp6kR8EIgfwX/1bQqZQ7DsDA
         dWPdREZE8VhVTmAZpGwAbFSAoV1k9/C5lc3jyYuNRKo2BgUAy+rspZ2Ckn59jPbRgIij
         BViqzU5bParH5HepYmCLjjcZxvxdtLZZa5fhRdQ9yXGPsA+lgE0A6VZIbLA4DjPkWhoS
         KyYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=xu9Ig73C+z1UsIgeB0H9EkgR2lNZ+/y/aGcruDULcaM=;
        b=qJ0+ie2Mwuw+6z7pb0kT9ub+CTE9OGuYe9baGbMVc2kP2pTYODtHfIDqpa+V6qDvAt
         wQqm2u3sX3WQzhJKYHqtE3L3OIoJ4E6BrQJkGg79kw2tr2aUPHdP/knB9PwTTppCho5M
         ehuIXKSBUpevYkolj/kMGDuVGOWG/XGWHKtLuwYRWH4T0ZTBxoDvt+64xTjaWRwsZW7C
         Omk+8aIKkPUHAJUk4mvCaqsZHpZ/qdvjTZE4xZ8ujDDvxIjO7Kfd4Ixwx9yadydrfbXL
         pMQ3yuJLCBoquoEHcy/8N2csL08wsjNcFO8UI/ItMf+1EJL+tO0tcQmMU8kArY9BG8qs
         A/aw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id p4si2466wme.2.2019.08.07.07.14.33
        for <clang-built-linux@googlegroups.com>;
        Wed, 07 Aug 2019 07:14:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0FBEF344;
	Wed,  7 Aug 2019 07:14:33 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E1A763F706;
	Wed,  7 Aug 2019 07:14:31 -0700 (PDT)
Date: Wed, 7 Aug 2019 15:14:29 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Mark Brown <broonie@kernel.org>
Cc: Tri Vo <trong@google.com>, Catalin Marinas <catalin.marinas@arm.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: Disable big endian builds with clang
Message-ID: <20190807141429.GG54191@lakrids.cambridge.arm.com>
References: <20190806183918.41078-1-broonie@kernel.org>
 <20190807130111.GE54191@lakrids.cambridge.arm.com>
 <20190807130527.GD4048@sirena.co.uk>
 <20190807135618.GF54191@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190807135618.GF54191@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-Original-Sender: mark.rutland@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=mark.rutland@arm.com
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

On Wed, Aug 07, 2019 at 02:56:19PM +0100, Mark Rutland wrote:
> On Wed, Aug 07, 2019 at 02:05:27PM +0100, Mark Brown wrote:
> > On Wed, Aug 07, 2019 at 02:01:11PM +0100, Mark Rutland wrote:
> > > On Tue, Aug 06, 2019 at 07:39:18PM +0100, Mark Brown wrote:
> > 
> > > Judging by the kernel log linked in a reply, this is with:
> > 
> > > * clang version 8.0.1-svn359952-1~exp1~20190504004501.65 (branches/release_80)
> > 
> > >   Is that the llvm.org binary release, or a custom build of clang?
> > 
> > It's from a llvm.org .deb.
> > 
> > > * Linux 5.3.0-rc2-next-20190730
> > 
> > >   Could we previously build a BE kernel with clang? If so, what's the
> > >   last working kernel?
> > 
> > As far as I know this has been broken for as long as we tried building
> > and booting big endian kernels in clang.  The compile works fine, it's
> > just that the resulting binary doesn't seem to be working so well.
> 
> I've just had a go, and it works for me. Log below from a BE busybox,
> but I also have a BE buildroot filesystem working.
> 
> For reference, I'm using:
> 
> * Linux v5.3-rc3 defconfig
> * LLVM 8.0.0 (x86_64) from llvm.org
> * GCC 8.1.0 (x86_64) from kernel.org crosstool
> 
> ... so I don't think we should blacklist this just yet, but we certainly
> need to better understand the issue you're seeing. I'll have a go with
> LLVM 8.0.1 in case there's a regression from 8.0.0 to 8.0.1.

FWIW, using LLVM 8.0.1 also works for me, everything else being
unchanged.

Thanks,
Mark.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190807141429.GG54191%40lakrids.cambridge.arm.com.
