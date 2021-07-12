Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBB7JWCDQMGQEHRPRWYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 063DA3C5C10
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Jul 2021 14:24:41 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id w38-20020a6347660000b029022342ce1f8bsf14632428pgk.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Jul 2021 05:24:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626092679; cv=pass;
        d=google.com; s=arc-20160816;
        b=XvaYLi7KaOFzjR8rqITNVaIwyVGFIyk7f9fzxN3OFtdcLLGDOIINixEp8ohlpKc2BV
         msQxQVkJiwiOUOYsNwizc1ZWySUFIraWCMx8/ht/t1c1ebjBRdHpStcvI2QfGFaFAVLb
         Ww2FcFbjBQTCRfgznz5quuhcOSIoDNIxRGiBF/MY5YubE1Wig5dQj3a0BR9fuKAtamx6
         uv1jHeghN1MxCJdWP27O4GRlKeMN2g7H/zW9VlcvGXSJVs8f8SmiZ1I3ciohlm5Ri3c2
         AhFowtSrMX4/GcukMq3FOhej6GuhRDaku2ka4rpyx2XokfwMe3O3ENDj0zlH9u0Mv3T2
         mslg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=27M8rwzqutHH1bjuOca3zJ94ZZG2yDtqw9TdTmhvBhg=;
        b=GAcbHs75wtb0te49FzVgIG6eAk57SLdGjwOYF+czGyNyOM8iMsDvfMT1ctmd0FpBmv
         n8SLqiw+JLLxx9pWGj1gP/HfXPkyfuifPopz6XGlLvnpPQUor9DaeyQgxUAq1etgfDLK
         /dlesBfT3nDoqSnjCaDg3UIT0je6alvyinsgSzUC1IdUaKmEToPB2xPiQPbFIeJScSKX
         5WHb2nPF8lk1dw9tng63msRVDyAxYiPKocIGsVHFUV9HtlsSw5RxiAOj5KJ59V0Tzh5K
         CwYF4Tnnx/zH/5YRSbhp/i/UELmqNoxigzVakwikJHtc1uIyqullJF1AeA2ZG0PFCCLh
         mhtw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=M8SaYHYX;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=27M8rwzqutHH1bjuOca3zJ94ZZG2yDtqw9TdTmhvBhg=;
        b=iW/1h8d/Z/0eTJrs8Bupjj9x1gSCDvSUfdOzLAc+eFPsN6BF1410hoN6JuP+QYtd+K
         DQmrl633QLpwq7tj4o8WS9pkQdvhTbfR4mJLrGrbXvAy6PQiAyB9rv/+K1bv5o/0ZihQ
         5I8m3C5zAIm0Uoa2ECkFp/2drQR3MizJR26zpuEnQJUuCm6SGmYHYblz7CgDn5Ll0+iK
         GOhowXfeWyCW06dhjHOP8w6kFXHtYMZhN6pq7PY0h71nbZT4ZXzD4JhaFB2g0p3biwWr
         S9+EYsKh/budkRcES6VpQb6nQ6NCBQkFHADVILOsDS88UMIUYmZz6yPkm0XGKdpHptZo
         D9vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=27M8rwzqutHH1bjuOca3zJ94ZZG2yDtqw9TdTmhvBhg=;
        b=PSjOG72NTER5BPn24ysLnsVxd2hhb+5ICmzyfrz+0egxK0V3UG5S0UrD4LbuIBQhiL
         9QwvSu+UFAuL5IijetRs6JuEq4h3jJfgUA9SHLACbte3YYXwA9pU4TQDCGIUFVaPzXez
         fO5eaRZJSEJA1dGP6ggJwQD5ZO2UEnLPBDuA2CWX8vh3GUVuTTLj7tvufMleWgIZ3dHw
         XM5H+iTwf1Oa/4ITb4mHkIIggapHZ/dd6Z6eVtXigDwpHbGChnUOJEcCOCHtFSq5Ittp
         R0c3UT24EnDuZ1IoUKs0Z+c9uoZNieejCfmPxSRkvTQPQgBSFIFFUYyBjMb3BUwm9Szz
         lORA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532hg7IGDaUa3KLXTMTI/49nLZoAHLGaA+5AmsKr2cyGPaSUplBo
	+ukMYjoGqPk/ueFiYuG6Ux8=
X-Google-Smtp-Source: ABdhPJy2W6JAet0ks2FzMPGU5jzknFsNronIxjxUZD/pEwWESFpmph3oCSwbTqpUcU6l4Kw1Dq44sg==
X-Received: by 2002:a17:902:74c7:b029:12a:f5c7:49f7 with SMTP id f7-20020a17090274c7b029012af5c749f7mr9493039plt.82.1626092679714;
        Mon, 12 Jul 2021 05:24:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:c505:: with SMTP id k5ls8423528pjt.1.canary-gmail;
 Mon, 12 Jul 2021 05:24:39 -0700 (PDT)
X-Received: by 2002:a17:90a:1f43:: with SMTP id y3mr30813127pjy.0.1626092679245;
        Mon, 12 Jul 2021 05:24:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626092679; cv=none;
        d=google.com; s=arc-20160816;
        b=lc01pH5veHIOToV7fe7llhCBhe+mz+75xhW1Jy9aAfXTgQiShJVhVVgZhvBmoCraJ4
         6/hQW1S+jD2m/YkEfz/z5Hw5YUrpk78kFpzZ4wOC7KjW+p3JAtF0MIHt6Xf7O6SJVd9j
         kd2Uo8jEx2gnP5vYw9Nd6LVFOr6yFroLcn3+kmsebFTlk+4AurocnSBUCxYm8HYYuZ1f
         rz/t5u0lrTa3yPKUlvQItOB1kwa38mlnRMlQkiggWq3MgRKhDXkADppstHV5v8lNGbr4
         JzZgOUiNFv4om5VmqS6CRvZkqjb8FOy6H8Ncjtd20fVgUuJgZY7lf8H38OI5wE9nPzdT
         eJVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=9hrljZWEuaouWzgwhsCvFmSscB2kTJaQEieAMJh2Lw0=;
        b=SGLIn0lX66epigiXceSLkJrf8ZiEeOAeHubuLG2jMJwtJUGyIvF6/wxEb7toZiMGcS
         VFJVhewnq1TNdWOJAoaC1THpbjpWD4J+zgBR9bTWvF1CV2Dn5m3yBTeKk9PQNK8JWnqL
         mOF42Ws4F5NYJmuXKQKVtuOQ6VTRkh+74b2ljKcHHJUpTsNQllMvNeNzryz3kAXtDw6C
         Ha5MdlimNO+xLUZ9NcqVwol+ksOfRUeV+7d3pOwcHiSZ63Kj7fxZx+n7MLPwZ/8XMxRQ
         ZRfof2U3OyioPDZKkow7fXbndy/4Fz1UJpBsMZRvg15qLcYjr+XQQxmIvf0UJ8mA0jWq
         GjUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=M8SaYHYX;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p9si516396pfo.3.2021.07.12.05.24.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Jul 2021 05:24:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id D5FA460FF3;
	Mon, 12 Jul 2021 12:24:37 +0000 (UTC)
Date: Mon, 12 Jul 2021 13:24:34 +0100
From: Will Deacon <will@kernel.org>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] arm64: Restrict ARM64_BTI_KERNEL to clang 12.0.0 and
 newer
Message-ID: <20210712122433.GA28536@willie-the-truck>
References: <20210709000627.3183718-1-nathan@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210709000627.3183718-1-nathan@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=M8SaYHYX;       spf=pass
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

Hi Nathan,

On Thu, Jul 08, 2021 at 05:06:27PM -0700, Nathan Chancellor wrote:
> Commit 97fed779f2a6 ("arm64: bti: Provide Kconfig for kernel mode BTI")
> disabled CONFIG_ARM64_BTI_KERNEL when CONFIG_GCOV_KERNEL was enabled and
> compilign with clang because of warnings that occur because LLVM was not

Typo: "compilign"

> emitting PAC/BTI instructions for compiler generated functions.
> 
> This was an adequate fix to avoid the warnings with allmodconfig until
> commit 51c2ee6d121c ("Kconfig: Introduce ARCH_WANTS_NO_INSTR and
> CC_HAS_NO_PROFILE_FN_ATTR"), which prevented CONFIG_GCOV_KERNEL from
> being selected with clang 12.0.0 and older because it does not support
> the no_profile_instrument_function attribute. As a result,
> CONFIG_ARM64_BTI_KERNEL gets enabled and there are more warnings of this
> nature.

I'm half asleep today, but I'm struggling to follow what GCOV_KERNEL has
to do with the warnings here. Prior to 51c2ee6d121c, you could still go
and turn that option off and so wouldn't the same warnings be triggered
in that configuration?

In other words, I think there are two aspects to this patch:

	1. Removing the (now useless) !GCOV_KERNEL dependency
	2. Requiring Clang >= version 12

but the commit message doesn't really say where these warnings are coming
from or why Clang 12 gets rid of them.

Thanks,

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210712122433.GA28536%40willie-the-truck.
