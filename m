Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBDXURHZAKGQE5X3ZLXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 14983158C2B
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 10:55:28 +0100 (CET)
Received: by mail-ot1-x339.google.com with SMTP id d16sf6714978otf.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 01:55:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581414927; cv=pass;
        d=google.com; s=arc-20160816;
        b=XlETWXy+FBgTGLDySK1dsnqLRc7uW0WcRKLWCakQxt6vrGM8pjsL7ACIEbpEEiLT3M
         pmC7L1DaSAfCcB5dGySj/fNXmbT8sK9IoQfbIs3x8nxEGCKOeLcpSBucwYZMfSFnbzEI
         tXnDlTJ2xPhw2fj3W2JQc5NOADBgNfrJyfsfOG2l32pRvUcvJyzpr5Jv09r0u27Ztktl
         vjNmItppa5iiyTFQEKxrENTrNNfw98kxU9mg38nTl+gdgrUWSjYFYPXW2eGZXIzbeYsu
         zkDzkjWxoUw89/FxaGVQfl6PhzpZYWML6RYiwb/BzNeXt4tW7lgvcY5RM2D5+GT0nVF/
         M9LA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=h9E9XyJEi863lxnma0uAOwK5qGRgLgP+Wj8qZQde9oQ=;
        b=H/QUPk3aoq1fA74CWOuYB+trMALbfV6TtwVTwlhVDk1oYLdNdVUKF+4r6Nf4ZPeOR4
         D65+FjPL+8XqBRFEeRy3Q4YBRVOX0SKTycMM1zMjV1gCWQOcFOQ/46XAEEKmbh7Hmd+a
         CBQNYwdyHRBxrO/zNEsUauTwo4PpqrzR93R8BjZmSGaYVzTkf20u9m/27IEEzARGTIUe
         kwfoYLp9PwL9Im/hS49aZVokMvJrYJhZ7jX8nbBZR7Ro5omuz5gjNHQgbjxodU+aYmkm
         3/AZlybiMwxwzgMPMJlZC3zwjpHsnxWN/S6qSGb2j31oHF2oJaPzIkBHglFs7rfBnfD9
         2Ozw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=hrXJkcSk;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=h9E9XyJEi863lxnma0uAOwK5qGRgLgP+Wj8qZQde9oQ=;
        b=ntRe8L+99kMpda9dj75uuYV7M/+7lVk6cB02CaGjsFGUy6ITX55o0I0IHVVhQUfNv3
         eAqcLNCAVAVfygteTxSlGzUvnhay4i5j3tRXFARg3lk7SOyGVy1UgNh8VpFq9/JoATf2
         1yKqaTI+OVdUbH0toMV+LA5FGcNUQcX12VMxIBFxAwqyUciUMvzjgRfOGO41lgOeH/do
         qRCNPctKv7fWyKgH2LJ73IXDxtmaqzt8/wzvlPtUQRGIq0YctiaAi/kaT92zxh3glkSc
         fZop7un7CBfD56SYyc6NAs7oBz5KWHtJkCl8zd1D0YXxoZYUdikjIZ4CPkYEM0fGSo/j
         sLtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=h9E9XyJEi863lxnma0uAOwK5qGRgLgP+Wj8qZQde9oQ=;
        b=kSsA7epCKif6OsTYZtX4yiCx7otOiCtoDJ3buemKQx/FuU6lDpBsAUcp9d4SDHl30O
         +17Q/46WgAXOnIr3tkfTQ5IMl98IeZ4jdpdD/TuqmVnCxLpeMexUpQzn2t9a2oEZYarL
         /X4EU69ctq32kxn7+Mk4X4W7qRIMrfjnVT/EiJ1p37a5DW6/0CBV/G56LL/JlMM0t2B/
         LcnxKoAg5Si++DPKRI7nn2u/trMsq6gSt2OSDEMLWUtdY1DVwm4kUM80gPI+l2Kz1t8L
         WTzpR7k5SDrBmVaEy6VthzBN4HQ9gw6T0mJTOypRkj63q9M1MMlfI/MmIt46SYKCaCtL
         gmGg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXkEPez7xInUK6rbDx0SMxuMdVvrEgR0iYSGw+tA0vHAEAPZFSb
	XnR2/RCoNVA2FALJj1pfcNk=
X-Google-Smtp-Source: APXvYqyDcR+DPu1xA9KDIrhFTWUZzBfEZlQHluvTw2gpOTgia70XVSpmjDF11FRXlZtE/Z7KOT2VJg==
X-Received: by 2002:a05:6808:2d9:: with SMTP id a25mr2395218oid.172.1581414926944;
        Tue, 11 Feb 2020 01:55:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:910:: with SMTP id w16ls5412728oih.2.gmail; Tue, 11
 Feb 2020 01:55:26 -0800 (PST)
X-Received: by 2002:aca:c1c2:: with SMTP id r185mr2414101oif.19.1581414926591;
        Tue, 11 Feb 2020 01:55:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581414926; cv=none;
        d=google.com; s=arc-20160816;
        b=zMC+qlSs+rFVOqCrFeeVRPnPTIiIpVJqw7hEeHNFDxaJCrp+JJcLiwTXqaFOKv5Geo
         zSG7EPzobrrb+K/lsHlyhdwwAdY/FQRmVjC1R8ZnbMoApKYLC5QTtG+ruYagNL1EjDhZ
         H41UJ0TxK17+jm/bpkKzA8YNnfsuTioI/TymUyel+dky53M5P3w5mx6trL6W+tml+B5q
         LPcxIobKhu7gKmqrRbMfyyPF0anGyzxGrl4ahmRY5Wq0iGsg6fYMWiFZciQQh8yniqrn
         qxx1EHl4ckCFwpAoa6bfeXuo4bWLWUguE/RD8dCPZ9QrQSanx7r7kS/r07SoH+g6ysAc
         BViA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=JofLTrQ9TYw6KM7Q1bPt9foisUwWqUqkojlrVhqw610=;
        b=bb74GU0oIqhOYkQXGkEzBCxd1fSlXLhfhUof32EFBX5v+oQi2iiE7mw91lyyBMmkhj
         BPIq3hvDZpMRimdbHl3a91kEXMvBwPOxSaDEHS6yWR7FEVQHfdbkUB95PxZA9g89fl9C
         J2Am/aQTnJd9krADTVMUKjpey73UGu6WgsDCi+sQvQfX7VL+0n/WbkgRQgnWbbgWbu2n
         ks0qF+KF2MbaefWNEMbcLbgrFHXmbN0fdw0rZVGRd97ZBzkzRrqWxlQpaW0w8HSA0F5m
         tSp7fsRkiCYhyMUo0B4CyztDQGaT4kKmBecTp3hutSf5Oz6eqpT4QZTwq8kK2ZAR+wZl
         lhNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=hrXJkcSk;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s10si106238oth.2.2020.02.11.01.55.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 Feb 2020 01:55:26 -0800 (PST)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B570420714;
	Tue, 11 Feb 2020 09:55:22 +0000 (UTC)
Date: Tue, 11 Feb 2020 09:55:19 +0000
From: Will Deacon <will@kernel.org>
To: Marc Zyngier <maz@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>, James Morse <james.morse@arm.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Dave Martin <Dave.Martin@arm.com>,
	Kees Cook <keescook@chromium.org>,
	Laura Abbott <labbott@redhat.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jann Horn <jannh@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 09/11] arm64: disable SCS for hypervisor code
Message-ID: <20200211095519.GB8560@willie-the-truck>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200128184934.77625-1-samitolvanen@google.com>
 <20200128184934.77625-10-samitolvanen@google.com>
 <6f62b3c0-e796-e91c-f53b-23bd80fcb065@arm.com>
 <20200210175214.GA23318@willie-the-truck>
 <20200210180327.GB20840@lakrids.cambridge.arm.com>
 <20200210180740.GA24354@willie-the-truck>
 <43839239237869598b79cab90e100127@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <43839239237869598b79cab90e100127@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=hrXJkcSk;       spf=pass
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

On Tue, Feb 11, 2020 at 09:14:52AM +0000, Marc Zyngier wrote:
> On 2020-02-10 18:07, Will Deacon wrote:
> > On Mon, Feb 10, 2020 at 06:03:28PM +0000, Mark Rutland wrote:
> > > On Mon, Feb 10, 2020 at 05:52:15PM +0000, Will Deacon wrote:
> > > > On Mon, Feb 10, 2020 at 05:18:58PM +0000, James Morse wrote:
> > > > > On 28/01/2020 18:49, Sami Tolvanen wrote:
> > > > > > Filter out CC_FLAGS_SCS and -ffixed-x18 for code that runs at a
> > > > > > different exception level.
> > > > >
> > > > > Hmmm, there are two things being disabled here.
> > > > >
> > > > > Stashing the lr in memory pointed to by VA won't work transparently at EL2 ... but
> > > > > shouldn't KVM's C code still treat x18 as a fixed register?
> > > >
> > > > My review of v6 suggested dropping the -ffixed-x18 as well, since it's only
> > > > introduced by SCS (in patch 5) and so isn't required by anything else. Why
> > > > do you think it's needed?
> > > 
> > > When EL1 code calls up to hyp, it expects x18 to be preserved across
> > > the
> > > call, so hyp needs to either preserve it explicitly across a
> > > transitions
> > > from/to EL1 or always preserve it.
> > 
> > I thought we explicitly saved/restored it across the call after
> > af12376814a5 ("arm64: kvm: stop treating register x18 as caller save").
> > Is
> > that not sufficient?
> > 
> > > The latter is easiest since any code used by VHE hyp code will need
> > > x18
> > > saved anyway (ans so any common hyp code needs to).
> > 
> > I would personally prefer to split the VHE and non-VHE code so they can
> > be
> > compiled with separate options.
> 
> This is going to generate a lot of code duplication (or at least object
> duplication),
> as the two code paths are intricately linked and splitting them to support
> different
> compilation options and/or calling conventions.
> 
> I'm not fundamentally opposed to that, but it should come with ways to still
> manage it as a unified code base as much as possible, as ways to discard the
> unused part at runtime (which should become easy to do once we have two
> distinct sets of objects).

Agreed, and I don't want to hold up the SCS patches because of this. I'm
just nervous about the function attribute because I've only ever had
terrible experiences with them. Maybe it will work this time (!)

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200211095519.GB8560%40willie-the-truck.
