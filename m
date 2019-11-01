Return-Path: <clang-built-linux+bncBCEJHTXX7MFBBD546LWQKGQESLGBZNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53a.google.com (mail-ed1-x53a.google.com [IPv6:2a00:1450:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id C5D3DECA1F
	for <lists+clang-built-linux@lfdr.de>; Fri,  1 Nov 2019 22:05:19 +0100 (CET)
Received: by mail-ed1-x53a.google.com with SMTP id c27sf7386545edc.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 01 Nov 2019 14:05:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572642319; cv=pass;
        d=google.com; s=arc-20160816;
        b=bLqUUF9un0vHcP2zM5E7lm3eYWIz1z4ND8WEM8t9BOGZcE6SYXSIZBs5E8TI20W7wy
         7nfH97mNkCOFaPVxPIuPbCVSmgMywKuu+U47TAlVsHDi+U0IMRDBysJ/VbfRD8ZDX2oN
         8XN24uybuqznUlXkhTe8G+IZsBHzV8gaS1WVkSI5tE+Ts706kdZV/SkZlFPppWSI/Q2o
         DaH//nLOFVrd4nNTHbn6ljEJC0ouwckHvQEfeOpM8h3jKY49eBEO0ZL1a0sMXBzfzvaF
         zFCUVxb+NlRbyjY8zvC/P0BrAOpKWdVZnooShYcDM6oEMRs+0UDn3GfwG7MKmdSuWzKg
         CS1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:message-id:references
         :in-reply-to:subject:cc:to:from:date:mime-version:sender
         :dkim-signature;
        bh=cvT+HSXvnA21m6c3PNg72guDIlC5hieJjIailXjzlDE=;
        b=AP3t16VY+JCEhZi3L0LuABMKxArEjs/s1icpaA+aexo+e8qtw8A5nNfDt7emlNXb6w
         IFYgkllVjisObYSAOwPiHMqxlx9PRn2mA2Lrz6UtctmNMILcXVOD/7mKr8Yv1g0EqK1q
         h7PqY17YVE81tVYFTMC25CRbU8vbWkn0A9ZUktB0QNjSFy5VOMT2jb1Aecur1zgJzclY
         eTI9gB735XeYTXUM4JtOh1VoX6dDSCYkcaewVYHOhxgnXTvWzpGxk7P/bTxkVoULM/nJ
         uXhFZ57sHvb8wCw1zN7/qAtG6UjXfKvfNyWTYPJgeeoyEv9NPrsvFXua3Mz+uEZS35Mf
         46rg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b=aZ+jdaP2;
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:date:from:to:cc:subject:in-reply-to:references
         :message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cvT+HSXvnA21m6c3PNg72guDIlC5hieJjIailXjzlDE=;
        b=LIAAWnenrMiBRfahwEeUjliAbtNgpYGAHwbIAcT6jgmOvnCCCVNqkw0+SWFQQmNIxg
         xXfuVUbi/usF3kwBE95mSX23GGlvpJ2MfPWHWqbgef1vXyI39gZWrmtD2kkC2atpqQsE
         ygTOl1FkcWb937kqLTS98LAmOUXItRNqC1GfErmVk3RAL/P6JR0jmo3ad5mvDvuk9g6e
         UK8fnBp4bSHfVAKWx8BWmJDHGqiZGvPjJIgPvTorJY/rP+2hDR1rKoHtvE1gimD3A290
         V+rX6e5bOyoKV7j3cSBgCNSdaoPBxE26zPVADnRPSCUkGmbZsa7pcFoNvjZAlNtEvSUA
         u//g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:from:to:cc:subject
         :in-reply-to:references:message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cvT+HSXvnA21m6c3PNg72guDIlC5hieJjIailXjzlDE=;
        b=iV2tpKS4bGtWaxvNPcsSkvLZsnUGkmg094ooZFIDrQHfqQgsTYF7uLfAY9LIiBbSlX
         yhxdyag2S30bMK6KouNM/smN0q0go7K4fmPyQSur2pVnMc4ymmgOBQcdbv8yRIIq3/SB
         IcBsgJi+2qFiyoS4C4o2OzPlC5MoB6kIgRn2Q66UuD5tjf9GsSs4yHnOw2HT6Y94aU5h
         9BtOT/jP08RnOCybVuV1Aap8uXVpzQVA6Y+jMbCjTSSX61gMq94ch0aglwq/JL09xolD
         JL7l3lady7h83vCJb8uXeUPoJduvZsiWFm243z0JsreFHWQcOwc7QWogyDyhVZK3FYvg
         6hcw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXpaVOhHzr9ZE4J1B5SBGYjeIMdHKIRLX4+7AKFYY3qj4HvG0nu
	DhxYgMKiNzpCX/hc8zCOTOQ=
X-Google-Smtp-Source: APXvYqxTbZ4TnhBR4wUexrLyhkoQU1Rr84MBJPVaMILMTHuIAs0I2driQOHYNG2dXZ+VqGLhecS8Jw==
X-Received: by 2002:a50:9f65:: with SMTP id b92mr15097278edf.63.1572642319403;
        Fri, 01 Nov 2019 14:05:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:fc1a:: with SMTP id ov26ls1450023ejb.13.gmail; Fri,
 01 Nov 2019 14:05:18 -0700 (PDT)
X-Received: by 2002:a17:906:6a06:: with SMTP id o6mr11795688ejr.89.1572642318874;
        Fri, 01 Nov 2019 14:05:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572642318; cv=none;
        d=google.com; s=arc-20160816;
        b=Ezfy53M3FkAdUnWb6YCRILuCyJsebT7KT9iNnCRiEAFalFtEiGbMeNbsIiD+Iv/q9S
         Xr+qH0v0W/dZLCC574UmtmDBzSFpHer9Xqb5Lv4frOiWZpW8Zx4UaWYVQ8JJGQehwdVH
         tN8NsEQulQK2Dpb2LdzqO6PHFqubAIS3IrydhAVefCTP3AS6Qg5fh30/Z65Thi+leZ50
         vWrfV7os/Ll8b42KYkMIz9Wj9Rn9vHkm23EhShXQdk4NBZEwSk3F1qEQkTCHzcwqNiEU
         dGyKnKE9GACJFEXiXXTYAmDgA29mA690PwebQvHkGwgmKxvJtmkphGilvsm3ipztFRAf
         39mA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:message-id:references:in-reply-to:subject:cc:to:from
         :date:content-transfer-encoding:mime-version:dkim-signature;
        bh=tZ0h3EbFObpMXriwNz6TxLUzEv415VpeQRqv5BkyAzM=;
        b=wvpkXzAK39TxeIwyOYY/HJU7+DUx1Yh7tb1634erICN6RIiwUali8KqEJ5aEOiYqqp
         oih5LrA4ZuvirNaZVS+gM5ifUOuQGw/5QWDqLyPH7jMsttUL/J8aKayJygdoxH2j/yXz
         hey2o3ideLwySgPyo+8/rT2PjCAhexUNar/Vjkos2oQXeO2J8SXFz72RFhaU1+ufZ4JS
         9Umd3sqonrWu3HAWu151g9D+0V7+G3KUAGiGIvRt4gIgsZQlBXkSh/BCYAKeshlAsOnY
         f6yDkw25QrtYWWlYcIjikvl48YHld01Dcw2zdJg6dBacFODzQcoJAT0IB5ifi+Ks5uF2
         XTGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b=aZ+jdaP2;
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
Received: from mail.kmu-office.ch (mail.kmu-office.ch. [2a02:418:6a02::a2])
        by gmr-mx.google.com with ESMTPS id c31si580031edb.0.2019.11.01.14.05.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2019 14:05:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) client-ip=2a02:418:6a02::a2;
Received: from webmail.kmu-office.ch (unknown [IPv6:2a02:418:6a02::a3])
	by mail.kmu-office.ch (Postfix) with ESMTPSA id 13B4C5C2BE5;
	Fri,  1 Nov 2019 22:05:18 +0100 (CET)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Fri, 01 Nov 2019 22:05:17 +0100
From: Stefan Agner <stefan@agner.ch>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: linux@armlinux.org.uk, Fangrui Song <maskray@google.com>, Jian Cai
 <jiancai@google.com>, Peter Smith <peter.smith@linaro.org>, Hans Ulli Kroll
 <ulli.kroll@googlemail.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Nicolas Pitre <nico@fluxnic.net>, Enrico
 Weigelt <info@metux.net>, Thomas Gleixner <tglx@linutronix.de>, Roy Franz
 <rfranz@marvell.com>, Linus Walleij <linus.walleij@linaro.org>, Ard
 Biesheuvel <ard.biesheuvel@linaro.org>, Allison Randal
 <allison@lohutok.net>, Richard Fontana <rfontana@redhat.com>, Kate Stewart
 <kstewart@linuxfoundation.org>, Dave Martin <Dave.Martin@arm.com>, Sonny Rao
 <sonnyrao@chromium.org>, Doug Anderson <armlinux@m.disordat.com>, Vladimir
 Murzin <vladimir.murzin@arm.com>, afzal mohammed <afzal.mohd.ma@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
Subject: Re: [PATCH] arm: replace Sun/Solaris style flag on section directive
In-Reply-To: <20191030174429.248697-1-ndesaulniers@google.com>
References: <20191030174429.248697-1-ndesaulniers@google.com>
Message-ID: <fa4e28a9a16c54319916be005159e250@agner.ch>
X-Sender: stefan@agner.ch
User-Agent: Roundcube Webmail/1.3.9
X-Original-Sender: stefan@agner.ch
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@agner.ch header.s=dkim header.b=aZ+jdaP2;       spf=pass
 (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as
 permitted sender) smtp.mailfrom=stefan@agner.ch
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

Hi Nick,

On 2019-10-30 18:44, Nick Desaulniers wrote:
> It looks like a section directive was using "Solaris style" to declare
> the section flags. Replace this with the GNU style so that Clang's
> integrated assembler can assemble this directive.
> 
> The modified instances were identified via:
> $ ag \\.section | grep \#

I actually have the *very same* patch on my tree, just did not cleanup
the commit message and submit :-(

Anyways, this looks good to me:

Reviewed-by: Stefan Agner <stefan@agner.ch>

--
Stefan


> 
> Link:
> https://ftp.gnu.org/old-gnu/Manuals/gas-2.9.1/html_chapter/as_7.html#SEC119
> Link: https://github.com/ClangBuiltLinux/linux/issues/744
> Link: https://bugs.llvm.org/show_bug.cgi?id=43759
> Link: https://reviews.llvm.org/D69296
> Suggested-by: Fangrui Song <maskray@google.com>
> Suggested-by: Jian Cai <jiancai@google.com>
> Suggested-by: Peter Smith <peter.smith@linaro.org>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  arch/arm/boot/bootp/init.S            | 2 +-
>  arch/arm/boot/compressed/big-endian.S | 2 +-
>  arch/arm/boot/compressed/head.S       | 2 +-
>  arch/arm/boot/compressed/piggy.S      | 2 +-
>  arch/arm/mm/proc-arm1020.S            | 2 +-
>  arch/arm/mm/proc-arm1020e.S           | 2 +-
>  arch/arm/mm/proc-arm1022.S            | 2 +-
>  arch/arm/mm/proc-arm1026.S            | 2 +-
>  arch/arm/mm/proc-arm720.S             | 2 +-
>  arch/arm/mm/proc-arm740.S             | 2 +-
>  arch/arm/mm/proc-arm7tdmi.S           | 2 +-
>  arch/arm/mm/proc-arm920.S             | 2 +-
>  arch/arm/mm/proc-arm922.S             | 2 +-
>  arch/arm/mm/proc-arm925.S             | 2 +-
>  arch/arm/mm/proc-arm926.S             | 2 +-
>  arch/arm/mm/proc-arm940.S             | 2 +-
>  arch/arm/mm/proc-arm946.S             | 2 +-
>  arch/arm/mm/proc-arm9tdmi.S           | 2 +-
>  arch/arm/mm/proc-fa526.S              | 2 +-
>  arch/arm/mm/proc-feroceon.S           | 2 +-
>  arch/arm/mm/proc-mohawk.S             | 2 +-
>  arch/arm/mm/proc-sa110.S              | 2 +-
>  arch/arm/mm/proc-sa1100.S             | 2 +-
>  arch/arm/mm/proc-v6.S                 | 2 +-
>  arch/arm/mm/proc-v7.S                 | 2 +-
>  arch/arm/mm/proc-v7m.S                | 4 ++--
>  arch/arm/mm/proc-xsc3.S               | 2 +-
>  arch/arm/mm/proc-xscale.S             | 2 +-
>  28 files changed, 29 insertions(+), 29 deletions(-)
> 
> diff --git a/arch/arm/boot/bootp/init.S b/arch/arm/boot/bootp/init.S
> index 5c476bd2b4ce..b562da2f7040 100644
> --- a/arch/arm/boot/bootp/init.S
> +++ b/arch/arm/boot/bootp/init.S
> @@ -13,7 +13,7 @@
>   *  size immediately following the kernel, we could build this into
>   *  a binary blob, and concatenate the zImage using the cat command.
>   */
> -		.section .start,#alloc,#execinstr
> +		.section .start, "ax"
>  		.type	_start, #function
>  		.globl	_start
>  
> diff --git a/arch/arm/boot/compressed/big-endian.S
> b/arch/arm/boot/compressed/big-endian.S
> index 88e2a88d324b..0e092c36da2f 100644
> --- a/arch/arm/boot/compressed/big-endian.S
> +++ b/arch/arm/boot/compressed/big-endian.S
> @@ -6,7 +6,7 @@
>   *  Author: Nicolas Pitre
>   */
>  
> -	.section ".start", #alloc, #execinstr
> +	.section ".start", "ax"
>  
>  	mrc	p15, 0, r0, c1, c0, 0	@ read control reg
>  	orr	r0, r0, #(1 << 7)	@ enable big endian mode
> diff --git a/arch/arm/boot/compressed/head.S b/arch/arm/boot/compressed/head.S
> index 93dffed0ac6e..15ecad944847 100644
> --- a/arch/arm/boot/compressed/head.S
> +++ b/arch/arm/boot/compressed/head.S
> @@ -140,7 +140,7 @@
>  #endif
>  		.endm
>  
> -		.section ".start", #alloc, #execinstr
> +		.section ".start", "ax"
>  /*
>   * sort out different calling conventions
>   */
> diff --git a/arch/arm/boot/compressed/piggy.S b/arch/arm/boot/compressed/piggy.S
> index 0284f84dcf38..27577644ee72 100644
> --- a/arch/arm/boot/compressed/piggy.S
> +++ b/arch/arm/boot/compressed/piggy.S
> @@ -1,5 +1,5 @@
>  /* SPDX-License-Identifier: GPL-2.0 */
> -	.section .piggydata,#alloc
> +	.section .piggydata, "a"
>  	.globl	input_data
>  input_data:
>  	.incbin	"arch/arm/boot/compressed/piggy_data"
> diff --git a/arch/arm/mm/proc-arm1020.S b/arch/arm/mm/proc-arm1020.S
> index 4fa5371bc662..2785da387c91 100644
> --- a/arch/arm/mm/proc-arm1020.S
> +++ b/arch/arm/mm/proc-arm1020.S
> @@ -491,7 +491,7 @@ cpu_arm1020_name:
>  
>  	.align
>  
> -	.section ".proc.info.init", #alloc
> +	.section ".proc.info.init", "a"
>  
>  	.type	__arm1020_proc_info,#object
>  __arm1020_proc_info:
> diff --git a/arch/arm/mm/proc-arm1020e.S b/arch/arm/mm/proc-arm1020e.S
> index 5d8a8339e09a..e9ea237ed785 100644
> --- a/arch/arm/mm/proc-arm1020e.S
> +++ b/arch/arm/mm/proc-arm1020e.S
> @@ -449,7 +449,7 @@ arm1020e_crval:
>  
>  	.align
>  
> -	.section ".proc.info.init", #alloc
> +	.section ".proc.info.init", "a"
>  
>  	.type	__arm1020e_proc_info,#object
>  __arm1020e_proc_info:
> diff --git a/arch/arm/mm/proc-arm1022.S b/arch/arm/mm/proc-arm1022.S
> index b3dd95c345e4..920c279e7879 100644
> --- a/arch/arm/mm/proc-arm1022.S
> +++ b/arch/arm/mm/proc-arm1022.S
> @@ -443,7 +443,7 @@ arm1022_crval:
>  
>  	.align
>  
> -	.section ".proc.info.init", #alloc
> +	.section ".proc.info.init", "a"
>  
>  	.type	__arm1022_proc_info,#object
>  __arm1022_proc_info:
> diff --git a/arch/arm/mm/proc-arm1026.S b/arch/arm/mm/proc-arm1026.S
> index ac5afde12f35..10e21012380b 100644
> --- a/arch/arm/mm/proc-arm1026.S
> +++ b/arch/arm/mm/proc-arm1026.S
> @@ -437,7 +437,7 @@ arm1026_crval:
>  	string	cpu_arm1026_name, "ARM1026EJ-S"
>  	.align
>  
> -	.section ".proc.info.init", #alloc
> +	.section ".proc.info.init", "a"
>  
>  	.type	__arm1026_proc_info,#object
>  __arm1026_proc_info:
> diff --git a/arch/arm/mm/proc-arm720.S b/arch/arm/mm/proc-arm720.S
> index c99d24363f32..39361e196d61 100644
> --- a/arch/arm/mm/proc-arm720.S
> +++ b/arch/arm/mm/proc-arm720.S
> @@ -172,7 +172,7 @@ arm720_crval:
>   * See <asm/procinfo.h> for a definition of this structure.
>   */
>  
> -		.section ".proc.info.init", #alloc
> +		.section ".proc.info.init", "a"
>  
>  .macro arm720_proc_info name:req, cpu_val:req, cpu_mask:req,
> cpu_name:req, cpu_flush:req
>  		.type	__\name\()_proc_info,#object
> diff --git a/arch/arm/mm/proc-arm740.S b/arch/arm/mm/proc-arm740.S
> index 1b4a3838393f..1a94bbf6e53f 100644
> --- a/arch/arm/mm/proc-arm740.S
> +++ b/arch/arm/mm/proc-arm740.S
> @@ -128,7 +128,7 @@ __arm740_setup:
>  
>  	.align
>  
> -	.section ".proc.info.init", #alloc
> +	.section ".proc.info.init", "a"
>  	.type	__arm740_proc_info,#object
>  __arm740_proc_info:
>  	.long	0x41807400
> diff --git a/arch/arm/mm/proc-arm7tdmi.S b/arch/arm/mm/proc-arm7tdmi.S
> index 17a4687065c7..52b66cf0259e 100644
> --- a/arch/arm/mm/proc-arm7tdmi.S
> +++ b/arch/arm/mm/proc-arm7tdmi.S
> @@ -72,7 +72,7 @@ __arm7tdmi_setup:
>  
>  		.align
>  
> -		.section ".proc.info.init", #alloc
> +		.section ".proc.info.init", "a"
>  
>  .macro arm7tdmi_proc_info name:req, cpu_val:req, cpu_mask:req, cpu_name:req, \
>  	extra_hwcaps=0
> diff --git a/arch/arm/mm/proc-arm920.S b/arch/arm/mm/proc-arm920.S
> index 298c76b47749..31ac8acc34dc 100644
> --- a/arch/arm/mm/proc-arm920.S
> +++ b/arch/arm/mm/proc-arm920.S
> @@ -434,7 +434,7 @@ arm920_crval:
>  
>  	.align
>  
> -	.section ".proc.info.init", #alloc
> +	.section ".proc.info.init", "a"
>  
>  	.type	__arm920_proc_info,#object
>  __arm920_proc_info:
> diff --git a/arch/arm/mm/proc-arm922.S b/arch/arm/mm/proc-arm922.S
> index 824be3a0bc23..ca2c7ca8af21 100644
> --- a/arch/arm/mm/proc-arm922.S
> +++ b/arch/arm/mm/proc-arm922.S
> @@ -412,7 +412,7 @@ arm922_crval:
>  
>  	.align
>  
> -	.section ".proc.info.init", #alloc
> +	.section ".proc.info.init", "a"
>  
>  	.type	__arm922_proc_info,#object
>  __arm922_proc_info:
> diff --git a/arch/arm/mm/proc-arm925.S b/arch/arm/mm/proc-arm925.S
> index d40cff8f102c..a381a0c9f109 100644
> --- a/arch/arm/mm/proc-arm925.S
> +++ b/arch/arm/mm/proc-arm925.S
> @@ -477,7 +477,7 @@ arm925_crval:
>  
>  	.align
>  
> -	.section ".proc.info.init", #alloc
> +	.section ".proc.info.init", "a"
>  
>  .macro arm925_proc_info name:req, cpu_val:req, cpu_mask:req,
> cpu_name:req, cache
>  	.type	__\name\()_proc_info,#object
> diff --git a/arch/arm/mm/proc-arm926.S b/arch/arm/mm/proc-arm926.S
> index f3cd08f353f0..3188ab2bac61 100644
> --- a/arch/arm/mm/proc-arm926.S
> +++ b/arch/arm/mm/proc-arm926.S
> @@ -460,7 +460,7 @@ arm926_crval:
>  
>  	.align
>  
> -	.section ".proc.info.init", #alloc
> +	.section ".proc.info.init", "a"
>  
>  	.type	__arm926_proc_info,#object
>  __arm926_proc_info:
> diff --git a/arch/arm/mm/proc-arm940.S b/arch/arm/mm/proc-arm940.S
> index 1c26d991386d..4b8a00220cc9 100644
> --- a/arch/arm/mm/proc-arm940.S
> +++ b/arch/arm/mm/proc-arm940.S
> @@ -340,7 +340,7 @@ __arm940_setup:
>  
>  	.align
>  
> -	.section ".proc.info.init", #alloc
> +	.section ".proc.info.init", "a"
>  
>  	.type	__arm940_proc_info,#object
>  __arm940_proc_info:
> diff --git a/arch/arm/mm/proc-arm946.S b/arch/arm/mm/proc-arm946.S
> index 2dc1c75a4fd4..555becf9c758 100644
> --- a/arch/arm/mm/proc-arm946.S
> +++ b/arch/arm/mm/proc-arm946.S
> @@ -395,7 +395,7 @@ __arm946_setup:
>  
>  	.align
>  
> -	.section ".proc.info.init", #alloc
> +	.section ".proc.info.init", "a"
>  	.type	__arm946_proc_info,#object
>  __arm946_proc_info:
>  	.long	0x41009460
> diff --git a/arch/arm/mm/proc-arm9tdmi.S b/arch/arm/mm/proc-arm9tdmi.S
> index 913c06e590af..ef517530130b 100644
> --- a/arch/arm/mm/proc-arm9tdmi.S
> +++ b/arch/arm/mm/proc-arm9tdmi.S
> @@ -66,7 +66,7 @@ __arm9tdmi_setup:
>  
>  		.align
>  
> -		.section ".proc.info.init", #alloc
> +		.section ".proc.info.init", "a"
>  
>  .macro arm9tdmi_proc_info name:req, cpu_val:req, cpu_mask:req, cpu_name:req
>  		.type	__\name\()_proc_info, #object
> diff --git a/arch/arm/mm/proc-fa526.S b/arch/arm/mm/proc-fa526.S
> index 8120b6f4dbb8..dddf833fe000 100644
> --- a/arch/arm/mm/proc-fa526.S
> +++ b/arch/arm/mm/proc-fa526.S
> @@ -185,7 +185,7 @@ fa526_cr1_set:
>  
>  	.align
>  
> -	.section ".proc.info.init", #alloc
> +	.section ".proc.info.init", "a"
>  
>  	.type	__fa526_proc_info,#object
>  __fa526_proc_info:
> diff --git a/arch/arm/mm/proc-feroceon.S b/arch/arm/mm/proc-feroceon.S
> index bb6dc34d42a3..b12b76bc8d30 100644
> --- a/arch/arm/mm/proc-feroceon.S
> +++ b/arch/arm/mm/proc-feroceon.S
> @@ -571,7 +571,7 @@ feroceon_crval:
>  
>  	.align
>  
> -	.section ".proc.info.init", #alloc
> +	.section ".proc.info.init", "a"
>  
>  .macro feroceon_proc_info name:req, cpu_val:req, cpu_mask:req,
> cpu_name:req, cache:req
>  	.type	__\name\()_proc_info,#object
> diff --git a/arch/arm/mm/proc-mohawk.S b/arch/arm/mm/proc-mohawk.S
> index f08308578885..d47d6c5cee63 100644
> --- a/arch/arm/mm/proc-mohawk.S
> +++ b/arch/arm/mm/proc-mohawk.S
> @@ -416,7 +416,7 @@ mohawk_crval:
>  
>  	.align
>  
> -	.section ".proc.info.init", #alloc
> +	.section ".proc.info.init", "a"
>  
>  	.type	__88sv331x_proc_info,#object
>  __88sv331x_proc_info:
> diff --git a/arch/arm/mm/proc-sa110.S b/arch/arm/mm/proc-sa110.S
> index d5bc5d702563..baba503ba816 100644
> --- a/arch/arm/mm/proc-sa110.S
> +++ b/arch/arm/mm/proc-sa110.S
> @@ -196,7 +196,7 @@ sa110_crval:
>  
>  	.align
>  
> -	.section ".proc.info.init", #alloc
> +	.section ".proc.info.init", "a"
>  
>  	.type	__sa110_proc_info,#object
>  __sa110_proc_info:
> diff --git a/arch/arm/mm/proc-sa1100.S b/arch/arm/mm/proc-sa1100.S
> index be7b611c76c7..75ebacc8e4e5 100644
> --- a/arch/arm/mm/proc-sa1100.S
> +++ b/arch/arm/mm/proc-sa1100.S
> @@ -239,7 +239,7 @@ sa1100_crval:
>  
>  	.align
>  
> -	.section ".proc.info.init", #alloc
> +	.section ".proc.info.init", "a"
>  
>  .macro sa1100_proc_info name:req, cpu_val:req, cpu_mask:req, cpu_name:req
>  	.type	__\name\()_proc_info,#object
> diff --git a/arch/arm/mm/proc-v6.S b/arch/arm/mm/proc-v6.S
> index c1c85eb3484f..1dd0d5ca27da 100644
> --- a/arch/arm/mm/proc-v6.S
> +++ b/arch/arm/mm/proc-v6.S
> @@ -261,7 +261,7 @@ v6_crval:
>  	string	cpu_elf_name, "v6"
>  	.align
>  
> -	.section ".proc.info.init", #alloc
> +	.section ".proc.info.init", "a"
>  
>  	/*
>  	 * Match any ARMv6 processor core.
> diff --git a/arch/arm/mm/proc-v7.S b/arch/arm/mm/proc-v7.S
> index c4e8006a1a8c..48e0ef6f0dcc 100644
> --- a/arch/arm/mm/proc-v7.S
> +++ b/arch/arm/mm/proc-v7.S
> @@ -644,7 +644,7 @@ __v7_setup_stack:
>  	string	cpu_elf_name, "v7"
>  	.align
>  
> -	.section ".proc.info.init", #alloc
> +	.section ".proc.info.init", "a"
>  
>  	/*
>  	 * Standard v7 proc info content
> diff --git a/arch/arm/mm/proc-v7m.S b/arch/arm/mm/proc-v7m.S
> index 1a49d503eafc..84459c1d31b8 100644
> --- a/arch/arm/mm/proc-v7m.S
> +++ b/arch/arm/mm/proc-v7m.S
> @@ -93,7 +93,7 @@ ENTRY(cpu_cm7_proc_fin)
>  	ret	lr
>  ENDPROC(cpu_cm7_proc_fin)
>  
> -	.section ".init.text", #alloc, #execinstr
> +	.section ".init.text", "ax"
>  
>  __v7m_cm7_setup:
>  	mov	r8, #(V7M_SCB_CCR_DC | V7M_SCB_CCR_IC| V7M_SCB_CCR_BP)
> @@ -177,7 +177,7 @@ ENDPROC(__v7m_setup)
>  	string cpu_elf_name "v7m"
>  	string cpu_v7m_name "ARMv7-M"
>  
> -	.section ".proc.info.init", #alloc
> +	.section ".proc.info.init", "a"
>  
>  .macro __v7m_proc name, initfunc, cache_fns = nop_cache_fns, hwcaps =
> 0,  proc_fns = v7m_processor_functions
>  	.long	0			/* proc_info_list.__cpu_mm_mmu_flags */
> diff --git a/arch/arm/mm/proc-xsc3.S b/arch/arm/mm/proc-xsc3.S
> index 1ac0fbbe9f12..42eaecc43cfe 100644
> --- a/arch/arm/mm/proc-xsc3.S
> +++ b/arch/arm/mm/proc-xsc3.S
> @@ -496,7 +496,7 @@ xsc3_crval:
>  
>  	.align
>  
> -	.section ".proc.info.init", #alloc
> +	.section ".proc.info.init", "a"
>  
>  .macro xsc3_proc_info name:req, cpu_val:req, cpu_mask:req
>  	.type	__\name\()_proc_info,#object
> diff --git a/arch/arm/mm/proc-xscale.S b/arch/arm/mm/proc-xscale.S
> index bdb2b7749b03..18ac5a1f8922 100644
> --- a/arch/arm/mm/proc-xscale.S
> +++ b/arch/arm/mm/proc-xscale.S
> @@ -610,7 +610,7 @@ xscale_crval:
>  
>  	.align
>  
> -	.section ".proc.info.init", #alloc
> +	.section ".proc.info.init", "a"
>  
>  .macro xscale_proc_info name:req, cpu_val:req, cpu_mask:req,
> cpu_name:req, cache
>  	.type	__\name\()_proc_info,#object

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/fa4e28a9a16c54319916be005159e250%40agner.ch.
