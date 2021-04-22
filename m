Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBGVDQWCAMGQEUBQ3PIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id C35B3367EB3
	for <lists+clang-built-linux@lfdr.de>; Thu, 22 Apr 2021 12:36:11 +0200 (CEST)
Received: by mail-oi1-x23b.google.com with SMTP id r20-20020a0568080ab4b0290186e76a5ddasf6078891oij.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 22 Apr 2021 03:36:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619087770; cv=pass;
        d=google.com; s=arc-20160816;
        b=d7/cyJJgQ990Lt6qYsgRzZJ0mPz3Eky35in/ASPRKsdfNqYs1KOsrykfiJIQCWDxGw
         PGkv9Eyj1srkYOiu3kYfF4lX+dIbftD6Q+sHavdaW4cZ4ug04FbDf+kbcTyR7Q5vDdIk
         9/ROrmzP7SIEe1cJkkSNSUwgQ2LFvHOgdzehxA5Cw5ubS4ZhxsoZOvwhsX2cZdetTY3m
         S9t6eim/vORDQ89nwpjnB27SVeVQ9hjJNHVYUv0/juAhs16kRH6ex20Y1tpnTk4iIttT
         bJkaZUXPUmsqJJFblLm3sh1AHmUmuMJIMiTMXS8i2kVJTici5juz2Hpwa3y6dMrkC5GG
         tPrw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=QpcSKOKDaJlUea1S565DWPFQvY2zxteaqBGbkGidXS4=;
        b=vjKB0MIy7x1ZF2GHNWRVa5Z64a4bsIAJQvazieqspeU8R0VBLOMVogLi9OuMiYfOsc
         NbXpBRHj3nxzpKM8NXfLsvu0eIUAlCAsHYN3FqOOQqR67RPgBNy7funVfYFkvLdCQaE8
         zjto44IvNvtHXYrXMOc4xCXSjEmHceLtPB30bo0iBM1Hr/lUuiBYx6D3s9CJjECNMlbT
         QWLKhwzDJIlUldHinSxa97OkbZlZHzYva5yQqFoqgRi4ViSW365zJsfMiIWutdwjjLFK
         x3eMgtncw4CrX5HzUpJXkvpwTqmu3ysTo/BsLHITUW/rTzQ3Awy27IyATVNTGHKuh+aV
         FcUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Nvc0O6tp;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QpcSKOKDaJlUea1S565DWPFQvY2zxteaqBGbkGidXS4=;
        b=R6vNUrfoWLCXA1iOvXfjrxYewDhGU5N4LiRbw5rdnlpfv/oSr9TdAQEXAvDIweBHTa
         NHfM0gSat/thHLAZt7a2q5dU+t+RCjloL/Njrn/MFelDR/7/qR1MuM5FgFA552ZlMc0O
         mO1289j0gKTg+6+CmnYp5w8TUseRlOIttgKFcEHoHqY/FpV0uBHsoty1Zi+Fg+V/cFmR
         p6EKpeAEsHwmcQDxZ7C1qT2HM4ehdaIMKwYVVMzgA7SI+imp1vngskHq/5KAWZZjRmK8
         L0mt7c0N5wupPuhmuyZfk2Vi9rXCuocPdLIjwxvnbrmH3OTJzp61uDxrgvfMKuL0w8pR
         PLeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=QpcSKOKDaJlUea1S565DWPFQvY2zxteaqBGbkGidXS4=;
        b=CLfOF60Vjj+kPGRh7eDH0ynKaQoHAUnheO4UNOTZdMz+Ica6MvZAb71KwK8O/+n853
         NckrTmGcESPBR4fODzI12UfIYs8OiYM+AyVRjVHDCcBkJH9T4pLgZTSIw/CapaTrdPou
         Uu3BqktJaqvDx4O2dc9R9wC3KLZbVYMzOSYHXgYenRK3HQYKR+Ssg5fhBsKXaIPSBGCi
         NbsPQc/pTUoGPct2lfP8+te6CeX8wEduyGlBIDzi59hT4rZFQ74fOUbWjbLwTpXW8Mm8
         qpy4bCOzXIwXiXk1/eS3/jf2+N23B7CvmOy7ih+s5GUOJP+wF0jeuGd4cs9GGR/wH95i
         LTdQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5304ipCtP8JNKmVS6mNbU/o+sJO6xW9h4tH+v4n2f4zcPOQaPWox
	vIygsIEGTyVfBWrlO+1fLVc=
X-Google-Smtp-Source: ABdhPJxkRJJk6VWUTvHEwTHwAQ3tDtWCvbMKMgK8ibRbHXP92dSnHj+yWtY2BD70KDKPyIE20u4adQ==
X-Received: by 2002:a05:6830:23a9:: with SMTP id m9mr2462196ots.45.1619087770563;
        Thu, 22 Apr 2021 03:36:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:4b11:: with SMTP id q17ls1500787otf.10.gmail; Thu, 22
 Apr 2021 03:36:10 -0700 (PDT)
X-Received: by 2002:a05:6830:1c5:: with SMTP id r5mr2313650ota.144.1619087770228;
        Thu, 22 Apr 2021 03:36:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619087770; cv=none;
        d=google.com; s=arc-20160816;
        b=GEQAowdeQRVSPqJwmDu76wULg7w6C3jiAqjLZ3aU1gD69rVwIEF52TUVux93zx0DXY
         Nt4i0UKQWqqs3XcatcE24cKT1e7V8gZ8I/CeJzRsbe+knVDMZdoKx6nh2ikm3JEMnenL
         GDnRRGpMRv6WAdQQKb5I7aSrpw1dxDUOiRNopcTFgVzmZJ337BxapOpWjBhxbjBQo8JP
         AZvAC5viiSzuXENhKIyPzStkkqsmrFFTQRPgaoFF4kxLxtTPqyewaoBVandlzSEaltdW
         pXvt8Jmgh37YJkwXkykMbNsNuxTfkJ0zt9D90M3wFAxlNFu/PMlaF6xYuFoTFzyqSlLz
         VIXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=lBz9Nd3/qAWdRz0p+xewJZX33lg8J8BY1PZxQN0Ej00=;
        b=ktewdoSWg384gmvZCpPGjdfCoFXnxug35PC8TrfFgPT2jrQBN/xAsGIDukrrnKQFBB
         2jROLnvJRkTtMH6spXP4+asz7SdbFGOqhjusSjbYCvSXel0ZWul6Vj064TKohfnI9oEs
         PZHOngVdpTYNOoUtq2fvK79+6eYPiBzyRS2KDLbYdWLu5T7TwQyKxvGecG8iyQO6gvBz
         B4RyH9mEDWjQBL2CByTQLuTWjpuhFKagnd8E8ZWHwY8ILj77ojNwP2EtQpTysWIwl8O3
         4rvx+BZ7tzqS4sdo7GjqmOd5+iCSBo6f6wUb95FQms4E0Twzj+zfElZJVcnGKiHOmWKg
         YuYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Nvc0O6tp;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w16si498812oov.0.2021.04.22.03.36.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Apr 2021 03:36:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4445A6145A;
	Thu, 22 Apr 2021 10:36:07 +0000 (UTC)
Date: Thu, 22 Apr 2021 11:36:03 +0100
From: Will Deacon <will@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>, vincenzo.frascino@arm.com,
	Nathan Chancellor <nathan@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Stephen Boyd <swboyd@chromium.org>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v3] arm64: vdso32: drop -no-integrated-as flag
Message-ID: <20210422103603.GB1442@willie-the-truck>
References: <20210420174427.230228-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210420174427.230228-1-ndesaulniers@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Nvc0O6tp;       spf=pass
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

On Tue, Apr 20, 2021 at 10:44:25AM -0700, Nick Desaulniers wrote:
> Clang can assemble these files just fine; this is a relic from the top
> level Makefile conditionally adding this. We no longer need --prefix,
> --gcc-toolchain, or -Qunused-arguments flags either with this change, so
> remove those too.
> 
> To test building:
> $ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- \
>   CROSS_COMPILE_COMPAT=arm-linux-gnueabi- make LLVM=1 LLVM_IAS=1 \
>   defconfig arch/arm64/kernel/vdso32/
> 
> Suggested-by: Nathan Chancellor <nathan@kernel.org>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> Reviewed-by: Nathan Chancellor <nathan@kernel.org>
> Reviewed-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> ---

Acked-by: Will Deacon <will@kernel.org>

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210422103603.GB1442%40willie-the-truck.
