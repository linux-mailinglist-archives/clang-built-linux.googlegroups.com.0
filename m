Return-Path: <clang-built-linux+bncBCLMHO6ARMORBL6N6HZQKGQEZDNVGHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id CDAA8193AC3
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 09:24:16 +0100 (CET)
Received: by mail-pj1-x1039.google.com with SMTP id d9sf3719851pjs.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 01:24:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585211055; cv=pass;
        d=google.com; s=arc-20160816;
        b=x/yen+JxMYAnO23VrrkFgH8Wh4Ldd+Zeq7hkN8TGw0f6h3zLeetKOqmbiRXDMp2m97
         jjGAfm1iqj9VRmX6Ke+QmUq+ytRJt4C4ycvFFl8pjmVTCUuERfLdWSaY4XzfM35632wp
         HKqxLt2BqWM//LCutBWcQ4ER/oTyQlIcbRHWPXU2blCU/c5iGWsoVAdAzi5yHDQKJBKf
         5c6nDmrEIO4+smPVoTuRUOaf4z8vVeuJVTEBhrW5jHc+BjhKfgvnzMG6nrukJLCwRpN1
         Fp7Y3QhgjrwspwRVBLGDnoVoirBNGjkEaBpccLNr7bMivSgWyUZV9Q85owB4ju47SZBy
         zp7w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:organization:in-reply-to:subject:cc:to:from:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=4SzuwqW3iXTs0aE7iYYN4+xifrQqDHY0ht8XIZE1U9Q=;
        b=YqpTGPL7SqjtGOcimZACN0hFHgsIeT4sD/Kgg2n1w716mWDoM4xjcjuoDd1kV0pKbJ
         4HutvpQ92LjuuwN0NsjsE05UbP+yq+/XDA7Waz21fqf4PTQWsjcAXwZG4usZm4ws7V8q
         yNWeXMU3Zp7OVyn5GfDJsWtfIUhQZWk3GElehXj0wME1B1aI34zdKb4Ejt0jEyd1qmvN
         6Pxiq2Jdbf/gMGz2gXX3mrA8T0PdEIyP25Nx7SNT1X4uCZKZ1yAXLhzVmqYAfGiwkAr7
         K7FiLuOeUqdt3huHXMFu5Lxj8LS7AIu4MWUOhd/PwkUKxZw6MXw8n2sQ/otneKMIvFOz
         BZHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jani.nikula@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=jani.nikula@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:from:to:cc:subject:in-reply-to
         :organization:references:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4SzuwqW3iXTs0aE7iYYN4+xifrQqDHY0ht8XIZE1U9Q=;
        b=k92hCHvqU94/hU/E9uDYY1pqc325IrgtjPx66d1t/sx8Ad/KP1qWDGf49ee7Sbin2K
         tnQth27YuCacmpaV6b4RQGm2+Ugh50KUaxso3beKwYvkdmV4gAuiAy5TlGYtA8tjoXin
         dUqP4aAkkDYQGizGeDDlgnLv3l3O8fq0ievConU550jQGAhQYEbip5ZOZLssPkSyN+bZ
         yyqUp1IFv4Nw0MjQywQTxdA3mDHHRgzWYbItRZ1IXIDoiHUQjINiWQuJ/r7MHXX9Dasp
         zwvydyZWIkOqqysM78UgF3lGvpD+TonHPxrwiXfzwNA8BusdJFxM0kcImsLNnik8bfy8
         +Niw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:from:to:cc
         :subject:in-reply-to:organization:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4SzuwqW3iXTs0aE7iYYN4+xifrQqDHY0ht8XIZE1U9Q=;
        b=ON/UepA49vVZvO/g5Iqi6ifGu4Aewq5xFX4zznW+j1iY50FJ+TRN8R+if3/C6bAZfY
         No+xlNW6LRTncRxwBHlXJmj/0lvs19sfiPxJOYEqcjwsrekuAE7a3F2Lv5fP5lDE71yx
         WxEWhoc9Esk3bxkemlHMJTpCRQt7Ai1HRN5RF3T2AkSmHlSHyPIURQb4pIZvXzTRWmaP
         psL8QI58XRQMEWVFw4GD7jGGn1ripdILHrvRQU9sK4Lw7wsAr4JXz00kMIJ9LqKwiSPr
         AbQd1aJYdYFz8myr/jUoCCQnOi0uUKunrsNH39b19GMjK9YEbf4wi4xHlMX06hm13UH0
         g5qg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3Vv6HQdwfxUQ8xNtsmanoW8EnzJGLg8HbhhFAErtzwJuXK40L/
	TcpnQzGYDO/16jFuBkJzHsE=
X-Google-Smtp-Source: ADFU+vtnzu8ldbFSJXrg/h5JN85csgbZS0LLIuZLnHT8eXa+4v1J11sTgl7jMveu7FfMJE91eBQTSA==
X-Received: by 2002:a17:90a:af81:: with SMTP id w1mr1888365pjq.14.1585211055293;
        Thu, 26 Mar 2020 01:24:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b58e:: with SMTP id a14ls3637441pls.5.gmail; Thu, 26
 Mar 2020 01:24:14 -0700 (PDT)
X-Received: by 2002:a17:90a:582:: with SMTP id i2mr1884187pji.51.1585211054826;
        Thu, 26 Mar 2020 01:24:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585211054; cv=none;
        d=google.com; s=arc-20160816;
        b=umeYKFuM8J2tQFeP7BvJ4QL3V/sLWjK7XgU7RamMY0i5F9glW1pSj26CKcrAr/dRYd
         way0Uy8BxEZnk+R6dEuobd4TU3IM35wGGDFPtiz+rSu4/lDP+deHjdm5Q2QBu1rvp3i0
         hbM0c2b1pDiLe3bTEuDf3byhmvqMkNlpVeyE8wjrqkHBLjWVrkCefe2cCr0Z3PP0/X0T
         RZFvUT4VhTNDnU62S9LU/JzJhPLdjxkpybZut7qPQ3IYtaufFvler2+r9evnHqEPU0n7
         54hfWPw0vp7MFOyWDgtkmrb1nFrwdJuyHJVw6VoY7Dhs/OdhL89nudYNljGOOcu+f+PS
         XmNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:organization:in-reply-to
         :subject:cc:to:from:ironport-sdr:ironport-sdr;
        bh=0psL/Uyx0c8pK8RMp92e2//MyVVHzdjXbgVEB9DBXdE=;
        b=BRWJLysn2HnHS9ShB6JVO9oK+TGUacAsxHCTOHSIhR6bWuf01QR+GMxaQDwE3PA7DH
         dXjf3v3zf6ZYcFcB16MRFncnZWqghKvi3+D9ohcBQ3hqVTpXZy4QoNy2ntCEKU8ex5wJ
         NiV+LHl2CZ2oMI7S6NQ0baPU44TydEY1xmWXd3O2THJQCad+Y6d+MhWQvl1Ut03PXJHc
         GtL4qnCJjCZaKjGiFWe25LMbYudxbrTOJ7JyCAwXn6sgnxIqfYsQg5Ar6CTPfQh/2hHM
         5utdPGUBrziR+43aUIs8cQbVuBPB8KT+iN8HGu9lrO1+CMkOQcItMdi/n6nSeAtQovEl
         nlEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jani.nikula@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=jani.nikula@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id c16si107398pgw.4.2020.03.26.01.24.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2020 01:24:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of jani.nikula@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: nFFNisQdIAI74v0uQlr4/uNLvRjuQS+9o/T7Y6W6+DVc+MxRxNvXZs8cbIkzbIfT/qwy+eZqlm
 qOsm/kfmUiuA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Mar 2020 01:24:14 -0700
IronPort-SDR: 5SWx7LobP7Xk7vAZTAJX2qluD5fcl2KfCQrXaLbWi5S2WCQNBYGo4s5/hFX18gOYhnHfbYeuqC
 pMs/3FbeTOdQ==
X-IronPort-AV: E=Sophos;i="5.72,307,1580803200"; 
   d="scan'208";a="393901243"
Received: from mschuste-mobl3.ger.corp.intel.com (HELO localhost) ([10.252.32.130])
  by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Mar 2020 01:24:07 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Masahiro Yamada <masahiroy@kernel.org>, linux-kbuild@vger.kernel.org
Cc: Thomas Gleixner <tglx@linutronix.de>, Nick Desaulniers <ndesaulniers@google.com>, Borislav Petkov <bp@alien8.de>, Peter Zijlstra <peterz@infradead.org>, "H . Peter Anvin" <hpa@zytor.com>, x86@kernel.org, "Jason A . Donenfeld" <Jason@zx2c4.com>, clang-built-linux@googlegroups.com, Masahiro Yamada <masahiroy@kernel.org>, Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 09/16] drm/i915: remove always-defined CONFIG_AS_MOVNTDQA
In-Reply-To: <20200326080104.27286-10-masahiroy@kernel.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200326080104.27286-1-masahiroy@kernel.org> <20200326080104.27286-10-masahiroy@kernel.org>
Date: Thu, 26 Mar 2020 10:24:04 +0200
Message-ID: <87ftdvikwr.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jani.nikula@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jani.nikula@intel.com designates 192.55.52.88 as
 permitted sender) smtp.mailfrom=jani.nikula@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

On Thu, 26 Mar 2020, Masahiro Yamada <masahiroy@kernel.org> wrote:
> CONFIG_AS_MOVNTDQA was introduced by commit 0b1de5d58e19 ("drm/i915:
> Use SSE4.1 movntdqa to accelerate reads from WC memory").
>
> We raise the minimal supported binutils version from time to time.
> The last bump was commit 1fb12b35e5ff ("kbuild: Raise the minimum
> required binutils version to 2.21").
>
> I confirmed the code in $(call as-instr,...) can be assembled by the
> binutils 2.21 assembler and also by LLVM integrated assembler.
>
> Remove CONFIG_AS_MOVNTDQA, which is always defined.
>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

Ack for merging this via whichever tree you see fit; please let me know
if you want me to pick this up via drm-intel.

BR,
Jani.


> ---
>
> Changes in v2: None
>
>  drivers/gpu/drm/i915/Makefile      | 3 ---
>  drivers/gpu/drm/i915/i915_memcpy.c | 5 -----
>  2 files changed, 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index a1f2411aa21b..e559e53fc634 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -28,9 +28,6 @@ subdir-ccflags-$(CONFIG_DRM_I915_WERROR) += -Werror
>  CFLAGS_i915_pci.o = $(call cc-disable-warning, override-init)
>  CFLAGS_display/intel_fbdev.o = $(call cc-disable-warning, override-init)
>  
> -subdir-ccflags-y += \
> -	$(call as-instr,movntdqa (%eax)$(comma)%xmm0,-DCONFIG_AS_MOVNTDQA)
> -
>  subdir-ccflags-y += -I$(srctree)/$(src)
>  
>  # Please keep these build lists sorted!
> diff --git a/drivers/gpu/drm/i915/i915_memcpy.c b/drivers/gpu/drm/i915/i915_memcpy.c
> index fdd550405fd3..7b3b83bd5ab8 100644
> --- a/drivers/gpu/drm/i915/i915_memcpy.c
> +++ b/drivers/gpu/drm/i915/i915_memcpy.c
> @@ -35,7 +35,6 @@
>  
>  static DEFINE_STATIC_KEY_FALSE(has_movntdqa);
>  
> -#ifdef CONFIG_AS_MOVNTDQA
>  static void __memcpy_ntdqa(void *dst, const void *src, unsigned long len)
>  {
>  	kernel_fpu_begin();
> @@ -93,10 +92,6 @@ static void __memcpy_ntdqu(void *dst, const void *src, unsigned long len)
>  
>  	kernel_fpu_end();
>  }
> -#else
> -static void __memcpy_ntdqa(void *dst, const void *src, unsigned long len) {}
> -static void __memcpy_ntdqu(void *dst, const void *src, unsigned long len) {}
> -#endif
>  
>  /**
>   * i915_memcpy_from_wc: perform an accelerated *aligned* read from WC

-- 
Jani Nikula, Intel Open Source Graphics Center

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87ftdvikwr.fsf%40intel.com.
