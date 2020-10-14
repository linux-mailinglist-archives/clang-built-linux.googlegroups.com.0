Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBDMIT36AKGQEFAZP56Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id 15AB228E917
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Oct 2020 01:04:47 +0200 (CEST)
Received: by mail-qt1-x839.google.com with SMTP id n8sf744401qtf.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Oct 2020 16:04:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602716686; cv=pass;
        d=google.com; s=arc-20160816;
        b=jDUnO+1jjqoLjLlPiQoxEbBHMpvsA5q3wAp/pu6mtpuon1gyKyeowZSMv+pzuvYA6R
         T8rbEnxqyhLFFuMOAk33psNasLl7Hi3sG7UTguh5UgskgoruPwYQM/Y3Zw73jEvoFiJp
         Gt+VWUXUFYunTiNAa9DPk5LykWayzZaSdm1BiX2A+xfovl+A38cXI6UlafKnRHG4bmVq
         FkyMcODk0Du+kV2OBmA4Fk7PLWx5IdM0qHDk9DRpuCUJFvC6hoJkk/F4Jeco8DBWOQOL
         s3jFHePb5Dq2NtY/HiIhPXymuqaNpK3Ql9wr6hUbjAdQ4aa/Wx9ARfxCAzkquiggOdvr
         6HSA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Vy7IJHy5pxMhOm88ocgVOQelx5W8/xzMKrpnp2OJNDw=;
        b=yiGqVVk33kdUbzMmBW2xCvJgeY3CSI8ydOvYBbrPwauqTwOPjpUcksk3NHUsT/zbKo
         d3Ezu9gsrn6G0wa0aiOxoLeqXmV46TPom8v3XQntUw/9XMNLJTeCPGWvKv0jdmoBoUzG
         8aWuMTRItn7uonweDHta4paj57YYDneJ3IGKugLboInUz9Fmm/6momthACBvtXkatMtE
         zB7ntE+kAKIWFS00qe4ZVyVwnubH0t1k6HoZo8Gbq8AH/mHNb2J+K+LcAOcyV2WAlQdM
         6xTfNDK/WrgRZp/8vfUlfzU5STRf2aH3enQHCrACeYSJFTQHFbUNC4XBUAHfzkxXexrO
         S9IQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=A4NM72S6;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Vy7IJHy5pxMhOm88ocgVOQelx5W8/xzMKrpnp2OJNDw=;
        b=O2Fg6CfBP2uVrbOt4jbkUGeTNRCjzn1t59/U8EJTHyYo+WYFQcTLL07zoXh2bACZOx
         0KJQR5BorMTl011eyWVK8jh24fbu1xdN1+A65bWeMH0WWt3CiMjYqEn7fKU3f8OQXkgN
         +/vMUp3hFx961fU5VgDu33TRDaQKJIteQbzTN6fhjdBjaUE4gSsasWR+ijEPOOq2JJj4
         I+VcWdaOUvXiS9o1tzClzY3mEOec7vwe9Z0XAeQUEzVECkxNuoOUWgU1pVYsEQG2AJr9
         2xKkw991a4jz7EMhQXk99OIRPTDV3zVLArOHU0yEZNqjroyr9TWbdwfDyeceIwXEUBaP
         xD+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Vy7IJHy5pxMhOm88ocgVOQelx5W8/xzMKrpnp2OJNDw=;
        b=oXZBT4ny+vSU407qqA3/I8+ACpwp575sR/6NKQzZUF/Ecb90GAkO4GTe/ADMCV2h5K
         kmTU8Mzs0LYWtnXy+8eCQKomXgI3V5dm8LWZMwIdAi6h0/OeR1tmOQRe2VBBteOq4AQ+
         aEEPhThVR2u1lyIosD6WCZ0s3jKqdJKaScMFRdo8+8H30EMSBjIbQsOv1lpjxAX0qmm+
         nnDv4mAYH8R3oJpk3c7fDtYCFuwAHDBeYgwilo+jBuz3kAVAP3/VwAQmScSV9VzfTc3y
         j1/5QTegXLP4RBjh+U0KWgHMisRTLJkKL1XcWJHxu3TES5xAPGnxJkI7uCIP2S4ifcnO
         Lp4g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ql6e3+pDTBYDZ63LNwSWAoTgmZP8x2LgjPfpKLOlh2fplB5/O
	Rdrtojaw11inbgZiTDeCoQA=
X-Google-Smtp-Source: ABdhPJx4mVhh8y18BFYtOfh6nXr2+z86xpprkAoLZBTY8kZEEQLxA0p6/BqKprXpAYaSq7wCkF0QJg==
X-Received: by 2002:a37:9645:: with SMTP id y66mr1433269qkd.373.1602716685831;
        Wed, 14 Oct 2020 16:04:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:10b2:: with SMTP id h18ls350060qkk.0.gmail; Wed, 14
 Oct 2020 16:04:45 -0700 (PDT)
X-Received: by 2002:a37:96c7:: with SMTP id y190mr1413363qkd.152.1602716685269;
        Wed, 14 Oct 2020 16:04:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602716685; cv=none;
        d=google.com; s=arc-20160816;
        b=IXv3tZLAysq5C8c/lFywnPWBUM4aPwrqTMfIjgG5cpBaC/XkQD8olbqre72uSPsQel
         WtvUB8YwfEnKXRv2JhlMu+lwTvfVHjFgPDyzpdqfx6sbJR9sX2lptgOcvGApHMPw/Zi7
         vsRgJPqnC7O3QNLhk571eC0+F3XgchyDUCCieSa1iJHhwwYclRusSd2FzRFdKR7LUfnS
         g7hPwLha+KBCinVK+tSJpSMQe8xoCTcFu3LrGvrWOoL+98HQ379HKxNDl0V33jX3eV+j
         eaoMMMhqY5etM4OX7GUDYmqMkzAj5gmmmNang/PD/xcf1sCbpxcSUusAl2t13DeBS9JQ
         mOhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=HqPJcxWf/UHRmEBTt7/8+9fERJsy5yZfgCD3aK5edac=;
        b=Mgz519JdPALw+9HSCJUU8/D+ieI3AlG080Lk6w2Y72CCWuhq1ZwJWu6Wf4+vCa98Hv
         G+SprzS9Ii3phKUi30TzZZmMwhXPp6rilMyl4fCN9gpVUWwh+2T3hhLnLHVfGtNMkC/a
         /Xz78gkhIzT0Qw1CreO/FOBBG072W4jkRS4ckX0yjA/vmFzMLmhPGJygY4vi5XD0ewYW
         7SfNzPfJt8nYBSQb/EQeL5HL4W60NnnBVwJwvEz0sWXewomeE7exYIXzYV4ZP0tFpuWC
         mXlqthiS9lwk7LYhGCdglOQ348aLmFDONB0r7IoVyloH9gHjAMmeOOoDNSjqG9pqC5m8
         H9qA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=A4NM72S6;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id l15si82339qtb.0.2020.10.14.16.04.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Oct 2020 16:04:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id 144so742053pfb.4
        for <clang-built-linux@googlegroups.com>; Wed, 14 Oct 2020 16:04:45 -0700 (PDT)
X-Received: by 2002:a63:845:: with SMTP id 66mr938293pgi.318.1602716684465;
        Wed, 14 Oct 2020 16:04:44 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id d128sm743917pfc.8.2020.10.14.16.04.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Oct 2020 16:04:43 -0700 (PDT)
Date: Wed, 14 Oct 2020 16:04:42 -0700
From: Kees Cook <keescook@chromium.org>
To: Ingo Molnar <mingo@kernel.org>
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>, clang-built-linux@googlegroups.com,
	linux-arch@vger.kernel.org, linux-kernel@vger.kernel.org,
	x86@kernel.org
Subject: Re: [PATCH v2] vmlinux.lds.h: Keep .ctors.* with .ctors
Message-ID: <202010141603.49EA0CE@keescook>
References: <20201005025720.2599682-1-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201005025720.2599682-1-keescook@chromium.org>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=A4NM72S6;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442
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

On Sun, Oct 04, 2020 at 07:57:20PM -0700, Kees Cook wrote:
> Under some circumstances, the compiler generates .ctors.* sections. This
> is seen doing a cross compile of x86_64 from a powerpc64el host:
> 
> x86_64-linux-gnu-ld: warning: orphan section `.ctors.65435' from `kernel/trace/trace_clock.o' being
> placed in section `.ctors.65435'
> x86_64-linux-gnu-ld: warning: orphan section `.ctors.65435' from `kernel/trace/ftrace.o' being
> placed in section `.ctors.65435'
> x86_64-linux-gnu-ld: warning: orphan section `.ctors.65435' from `kernel/trace/ring_buffer.o' being
> placed in section `.ctors.65435'
> 
> Include these orphans along with the regular .ctors section.
> 
> Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
> Tested-by: Stephen Rothwell <sfr@canb.auug.org.au>
> Fixes: 83109d5d5fba ("x86/build: Warn on orphan section placement")
> Signed-off-by: Kees Cook <keescook@chromium.org>

Ping -- please take this for tip/urgent, otherwise we're drowning sfr in
warnings. :)

-Kees

> ---
> v2: brown paper bag version: fix whitespace for proper backslash alignment
> ---
>  include/asm-generic/vmlinux.lds.h | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
> index 5430febd34be..b83c00c63997 100644
> --- a/include/asm-generic/vmlinux.lds.h
> +++ b/include/asm-generic/vmlinux.lds.h
> @@ -684,6 +684,7 @@
>  #ifdef CONFIG_CONSTRUCTORS
>  #define KERNEL_CTORS()	. = ALIGN(8);			   \
>  			__ctors_start = .;		   \
> +			KEEP(*(SORT(.ctors.*)))		   \
>  			KEEP(*(.ctors))			   \
>  			KEEP(*(SORT(.init_array.*)))	   \
>  			KEEP(*(.init_array))		   \
> -- 
> 2.25.1
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202010141603.49EA0CE%40keescook.
