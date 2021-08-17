Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBEUD6CEAMGQEPUE3BFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B06FC3EF1F2
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 20:36:02 +0200 (CEST)
Received: by mail-lf1-x137.google.com with SMTP id l6-20020a056512110600b003cc04c15f9esf2263174lfg.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 11:36:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629225362; cv=pass;
        d=google.com; s=arc-20160816;
        b=CXqYvdH7OvXF/PowutWplhCqP9xxa2Pb3meQDgueD1wb4qWGGmW9fa0McA+nbj6d5X
         Tx+s+VZ6Y+6qFNSmcYv9rxJFacq84IBDmCeML+/Gypf0gFJHSOtM898JMNri++3iG5ay
         oPZwC3Sba1uzKP+uieCicUZ0QdC+O96DBwJFB5LdA74vPIDRS3s+NefI0vJxV8bM4WFw
         0PYkOIqsANzEkpHg12c3K8UQGmt/mbvAk6FPrahYVLGmV0qDuT5rh4c0/3vyepVEmiY7
         ElDLKOYUphVtIkItLLUO/GKhv6bsHy5MWVWGEVfjhSCkP5c4NtEc+2ce/VwaCSj9jGD/
         4Pxg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=H4zQpG2d0aAK5qwlf7Zawe4G1vNyK/5sw8kxRo4crCg=;
        b=wHAzVZjm2Di82ha8VIk9k44txLF+PhQpQuq9iMKwXXgYAo814gnxPuyihGq/6XPoU1
         /ICFJhGsVybXmzP1EQ5Y6qAVdYT9idXudf9VwerC7vsVI0V9tGI70dzcx4Co2H1trAnK
         XnIHMscA22fm9e4EoYh7Pm8Hyoaqlomy07vtU7pHyWHwjJ98Qy9mrG5mkK7PhGqmZdTx
         LnEtddji9M1M6rJRset7J3/DbUzJ8t5hdROMM/t2YXH5SCEzmBwr2hb3PSOW6Dnh2fHk
         0X/uOw7cTtxmd1V2GLmiTKGeoay6BgTfnfkOHz5qeCmcWv3zF6XiHSRechgvIgthqCvo
         sbVw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=mD4tyYQ4;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=H4zQpG2d0aAK5qwlf7Zawe4G1vNyK/5sw8kxRo4crCg=;
        b=VV6patmVYVRz+E2lQfcsQ2TL6WuWqb8LO0u4TJgTRqMdWkOxoo+S4Lzd1Kl4XH3Rtu
         5kHrwJX8zZ9JJFmlAMdzNywOL/UWjW34UqH/1VKCubl9axBAZ2QmxjRSVE55o7YEOsHl
         92T4e/1wRk6lOryFIMJqXAvpT29znQMUs42E72T4wnW65F7xkScxyqKP0tQda2pmp9ZG
         vGTcp5ggaDW/iZ+sJ2+MerzWk2yWrjEkrAH2EDUYSgiaJR2ItW7/FrdfdKRYntyq0cRy
         gftxKk0SQ7xNpXkkn3j5GfNYjdMbKsHtpeO2+mHHo6GgBC7OZyD0/j46+pooLvNphmJJ
         b58g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=H4zQpG2d0aAK5qwlf7Zawe4G1vNyK/5sw8kxRo4crCg=;
        b=KYdAUKJF2rZNNR5Br9tzuzIBTKcKcBnqONOdOfOlE8n8ZSjJijYOtz++P25zA8Y0gg
         +mjWn4pQ3XFVXHZhA2MPISqRIlwUz3K6U8umwGgIloy5MfTQ4XpRor/P2RT/NOTXQzQn
         YhvQMrA0CUWVF1g+Ice5SfvXqFWgJzXB5TFvC0W+0qeDFlN3SMK8f1qIJu1EsxecSu1n
         ri85U7EuKTKRdsQ2LPLXVzPc/SItTaXjr3HzZ25EAzKzYSuJbgE/jMwVkFDRgH0B7Mu0
         YLb1Uz2bj/qV15Ydi6Uvf8K/tk8ZFgFOeAqLOaY938M6DYTyFPKyi39lmM48PQVodcVj
         WNZQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532UO+5/WwnuBVuHRSiNsSxHYxHTp4oBY2wSFmtvHm3oxnoaaObP
	vxaZqZR/vIxrjU+vlWHRBEw=
X-Google-Smtp-Source: ABdhPJxkopmtWPbG7UXvJhvnOtvdZ+yGwsesn/yFmtGElM9a1zYCxg6fRylInNHENbZT7vKn57IsEQ==
X-Received: by 2002:ac2:5d49:: with SMTP id w9mr3406252lfd.450.1629225362227;
        Tue, 17 Aug 2021 11:36:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:597:: with SMTP id 145ls700660ljf.7.gmail; Tue, 17 Aug
 2021 11:36:01 -0700 (PDT)
X-Received: by 2002:a05:651c:1785:: with SMTP id bn5mr4573643ljb.18.1629225361295;
        Tue, 17 Aug 2021 11:36:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629225361; cv=none;
        d=google.com; s=arc-20160816;
        b=H2HBah4tuDsLUDDs/JV3d+d7BjAdDNAWtUaWnyybFmYJAz8s/9bKwWiO/drDtm6MBr
         t1bQLhEFDCcHblz2j+hDcaOgNYomfIIklIb0m/9OuyPrKlsQrdy6yu4//sPbHb/cV+S8
         kAnOQsTn0GTIRsLk5ndP43WyLsOanJUVGd39nfPsQKFlxXFiUhAEwT/qe0RvAsZqe2bH
         fGHQ05yuNYze0474SLt89oLSGWFnBBtab0GOQB/4glymt8N83ribVrcFIU/Savvv142Y
         QNsYiu4xaLYBaX+1ucojxrdRAVAeImyaiViRrzTqTr2hKCskULVca7mcORUuzDOX8Yr0
         mqdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=SO/ZV2Mk9I+24npFwndDFprvZYKCgwEBp0TLU34JObY=;
        b=SjAtTOxu5Rm9gNi/dO1X7L+biP4UsTEI6oibMLWuS3C+UfUJvBXZq458gmVwalnxKx
         +TmRqAnuRjvqWbDtR0OvZ2fiXigssrWmWkYvVA1haB0cZ/PMo48+lnA3z9tdHCTAf47P
         M04OqnoVqX8rhX5mmoYfljioOIKDs9wJfMGRj0MbDUIwSl4AEBNycWCXSFnI13uvMTSB
         6gxIMKPvt+YrW9JoScFmdX9afhRw56sEbRGHCtAhlcbrgXphdyK8EUN5q6myKgIX2J8v
         zRC5dZqQPOv0hd+fkl5lRcouqYk/uXZzm+LAdBXCJ66FpwIO+WnnndlHdNpEv+D3j14b
         9UWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=mD4tyYQ4;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [2a01:4f8:190:11c2::b:1457])
        by gmr-mx.google.com with ESMTPS id t9si153921lfk.1.2021.08.17.11.36.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Aug 2021 11:36:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) client-ip=2a01:4f8:190:11c2::b:1457;
Received: from zn.tnic (p200300ec2f1175006a73053df3c19379.dip0.t-ipconnect.de [IPv6:2003:ec:2f11:7500:6a73:53d:f3c1:9379])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 5F3F41EC0556;
	Tue, 17 Aug 2021 20:35:56 +0200 (CEST)
Date: Tue, 17 Aug 2021 20:36:35 +0200
From: Borislav Petkov <bp@alien8.de>
To: torvic9@mailbox.org
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"x86@kernel.org" <x86@kernel.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	"graysky@archlinux.us" <graysky@archlinux.us>
Subject: Re: [PATCH 2/2] x86, Makefile: Add new generic x86-64 settings
 v2/v3/v4
Message-ID: <YRwBs89eogLJEiRn@zn.tnic>
References: <269701460.117528.1629210189833@office.mailbox.org>
 <796036867.117557.1629210288168@office.mailbox.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <796036867.117557.1629210288168@office.mailbox.org>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=mD4tyYQ4;       spf=pass
 (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as
 permitted sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=alien8.de
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

On Tue, Aug 17, 2021 at 04:24:48PM +0200, torvic9@mailbox.org wrote:
> Add new generic x86-64 CPU tunings introduced with recent versions of
> gcc and clang, as documented in x86-64-psABI [1].
> 
> This is taken straight from graysky's CPU optimization patch with minor
> modifications [2].
> 
> [1] https://gitlab.com/x86-psABIs/x86-64-ABI/-/commit/77566eb03bc6a326811cb7e9a6b9396884b67c7c
> [2] https://github.com/graysky2/kernel_compiler_patch
> 
> Signed-off-by: Tor Vic <torvic9@mailbox.org>
> ---
>  arch/x86/Kconfig.cpu  | 26 +++++++++++++++++++++++++-
>  arch/x86/Makefile.cpu |  6 ++++++
>  2 files changed, 31 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/x86/Kconfig.cpu b/arch/x86/Kconfig.cpu
> index 814fe0d349b0..a2c872aa5a0b 100644
> --- a/arch/x86/Kconfig.cpu
> +++ b/arch/x86/Kconfig.cpu
> @@ -294,6 +294,30 @@ config GENERIC_CPU
>  	  Generic x86-64 CPU.
>  	  Run equally well on all x86-64 CPUs.
>  
> +config GENERIC_CPU_V2
> +	bool "Generic-x86-64-v2"
> +	depends on ( CC_IS_GCC && GCC_VERSION > 110000 ) || ( CC_IS_CLANG && CLANG_VERSION >= 120000 )
> +	depends on X86_64
> +	help
> +	  Generic x86-64 CPU.
> +	  Run equally well on all x86-64 CPUs with min support of x86-64-v2.
> +
> +config GENERIC_CPU_V3
> +	bool "Generic-x86-64-v3"
> +	depends on ( CC_IS_GCC && GCC_VERSION > 110000 ) || ( CC_IS_CLANG && CLANG_VERSION >= 120000 )
> +	depends on X86_64
> +	help
> +	  Generic x86-64-v3 CPU with v3 instructions.
> +	  Run equally well on all x86-64 CPUs with min support of x86-64-v3.
> +
> +config GENERIC_CPU_V4
> +	bool "Generic-x86-64-v4"
> +	depends on ( CC_IS_GCC && GCC_VERSION > 110000 ) || ( CC_IS_CLANG && CLANG_VERSION >= 120000 )
> +	depends on X86_64
> +	help
> +	  Generic x86-64 CPU with v4 instructions.
> +	  Run equally well on all x86-64 CPUs with min support of x86-64-v4.

Every once in a while, patches like that pop up without any real numbers
advocating for the additional and perhaps unnecessary complexity.

If those -march switches don't bring any measureable improvements - and
I highly doubt they do - you shouldn't waste time with submitting them.

Thx.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YRwBs89eogLJEiRn%40zn.tnic.
