Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB3ORZ37QKGQELJ7JGZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id B2B022EA10A
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 Jan 2021 00:46:54 +0100 (CET)
Received: by mail-qv1-xf3a.google.com with SMTP id u8sf26468726qvm.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 Jan 2021 15:46:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609804013; cv=pass;
        d=google.com; s=arc-20160816;
        b=IKm4hT/1MmCYM1y8zIFxYEp9ckh9jeFok0FSLf3wcqgMUJ+z9jrDkyTDkq4s28BKJh
         duzJihQ/0HZCj5Md+n4ReXMcvdvNPLwlGhNhJLHLt7r1p+ZK2qTk+nD90y6R2TQM/xZT
         jgwxkOrno8iM69LF1hQxuV/p79YdpJpFHTWZK6EE3hhVmEoAj1oc+DwmuIejUogdb0iZ
         I71JNkHdHkMpzaIsBfl0keNT2ZdIS49NPdB7oTAftQwP3i2cxBhj95DyKZ00nFX10svh
         V4TQhhnx3/b4Am5fN0o5GnWKUZ4lDkruWOs4GOvNtSG77L1I9kYW0LwuYteCDwoyzECA
         ABlA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=LvUDQo1C3BRShQTiRkgeFJq5OqRI91jxhuzqrxL4PHY=;
        b=X1DrMSAYLPuv9HCjaB4E9DA87pXdR/UGI2Wk7GnC1FJMsjQS+MojtVOGe9tKCSJpXb
         /hL7Jwzds1aywZ5TUHeVAP0wRYE0bz5J8HXi3nfraNHNubJ4Z1yRLG0bi1vaYWc2/CVa
         MxvYyhWnDjyKLyGLQgYYMZakKL8Qu4FKhZitpeZgIw+sW7FPOQgQdXAWfb7/vMjRi14F
         zTlCt7e0XWbpAPZeCsoNVzm9aHgahs8yiMd0lYEx7XRF2SojPrwJW6p7l9VS9nPRebjM
         0CoXcq5UlxfejqNmvkkQ55lGSJDJOvUMPP55/TTJMk1i63+ZrOC/uQrhhiekwpHA4sb3
         AJ9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UhUadZD8;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::82e as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LvUDQo1C3BRShQTiRkgeFJq5OqRI91jxhuzqrxL4PHY=;
        b=GlMFPtFZm3CZDkhpPGDnl3b5mTPM81lPm1DWAQCdznjJVkmKSPC58C1sW+symlIhDr
         biFu6HRc65DkpXkICrTFl4njIAzlfsv1y0BEdnCTrZvpZQpyCWOl2jYsI6BiR4bogQpg
         3WNgQeDfoFwxfQwWL5JmCMJ1xOHrllzadCoHAajbLjx5xG8SmasM1XM/oxdZ9MmKWGql
         ZsJSDAOJFOFW52kZwGYp4JTq8HWuTY86YkJfEBwDYYNjvCUOyhtlyoulr0+dueIUqofB
         dHwXIzLIrbGTVmE6Z9h9SNm/Nb78De+fIsWqc0C6w8G4LUU9DHZTSchr/89v21bmB/XQ
         +J9A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LvUDQo1C3BRShQTiRkgeFJq5OqRI91jxhuzqrxL4PHY=;
        b=OdNUdOSAypBTZwo5OaYY0NRh7kRHgmKOB9jcSuRB0/PiEhGq0+l7GrrtxWgQ4gKIsp
         huYhYcSU69154DA4ncepYK4JcHNkGpX+Pnhndz6CdlamnRvVZQrRKEKOJ9lUVJSVOwPE
         OdGlxXDUj4h9Hra2BnK7UR0KByzYKUqSY3EyRLWBK6Ql6N8SFkK+2c2VxQFU/dTJ3bZ5
         z6iT48Bk5vyiKZPLz2BYyg+QbZ3hx2FKlqjvK33MbkMARF40Twqy6WveG2+ZcDJ4F+ov
         qE+w/Qj9FjbxzBV5KLmNe4/jHvMqCAcVPhgbz32dRj/fTE5h4B96EL/rOWw2UgAlOiDo
         Alhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LvUDQo1C3BRShQTiRkgeFJq5OqRI91jxhuzqrxL4PHY=;
        b=aYTWeNu9PtQxxutgCxtS+dLjPlYcCZHjtqalczvfy00sP5Dj/fOM/iPCVzqM7bJQTD
         RtHzpIsMh6tA3j4ib3Lw4mQHq/MAYSSEGItJ6t8p6+JUQ3JAFO7FWbJvEq2hAlk6NqCv
         Eg5mnLsIODomwt097B/oT5bgmme4jtOk/vbJ4XUN36qfEFhBjsunxkXj7Geo7PnpnHk6
         zwba5c/EYJnoNwUziK0Z01tTpu1c1k4z8jaQFDkj/MitghUPKDtsDFuyAL+TttPdrGU7
         Cyk1LVfhAFREpf1Z0DP5N2LkW7mow2WS+LmSg151n517+eSCUeic7hLh8lmCK+2zG1pP
         2BgQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533lNdyd0sKioCkihJJ58w5RQvLwkOwGoXdhHj5RI2NgOkJm4peb
	w8kc94YyghM8+Pp+XvVEV5M=
X-Google-Smtp-Source: ABdhPJx/G3estqsXxS3mEyHGW6l/g/hroiHbWltm/sumqsnkTAa5uuALZ5vvVCZUc6JQWHF45zsuYQ==
X-Received: by 2002:aed:2ba5:: with SMTP id e34mr75493892qtd.146.1609804013549;
        Mon, 04 Jan 2021 15:46:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4b77:: with SMTP id g23ls29998647qts.0.gmail; Mon, 04
 Jan 2021 15:46:53 -0800 (PST)
X-Received: by 2002:ac8:5a90:: with SMTP id c16mr74545424qtc.331.1609804013211;
        Mon, 04 Jan 2021 15:46:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609804013; cv=none;
        d=google.com; s=arc-20160816;
        b=dq3XCD0MGdejIz79F3huhL3OltIkxUmpiDWPzTjVJLqxysgML/3Mq8mhQOBu0LMfB9
         NMciToGqyenvF9sykphitnUaedmYPIyjk2eL1yOBDpk+DY98ysLEr04WdRf1Of9v2s4e
         61bWgrp+bKrluzNji3mmvRfdOZn+YZCEyerA3eg8rNAdRdi0QCjOfncJZR+56r1JMoSM
         /ltcqjDz4DB3tE+J8tVHLZEiCOANy35nvriPF3CjvRoah4Ska/ygVU8GjHQCY5xUxVBU
         7Kim36LehicMDEPAcutN+FZWaLqEJ288WbUWbJ7D3fAVUVJzPvK/L9Ow4j5B9Q/svAhv
         rrVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Titf8x1fnSDltA5xxQs29GH+bpNslU3vFYKElIQuG6w=;
        b=067d4eHG5goDZd1bzsxG/Cyd6ATMY8lzGMzvLk01alNS5iNMKYqYIPSqxOpWNgZsUp
         mEG621JY+bm0xINHN8Dtox+6OTLtt/f1sVpuOZikE+JXi/UAnI3xBDyFAVfQOhdXTW4e
         d/zBHlPlLBLv4O9rCGBNCy3IQPqRX8RcVtSqZSupLtuszLJn+bLh8meUTPy9N7h25YRq
         2pL7DL3z9IqpEyzEcpeKL0sc2fy+Mw02wGzF8RGputktiMfrnuxP0N+WCjgE4bn3yuOM
         3KQPf36mVMPLuA3AUnqM7IE5lF3WJQX+M74LgeG4F9gwlZB0aQ7GDNCdaoQDYh6/9GQs
         j87Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UhUadZD8;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::82e as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x82e.google.com (mail-qt1-x82e.google.com. [2607:f8b0:4864:20::82e])
        by gmr-mx.google.com with ESMTPS id z94si6898988qtc.0.2021.01.04.15.46.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Jan 2021 15:46:53 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::82e as permitted sender) client-ip=2607:f8b0:4864:20::82e;
Received: by mail-qt1-x82e.google.com with SMTP id v5so19751268qtv.7
        for <clang-built-linux@googlegroups.com>; Mon, 04 Jan 2021 15:46:53 -0800 (PST)
X-Received: by 2002:aed:2e47:: with SMTP id j65mr74442331qtd.231.1609804012936;
        Mon, 04 Jan 2021 15:46:52 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id 195sm38380739qke.108.2021.01.04.15.46.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Jan 2021 15:46:52 -0800 (PST)
Date: Mon, 4 Jan 2021 16:46:51 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Dennis Zhou <dennis@kernel.org>
Cc: Tejun Heo <tj@kernel.org>, Christoph Lameter <cl@linux.com>,
	linux-mm@kvack.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	kernel test robot <lkp@intel.com>
Subject: Re: [PATCH] percpu: fix clang modpost warning in
 pcpu_build_alloc_info()
Message-ID: <20210104234651.GA3548546@ubuntu-m3-large-x86>
References: <20201231212852.3175381-1-dennis@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201231212852.3175381-1-dennis@kernel.org>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=UhUadZD8;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::82e as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Thu, Dec 31, 2020 at 09:28:52PM +0000, Dennis Zhou wrote:
> This is an unusual situation so I thought it best to explain it in a
> separate patch.
> 
> "percpu: reduce the number of cpu distance comparisons" introduces a
> dependency on cpumask helper functions in __init code. This code
> references a struct cpumask annotated __initdata. When the function is
> inlined (gcc), everything is fine, but clang decides not to inline these
> function calls. This causes modpost to warn about an __initdata access
> by a function not annotated with __init [1].
> 
> Ways I thought about fixing it:
> 1. figure out why clang thinks this inlining is too costly.
> 2. create a wrapper function annotated __init (this).
> 3. annotate cpumask with __refdata.
> 
> Ultimately it comes down to if it's worth saving the cpumask memory and
> allowing it to be freed. IIUC, __refdata won't be freed, so option 3 is
> just a little wasteful. 1 is out of my depth, leaving 2. I don't feel
> great about this behavior being dependent on inlining semantics, but
> cpumask helpers are small and probably should be inlined.
> 
> modpost complaint:
>   WARNING: modpost: vmlinux.o(.text+0x735425): Section mismatch in reference from the function cpumask_clear_cpu() to the variable .init.data:pcpu_build_alloc_info.mask
>   The function cpumask_clear_cpu() references
>   the variable __initdata pcpu_build_alloc_info.mask.
>   This is often because cpumask_clear_cpu lacks a __initdata
>   annotation or the annotation of pcpu_build_alloc_info.mask is wrong.
> 
> clang output:
>   mm/percpu.c:2724:5: remark: cpumask_clear_cpu not inlined into pcpu_build_alloc_info because too costly to inline (cost=725, threshold=325) [-Rpass-missed=inline]
> 
> [1] https://lore.kernel.org/linux-mm/202012220454.9F6Bkz9q-lkp@intel.com/
> 
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Dennis Zhou <dennis@kernel.org>
> ---
> This is on top of percpu#for-5.12.
> 
>  mm/percpu.c | 16 ++++++++++++++--
>  1 file changed, 14 insertions(+), 2 deletions(-)
> 
> diff --git a/mm/percpu.c b/mm/percpu.c
> index 80f8f885a990..357977c4cb00 100644
> --- a/mm/percpu.c
> +++ b/mm/percpu.c
> @@ -2642,6 +2642,18 @@ early_param("percpu_alloc", percpu_alloc_setup);
>  
>  /* pcpu_build_alloc_info() is used by both embed and page first chunk */
>  #if defined(BUILD_EMBED_FIRST_CHUNK) || defined(BUILD_PAGE_FIRST_CHUNK)
> +
> +/*
> + * This wrapper is to avoid a warning where cpumask_clear_cpu() is not inlined
> + * when compiling with clang causing modpost to warn about accessing __initdata
> + * from a non __init function.  By doing this, we allow the struct cpumask to be
> + * freed instead of it taking space by annotating with __refdata.
> + */
> +static void __init pcpu_cpumask_clear_cpu(int cpu, struct cpumask *mask)
> +{
> +	cpumask_clear_cpu(cpu, mask);
> +}
> +
>  /**
>   * pcpu_build_alloc_info - build alloc_info considering distances between CPUs
>   * @reserved_size: the size of reserved percpu area in bytes
> @@ -2713,7 +2725,7 @@ static struct pcpu_alloc_info * __init pcpu_build_alloc_info(
>  		cpu = cpumask_first(&mask);
>  		group_map[cpu] = group;
>  		group_cnt[group]++;
> -		cpumask_clear_cpu(cpu, &mask);
> +		pcpu_cpumask_clear_cpu(cpu, &mask);
>  
>  		for_each_cpu(tcpu, &mask) {
>  			if (!cpu_distance_fn ||
> @@ -2721,7 +2733,7 @@ static struct pcpu_alloc_info * __init pcpu_build_alloc_info(
>  			     cpu_distance_fn(tcpu, cpu) == LOCAL_DISTANCE)) {
>  				group_map[tcpu] = group;
>  				group_cnt[group]++;
> -				cpumask_clear_cpu(tcpu, &mask);
> +				pcpu_cpumask_clear_cpu(tcpu, &mask);
>  			}
>  		}
>  	}
> -- 
> 2.29.2.729.g45daf8777d-goog
> 

Hi Dennis,

I did a bisect of the problematic config against defconfig and it points
out that CONFIG_GCOV_PROFILE_ALL is in the bad config but not the good
config, which makes some sense as that will mess with clang's inlining
heuristics. It does not appear to be the single config that makes a
difference but it gives some clarity.

I do not personally have any strong opinions around the patch but is it
really that much wasted memory to just annotate mask with __refdata?

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210104234651.GA3548546%40ubuntu-m3-large-x86.
