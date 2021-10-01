Return-Path: <clang-built-linux+bncBDYZRFP3QIJBBHFQ3SFAMGQEJFB4GPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A89641EF37
	for <lists+clang-built-linux@lfdr.de>; Fri,  1 Oct 2021 16:15:57 +0200 (CEST)
Received: by mail-oi1-x238.google.com with SMTP id m189-20020aca58c6000000b0027381ff1c37sf6396852oib.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 01 Oct 2021 07:15:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1633097756; cv=pass;
        d=google.com; s=arc-20160816;
        b=q/1sfSwxMgRzFg/lgH54mt1/2kSZISxSPFAevl7Cf6hHUqmRUuc7Xqb5u5Fi40qYN5
         cj9UoCO8hlZBRK5tF5VwPlOplLt9EP4WOPcXbx+RTYolSpolJSTrNkG3ycohqWn/siG8
         Et0Tszqnau/pzko1Ra+4MJ1vpFoaiLce3FzSOBmMGbcoiuDYCK4GrPBvcmj5QDnMrELH
         3IE01VERCQIMxryIbzjsVe4OIxIPDaWwFHRZe/EdPzG8RN4LcWms3RnnHq3WzRt6VSUb
         jFQJ6jW6uia0uTHyqryK+i/DpGV0wXue7nicGBXw8Jo50lbRKt4ZEl/+dtyKWM0TkHph
         tqpA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=/VGCHVUz91wmj18RgDUMyKvCd7tvi0Mh4MVt5PbA2M0=;
        b=EVjxUq+zBitWEeua0aDkCL64Lces2ROgmXFrg4TLR9lPwAOUQ/VKu7aX3U7qVxEOku
         /GOfoZ3a5/KEBjhGxoJK+3JpEWnqU1/8SVmRWr4ID2w2jRm3jFLBsZPTKvfMZZ7kZrL0
         9Pre0caUp8EBdAOQ8NEit1szv2QTKu8yJ0hUh9zDxBgB78nZmUhOJMFaFEQ53gDzmS/M
         COdiZnY0PaBZcC5Q4YLxddGAnfDDOgM54+5R7vhlTHLDAJKz9veGiStF3P8tTaiFqc7n
         Kv6mYHeIik+izV2XKBRmScGtGtleRI04ywLoO/ppGvb6XO2PyCMPWS4WLxsIp4Qkn/Jx
         c/4g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of dennisszhou@gmail.com designates 209.85.219.53 as permitted sender) smtp.mailfrom=dennisszhou@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/VGCHVUz91wmj18RgDUMyKvCd7tvi0Mh4MVt5PbA2M0=;
        b=PA6uLVgOPMr4UjvJeXLH6RhVSBpGPaaP+bnaGPuJhVwMjZKxI6Se11ELKKs4y0v4Zi
         V6YGJa8+ng7qWyPjHbpFRwsCPFYfZstHJKFuAGJtmXxlMqNIVOwjgog1+ZO232vvzP9V
         PBtKuROl1OftcOIE2euES8cGvDirZ+aqYW6rDzTDeHPIjOgIIdUHHyxdHx0Ooncnp4eq
         mXx4gP8riVp9JLxQt7n/FIMLnpSMIyb0GDEFTOZ3p9m9OcGCyTOvVyAgn/TVyrcdI0lN
         NeWdxK17Eyhj9npTSL3S/iT2Qft9MBWyFJ/qGrviRI7lkgjZ44N4odxjEVLN0vl2A9Xa
         RqwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/VGCHVUz91wmj18RgDUMyKvCd7tvi0Mh4MVt5PbA2M0=;
        b=OZ617NMRVvipKiT2CekEMFzp+L+Q8KhXXhJXndss3CAwERyaFuJcyU2HCAiQAu/W+o
         gsNNPFNTAh9jt2wXK0Aw+lzwI5C5vIXS7zG207LCiqLTKvsX5e6jYmzmW9QWVH2/b10I
         XI4b+FyqqxxhU/7OMwn9BDl0j6WOIN86h6BQGcP7Vf/zrJrfvhxOfF11Okd+5LUqY+Sz
         /AvoywXlaDpPoVsjPsOQnnpFjXH7Du0HUmL/qWUQ+eiSBcMLXZ4LAHKAqd3tCBMicTdu
         h5r+5BqrSVdn0jryXuSY0HqgdWoAT/QTvTZT9JZUE1WnNZoeZ2p9p3BfQ8mbm0wwlu3U
         wbQQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531J+T63ORchrXEY6cRffzYzKFK8K+A3rPXEWxyh0AZLuC2OvJ+B
	kcJY4DBDxA1ipEywYYtzZWo=
X-Google-Smtp-Source: ABdhPJzwOSlXW9UChIWqzukyM2NLeLHfyURvFO0Pcqn6m5X9O6ZzN8mUAccNWUEEzY6TwTX+N4yLVA==
X-Received: by 2002:aca:606:: with SMTP id 6mr4224070oig.82.1633097756623;
        Fri, 01 Oct 2021 07:15:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4bd8:: with SMTP id y207ls3085558oia.1.gmail; Fri, 01
 Oct 2021 07:15:56 -0700 (PDT)
X-Received: by 2002:a05:6808:130e:: with SMTP id y14mr4106066oiv.29.1633097756208;
        Fri, 01 Oct 2021 07:15:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1633097756; cv=none;
        d=google.com; s=arc-20160816;
        b=gWooy91uf0vVbMXcq8wtjl/Lrl2IB+JAdMmrJjsbcK9YwbpT+b3YPuJR5owyXkw9t2
         vPV6pC6SY9QjsYnfDSDkZHnxrg4enYGlT0eP1mLq0iUUexrVpbrUIZ/qx5F7H8Ex/zRk
         KTR3Cx7H2wSOCqt2RjeI9galWaa5OIHaPRaK1NAE0InO+G0EtM3KnFQFNTa+BvvBjXS1
         CM2QKBfhUbr6O+l+R+LoXVCF7dGJySH3Rjl35TqekB3NsUeQsUX64FF3/D+GwI+FFKZo
         0o7AKK4HzGPTZmcGKqPJ9mHTDfNl801LHm96ps6JXQyniAL/+WTsTKsMQee84xgg4yiQ
         FUoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=QVjZB2U1LiPX5N7VS+BV6iC3aFCiEGYAbe9Pf/bwPeM=;
        b=wa3EG1h0vvxuqBzkI6l2HxgyYVO03T0ouRatiePXtN46S4tk60A2Ow+OlQQqPw0FuV
         ypdVggbN3BBhywp6AUKFYcmVbtD//J4rkYMcH6bis0753DGWVDrsJ2vHEiYleyn5BTeP
         brvQdZjS9JT1C1wP5rwkxBGEHaCG+fTECn23CvQZ1KOdP+0caADyALpeD8MK1HUlhGc1
         HWKoBYxdHv24rqWn7Hmok6u2s1O4uWzfwD2GxtfbhE2i+f3MoxIZoGiwNKW2H9ZsCUMx
         gvXrMMicBS+2LMPxP8pIhMk062BOZAhwSfdtTc4wFHgXEku7FfYt6SRR4YuyGMkFLCPD
         tHUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dennisszhou@gmail.com designates 209.85.219.53 as permitted sender) smtp.mailfrom=dennisszhou@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com. [209.85.219.53])
        by gmr-mx.google.com with ESMTPS id u18si505888oiw.3.2021.10.01.07.15.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Oct 2021 07:15:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of dennisszhou@gmail.com designates 209.85.219.53 as permitted sender) client-ip=209.85.219.53;
Received: by mail-qv1-f53.google.com with SMTP id cv2so5629585qvb.5
        for <clang-built-linux@googlegroups.com>; Fri, 01 Oct 2021 07:15:56 -0700 (PDT)
X-Received: by 2002:ad4:5bad:: with SMTP id 13mr9283552qvq.52.1633097755709;
        Fri, 01 Oct 2021 07:15:55 -0700 (PDT)
Received: from fedora (pool-173-68-57-129.nycmny.fios.verizon.net. [173.68.57.129])
        by smtp.gmail.com with ESMTPSA id y27sm126180qkj.64.2021.10.01.07.15.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Oct 2021 07:15:55 -0700 (PDT)
Date: Fri, 1 Oct 2021 10:15:52 -0400
From: Dennis Zhou <dennis@kernel.org>
To: Kees Cook <keescook@chromium.org>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	Dennis Zhou <dennis@kernel.org>, Tejun Heo <tj@kernel.org>,
	Christoph Lameter <cl@linux.com>,
	Andy Whitcroft <apw@canonical.com>,
	David Rientjes <rientjes@google.com>,
	Dwaipayan Ray <dwaipayanray1@gmail.com>,
	Joe Perches <joe@perches.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>,
	Miguel Ojeda <ojeda@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Pekka Enberg <penberg@kernel.org>, Vlastimil Babka <vbabka@suse.cz>,
	Daniel Micay <danielmicay@gmail.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	clang-built-linux@googlegroups.com, linux-mm@kvack.org,
	linux-kernel@vger.kernel.org, linux-kbuild@vger.kernel.org,
	linux-hardening@vger.kernel.org
Subject: Re: [PATCH v3 8/8] percpu: Add __alloc_size attributes for better
 bounds checking
Message-ID: <YVcYGOIT8eUUiPcc@fedora>
References: <20210930222704.2631604-1-keescook@chromium.org>
 <20210930222704.2631604-9-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210930222704.2631604-9-keescook@chromium.org>
X-Original-Sender: dennis@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of dennisszhou@gmail.com designates 209.85.219.53 as
 permitted sender) smtp.mailfrom=dennisszhou@gmail.com;       dmarc=fail
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

Hello,

On Thu, Sep 30, 2021 at 03:27:04PM -0700, Kees Cook wrote:
> As already done in GrapheneOS, add the __alloc_size attribute for
> appropriate percpu allocator interfaces, to provide additional hinting for
> better bounds checking, assisting CONFIG_FORTIFY_SOURCE and other compiler
> optimizations.
> 
> Note that due to the implementation of the percpu API, this is unlikely
> to ever actually provide compile-time checking beyond very simple non-SMP
> builds. But, since they are technically allocators, mark them as such.
> 
> Cc: Dennis Zhou <dennis@kernel.org>
> Cc: Tejun Heo <tj@kernel.org>
> Cc: Christoph Lameter <cl@linux.com>
> Cc: Andy Whitcroft <apw@canonical.com>
> Cc: David Rientjes <rientjes@google.com>
> Cc: Dwaipayan Ray <dwaipayanray1@gmail.com>
> Cc: Joe Perches <joe@perches.com>
> Cc: Joonsoo Kim <iamjoonsoo.kim@lge.com>
> Cc: Lukas Bulwahn <lukas.bulwahn@gmail.com>
> Cc: Miguel Ojeda <ojeda@kernel.org>
> Cc: Nathan Chancellor <nathan@kernel.org>
> Cc: Nick Desaulniers <ndesaulniers@google.com>
> Cc: Pekka Enberg <penberg@kernel.org>
> Cc: Vlastimil Babka <vbabka@suse.cz>
> Co-developed-by: Daniel Micay <danielmicay@gmail.com>
> Signed-off-by: Daniel Micay <danielmicay@gmail.com>
> Signed-off-by: Kees Cook <keescook@chromium.org>

Thanks for updating the commit log.

Acked-by: Dennis Zhou <dennis@kernel.org>

Thanks,
Dennis

> ---
>  include/linux/percpu.h | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/include/linux/percpu.h b/include/linux/percpu.h
> index 5e76af742c80..98a9371133f8 100644
> --- a/include/linux/percpu.h
> +++ b/include/linux/percpu.h
> @@ -123,7 +123,7 @@ extern int __init pcpu_page_first_chunk(size_t reserved_size,
>  				pcpu_fc_populate_pte_fn_t populate_pte_fn);
>  #endif
>  
> -extern void __percpu *__alloc_reserved_percpu(size_t size, size_t align);
> +extern void __percpu *__alloc_reserved_percpu(size_t size, size_t align) __alloc_size(1);
>  extern bool __is_kernel_percpu_address(unsigned long addr, unsigned long *can_addr);
>  extern bool is_kernel_percpu_address(unsigned long addr);
>  
> @@ -131,8 +131,8 @@ extern bool is_kernel_percpu_address(unsigned long addr);
>  extern void __init setup_per_cpu_areas(void);
>  #endif
>  
> -extern void __percpu *__alloc_percpu_gfp(size_t size, size_t align, gfp_t gfp);
> -extern void __percpu *__alloc_percpu(size_t size, size_t align);
> +extern void __percpu *__alloc_percpu_gfp(size_t size, size_t align, gfp_t gfp) __alloc_size(1);
> +extern void __percpu *__alloc_percpu(size_t size, size_t align) __alloc_size(1);
>  extern void free_percpu(void __percpu *__pdata);
>  extern phys_addr_t per_cpu_ptr_to_phys(void *addr);
>  
> -- 
> 2.30.2
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YVcYGOIT8eUUiPcc%40fedora.
