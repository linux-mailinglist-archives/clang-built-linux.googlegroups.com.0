Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB2EF7CEAMGQEGBQYSBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe39.google.com (mail-vs1-xe39.google.com [IPv6:2607:f8b0:4864:20::e39])
	by mail.lfdr.de (Postfix) with ESMTPS id E30033F1402
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 09:06:17 +0200 (CEST)
Received: by mail-vs1-xe39.google.com with SMTP id z30-20020a67d29e000000b002c35475ec63sf952378vsi.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 00:06:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629356777; cv=pass;
        d=google.com; s=arc-20160816;
        b=nPRKSoJb7nWYhbUbBEbhriuSkrPZXMjWJtZe4lZXpg7IKpEizhdU+NymprE1nVDpEv
         gpvAQOHxosadp8vk1Jn5KHisZ+Etm93vpRSdg0o2AYf5Hy2zRsfHCoRJ+rwBxo+I0sW7
         QsqyQCtBFNGvUheZsXw0bWc7gCGHoEgkihnr+P8MNK9NVZQlo4mf/d/dO4oLHu6IabYC
         HGLWBaDz3Bj9GUJ6lwbv/c2DZSgON0DTRNKe2x/4OO42shOWvhfs3e9KMMH4szr9pTk+
         3oR5XAADli1qAuNgCTgrOA2Nrypxm/rOqcnEhjI5KofzNxkTxR/bBxZV4Rc3uC4/bNWY
         glXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=6iqNYYpLxq7mT87BD7TSDSD8Kj2RVBXYeeeJ9PaOyWQ=;
        b=wQfRBs92izw56hCcWtl4naEEpiwLMWuLCwch9rC3Gm6t1LO8a//bG8+v9JiPW3p6At
         DyokZjZMtcomRTWWehVpBgqbui/bHWa06bz8QdZoZe9VoUzfeXiqZYFP3ouxTr1+NdF6
         kmfbiOS0tzA08TzDqbYjBEtoBZreX2OeYQNrfO8PQWCdICqMuyIJpnZ9zWjErdDILh6N
         pGFp9ZQ/Ao6t8ZqW8toQUlcegQhfBztv0Uovuw+vtbz+uCSXSqH2eCHpokECjxvwr2mK
         ngfcW1Yyz0KGk5hqWUCypLy6kxWNew/pyLlmhIT5xnvLuygVFocKDirv9H2I61GFk+J9
         NLoA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=DyLqmt9L;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6iqNYYpLxq7mT87BD7TSDSD8Kj2RVBXYeeeJ9PaOyWQ=;
        b=iYGdhhWUEQsiPCyxxw8njJKFW2HNkjb/ajvE9kHzG4ARj9JcIVIz8CNcqETTxRAOqx
         sNM2RVwzQUdttOf5kBACR7/zobqr9E/a92sGDu9sko8VP0dhaJlcoPUG6pqh8n5VS4+0
         LkgowTTMXpipJeHk2dJtk/UEcGGAn/1nozpa1TVXg0pNlOOSlAu1AooQiV/guY6NyXA+
         XxkVDP2jw08Vr95dzOXMUcU5N6ble6EkPWbFWfeV+vhRFmko64MaINqTZXSVbxPLFa4j
         dO4QkE/MqzMC/KWp5bytfBXUctauvkp/Dyzhagn24CLT+Q4xXA/c7ST+2pHS9DBSNtfs
         +DZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6iqNYYpLxq7mT87BD7TSDSD8Kj2RVBXYeeeJ9PaOyWQ=;
        b=p2dCWDXsT23kAvFOzJPvi2N/Pr25Le3pMmEIwaX4LGwMDB716YDrl17IIpkdgNGU7V
         vf4gom+26lqjaxhHV9kCwYyzZi07Yv4FSm0TbDkBpUrXIa2UIO5a6f4MwuonOF8YWIq+
         dRmnmg+tK+kgjweaWW+kHVnCRisL1UHkdksE2itorbhNK3hM14ZlHIovKgeNpDjqBWNl
         /P6Jf/gcmjFci6QDhAL/axqPHP/FD2kYUDxdhIanXthhSD/UYysvB7Mpc+PJFEpEiSwH
         dFA0HlDvCuuKMHuYzU2j/RiQxEmreIHrVHJbUhmoHuVHke5HX/+hh38e2+06DXAiQbxM
         qmQw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533d2FIP9ICOjqx44ZP8N5dbKrdDh1oulEZI6gTldd1auPx/JArk
	gVNKQg8cQEc9I1oovVR/FUI=
X-Google-Smtp-Source: ABdhPJzVET5WAi+DCBQ4QBRh5a7a3wQUMBKyHmkUaLZPKlZHN+Kyw+sfP7D1RDTh0E3aMvBfkatqEw==
X-Received: by 2002:ab0:4222:: with SMTP id i31mr8886887uai.66.1629356776803;
        Thu, 19 Aug 2021 00:06:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac5:c951:: with SMTP id s17ls30395vkm.0.gmail; Thu, 19 Aug
 2021 00:06:16 -0700 (PDT)
X-Received: by 2002:a1f:d943:: with SMTP id q64mr10169611vkg.23.1629356775938;
        Thu, 19 Aug 2021 00:06:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629356775; cv=none;
        d=google.com; s=arc-20160816;
        b=J8FE9jvv0sBUg2jo82AafNinpik80nxQXbrTFt2ppi3wmPun1b3mkrxpdDNYb6HVs3
         YW+EYW5E2Yz8LKDfFstGyWhmyD2XB/GHGDrystLu8ZJK4Slr4A8+t6yVDhNZ8bVd1Xvi
         PocogTxVU14k8XqFu8nl8dzkXmMXRpXFYbYfbEe82AMjBEGUdJcLzhT7+TCEAJf0XGoG
         tIovsqoZi19kh6oKbqTi1dWfaSYqWufwnJrgmDJ5HNEBeBTMlk1as6ebk4bANzMh2pWT
         HLJrQpSlOy9PeD+CASCU3SHekjU7usAM7ztucFyuzUWhOJqOS5WaZtf3XSxM5Sg1VgCt
         9r8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=d24so6mNChjsewh7oprUNrIXD8v7FslbdYVxKPyqYXE=;
        b=AL3u/hJ/W4PnSQkz+yo7HPG+OVTQfn+L7rsoU0dievGcUxax6rFY7xDqoF+Cr7/xhq
         KEcEXwWtAsZxL7UxYIA/WdA5Dg87xVvKFGlIdC+7LwacbvjDY4EAhfYrIK94+NDMyWNj
         HRJPh4EseMqtoUgvHYR/mbaVhmnTzz7AmtxVZK16nAB00lvJrBC9NNceLCe+kP9Xao88
         l31rPiunOT9569W02TpSrdCXD2yPWgqBvZgaz5ZNOQXZPUfNchBDf+7lP724DoTh5O+Y
         UxgUWY2jZxFsrU+fovlCFPtKZi5brnKpsb5Y3mZlyMwO/awLQXaaOLU1ToOfcsVjUAmy
         srVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=DyLqmt9L;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com. [2607:f8b0:4864:20::533])
        by gmr-mx.google.com with ESMTPS id m15si93556uab.1.2021.08.19.00.06.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Aug 2021 00:06:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::533 as permitted sender) client-ip=2607:f8b0:4864:20::533;
Received: by mail-pg1-x533.google.com with SMTP id k14so4996519pga.13
        for <clang-built-linux@googlegroups.com>; Thu, 19 Aug 2021 00:06:15 -0700 (PDT)
X-Received: by 2002:a05:6a00:1a4f:b0:3e2:1f86:3235 with SMTP id h15-20020a056a001a4f00b003e21f863235mr13086054pfv.26.1629356775079;
        Thu, 19 Aug 2021 00:06:15 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id a8sm2027703pfo.79.2021.08.19.00.06.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Aug 2021 00:06:14 -0700 (PDT)
Date: Thu, 19 Aug 2021 00:06:13 -0700
From: Kees Cook <keescook@chromium.org>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: linux-kernel@vger.kernel.org, Miguel Ojeda <ojeda@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com, Joe Perches <joe@perches.com>,
	Andy Whitcroft <apw@canonical.com>,
	Dwaipayan Ray <dwaipayanray1@gmail.com>,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>,
	Christoph Lameter <cl@linux.com>, Pekka Enberg <penberg@kernel.org>,
	David Rientjes <rientjes@google.com>,
	Joonsoo Kim <iamjoonsoo.kim@lge.com>,
	Vlastimil Babka <vbabka@suse.cz>,
	Daniel Micay <danielmicay@gmail.com>,
	Dennis Zhou <dennis@kernel.org>, Tejun Heo <tj@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>, linux-mm@kvack.org,
	linux-kbuild@vger.kernel.org, linux-hardening@vger.kernel.org
Subject: Re: [PATCH v2 1/7] Compiler Attributes: Add __alloc_size() for
 better bounds checking
Message-ID: <202108190003.37FF2F1D7@keescook>
References: <20210818214021.2476230-1-keescook@chromium.org>
 <20210818214021.2476230-2-keescook@chromium.org>
 <20210818161912.f14722707e06de1f046e948d@linux-foundation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210818161912.f14722707e06de1f046e948d@linux-foundation.org>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=DyLqmt9L;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::533
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Wed, Aug 18, 2021 at 04:19:12PM -0700, Andrew Morton wrote:
> On Wed, 18 Aug 2021 14:40:15 -0700 Kees Cook <keescook@chromium.org> wrote:
> 
> > GCC and Clang can use the "alloc_size" attribute to better inform the
> > results of __builtin_object_size() (for compile-time constant values).
> > Clang can additionally use alloc_size to inform the results of
> > __builtin_dynamic_object_size() (for run-time values).
> > 
> > Because GCC sees the frequent use of struct_size() as an allocator size
> > argument, and notices it can return SIZE_MAX (the overflow indication),
> > it complains about these call sites may overflow (since SIZE_MAX is
> > greater than the default -Walloc-size-larger-than=PTRDIFF_MAX). This
> > isn't helpful since we already know a SIZE_MAX will be caught at run-time
> > (this was an intentional design). Instead, just disable this check as
> > it is both a false positive and redundant. (Clang does not have this
> > warning option.)
> > 
> > ...
> >
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -1078,9 +1078,13 @@ KBUILD_CFLAGS += $(call cc-disable-warning, stringop-overflow)
> >  # Another good warning that we'll want to enable eventually
> >  KBUILD_CFLAGS += $(call cc-disable-warning, restrict)
> >  
> > -# Enabled with W=2, disabled by default as noisy
> >  ifdef CONFIG_CC_IS_GCC
> > +# Enabled with W=2, disabled by default as noisy
> >  KBUILD_CFLAGS += -Wno-maybe-uninitialized
> > +
> > +# The allocators already balk at large sizes, so silence the compiler
> > +# warnings for bounds checks involving those possible values.
> > +KBUILD_CFLAGS += -Wno-alloc-size-larger-than
> >  endif
> >  
> >  # disable invalid "can't wrap" optimizations for signed / pointers
> 
> Makefile has changed.  I did this:
> 
> --- a/Makefile~compiler-attributes-add-__alloc_size-for-better-bounds-checking
> +++ a/Makefile
> @@ -1003,6 +1003,12 @@ KBUILD_CFLAGS += $(call cc-disable-warni
>  # Enabled with W=2, disabled by default as noisy
>  KBUILD_CFLAGS += $(call cc-disable-warning, maybe-uninitialized)
>  
> +ifdef CONFIG_CC_IS_GCC
> +# The allocators already balk at large sizes, so silence the compiler
> +# warnings for bounds checks involving those possible values.
> +KBUILD_CFLAGS += -Wno-alloc-size-larger-than
> +endif
> +
>  # disable invalid "can't wrap" optimizations for signed / pointers
>  KBUILD_CFLAGS	+= -fno-strict-overflow

Oh, er, where did "Makefile: remove stale cc-option checks" go? Ah, I
see now:
https://lore.kernel.org/mm-commits/20210814215814.W_qqW%25akpm@linux-foundation.org/T/#u

Looks like I just happened to pick the wrong linux-next. ;)

Thanks for the fix-up!

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108190003.37FF2F1D7%40keescook.
