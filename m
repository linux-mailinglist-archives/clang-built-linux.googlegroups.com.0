Return-Path: <clang-built-linux+bncBDV37XP3XYDRB3MS232AKGQED34SFFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A0901A77F4
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Apr 2020 11:59:11 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id u16sf9300350plq.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Apr 2020 02:59:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586858350; cv=pass;
        d=google.com; s=arc-20160816;
        b=nwOs4/WmHC8jGsqWYT3NoHaifSs1Pe8Ss+7aw1BsihpUa+v0NgdqeP8yO7PR3inW7q
         V6O3JdRfRNo77F2ahwdQw/BqmMkO+0Y6UU+zKgsIkIKV6cRluJNfiaa4vUeGaQ9DVZOl
         9Oo8zoqxsrvwGsL12lI5NFNGNVxCkaKcm3IB2u+ZMFMsoFlEtdq9ar0tC2uwd9vwV2Jc
         clfDKtF//pbWDwvdfKXsxHVC/UR0RBmCkOOsOYhKZMTOIALtXBALZHQ93tlYxKh1/Ew3
         bLSjwtvbu/aPos56ilkDPtn2aizGcAlZXqiReycqBZuDqBbGbbClxUgjXuGZWT2X+EHI
         EViw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=vMtSfQxzOI+RmKSZMWamHNrFVfBM4zvE1d5KTtek1Bc=;
        b=yFYX6RSvsDDwEp5H8FH9FleFF8V0etGB2pmihqfN4At2UGS/9wplH2z32wcVuv665l
         EiInvG80mesy2iV6C/JKwHZPDnj/wks/TJGBhPoKlXPzSAefveXOPZT/h/fD8ffCv212
         erB3CZcmMC/Z0YB1zCdQ/9/Z0Ke9y4+VYqJJ54dSJzV3D5VUC6/pe3Qs/p+2bOYPY6wI
         SGDxg/dzKUDWLPh8Ti2hAurLSpoSHIxHvO4kt5pjwKWjji2f1Z7CTzj+filWYoveY850
         IdeI9oP5t0noBKTqY+jZNMGkctOKsE0J3FX/5tPTHGScumOLC2W8ZDRflK7NUn9BOakR
         tqww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vMtSfQxzOI+RmKSZMWamHNrFVfBM4zvE1d5KTtek1Bc=;
        b=C0kdBVlH2eFlS9tIgIl+8wSJY2+J11wF8edYDAcP99Ij/zF8Lg8fMc6mW/SqLPopU+
         2rOoOxGMJokUrfsbGjucVaPBju10Qdr+JC52oyOeTWW+PI7+zhMUTanyFjgwt9UVDmCa
         xLnZ9S4LlD/CxN+JMhSbTDJouw0uIQzW+ydamjCBhHw/+y7z05K4Ui5Dt66Juq2cQx3O
         77z1qTMAeA2Py0sEUGwqdQ+B324gqiAD3Pncyw/5ztA+5y0EX19PemB/eHCgNjLASfGX
         pV3YBKXCaiO/+FyK7MuB11AA/8SBYaBawIrr2QbBwLPeTTXQNS+PayOXW4mvdK2bayWu
         FaAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vMtSfQxzOI+RmKSZMWamHNrFVfBM4zvE1d5KTtek1Bc=;
        b=QTdyK8rfNvzEp8ASH5oCeC5SwFuaZCdicTGnk7C1crSPrnKawAg/pj0QRnr/7kuyt9
         R15X4EoU5VN9fTZcLwwOASElwSeGl0qLR0CPV9Jbn/myuYDe3B1TkkuQOUg+ALptNslq
         XwAAuVCvx02Aq4wcU3WpJyOnsa2kR6PL2ehHhomdRSTe8NAacIMg/QTdVtaYI/hc9j3P
         WywKoYrVYo+knE86HE8tU+7iOnOZp1GNkaz4LFbfW7bRxzb4rsJu742TpzDPYGTNchaL
         60lwikArHeEW8Xav8OtKzE0Y+sB2AuFdTRVbyAgtC1G/ovoP0SGRTZ8+fZYYR/TGjKv8
         Km4A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuaibPlMkg3FZ/m1s0uprcaZspa0tfafzNTGAx6LOz+kIJG286wF
	czJXHJrTGwDYyNdqfrb4pHU=
X-Google-Smtp-Source: APiQypLesYE5EKm0beGp+pKqar2B/8cUgoWUi5f6u0Y/gzvN3sz2cdTQARL/4ZEVO7lYOT8Waoqp7w==
X-Received: by 2002:a17:90a:3568:: with SMTP id q95mr19060421pjb.47.1586858349883;
        Tue, 14 Apr 2020 02:59:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:f196:: with SMTP id bv22ls3301496pjb.1.gmail; Tue,
 14 Apr 2020 02:59:09 -0700 (PDT)
X-Received: by 2002:a17:90a:e397:: with SMTP id b23mr28417164pjz.137.1586858349344;
        Tue, 14 Apr 2020 02:59:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586858349; cv=none;
        d=google.com; s=arc-20160816;
        b=MZ4YUCmlt2HJrfiPmGNGSHTxTyoHBofHxTYs19DSJlfDPE4JRVDuJan5GfBmSIrCTF
         NJ4KBaT/bx/+ermRT5TpB/kfJaTpdD8O38GKIk0qUrG5Khq4Wu60c54KsGam0eZMx2vd
         bJ/0nBfAMy10YklfijHsbwYz9hoZ4grQ3sN7HVJCEEHhVq1Av3dhjAehVm3GbbQJEdDe
         14qraIr8c10US4zLrr9sAQTSQajHNmGC+sfwqsRg31pHmiVXNr9QG5lMXRFUKacf+1eD
         ooWasoj43YySMsSZeGDFpULjOmI+q2JoOXfTPCtiEbRczZ83WC9sESVOXYUKec3WyAbz
         reig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=br9WOVY5u2ADvGjGMhdFs1wXIc1AMol/eI2z78EwOsM=;
        b=j7T1dkD+fFdizlt6ci447be6Zc2PrMUu4evMrIgXD5tHRuNaY+niCbEWvAO5dI1vJL
         9HUF88prc+JeeR4HFYacu2rNRyT7x0P2eRb9z0x/OZ6s/8meHcS+5Bly9uvC0PeKFour
         wirJMU7yP/1IMG7JkIEDoLwdFcfxBH9az5Aetc+QBEKDRp9ACvtOloxaKblRxNR5WlTO
         PFLUDSBqgP3TO727/jWME3Q95NxN+Ws0TftsF2hsABlTourx2TKanJrxYKTnnwNk509r
         zlQHEN3QunISWH73WLLnRw99PAL7rVAnuvME3BiqA5OyJs7S0h7DYXZd5xZauHC9VEHP
         yhLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id g6si535813pjl.1.2020.04.14.02.59.09
        for <clang-built-linux@googlegroups.com>;
        Tue, 14 Apr 2020 02:59:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 605841FB;
	Tue, 14 Apr 2020 02:59:08 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3EB863F6C4;
	Tue, 14 Apr 2020 02:59:07 -0700 (PDT)
Date: Tue, 14 Apr 2020 10:59:04 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Fangrui Song <maskray@google.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] arm64: Delete the space separator in __emit_inst
Message-ID: <20200414095904.GB1278@C02TD0UTHF1T.local>
References: <20200413033811.75074-1-maskray@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200413033811.75074-1-maskray@google.com>
X-Original-Sender: mark.rutland@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=mark.rutland@arm.com
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

Hi Fangrui,

On Sun, Apr 12, 2020 at 08:38:11PM -0700, Fangrui Song wrote:
> Many instances of __emit_inst(x) expand to a directive. In a few places
> it is used as a macro argument, e.g.
> 
>   arch/arm64/include/asm/sysreg.h
>   #define __emit_inst(x)                       .inst (x)
> 
>   arch/arm64/include/asm/sysreg.h
>   #define SET_PSTATE_PAN(x)            __emit_inst(0xd500401f | PSTATE_PAN | ((!!x) << PSTATE_Imm_shift))
> 
>   arch/arm64/kvm/hyp/entry.S
>   ALTERNATIVE(nop, SET_PSTATE_PAN(1), ARM64_HAS_PAN, CONFIG_ARM64_PAN)
> 
> Clang integrated assembler parses `.inst (x)` as two arguments passing
> to a macro. We delete the space separator so that `.inst(x)` will be
> parsed as one argument.

I'm a little confused by the above; sorry if the below sounds stupid or
pedantic, but I just want to make sure I've understood the problem
correctly.

For the above, ALTERNATIVE() and SET_PSTATE_PAN() are both preprocessor
macros, so I would expect those to be expanded before either the
integrated assembler or an external assembler consumes any of the
assembly (and both would see the same expanded text). Given that, I'm a
bit confused as to why the integrated assembly would have an impact on
preprocessing.

Does compiling the pre-processed source using the integrated assembler
result in the same behaviour? Can we see the expanded text to make that
clear?

... at what stage exactly does this go wrong?

Thanks,
Mark.

> 
> Note, GNU as parsing `.inst (x)` as one argument is unintentional (for
> example the x86 backend will parse the construct as two arguments).
> See https://sourceware.org/bugzilla/show_bug.cgi?id=25750#c10
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/939
> Cc: clang-built-linux@googlegroups.com
> Signed-off-by: Fangrui Song <maskray@google.com>
> ---
>  arch/arm64/include/asm/sysreg.h | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
> index ebc622432831..af21e2ec5e3e 100644
> --- a/arch/arm64/include/asm/sysreg.h
> +++ b/arch/arm64/include/asm/sysreg.h
> @@ -49,7 +49,9 @@
>  #ifndef CONFIG_BROKEN_GAS_INST
>  
>  #ifdef __ASSEMBLY__
> -#define __emit_inst(x)			.inst (x)
> +// The space separator is omitted so that __emit_inst(x) can be parsed as
> +// either a directive or a macro argument.
> +#define __emit_inst(x)			.inst(x)
>  #else
>  #define __emit_inst(x)			".inst " __stringify((x)) "\n\t"
>  #endif
> -- 
> 2.26.0.110.g2183baf09c-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200414095904.GB1278%40C02TD0UTHF1T.local.
