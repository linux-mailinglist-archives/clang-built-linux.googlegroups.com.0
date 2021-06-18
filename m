Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBEE7WODAMGQETMAWEYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1974D3AD0C3
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Jun 2021 18:53:38 +0200 (CEST)
Received: by mail-qk1-x73b.google.com with SMTP id m133-20020a37a38b0000b02903adaf1dd081sf6059120qke.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Jun 2021 09:53:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624035217; cv=pass;
        d=google.com; s=arc-20160816;
        b=XQIFkNDn4mKUqV66RLU8r1prlXpcrNqd6GKn7y+Z1R4mtdZniDutmHPj27kBjvqAVq
         Fk/zeK56LEW25FDnBqSXIHlm/tP1pBD6IK0vOvDGhe4q6hzVYUqssjuiH8dXkfxBpmp8
         gQ0iV0jUZMtTrQxpAnj4/vq1WMC846Ik5+OSB/AKlvph1xJPurNcpenYuf3r5GdWUmUd
         GJJCG4RzCR/umvz94B0Pi/GCbLZ0xPn3VqCscRYgr1EIOqiDKrkdSfpn5kvCFt1jeWWw
         kgg1vxEPL4Hx1F8xY5BaKAaP5Moyi8vf8bX+HwMqi2hlZnfVV94qR1yaimayP2UwF+TQ
         1O3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=847uVFnnnGvb9rFBYChn9k2QCJQExOGgQIzvxLhNFq4=;
        b=Ga09+J5xkMznUABmO4OTMWEAT1GOf46G6NeD+VRBcz9zxpEsAZofY4zgDrVPdyYR0N
         35xPiCz3Ri00Vv7t60JU4lQMA7OJB1r6GKcV/VWZREUZYhtW2lk9EbSikKhf1EfPnb9R
         v3TjPxBWberKbv1tDpS5PlMT2W97kSe3GQc8EcIK2EbWHSXvA9qQwT3LzoDChBRKmgBV
         sT5QpXELijGEjXc3a4zPBPpu8igxFhMJIujpbc2jhKVVRmJXdBER/GYi3Fqw9GYoQ1j+
         vhaVfTL3QBWzXQdVUlnzZ/W0J0Izk0fW9AYABCb0YobEb0pju4FmmcotnAc1Z8WEB+sU
         vw1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=u5BxcQ+y;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=847uVFnnnGvb9rFBYChn9k2QCJQExOGgQIzvxLhNFq4=;
        b=I99rnIXzWpoK2sVrU1hmTiWWUR85YpoxSZomDUEzOYaR/ygsOiRrdcj7RM4wDtiVpk
         uV/slvsbhkWRzxHiXQJcQkdhCj7WYwBDO295be2cBo98aq79J9bdObiJOEe8TBoKEqbe
         k0G+s9zhhVDblCBvOpoRTTKgF1cFgdkcSeJOCWB3RBM5YFZroaqTURWxgByy1n2RUI/d
         1zf7iFwZWYuUTcj4sNBO8T0Tgdh3GkhrMOCi3TDiRlQ5uZTrIPXMBQx79fcrJdXRsn1m
         WjMtN/c1kKsMl73LwcG7PrNYIXym1FwoSrX3CyvexGW4YjBGYC5bztgMf2P/2BV6bZTB
         tySA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=847uVFnnnGvb9rFBYChn9k2QCJQExOGgQIzvxLhNFq4=;
        b=jhSLLxbaQ9kNunAxQeKGF6P2SeTLX78A3UVebungHkaGO0LXv66bzlm0oDAuaZRE+D
         vYygmMUS5H2uuJPzbPBP/AWeHLyJyhV8saHZNUeyiMiIqIVp0Qgik/GuPjwjJbJYfmxN
         2r3XFenglGJnZFijg+xOlQ1R5kdcEmMv8RB5BoZolX0H4m3rdn6iGQpYHW+csMyCM+nW
         6+G2tEvdWQZGow+yllo11KKRkyGkQyOWNXffbkkIwFt1NKmkwod53xDlR6C3cE1mpkFL
         yPvv0lnh9jWGIJfbAr37X9JdOD7pnpG+MnUhTtQxI120Npm28P6zt2GTvVrpvhdMqC58
         n9QA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533VshZ+xW6E5SC084XM3A72AxdccJBGSe+0HzStd+NwaRSam36s
	lnLRRxunfhpS20FSYillIVo=
X-Google-Smtp-Source: ABdhPJxtBtML5Iy5ugs0CnrLGJR9iM9Si0OtanETWUcnFBB+fJca7EoAJINQx64Fcx3f4uHagpFzYg==
X-Received: by 2002:a05:622a:316:: with SMTP id q22mr11431314qtw.153.1624035216906;
        Fri, 18 Jun 2021 09:53:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:a3d2:: with SMTP id m201ls5760020qke.0.gmail; Fri, 18
 Jun 2021 09:53:36 -0700 (PDT)
X-Received: by 2002:a37:488:: with SMTP id 130mr9933493qke.215.1624035216438;
        Fri, 18 Jun 2021 09:53:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624035216; cv=none;
        d=google.com; s=arc-20160816;
        b=ZkKhswUGADgqbIGsJBznlQbf9OwutBNEOVAiPpqLPd83kVP9lT1A09tneewjO2zS44
         wZxJrH6Ml9SJnUZxfbW5pGM98hMq4BvaO9E/1weAxCFvohgy8MA6m7QKQfWHxT2CMVoO
         jmGmFAgm55X5x04nOQ5Xci+D7zviUzyXuACpdEjr949f2u4eDIvGzT1mFTSxqIHAHzPg
         2hcyo6roP9UCjcxJlHgASdCFuxSyl8oUGn3Zs8eZT7qlms1NgJCxm/XWuT9J07IekSua
         w8R9RMUr4SKppwYhKOEWnPjjuzVoQ+W1l61opM3dUjO5n043tHkH/7pe842MqX2tjidA
         ZaWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=hXuN2IHtCwyNZPGBS84p+defbPMdtgSlpxad21snsOs=;
        b=DURwi6BNOmVE2OLnOI8ySMxQ4DlD36eOcsZOa6r2rGH/0Z6/Di3sPXsvylGQhDyd29
         OwaLmm8R32P7+n0W59tyhouVmTTeub1VfJPiqySJtFvgQWY8PWB+WyRD/lredqgQwjRG
         MVtz8mwAqI6afK/z0e4GaC9WVHKIt5hbq4QoAr/QTpgue7SMOo2hXimzGs/ATWu0Gop0
         ryRZbz79QywjIiQrT2XKh1Mjnu0qqsbVQBSz0WMsZ2yXjK4mSPRqUQzTKzrhsVohek0O
         cg9Df753T+hxz37i82DAHM3FfExWo2mk52P9N0ZtPl9bD6uXv7RVj14H5AhdLrbyxdfE
         lGbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=u5BxcQ+y;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f1si686115qko.5.2021.06.18.09.53.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Jun 2021 09:53:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6893A610C7;
	Fri, 18 Jun 2021 16:53:34 +0000 (UTC)
Date: Fri, 18 Jun 2021 09:53:31 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Cc: will@kernel.org, linux-arm-kernel@lists.infradead.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 2/2] arm64: insn: move AARCH64_INSN_SIZE into <asm/insn.h>
Message-ID: <YMzPi0Ckyd9wqO5d@archlinux-ax161>
References: <20210609102301.17332-1-mark.rutland@arm.com>
 <20210609102301.17332-3-mark.rutland@arm.com>
 <YMv2B6HCnDReOFIr@archlinux-ax161>
 <20210618151835.GC8318@C02TD0UTHF1T.local>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210618151835.GC8318@C02TD0UTHF1T.local>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=u5BxcQ+y;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Fri, Jun 18, 2021 at 04:18:35PM +0100, Mark Rutland wrote:
> On Thu, Jun 17, 2021 at 06:25:27PM -0700, Nathan Chancellor wrote:
> > Hi Mark,
> 
> Hi Nathan,
> 
> > On Wed, Jun 09, 2021 at 11:23:01AM +0100, Mark Rutland wrote:
> > > For histroical reasons, we define AARCH64_INSN_SIZE in
> > > <asm/alternative-macros.h>, but it would make more sense to do so in
> > > <asm/insn.h>. Let's move it into <asm/insn.h>, and add the necessary
> > > include directives for this.
> 
> > I bisected a CONFIG_LTO_CLANG_THIN=y build failure that our CI reported
> > to this patch:
> > 
> > https://builds.tuxbuild.com/1u4Fpx2FQkkgkyPxWtq0Ke4YFCQ/build.log
> 
> Thanks for reporting this; the lopg is really helpful!
> 
> > I have not had a whole ton of time to look into this (dealing with a
> > million fires it seems :^) but it is not immediately obvious to me why
> > this fails because include/linux/build_bug.h is included within
> > arch/arm64/include/asm/insn.h.
> 
> The problem is that with LTO, we patch READ_ONCE(), and <asm/rwonce.h>
> includes <asm/insn.h>, creating a circular include chain:
> 
> 	<linux/build_bug.h>
> 	<linux/compiler.h>
> 	<asm/rwonce.h>
> 	<asm/alternative-macros.h>
> 	<asm/insn.h>
> 	<linux/build-bug.h>
> 
> ... and so when <asm/insn.h> includes <linux/build_bug.h>, none of the
> BUILD_BUG* definitions have happened yet.

Aha, that would certainly explain it. I figured something like this
would be the root cause but figuring out header dependencies is not my
cup of tea.

> Will, are you happy to take the fixup patch below, or would you prefer
> to drop this patch for now?
> 
> Thanks,
> Mark.
> 
> ---->8----
> >From 0acc3d92302f54475d938f55749805adf74faec1 Mon Sep 17 00:00:00 2001
> From: Mark Rutland <mark.rutland@arm.com>
> Date: Fri, 18 Jun 2021 16:11:22 +0100
> Subject: [PATCH] arm64: insn: avoid circular include dependency
> 
> Nathan reports that when building with CONFIG_LTO_CLANG_THIN=y, the
> build fails due to BUILD_BUG_ON() not being defined before its uss in
> <asm/insn.h>.
> 
> The problem is that with LTO, we patch READ_ONCE(), and <asm/rwonce.h>
> includes <asm/insn.h>, creating a circular include chain:
> 
>         <linux/build_bug.h>
>         <linux/compiler.h>
>         <asm/rwonce.h>
>         <asm/alternative-macros.h>
>         <asm/insn.h>
>         <linux/build-bug.h>
> 
> ... and so when <asm/insn.h> includes <linux/build_bug.h>, none of the
> BUILD_BUG* definitions have happened yet.
> 
> To avoid this, let's move AARCH64_INSN_SIZE into a header without any
> dependencies, such that it can always be safely included. At the same
> time, avoid including <asm/alternative.h> in <asm/insn.h>, which should
> no longer be necessary (and doesn't make sense when insn.h is consumed
> by userspace).
> 
> Reported-by: Nathan Chancellor <nathan@kernel.org>
> Signed-off-by: Mark Rutland <mark.rutland@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> ---
>  arch/arm64/include/asm/alternative-macros.h | 2 +-
>  arch/arm64/include/asm/insn.h               | 5 +----

Looks like arch/arm64/include/asm/insn-def.h is missing from this patch?

If I add one with just the two deleted lines plus a header guard, the
build passes.

Tested-by: Nathan Chancellor <nathan@kernel.org>

Thank you for the quick fix!

Cheers,
Nathan

>  2 files changed, 2 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/alternative-macros.h b/arch/arm64/include/asm/alternative-macros.h
> index 703fbf310b79..eba3173a2a2c 100644
> --- a/arch/arm64/include/asm/alternative-macros.h
> +++ b/arch/arm64/include/asm/alternative-macros.h
> @@ -3,7 +3,7 @@
>  #define __ASM_ALTERNATIVE_MACROS_H
>  
>  #include <asm/cpucaps.h>
> -#include <asm/insn.h>
> +#include <asm/insn-def.h>
>  
>  #define ARM64_CB_PATCH ARM64_NCAPS
>  
> diff --git a/arch/arm64/include/asm/insn.h b/arch/arm64/include/asm/insn.h
> index 1430b4973039..6b776c8667b2 100644
> --- a/arch/arm64/include/asm/insn.h
> +++ b/arch/arm64/include/asm/insn.h
> @@ -10,10 +10,7 @@
>  #include <linux/build_bug.h>
>  #include <linux/types.h>
>  
> -#include <asm/alternative.h>
> -
> -/* A64 instructions are always 32 bits. */
> -#define	AARCH64_INSN_SIZE		4
> +#include <asm/insn-def.h>
>  
>  #ifndef __ASSEMBLY__
>  /*
> -- 
> 2.11.0
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YMzPi0Ckyd9wqO5d%40archlinux-ax161.
