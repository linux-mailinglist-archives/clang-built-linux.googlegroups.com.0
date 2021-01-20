Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBPNKUKAAMGQEGNDAHEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CAB72FDAFB
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 21:40:30 +0100 (CET)
Received: by mail-ot1-x337.google.com with SMTP id z51sf19602221otb.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 12:40:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611175229; cv=pass;
        d=google.com; s=arc-20160816;
        b=zQGAm82+BXJHG0iqCz2qnnwDo0u+neJdi2R/WFpdd5U56ZxUebRA7syZVd4qa6PvJ8
         NDKIsBFI/Xa36RDDCp/sBs13G7D36oCrHt0hyVDyH7EoTVEKkDwfPn65pNy+OOf1yPsJ
         BP5dpwKkkfwSTdtA1rbwy0v/J6ykdXqUW9BYmbxI5d5bzc4VsRnJcsiTBQG0qSHz4KE9
         gGieJBAGjeKy2q9l/bYy5vuuizRRovs1Nmv7n2m8AxxcEGoYsB4u+Qf53Iwtr2n4eGOq
         dkVU20zj4byW7I9jnHFi+qpZRSIvpaF4EqWPtWdJe66UlUounCq9TOTbSNOL9fMpeMu9
         fTWg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=XL05punr9QTGB0vNgEeREQRcYGMlvcRHE+hGCQiXq+8=;
        b=li9CH1zbFiS9hzckmXYvyDMgiAbAkAXuf3T3ZOui4wl0MedfW/dFMJJ9O7+ojZ4det
         dTKx6ftLflkYb8uawVJg0QLs1vbhJ3pU1PJxEtvO05L5fU/P0KY1+2C89JzNNVK+63f9
         p3FozhgywR+28OwdnXiTSR5CwBK/aoqGwcnMd3JVgmPG5WuCKr8LDr1bqDkylfuLgyFV
         pBG068j2rNKkeq99Bm/vyOkqdjWjcN2LiHe8IpTKwiPUN7ctglpvxLGlX/ElygaXWKhe
         4TTgIB7wrz8fWsheKmLuioIEYsxmbZCeuPyqm/fDgvb+gTjjwR+8dv3DbjBe2WuWFNIN
         s50w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kekq3VqX;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::732 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XL05punr9QTGB0vNgEeREQRcYGMlvcRHE+hGCQiXq+8=;
        b=NYwdd/m+StZWt2EVHyqYCDZCGt4zFTv3luIsVyavVs21JoZ5k2ArnB0LaeiBYw2ERA
         r5qq94qZy8Gy7SUzE7XtLrp+XHNsLdF+bCf8bDIVgNS8WQYcXuw2d0xUydEKPXnWJydQ
         joBtHU879xIgaI8z3bvaQuShR2vgDztzvNVy87ApvY6P4OHwu/krcJngfxVYZV1cKRMF
         /Ffh9qMLjaMVJWTJK9h8TVoFH8YbCkjORYcbGIXNYzl/TfSm/7C6o0c1Rj72tmvSGrdM
         J1LUkz9+m61UwF2Qi21iXiMpn3O2pH7QBWD35v5lBNpunIr6ELvnS0Pg5lHpax7mrRIE
         8Hig==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XL05punr9QTGB0vNgEeREQRcYGMlvcRHE+hGCQiXq+8=;
        b=CCtxB5QmPXbiSzRWjtEtYECR95GO29cEJqdiI/d6MK8EF/6oriWxRrTrMlcm8pVTut
         qmsG3Igbidi93jEut8veqvLSasmL3NGyxhY7Jznpr/EH2Qshn9gNmZzlrqCx+ZgOxdKq
         546QDFXen/yDHFosS/XxLHmKovo4S4lyo7eX2/NihxWhqms2yCDZOQVRHKoIVzCkYTlo
         kAt7mNqTf1dHrGb+mH7oPj5jAANnWP7Zhqh/8VeUdn0kPnjp3qSiBwFEj3dmgeqWM6al
         AY9IgTLXuanwGzNCw8a5BQfHuUscA3X33zqudCAC2zHKlVBBuA9pgpCEkab+DWKWqbG4
         wSfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=XL05punr9QTGB0vNgEeREQRcYGMlvcRHE+hGCQiXq+8=;
        b=Qz+cO04Ij8Depifj3c4VORq/YwbL8ixrLDZ5efnTRyo8WwnCJE0trV9S8PuqYaYAnm
         B3B1qWcpyR33UDw40P9q1vZDJicxV7ezRELZbEVpLkliCDXuGYwORo4j9EzrC3kloJeg
         YzNvDTK4yWsk7VTWJDXq7AkTOkYIFb/kbZf6Z77YdKf8Kzw8cqVABC07QpvlyAvZui9G
         FDqjD/SfeVXlx3KXLpJyy4YQV6rtREvZiCYc9qjJlAW0YSvvHS53FZd1oIy2o4AD+qXR
         M6gw2bYLAdreFjXvCah38RgKazE/Q65Q1QvjF4/3NQRhoVKwCrP0JCjeT1Xk+7snI6eS
         Bdsw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531gmMH6/zt3LkOlIuxvPaEzGY4ETEUwz1chG5fKqmNJCSHqLz2M
	Ei4QIvBlIxloq58nr87bTg4=
X-Google-Smtp-Source: ABdhPJxJ5XJ1rK5AgDh0id2sAtrBUvH+O54Su6q6z3M/AW6ZdRb9AUuDo9HeS89BgSNwrQcpCMV79A==
X-Received: by 2002:aca:5185:: with SMTP id f127mr1051731oib.18.1611175229289;
        Wed, 20 Jan 2021 12:40:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1f0d:: with SMTP id u13ls3537035otg.8.gmail; Wed,
 20 Jan 2021 12:40:28 -0800 (PST)
X-Received: by 2002:a9d:d52:: with SMTP id 76mr8139852oti.67.1611175228904;
        Wed, 20 Jan 2021 12:40:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611175228; cv=none;
        d=google.com; s=arc-20160816;
        b=01MvZzARAdohOPXj/q62HJrt1JqgHaeJSRtEAorWBlRUA3G4acIatdE4TBpyWWYhQE
         ILMbGDhQCjonB5osX26nJMxTal5Ni0tkbSNT1Bv4PBU3+CcU4qhYP7t9UGluQRur/3Jf
         nF6ns2dpIbkXr+tBQxKa8aH/GRXp3nBYHbLBD5p5Jgc04Yhy++/6jAtZN6cv8uki6pTk
         iniL7WpJotrYMYHlUlqVj2qpurEWXSkqoXXeE9VMFzstPTch8KAYx0my40P4EFTk5tn/
         8uSWb1E4WtODZnsOcZ90JTrRJxCh4NDwpqNmMPslcfkSRarYx/SISd6e5RxqDjm8NLwP
         1c3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=gxB8AfTLt5DLjXBLjHmtRDYzaevCzykdpksY10jMx9U=;
        b=g9+K73KbAXh2Th/P3Q8fLWSoCtqysLaSmipStcp8L3RtDgdoShel2bSvMZD9CHcynb
         VRW5USc+ZT6x33qMG2bFVtYycriSlDt21FhaEYx8jvRcAnobesElVPS21TtIpSr6HfRf
         old3LDiBJMjV5HHoOSe1yHXMPCT5Jd34xvMCi1XNUorsAJxUTHsC8mtoboqAnNphJaOG
         YvxtHhZZJcITRyjL5BumAi6APFg4G2zV/05L0+oHEqkfkV/V8Oiozje8WMNw1/MV2SOu
         diGhV2aJDwX0oX5GmO3WeCRKEQ5fkgZMrxID/DIJYnRiLN7TujBcnS5qXOMwgTVtDFzy
         FspQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kekq3VqX;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::732 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x732.google.com (mail-qk1-x732.google.com. [2607:f8b0:4864:20::732])
        by gmr-mx.google.com with ESMTPS id r8si260018otp.4.2021.01.20.12.40.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Jan 2021 12:40:28 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::732 as permitted sender) client-ip=2607:f8b0:4864:20::732;
Received: by mail-qk1-x732.google.com with SMTP id 19so3297134qkh.3
        for <clang-built-linux@googlegroups.com>; Wed, 20 Jan 2021 12:40:28 -0800 (PST)
X-Received: by 2002:a05:620a:5aa:: with SMTP id q10mr2266894qkq.103.1611175228532;
        Wed, 20 Jan 2021 12:40:28 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id u63sm2151266qkc.115.2021.01.20.12.40.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Jan 2021 12:40:27 -0800 (PST)
Date: Wed, 20 Jan 2021 13:40:25 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Sedat Dilek <sedat.dilek@gmail.com>, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org,
	linux-arch@vger.kernel.org, Jakub Jelinek <jakub@redhat.com>,
	Fangrui Song <maskray@google.com>,
	Caroline Tice <cmtice@google.com>, Nick Clifton <nickc@redhat.com>,
	Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>,
	Andrii Nakryiko <andrii@kernel.org>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>
Subject: Re: [PATCH v5 2/3] Kbuild: make DWARF version a choice
Message-ID: <20210120204025.GA548985@ubuntu-m3-large-x86>
References: <20210115210616.404156-1-ndesaulniers@google.com>
 <20210115210616.404156-3-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210115210616.404156-3-ndesaulniers@google.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=kekq3VqX;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::732 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, Jan 15, 2021 at 01:06:15PM -0800, Nick Desaulniers wrote:
> Modifies CONFIG_DEBUG_INFO_DWARF4 to be a member of a choice. Adds an
> explicit CONFIG_DEBUG_INFO_DWARF2, which is the default. Does so in a
> way that's forward compatible with existing configs, and makes adding
> future versions more straightforward.
> 
> Suggested-by: Arvind Sankar <nivedita@alum.mit.edu>
> Suggested-by: Fangrui Song <maskray@google.com>
> Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  Makefile          | 13 ++++++-------
>  lib/Kconfig.debug | 21 ++++++++++++++++-----
>  2 files changed, 22 insertions(+), 12 deletions(-)
> 
> diff --git a/Makefile b/Makefile
> index d49c3f39ceb4..4eb3bf7ee974 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -826,13 +826,12 @@ else
>  DEBUG_CFLAGS	+= -g
>  endif
>  
> -ifneq ($(LLVM_IAS),1)
> -KBUILD_AFLAGS	+= -Wa,-gdwarf-2
> -endif

Aren't you regressing this with this patch? Why is the hunk from 3/3
that adds

ifdef CONFIG_CC_IS_CLANG
ifneq ($(LLVM_IAS),1)

not in this patch?

> -ifdef CONFIG_DEBUG_INFO_DWARF4
> -DEBUG_CFLAGS	+= -gdwarf-4
> -endif
> +dwarf-version-$(CONFIG_DEBUG_INFO_DWARF2) := 2
> +dwarf-version-$(CONFIG_DEBUG_INFO_DWARF4) := 4
> +DEBUG_CFLAGS	+= -gdwarf-$(dwarf-version-y)
> +# Binutils 2.35+ required for -gdwarf-4+ support.
> +dwarf-aflag	:= $(call as-option,-Wa$(comma)-gdwarf-$(dwarf-version-y))
> +KBUILD_AFLAGS	+= $(dwarf-aflag)
>  
>  ifdef CONFIG_DEBUG_INFO_REDUCED
>  DEBUG_CFLAGS	+= $(call cc-option, -femit-struct-debug-baseonly) \
> diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> index dd7d8d35b2a5..e80770fac4f0 100644
> --- a/lib/Kconfig.debug
> +++ b/lib/Kconfig.debug
> @@ -256,13 +256,24 @@ config DEBUG_INFO_SPLIT
>  	  to know about the .dwo files and include them.
>  	  Incompatible with older versions of ccache.
>  
> +choice
> +	prompt "DWARF version"
> +	help
> +	  Which version of DWARF debug info to emit.
> +
> +config DEBUG_INFO_DWARF2
> +	bool "Generate DWARF Version 2 debuginfo"
> +	help
> +	  Generate DWARF v2 debug info.
> +
>  config DEBUG_INFO_DWARF4
> -	bool "Generate dwarf4 debuginfo"
> +	bool "Generate DWARF Version 4 debuginfo"
>  	help
> -	  Generate dwarf4 debug info. This requires recent versions
> -	  of gcc and gdb. It makes the debug information larger.
> -	  But it significantly improves the success of resolving
> -	  variables in gdb on optimized code.
> +	  Generate DWARF v4 debug info. This requires gcc 4.5+ and gdb 7.0+.
> +	  It makes the debug information larger, but it significantly
> +	  improves the success of resolving variables in gdb on optimized code.
> +
> +endchoice # "DWARF version"
>  
>  config DEBUG_INFO_BTF
>  	bool "Generate BTF typeinfo"
> -- 
> 2.30.0.284.gd98b1dd5eaa7-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210120204025.GA548985%40ubuntu-m3-large-x86.
