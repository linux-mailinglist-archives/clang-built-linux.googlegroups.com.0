Return-Path: <clang-built-linux+bncBDDL3KWR4EBRBAXMQL3QKGQEH7BR6AY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id F0D881F5240
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Jun 2020 12:29:23 +0200 (CEST)
Received: by mail-pj1-x1039.google.com with SMTP id q38sf1471865pja.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Jun 2020 03:29:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591784962; cv=pass;
        d=google.com; s=arc-20160816;
        b=ocDKypvtpCobUMHJiCJ80vXYumLpX2eM6YnIHqO5k7LvXctefZ2Vmq7lgKCpYxlKr/
         2ePYlEcQ4PS1GBy2FY2ULFgquXVn8aAumSMXrXtQyT7PorE6rm/va1b/phiHdH/Sd+t7
         KGa4LMuWlfBHR8Tf6P9liHLwdkx4pV/lbCbCPzmMGBKbn136ngy4y9HwdTViKhnN2dNS
         paP+a3s0kWHrAVPIzVao4okQwAk1qaSQGWBJIUPzr+n/xH5roYve3FZ5UjfIJW/ffyeq
         LNl281tC1HNhd/XLjQaskvYShgWJDwcwrOTBOEpekTX1UW6MDAXHdzzLqz9l2FNExhMy
         EKEw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=JlGuDD2phn/6IpY5jdFx4iBR+OzhkGAtECk1Sax5nuM=;
        b=fPwV7kP9Bw3V4+w6MBqeLYLkT1OI0dEk/Y19HVDwYGhbHdkBjZHtgn8i7NQ//Meot3
         PoaqGkP1Hldi6Ch4cESm7nm3QmKfa4cC05I9KK41FS45PtwlMGpWr6pot10oXf2c0Il2
         VQbth3IN31oaLBVHLH0wTP1IdA3RBtQTuTOasg509FC04S7U1SWlcXPgbhMGr6eYULOx
         TBXohMWB3LUyBcTo0i/NmReiqCfSheU1p4FgJH3sYMKyHLDJUj5lQqYeFNugbzo1xSqI
         XdssNuUGbCpT1m4aU0tSai+7UMyEJOhd5Bmyh6gOvJXZmGxfBxTOuetmtQ/vQH4kdkY5
         ryKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=catalin.marinas@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JlGuDD2phn/6IpY5jdFx4iBR+OzhkGAtECk1Sax5nuM=;
        b=pyU4iq8FAkQiB6G57nm5hn/Xd2zvqoHd8lMcatck6gEXbI/k/jBdLcqZm+h8ECUoeo
         iyrh2QasIuH9G/MbDEkz2VSNdH4AGcErIThOl736ufHHLRRjwjNgpwRo+C4IAwmw6KMx
         FoNWtQernQVtcFRLFb/ZcAtCIlV/YPGRMukbjy00p6KLZ+UGhaE9ETd5cGrwtX0GA7a1
         eMVDAZ1NDbbxMNeA+OgocjSZXIRlf++Bz59T/KByFmBHsJFotaRBF+wcCuDHUmB/eI0/
         m+yF/W5BjyU6DQyj2QeUPlxkVTWt+QQoarXkfrohEgOyz495Q1+iZOhVENz1z/peCGRV
         Bp4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JlGuDD2phn/6IpY5jdFx4iBR+OzhkGAtECk1Sax5nuM=;
        b=ozHwpl0H9dlFziXDHils4UzT6x8eR9RpqktPLStPNyWnshAwdExgui7LRyb14z4xrr
         nJv/lbQ2ty7AF9jsuJjZk1l/ylF+7OiN42NIpXHlw6/RxDfpUSLHIh7u3gbLRXb5anUB
         34MOlaxfgJ0ccbyogF3ZqcoRI0BsnS/mxOs2u02eUnNZAUuPeG3azjUFMhjP4YXfRzos
         Ihp42TVK6UyFRuTvcduwGcND/ZTVzmQ2gdS64lObtyhX0RISm6mGSxQVnopY5JlHFOEP
         PNAtnD/mim22OV0L8mjhy+jV5WJ2vq9gwTTWaMSHfO6J0tbssEmsUZ7m9JNRm/AYCaNJ
         PzIQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532SQ8ExNPPbagUMRWKG8kgHyDEoNnzxWaTjg0qHjN9i95du4cZs
	elqOSLih47lRjlMYHCN0GZU=
X-Google-Smtp-Source: ABdhPJzGyi4fyLHZ2QLAjn1xTk5Bpx11Y7I03nlZLjzdLMPCCsAwWDYirHe7LjlTfXHUmHPcjSqPqg==
X-Received: by 2002:a17:90a:de0f:: with SMTP id m15mr2259693pjv.21.1591784962631;
        Wed, 10 Jun 2020 03:29:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b598:: with SMTP id a24ls7827645pls.9.gmail; Wed, 10
 Jun 2020 03:29:22 -0700 (PDT)
X-Received: by 2002:a17:90a:d803:: with SMTP id a3mr2505387pjv.125.1591784962094;
        Wed, 10 Jun 2020 03:29:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591784962; cv=none;
        d=google.com; s=arc-20160816;
        b=o2vafy8zPDB+latFmojJyCBSCJhYHfMlVUytzol7PiDA8FLEQhcp9UsPv3mpGNrf/v
         a0ivF2axMFtk6JfbTc9FzfLS4rOswjhG+rgyZjk2WQQS58uWFoEuS7a/CEUShBnOvfQu
         z4diSLbc2hnkFF2je4nELkt1R799u5FL2MwfDyyQQhr7lwFXw7MlrQsJ7j5BFd5Gq6P8
         jOQDtWkeia8GbWXgveDkkg0dZj7l4aAVs80gPFBDRXEycg3xeBcx/fRgZbOaqaBbo077
         bxX7vhXHdxTa6QYaNDCxlgVXjOEO2bt+sC9uQsNnhnnM6/X3+3S/igalsgcX4YjPWlXJ
         LYew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=cyejlOnjOmd8k138sx/pvYMv8QDdOHGOfEPYx+22xkQ=;
        b=eB+XKD3TiRbKWMTfTzOFDorc+hWBpK9LuBG2ID1Tj1F/Hb3PtlZZgWH5TCcs1vYqCA
         vSTlq3Cf5os2MXxNjJ+/6iRg7SXJaYv0SLtXDIUTjqK0xvGRcubGUPiMkD+DNlf5edop
         V6c0eWoi8gVEvmSZsMEXhNrGblumCtPWcBcM50DY8N5nHbOWdGWdfeTBxF/XT4XJaThO
         zJS+e3qfFRwiGxrAQRdLwryR1uIGh2RHFmSZo94EgV+JSEK8L9JLbJPf0R5E7bDQDOpp
         HhFw8axKKDHAYvve8CcORGroTMAeEsHxICn75/5aB+RH/EyEn04pPCVyexeHisBaqAAP
         A5uA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=catalin.marinas@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id l22si835200pgt.3.2020.06.10.03.29.22
        for <clang-built-linux@googlegroups.com>;
        Wed, 10 Jun 2020 03:29:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 400191FB;
	Wed, 10 Jun 2020 03:29:21 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5FE5E3F73D;
	Wed, 10 Jun 2020 03:29:19 -0700 (PDT)
Date: Wed, 10 Jun 2020 11:29:17 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Will Deacon <will@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Naohiro Aota <naohiro.aota@wdc.com>,
	Stephen Boyd <swboyd@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Manoj Gupta <manojgupta@google.com>,
	Luis Lozano <llozano@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Robin Murphy <robin.murphy@arm.com>,
	Dave Martin <Dave.Martin@arm.com>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v2] arm64: vdso32: add CONFIG_THUMB2_COMPAT_VDSO
Message-ID: <20200610102916.GA26099@gaia>
References: <20200528072031.GA22156@willie-the-truck>
 <20200608205711.109418-1-ndesaulniers@google.com>
 <20200609203502.GA21214@gaia>
 <CAKwvOdnDeYQ-tbyW8=tcKcbbFxtDzqk8dCUSzbBYP1amb9a2hg@mail.gmail.com>
 <20200610084755.GB17035@willie-the-truck>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200610084755.GB17035@willie-the-truck>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: catalin.marinas@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=catalin.marinas@arm.com
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

On Wed, Jun 10, 2020 at 09:47:55AM +0100, Will Deacon wrote:
> On Tue, Jun 09, 2020 at 04:55:13PM -0700, Nick Desaulniers wrote:
> > On Tue, Jun 9, 2020 at 1:35 PM Catalin Marinas <catalin.marinas@arm.com> wrote:
> > > On Mon, Jun 08, 2020 at 01:57:08PM -0700, Nick Desaulniers wrote:
> > > > diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> > > > index 7f9d38444d6d..fe9e6b231cac 100644
> > > > --- a/arch/arm64/Kconfig
> > > > +++ b/arch/arm64/Kconfig
> > > > @@ -1299,6 +1299,14 @@ config COMPAT_VDSO
> > > >         You must have a 32-bit build of glibc 2.22 or later for programs
> > > >         to seamlessly take advantage of this.
> > > >
> > > > +config THUMB2_COMPAT_VDSO
> > > > +     bool "Compile the vDSO in THUMB2 mode"
> > > > +     depends on COMPAT_VDSO
> > > > +     default y
> > > > +     help
> > > > +       Compile the compat vDSO with -mthumb -fomit-frame-pointer if y, otherwise
> > > > +       as -marm.
> > >
> > > Now that we understood the issue (I think), do we actually need this
> > > choice? Why not going for -mthumb -fomit-frame-pointer always for the
> > > compat vdso?
> > 
> > "Why should the compat vdso be configurable?" is a fair question.  I
> > don't have an answer, but maybe some of the folks on thread do?
> > 
> > Our problem is more so "if the vdso is built as thumb, we need it also
> > explicitly built with -fomit-frame-pointer."  Whether it should be
> > built as thumb, arm, or configurable (and which default to pick in
> > that case) are still an open questions.  Will asked for it to be
> > configurable, so I sent a patch making it configurable.
> 
> It's configurable for 32-bit arm,

On 32-bit, the vdso mode is a side-effect of how we build the kernel
image. I guess we haven't put much thought into whether we want to keep
the vdso in Thumb-2 or ARM mode.

> so I was just following that as it's
> hardly a maintenance burden to support both. I suppose you could have
> a toolchain that only supports one or the other, but it does seem a little
> esoteric if you're building a kernel for an arm64 CPU.

We could leave the config option in if we ever need to change the compat
vdso mode. But as not to confuse others with too many options, maybe
add:

	bool "Compile the vDSO in THUMB2 mode" if EXPERT

Either way:

Acked-by: Catalin Marinas <catalin.marinas@arm.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200610102916.GA26099%40gaia.
