Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB34ISP6AKGQEIJYP5YQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id 2318428C3B2
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 23:02:40 +0200 (CEST)
Received: by mail-io1-xd40.google.com with SMTP id y70sf11336932iof.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 14:02:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602536559; cv=pass;
        d=google.com; s=arc-20160816;
        b=OLNEfuPXuDtjH1TLR4QyvAy2U+vdBT8fCIPUnyT59FRL7jUqazviVodey3pqkvqUGg
         h6yfaTRzoSHDdNEtRQsR1WU6LLO4I1LEywdc3EdcLEAj0ux1ubsRaGTdScRq0umGU9SC
         Ve6yf+SLsFpmSewybJfHsN4JuWqtJbadura5/LNYLInPVUNwbvpxZR1OSD4ZeZAtDyct
         5wKiwQPSNMM9MykibvrnJ8BZgaiZPUy/PttdO3KS3JTdzZbvaSN4ff1gryFopD0adKga
         dgmQeEJGF8yqSbhFVw0UXtGpXlgdKhzNjuwATnboD+q4fnpYF+CsAU7E/of26fooePAL
         NoGA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=2x4silEaAJRtarjDUhQ7ZpBFGoKcC7ZtBjOjDvvn4oI=;
        b=QSga4weK9OFUd1Rip3qjWZ8AppZ2sUDpxkvyFeOnmapJ7nVTTdNLawcVd3GaxV0nap
         UB7RNd5+DKNmHA/XFus4DqP1pd9VR43BKwNHzuWamsJJ3lcp9ih1uS/BT0TS9ngdEoCG
         SLNt0keniK3p2QXoZKzSc5Tqc+EF1Ojm8JbXrZuATE/ZbrFnkOtIPTwVQxaKbNQozwrX
         axHq5VD9Mnz7q8zjYGkAf0WdWtSIQdYRUywTVC4OAu8yG+Y4as0DYBNqRrorbrdodogx
         +55XSF1R0tzQDLW87Y/hSFRkeUEiLbMy5WtlVlsDuyCo/lBOMS/tQDNXESxiN2oyqKm2
         B20A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=aKY2mjZq;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2x4silEaAJRtarjDUhQ7ZpBFGoKcC7ZtBjOjDvvn4oI=;
        b=IhpN6i9rYsvgIWKL6oqmqkcj4AYaHNN2Pf3w7vGQ75hSwyZ7SE4M0tFLGmrcMQ5vrC
         tMrUFJY9BpUHDWsGXNUtVBpyx7+QeWzxwV0MFqZsBtnZCq2IiMwr7L0YzKFzwhuFGbe9
         117+rmiN7XcLVPB8FTLQ+izRxTP/E+TLpmOSE17UaR30VFKTGaUJ7aA6SXeWN5oSiAJM
         oz6s9U+bBlqbPr1ZV9PE2XryS2FnsFPyjh/Y5LicMy3TqYPg03buxAQjvmeDI9463wKo
         /1rXS7rNqUE33D48i+W/crN2RxJRiQRfk7veG58hwFR9JPEdVAiCIFrcDjYMexBbP3AE
         vMOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2x4silEaAJRtarjDUhQ7ZpBFGoKcC7ZtBjOjDvvn4oI=;
        b=gTbTEGQMUFKyMM1aEUggGFqjI9td836TIyTv8gaE0H4ThtXHSWsRInwRCg9WFmccAe
         W7mFhoM6s3Fhg6nniNJIKZV8KP3mbNR3Q+gbCdx8VEE7n5nqfAdYUN3MdTzpD1Tzziy7
         O+hSWCeN3Nd42on5x63s6im9MfwytlqTtQxrveJds5POXfNlqGt7HpHtQc43pj8IHRFV
         YnVB1Jb0uSV8YFEpeJnx9nsDjwKX+x7XwqlYnAFenuk8xfPfGJtudVQZiOO7lGtoIqO3
         Jv0w/RKUoLNSeSjG2UQzF8EPVPPd5Fz8G8feMC3jA4vtRhxrGrQvAAkyVqp9Z+IFhdMF
         GDjA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5313woYz3sWFEjHrlTFps0l6l5qhyee+FUnNxp2pQjV3yMKDAUY/
	uCfvFsNGVavY6OjUEUQ3ZHQ=
X-Google-Smtp-Source: ABdhPJzfrREZ3cKtmzQMj2e3V6h6X5RG4do03PdhAHkzYUgmFIK3Cu05qKcG5CyQAedvb5w2T1cYpw==
X-Received: by 2002:a92:6b06:: with SMTP id g6mr543404ilc.194.1602536559172;
        Mon, 12 Oct 2020 14:02:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:2552:: with SMTP id l79ls2830077ill.9.gmail; Mon, 12 Oct
 2020 14:02:38 -0700 (PDT)
X-Received: by 2002:a92:1b9c:: with SMTP id f28mr603401ill.170.1602536558826;
        Mon, 12 Oct 2020 14:02:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602536558; cv=none;
        d=google.com; s=arc-20160816;
        b=XQdTr+1y7WVm/mF+2FPtEKbNW1Y2lLHXRmFTmf4LFuG3vJyY+5yOJutjf9CTqcGJNt
         tj0czClWXkIWJkC4XpCcYWhAMKZnkKDcBYDtWh/9QooouOVF78bJY+vy40M+30eknK2M
         ufubsW1m2y0dGcTn0rnMx5ymD22qu1OfOAke+KnYn0QWB4zl1bQ6jl5KXMadE9uc/sGR
         ScmwCtD3DqEiQlx3uof6br3kwVom28jTiEE82Ux0G5GhCXt9wa2JzCuedd9xVM53ESag
         Fi/n18BJBTNDyh+XLrCkfvbVvIT22NZ6nAunhVE5o88rjwhZpFYyTozkdvN61IglMfqf
         1ohg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=SnB7E0mI9F7Ie4RlS2cFfqKwCDcopSImUj3IgUSKIxI=;
        b=te275IRhy05EORmEK+NA8HkvmFl52QMbmpK8eTpTzcHKzK66zu+6aNCeI349Kk4kT3
         KlxfyA4DwCbA/STm9Jl+hGsMjuW3SPFgpl9IlZcO4JjF+hlHs8VWZdFv/0JKOhFY6L8A
         Trk7q6xervWgJn9Iioo3XAtvue4HCib9YAXHWJd3+nb2U2cVjHCO45SIrfTqmAXfAqRl
         5xs8Btm7v5uqV+27wC0KijUSLP6OxSe9Ui2SEcvn/Z2RAtJHYLzZr+rRk3SIZ75ewECe
         lHDmZeTfUT2n7QYQKEEVapOTa3Fd0XEfaT01m+En3+EFrlro06/gl7xeU/B6434Moqe7
         G1+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=aKY2mjZq;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id i8si692741ioo.0.2020.10.12.14.02.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Oct 2020 14:02:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id 144so14787814pfb.4
        for <clang-built-linux@googlegroups.com>; Mon, 12 Oct 2020 14:02:38 -0700 (PDT)
X-Received: by 2002:a63:5a11:: with SMTP id o17mr14040343pgb.287.1602536557163;
        Mon, 12 Oct 2020 14:02:37 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id 16sm24744149pjl.27.2020.10.12.14.02.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Oct 2020 14:02:36 -0700 (PDT)
Date: Mon, 12 Oct 2020 14:02:35 -0700
From: Kees Cook <keescook@chromium.org>
To: Will Deacon <will@kernel.org>
Cc: Sami Tolvanen <samitolvanen@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org
Subject: Re: [PATCH v5 25/29] arm64: allow LTO_CLANG and THINLTO to be
 selected
Message-ID: <202010121402.1EB5242@keescook>
References: <20201009161338.657380-1-samitolvanen@google.com>
 <20201009161338.657380-26-samitolvanen@google.com>
 <20201012083116.GA785@willie-the-truck>
 <202010121344.53780D8CD2@keescook>
 <20201012205108.GA1620@willie-the-truck>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201012205108.GA1620@willie-the-truck>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=aKY2mjZq;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Mon, Oct 12, 2020 at 09:51:09PM +0100, Will Deacon wrote:
> On Mon, Oct 12, 2020 at 01:44:56PM -0700, Kees Cook wrote:
> > On Mon, Oct 12, 2020 at 09:31:16AM +0100, Will Deacon wrote:
> > > On Fri, Oct 09, 2020 at 09:13:34AM -0700, Sami Tolvanen wrote:
> > > > Allow CONFIG_LTO_CLANG and CONFIG_THINLTO to be enabled.
> > > > 
> > > > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> > > > Reviewed-by: Kees Cook <keescook@chromium.org>
> > > > ---
> > > >  arch/arm64/Kconfig | 2 ++
> > > >  1 file changed, 2 insertions(+)
> > > > 
> > > > diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> > > > index ad522b021f35..7016d193864f 100644
> > > > --- a/arch/arm64/Kconfig
> > > > +++ b/arch/arm64/Kconfig
> > > > @@ -72,6 +72,8 @@ config ARM64
> > > >  	select ARCH_USE_SYM_ANNOTATIONS
> > > >  	select ARCH_SUPPORTS_MEMORY_FAILURE
> > > >  	select ARCH_SUPPORTS_SHADOW_CALL_STACK if CC_HAVE_SHADOW_CALL_STACK
> > > > +	select ARCH_SUPPORTS_LTO_CLANG
> > > > +	select ARCH_SUPPORTS_THINLTO
> > > 
> > > Please don't enable this for arm64 until we have the dependency stuff sorted
> > > out. I posted patches [1] for this before, but I think they should be part
> > > of this series as they don't make sense on their own.
> > 
> > Oh, hm. We've been trying to trim down this series, since it's already
> > quite large. Why can't [1] land first? It would make this easier to deal
> > with, IMO.
> 
> I'm happy to handle [1] along with the LTO Kconfig change when the time
> comes, if that helps. I just don't want to merge dead code!

Okay, understood. Thanks!

> 
> Will
> 
> > > [1] https://git.kernel.org/pub/scm/linux/kernel/git/will/linux.git/log/?h=rwonce/read-barrier-depends

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202010121402.1EB5242%40keescook.
