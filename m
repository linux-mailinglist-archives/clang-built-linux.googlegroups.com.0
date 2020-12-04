Return-Path: <clang-built-linux+bncBDAZZCVNSYPBB4EFVD7AKGQERDNUZAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id D5BB22CEAF9
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Dec 2020 10:35:45 +0100 (CET)
Received: by mail-oi1-x23c.google.com with SMTP id i70sf2317417oib.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Dec 2020 01:35:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607074544; cv=pass;
        d=google.com; s=arc-20160816;
        b=PbiZ+qjGQ6OTdwKAs6rd01SPtebc9+MphMSySK5X0+JzSkRabH+14d61L3cpm7rcIT
         75KjhGPUsoNI7EiYOaUNlPB9e02a1wEIyOD4ONb77qvA3G5CwneUTwDAvbyz4xtOPh98
         R42Ih5WaHHgALgByYpOP3MMYCrG1+ikUygk1EApX6cwPrX+gQzb3kB2HIq/fYOdXCQlc
         nr38uSVZqamCX7YPPauv3d822bLEeQEGaIZUVt9agSZbN/EhC5q/kgR2iG3gEL4WlPtq
         LpUMK+Ksvv2UgXlBNZiW9VRCe45zO6NDdT2TaSUrKnkEjgry6mnddYBIsWpbgyPWjh04
         M56A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=7cj6SPFj4z5cAtFRXVNMoEeR9zNJk+csXjAxCJdBI+M=;
        b=jO0SRxlZ+K5+Z8VGahPeXR7X+fey4npwcaBCiripFfK1y+QROAnat0xgmtQVQ+kE2U
         P1u+1ZCuNXmGDrs0fv6SfwUH13vB11Mp73neGPJbhCB+ORyG1xevvrXwI3d+v4Sythr0
         N6xU29sIZbzcegdKpqVd72MLu6nDDFaFnCpqsrHyc+UhHl+i9jK1akjfbiaDOIDatilC
         UERehWP1EbXzs8mOCjIA1u7jj3HsJEEyT7qVpuI3cxHahg7PJlerxdY379BjGS4SaZH5
         /ZtZUx5Fqe7VwZCNcC//JZOubDNfUkrWBrfSYC3sRLoWY9pGNdVnv0HrHbVIEY5hwZoL
         rjhw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=GjN8UC0T;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7cj6SPFj4z5cAtFRXVNMoEeR9zNJk+csXjAxCJdBI+M=;
        b=U8ozNUnm44zUz+aYid9/G21ISZxKpbAA+OvFOyvNFkVpPMKH/4wJ70RZRKVCIitDWx
         Y4bg2DjS+hIPVjGgCFe7ziX6LrknqkZu+BNXp6mrTZHbCvmfqcUSQHa3R/sY+WS3sTWB
         HGtjQJKS8AWBCCwXwwE+vnd39P/gmufJEIhZ4gPpLR+YD5dTbEOp0WyBvlma6tZCA1xF
         XNqrM1cjSVn33JsOQAtuQek0nr37/ijqLPACzhNjdxLsxmai/8KUzkK6LHW942i6klVX
         dDr7q14WnsKJOTiEm7Z53mjSJ2ztFR6vUILnKX5UYWGvCoLkKWqmRz8LoIQY5AfErhqn
         OZXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7cj6SPFj4z5cAtFRXVNMoEeR9zNJk+csXjAxCJdBI+M=;
        b=Q2T4CGS4ZbqIMaUSzwD/Si9mydE8EVL00j+IfSf9bzHU3dCt60x7cB6GlS5rMkFHYE
         rVN49FoOe4gqq0qM65MXnvjeBi5q4lJwnmy09g9dXLrPBxc2yzYijVYo3njaJ8RBBaZa
         Rx0IndEwV75yPj7zH6WMqTAKGtm1zZvlI9Rgz7GRb8QJYptfCxPzNoMBvADEK2uczNi4
         I/FfjE8fqH4/vRPd6BN4lNNGSfpT2uUEigNGpfnPY8wrlw+nTDpn5MoxFs+kh2zNUnPs
         d74r6U9Cw3yD8qhL2PP9uUkm2NKkyAoWbVN8/mFYPEZ8DhdlFkbczuGNEnCl2Az90EBL
         iYGA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530A/f6DoCMm8Qhh3xS6bMhAT/YnuONgBOxTdswwB5VavdlrmIDF
	DZeiX9tX8Pp29eJBrC2NVfk=
X-Google-Smtp-Source: ABdhPJwII+IE/z7dachMqDA8P1YKpwC5pB5e0MTJ2QNPb58Qb+Y+wDqZ2FsB5gZtYBMIIkDgoTyXlw==
X-Received: by 2002:a9d:7443:: with SMTP id p3mr2835673otk.10.1607074544498;
        Fri, 04 Dec 2020 01:35:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:8c3:: with SMTP id 61ls2214011otf.6.gmail; Fri, 04 Dec
 2020 01:35:44 -0800 (PST)
X-Received: by 2002:a9d:7ac8:: with SMTP id m8mr2901204otn.86.1607074544089;
        Fri, 04 Dec 2020 01:35:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607074544; cv=none;
        d=google.com; s=arc-20160816;
        b=u6hBlmDRQjcrTS2LgFOLj1lt8UoV5N0lYmBe/rHy825GqTWMNN4DBHB3AaGo9bkmMm
         PHM/3HjIZUJXXtsMkLfztqbQ+w74BizT6hSxwEobqgjCtliRz/8hLj70FEBTjPAwOlhO
         FY1XKmNtPQT+gmgcsnGEeTUr2yQVkCK9WX8NqThFlmpJm+LvWvU05fh8xpnVe0dXEVWB
         3XNMgfw2nVGCo2eS3AcabGLtj3CLaB5az3FYSXFq6WDcsghw/O6im5CvUwc3Ab/YR10w
         wYWkfwaREOHCSMbtJjXM7r1SPPVhmFoT1UCvB94pwNh83CmCFiWuZDALxsC1HGIveFax
         VBYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:dkim-signature:date;
        bh=4urIOb7AL6mTGLl8jhxhtNpnj2h6V3SSGkJ/XFctUuE=;
        b=epINGeV7xHVOof8IhfNXpNIv5Bhg4/Gx6ViIyHFRP0J5M7794Oam2yq9/BIn26mRem
         KrMJRZw6ZicgWGei24bncOhoElaX/FMWZi2y39cbrEhgs7fHbK3bedL2h26afwkUN/y2
         1tgSYh9Dq4TbIzuGLk3xxCASci0ZmTrwX5CUG1rbCPP24UawdLSTvvqf4dCTAq5tNLPa
         ZaJ/G6Ba9QYoUTBPxNUdnkUISv2Nd9Ajyl0Guh6q0t6UaCe3jfQxBBcKmLt3C+XKsXgL
         BJeHIsRjPcjRhoPs0Kr+7WI+YOsSiC8zDWIn7d7tygGCKyTkwtlYrZ80rtpZMXi6T48A
         DJYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=GjN8UC0T;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k134si131692oib.5.2020.12.04.01.35.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 04 Dec 2020 01:35:44 -0800 (PST)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Date: Fri, 4 Dec 2020 09:35:36 +0000
From: Will Deacon <will@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Sami Tolvanen <samitolvanen@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
	linux-kbuild <linux-kbuild@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	PCI <linux-pci@vger.kernel.org>, Jian Cai <jiancai@google.com>,
	Kristof Beyls <Kristof.Beyls@arm.com>
Subject: Re: [PATCH v8 00/16] Add support for Clang LTO
Message-ID: <20201204093535.GB461@willie-the-truck>
References: <20201201213707.541432-1-samitolvanen@google.com>
 <20201203112622.GA31188@willie-the-truck>
 <CABCJKueby8pUoN7f5=6RoyLSt4PgWNx8idUej0sNwAi0F3Xqzw@mail.gmail.com>
 <20201203182252.GA32011@willie-the-truck>
 <CAKwvOdnvq=L=gQMv9MHaStmKMOuD5jvffzMedhp3gytYB6R7TQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnvq=L=gQMv9MHaStmKMOuD5jvffzMedhp3gytYB6R7TQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=GjN8UC0T;       spf=pass
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

On Thu, Dec 03, 2020 at 02:32:13PM -0800, Nick Desaulniers wrote:
> On Thu, Dec 3, 2020 at 10:23 AM Will Deacon <will@kernel.org> wrote:
> > On Thu, Dec 03, 2020 at 09:07:30AM -0800, Sami Tolvanen wrote:
> > > Without LLVM_IAS=1, Clang uses two different assemblers when LTO is
> > > enabled: the external GNU assembler for stand-alone assembly, and
> > > LLVM's integrated assembler for inline assembly. as-instr tests the
> > > external assembler and makes an admittedly reasonable assumption that
> > > the test is also valid for inline assembly.
> > >
> > > I agree that it would reduce confusion in future if we just always
> > > enabled IAS with LTO. Nick, Nathan, any thoughts about this?
> >
> > That works for me, although I'm happy with anything which means that the
> > assembler checks via as-instr apply to the assembler which will ultimately
> > be used.
> 
> I agree with Will.

[...]

> So I'd recommend to Sami to simply make the Kconfig also depend on
> clang's integrated assembler (not just llvm-nm and llvm-ar).  If
> someone cares about LTO with Clang as the compiler but GAS as the
> assembler, then we can revisit supporting that combination (and the
> changes to KCONFIG), but it shouldn't be something we consider Tier 1
> supported or a combination that need be supported in a minimum viable
> product. And at that point we should make it avoid clang's integrated
> assembler entirely (I suspect LTO won't work at all in that case, so
> maybe even considering it is a waste of time).
> 
> One question I have to Will; if for aarch64 LTO will depend on RCpc,
> but RCpc is an ARMv8.3 extension, what are the implications for LTO on
> pre-ARMv8.3 aarch64 processors?

It doesn't depend on RCpc -- we just emit a more expensive instruction
(an RCsc acquire) if the RCpc one is not supported by both the toolchain
and the CPU. So the implication for those processors is that READ_ONCE()
may be more expensive.

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201204093535.GB461%40willie-the-truck.
