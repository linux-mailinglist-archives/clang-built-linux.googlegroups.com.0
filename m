Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBN4M36CQMGQEXC466KI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3b.google.com (mail-vs1-xe3b.google.com [IPv6:2607:f8b0:4864:20::e3b])
	by mail.lfdr.de (Postfix) with ESMTPS id B32063991FF
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Jun 2021 19:56:08 +0200 (CEST)
Received: by mail-vs1-xe3b.google.com with SMTP id m14-20020a67fe4e0000b0290255df7450besf915886vsr.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Jun 2021 10:56:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622656567; cv=pass;
        d=google.com; s=arc-20160816;
        b=T0de3GXXpf/68yS7ET2luQ70reNpq9XOBqf2sj3vN4klm8JM38mhkD+L8engmfF1Be
         dI4qc8/+IsHSNIcuKwmpxhQ0nIr/jMP/ZEV82EOmu5EDasZyKM987PUylmt4cl55TRKh
         FG8TyeLZkFEJlXwWYck06whJY98xABpG4cXQR5pDjYcKto8eLo6MxqpmlFde+pkpNl23
         HnJzK7A75UhN6s0l1VngQ0BdthDfAI86NeKLxKFqWLRfHIEkoBGvQIDq7h6jgZHp2tiB
         Z182IzKOhkmu/hAtj5RDFzKhuQrSurk/aS8itpEA3x2q8ad4Hh1cvwIRTrYIitTQ2XrL
         sAiQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=ff/2qRr6+oI5Mw/EpnR7PXedPlaV8AkAklNUDbuGj0o=;
        b=YUnMTGq4FMTndZJTaogaDf6Ttcc2Y2OoUkLDlHRied6hXsF+Ru2xdISmzJ9ldsRb6X
         ULimTEkMYk/QoOUd4oP1DlFSclDxdHYETB/b2OMT/DKkFMqAqHKp1cRBFV/y/3l5GWsA
         PYb2/mPYm+5EkrkwW5inp9NZ+VrtnyVVAXnsunBzmaC0meNy4kCR06u0Vc/MB6Ef2C8O
         NnDiQjrQaYevV4kCar0UpsmYG848+JF7k0zu8bTz3gB/aEOa52VplU127l514/YA8oeJ
         4/IqhngOSeL6Wy5Q5Tki84uNDdV0fUYPVv+q+CoMbpaxOSVAXgXQcvaWN0SF2eKs2kB7
         47ug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=t5cJqRiU;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ff/2qRr6+oI5Mw/EpnR7PXedPlaV8AkAklNUDbuGj0o=;
        b=HYPs/GC+1+x1Kt71oHaSWZvfKt4y1yzaRiedr1Jd2wweafYHoZYHOayQcrwRThqL4d
         Mon40vUheXgAIjVpnY6Uy47XQg7Hw92bvkabcIqBPyyhMsnw4pd5zqR2hTcTXdRdDzvL
         qhja/MkszCRXorGVt18j70C1+H/otmg70xQBFuG1M4pgjjQ5X3CQkfawiTtvKvBWzhC/
         V6PKjP2kZD1+soIpSkp0Zi+Y9WDjqEDsphxYbd1hbDtkRg1uih1YDq4Vd2ZL80/x89y2
         +VMsDt3W02M83Ca+8CLHPnoWKdAIvauwtCdupe7PYDfqUANwKDMaGsC7KOIv45x7oi+4
         L+gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ff/2qRr6+oI5Mw/EpnR7PXedPlaV8AkAklNUDbuGj0o=;
        b=Ik5s23Z9DwLoppRdl4vsyOk4P1JuKT2AyxfpsZMc6q/9LYrx0Y0EO/cs8va+X/t3Tr
         wackzoYtjH2B8+R1EntcgWIMfr/h1c4Xn9KQKIdsVYNHFDFwtB/CgXWKkujF+kW8sAct
         78to7j/Ae/GcHvH/xIkA/yluIetSuLtiYOew3RXd4YhGZ9Dc4f39dJPN/2TbRivO3Bpw
         mow/LmT5qPd0d06DtyZVs/l1+4iDJwmaxl6cmPpz99EYkG8f6hhl5Oi6WWSXedGqoYQQ
         J2eQjTrjT8bf1ND0eskGvXBTDbzPCsOeJIz/ZtVyGUSH4MwnOv8GlXBLMBaK5Yca381N
         nKDQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533kbMKDStdm7+39iYlTvsZhYM8Wnkz5gfgMKH4E+7bMSxYXFtcP
	16AZ+7AFcgBs7PRT4/qGlNE=
X-Google-Smtp-Source: ABdhPJwony+q545W5TQauyFuvpYGDWCyCkdsq2Pp6ed1jUCGMC22jRDISxOgRob4F8koX73RMNFmrA==
X-Received: by 2002:a67:d09a:: with SMTP id s26mr26348400vsi.7.1622656567620;
        Wed, 02 Jun 2021 10:56:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:cc14:: with SMTP id q20ls237597vsl.2.gmail; Wed, 02 Jun
 2021 10:56:07 -0700 (PDT)
X-Received: by 2002:a67:ea50:: with SMTP id r16mr25757090vso.11.1622656567145;
        Wed, 02 Jun 2021 10:56:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622656567; cv=none;
        d=google.com; s=arc-20160816;
        b=cFR+cvkBt+aQwKbIgFCaZkv0AjUAvFA7e/KnoeLPvZ+99+xHFZRtuGnDW6ZNq4IpJ3
         stijAS2ayoDQvbf+SPe0/07EtjOFn3gfpDYsAGDZNSw/hzgsTyojoZ8kAPUrC8dS5ODg
         8+VhJ3XDBAfKFcYrkAXnJ+Not1wmgm73WZInZF1gnGMAliv0FLq6TJDZz9a/F7u1JrMX
         CZF9gErL9mi1JPeuw2VUTlB6+cz5V9VpeQeKahxXtsH2HYbny19QHzG0UcKbc6xgc+XE
         UPLAM00+c/BEeHbNzw9dlk73XSYWJvx0AOojwkTcjLX2j/QipbIEQq186vqjukLss3cC
         8W5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=2P/ck6k7OrZN2b4Og9UOKBapOCxhfzO/etbw9mrWLVA=;
        b=lAk5BrLbKbx+MIU6jprcUx9SwWPf/VDyfZQxkcnmw8Qa7/0c/PhQvJaMhlUTMUGDSF
         QRergoqm2dyyklz35TU3MlA3Ew3UUdpcoA+NUsix3Pc0lQEU4+95X82RB4nXz1YN9Epn
         wNz6in9HXGds9gOGH8OljJ4OAJWvl4y+gxIqfgAdAY4uIRPgRSqrgfY57WdpAluCC/pT
         sIlBd0aH72vr6XRaXrWaiYPlnrFlQFVwdrDOPOodUSUo5ltCRS+UO2cmgWGQ2gSP1IKR
         3XhcXC7dA/ShJbizZ0UoyfDXGZAMHgQKqaTL23U5KUbCwwueuNpm6O3+o0kLy4WkB5sv
         XpJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=t5cJqRiU;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n185si63093vkg.5.2021.06.02.10.56.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Jun 2021 10:56:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5793661DA5;
	Wed,  2 Jun 2021 17:56:03 +0000 (UTC)
Date: Wed, 2 Jun 2021 18:55:59 +0100
From: Will Deacon <will@kernel.org>
To: Douglas Anderson <dianders@chromium.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Seth LaForge <sethml@google.com>,
	Ricky Liang <jcliang@chromium.org>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Ingo Molnar <mingo@redhat.com>, Jiri Olsa <jolsa@redhat.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Namhyung Kim <namhyung@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	clang-built-linux@googlegroups.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-perf-users@vger.kernel.org
Subject: Re: [PATCH 0/3] arm64: perf: Make compat tracing better
Message-ID: <20210602175559.GC31957@willie-the-truck>
References: <20210507205513.640780-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210507205513.640780-1-dianders@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=t5cJqRiU;       spf=pass
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

Hi Doug,

Thanks for posting this, and sorry for the delay in getting to it.

On Fri, May 07, 2021 at 01:55:10PM -0700, Douglas Anderson wrote:
> The goal for this series is to improve "perf" behavior when 32-bit
> userspace code is involved. This turns out to be fairly important for
> Chrome OS which still runs 32-bit userspace for the time being (long
> story there).

Watch out, your days are numbered! See [1].

> I won't repeat everything said in the individual patches since since
> they are wordy enough as it is.
> 
> Please enjoy and I hope this isn't too ugly/hacky for inclusion in
> mainline.
> 
> Thanks to Nick Desaulniers for his early review of these patches and
> to Ricky for the super early prototype that some of this is based on.

I can see that you've put a lot of effort into this, but I'm not thrilled
with the prospect of maintaining these heuristics in the kernel. The
callchain behaviour is directly visible to userspace, and all we'll be able
to do is throw more heuristics at it if faced with any regression reports.
Every assumption made about userspace behaviour results in diminishing
returns where some set of programs no longer fall into the "supported"
bucket and, on balance, I don't think the trade-off is worth it.

If we were to do this in the kernel, then I'd like to see a spec for how
frame-pointer based unwinding should work for Thumb and have it agreed
upon and implemented by both GCC and LLVM. That way, we can implement
the unwinder according to that spec and file bug reports against the
compiler if it goes wrong.

In lieu of that, I think we must defer to userspace to unwind using DWARF.
Perf supports this via PERF_SAMPLE_STACK_USER and PERF_SAMPLE_REGS_USER,
which allows libunwind to be used to create the callchain. You haven't
mentioned that here, so I'd be interested to know why not.

Finally, you've probably noticed that our unwinding code for compat tasks
is basically identical to the code in arch/arm/. If the functionality is
going to be extended, it should be done there first and then we will follow
to be compatible.

Cheers,

Will

[1] https://lore.kernel.org/lkml/20210602164719.31777-20-will@kernel.org/T/#u

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210602175559.GC31957%40willie-the-truck.
