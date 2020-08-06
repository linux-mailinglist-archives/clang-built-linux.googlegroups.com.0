Return-Path: <clang-built-linux+bncBDDL3KWR4EBRB7WUV74QKGQEDJW3ZCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe38.google.com (mail-vs1-xe38.google.com [IPv6:2607:f8b0:4864:20::e38])
	by mail.lfdr.de (Postfix) with ESMTPS id 0630C23D9FA
	for <lists+clang-built-linux@lfdr.de>; Thu,  6 Aug 2020 13:33:20 +0200 (CEST)
Received: by mail-vs1-xe38.google.com with SMTP id f25sf3943071vsp.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 06 Aug 2020 04:33:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596713598; cv=pass;
        d=google.com; s=arc-20160816;
        b=DfMmQvqF71yixbZYP+Y4oYMXOx+SZFhi3iNNmGb0evZNDppjzsT2i1YLVQOAuOPxTH
         qKUUq8ldnYwO9/hSmye8l4Z7zZhM6njfyrW1h6ScczYfVaPjpQWO/9LO1nSh5yGOdOR7
         YC0fUg4i07MfwyZCMLlBy1DIBrzjxio9jKuE5ZeEQWWhkMSj0T9VO+nOP/tLbOkb3unA
         vJeUmRfT6q2+DFtZfBv3FT+hhVlIGQZFAZpzq2aKJdxx8xn4s01Ej/NRebPMx6InRK6w
         7wbKvoeh+hcmr4oOH7v7eqIFxaOdLd807iecA+Q4RLIP8g1vXg6pKp6bdln7s+ElYOUA
         d3mA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=ZL1Y6ud+yeS72HVmI4gDa3KGYpS1y1hGvvVOP/VUyOY=;
        b=uBodsW8kXQ9EGrv69c+w7ABSIl2TdbZfvIVRedgZORfHE3hLtsEymabX6T0oos4YjO
         aY4Jfmvmae2QbPU5ry/ckYB3ntHP0N3UDmIJwHUGEc1HcV7BmlxwAvWc3RZcdyIgUn2v
         DTYMsaeqVTVYPOxFswhycXXXZvwiQ2w7YUJNM7uFHxX5SpXK9TtnEtoyPsUPMIhgT5RW
         XlGigvmcun7PEwLIYKUNczKFiGTGDys7MU8piF6TsMpqBDM34GRAE+Gi483GXSWEqzbG
         3aNCsX+QiNaAJBOZPCcD1UV+UVIq/Wo+/fQDSj7V7KZ8czBvviOa5PrQ7xP5r0TZV73F
         KiKA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=catalin.marinas@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZL1Y6ud+yeS72HVmI4gDa3KGYpS1y1hGvvVOP/VUyOY=;
        b=BuIP8cUH9QDOIuu93rKOBX4pDw1qxUSgA9OMHJ5ItJ8mfV3Qy2x5liXzvCrsrXorqq
         BPAmCO0hn1wIHPcTA6frvUW58TSCHduoj51hEfuBJfxZtEj9HYGMtHJqG3q7hhSjSAD/
         ZKPTMt5aegltVxNe5tkUL2JRyDUhKvcSY3+LIguUdIbvzRe9+opwUFPSKKzYiOKHEpAl
         kzik0oLxpyCaVVRlt0/yP+KsaPvQWeZAGfHVq6jRDnwFWMWC0RqhvuUNLh1T5z31nXBq
         Y9gizOmVPi2xWa3grxV9gMDjzDG/6e37ID+sfDDL5dZ2BjMhKZJT5h41JHyjcT3PqVgz
         MqBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZL1Y6ud+yeS72HVmI4gDa3KGYpS1y1hGvvVOP/VUyOY=;
        b=k20xfUs+lOdLgcz3qNkbkF4yG6UEEFOItJQf2fHs/ape8VbBNSLNL985mNvyKRTGCl
         SZWGuM+OUCfahsk9mxSo5t43WP7ONiVKZXyXkPbMMsRd+Ml2JYZR0WV/K0DCIbgGwkc1
         AEXlVVofpN2CgypeuH3S0/FwfHS6RVqZ1jhc9Cby6eSUaBw64lY4qJjY5/6e1OlkSf2O
         5XCV/eOCS5AftA+AYpzJiDVhXRmwRPtNAPvUelwWxoDx/oP2Rohq2i+0dY1dovfIL1K7
         LOnLgQ8L7hACVCk1U1yOCACgmb56SaC2afaPmiKYG+NeFEEXPZ2w7FoJvZT42MkXkemi
         fVsg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533FN0GlwVpN02efTY3ybAGyaeMJZaBEMf1XBvsW/SCOZ8WY/nTU
	SuVBxYTGHVWnNpXRORGC+gU=
X-Google-Smtp-Source: ABdhPJwFvsIIVT20lA05sLuwYOM3UmQiT6qB8Q/tAzpcYjrTjZ7bRZSKNbcpYouVWcY3SP7yVX9EMw==
X-Received: by 2002:a9f:380e:: with SMTP id p14mr5423540uad.21.1596713598770;
        Thu, 06 Aug 2020 04:33:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:211a:: with SMTP id d26ls261509ual.3.gmail; Thu, 06 Aug
 2020 04:33:18 -0700 (PDT)
X-Received: by 2002:ab0:6054:: with SMTP id o20mr566258ual.87.1596713598201;
        Thu, 06 Aug 2020 04:33:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596713598; cv=none;
        d=google.com; s=arc-20160816;
        b=w2HZZF0QxqzVsFZav79O5i9g6JThwzlNSoC5qzPv0gAT1L1WRmgBgCsz8L5Spp41e9
         8DrrujgiTLuLJv11A0w/P9B9uAX9Rl12o6f4DWhFahMQk5+RivsapCGHcphhZXWuajLi
         3kgVCIRBJ2KZd3mhH/xp9TuX4lkeN62bKu+HU2IhBZ7pum8ujPjWbBZNxKZBBABPwBDg
         5WPUVso2YbwBxKilrcptApuEIQsZx7HpWCDZ3wGRRmilJeBmRp7PJdyKEixpMduPPORb
         qOCAYhXLFnIdbU3LPdl+0TIM63AuiTpdAfsnYy46XfHYh+g7FVI1jmbnhDxFV0oUJSri
         OHLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=fgcHoFA4eenY0noPNHFHedel9bw16Lc1ggYvCvVu7sY=;
        b=AsXYjnk+uGSaFDxGeo4nR4rCey0dcBNKbPDHshV5vLb/MpE4SxfJkmDUJL5iYhXdAb
         kd8O23LR4/he/Y4azydvWVO9r5Faqa1fkTk5DVo/MABSLjxHEhc1lKgBJr8+fuzjOgQO
         5A5WdrveCGQeuvcNqOhvZ8zXriYSQBet8d0dugGvIooHIGkdZMxTVP2c9gLUAbIpjbXp
         96MM+FceBuNejSdD2azW1olMmRuRr/Y+ZWw1kvRK2a1yOCEFhXGj+0u5vGHK8SezdRuU
         4GjCiSQVhMM4ifHk+FJDpgkTkkKu2cyVa/urGCa6Mwz9aTxfMr4cv/bSQuLdR4ligkFk
         +2xw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=catalin.marinas@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id l129si399686vkg.2.2020.08.06.04.33.18
        for <clang-built-linux@googlegroups.com>;
        Thu, 06 Aug 2020 04:33:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7906D1063;
	Thu,  6 Aug 2020 04:33:17 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EE94F3F99C;
	Thu,  6 Aug 2020 04:33:15 -0700 (PDT)
Date: Thu, 6 Aug 2020 12:33:13 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Zhenyu Ye <yezhenyu2@huawei.com>
Cc: Sami Tolvanen <samitolvanen@google.com>, Will Deacon <will@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Kees Cook <keescook@chromium.org>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] arm64: tlb: fix ARM64_TLB_RANGE with LLVM's integrated
 assembler
Message-ID: <20200806113313.GC23785@gaia>
References: <20200805181920.4013059-1-samitolvanen@google.com>
 <95156879-d76e-65cc-1469-ae3096aa95e4@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <95156879-d76e-65cc-1469-ae3096aa95e4@huawei.com>
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

On Thu, Aug 06, 2020 at 03:17:40PM +0800, Zhenyu Ye wrote:
> On 2020/8/6 2:19, Sami Tolvanen wrote:
> > Commit 7c78f67e9bd9 ("arm64: enable tlbi range instructions") breaks
> > LLVM's integrated assembler, because -Wa,-march is only passed to
> > external assemblers and therefore, the new instructions are not enabled
> > when IAS is used.
> 
> I have looked through the discussion on Github issues. The best way to
> solve this problem is try to pass the "-Wa,-march" parameter to clang
> even when IAS is enabled, which may need the cooperation of compilation
> tool chains :(
> 
> Currently, I think we can solve the problem by passing
> the '-march=armv8.4-a' when using the integrated assembler, just like:
> 
> diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> index 55bc8546d9c7..e5ce184e98c2 100644
> --- a/arch/arm64/Makefile
> +++ b/arch/arm64/Makefile
> @@ -91,8 +91,12 @@ KBUILD_CFLAGS += $(branch-prot-flags-y)
> 
>  ifeq ($(CONFIG_AS_HAS_ARMV8_4), y)
>  # make sure to pass the newest target architecture to -march.
> +ifneq ($(LLVM),)
> +KBUILD_CFLAGS  += -march=armv8.4-a
> +else
>  KBUILD_CFLAGS  += -Wa,-march=armv8.4-a
>  endif
> +endif

No, see my other reply. This only works for .S files. For inline
assembly, passing -march to .c files will make the compiler generate
ARMv8.4 instructions and break the kernel single image that's supposed
to run on ARMv8.0 hardware (even if you don't have any range TLBI
instructions).

-- 
Catalin

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200806113313.GC23785%40gaia.
