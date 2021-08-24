Return-Path: <clang-built-linux+bncBCS7XUWOUULBB5N7SGEQMGQEC25E66Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8182F3F55FC
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Aug 2021 04:56:55 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id f8-20020a2585480000b02905937897e3dasf18552824ybn.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 19:56:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629773813; cv=pass;
        d=google.com; s=arc-20160816;
        b=m7Y56jXXMGKPBIfBGt3baT3oqQstK8S6UE7fC/S8otq8zpS5zn1vVBpTRxFUUWi3Pz
         wPrP0zyBq6gOjLAoTHSxhnOa5nspTlSof3cZFZxYG9yiOu1Ti8Dyl3JZbEsTFufEp3e0
         g3vpwJJQHmd4MO2Qzf8jCcWUX2bC+UBdoF1kQ0M9ojWWJW0oR0DofRNkp/gcoOu9A7GQ
         6Qrw/Ystlx6E4TkMRrdXh+h7lBFwV76zIeJ/3lbg9f4+c8buzozUvIMNBeIMGzMG0xX9
         Q7S5/v/9yooJe4w6w7C5Voo4l6APMAEamfvsnX4bglm6Dt4B5w9Hpd7GUviDvTPiRJi4
         w4rQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=HzIG70BE2CKKItwQeHSTbujwTrliTrd47ZJkocv7uCU=;
        b=x3/N2hGlHxtJNo2w5+5h4WvNjyMKX9GJxU77p8DSXK6O9jzTyFRLIjITaPhUdcY3Qp
         ARkiwccN5w9uiIKxBV9FyYD3IAJ6uRfSH1vs/FSkvrht7XaQhdMHwpTGrWnhyVif6vIB
         wyr7E67yelAcBXrtx/6qRBQqyBQQDTOF40fPIUQ3HmeVst4ws8H+VgCiZJAx0y/2iwho
         TQu/jBLth5ohtISZzGDfFovVdhqp04oMGsSX3g0HX46pOowD9uvShcomT3ML1TcUtnrY
         lQcItSiQUamEulXAAklMudh91VyzlCfZ46Q+Zn1kuWJi6fWab2zMkWqFh0F5ECYSuvdO
         eWqQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GDUCXaro;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1029 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=HzIG70BE2CKKItwQeHSTbujwTrliTrd47ZJkocv7uCU=;
        b=Z+qYa2BUd7ecgDCBEuy5Feaf3Av2uFT4/cOEvKlcpFKRS4c9A92WbT9g7hbHfKKNC/
         AGRPrGkZvqLxTLSErwKqXvSnIVnrUkjrTz12rwiFupcU18IWfYJbWbKJSmgIMIbi7LPG
         I2y/cjVJh3DTCgfx/2UEDAOd1iGSjW7O6BexfY83PlXUlsWtlKQX9EERF7LgHz0LN/hG
         m5CD2AdqBYgbkY/xH1CiQwrJic1VPLVgynpDRAl3PzrnXqXyU1HFGOw0v2qFyDTyYauY
         8qdyhouMZfMX7pAVzW0ts1YxcP4Nb0UI2v7i106AeX2XfL6u/fLkaNcIK8vU7PUqB7bs
         4ifw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HzIG70BE2CKKItwQeHSTbujwTrliTrd47ZJkocv7uCU=;
        b=Rl67Z08nch9b+S/lC0Iy6aH3qR5ADUVoim9CYwYnlOEqnkTK1s3ES8hkYa4DSKNiXD
         ZpPhFZ83i0iXlAyqZ0jkkoYhWLc6JP2M3G0P4CgYG/XEe44QNp/uU9vB2YABXBTfLEbJ
         8YtPEojsnk6wl/K8yIbNC0JTHg3rusz1HX7JHleOC2D6G7GoJCIV6E/4AOUR0cvfARS5
         6y5xg7mVo8jbQlq3snMEwpQYAbLhIOKSUiyY5PihzcYhuIjfeVFdAO8NFtVnWsigUwfl
         ZPIkMmUE2cKPhZ/k5YdtT/VhGiGC55exYCt6JkSPYmFRVBTbFROcLltfeM02zT3DEl9b
         VWzg==
X-Gm-Message-State: AOAM533WirxoR2Zc/PP7mrUeiBzRyitp0mh/rjrgd2WT1EXj3exaC4wV
	+kyPxvDavtWQkHd7wdVWjxM=
X-Google-Smtp-Source: ABdhPJyPJ2yudtTS/mP404YTC0DZpmNXLtcndZes5QzcHjrp3pqdOMydEgNWcfawyu09BDsJkEnbdQ==
X-Received: by 2002:a25:c550:: with SMTP id v77mr8180085ybe.145.1629773813586;
        Mon, 23 Aug 2021 19:56:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:6e04:: with SMTP id j4ls1120700ybc.7.gmail; Mon, 23 Aug
 2021 19:56:53 -0700 (PDT)
X-Received: by 2002:a25:4907:: with SMTP id w7mr47161540yba.393.1629773812997;
        Mon, 23 Aug 2021 19:56:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629773812; cv=none;
        d=google.com; s=arc-20160816;
        b=wDDGMWC5TRicTK2vY+SWCiT7dJKGsatAxouOIjXickn+M8hPCv4E5QwxJxDyMkhTY5
         1N8bZuGd5WrOSAVtpRS7ljVQ2Pl2NvVuHIoC/ovCMynOSn9n4WyABy3N+Vpw6Ou01oig
         hq1rdNJqGBPrDqN1vNv63kqDXOUw2zrhhtpKRjw29YZfbjQdzuVFBXvSX0qqyr/l8K+N
         ZRm8o/IoCT6SizFsPbJmZmwUP7o2cR1OO+uyGRfvaz5KEP0B37EiTEWaw5n5PJzVVzUF
         Ecp6OowSl3gt9LttoFcgtGgPWqJvAepDhtsLGrXHr+e/1c50m0sOzx9NG2CXrSikJe3d
         NGlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=29Fb0DQb3lLM1RT0ONfW5Rl3roBtF0uhGZi6Clr4PQ8=;
        b=tZiTDd17CM7v+Qi3PK4umQP7bw4MotSDQwRXlyyG7uQMsZ1eFZZzQDTveHyMwIPugA
         MOVg0nXnpA0YHLqSzPBvHltEckshmoSe5Ci/v7HBoiGAUs0OvCfDKFG3cCu95WsEg1iR
         uuoCFzCAD53Ql0nis5opN8Wz0EiGGev7P04N0HxnnSKuqHRoxnBpP+pgrzVbU5ZsJWKa
         BFyVLMJTmPX0L4WiOp2gPflR8dGckAIJAhwcLySnoNQ9LjQVp+jHYgCQK8UUV6yUIggc
         2P5NHJ8+nZf4DMgowqJSvWvtDWixuaS3FLhvuY8txG6T6EjhgC+0LN/nPrjSKK17QvIc
         RfkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GDUCXaro;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1029 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com. [2607:f8b0:4864:20::1029])
        by gmr-mx.google.com with ESMTPS id x7si673271ybf.3.2021.08.23.19.56.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Aug 2021 19:56:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1029 as permitted sender) client-ip=2607:f8b0:4864:20::1029;
Received: by mail-pj1-x1029.google.com with SMTP id j4-20020a17090a734400b0018f6dd1ec97so1340139pjs.3
        for <clang-built-linux@googlegroups.com>; Mon, 23 Aug 2021 19:56:52 -0700 (PDT)
X-Received: by 2002:a17:903:310a:b0:133:9bb6:98bd with SMTP id w10-20020a170903310a00b001339bb698bdmr9300777plc.19.1629773812408;
        Mon, 23 Aug 2021 19:56:52 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:200:196f:5297:b0e8:1313])
        by smtp.gmail.com with ESMTPSA id y12sm18770264pgl.65.2021.08.23.19.56.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Aug 2021 19:56:51 -0700 (PDT)
Date: Mon, 23 Aug 2021 19:56:47 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>, x86@kernel.org,
	Masahiro Yamada <masahiroy@kernel.org>,
	"H. Peter Anvin" <hpa@zytor.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org, linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com, llvm@lists.linux.dev,
	kernel test robot <lkp@intel.com>
Subject: Re: [PATCH 1/2] x86: Do not add -falign flags unconditionally for
 clang
Message-ID: <20210824025647.tssnp7qtccbgvdq7@google.com>
References: <20210824022640.2170859-1-nathan@kernel.org>
 <20210824022640.2170859-2-nathan@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20210824022640.2170859-2-nathan@kernel.org>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=GDUCXaro;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1029
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

On 2021-08-23, Nathan Chancellor wrote:
>clang does not support -falign-jumps and only recently gained support
>for -falign-loops. When one of the configuration options that adds these
>flags is enabled, clang warns and all cc-{disable-warning,option} that
>follow fail because -Werror gets added to test for the presence of this
>warning:

[I implemented clang -falign-loops :) It doesn't affect LTO, though.
LTO ld.lld may use -Wl,-mllvm,-align-loops=32 for now.  ]

>clang-14: warning: optimization flag '-falign-jumps=0' is not supported
>[-Wignored-optimization-argument]

grub made a similar mistake:) It thought the availability of -falign-X
implies the availability of other -falign-*
https://lists.gnu.org/archive/html/grub-devel/2021-08/msg00076.html

>To resolve this, add a couple of cc-option calls when building with
>clang; gcc has supported these options since 3.2 so there is no point in
>testing for their support. -falign-functions was implemented in clang-7,
>-falign-loops was implemented in clang-14, and -falign-jumps has not
>been implemented yet.
>
>Link: https://lore.kernel.org/r/YSQE2f5teuvKLkON@Ryzen-9-3900X.localdomain/
>Reported-by: kernel test robot <lkp@intel.com>
>Signed-off-by: Nathan Chancellor <nathan@kernel.org>
>---
> arch/x86/Makefile_32.cpu | 12 +++++++++---
> 1 file changed, 9 insertions(+), 3 deletions(-)
>
>diff --git a/arch/x86/Makefile_32.cpu b/arch/x86/Makefile_32.cpu
>index cd3056759880..e8c65f990afd 100644
>--- a/arch/x86/Makefile_32.cpu
>+++ b/arch/x86/Makefile_32.cpu
>@@ -10,6 +10,12 @@ else
> tune		= $(call cc-option,-mcpu=$(1),$(2))
> endif
>
>+ifdef CONFIG_CC_IS_CLANG
>+align		:= -falign-functions=0 $(call cc-option,-falign-jumps=0) $(call cc-option,-falign-loops=0)
>+else
>+align		:= -falign-functions=0 -falign-jumps=0 -falign-loops=0
>+endif
>+
> cflags-$(CONFIG_M486SX)		+= -march=i486
> cflags-$(CONFIG_M486)		+= -march=i486
> cflags-$(CONFIG_M586)		+= -march=i586
>@@ -25,11 +31,11 @@ cflags-$(CONFIG_MK6)		+= -march=k6
> # They make zero difference whatsosever to performance at this time.
> cflags-$(CONFIG_MK7)		+= -march=athlon
> cflags-$(CONFIG_MK8)		+= $(call cc-option,-march=k8,-march=athlon)
>-cflags-$(CONFIG_MCRUSOE)	+= -march=i686 -falign-functions=0 -falign-jumps=0 -falign-loops=0
>-cflags-$(CONFIG_MEFFICEON)	+= -march=i686 $(call tune,pentium3) -falign-functions=0 -falign-jumps=0 -falign-loops=0
>+cflags-$(CONFIG_MCRUSOE)	+= -march=i686 $(align)
>+cflags-$(CONFIG_MEFFICEON)	+= -march=i686 $(call tune,pentium3) $(align)
> cflags-$(CONFIG_MWINCHIPC6)	+= $(call cc-option,-march=winchip-c6,-march=i586)
> cflags-$(CONFIG_MWINCHIP3D)	+= $(call cc-option,-march=winchip2,-march=i586)
>-cflags-$(CONFIG_MCYRIXIII)	+= $(call cc-option,-march=c3,-march=i486) -falign-functions=0 -falign-jumps=0 -falign-loops=0
>+cflags-$(CONFIG_MCYRIXIII)	+= $(call cc-option,-march=c3,-march=i486) $(align)
> cflags-$(CONFIG_MVIAC3_2)	+= $(call cc-option,-march=c3-2,-march=i686)
> cflags-$(CONFIG_MVIAC7)		+= -march=i686
> cflags-$(CONFIG_MCORE2)		+= -march=i686 $(call tune,core2)
>-- 
>2.33.0

https://gcc.gnu.org/onlinedocs/gcc/Optimize-Options.html says
"If n is not specified or is zero, use a machine-dependent default."

Unless some other files specify -falign-loops=N and expect 0 to reset to
the machine default, -falign-jumps=0 -falign-loops=0 -falign-functions=0 should just be dropped.

BTW: I believe GCC 8 (likely when fixing another issue with a large refactor
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=84100) introduced a bug
that -falign-X=0 was essentially -falign-X=1.
GCC 11.0 (https://gcc.gnu.org/bugzilla/show_bug.cgi?id=96247) fixed the bug.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210824025647.tssnp7qtccbgvdq7%40google.com.
