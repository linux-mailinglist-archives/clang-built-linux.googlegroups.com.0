Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBYN72H3QKGQEYBFE7PY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7128B209B46
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 10:27:14 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id y3sf5221586ybf.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 01:27:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593073633; cv=pass;
        d=google.com; s=arc-20160816;
        b=bUcV+5QwXjMEQL0d3i2jPwRwxs8JeZKQHtxTmfrh6vWJqqeKMeNHLLT0JT6wk6zSiG
         L+tN6IwDxG7f/XF3OSPPm1nXfuC2mWhZdBG0BqfXP/6Hs8qXB3+z1icWq7q/1z6Yv8uZ
         m7b6m14Tt2OB5e0RD2aXKYE2FIqh8dyKem3Mjb4r6aVu43hbWswyuI3YZ4NrjrX490oA
         ssWfJ6LPKqosS0JilzqzeHmVCPo97sEZezv/Q8N/mNY6JkX/OkeVv8kzkuNTgZtmt4Yd
         Esu4ewVKJBj5FYlRAIsR9cs28QYoDsOQgLqNvzEZWBov221LQPT1ZpP4v3RHLbIpYm5S
         E76g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=SvPT1B3vXn2a2nLLChv6IMUec5Vzz1O2Q58HV3lG3Cs=;
        b=A90VccHZghGRijgjCeYkTyMwO7PBzVtuOYflZG+BRyXg1NhC0RcJdjAgkLSBispLOX
         ODCQD2y1BJo82K96VP5O3UMsvz76q2D+Gv4E+95gf0ThyoBn5eFnFgk1SouQJshIHrsV
         51byqRHTplPqLiARlVb4ae94Cj8xv5yzKPzeQ36g6boMOpDTxjYCy18It05AYR727fLm
         fBIOh4xo4GemrldiYvU3mXp26Eyd6NU8Bci3erWprN3QIcMKkAttxxgS49Df8f/G643L
         3RR4yahstZtzI4ub4Kvb1dQl8ma4ObAJNuOgTsDJmw3jgsup+EadUaBmscyzyZiLOpTc
         PolQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="KLWf/lD9";
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SvPT1B3vXn2a2nLLChv6IMUec5Vzz1O2Q58HV3lG3Cs=;
        b=hVFXatbQPLFP9SZ/nziQ7P7VCNwRVLqQ1T7SecsD2yENY+iLi+9KA5EhtP4Rivcg2H
         sPE4wrmSVcqgLWSjbfJSzGs1sBvzsuvGr/aVcSM3+qIN8qpKFsh3cIQjwzU1aoj0z5JT
         fLhDkctjPAuZ8qwXU1u/Gz8hK9CbuyslX70crzUn7eXCaeyAMvKhVe/utYuoJT3mNbXr
         5KVOSpa0piwznt3NdtYJYL4tiM7XZzLKG//MjkOaSTtAQG8igXNAOsPrpi9PkZqhr/+5
         0rsUOfqZjAEYcBeW4VSja4mILvarMM0f4wjBAr2tkzpwy7+O1vEu9ElhUPlwHAEAQDs2
         jY7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=SvPT1B3vXn2a2nLLChv6IMUec5Vzz1O2Q58HV3lG3Cs=;
        b=OBx7k73dIuTSBjkKZLmgB+hBlIcdAzczQ+Hgyy3QIfYuSuXyOkPpRjgyg5sTasqn0j
         kZq2YXgXKbfIX5cT74tATHiZScx6tqjMEvFsV40wFG3FSpPE0uj/bavUqQ6yZDpYLDVl
         myPAj021oGZEvKMTiUsYzOX6LTtPkXSwJ8oSu2bkWi8yUDoIlFjXdAqEt8m9W8quEizP
         javCjQfo5gY7+Q+qCeXOQhSQtdoaADcPmyH4PdQ8lZIOoCh+ArbkK74+P+phC8ve+Zqh
         HWnCekT69FPSB54MQwxKwpYwrVr8BhPOagMwgnjm5rsRxbQgqS5vIhEWc64gAkgQnayN
         FvIw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531PyHo3eLgNaxSViaBLP+hSgV4nP70EhHXsUTz5GSgz0hN5V9DW
	M7ZzG1ZCNS3EA7ngxud2LWw=
X-Google-Smtp-Source: ABdhPJxMoTL8AQP51eI2zkhLLSO/nXMQW6YOHohbbaeT64MWRQZ3p601AtazsHRyc4KB0QtMxDfxDw==
X-Received: by 2002:a05:6902:6cd:: with SMTP id m13mr48881467ybt.29.1593073633315;
        Thu, 25 Jun 2020 01:27:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:c785:: with SMTP id w127ls1765388ybe.7.gmail; Thu, 25
 Jun 2020 01:27:13 -0700 (PDT)
X-Received: by 2002:a25:2d57:: with SMTP id s23mr54269278ybe.11.1593073633058;
        Thu, 25 Jun 2020 01:27:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593073633; cv=none;
        d=google.com; s=arc-20160816;
        b=xpoWBgcw4FwefkhlhxEa4aE41XHf0CHZaYiIq/3HU/6FzJKFps8Bne2bbWcXIU3jjS
         DPkv6FaWRYRxXakJRUiSONMfVZlqEdFgLKD05tvxjkz8mn7j4kg2pxDtURzhHYM8QPEB
         P47flVQdesMOPDyFOmNl+UfbZiIs+hV2a1cmZheHz0I4hBblPoLWDRt/sSJaySyoRuN+
         LZEExa4bM/TJkAyKR7nP2Vz6ScDmbAoBFirsM7nzRwIlEGo66jR1DAhTu91X0z8r6PQH
         xQIJlR+vxe8sE3QrXpICzGqi2OaiA5+QE70e99Cuqx/z7rvWDiR1wcI1bH52fBLm6C0e
         gRhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=iPHigxRFQyCLUxH5g/l/YpFAIX0OSLLCHccRPdknfvs=;
        b=FmyDTeK9vLZwywP31Mfv9sL3SI7q3kRmSr7QiEEHDltQRli3h+08iclRkpKhISH/wn
         BndFY7FnV22Tck/Y1Ntc8mFznIPcA1RK3CShXJ7xgz7uZwQViXWZCsv9OM7Er7w4RA+p
         6zq+I+dPYSOg4Diax0g1wgHh/mgim5X9KKA+vSCWwGTJp9QXRPX7vrRO3urvJclPCy5h
         B97Rzp1TZIAY0/NP+gvWN06ZO6K2s+4AVOCxkPvI3FOUNbeBxTonR3x348E1ZpLDyXki
         c9xgJ+Hcgb4TiRYD/+ipY0UPIzX6SBOj6RIciDpCrgXXkSlHSjCr3yfWR0refuT3RJ3B
         Tc5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="KLWf/lD9";
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e80si16290ybb.0.2020.06.25.01.27.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Jun 2020 01:27:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id AC6FB207E8;
	Thu, 25 Jun 2020 08:27:09 +0000 (UTC)
Date: Thu, 25 Jun 2020 09:27:06 +0100
From: Will Deacon <will@kernel.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org
Subject: Re: [PATCH 00/22] add support for Clang LTO
Message-ID: <20200625082706.GA7584@willie-the-truck>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200624211540.GS4817@hirez.programming.kicks-ass.net>
 <20200624213014.GB26253@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200624213014.GB26253@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="KLWf/lD9";       spf=pass
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

On Wed, Jun 24, 2020 at 02:30:14PM -0700, Sami Tolvanen wrote:
> On Wed, Jun 24, 2020 at 11:15:40PM +0200, Peter Zijlstra wrote:
> > On Wed, Jun 24, 2020 at 01:31:38PM -0700, Sami Tolvanen wrote:
> > > This patch series adds support for building x86_64 and arm64 kernels
> > > with Clang's Link Time Optimization (LTO).
> > > 
> > > In addition to performance, the primary motivation for LTO is to allow
> > > Clang's Control-Flow Integrity (CFI) to be used in the kernel. Google's
> > > Pixel devices have shipped with LTO+CFI kernels since 2018.
> > > 
> > > Most of the patches are build system changes for handling LLVM bitcode,
> > > which Clang produces with LTO instead of ELF object files, postponing
> > > ELF processing until a later stage, and ensuring initcall ordering.
> > > 
> > > Note that first objtool patch in the series is already in linux-next,
> > > but as it's needed with LTO, I'm including it also here to make testing
> > > easier.
> > 
> > I'm very sad that yet again, memory ordering isn't addressed. LTO vastly
> > increases the range of the optimizer to wreck things.
> 
> I believe Will has some thoughts about this, and patches, but I'll let
> him talk about it.

Thanks for reminding me! I will get patches out ASAP (I've been avoiding the
rebase from hell, but this is the motivation I need).

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200625082706.GA7584%40willie-the-truck.
