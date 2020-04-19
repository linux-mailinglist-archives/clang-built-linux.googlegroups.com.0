Return-Path: <clang-built-linux+bncBCSPV64IYUKBB7NU6H2AKGQEPR5OJLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-f56.google.com (mail-wr1-f56.google.com [209.85.221.56])
	by mail.lfdr.de (Postfix) with ESMTPS id 049C61AFB11
	for <lists+clang-built-linux@lfdr.de>; Sun, 19 Apr 2020 16:04:46 +0200 (CEST)
Received: by mail-wr1-f56.google.com with SMTP id x15sf2085008wrn.0
        for <lists+clang-built-linux@lfdr.de>; Sun, 19 Apr 2020 07:04:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587305085; cv=pass;
        d=google.com; s=arc-20160816;
        b=bx5rG6ifW5Bc6U5ZaTObOBJkIdz/QOQFhvrMne+O7bDqtC8sW2gGEbBcZmWOuLgW0k
         rk9TycWcSc2N9i5i5NZIwIe9PcdyvUrjCi7qKlolCRpEwlNpZubi/iNKQySNjw731HpX
         i6zGRZDOjnoC8JDhrj4uWRVjseeBXg6PjmVUODsXBEM99MJmXaztJUTcBu7jCtkLdtIr
         uuIK64Dtca8hEK19axPOI6Zf9m976mO0FKl0HZ/tttnlzz8kh0FQ5ESUP1Gbdag7mTa1
         /OjXJhfnq5OFMnmKLoVMlqCnNCO+omJ2vhL8dBlwvr9+hkUXiEmGlwaCQGD0/tcdTuU3
         W5Wg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:sender:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=C4ntdZ/Io8l34spLsViRajzDuIG9XkZ3FgaS4jrtnEc=;
        b=GYcC0UxklJwCpxyNNLWw2M0OmGvJQq1GWaHSmzr6hISVmfccIGqLqwW7AFy7d1EhFB
         IvUf31rGS/6dqHJbKm3OPSX3BvFmhW3n7Kgqlv8rYAMayk8p9r7BYqZl8hC1ttDhtcip
         GtOcm8ai9VzX6IzPNuL45wuk7OIj9YZuFUO5TaTF4ofhswn6AQyGLWb7a+owHrLPo0h7
         BQUr4kPrGxdsCy5/PxZy3dKy+ooDkkJZgRj2DLEE6umgtMmI93Pr5RTZ/rd7sulZtmqo
         oE/4ALedb7MS0DPRqS5vzTgfMb8yIB/rM7fCvKRW9EKBOMtuFxI5RdBhNt8JMlaVTGTX
         5vUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=ZkVSLJiv;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent:sender
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=C4ntdZ/Io8l34spLsViRajzDuIG9XkZ3FgaS4jrtnEc=;
        b=q2WOpODJI8wZNyzkjheQjTpav4AdSW+AnijqpRB4MQlGE9XkqLcmyYZA+E7M7FsURJ
         N0VMHmRHE4advSwqMEREf7cehgSvTaHGrrggul2B/ZuCWfhN6hEASbNqz1Is7BUCFpPL
         i8TxdwUzF8qzCbfkMEoKwVNlAKi8xuzog80hhPWZsQ1Win9PSwtAmhFso1y6uusXPUGn
         3s33MCyP2/1TTnwoiz9rdOkA4L9EfHE+YJBhWqiieNYtKbmFjn3yDx8Q/Q9hLM0j4Cpu
         0A8T+AD7sTHQ1FkZmEX0gTqlft2ZaqStnYNN8p+BXZ6aA8mdnw0aYP3WIYBrDrLpLewC
         RPVg==
X-Gm-Message-State: AGi0PuaP6Kk/PSI8nOPKwATG1Uuc9kRNDP8J697OsHKNhm31GqYDYb6J
	su5rc1mcFm+l1pLoGDKuNMk=
X-Google-Smtp-Source: APiQypJ8L2pPA5emoEk2WGtqfBqdBu2r1fejSa0ys3J6Ywg230Gp/q6va/42Rik+1jWP6hGHm2Q8CQ==
X-Received: by 2002:adf:fed2:: with SMTP id q18mr6311985wrs.157.1587305085637;
        Sun, 19 Apr 2020 07:04:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:a915:: with SMTP id s21ls11200760wme.0.gmail; Sun, 19
 Apr 2020 07:04:45 -0700 (PDT)
X-Received: by 2002:a1c:4946:: with SMTP id w67mr13342491wma.38.1587305085070;
        Sun, 19 Apr 2020 07:04:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587305085; cv=none;
        d=google.com; s=arc-20160816;
        b=JLoP26+hRh+st/8QZOitCQs4xCvsSDjQMfT1koSEf+TTJY795+75d2F75VXVhMoJis
         vZYM7pnoZOSTQwlT2OsDiI9Cd9MjSuwLTmdB0q82Zi+K6RZnAgMotEsSoNbg4ZTqFJSl
         UDR62a82TpoM+DcBRaSLnee3kpNW+3LbJAU7JaPZT+AifVBQwBLlNykW6UZPWv4BohVO
         lC1vJZza05F9p85BwDhRw2TlX794hWKbJOD98+/TGB0i74q45Qt2JnGELyxO7TqOyFhI
         vtq2DSMmWtx7V9TOjrunwiyKNuBaYZ+AeF0AKrQ9NzcO5+/A3s57ZmSmf1JRIGQWKo33
         +9kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=sender:user-agent:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:dkim-signature;
        bh=+SHhJHEC/GWthRFPTaIGWJDgkO5X8ypn4Dz5ktkP734=;
        b=lv0B8iWYI9ZKskM91Mb0IIAiOfIL6eY2aB4xD2+qF5Q9wCeOOpTV2OpdakU/a+fU2a
         iAp8ohNxuUV+RqUrxEStVXHaoj/yXHLhPEu2pOKOr5DMJTP/pkMsWiffHs6PhiDmiY3l
         mHAHlJxl5+lwEBVJ8GPe2qrpbuCVu7GhCp1TeT6RXEkMeYilNd66lnPx/OEutDch4U++
         zzIwCwi2WbxRlPRFaZFN0CIwJLyvkAG5+jxQmpRUJm45wMwvtdapXWk1GTltLr1WuGnq
         /COyoxpMkRbwpuMdKLOnPs7YccWId4md3QsmiA049LxwQmKL0k2iQzbwJJH6kt4/nKvY
         Qlnw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=ZkVSLJiv;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk. [2001:4d48:ad52:3201:214:fdff:fe10:1be6])
        by gmr-mx.google.com with ESMTPS id x11si692162wmi.1.2020.04.19.07.04.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Apr 2020 07:04:45 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender) client-ip=2001:4d48:ad52:3201:214:fdff:fe10:1be6;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:52180)
	by pandora.armlinux.org.uk with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.90_1)
	(envelope-from <linux@armlinux.org.uk>)
	id 1jQAYX-0005xJ-0N; Sun, 19 Apr 2020 15:04:27 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1jQAYR-0004tQ-G4; Sun, 19 Apr 2020 15:04:15 +0100
Date: Sun, 19 Apr 2020 15:04:15 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Stefan Agner <stefan@agner.ch>
Cc: arnd@arndb.de, ard.biesheuvel@linaro.org, robin.murphy@arm.com,
	yamada.masahiro@socionext.com, ndesaulniers@google.com,
	manojgupta@google.com, jiancai@google.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2 1/3] ARM: use .fpu assembler directives instead of
 assembler arguments
Message-ID: <20200419140415.GW25745@shell.armlinux.org.uk>
References: <cover.1587299429.git.stefan@agner.ch>
 <a78f7e5820a6b827c9d68362a94dcbf80a317dc9.1587299429.git.stefan@agner.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <a78f7e5820a6b827c9d68362a94dcbf80a317dc9.1587299429.git.stefan@agner.ch>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-Original-Sender: linux@armlinux.org.uk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass (test
 mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=ZkVSLJiv;
       spf=pass (google.com: best guess record for domain of
 linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates
 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender)
 smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
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

On Sun, Apr 19, 2020 at 02:35:49PM +0200, Stefan Agner wrote:
> Explicit FPU selection has been introduced in commit 1a6be26d5b1a
> ("[ARM] Enable VFP to be built when non-VFP capable CPUs are selected")
> to make use of assembler mnemonics for VFP instructions.
> 
> However, clang currently does not support passing assembler flags
> like this and errors out with:
> clang-10: error: the clang compiler does not support '-Wa,-mfpu=softvfp+vfp'
> 
> Make use of the .fpu assembler directives to select the floating point
> hardware selectively. Also use the new unified assembler language
> mnemonics. This allows to build these procedures with Clang.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/762
> Signed-off-by: Stefan Agner <stefan@agner.ch>
> ---
> Changes in v2:
> - Add link in commit message
> 
>  arch/arm/vfp/Makefile |  2 --
>  arch/arm/vfp/vfphw.S  | 30 +++++++++++++++++++-----------
>  2 files changed, 19 insertions(+), 13 deletions(-)
> 
> diff --git a/arch/arm/vfp/Makefile b/arch/arm/vfp/Makefile
> index 9975b63ac3b0..749901a72d6d 100644
> --- a/arch/arm/vfp/Makefile
> +++ b/arch/arm/vfp/Makefile
> @@ -8,6 +8,4 @@
>  # ccflags-y := -DDEBUG
>  # asflags-y := -DDEBUG
>  
> -KBUILD_AFLAGS	:=$(KBUILD_AFLAGS:-msoft-float=-Wa,-mfpu=softvfp+vfp -mfloat-abi=soft)
> -
>  obj-y		+= vfpmodule.o entry.o vfphw.o vfpsingle.o vfpdouble.o
> diff --git a/arch/arm/vfp/vfphw.S b/arch/arm/vfp/vfphw.S
> index b2e560290860..e214007a20a2 100644
> --- a/arch/arm/vfp/vfphw.S
> +++ b/arch/arm/vfp/vfphw.S
> @@ -258,11 +258,13 @@ vfp_current_hw_state_address:
>  
>  ENTRY(vfp_get_float)
>  	tbl_branch r0, r3, #3
> -	.irp	dr,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15
> -1:	mrc	p10, 0, r0, c\dr, c0, 0	@ fmrs	r0, s0
> +	.irp	dr,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,

Apart from the extraneous comma above, this looks fine, thanks.

> +1:	vmov	r0, s\dr
>  	ret	lr
>  	.org	1b + 8
> -1:	mrc	p10, 0, r0, c\dr, c0, 4	@ fmrs	r0, s1
> +	.endr
> +	.irp	dr,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
> +1:	vmov	r0, s\dr
>  	ret	lr
>  	.org	1b + 8
>  	.endr
> @@ -271,10 +273,12 @@ ENDPROC(vfp_get_float)
>  ENTRY(vfp_put_float)
>  	tbl_branch r1, r3, #3
>  	.irp	dr,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15
> -1:	mcr	p10, 0, r0, c\dr, c0, 0	@ fmsr	r0, s0
> +1:	vmov	s\dr, r0
>  	ret	lr
>  	.org	1b + 8
> -1:	mcr	p10, 0, r0, c\dr, c0, 4	@ fmsr	r0, s1
> +	.endr
> +	.irp	dr,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
> +1:	vmov	s\dr, r0
>  	ret	lr
>  	.org	1b + 8
>  	.endr
> @@ -282,15 +286,17 @@ ENDPROC(vfp_put_float)
>  
>  ENTRY(vfp_get_double)
>  	tbl_branch r0, r3, #3
> +	.fpu	vfpv2
>  	.irp	dr,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15
> -1:	fmrrd	r0, r1, d\dr
> +1:	vmov	r0, r1, d\dr
>  	ret	lr
>  	.org	1b + 8
>  	.endr
>  #ifdef CONFIG_VFPv3
>  	@ d16 - d31 registers
> -	.irp	dr,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15
> -1:	mrrc	p11, 3, r0, r1, c\dr	@ fmrrd	r0, r1, d\dr
> +	.fpu	vfpv3
> +	.irp	dr,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
> +1:	vmov	r0, r1, d\dr
>  	ret	lr
>  	.org	1b + 8
>  	.endr
> @@ -304,15 +310,17 @@ ENDPROC(vfp_get_double)
>  
>  ENTRY(vfp_put_double)
>  	tbl_branch r2, r3, #3
> +	.fpu	vfpv2
>  	.irp	dr,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15
> -1:	fmdrr	d\dr, r0, r1
> +1:	vmov	d\dr, r0, r1
>  	ret	lr
>  	.org	1b + 8
>  	.endr
>  #ifdef CONFIG_VFPv3
> +	.fpu	vfpv3
>  	@ d16 - d31 registers
> -	.irp	dr,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15
> -1:	mcrr	p11, 3, r0, r1, c\dr	@ fmdrr	r0, r1, d\dr
> +	.irp	dr,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
> +1:	vmov	d\dr, r0, r1
>  	ret	lr
>  	.org	1b + 8
>  	.endr
> -- 
> 2.25.1
> 
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200419140415.GW25745%40shell.armlinux.org.uk.
