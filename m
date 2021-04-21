Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBA5ZQGCAMGQEZKDF6KQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 8951F3670F6
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Apr 2021 19:10:28 +0200 (CEST)
Received: by mail-pg1-x53e.google.com with SMTP id z19-20020a63e1130000b02901fcdcf0c5a3sf10800400pgh.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Apr 2021 10:10:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619025027; cv=pass;
        d=google.com; s=arc-20160816;
        b=QfMHc3yWI2NsTbKPnqTCKDDQpiXVtoh4sPlg7KNzxAa1Mgi+6N8NoiU+/3vUo4XSlb
         icbx33yfSpYRKXbll0V+j/A7TeAwt7zhlpDvmMc21ri3vmYJhkSs277rBG27MzGi8nN+
         YeaYLUj5le7jc7/xDNvqxBvAbbnvuVDp0a6DP3S4SS4FLMTiNQBkVJtSQ+vg7M+suDkV
         CNmhDDK9vC5P0Lh53+/lkRQH6uEEmLQRY80u+zBk+31stFxyTqh+7jW/sv/s2JU7da6t
         1KaSJojR9XOFL5lCrt35duJQ3jhe8dt0p4079sNvB8TH0h93Ba2Qct1cC6Ozuq4jNQwK
         QYOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=kSa3HXpqiZ4tx/WeCxmthTArEv/roINJ8urGkQr2jn8=;
        b=iOf6GIQyPgsbAqp41JZD/3KpHM6mSnicpX+gdcs290I5zmy6Ply7jv/CUoEEayXgfV
         nc+rGDjuUVluqn1NUVnlP0g+gDERIHy0W3M/Lcxr6ek5N7AzxRoJPGkIS30MEurzQ5m+
         QsG5uNUhL7YhKc/oAOCTSH52noJyT7LM39ctOGuIR0HFP8EGxSploiTx0AoKWObeYPvu
         6Pkk04lnZxC8FrGGMtnwO1Z+ZUB9oPC79/KpAkSoQQGee8Ejpx2K+XgLYBtBXkNl5WRG
         cnMTqvVl9rxzW2Qi4l4pymbfufyvlJmnPM2pW3s3VbnTXend24+jtC0HuyGmXlA7V+8k
         hUOQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=bLe+rypc;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kSa3HXpqiZ4tx/WeCxmthTArEv/roINJ8urGkQr2jn8=;
        b=gV06RXv9RW8ep9l0r2D4trPuF6BFcyP+FM8B0yXpLnopTb4sT4zO7anKCoRKT0GLoa
         /hT022oiX2p8FKu0CwA8GSR2MPIDcRMenzjPPKZ+qTuvQkkPCURlgpYV4QQenDTnBs/h
         2Bl/f/CGYjEGN/7xONDDHIwjb5EPygERxzHrmc/YOY1prudcQ/7BQZ66fxpLS7EUnWTq
         vjMuDySWIKT7UMrKpqGH73dJ9td87KMAW0klxJ4yEnYvE0+10ORgZ4WqJxO7mVbfZOeU
         e/QFEPKR4fsT2JS88UXy9/0p3NxJKCTHt9rBM/RvPa8sISxRHFPq/PAxNaz5s56AMZJx
         heVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kSa3HXpqiZ4tx/WeCxmthTArEv/roINJ8urGkQr2jn8=;
        b=ucFRMI0O5TSr955CkLYQ49ev5mFpKGvsKcZuxwQwGIfnZCZaAFzCpodnQURwcqImJ3
         y2GJpShtKSgFSGAUJkBbFwMvg5BLSe+jMDu3tXYRN/AeBFCb837H195wFXYTZe6eCGSO
         0umItC+SH0FfSYHrs0/4A8/cvXRvHtkN8HWFOELeqC0hL5jSJPeRglO7Sey/rykOL7Sp
         DVFX6MnXxGV58bX78hQdMVN78ho4f1TvyvhbKry+p+4aN2T1tCGyQm3+D8oSvfAv2EmW
         KVoUsSlprsnbQrrWFHNhUmnCOitICnSv4lb/YfC3qIA+Yje43sHPIOKagET+z/bArfnR
         9MFQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532+vAw+1xXddR5N58cB/QbfWL+EXtR8a5V+7oQru/YMy+09sFWn
	mcEm8iSQwpJ+6x+V1ZSTI48=
X-Google-Smtp-Source: ABdhPJyKlAvMb/ODBiOfcR8QSQBkINbVvlswCju9WYbQ4GJ8MV4elBzCq+hmIWdhXkTlN0ub1I9DJw==
X-Received: by 2002:a63:1c48:: with SMTP id c8mr23085171pgm.234.1619025027214;
        Wed, 21 Apr 2021 10:10:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:ef0b:: with SMTP id u11ls1149256pgh.4.gmail; Wed, 21 Apr
 2021 10:10:21 -0700 (PDT)
X-Received: by 2002:a63:a64:: with SMTP id z36mr22612596pgk.342.1619025021078;
        Wed, 21 Apr 2021 10:10:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619025021; cv=none;
        d=google.com; s=arc-20160816;
        b=aYwnnLoMMbt6lKMAr/1p58xhH6NEnBagMPaPDriD0iWAAVLUwdrdaA6vbxCg3TNkoD
         j2iFy2MX7aAS0pOljZ+8xjyXa6/UjX78MdDIiF433qIfOZIrjA11Y95dX2VcjDE/DhJy
         LFBRds15/Seg3RfooCMaUwUuc+ODh14e3/Gk6Xn+p6C666lYKZujeofBF+5QORw3KmOt
         mLGxy8c4PTonWlEIM4FD3Io6ibQFqqYprT85vq4VLCHH/ptzunJWnPBH9xsW/ONW8wG6
         c5bxzWzhF3EHlHDD7FmZ3Q0YDM2myCdZNYpLt+6lwo/+KX9HiwV9k5rmr3j/hhhMbLMo
         ZDMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=KLIKGeN+0tSh0ZYliq+lsuw1Taf/owZcbxOMJ5lBV1k=;
        b=B4nHHGCHBMEMiSyYrOLeKdX6CkbnwFk3vPaHjkb5pj78XrT9wKTJmbXNKHMrGboaMS
         VTsj9NrZ5yWZzcseJl/GMoV3BiyvXfUSuie3ab6gQEIzKTjtXQ0b+iJWaLZ+OBg4TWNK
         oCPrTRDUNCYBXgXJFLx9Jq51fNmJ5KrqKKD/CCYOS88F2OA69yS+Sx6Nvl56CAUhzA6f
         SyinJ9LFP8WWRQM5VuvTOhh3d7DRgBonJzBDKJeP0m57eS49sHdY3yPeOI7HFlFMuwrR
         PfCsPu9cLmH0HKlmZgaDGHYeEZQ/M4UJDn1ux9mxTIDfvVQOtzRozf17ElFVBBS96uO9
         tIcQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=bLe+rypc;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q16si142863plx.3.2021.04.21.10.10.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Apr 2021 10:10:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5606A61360;
	Wed, 21 Apr 2021 17:10:18 +0000 (UTC)
Date: Wed, 21 Apr 2021 10:10:15 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Sean Christopherson <seanjc@google.com>
Cc: Paolo Bonzini <pbonzini@redhat.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Vitaly Kuznetsov <vkuznets@redhat.com>,
	Wanpeng Li <wanpengli@tencent.com>,
	Jim Mattson <jmattson@google.com>, Joerg Roedel <joro@8bytes.org>,
	kvm@vger.kernel.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, Kai Huang <kai.huang@intel.com>
Subject: Re: [PATCH] KVM: x86: Fix implicit enum conversion goof in scattered
 reverse CPUID code
Message-ID: <YIBcd+5NKJFnkTC1@archlinux-ax161>
References: <20210421010850.3009718-1-seanjc@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210421010850.3009718-1-seanjc@google.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=bLe+rypc;       spf=pass
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

On Tue, Apr 20, 2021 at 06:08:50PM -0700, Sean Christopherson wrote:
> Take "enum kvm_only_cpuid_leafs" in scattered specific CPUID helpers
> (which is obvious in hindsight), and use "unsigned int" for leafs that
> can be the kernel's standard "enum cpuid_leaf" or the aforementioned
> KVM-only variant.  Loss of the enum params is a bit disapponting, but
> gcc obviously isn't providing any extra sanity checks, and the various

Unfortunately, gcc's -Wenum-conversion is behind -Wextra rather than
-Wall like clang. If you explicitly enable it with
KCFLAGS=-Wenum-conversion to your make invocation, it will warn in the
exact same way as clang:

arch/x86/kvm/cpuid.c: In function 'kvm_set_cpu_caps':
arch/x86/kvm/cpuid.c:499:29: warning: implicit conversion from 'enum kvm_only_cpuid_leafs' to 'enum cpuid_leafs' [-Wenum-conversion]
  499 |  kvm_cpu_cap_init_scattered(CPUID_12_EAX,
      |                             ^~~~~~~~~~~~
arch/x86/kvm/cpuid.c: In function '__do_cpuid_func':
arch/x86/kvm/cpuid.c:837:31: warning: implicit conversion from 'enum kvm_only_cpuid_leafs' to 'enum cpuid_leafs' [-Wenum-conversion]
  837 |   cpuid_entry_override(entry, CPUID_12_EAX);
      |                               ^~~~~~~~~~~~

clang's warning for comparison/posterity:

arch/x86/kvm/cpuid.c:499:29: warning: implicit conversion from enumeration type 'enum kvm_only_cpuid_leafs' to different enumeration type 'enum cpuid_leafs' [-Wenum-conversion]
        kvm_cpu_cap_init_scattered(CPUID_12_EAX,
        ~~~~~~~~~~~~~~~~~~~~~~~~~~ ^~~~~~~~~~~~
arch/x86/kvm/cpuid.c:837:31: warning: implicit conversion from enumeration type 'enum kvm_only_cpuid_leafs' to different enumeration type 'enum cpuid_leafs' [-Wenum-conversion]
                cpuid_entry_override(entry, CPUID_12_EAX);
                ~~~~~~~~~~~~~~~~~~~~        ^~~~~~~~~~~~
2 warnings generated.

> BUILD_BUG_ON() assertions ensure the input is in range.
> 
> This fixes implicit enum conversions that are detected by clang-11.
> 
> Fixes: 4e66c0cb79b7 ("KVM: x86: Add support for reverse CPUID lookup of scattered features")
> Cc: Kai Huang <kai.huang@intel.com>
> Signed-off-by: Sean Christopherson <seanjc@google.com>

This makes GCC and clang happy in my brief testing.

I assume this will get squashed but in case not, here are some tags:

Reviewed-by: Nathan Chancellor <nathan@kernel.org>
Tested-by: Nathan Chancellor <nathan@kernel.org>

> ---
> 
> Hopefully it's not too late to squash this...
> 
>  arch/x86/kvm/cpuid.c | 5 +++--
>  arch/x86/kvm/cpuid.h | 2 +-
>  2 files changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/x86/kvm/cpuid.c b/arch/x86/kvm/cpuid.c
> index 96e41e1a1bde..e9d644147bf5 100644
> --- a/arch/x86/kvm/cpuid.c
> +++ b/arch/x86/kvm/cpuid.c
> @@ -365,7 +365,7 @@ int kvm_vcpu_ioctl_get_cpuid2(struct kvm_vcpu *vcpu,
>  }
>  
>  /* Mask kvm_cpu_caps for @leaf with the raw CPUID capabilities of this CPU. */
> -static __always_inline void __kvm_cpu_cap_mask(enum cpuid_leafs leaf)
> +static __always_inline void __kvm_cpu_cap_mask(unsigned int leaf)
>  {
>  	const struct cpuid_reg cpuid = x86_feature_cpuid(leaf * 32);
>  	struct kvm_cpuid_entry2 entry;
> @@ -378,7 +378,8 @@ static __always_inline void __kvm_cpu_cap_mask(enum cpuid_leafs leaf)
>  	kvm_cpu_caps[leaf] &= *__cpuid_entry_get_reg(&entry, cpuid.reg);
>  }
>  
> -static __always_inline void kvm_cpu_cap_init_scattered(enum cpuid_leafs leaf, u32 mask)
> +static __always_inline
> +void kvm_cpu_cap_init_scattered(enum kvm_only_cpuid_leafs leaf, u32 mask)
>  {
>  	/* Use kvm_cpu_cap_mask for non-scattered leafs. */
>  	BUILD_BUG_ON(leaf < NCAPINTS);
> diff --git a/arch/x86/kvm/cpuid.h b/arch/x86/kvm/cpuid.h
> index eeb4a3020e1b..7bb4504a2944 100644
> --- a/arch/x86/kvm/cpuid.h
> +++ b/arch/x86/kvm/cpuid.h
> @@ -236,7 +236,7 @@ static __always_inline void cpuid_entry_change(struct kvm_cpuid_entry2 *entry,
>  }
>  
>  static __always_inline void cpuid_entry_override(struct kvm_cpuid_entry2 *entry,
> -						 enum cpuid_leafs leaf)
> +						 unsigned int leaf)
>  {
>  	u32 *reg = cpuid_entry_get_reg(entry, leaf * 32);
>  
> -- 
> 2.31.1.368.gbe11c130af-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YIBcd%2B5NKJFnkTC1%40archlinux-ax161.
