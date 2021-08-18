Return-Path: <clang-built-linux+bncBCT4XGV33UIBB4NK62EAMGQE6OQW45Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A4653F0E90
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 01:19:15 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id z127-20020a6265850000b029039e815e04d6sf2083565pfb.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 16:19:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629328754; cv=pass;
        d=google.com; s=arc-20160816;
        b=RjFf9cd38FWswe3V2o2itc6h/xWcFosvPqno91F6I4IrtHO6RetHfbROb4w0ECbinh
         H2IWPTI0FANAEULv2vDZHrc5ppYc9s/YwnkvQ4gk4Xl763DD+ZLFpp4aYIXJnyY1qG7R
         k8h9XmHsAfhzCEvYvRW5HUOl+SiahcFXUDMtf3Ye3AZia3xjiUL1mmyAon7EteXkaiAi
         wMMalFE0Cvt1YxCXppT/juiccrsEAwaP0Jdxi++BE64sZeoljaB0ZPyBtoOCeVWQHlJi
         x4hJKas1TKTGme6wvgOd0ExIaP7crGaJ7d9Sx3H1+sOCjijrDuDn4K6ZC41jcn6oJox+
         rSHw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=N3wjB6KakYFpeVsmeNYdQ+SlMaPRRJOaGTIsV/2Tly4=;
        b=l5WffqGDCblVTTkjSGfJIoGKXhPn+ugxjFYfZvYbm5atWFGKdyuoU7kFqdME84dmN4
         x16HUoxbrDWeIRb0pSA3G+ruRhAFH2itq+S+Z0SnGaDduUjGeAdoubJo7zzWbiWymOoC
         LAwrJbP3AbObIqKbhK2FLpGsyI7ewBJciZWsYoNd9UwpXE0mYNZyBF6ao9uLvwFF3Sy6
         DBGqzgB+RSKSJDRTxQ7e2CPgwxskLaIGqyK3QZrCQorRxWiLWepp3EDDFmY4OLQ+wQus
         P1JYYCnm3DVzy0McpnrkXJ+Xgeo62sr8r92qZd6SqT4afvG+g/mJATVZH6PLlVhFVYJ0
         NVyA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=korg header.b=g5WQ5XEK;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=N3wjB6KakYFpeVsmeNYdQ+SlMaPRRJOaGTIsV/2Tly4=;
        b=BYLiv++ZG/QnCYegnzm9eTgTWaeD6skV5Pg3WG7ZhL2jCGzF6TVSqTxkfgkCJ+F6e8
         cUZEgsIt+ux+W7wY6zD2md8338hefmRsZ2daTZB+Lz1ugKgcYzQt8am7xIY344hcmB4p
         WgpGqLTw4zIcbvUrAJ4QMPaIAlvE7V796wvVXmaBsPt5nI9BBTg8PIqCh0sR4YsjQB7O
         GOrHIaah9igrAO3MclMaRvDxDMUhLJnfLtg9qxRNZIgpf+Q322paC3u0JpyQfs08xF7g
         topHomUbsjnjFvGP1Py2uDyMyo0qPYH3szD+e2jLqEqLjKLCjOtwnEufTl5YFNGA36u/
         r5Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=N3wjB6KakYFpeVsmeNYdQ+SlMaPRRJOaGTIsV/2Tly4=;
        b=b7NPrc9In29s3WEh87x7Gx4qGmz8+dumPy3NCV+6WWbYzXFUAe3CTHdue2WEalsmPD
         pj/oh2+y+l21pEfOxQN2L3ERCaQbFgweYR5fYtb3kx5MaVn2obRX5rdcY/UVM34QiSca
         kKlLKkPVEdS2wGbK9mHAvDuow0DhsTOkguParyDJP2Bctm5TP0XkKOXBvuvqQWCk7ynD
         lbEtj7N+GueIXFjmj5qo50J46gOyVWP0gdnKRSUXooNnXZf88dvChJni6UfwITMme3qe
         zWzXJEJ/sNeb7ilINb4o4QRmsUSbl4sekKGr4ONLjUmCHuvTX80D18+EwMmd1I7eXpIk
         nqMw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5325R0s+LTmBE3OFnYHq//5u9gu+DQpvOchSupV1KOned+0Qpt7U
	pYb1aLwifV4JkKT21y/Ouw4=
X-Google-Smtp-Source: ABdhPJzGqOkP1g48+w9RdpbD+8AU3twf9NtquMzoSfZvF8WyncXNJ0BqgwLUc7B0JZWP2VfAHxqUQg==
X-Received: by 2002:a05:6a00:1693:b029:333:da3a:8c86 with SMTP id k19-20020a056a001693b0290333da3a8c86mr11973080pfc.41.1629328753983;
        Wed, 18 Aug 2021 16:19:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:9e:: with SMTP id c30ls1491663pfj.0.gmail; Wed, 18
 Aug 2021 16:19:13 -0700 (PDT)
X-Received: by 2002:aa7:8242:0:b0:3e2:97eb:d6e8 with SMTP id e2-20020aa78242000000b003e297ebd6e8mr9716742pfn.66.1629328753294;
        Wed, 18 Aug 2021 16:19:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629328753; cv=none;
        d=google.com; s=arc-20160816;
        b=vzN7wPFJpN72eylvCJ5iAlcphkjggCsdaNreickYpYqbO1cBHZ1LUuwa+m+Xu3d7NN
         m1hUkN2/qtViiX43xFqjUGm5mqqv3NCEeBs/0+AAm4izlfla3+WzHpSTWDyr/10G2ex6
         ain4p8AMjFma4BwyQB6r4tSz7qFVM2v3otrYkF3hikrp9GjaUq5eCpAn77D0OK/iwEbY
         94eIX+cm03tkZltPWChKMG/5+ZZodBgz4XCEi4wud9OmeMropHBraHY3yDe/vybzTmU0
         WB6BWGHu3VPE4TZ+u1VPrz1lev8eQ3XMk957LfX7LfSY3lI5LG2whVJS1tr0uTb54g+7
         4fog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=6tkB20YyNzz/ZA8WcnKUWHNzQp7OKISJkQLIJOLRw/8=;
        b=D90vLcVql7bJe302EuK97TvifL1fgxDW9k3flhpumVIeMj7pYBy+GbrMRu7RXK7W5h
         fl0/b8XxVtPDssH37+SP5rpjmXqTds6pOB/Ydnhtg8NdjiZQfM1NU/WqR1j6oYX/V0iH
         G37N8fkJ9h8SVznmIJn6Bf3QoU1eQZsdDlcp55w44cRRwZGUSsWNfPQ+s90UCrsSRsAr
         +P03tSB1ZvY7p4t1o3ZgoTiPmUxsiHhQW74nVW9sO84mveRVju+SAkTE2JA41BE1vj2o
         cw0jA8XWxXYqEnXkM0+SZ0k0Vb4aykL9BrL46D8vXbEdV0p8om2tknIx3UGj25gVfgU3
         f6zA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=korg header.b=g5WQ5XEK;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o2si539703pjj.1.2021.08.18.16.19.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Aug 2021 16:19:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 80EE36109F;
	Wed, 18 Aug 2021 23:19:12 +0000 (UTC)
Date: Wed, 18 Aug 2021 16:19:12 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: Kees Cook <keescook@chromium.org>
Cc: linux-kernel@vger.kernel.org, Miguel Ojeda <ojeda@kernel.org>, Nathan
 Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>,
 clang-built-linux@googlegroups.com, Joe Perches <joe@perches.com>, Andy
 Whitcroft <apw@canonical.com>, Dwaipayan Ray <dwaipayanray1@gmail.com>,
 Lukas Bulwahn <lukas.bulwahn@gmail.com>, Christoph Lameter <cl@linux.com>,
 Pekka Enberg <penberg@kernel.org>, David Rientjes <rientjes@google.com>,
 Joonsoo Kim <iamjoonsoo.kim@lge.com>, Vlastimil Babka <vbabka@suse.cz>,
 Daniel Micay <danielmicay@gmail.com>, Dennis Zhou <dennis@kernel.org>,
 Tejun Heo <tj@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>, Michal
 Marek <michal.lkml@markovi.net>, linux-mm@kvack.org,
 linux-kbuild@vger.kernel.org, linux-hardening@vger.kernel.org
Subject: Re: [PATCH v2 1/7] Compiler Attributes: Add __alloc_size() for
 better bounds checking
Message-Id: <20210818161912.f14722707e06de1f046e948d@linux-foundation.org>
In-Reply-To: <20210818214021.2476230-2-keescook@chromium.org>
References: <20210818214021.2476230-1-keescook@chromium.org>
	<20210818214021.2476230-2-keescook@chromium.org>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: akpm@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=korg header.b=g5WQ5XEK;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
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

On Wed, 18 Aug 2021 14:40:15 -0700 Kees Cook <keescook@chromium.org> wrote:

> GCC and Clang can use the "alloc_size" attribute to better inform the
> results of __builtin_object_size() (for compile-time constant values).
> Clang can additionally use alloc_size to inform the results of
> __builtin_dynamic_object_size() (for run-time values).
> 
> Because GCC sees the frequent use of struct_size() as an allocator size
> argument, and notices it can return SIZE_MAX (the overflow indication),
> it complains about these call sites may overflow (since SIZE_MAX is
> greater than the default -Walloc-size-larger-than=PTRDIFF_MAX). This
> isn't helpful since we already know a SIZE_MAX will be caught at run-time
> (this was an intentional design). Instead, just disable this check as
> it is both a false positive and redundant. (Clang does not have this
> warning option.)
> 
> ...
>
> --- a/Makefile
> +++ b/Makefile
> @@ -1078,9 +1078,13 @@ KBUILD_CFLAGS += $(call cc-disable-warning, stringop-overflow)
>  # Another good warning that we'll want to enable eventually
>  KBUILD_CFLAGS += $(call cc-disable-warning, restrict)
>  
> -# Enabled with W=2, disabled by default as noisy
>  ifdef CONFIG_CC_IS_GCC
> +# Enabled with W=2, disabled by default as noisy
>  KBUILD_CFLAGS += -Wno-maybe-uninitialized
> +
> +# The allocators already balk at large sizes, so silence the compiler
> +# warnings for bounds checks involving those possible values.
> +KBUILD_CFLAGS += -Wno-alloc-size-larger-than
>  endif
>  
>  # disable invalid "can't wrap" optimizations for signed / pointers

Makefile has changed.  I did this:

--- a/Makefile~compiler-attributes-add-__alloc_size-for-better-bounds-checking
+++ a/Makefile
@@ -1003,6 +1003,12 @@ KBUILD_CFLAGS += $(call cc-disable-warni
 # Enabled with W=2, disabled by default as noisy
 KBUILD_CFLAGS += $(call cc-disable-warning, maybe-uninitialized)
 
+ifdef CONFIG_CC_IS_GCC
+# The allocators already balk at large sizes, so silence the compiler
+# warnings for bounds checks involving those possible values.
+KBUILD_CFLAGS += -Wno-alloc-size-larger-than
+endif
+
 # disable invalid "can't wrap" optimizations for signed / pointers
 KBUILD_CFLAGS	+= -fno-strict-overflow
 
_

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818161912.f14722707e06de1f046e948d%40linux-foundation.org.
