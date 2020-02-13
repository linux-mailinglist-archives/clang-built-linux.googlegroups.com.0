Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBKNSS3ZAKGQEQMK3GOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id D515B15CA9D
	for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 19:44:58 +0100 (CET)
Received: by mail-qt1-x83a.google.com with SMTP id t9sf4305693qtn.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 10:44:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581619497; cv=pass;
        d=google.com; s=arc-20160816;
        b=EVvS9t8o/AqOkTU9lISrUXKx+RiAIVFiDXUWjqu6VHqtK/91N2OiaIhO+7x5J1gZmm
         jOc2OWdxX9xOl9xYW7h4yYTKqo58L9a3W9uL+HAWNLivWAdDXTtpo707IuogWjI5ht7T
         9QGOJ1uH6m+FyurCz+0B6GhfWyoKSqjXHf1txOolvc2qh1EvWLQvQJOL8qezyVs46wK9
         wVJKmJOMQVz44sYHYj5/+NogIu0EKWLXrDBGlKMFAjYwQ1GSDEO9hfp53J6ilFVM1+9W
         gCsb1uaqSINcxRAy2C0i1c6F6tF5a1qakN3fM7cBYSFg35o3Hsiklj62p0oBDz2/vjvM
         RDMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=jXOR1ban0fh+JCYxqjcGQOxrI5Xx4TFSYH8XuGHsRSQ=;
        b=0TYBp8XTGH0JzvcGQxAdYPEI2k2en5EFSVVOQaE59iL5vJ5ZqmEMaHHNTwpmodFIJo
         pCjWYx6Av5/+fUNKh4kljOYnL40ofn1iSk3TVJYtH1GiNupzhd8GR6E7CnU8/JFx7ng4
         J3ACEG3B8mSg0QpPJldjXNQAASyuOiSdmriP4icLd/YSt1eKfv+TJ8J693C9zKKntW6p
         I8JNF6alKqhvL1a97k+eA/PgRFLmCkOirydju9fxLVQAQl/GQI6+iMyDqupztB7eXMUd
         V/WWzpjSMdUnRh6HaOtWTR8jUQ/GMRYZplTDlH8XrFGq5r+hVwEG6RkbGzjm7aSdpD5X
         vCVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rXsK2+iV;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jXOR1ban0fh+JCYxqjcGQOxrI5Xx4TFSYH8XuGHsRSQ=;
        b=CWpLFX21AxCAJmr762S8sNWQAeoDcKHzoRzDbXAXrx9PVIdDJyVya5RU91gkuguTgP
         Bv4BQgcJ3O1SypuixjBsLQJh/EnXG0p5+dEuZRifxMcNopnNVVIROdZngwa8TuMJM1mP
         g8dI+51YzK7wSNn6WF0LBpfbkrc2ghQgEI/UFD/IaIUJH+2RAQGk6jsG5dCCMm9ln+5U
         5yEuhD6Go+Yl1lLjNT+JJ4acnDqO3t2M9NBT9lIluclOY0pUw0A0r/HAdomf1+DQLof4
         D97fwx32o3pmX9Aj8roRQf+t6pKb7ytqGkTZwFec/spdG2jkLSzQcTNINyadW969ozbo
         LVPQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jXOR1ban0fh+JCYxqjcGQOxrI5Xx4TFSYH8XuGHsRSQ=;
        b=j/4sPRnMyy8ChzleLafIqB8MphrwY2F4srrAXIuPUFj6bS7hLHwE6S3KCnuWsZlzF0
         7mo4LOp8n0wntFlYG/s5qF3+W+Ci1BVroAOujCLiNJ4dd6a8xBC5oa3RakM01ccRG4+d
         cDJK8NRBXCpeY7/5TSK6P9ZOz9SBhE41CGukkZiX0U+RT5bjeLZID+GoAqp9dinlkgUb
         SKyz9ekjlvlwZWph5btkVzilkLbJgEUi6b9lbYJVoWDOV3PbHifqUl0CdvZGpBppaiNm
         vLG6yD72JuuA2hlKEJ9paXtv1MA/GpiXOrnQVyfpQFJNsO97kKXD8xn0NesjvEKBxlcH
         SQiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=jXOR1ban0fh+JCYxqjcGQOxrI5Xx4TFSYH8XuGHsRSQ=;
        b=F0o6FrJLZVeK0rY0xMb9goeHLYC4HMILYIClro2EIgGi/tafvlMTHFTgGUKD1UiLZg
         KS3yVS0agYkzlM/ieg2ns40gDGzUxcyi/W2DDk7S6GQo1RLNUcW/uIeSZcef/5eWPLTj
         yPhVOA9MtGhVsycRwie0lKt79xft/9XR6/XUhCrj6T2jdVbGhbI/2867ThBh5kkMqQf0
         boWI9xaI8134GCiYcvil7kIn44x93ggYLpbvW09fzhsPsUcgc9jBszHfz/rX4mSDQF59
         d1IUMsk0GlvwIVUrFa7BWTVPik2mUBwr9XvhxYp11UsbtdcrPp6j+pBYYjNhv2SnzfP6
         tERw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVMWQeWtilQNfQFFNSvIll8n0HyrvrVLJ1yAYHIRTQ9jAozjmCS
	205qAv9eH5Bp1zMqbWI5qwg=
X-Google-Smtp-Source: APXvYqx56CbDzIkjpwfXgD/icsOtaLLpJNpnmYpplBfp35WkeqAYNFu3j2SASgpAk+cNUyd1cqekow==
X-Received: by 2002:ac8:6747:: with SMTP id n7mr12947824qtp.224.1581619497656;
        Thu, 13 Feb 2020 10:44:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:9c7:: with SMTP id y7ls4180256qky.6.gmail; Thu, 13
 Feb 2020 10:44:57 -0800 (PST)
X-Received: by 2002:a37:a642:: with SMTP id p63mr17456870qke.85.1581619497133;
        Thu, 13 Feb 2020 10:44:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581619497; cv=none;
        d=google.com; s=arc-20160816;
        b=Pe9Utatp5LxskF+4Fyjas6RwBtFqhEm47uaCr8MjDBz8VlsGk7CV+R2WKI73t1mavq
         N0sDEdfPh3EsKWTY8LqcvsVSuALJJ4tlipKT1hgzDQXV41ULS3qq55CG2pXZGLhcaPlJ
         lk+xVI27GZP0OxdHuH+dR8r5i4v5hFsqG4C2YXcJbvE4v5pgJ0A53bX4xfwky9dxTvA6
         6bpYbLqfxewuHbF9Oa71qxmMg8nsNnNwFPk9JXDhvYWYNBNFHZ1GfFFTVw3QxQWiQVyH
         /cxzlx7h3+CcngViJGkn9vj2FH/Ui/LFq0W7DzMAucra1FTlGmL86MYzO4bSocN3jZ3O
         MdZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=VMfn8PswbJmJdlO37QEJbyEduZmdzRHRACLwl4PEk8k=;
        b=J3dIbIMLqStq2ICaPZVQnjEHVY46uCyiY3K+xVeE19SKD4Go6lW2bvl0OOPoUlDaVG
         bKpVFrl2xlVJ8cyHtqWCk4X3Xal4pxtx7dpyvCUk1RoHiNbCbu20NSTdEnGGqKlEvtiZ
         1LL1zaeMvZcCkxJc6LXSAbDA1Hl1R1zIyTEN6/uWo44vYnwoF3O2Ff5JP7P+zCyBFuOB
         ZjpKyes8iD3mDgw1pwQhGUNmPUrui/di4LTJCYakP6eeJtgintQ5jVsvrRtWyEFXEaI/
         s9fgmkJS3v7ObSrasbb3O1+8mlb29+jfF4G0DdpeKMpDM1wl9BFBmZfxNRDXPbzWHy4F
         o8fw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rXsK2+iV;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id g23si165531qki.4.2020.02.13.10.44.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Feb 2020 10:44:57 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Received: by mail-oi1-x244.google.com with SMTP id d62so6801588oia.11
        for <clang-built-linux@googlegroups.com>; Thu, 13 Feb 2020 10:44:57 -0800 (PST)
X-Received: by 2002:a05:6808:218:: with SMTP id l24mr3689993oie.108.1581619496475;
        Thu, 13 Feb 2020 10:44:56 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id q5sm951383oia.21.2020.02.13.10.44.55
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 13 Feb 2020 10:44:56 -0800 (PST)
Date: Thu, 13 Feb 2020 11:44:54 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Cc: linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
	clang-built-linux@googlegroups.com, x86@kernel.org,
	catalin.marinas@arm.com, will.deacon@arm.com, arnd@arndb.de,
	linux@armlinux.org.uk, paul.burton@mips.com, tglx@linutronix.de,
	luto@kernel.org, mingo@redhat.com, bp@alien8.de, sboyd@kernel.org,
	salyzyn@android.com, pcc@google.com, 0x7f454c46@gmail.com,
	ndesaulniers@google.com, avagin@openvz.org
Subject: Re: [PATCH 19/19] arm64: vdso32: Enable Clang Compilation
Message-ID: <20200213184454.GA4663@ubuntu-m2-xlarge-x86>
References: <20200213161614.23246-1-vincenzo.frascino@arm.com>
 <20200213161614.23246-20-vincenzo.frascino@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200213161614.23246-20-vincenzo.frascino@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=rXsK2+iV;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Thu, Feb 13, 2020 at 04:16:14PM +0000, Vincenzo Frascino wrote:
> Enable Clang Compilation for the vdso32 library.
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> ---
>  arch/arm64/kernel/vdso32/Makefile | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/kernel/vdso32/Makefile b/arch/arm64/kernel/vdso32/Makefile
> index 04df57b43cb1..209639101044 100644
> --- a/arch/arm64/kernel/vdso32/Makefile
> +++ b/arch/arm64/kernel/vdso32/Makefile
> @@ -11,8 +11,10 @@ include $(srctree)/lib/vdso/Makefile
>  # Same as cc-*option, but using CC_COMPAT instead of CC
>  ifeq ($(CONFIG_CC_IS_CLANG), y)
>  CC_COMPAT ?= $(CC)
> +LD_COMPAT ?= $(CROSS_COMPILE_COMPAT)gcc

Well this is unfortunate :/

It looks like adding the --target flag to VDSO_LDFLAGS allows
clang to link the vDSO just fine although it does warn that -nostdinc
is unused:

clang-11: warning: argument unused during compilation: '-nostdinc'
[-Wunused-command-line-argument]

It would be nice if the logic of commit fe00e50b2db8 ("ARM: 8858/1:
vdso: use $(LD) instead of $(CC) to link VDSO") could be adopted here
but I get that this Makefile is its own beast :) at the very least, I
think that the --target flag should be added to VDSO_LDFLAGS so that gcc
is not a requirement for this but I am curious if you tried that already
and noticed any issues with it.

Cheers,
Nathan

>  else
>  CC_COMPAT ?= $(CROSS_COMPILE_COMPAT)gcc
> +LD_COMPAT ?= $(CC_COMPAT)
>  endif
>  
>  cc32-option = $(call try-run,\
> @@ -171,7 +173,7 @@ quiet_cmd_vdsold_and_vdso_check = LD32    $@
>        cmd_vdsold_and_vdso_check = $(cmd_vdsold); $(cmd_vdso_check)
>  
>  quiet_cmd_vdsold = LD32    $@
> -      cmd_vdsold = $(CC_COMPAT) -Wp,-MD,$(depfile) $(VDSO_LDFLAGS) \
> +      cmd_vdsold = $(LD_COMPAT) -Wp,-MD,$(depfile) $(VDSO_LDFLAGS) \
>                     -Wl,-T $(filter %.lds,$^) $(filter %.o,$^) -o $@
>  quiet_cmd_vdsocc = CC32    $@
>        cmd_vdsocc = $(CC_COMPAT) -Wp,-MD,$(depfile) $(VDSO_CFLAGS) -c -o $@ $<
> -- 
> 2.25.0
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200213184454.GA4663%40ubuntu-m2-xlarge-x86.
