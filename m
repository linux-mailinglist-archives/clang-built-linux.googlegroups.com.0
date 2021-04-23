Return-Path: <clang-built-linux+bncBCFYN6ELYIORBZXDRGCAMGQEVGZR4BQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3c.google.com (mail-vs1-xe3c.google.com [IPv6:2607:f8b0:4864:20::e3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 78741368D99
	for <lists+clang-built-linux@lfdr.de>; Fri, 23 Apr 2021 09:06:15 +0200 (CEST)
Received: by mail-vs1-xe3c.google.com with SMTP id w2-20020a67ffc20000b02901c5449f589esf7787729vsq.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 23 Apr 2021 00:06:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619161574; cv=pass;
        d=google.com; s=arc-20160816;
        b=ECIjIIMT1j2oWybmFKLw6AZUkShcu8XeLMThl2+HnZrPP6ZRxRHU9zORLga2RDYmZY
         wUmenuZwwAvG/caPyuwBmQ9b+jXdsCmLOTdEhWUCNm2DKuGYGvuYohhcHjj1GdQrmjrM
         pCpeQIAeAq5DP/Hef6AwjLNhiiH1MpLmGehNFlzh1XBf9HEU/cm4Gfw2vHmEzumKZA3v
         DjDfi2GgP8BrTi19JpWsD7vmth7/30a1zZm048NNsVgrFuUYDP2I7dwi+0zJhyCsQIik
         5rcH3qr3kO7F5bzsl60qc28/aPnpK5Z0Y4oyukPIjK75k6xloSxiAeS59EkwHjef4qKm
         0kNA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=JUxG3lVyT1r3aVTzOU92C70kDfoROcsOHrD+nvjJli4=;
        b=QD2utR6HoWGpT3l9ViheTuFfmt97+538uS7GF/IFOP+kzmLiFn0VQvbKhDiHjZ4rCR
         aQoBz059T/WP9MRlAOgjAwc1O+lfN2X7Nh1l7QCCasOa/mFSZkNSSSV14zO42zuNWxJe
         L2Y/oVBuNMH+26T4WH+b11Rh7OlrJiMamrbv5XslLJcUE+LW3pJsF+D9at5Bdydy9LtN
         FvtaTaE+5Mz4bq4O5fNTvJcCYfhLPWd8c0r3H/znn3zHi9YJ2LDCEX9EDYs65psXA3HI
         IOuzNYehvjy4DusbyeAHV/tfsbR6PFpzOhYnp69NwlImJnv0bPK8OxQxxuRGEchTR+ye
         nYxg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=K7upgwLf;
       spf=pass (google.com: domain of pbonzini@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=pbonzini@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JUxG3lVyT1r3aVTzOU92C70kDfoROcsOHrD+nvjJli4=;
        b=ninORSGvGshRtcJnw6TtCbJvSb2WZb7dWoiMCcRREJhKc5l7ocifsIQX+iPdNv0frp
         b/Ija5Qswpqw7TGddiG11YDtt0nOQJKhUPJt1h2s5Xmb3sEXYK3bBHATxKrkEAUB3lZA
         DxJQn5iR0laDH2QHwztWzDvv+acUfUpTl00wmWt6rYZDSLmmkXKv8ygq3jXmIuN2oWRI
         X4bVbCFo/0hm8wAxYlWcfjK3+N5cB+5I0yS6dOYR0OHa0li8Qu6qHZ/QQSAEuhZ4alzF
         1FstsIqxjAJH8v0TkiArU4whIZzRsoILleI/uQ6zffzj9ysY117DYI/BEpFva0+JLl9k
         btuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JUxG3lVyT1r3aVTzOU92C70kDfoROcsOHrD+nvjJli4=;
        b=VHP91LOVUgQ0yfIUDJns8SYe514sWfl5CbwBmMfky3n8e9YPdAb0c6t6xZGFvKTQH7
         DuKAIELCYXDqkwqvLPp5Sa//utDWrDxFUTHv65KnLAxMwuMVzrWWsDWOb9objySHWtI3
         WvXBjUcD41Na/MirLU/Z1bR9FcGurlw/ofYFBpDBm+S1iclqqRundqBBJSRJ5bzLxc6Z
         C62ox1llHvDZsEu54Ccxe1nghRWONp/H26kp6kX0wFz0d7eUGFkyXCgOWb2oNghAEeV9
         lfh2BWsxVdIUzib5dkle+tDrs/0y3p/m37Vv2FZ1AABRZvnysJUwRJHrVzzqqgJuSYK4
         5fOw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53176odya80VhTOCgSjcbTAlX9Sqocclbb51JnkY3yhxfxikma0M
	QJEOBUuhn/q/CSftWObZvs4=
X-Google-Smtp-Source: ABdhPJwobt+EKSaErycpxW8Ytzr9Tgl7DwYDKIK+o2IwBaRq9PauHM2Ncy9ThIdV1da2Tav2a4UpgQ==
X-Received: by 2002:a05:6122:1287:: with SMTP id i7mr1999031vkp.8.1619161574228;
        Fri, 23 Apr 2021 00:06:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:d182:: with SMTP id w2ls1394143vsi.6.gmail; Fri, 23 Apr
 2021 00:06:13 -0700 (PDT)
X-Received: by 2002:a67:8752:: with SMTP id j79mr2130808vsd.36.1619161573712;
        Fri, 23 Apr 2021 00:06:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619161573; cv=none;
        d=google.com; s=arc-20160816;
        b=dHvRDbHAyXv+y5D181Ikdtk5AgGlvH8TIgYgbtldxKoBmu0Cm7EJHmZhHbdDtfwEIK
         4c5II0LsiKBVtyAs37J5p9FHPxWKQUJ/WaCIWaqwvjNxNm7G1pNLpaCkaEfzKLqRFFKE
         r/qF7xOK1Fk9ITOJqmZjF+v9GXnynGuVGZ8yYNZVIwpJhf9vgHCTK0eXaBDqpNW8gXL3
         A8jgyLjHNO6nHiVjBgcr53DgN0MYmvyikWK7G1LvDpG3e31Teb5pGunTBMLdm2pDnz2n
         PQ15zV/mdU9gFPm0cRGNqml11VmRF1Z5GQCIk/zGflKPdy+u9L5P52IErMc1x7OdBLCd
         GaCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=c0Cl5FS9BM4Q35WpIm6J5r8zv2qpk0iAb6szpk8n7ZM=;
        b=oehwsIW3RotSgTEAi7l83qX91tbs+3tyOrHhNg2IIyX+mK9YM463pwEwH4Ks2aURyl
         Hw2chLRnkwindX5Ti9Yfw1oRasj5pxJmamgKVn5Z6Mx+puux4Ju5bNzBwybdMSpSVWmn
         z8H9ekBv6mJv0Jm5py1cdiV96+qxDEfZ8wa+PsVHFPsaY0VNzou/B/g57ESUOyv9w5qV
         7oVt5OAF5F7wkktvgQq2pJGfr5Sthpuc0WOPltMs6/SlN+EOjXDtE3OtwtMBLx7q459e
         PwQCurkKZ2IMMplZl2zJQctRaGTORQsyWh5vDvZLYFzjzJuQPwVedLq08QGhoMKntuok
         p8sw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=K7upgwLf;
       spf=pass (google.com: domain of pbonzini@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=pbonzini@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id h19si913583vkf.5.2021.04.23.00.06.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Apr 2021 00:06:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of pbonzini@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-513-aYd3jJ58OPeEn3IeLt3hVA-1; Fri, 23 Apr 2021 03:06:07 -0400
X-MC-Unique: aYd3jJ58OPeEn3IeLt3hVA-1
Received: by mail-ej1-f71.google.com with SMTP id ji8-20020a1709079808b029037c921a9ea0so8039830ejc.9
        for <clang-built-linux@googlegroups.com>; Fri, 23 Apr 2021 00:06:07 -0700 (PDT)
X-Received: by 2002:a50:cc4b:: with SMTP id n11mr2774595edi.186.1619161566790;
        Fri, 23 Apr 2021 00:06:06 -0700 (PDT)
X-Received: by 2002:a50:cc4b:: with SMTP id n11mr2774568edi.186.1619161566637;
        Fri, 23 Apr 2021 00:06:06 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:c8dd:75d4:99ab:290a? ([2001:b07:6468:f312:c8dd:75d4:99ab:290a])
        by smtp.gmail.com with ESMTPSA id e16sm3918899edu.94.2021.04.23.00.06.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Apr 2021 00:06:06 -0700 (PDT)
Subject: Re: [PATCH] KVM: x86: Fix implicit enum conversion goof in scattered
 reverse CPUID code
To: Sean Christopherson <seanjc@google.com>,
 Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>
Cc: Vitaly Kuznetsov <vkuznets@redhat.com>, Wanpeng Li
 <wanpengli@tencent.com>, Jim Mattson <jmattson@google.com>,
 Joerg Roedel <joro@8bytes.org>, kvm@vger.kernel.org,
 clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
 Kai Huang <kai.huang@intel.com>
References: <20210421010850.3009718-1-seanjc@google.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <7b1f385c-3a97-efe0-bb8d-53cdb9c19dbf@redhat.com>
Date: Fri, 23 Apr 2021 09:06:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210421010850.3009718-1-seanjc@google.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: pbonzini@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=K7upgwLf;
       spf=pass (google.com: domain of pbonzini@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=pbonzini@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On 21/04/21 03:08, Sean Christopherson wrote:
> Take "enum kvm_only_cpuid_leafs" in scattered specific CPUID helpers
> (which is obvious in hindsight), and use "unsigned int" for leafs that
> can be the kernel's standard "enum cpuid_leaf" or the aforementioned
> KVM-only variant.  Loss of the enum params is a bit disapponting, but
> gcc obviously isn't providing any extra sanity checks, and the various
> BUILD_BUG_ON() assertions ensure the input is in range.
> 
> This fixes implicit enum conversions that are detected by clang-11.
> 
> Fixes: 4e66c0cb79b7 ("KVM: x86: Add support for reverse CPUID lookup of scattered features")
> Cc: Kai Huang <kai.huang@intel.com>
> Signed-off-by: Sean Christopherson <seanjc@google.com>
> ---
> 
> Hopefully it's not too late to squash this...

Too late, but I queued this anyway.

Paolo

> 
>   arch/x86/kvm/cpuid.c | 5 +++--
>   arch/x86/kvm/cpuid.h | 2 +-
>   2 files changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/x86/kvm/cpuid.c b/arch/x86/kvm/cpuid.c
> index 96e41e1a1bde..e9d644147bf5 100644
> --- a/arch/x86/kvm/cpuid.c
> +++ b/arch/x86/kvm/cpuid.c
> @@ -365,7 +365,7 @@ int kvm_vcpu_ioctl_get_cpuid2(struct kvm_vcpu *vcpu,
>   }
>   
>   /* Mask kvm_cpu_caps for @leaf with the raw CPUID capabilities of this CPU. */
> -static __always_inline void __kvm_cpu_cap_mask(enum cpuid_leafs leaf)
> +static __always_inline void __kvm_cpu_cap_mask(unsigned int leaf)
>   {
>   	const struct cpuid_reg cpuid = x86_feature_cpuid(leaf * 32);
>   	struct kvm_cpuid_entry2 entry;
> @@ -378,7 +378,8 @@ static __always_inline void __kvm_cpu_cap_mask(enum cpuid_leafs leaf)
>   	kvm_cpu_caps[leaf] &= *__cpuid_entry_get_reg(&entry, cpuid.reg);
>   }
>   
> -static __always_inline void kvm_cpu_cap_init_scattered(enum cpuid_leafs leaf, u32 mask)
> +static __always_inline
> +void kvm_cpu_cap_init_scattered(enum kvm_only_cpuid_leafs leaf, u32 mask)
>   {
>   	/* Use kvm_cpu_cap_mask for non-scattered leafs. */
>   	BUILD_BUG_ON(leaf < NCAPINTS);
> diff --git a/arch/x86/kvm/cpuid.h b/arch/x86/kvm/cpuid.h
> index eeb4a3020e1b..7bb4504a2944 100644
> --- a/arch/x86/kvm/cpuid.h
> +++ b/arch/x86/kvm/cpuid.h
> @@ -236,7 +236,7 @@ static __always_inline void cpuid_entry_change(struct kvm_cpuid_entry2 *entry,
>   }
>   
>   static __always_inline void cpuid_entry_override(struct kvm_cpuid_entry2 *entry,
> -						 enum cpuid_leafs leaf)
> +						 unsigned int leaf)
>   {
>   	u32 *reg = cpuid_entry_get_reg(entry, leaf * 32);
>   
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/7b1f385c-3a97-efe0-bb8d-53cdb9c19dbf%40redhat.com.
