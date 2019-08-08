Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBQFOWHVAKGQE4NN5KNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A720867B2
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Aug 2019 19:09:20 +0200 (CEST)
Received: by mail-wr1-x439.google.com with SMTP id b1sf45429347wru.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Aug 2019 10:09:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565284160; cv=pass;
        d=google.com; s=arc-20160816;
        b=QPdWz9APl7HtEG83lN4fP7VZrSFeZpcusO8un7GAbtcnV0d8sQ4kr9NjvlLTqkGehW
         Gt1/ySu4nD1sxPlynasTZiz4gz8RjhfHZItsGDmNNwg8iw4TONfMtWwFKxT8LKZjXe27
         jD7C6ZsjiHx4C5fonzqe8ETgXnM2nCyeuPKl0wPQgiF+VrYf9S0QPN/1SZ5krSL+v3g7
         M7r+6XvWrQM3f8rKG9/b3RAYOn1z2NeCH422g0f1Rp40+7bRdkt4ksMGsNIS28ZynGZX
         vuJbcHXCt/CqpW5cBz0OPT/ijgxRqOkJdtbwtp5FBRxg3h8LpZ2/INgljNBkKDhS6hUt
         N8tw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=ItLDD2kTVVovZEx11ltacLEHLhcJa/XbWz1oNhpCgns=;
        b=nMKRcVGExUCljtjAuGp0vPrfg0YtCdCKhphSlp4/uMKgPG5Cy4aTfkL88s9pHL6GxX
         a1bi3w6Rt16Cfnbh5omISUtanZ9rMqU49sF4RVp8D+uNSp1+zPnHdQ+kR/N7pIX2CB1B
         5lah0rTvqEXTPYdwOgkoe/PFE5tJ0OVRiLOqiNGMuGmLXsjObykgKQI5kIVHdnBYSEwH
         pXiadr+UxqT1NiTLB3JtM03Rifnsrm1qcCLL94cEqiaxFIgDZpu1GvButJz4nvfqDuY7
         qPTEgy+L7/Nm0r1dzgCeqXmeJICRTaifEDhF7Nn+BqZFbqyFI36wXE355YRNfTcAW1Av
         hlfg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="mYI6ER/m";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ItLDD2kTVVovZEx11ltacLEHLhcJa/XbWz1oNhpCgns=;
        b=e7UWQ+9PLCmkubZy/9CG+vyGdpCscc99zxecXR4syiZ4WJMwgVepL29B1t0p1lmVb1
         uPwXnXJ8QbCzaDtm47jHF4avpzaPfAeI3vRIb7HURU0PJBhWnA4bCfIH43vk1dPiTNoV
         rbplJYfTtOBZVarCCBekwxxuI8VK9CrEghnNIDdHV5yGpMA9Kp5SvNg33EHafyMqtCx4
         SlCDc3RHhr3UQx7ikoiVrP8qI2YsjCuEBQHXTQFADL3aPyIpzCdRvTgR2c4E8lR1BhGH
         uWtYSY2k2FTxhSq4hAOg1AKe+UZurwPMBK6ReZx2ZiFJeQ8ZhR8SXO5ZSIk/cXL/GPx7
         Yrww==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ItLDD2kTVVovZEx11ltacLEHLhcJa/XbWz1oNhpCgns=;
        b=RRPE3obCgCi7lpitFPwAfiukUTDl+lDTBpH9rhiFe7JEmBT0YlbkiaA0G8FSIYM7nh
         78h8CcYLMLVdvEBJkQQ5pJAmTffZvdKPttnwEpoi+2Mzo/DKFNvBDXIQwKX9+xJ/4wUE
         /8WwUym7OfS9nP8A3ZIX9NNIXO90WdXlmt2Cm0QTGzL9AHLr1hBNhu1KsrWopav7u3du
         e+uStfPlg3J585Qd4TtoVX18HEXIpvJfWtg39jh272A5UkIKNbgt2bv6hCHZLLJHoWp9
         9V2sDM++hQnO6D0CRFmrBUjKCu7zsQnXN5EcvxBrA+du+TjTh7pmurtqQcRxxeF46agq
         V8hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ItLDD2kTVVovZEx11ltacLEHLhcJa/XbWz1oNhpCgns=;
        b=cuNqNH3JDF+9bNjEOk5BCBe2NWk+b4oNJOMIQrYAbM8ZUFq/hxAueDns2rV3wZZpZB
         GJCH06norfJRByxkl//nJYx0Io+7Xmm/rq7MnTOjUx3pV+VVkmjK+uIe/TCD9E1haXJO
         RXSLc5TUChc8HkXlU0qluPdc7Tm0Z7zR9rcDiDVvSJSITd7MbVVsDyFfA6mKvYX9zP1L
         uzlNgREGPoi/xdbA7CMKrBZyOY7RAcmMEmnBGHm1dB6HxGuWSxQeFXRYPDmGqCMI/0H7
         vuT92nwfrJAKEybfpDZ5uIc8rJ8bv72+pXVhVCmzWSzBj4IfDVhgzTTtX4wA2n1Niew5
         RgeQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUpUcGjiEnKg2lv08FkPZaHFVhwXMLcUaWfr4vnsGq7txbhR/T5
	6lHBCqOBcruVyViNxayiW1o=
X-Google-Smtp-Source: APXvYqxDVbg/wOUqCc5AykTXoepDf568IPdJWKr0ZuIEGmbgfawqXg42WHHqzCvc27XxnLX+AZ1tNA==
X-Received: by 2002:adf:f591:: with SMTP id f17mr18821084wro.119.1565284160301;
        Thu, 08 Aug 2019 10:09:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4982:: with SMTP id r2ls2656417wrq.15.gmail; Thu, 08 Aug
 2019 10:09:19 -0700 (PDT)
X-Received: by 2002:a05:6000:14b:: with SMTP id r11mr18443580wrx.196.1565284159947;
        Thu, 08 Aug 2019 10:09:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565284159; cv=none;
        d=google.com; s=arc-20160816;
        b=Xyzt5fcskkkEF/tlBUIH82kDSX1Gzt3hNquLhXl+rxNSYDFl0Y2FeJigqIktLOFqgV
         qAg2o074XCC7dRuUWMb4jYqlTws9YzbWPLwLv9ts1VOesnA6VIJx1ASIyUMUz3fDiCJ2
         m1uMaMWykDON2DTTobHdssi6xVKVRS6ITEhCZDPXaFJ4kR+6muUiPfsuUjVscwdHTe+a
         AZ6/kX6inFiHGKJUKMzT2tx9UzlZRXlLL7GIB3/mILiGJtQmFIdUH3plwvnGPtRpI2Bb
         0WY0yObqktFgZJioC32ntc0EGGnpBN1XZcCFwwIL8FYtsCGwdVGPWj0N8QkcGELMeqcf
         JfPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=/RMqWJBZb+n91pADuicj3MI1Qevek2uTYFVfpzwwQYk=;
        b=Ndjvv6X73XGyQOn7pnSweOTG9G81HiIsT7DyrgFNQQn0wOqWVkMx7UuFRdHh4QuDBE
         Y1ROtV/pmlusQUu5T5yWqDSuFViermj3/k65eEVTBDMe2PsXdnl8yP05FcG088g3kBjx
         /C8bcvptwrgqYOmlFY0ppU6khnPpP0nvqny4xf7EC2areO2ZAXf39cKGDnbFIr3Gx3lj
         Bkd+lcb3KlRvg2KTLDemAkaEVTaTyO5FiIMpLD/uTExGgkb0SVceTnoAHnoVDhM9NpM6
         VvG6Fj+TCkkclEPm5sWo1cngPBOFkTA8DD+teHx91KfHY7ujCOcqy9yymBygytNcFHMk
         srDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="mYI6ER/m";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id f13si302384wmc.3.2019.08.08.10.09.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Aug 2019 10:09:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id f72so3104659wmf.5
        for <clang-built-linux@googlegroups.com>; Thu, 08 Aug 2019 10:09:19 -0700 (PDT)
X-Received: by 2002:a1c:f116:: with SMTP id p22mr5413792wmh.70.1565284159335;
        Thu, 08 Aug 2019 10:09:19 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id c15sm22423803wrb.80.2019.08.08.10.09.18
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 08 Aug 2019 10:09:18 -0700 (PDT)
Date: Thu, 8 Aug 2019 10:09:16 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Mark Rutland <mark.rutland@arm.com>
Cc: Qian Cai <cai@lca.pw>, will@kernel.org, catalin.marinas@arm.com,
	linux-arm-kernel@lists.infradead.org,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64/cache: silence -Woverride-init warnings
Message-ID: <20190808170916.GA32668@archlinux-threadripper>
References: <20190808032916.879-1-cai@lca.pw>
 <20190808103808.GC46901@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190808103808.GC46901@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="mYI6ER/m";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Aug 08, 2019 at 11:38:08AM +0100, Mark Rutland wrote:
> On Wed, Aug 07, 2019 at 11:29:16PM -0400, Qian Cai wrote:
> > The commit 155433cb365e ("arm64: cache: Remove support for ASID-tagged
> > VIVT I-caches") introduced some compiation warnings from GCC (and
> > Clang) with -Winitializer-overrides),
> > 
> > arch/arm64/kernel/cpuinfo.c:38:26: warning: initialized field
> > overwritten [-Woverride-init]
> > [ICACHE_POLICY_VIPT]  = "VIPT",
> >                         ^~~~~~
> > arch/arm64/kernel/cpuinfo.c:38:26: note: (near initialization for
> > 'icache_policy_str[2]')
> > arch/arm64/kernel/cpuinfo.c:39:26: warning: initialized field
> > overwritten [-Woverride-init]
> > [ICACHE_POLICY_PIPT]  = "PIPT",
> >                         ^~~~~~
> > arch/arm64/kernel/cpuinfo.c:39:26: note: (near initialization for
> > 'icache_policy_str[3]')
> > arch/arm64/kernel/cpuinfo.c:40:27: warning: initialized field
> > overwritten [-Woverride-init]
> > [ICACHE_POLICY_VPIPT]  = "VPIPT",
> >                          ^~~~~~~
> > arch/arm64/kernel/cpuinfo.c:40:27: note: (near initialization for
> > 'icache_policy_str[0]')
> > 
> > because it initializes icache_policy_str[0 ... 3] twice. Since
> > arm64 developers are keen to keep the style of initializing a static
> > array with a non-zero pattern first, just disable those warnings for
> > both GCC and Clang of this file.
> > 
> > Fixes: 155433cb365e ("arm64: cache: Remove support for ASID-tagged VIVT I-caches")
> > Signed-off-by: Qian Cai <cai@lca.pw>
> 
> This is _not_ a fix, and should not require backporting to stable trees.
> 
> What about all the other instances that we have in mainline?
> 
> I really don't think that we need to go down this road; we're just going
> to end up adding this to every file that happens to include a header
> using this scheme...
> 
> Please just turn this off by default for clang.
> 
> If we want to enable this, we need a mechanism to permit overridable
> assignments as we use range initializers for.
> 
> Thanks,
> Mark.
> 

For what it's worth, this is disabled by default for clang in the
kernel:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/scripts/Makefile.extrawarn?h=v5.3-rc3#n69

It only becomes visible with clang at W=1 because that section doesn't
get applied. It becomes visible with GCC at W=1 because of -Wextra.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190808170916.GA32668%40archlinux-threadripper.
