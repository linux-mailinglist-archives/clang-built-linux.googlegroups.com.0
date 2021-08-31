Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBY6QXGEQMGQEFN7ZQDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CE4C3FCC66
	for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 19:35:40 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id l24-20020ac84a98000000b00298c09593afsf112298qtq.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 10:35:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630431332; cv=pass;
        d=google.com; s=arc-20160816;
        b=G9ZRNpTLSqtBpGT+95FS6+TjH019Dv5a5AW+8pgyUEgKd6ZRlXmpPYY5EeoRGR1VfT
         ywyq+PzjBu9kOp33EY364Uf4zwumyoiXwqyUYXEyVQmek/dOiNa1kiuOCGj47Kdf8cSK
         hWIgAWr1h6nd3aqzEEh99i5TYeHYOI37oZGYQPmxJX+y0qvBKFoStkSCgafHFU3ebAq5
         Ux1atVgTX5vDRKahQynPvcSEKtxf8zgk2YN11KC2mRy6v4gu2CqKJnwHIS4dQhqNnVne
         J0RRD6qSWbFD83xfPlU9mPB2gUfMDikowk7RKlGRF8wtV8ytYJkziIsDXaCcsk8e90gL
         o7eg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Z2pIFWsVwnUVkXECAB3LOUfkXXwzbRuugFoezOyBWy8=;
        b=oybP4/3pCw+aYSvkZjDbNsbkIUfRtcQ2M0yWnbzXjhp8FzeRVm2lIX08wREuc73MGo
         Ne9PP8P5R5XK8nLCd/q8+AaeGPblAKZSkL1VS5/QerFUSE2hgE7708hZOacOv9gzXIpW
         YpLrSB82VfbfYbaYnjtpjkjpg54M2uEcaJIZl7z26Y7Szhsm71ImxCpcn5uGQSqrRD8S
         m+p4uwcYPAqH2qepudZLfmTJRg67mDKDUJA0ExLNnTCNNKJ7fWEWPydRqqdY+vgf0/Qe
         HxgL6+GV+njtwxd7O3KSj1ZjLR7FlZ9m5k4qXks3u8pVRduiPQnbq3gFFCaD3xyKF3t/
         AwPA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=CJcVxB94;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::634 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Z2pIFWsVwnUVkXECAB3LOUfkXXwzbRuugFoezOyBWy8=;
        b=ttLLetFBZOgT7WdIDFOmCUMTyX5I+5B4um6ul3o694QMTYUvZF0JRTenfTnTySG94M
         Nfj5DU3lKAkoP2wO6Xo/Hl2v5z2pzWCgSSCheq+7h34SiGpJvsEqrrnuDRMx7CcQTsS4
         GlYzzGGjDFTUylzoHq9wPrdePoT/39FTy7jOAVTR2zCus8XTKomSTFQxTznZujIyBXDu
         8qX56/0KpQ6myjVcs7iR5D30KBcNgLWAJtJNVK0Ciyd6k1YeaZXrVo0UoN919nZeUPSr
         6MhHAod40jnSNpTbbAgt5euSvuZSQN1Wqx6QnLVOXUp2y4iRogkB3YkICb+kPXtyHllW
         EqYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Z2pIFWsVwnUVkXECAB3LOUfkXXwzbRuugFoezOyBWy8=;
        b=nLCbuUpGfkqlg8zdSZfI9npA1OdT2EF9s81oLi1m7PLgsyCwUvH/oWgpaB+YUy/GLj
         Un5jY0HBmtFbAvplHKZm8fzkn9KeAPG+PaIW3Edo4Y/zpm8BNBMpdnwXIVrjr+NOWFaC
         NXgyAXAotxLkfUeo8WeGrOLWjyXOoRdekgIF/j5AE5aS8AI/2vMEB5SFUGLfMA68ElVT
         5sh4oo71+pmxpcRjNkQLFWPH6Z2YOh7eOb7UkhBUyNShZCRghx8sX4q8Olbv2EPBbygN
         +Iu9PAHIODPaXPez3+WTsj/ULsOF/xkWoUd212Y5Dcgb3E8wddSwkqr8BMqSGeUq1cBr
         vbsQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531FAbobplHRulETyFpDYwg5fJSKlSmorPx1Dy0cj6jMGjw03fvI
	p34SKCV/vQIeGG7MRFsCqR8=
X-Google-Smtp-Source: ABdhPJyH0609ffvh7hzbrhisEGwVHYq/BTxHT8fhwtjMPjOFZ5H6Pu4gIOcMDnBOVP+6oxanDNr+VQ==
X-Received: by 2002:a0c:e1c7:: with SMTP id v7mr3374009qvl.11.1630431332024;
        Tue, 31 Aug 2021 10:35:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:153:: with SMTP id f19ls9745436qtg.5.gmail; Tue, 31 Aug
 2021 10:35:31 -0700 (PDT)
X-Received: by 2002:ac8:725a:: with SMTP id l26mr3858887qtp.307.1630431331568;
        Tue, 31 Aug 2021 10:35:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630431331; cv=none;
        d=google.com; s=arc-20160816;
        b=xCMugHO9fZ6SKWHCxO8XaMg8IvgACFKE/UVbX1cy372kOoaezbNODyS39qNqF2jqMY
         EL/1J5tqwJCZe8gwKj8XSoQS1s222FOWRkVh/RuntqjWMBEch3pDenDi1MDTKqwTLatd
         voBYpH9/17e7CEJgJq5GM+4DiP/AwRse9I93jK3gm2x3DoHrOc6Bw+T3Z8vUqArAgBfG
         uxZNULLHOiYkH8vQvmpgltghgpkCMKmeaeJBWGf6KdUEVctIhgiOLohdLV06NTEIIDEQ
         HAUbEtIMjz/lDLJfaVLXsBrDZS82t9rwLqdfBnjffljm4fXONpmuknsvUJvRWgcKGBsd
         ePGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=zFaMu2sNRv+V3KA3jKCPARQc5wW0g1ezbq25T+FrX+A=;
        b=RtFhJM4Ep3fe9QNwB3oMhz8W+HkjU+xPdGfdUv/K2Oba4hEvxi++CX5ZnYR/qAZ27D
         08fE12+uSTlqaOxJcqY1Yft4LIF+dnQqTr4oTJLCSm+Nh0Cjari7WRkn9obXmEUWBHtc
         b1gqB18Ue7yaywyqdGgrsn0ESwycR9XBwIWyDlSNNFHHDw//E+arLF6VwPWbp6oof7cy
         MSdY8Sj7gvoq9dGis0cxuhoSMI1tr2h7R/3YHWcQI8/uH9YN4PscVBnOQ/M9pMkC5GYY
         6LAC9mu5uXmMo2pFisDDVZs+hCwyVrL/eNZjbTjSrx9FZrdlfkDn67PHnDHFK1VRVUvJ
         O0eg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=CJcVxB94;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::634 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com. [2607:f8b0:4864:20::634])
        by gmr-mx.google.com with ESMTPS id 10si1658322qtr.1.2021.08.31.10.35.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Aug 2021 10:35:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::634 as permitted sender) client-ip=2607:f8b0:4864:20::634;
Received: by mail-pl1-x634.google.com with SMTP id e7so1675811plh.8
        for <clang-built-linux@googlegroups.com>; Tue, 31 Aug 2021 10:35:31 -0700 (PDT)
X-Received: by 2002:a17:90b:103:: with SMTP id p3mr6813846pjz.157.1630431330746;
        Tue, 31 Aug 2021 10:35:30 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id t13sm3418724pjg.25.2021.08.31.10.35.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Aug 2021 10:35:30 -0700 (PDT)
Date: Tue, 31 Aug 2021 10:35:29 -0700
From: Kees Cook <keescook@chromium.org>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, Michal Marek <michal.lkml@markovi.net>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 06/13] kbuild: reuse $(cmd_objtool) for
 cmd_cc_lto_link_modules
Message-ID: <202108311034.D4B1410@keescook>
References: <20210831074004.3195284-1-masahiroy@kernel.org>
 <20210831074004.3195284-7-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210831074004.3195284-7-masahiroy@kernel.org>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=CJcVxB94;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::634
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

On Tue, Aug 31, 2021 at 04:39:57PM +0900, Masahiro Yamada wrote:
> For CONFIG_LTO_CLANG=y, the objtool processing is not possible at the
> compilation, hence postponed by the link time.
> 
> Reuse $(cmd_objtool) for CONFIG_LTO_CLANG=y by defining objtool-enabled
> properly.
> 
> For CONFIG_LTO_CLANG=y:
> 
>   objtool-enabled is off for %.o compilation
>   objtool-enabled is on  for %.lto link
> 
> For CONFIG_LTO_CLANG=n:
> 
>   objtool-enabled is on for %.o compilation
>       (but, it depends on OBJECT_FILE_NON_STANDARD)
> 
> Set part-of-module := y for %.lto.o to avoid repeating --module.
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
> 
>  scripts/Makefile.build | 28 +++++++++++++++++-----------
>  1 file changed, 17 insertions(+), 11 deletions(-)
> 
> diff --git a/scripts/Makefile.build b/scripts/Makefile.build
> index 21b55f37a23f..afc906cd7256 100644
> --- a/scripts/Makefile.build
> +++ b/scripts/Makefile.build
> @@ -236,20 +236,26 @@ objtool_args =								\
>  	$(if $(CONFIG_X86_SMAP), --uaccess)				\
>  	$(if $(CONFIG_FTRACE_MCOUNT_USE_OBJTOOL), --mcount)
>  
> -ifndef CONFIG_LTO_CLANG
> +cmd_objtool = $(if $(objtool-enabled), ; $(objtool) $(objtool_args) $@)
> +cmd_gen_objtooldep = $(if $(objtool-enabled), { echo ; echo '$@: $$(wildcard $(objtool))' ; } >> $(dot-target).cmd)
> +
> +endif # CONFIG_STACK_VALIDATION
> +
> +ifdef CONFIG_LTO_CLANG
> +
> +# Skip objtool for LLVM bitcode
> +$(obj)/%o: objtool-enabled :=

Is this intentionally "%o" instead of "%.o"? (And it later overridden by
the "%.lto.o" rule?

> +
> +else
>  
>  # 'OBJECT_FILES_NON_STANDARD := y': skip objtool checking for a directory
>  # 'OBJECT_FILES_NON_STANDARD_foo.o := 'y': skip objtool checking for a file
>  # 'OBJECT_FILES_NON_STANDARD_foo.o := 'n': override directory skip for a file
>  
> -objtool-enabled = $(if $(filter-out y%, \
> +$(obj)/%o: objtool-enabled = $(if $(filter-out y%, \
>  	$(OBJECT_FILES_NON_STANDARD_$(basetarget).o)$(OBJECT_FILES_NON_STANDARD)n),y)
>  
> -cmd_objtool = $(if $(objtool-enabled), ; $(objtool) $(objtool_args) $@)
> -cmd_gen_objtooldep = $(if $(objtool-enabled), { echo ; echo '$@: $$(wildcard $(objtool))' ; } >> $(dot-target).cmd)
> -
> -endif # CONFIG_LTO_CLANG
> -endif # CONFIG_STACK_VALIDATION
> +endif
>  
>  ifdef CONFIG_TRIM_UNUSED_KSYMS
>  cmd_gen_ksymdeps = \
> @@ -289,13 +295,13 @@ cmd_cc_lto_link_modules =						\
>  	$(LD) $(ld_flags) -r -o $@					\
>  		$(shell [ -s $(@:.lto.o=.o.symversions) ] &&		\
>  			echo -T $(@:.lto.o=.o.symversions))		\
> -		--whole-archive $(filter-out FORCE,$^)
> +		--whole-archive $(filter-out FORCE,$^)			\
> +		$(cmd_objtool)
>  
> -ifdef CONFIG_STACK_VALIDATION
>  # objtool was skipped for LLVM bitcode, run it now that we have compiled
>  # modules into native code
> -cmd_cc_lto_link_modules += ; $(objtool) $(objtool_args) --module $@
> -endif
> +$(obj)/%.lto.o: objtool-enabled = y
> +$(obj)/%.lto.o: part-of-module := y
>  
>  $(obj)/%.lto.o: $(obj)/%.o FORCE
>  	$(call if_changed,cc_lto_link_modules)
> -- 
> 2.30.2
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108311034.D4B1410%40keescook.
