Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBCO47X5AKGQEN7ETJDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 31D4E268C16
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Sep 2020 15:20:11 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id q95sf4880871pja.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Sep 2020 06:20:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600089610; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZctHEbmFXabJ/aFOVYss6/DIqrUsj9AxI19CXSwJz8tiBV5BbMgPsDQcpcm3lV+mWW
         FzHG/nhaPOvOTFCCfY+YoyLDC7AaDy0s7/ZFjNA/T/yZXO7SOd2EQ6KDYExK8ykEZ/wZ
         /fHdlfZuwBhryNHgpdwJdnEzHLgmAAScyGkN/P2ajki7oBfLuHnr6wHtEoN73k3Sx52C
         EtPslK6aOWb9XtJNjgFdJTkMgyGzCo/czrzQw+WRe/mnMFXfVJcA1tKsfrD85p+gjkyo
         7B5C+VN6H8pBzNhq+ouhVkZciLV+UGhW1jyepAurTyr/u4x+WYfmkcoLXxW8yA3MvHZC
         11/A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=PKxfmt6hAFf46q46wNpsYsiNZOpe29uvTCjVUAQYeCU=;
        b=W04RayTsfT8AitVnc5eUo2itgiZ/TO/zqyuVYL33yPvHV02ZdGmoq0zUgiIlvl8cfK
         90LBeDjHfuUUXeJBDEczibQsfJVM4U25xN0ZUJhFwpz+9u4AwAO3Ljj8RArw3e1LW7WU
         uF0F0S3lUFzBwjrP/OpqsCytVE+lVQl+ksTYGByHrGClEDAHuOPvSSbD9PRQGzfinnbf
         oQuXM9VvKbdm4fqDEJFfsKgTnj8MCKnRgQASzDctrY1NbHnJe+Gikf9+6AcEb6wyCpdX
         dZHq9iq+HJfBHyus76ghiTPRWFgz+NudeQzNShCW4KnHVBUyrmC65AeNWBHaYmWRAi1/
         wGTA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=0E0FBaqI;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PKxfmt6hAFf46q46wNpsYsiNZOpe29uvTCjVUAQYeCU=;
        b=qNZw7nPcLL8pyDqMS2YKT+8inA2f0uC/9fw/tDLWY9sEvpsYKjjZIfh3tCTZtbPcml
         2IH0eDlX2LPZ7BSh7jGcfTL0C9dHf0OWtA2BuDCpSbb6wLzLolQgRmcET7CWdOa/r0kU
         oDB9rerDfvunBvtkyDVKhBIVXrVzCCvc/pOl1y/LEd/4vOP2yfCHOE1MKGBiaeSvHMEo
         gRPDv+s3uaWcGJThwGN+S45lf3AfVVkJx11cFxi1+GDeHcdxTjFIaJaEYXr4KUZAjHnv
         aGpiR42zQ2axahsGlZnyFLccFR/rNoq2nREyc4IjP77FMAsvrX0U1LuAWq2IB4SzUORu
         cZ2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PKxfmt6hAFf46q46wNpsYsiNZOpe29uvTCjVUAQYeCU=;
        b=kJxzppJomZRMK4+AGbWOPplEE4Xs/DOs6RxnxxCbHuQMfsVep2dkaWC1PZ2NGQNswB
         PKJAlcfJp7CDwGXNBT8QOD+/p08qseJI1bXWC9INqdNKWfLQ2ddNi/6W+fHKIxU23eGV
         epEciOnPaomsiFE327GQr5acZfq8BiT2YtTPi8t/Ycnct0AiLbX58B5yFlRkjpToZmcP
         lCm4WzfQrFcRhR4TMCIsHdadhyiekOmKoVLBS9jE++YSBwy+es7hBjWNiAENSBvgt8Tu
         YVy2Zlm5hK+lLP4KjQpHF215DuSSnKpm4/vdwMFE9+oTzx1sp55LJpH6ASal2C3ONGpt
         ViXQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530/uVzu1MzbZ/8P6W1byp3ivAQURktNE3ay5Z4jJDotBAZHdB8n
	jEzfPu65NAa+tz7PrUi0gOY=
X-Google-Smtp-Source: ABdhPJzK/KeKHAfmuYz2Nh40gWxpWkKSZ5SE3PWnhB4uDbS6RD3mSaTBF3R/cx/QRVi7+RtUbwicEQ==
X-Received: by 2002:a62:6493:: with SMTP id y141mr13591691pfb.16.1600089609878;
        Mon, 14 Sep 2020 06:20:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:4e13:: with SMTP id c19ls2834137pgb.1.gmail; Mon, 14 Sep
 2020 06:20:09 -0700 (PDT)
X-Received: by 2002:a63:6346:: with SMTP id x67mr10968064pgb.121.1600089609311;
        Mon, 14 Sep 2020 06:20:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600089609; cv=none;
        d=google.com; s=arc-20160816;
        b=tIHfG5y/9Rn3xGToX8hXgf53cF47IYHCHjuCfxgJA09lw6SXnYiSFa6C2W4pJhMAie
         KyYp6aJi9KmM2Vbz0M/HNzlMpFi2hWhYlRlhVZnJkR7TOWMcdja2UV0IrLAo1M3POMin
         3hhLE0mk63NfzGJJeKfDJv2kemier086ZEL4aJnN2qLVP7zkofbuZsmFy26L/Yh/wdEs
         xmP6Fcj5+G8z9y4uU5Y31prjrIUaeE2qHgxVnFKRmmIj1npVp16tyXuOkd+KmgpqI6ZQ
         zoQfbfmkiz5iojjlk77mJ/cjCNH+iJcONnJdxVKeYeFcYwQ8ah3D99A25e9sxH95QfvL
         r8Zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=YcqILmOhsUYWVM1kwUa0XFeZlJyAnsyXrSpe8MlUBEE=;
        b=VJSnbjDbs5RC7rUq3mVq24fJ4Rr2tRPnk9KMJnl42E1XpphgjOdZ4uJR0+M7CDyJoL
         4E/aelzsDP8QNYBubnMi0LjgWnK5gPUpF6x0ZoIqB1ADiMI82bzjwNlIGh8BfmT6yzL+
         f4aCFs4KkEQru8ElmIVHbujSA0xF8cfIu9F3VWKmUx6jbjpBbR0Pb6bHDlo+OCMZFQje
         cIzijSWH7AbH2jQWg1VRJ7oS9kzr3aFqyHd6ceEHZcYpp+QNHaUKkllXAMaCE+EYUrTa
         UoqVfmx0FoiNr3pLQpD6AsVxluXljt0ruwnhQXLD8/AUNpIeJ5LQTBZxQvVJ6ivrNnGb
         2g0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=0E0FBaqI;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 129si516408pgf.2.2020.09.14.06.20.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Sep 2020 06:20:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0B3E2208E4;
	Mon, 14 Sep 2020 13:20:06 +0000 (UTC)
Date: Mon, 14 Sep 2020 14:20:03 +0100
From: Will Deacon <will@kernel.org>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	Ingo Molnar <mingo@redhat.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Michal Marek <michal.lkml@markovi.net>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Stephen Boyd <swboyd@chromium.org>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 1/4] kbuild: remove cc-option test of -fno-strict-overflow
Message-ID: <20200914132003.GE24441@willie-the-truck>
References: <20200910135120.3527468-1-masahiroy@kernel.org>
 <20200911152225.GB20374@willie-the-truck>
 <CAK7LNASijUXVmZ+AfuGOnAFnbfUpr3S2ncSxABt4bGF+agxg+A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK7LNASijUXVmZ+AfuGOnAFnbfUpr3S2ncSxABt4bGF+agxg+A@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=0E0FBaqI;       spf=pass
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

On Mon, Sep 14, 2020 at 09:51:31PM +0900, Masahiro Yamada wrote:
> On Sat, Sep 12, 2020 at 12:22 AM Will Deacon <will@kernel.org> wrote:
> > On Thu, Sep 10, 2020 at 10:51:17PM +0900, Masahiro Yamada wrote:
> > > The minimal compiler versions, GCC 4.9 and Clang 10 support this flag.
> > >
> > > Here is the godbolt:
> > > https://godbolt.org/z/odq8h9
> > >
> > > Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> > > ---
> > >
> > >  Makefile                          | 2 +-
> > >  arch/arm64/kernel/vdso32/Makefile | 2 +-
> > >  2 files changed, 2 insertions(+), 2 deletions(-)
> >
> > This, and the other patch (4/4 -- I didn't see 2 or 3), look good to me.
> > Are you taking them via the kbuild tree, or shall I queue them in the arm64
> > tree? Please just let me know what you prefer.
> 
> I will apply all to the kbuild tree.
> Your Ack is appreciated.

For both:

Acked-by: Will Deacon <will@kernel.org>

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200914132003.GE24441%40willie-the-truck.
