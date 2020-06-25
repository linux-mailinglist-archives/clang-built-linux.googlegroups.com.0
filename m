Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBRVU2H3QKGQEJZ5S4LY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3b.google.com (mail-vk1-xa3b.google.com [IPv6:2607:f8b0:4864:20::a3b])
	by mail.lfdr.de (Postfix) with ESMTPS id E0704209AF5
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 10:03:19 +0200 (CEST)
Received: by mail-vk1-xa3b.google.com with SMTP id k128sf1147815vkk.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 01:03:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593072198; cv=pass;
        d=google.com; s=arc-20160816;
        b=MMgjx5JYzMiK+tvbkecH7p+MN2IqKCfPgIXqSAXjg1BA3qvAkYNQHOmuji90RBCJ1E
         OpEy4VJYAWSkeVUsmcXkR7HJvtHFiKbh7/xqAYYa8Apxfexf5yTerFYU8HFnvrU56i2m
         ZF6E55zh8hL8JPqCl1ucPe0H0Als1qGIEo1vyuS3Qv28wyfYL20qStNtgU1rZ1CjEghm
         zneH7yWE13ZyAkhmlgP0pcHmiCMd7Lk8NpJYCRibLSGbiFJ7Ciq+JCv2k4Y6mtS80Y/h
         VKvwFSqwNwRkcm7rmkPcw268TojsPVcjfOcASvxq0Ep5kChRdoy0Hs6cZOOlZrSAPn2b
         KE5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=xOm5C+Yirnp6UcWrqbk7QjwBAmMbTsbgagABXz26WeE=;
        b=OprzKYQ2Qc+pF8i2t0gWhLW4EpVpbB8lpcTDIxn+8krMOzjJdPc7tfU4yWc2i90mRv
         WWrID00r6R4ModyUupkWCPWYu2s5Xa42mFZJc1iB7hhbKPI4QGis0wagjPd6zyqAvB4X
         5yxuPsZpj2cCbvK61cmVhHToaA/4DO3ELw75mHOqXDNwuQjl9fXhTxcgpScNXnG0OUrQ
         Qiad0b7rWTLnapx+qV3EWpXpiVOIMKsFVMjt+jSAiE7NKxsOlgjWcZ5My3GNik3Z7sl3
         wxwKgRLtllken38cXUuZCfgykpjAmtiYon7L7Y64PGByiAkQv9ltsUmlovVhivWWjBiy
         20mQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=l8HijPFn;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xOm5C+Yirnp6UcWrqbk7QjwBAmMbTsbgagABXz26WeE=;
        b=IhH63zmG3IY/eX3uPTSnCqYzWYX84p1Oto/f0e+IIhqOm7a0t82WpVH+1GhjD/L1qA
         p7DQkDY1zdh4q+VtsZegNXBPw9QnRkhzUkch5XGz+snytflDkAkDwoA1ZpNpKQiiMPc6
         kwzif77U1bydyzVJAlEQQxqMd3ux49ApV9sFD/8Ck0TdsgIwDZe0iVzuS11T0Im7/WG1
         apHfcvA0ClbmCX3h/i2fwrtGdEgdDyWRUnV2vt4olz3O7qk23QeuD2BBRXdV4XaHmIqU
         rK25GzMSKAbfnld3TPrl3hRNzAtr+6wg+axSA2hGNSRGxCnmykskWRAfaQidlA1zsX7Z
         4pzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xOm5C+Yirnp6UcWrqbk7QjwBAmMbTsbgagABXz26WeE=;
        b=ZYtlenDNcrltGVOMxMKsWQ5gMRzP4gYlCxCr85b+OGGAFlT6uGyVoI66BQ4uCNdaop
         fNFflxlos9X0jWeXnZQfl8XARmm/cq1M5KrX4m1O61x/2vS7YWYTLq8+shDcgtSMTsO0
         AvF/KJ45r5mJue3bkJB+i4Qqz2cyhlo0VSVUx54oSPjbPWeocPs3NkeZM0gkGtHNDQ7n
         DdCu9qKWNWONps2NUwxzEGb4vzknK0e2uLA5CJpezW7cRT4MtYwxJCOjRXul3+xwMADi
         gNwjwvIx+iDdjl4rtN+7XM3zh6wXUXMAcuawCcLIQdENcdDQDAypPgcT4bT2neG50Xsg
         LD6w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533muPhEAnrmfoa8SLzhKmUwl/Br8/7ysDQCUZfdPZEHzu2zcSSM
	YZEOHDh6b8R3BnvZrHkW7hc=
X-Google-Smtp-Source: ABdhPJyLn960IAfRTJJJ0rAEbJlUCfX8UhejKhyr6llh0esIqlbWfAiMqBUPWmqCatW8KoxIbKQ5wQ==
X-Received: by 2002:a67:4c1:: with SMTP id 184mr5447765vse.102.1593072198242;
        Thu, 25 Jun 2020 01:03:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:1c01:: with SMTP id c1ls234477vkc.7.gmail; Thu, 25 Jun
 2020 01:03:17 -0700 (PDT)
X-Received: by 2002:a1f:eec8:: with SMTP id m191mr5781601vkh.47.1593072197867;
        Thu, 25 Jun 2020 01:03:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593072197; cv=none;
        d=google.com; s=arc-20160816;
        b=g/z0uvH6TqA8KFYuKRpT+wn+WvIVSODKxVYWi2MsjJeJQmHRGRqWg8udJdoF0O74rG
         GhBPZwNSbkG4Lub2G2s3aBNEBSfYV2Bs0cSTOyxINwlRfBgQMajdZ7rL9qbE6C56ZM85
         YM2hhZnU/XPTqP9oR+S4P22PmrDSztwvIwlBJvIn87mvEIeYq6uaCMn93EvqxhYi81RY
         /MideN3P1m5OiMl3DeN1N0zcrP0w321HNtm799EbDgQwxY3pxjuX8RlurIcj5bH7dh65
         Df1HhSWtzdEsgdNSQpnOWVm6iCP3FD1t4zXyO13dmURUKPZSDLBHvsRrF68Ektj/H6TL
         idlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=my2nyr72K0k6RU4vPxhUnXlcUiYtUEccfUZzce3A2lM=;
        b=oiixiV/f1Q3wwkzC2cDC4jnYV6A2cNaQiJoLtl2bZ8nzJ1G5t13F5ob159E6JROJOq
         KAdjq9QC42B9W8JT0RbxIGQBbBy1QH9/A3lgbLpHcFkJ3lD3qH+ptNOPbAzLEMlNy4lk
         uGPWadOa1GdvBT67SJFmIo9Kis9ToRc1bcJbyjrL4hLbBtVe19kQewBVpcIkghRyM23t
         TEtxgrsf/N2xsNkSk2Th4JHF+FdTLg32qmgUxfvCopZx2sW/MamKk2mdMFL46r0gfrMv
         Ssl5HtwTjtbgvluSnNT5vGrMNgAMhfev/3PbW3W3IkFdDnAswon0JDTPGHFZUjSr9t4a
         0pRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=l8HijPFn;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id y7si106923vko.5.2020.06.25.01.03.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jun 2020 01:03:17 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1joMqo-0002O9-K3; Thu, 25 Jun 2020 08:03:14 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 672C43003E5;
	Thu, 25 Jun 2020 10:03:13 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 5304C22B8EBE8; Thu, 25 Jun 2020 10:03:13 +0200 (CEST)
Date: Thu, 25 Jun 2020 10:03:13 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Sami Tolvanen <samitolvanen@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Will Deacon <will@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>, linux-pci@vger.kernel.org,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>
Subject: Re: [PATCH 00/22] add support for Clang LTO
Message-ID: <20200625080313.GY4817@hirez.programming.kicks-ass.net>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200624211540.GS4817@hirez.programming.kicks-ass.net>
 <CAKwvOdmxz91c-M8egR9GdR1uOjeZv7-qoTP=pQ55nU8TCpkK6g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmxz91c-M8egR9GdR1uOjeZv7-qoTP=pQ55nU8TCpkK6g@mail.gmail.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=l8HijPFn;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Wed, Jun 24, 2020 at 02:31:36PM -0700, Nick Desaulniers wrote:
> On Wed, Jun 24, 2020 at 2:15 PM Peter Zijlstra <peterz@infradead.org> wrote:
> >
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
> Hi Peter, could you expand on the issue for the folks on the thread?
> I'm happy to try to hack something up in LLVM if we check that X does
> or does not happen; maybe we can even come up with some concrete test
> cases that can be added to LLVM's codebase?

I'm sure Will will respond, but the basic issue is the trainwreck C11
made of dependent loads.

Anyway, here's a link to the last time this came up:

  https://lore.kernel.org/linux-arm-kernel/20171116174830.GX3624@linux.vnet.ibm.com/

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200625080313.GY4817%40hirez.programming.kicks-ass.net.
