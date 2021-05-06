Return-Path: <clang-built-linux+bncBC7M5BFO7YCRBEVZZWCAMGQEZSTY2IA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C71A374DCB
	for <lists+clang-built-linux@lfdr.de>; Thu,  6 May 2021 05:03:47 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id x186-20020a25e0c30000b02904f0d007a955sf4553511ybg.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 May 2021 20:03:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620270226; cv=pass;
        d=google.com; s=arc-20160816;
        b=cVR8d6Ns9m0KijEBHO2Erg3m7R06gHXSNvxDCZrvg/Zdoa98IBCeOuwlVosk4IL91B
         URMb/rYZ1j2wyuKTPy3FxkS+cFkUwwYyYMhHjBpEvt+kuYlKm/3IXcgb7e96j3006yP2
         zwl3vFHI5weF2atobNNNpYAND653xceSsR10jrszu3IXPh4tp+hT84pFIT1SZHN80HkO
         Uy0F7ici/9ZhDchsHPVMk/2PCqD5WjKagm1wW/CtW/QxQZBEIoniPaLNA1r8e4WmYSjy
         bVZvGAkCPRXkagJY5P9NPWRn/MmJguSbd2KK7fv3WB4GMBnKvy63j/gOJ6T+g1Y4UU6E
         LVxQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=oVjzrw2zae1+3BwHaucGUi9yYhmgLk6dYxrtaBHg9aA=;
        b=lFtlt8+hw3hps9YhovHTLx4gWkoW2nmlaJLZSDzeLzRnN4NqdFy9ngdXFRhnCZbPbP
         Cc3ZTd9okzjUiEyl4/QU8O1mFvVu0xIfD5m7T9eXzyqzBXvD4fMLyX+VedIvXqQ2Y7wF
         XDPl6pV8ihAj1B4W9vwTGhiuVDmrRDVkDRbKRM6b/W0PlLC71CTnauFN+nsSuvNQ3hMp
         GjZ+04Atv3dGCgTdxhNq1sSgj5hLEZjF9FQstXK2xSlFfG4LK9oc+1/7iFEXS9NuHpsm
         C9aiuO2OuXgouCFaxRhgYoMSqzW1w3wSAtQ9MoRvamEnyxZoVrzCSq6hU+4BirrU6duZ
         x5Ug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UItIGd7f;
       spf=pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::229 as permitted sender) smtp.mailfrom=groeck7@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oVjzrw2zae1+3BwHaucGUi9yYhmgLk6dYxrtaBHg9aA=;
        b=EJVhyMoEXUkdPgX7/FrgV1/QkKoLdFGTO/9TsitxtLRsmoSubYgHRWGQWhUMhPhrve
         QaWtwISbyQtVrzALsEU5PMd4Lmcxz08VvUTlRtBo4wLs5uDdOZ13mLiCuNK1tC2FwmJ9
         NtAN4eje4CgH9RQN9x9a0IBLUp6ZeDbWxA0TvUmDXkQrBVBeJENfIJOpKioPbTyY/K5a
         hxKok38C5MwDWz7oHhT7dYofl2UcVGgxN1/Cr4dO/XfT8k7tHU5iv+v6tLGrIs1nehTY
         WCJWMwWgC1OGwaLn2BbHAMYzd4CdJR6rlPmxeXcClA0pCW9J9ogeFQGY3QMlYdpHe5Qk
         qaOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=oVjzrw2zae1+3BwHaucGUi9yYhmgLk6dYxrtaBHg9aA=;
        b=A5CLmCSeg4VO+2w/0G8ipBWK33SpWIDDFsstO8n119/ov5s4135cNXn/UBaOb23ylE
         WTDgpQvTOYCNqzB4HmQGujiOESSD8IYdaajqQcGrpz/XiiotxNrxap/pflgsKz8XfTMp
         1XcGGEDQUH+HjQ5AZJoHAwmy7j0zFpBV3Kfk5LMZ3jQrN9odJoeqF/8+l9ixWTWxHNdY
         qrOOaeJmMyfKYHakJSQVwq6uIEXGuXQI4/Q5ZCqdTnjiRrmgkNKVrWQ8wzJuE0QKewUg
         8j9NXzlrLmTPi8QrQrVzvJLqhlIBXhejneWCUYQ8Nuu4Ogw3uSPgsY+RsBq4M/PbSCq3
         rxnA==
X-Gm-Message-State: AOAM530JrciscFxc6F4bSEFaQGy/aq3RrOwJAsOYisvpWSL1rhiMvRVG
	B2EoIXLf11q1IpjyIM7JzR0=
X-Google-Smtp-Source: ABdhPJyng2F5iaeo1qZZsts+kkvbKxe45FmMnNP86ldEcf3X2LeDVPARuS/fbQ8FMeyhyZFw2JCTWQ==
X-Received: by 2002:a25:f61f:: with SMTP id t31mr2566332ybd.9.1620270226364;
        Wed, 05 May 2021 20:03:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:7714:: with SMTP id s20ls704127ybc.9.gmail; Wed, 05 May
 2021 20:03:45 -0700 (PDT)
X-Received: by 2002:a25:dfc3:: with SMTP id w186mr2619544ybg.440.1620270225843;
        Wed, 05 May 2021 20:03:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620270225; cv=none;
        d=google.com; s=arc-20160816;
        b=O8+Yxnr6rQ6ElGXQbS670P/xzBXsFXr1X+1HW753BGZkbqhE7t4leBl9VACA5I0n58
         qntlYIcLvICm4nQT1RbHrfCQUViZwoQqwLLSCfY4LktGK7S06V5BbvDgSrAjhanbtt89
         xKKm5xjHlxj0fydB+T7fxdaTlaOp0IyvIqwWRoELM4m1bFjFrDK/QQnWNt5XlGYwRWvE
         ApYJojAfjbg2ePLX2Pc63byYyzBXWgh797kbviEfef26a9GgMNTcRw0MLSA95odCge+u
         YEtA7xzP4b2Nh+TarvnssmP26MkUXJCXrLcoumNLq5pI4yG1zEf2XZQEjRXgXrrtzKez
         hIJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=K5oeKhWnfTWljork6kG9sjbCOLkcBK1xWa+5KaC6FfA=;
        b=CbsuCBQD3xg5AVJFJ+n0yIfoWglY4X0EbPtRw2cW27gyKy5si2qiAoFn6/W0DvOFWw
         +KtCmKFtiHoUXR8JarJv9crF8VOLZlz+CzxaY6bC/Tth+7pfqb/EdmoM+vXNhcn3JjMD
         CEvfPQ/SO3gPPgxyT8kF60aaBKGTDHcLG6XyZweglgK5mN0quoQcIm9d8Xo17hgGOwWa
         13Xj1A5F44+5tqsPpDgpbhr0+uBX+6e2AAEsV0rwgT+uOFkZyds84FyThHtlwSRZHRgw
         uizEXR3xYVkDmOSKtUjY1FI4ZJDYsvGV36Ar/NrroNk+vzh9rVEufadTmMvwY0k4vzF1
         vwyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UItIGd7f;
       spf=pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::229 as permitted sender) smtp.mailfrom=groeck7@gmail.com
Received: from mail-oi1-x229.google.com (mail-oi1-x229.google.com. [2607:f8b0:4864:20::229])
        by gmr-mx.google.com with ESMTPS id h188si63183ybh.5.2021.05.05.20.03.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 May 2021 20:03:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::229 as permitted sender) client-ip=2607:f8b0:4864:20::229;
Received: by mail-oi1-x229.google.com with SMTP id k25so4226227oic.4
        for <clang-built-linux@googlegroups.com>; Wed, 05 May 2021 20:03:45 -0700 (PDT)
X-Received: by 2002:a05:6808:20d:: with SMTP id l13mr1459416oie.158.1620270225476;
        Wed, 05 May 2021 20:03:45 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id h12sm314064otk.55.2021.05.05.20.03.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 May 2021 20:03:45 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Wed, 5 May 2021 20:03:43 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
	Nick Desaulniers <ndesaulniers@google.com>,
	dri-devel@lists.freedesktop.org, linux-fbdev@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	kernel test robot <lkp@intel.com>
Subject: Re: [PATCH] fbmem: Correct position of '__maybe_unused' in
 proc_fb_seq_ops
Message-ID: <20210506030343.GA741106@roeck-us.net>
References: <20210505182808.3855516-1-nathan@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210505182808.3855516-1-nathan@kernel.org>
X-Original-Sender: linux@roeck-us.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=UItIGd7f;       spf=pass
 (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::229 as
 permitted sender) smtp.mailfrom=groeck7@gmail.com
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

On Wed, May 05, 2021 at 11:28:08AM -0700, Nathan Chancellor wrote:
> Clang warns:
> 
>  drivers/video/fbdev/core/fbmem.c:736:21: warning: attribute
>  declaration must precede definition [-Wignored-attributes]
>  static const struct __maybe_unused seq_operations proc_fb_seq_ops = {
>                      ^
>  ./include/linux/compiler_attributes.h:273:56: note: expanded from macro
>  '__maybe_unused'
>  #define __maybe_unused                  __attribute__((__unused__))
>                                                         ^
>  ./include/linux/seq_file.h:31:8: note: previous definition is here
>  struct seq_operations {
>         ^
>  1 warning generated.
> 
> The attribute should not split the type 'struct seq_operations'. Move it
> before the struct keyword so that it works properly and there is no more
> warning.
> 

Oops, sorry.

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

Guenter

> Fixes: b9d79e4ca4ff ("fbmem: Mark proc_fb_seq_ops as __maybe_unused")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1371
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> ---
>  drivers/video/fbdev/core/fbmem.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/video/fbdev/core/fbmem.c b/drivers/video/fbdev/core/fbmem.c
> index 52c606c0f8a2..84c484f37b4a 100644
> --- a/drivers/video/fbdev/core/fbmem.c
> +++ b/drivers/video/fbdev/core/fbmem.c
> @@ -733,7 +733,7 @@ static int fb_seq_show(struct seq_file *m, void *v)
>  	return 0;
>  }
>  
> -static const struct __maybe_unused seq_operations proc_fb_seq_ops = {
> +static const __maybe_unused struct seq_operations proc_fb_seq_ops = {
>  	.start	= fb_seq_start,
>  	.next	= fb_seq_next,
>  	.stop	= fb_seq_stop,
> 
> base-commit: b9d79e4ca4ff23543d6b33c736ba07c1f0a9dcb1
> -- 
> 2.31.1.362.g311531c9de
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210506030343.GA741106%40roeck-us.net.
