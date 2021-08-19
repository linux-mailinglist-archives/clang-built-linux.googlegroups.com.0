Return-Path: <clang-built-linux+bncBDYZRFP3QIJBBFWS62EAMGQEAHES4TQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 925CC3F0F8C
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 02:43:03 +0200 (CEST)
Received: by mail-qv1-xf3f.google.com with SMTP id s4-20020ad44b24000000b0035c77ac6861sf3475811qvw.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 17:43:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629333782; cv=pass;
        d=google.com; s=arc-20160816;
        b=jP28u9P+ZiGTNv5bNdmKn8PfDQqX3lDKBb5OJpdSF8ZFoq/2Bqlnib7tsOSW1zpnhY
         M3nAidFX4xiWV/3MUS1GoXSmRCePN0cqI/zn7bChshKBVLgLnKVvYrkdzL5kVw0lEcCC
         WuAsrxCeBXchNias3/PPqRkXbtSmh+crxrl0TQ/LNUHZiMhbKscPhlFJ6Z9yJngWdbEj
         2ZNGu8RhrMrVyk6QPmFkADYpp/ThsfMq1zfYTUHyADsNWypB51AhRstJ79+IdEC7qYQG
         3Ky0STJLmu1vqGaozgLwXWesmWpsUYcE2XqWyC/PrC/w5Do0f9Xm9iuoOp1+EIy2yQ/I
         LhGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=qIJt6EatASfu5LgWEwnA1an+HGrqEo7d4asEjzTpPXU=;
        b=hVAblc2EoffeH/rstfM5qJQXJpAorLMtIWkNzQ/Sy0YFRQ/U05o1+f6V1Z0HsfyuCJ
         HkadQWggvW7tWjN+L3p56lQs5Q9vxHPK/VvGy+kvdc9vKOiiI9z43M5Jbon5PWk2pHsI
         pl4y3h69rEcnn1JsvjxpSm0MCLtcp2oiYXnFhgoa0+ulr3o7mUqNe5xs75fHxU0NOgOQ
         b/pCCdq7Oa17+XHy2rgMsVjWO6u+00JFCZUoxUePgv+TBUjMc6FReGSj7wALhPvfOZjk
         mVAP2O6ol1oefhcC6ptD+GqUwCkw5NjD/k5url8JOPIx9KOXJbJT3xhbhnVir8kTnnRC
         WebA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of dennisszhou@gmail.com designates 209.85.219.41 as permitted sender) smtp.mailfrom=dennisszhou@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qIJt6EatASfu5LgWEwnA1an+HGrqEo7d4asEjzTpPXU=;
        b=VnT9ktXKB/mTcNw6yrfTYz+yHqI1d3Vq6eF8Xmtg84kfHA93NcN8LtkBqplyhEOyki
         lNY5kqmwj0rOw30ABkGjaYrH7F0jolJ9D5/1l1YuhnEgiyzioUKKgH2cU+7i4bENIopB
         e6UdqwTwry04s3zt9eaG9fr0RAHCE2n4BYODM3kXSYZBOCACCgYepsxCLyO3b4OZN8CH
         k3Azyt+VYrW7BDRztUxt59hOWR0CmAqLEy9OWQ3whnfNm1plPJoh8TKWESM3lJEE3YMo
         ORoeqbZe30IzpRQcvHJk/ERNY2GvC1aAghoKAGpKc1YyTT0SWiqb4uZNjt2HKv5PSMx8
         ILyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qIJt6EatASfu5LgWEwnA1an+HGrqEo7d4asEjzTpPXU=;
        b=dM77Eeqa4fjMXMehBpbNVV53CtVlzMX0AObhQSylnncaKzMKsRx0jjKPG7Gvgdxmiq
         XXsqEc9CEwOlN+kPkw+X8C3OWZkVgRs59mWIREHOi85HNB5VvqMgLifDy+ERAF2QCJfs
         UE4i0JK6UlfcvyXU7kC4fHtcJeZjjLzXnf7Zo98alRtduqA7mGcSlWS7PKEIinayJUvE
         M5kt7VHuY4gBcyhps7pfLQkBjlTrnnqaK3viwS2dP0ZjVbw6V/ga1mCSshBido2uDOR4
         Nxlr1/SpjzpfmC2xxBw7Z/+Ym/pcJW4AcMD/sVPTMNGr6EJWnBF1MSfPq+qr+yliR4x2
         S3cg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530QM4jCv589G2He+iJgX+seFNuL/90W1yZaAJsCd+jDWYRYJxIG
	Z5uC1QUAmGYQtTFHS6o6Cks=
X-Google-Smtp-Source: ABdhPJzv1NmXCLm9AoSn3dIMu+zSNtflBAFVwzHMlyfgm26aM5p7msPuDWB3EeuY/rALB9p+tGe7ow==
X-Received: by 2002:ad4:5581:: with SMTP id e1mr11930954qvx.28.1629333782722;
        Wed, 18 Aug 2021 17:43:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:628c:: with SMTP id w134ls668884qkb.7.gmail; Wed, 18 Aug
 2021 17:43:02 -0700 (PDT)
X-Received: by 2002:a05:620a:4404:: with SMTP id v4mr1127725qkp.344.1629333782248;
        Wed, 18 Aug 2021 17:43:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629333782; cv=none;
        d=google.com; s=arc-20160816;
        b=POi5KtVPtD7dg2jMAelhuGqM3vRQP+EE50monQgATzvU0Mw6AT73krjK2em7pdAQ1E
         QY3JmowW0GV3vCpKZpiknrMRuvfhv9OQHGmx4lqD38/YQI+KieVVd1ESTKw3YaLpjjbe
         gZJJUvtlBw/aNF7rWr+qSFOdMUtnTMvB43Qc7EyVhqH+56k/JMmqnCfR8XrdT2BCzMMd
         +FN1Hi+hSZDr4racmZ15ZFP/+P82Klagh0Nhqdbzr7aLP5cFb8aMk91yWyULZwAUi8JP
         N9HwH2d5FfQIz9N+lNfwKe93EupNZoAE3Z8AXGazauhhLXwkwoECwsEZPPaK43A7pstN
         p9tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=WUckR6/rEyG6hoZXTxRWHk9iw1OsAucy5gKY4D8oDS4=;
        b=PO6LjhnSG61HVewhpZCFUZ7yVxtCTGzO56NHb14PrxqQAgsvhu4tNPPQibwF0LQWIo
         b/Yg1M72IDznPZk+yhjJ9d8uQ11J5Ny4IUHQEGUtXnNy1rzbl4AulAjaXW7Z0iOv4P4w
         YVo0SqiSJ4OwcEzH/iMS7FqIrF+53zWeYFOgcP2DHgEYX6xcpjEHdkUjgzS5f0n+2Ztd
         5Ay6rw1K4BSh4xUd8OSA8TMH1vHG9xp+txoasZUxN+tBOHVIX8aNiFWVjfX/UXCmb0MB
         oHwBMWl5FZGHWAYJJQUNaBfhjsz8pbWhS5cJKackGy5ZT09z9U7oTY5wREI0hgE8snGz
         DiQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dennisszhou@gmail.com designates 209.85.219.41 as permitted sender) smtp.mailfrom=dennisszhou@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com. [209.85.219.41])
        by gmr-mx.google.com with ESMTPS id 10si104648qtr.1.2021.08.18.17.43.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Aug 2021 17:43:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of dennisszhou@gmail.com designates 209.85.219.41 as permitted sender) client-ip=209.85.219.41;
Received: by mail-qv1-f41.google.com with SMTP id q6so2733659qvs.12
        for <clang-built-linux@googlegroups.com>; Wed, 18 Aug 2021 17:43:02 -0700 (PDT)
X-Received: by 2002:a05:6214:902:: with SMTP id dj2mr11985796qvb.62.1629333782032;
        Wed, 18 Aug 2021 17:43:02 -0700 (PDT)
Received: from fedora (pool-173-68-57-129.nycmny.fios.verizon.net. [173.68.57.129])
        by smtp.gmail.com with ESMTPSA id d8sm758453qtr.0.2021.08.18.17.43.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Aug 2021 17:43:01 -0700 (PDT)
Date: Wed, 18 Aug 2021 20:42:59 -0400
From: Dennis Zhou <dennis@kernel.org>
To: Kees Cook <keescook@chromium.org>
Cc: linux-kernel@vger.kernel.org, Daniel Micay <danielmicay@gmail.com>,
	Dennis Zhou <dennis@kernel.org>, Tejun Heo <tj@kernel.org>,
	Christoph Lameter <cl@linux.com>, linux-mm@kvack.org,
	Joe Perches <joe@perches.com>, Miguel Ojeda <ojeda@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Andy Whitcroft <apw@canonical.com>,
	Dwaipayan Ray <dwaipayanray1@gmail.com>,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>,
	Pekka Enberg <penberg@kernel.org>,
	David Rientjes <rientjes@google.com>,
	Joonsoo Kim <iamjoonsoo.kim@lge.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Vlastimil Babka <vbabka@suse.cz>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org,
	linux-hardening@vger.kernel.org
Subject: Re: [PATCH v2 6/7] percpu: Add __alloc_size attributes for better
 bounds checking
Message-ID: <YR2pE9V1P0xmBWUo@fedora>
References: <20210818214021.2476230-1-keescook@chromium.org>
 <20210818214021.2476230-7-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210818214021.2476230-7-keescook@chromium.org>
X-Original-Sender: dennis@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of dennisszhou@gmail.com designates 209.85.219.41 as
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

On Wed, Aug 18, 2021 at 02:40:20PM -0700, Kees Cook wrote:
> As already done in GrapheneOS, add the __alloc_size attribute for
> appropriate percpu allocator interfaces, to provide additional hinting
> for better bounds checking, assisting CONFIG_FORTIFY_SOURCE and other
> compiler optimizations.

Can you elaborate a little bit for me how this works for percpu? In any
case that's not uniprocessor, any modification is done through address
accessors and not on the returned percpu pointer. Is the metadata kept
by gcc/clang able to transpire the percpu pointer accessors?

Thanks,
Dennis

> 
> Co-developed-by: Daniel Micay <danielmicay@gmail.com>
> Signed-off-by: Daniel Micay <danielmicay@gmail.com>
> Cc: Dennis Zhou <dennis@kernel.org>
> Cc: Tejun Heo <tj@kernel.org>
> Cc: Christoph Lameter <cl@linux.com>
> Cc: linux-mm@kvack.org
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  include/linux/percpu.h | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/include/linux/percpu.h b/include/linux/percpu.h
> index 5e76af742c80..119f41815b32 100644
> --- a/include/linux/percpu.h
> +++ b/include/linux/percpu.h
> @@ -123,6 +123,7 @@ extern int __init pcpu_page_first_chunk(size_t reserved_size,
>  				pcpu_fc_populate_pte_fn_t populate_pte_fn);
>  #endif
>  
> +__alloc_size(1)
>  extern void __percpu *__alloc_reserved_percpu(size_t size, size_t align);
>  extern bool __is_kernel_percpu_address(unsigned long addr, unsigned long *can_addr);
>  extern bool is_kernel_percpu_address(unsigned long addr);
> @@ -131,7 +132,9 @@ extern bool is_kernel_percpu_address(unsigned long addr);
>  extern void __init setup_per_cpu_areas(void);
>  #endif
>  
> +__alloc_size(1)
>  extern void __percpu *__alloc_percpu_gfp(size_t size, size_t align, gfp_t gfp);
> +__alloc_size(1)
>  extern void __percpu *__alloc_percpu(size_t size, size_t align);
>  extern void free_percpu(void __percpu *__pdata);
>  extern phys_addr_t per_cpu_ptr_to_phys(void *addr);
> -- 
> 2.30.2
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YR2pE9V1P0xmBWUo%40fedora.
