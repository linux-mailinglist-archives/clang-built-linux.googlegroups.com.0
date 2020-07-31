Return-Path: <clang-built-linux+bncBDDL3KWR4EBRBEOKR74QKGQE6BSOV2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id BEC7D23434E
	for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 11:32:02 +0200 (CEST)
Received: by mail-qt1-x837.google.com with SMTP id b1sf13143859qto.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 02:32:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596187922; cv=pass;
        d=google.com; s=arc-20160816;
        b=dpggJAY0S2qSqZbSRDapSj04Xf773miX0BpgbXLP67V1UPOyKD4S60Ij9deBSCntuL
         k1GP1aIh93ElvvQtmuXyPzuU3JKn0g2XUoyd8WIAAP4Q0vgULqeiqaSEDRyymHuKETUb
         F3uitCeoyHFmR2okxv7bHZYrXJmZDGFGVlmi8ujaNvZEJziPYT0qoe/GHUuzQvemOAn+
         wgkrmhy7kQTRutz3zHZjb3EeYoO2ypT/FRiygmStuCWyf8d/eSXTfTSdgbq61zlNMCLq
         0IdJynhe3EMr1CCKr3Pzq06fbW6M9BLBoC5CZM9fUsGHuwEXpBS3aca2g2CGYHPd1p3Y
         7v+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=z6+F0KxbtfHxZEem9D2xt5XEdR+VcWZ9ls4m2ZTM2is=;
        b=lScZ8ojLTKK+Ypr08WXIke7Uw+Cxg6GRIQ4A7mJTLpJ+v3xmY06RbafCu6YpT3sT+m
         bhmjdkokkVA0wAS4fTAv+vJUmV8wToFYr3KozB3I7skuVDcfp+M8/iMUR3lStANa5xlO
         UpmTQvUR3pWF0OIJ46vWyzsVZkRTpxJiTraz4Qm9J0o9ZPFPgGmw8jmHdxSdLNq38AIx
         nSo+uPXFoHucMi1g+pGROcAT/LNmtkFkyPX9c/KKJ6+0HI7DqyU1NFSQBSbjP0YJemIg
         heKTknFKeDTZ8YQGvt1FNKRhJscOIuPyZaF8p+JupvO+P65q6fFsXaVx8Pk+4AisLCYf
         2s0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=cmarinas@kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=z6+F0KxbtfHxZEem9D2xt5XEdR+VcWZ9ls4m2ZTM2is=;
        b=GwNBFp2xgTxx/iSqH19g2wlfVinvihViedB+AmmxjptjVTX2je+QdtmoZPM0sdZNKX
         +fm9g4a0mAWgtqg7ZCTo5Aec0L+zVkld7P3N0/zWo3c/EhynLFixI6B+pvROSYYSaJwR
         HNEX7b85w0lyfv6DaowlP/I2mGImObno14fz2a3ibQxbCfh8fKbqtfYIMWeen/DUo5/C
         kjCAMO+6cPkPttVRZ2Q9vm9ateJAOtyFaFw2YzWe4IvNt5MWtMc8Vq8VvJkg5RkPTGmr
         m4Cz9Uu/GgxSJDqdvH3wNwokR+G6w9CmFZUlD2PSk2uEN8JJQ0CaqX/qXfJp6xFSRQqD
         vJfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=z6+F0KxbtfHxZEem9D2xt5XEdR+VcWZ9ls4m2ZTM2is=;
        b=seyFyA3NL8gPnkkcqFLoENVlNpGcqBWZXB0+Zk6n037H3hIcPJD+PdUqpW80KdCm9f
         NZc9jfcZZ5iURroOW9v0aefx6MIyvJRrRlqFTsw+UKHM2hT9pF8XvClG+gVMnr3/Oi08
         fGzTjwkpEcaUbLh4uegJisPbL6xFbZCDgJaRNQwuDgT61RA1H0onD/vNuzUNwGA370a3
         bRS6hm9vu+bFG/pihSJ+aeDZmq+lBwfrvkUFoQz3F49dBb9kXvGO79qFD6nUCGvx6MhC
         ubo+2MImZih6d9ssn/n/uN7YGteAb+aNIARRcc895qfdGA0RS/m7daCKcnVUd0WnZ6vQ
         UjCw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531V5/LkvwZBXC9OJ8DZx+TZZe4c6YVGirA82YkP4OLZb1c9fCEy
	zzbhqD95b/JI/6YNP84Ehc0=
X-Google-Smtp-Source: ABdhPJzYXuPLiGELaZOqsLE3LnFvS0zpnUbCozVe3X6Vv43ENVzyQ5znKxvsko+038e3U+pOWFKhTg==
X-Received: by 2002:a37:a293:: with SMTP id l141mr3151728qke.222.1596187921839;
        Fri, 31 Jul 2020 02:32:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:4d85:: with SMTP id a127ls3892956qkb.8.gmail; Fri, 31
 Jul 2020 02:32:01 -0700 (PDT)
X-Received: by 2002:a05:620a:2230:: with SMTP id n16mr3220338qkh.268.1596187921508;
        Fri, 31 Jul 2020 02:32:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596187921; cv=none;
        d=google.com; s=arc-20160816;
        b=ca/BbRCvGiA27hxFTOkfULxxzN3lLfZp6A9Z1mC6josKKa5GcXiyzHiHj02KngW1vT
         N88uXKu5lSnDq51uxOm2To6+rO0AEHLkHGDIWzlrDWVvi7s13/noxDqeHFWZDomuVUNm
         O4I+VXtlT/fw6LKlvcZvc/YDrZDJw9Ba1+hUxZI2EHwwo1CVm7SEv8GGtFNlddAgGBow
         dimAzaQAId0Hn8sXroTzXVNJ2O+3Fm2N7KlkstrIpsfiAARFu/pMgazuNVD7uAkw7BS7
         t72R6DAWnkwp6AGBC0wv0cFPTF4lHDal0YzUJ26Bq5U9uRyRt+18yhgYPi1UHHcuCMS9
         ootA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=n6j2OfPGySIyvw9qIgxi3GImZvjG+bJKkoT485JF4aY=;
        b=m/xgEPYSdLIzGb62Q+tUx7jJ6HU2sdtzU3ef5tdcUZGsH6ehYuMSrHr6ssSCdP87SY
         R7uWe+h94sgNeqVThr1j+Q2+RE0ig5e5cCpTiylBJ9ko5kTJ8j33n7SHscfTeWBTTqiu
         l+PHX9R0pn+UDY31wrONKFBsWQ8C/29Lg+swv6FVzCRPNQzC1Es5zpvJ4CsQId394FhM
         7YkzXw/TUSddPPEQ9ngtH78kjbR7dR2eA3ZFOtxv5ok2x8XHDwKtGo0PWajG/M5VNuzH
         t2fWvoHsaSNiSJbj0Ez7u3YtRPJVj7/fzI1ipJN8obYhZjxKKwOALazJSHnJxFsmX9Io
         PZuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=cmarinas@kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n26si392223qkg.5.2020.07.31.02.32.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 31 Jul 2020 02:32:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from gaia (unknown [95.146.230.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C58BD208E4;
	Fri, 31 Jul 2020 09:31:58 +0000 (UTC)
Date: Fri, 31 Jul 2020 10:31:56 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Sami Tolvanen <samitolvanen@google.com>, Will Deacon <will@kernel.org>,
	Ard Biesheuvel <ardb@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Kees Cook <keescook@chromium.org>,
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	stable@vger.kernel.org
Subject: Re: [PATCH] arm64/alternatives: move length validation inside the
 subsection
Message-ID: <20200731093155.GA29569@gaia>
References: <20200729215152.662225-1-samitolvanen@google.com>
 <20200730122201.GM25149@gaia>
 <CABCJKucS-DXPkHMCPKpbFduZApRdw=1DL4+YhULAsUNn=o-dTA@mail.gmail.com>
 <20200730152330.GA3128@gaia>
 <20200731064915.GI1508201@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200731064915.GI1508201@kroah.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: catalin.marinas@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=cmarinas@kernel.org
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

On Fri, Jul 31, 2020 at 08:49:15AM +0200, Greg Kroah-Hartman wrote:
> On Thu, Jul 30, 2020 at 04:23:31PM +0100, Catalin Marinas wrote:
> > On Thu, Jul 30, 2020 at 08:13:05AM -0700, Sami Tolvanen wrote:
> > > On Thu, Jul 30, 2020 at 5:22 AM Catalin Marinas <catalin.marinas@arm.com> wrote:
> > > >
> > > > On Wed, Jul 29, 2020 at 02:51:52PM -0700, Sami Tolvanen wrote:
> > > > > Commit f7b93d42945c ("arm64/alternatives: use subsections for replacement
> > > > > sequences") breaks LLVM's integrated assembler, because due to its
> > > > > one-pass design, it cannot compute instruction sequence lengths before the
> > > > > layout for the subsection has been finalized. This change fixes the build
> > > > > by moving the .org directives inside the subsection, so they are processed
> > > > > after the subsection layout is known.
> > > > >
> > > > > Link: https://github.com/ClangBuiltLinux/linux/issues/1078
> > > > > Cc: <stable@vger.kernel.org> # 4.14+
> > > >
> > > > Commit f7b93d42945c went in 5.8-rc4. Why is this cc stable from 4.14? If
> > > > Will picks it up for 5.8, it doesn't even need a cc stable.
> > > 
> > > Greg or Sasha can probably answer why, but this patch is in 4.14.189,
> > > 4.19.134, 5.4.53, and 5.7.10, which ended up breaking some downstream
> > > Android kernel builds.
> > 
> > I see but I don't think we need the explicit cc stable for 4.14. That's
> > why the Fixes tag is important. If a patch was back-ported, the
> > subsequent fixes should be picked by the stable maintainers as well.
> 
> If you know it ahead of time, the explict "# kernel.version" hint is
> always nice to have as it ensures I will try to backport it that far,
> and if I have problems, I will ask for help.

Good to know. Thanks for the clarification.

-- 
Catalin

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200731093155.GA29569%40gaia.
