Return-Path: <clang-built-linux+bncBCSPV64IYUKBBP626LWQKGQEEDSOZAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-f186.google.com (mail-lj1-f186.google.com [209.85.208.186])
	by mail.lfdr.de (Postfix) with ESMTPS id A5BF9ECAE1
	for <lists+clang-built-linux@lfdr.de>; Fri,  1 Nov 2019 23:10:07 +0100 (CET)
Received: by mail-lj1-f186.google.com with SMTP id 62sf2048091ljj.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 01 Nov 2019 15:10:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572646207; cv=pass;
        d=google.com; s=arc-20160816;
        b=nPJI9Fx8NWNZGmPFt35zekQ6Kz8hY1CbH6Z8TkGO7ElUq2wneu6lrne79e83CIaaAb
         6IoFTCCCTp/XoqQj+3Y4FIRbtvAoZW8UDyDLgAMXqJYVm67SRFohiTrieG3M4I/4BbTn
         HkiVyIpjDgXjxsNfJfvu7yWwu9wuGQ/iD0sGGBYBuCMB4GQY+gu1tT5qwUfIOmg6oRL6
         tS//bRI4o/FAh9lC5r7bvl5lnGnIzqyPLCF0Gy0l6eGTy1QLBZKgMaEb8KWjjQ2rn8ZU
         HlwgoU93meBHLCzUhtK+KhsmpBtRFbAsOXH0zZYt1Md5DKxVsCjpuWGWreHkeN+h5ywA
         V49Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:sender:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=tn+OJHBk2AcstGFOhmMa2QBQ7ug7nPUwLz2qf/cC+nc=;
        b=lgscXh9b5kPSpI/AARkCJSVYhViQgs5wmSmHi7lRKRJUmDEHdWyB7TAROiBAL1VVK0
         JTEg2RYXFqDwzUrjWZRKMNCMMs2e8h0pln+VlrwWq6HXkHhBNVn3b5n0SNXImk/tDER1
         PVk6tU6vCIPH8ygmMbLDzwNLUbabKiJ1E4b5DTWBeKtgjAauYLaLL8Pp20KMLpgDRFuA
         yE5RL/7TJ07nNHtG5smBSiDxunAWuiPico2KIQu8ylDXnSkc0i8JLRy0VRQGzcM9oJMD
         vuzByW/frLZKwe8Mx4EDPK+Qb/P8K5IUxMCNkgfkL7ogsFAYSkf1HeV6RzJ2VPIdijfv
         qCMA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=hZXZMeFo;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent:sender
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=tn+OJHBk2AcstGFOhmMa2QBQ7ug7nPUwLz2qf/cC+nc=;
        b=TEyvCPYEtzlfTQmRlK+RNKHiKxKLQsxcQhyxOl8Jndgxadhj/zUQtAwn1LeQVL9QJx
         SjBXT0seibOXI35DvdJvChzUlueCKPLsnY1QVgDYezTZt7SJSlddSv+yQL1jmUIVxJuS
         PDazzhlrFsWKU4Kn56BK3BdKbGnjZ9AvLnj8SM+RCzZx8GwS1Ug5uvIfMxf00jiqph6L
         3k6zxwSpTkHEZcRY0UEZhS3hIq3VpOFCWbuK+vMWJkecArv38luqkcwbkrWSoMTFBv3b
         msNnyB8e8SnMG0I3Me7BiWbhs3sxWpLy/MyIU++3fu8O6Lz/lvmmw6BDzZxGPAo3Rb0z
         qeIA==
X-Gm-Message-State: APjAAAUvwMocRRFwUpQjdkoHTwS1tglKqHV/BW9HEh6zdigEPxvKaAXo
	W8NiAI3W2pswwYXmXFPxRVs=
X-Google-Smtp-Source: APXvYqzkglF5ciA56W/ol1/bf0T1sR+WFmEwFemgnAk1aonxyXy1/XhF4i0t+btnZ9LjbwZhMBrIJw==
X-Received: by 2002:a05:6512:21e:: with SMTP id a30mr8519865lfo.175.1572646207165;
        Fri, 01 Nov 2019 15:10:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:289:: with SMTP id b9ls537817ljo.10.gmail; Fri, 01
 Nov 2019 15:10:06 -0700 (PDT)
X-Received: by 2002:a2e:8604:: with SMTP id a4mr9768934lji.89.1572646206307;
        Fri, 01 Nov 2019 15:10:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572646206; cv=none;
        d=google.com; s=arc-20160816;
        b=A7vY2L/4G8DXNHyC6MewzOSvYm70Dt57InVJksUVnQ8A+tulB/451SrCgKgF7kE3sa
         zWF1r8AbaEjQ6GxA7w73TvzGQkpBSPBzrHvyhGxI9Qx3Pz5qGdfOBmpC1Hx9Shx1qBSf
         Zrhd/2NdvXx4DbQLOjjyfuvtWNfkZJTm9dEXefyfZFMbOpCsQ+MqZHqitKp23uECEVRE
         +c5Eumip41bBkPESVaLAbry2zH4Qrr+NDT5EdyskuC2i7j6xxLLL3OVaNbVhv5qVKO46
         dviV9VVLcJlTy/aehpUkYYyi3dxrDilmIj7ewHnSn2ebmFv+SIjvN0wbT3Ugk+NgSH/R
         o7Zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=sender:user-agent:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:dkim-signature;
        bh=UZ+SaEOWnCzvDrxTX6AG9Wwn8agTsJsGJeEc8woNULI=;
        b=VlaiROHnN7xKtm+aV1dp6MBO/IWTZzQmj7vevYi9lKznIQzzr9dzbuJDuHhdMir+xe
         lnWyqvxscIeqrRNUKkn8NfTBwxb8IG5cFGS5D6Q76mE6ACsJMSrG+5SBDb8wgWQ5ygaD
         SC7DlrrpJ2oZg02Z1yyg+a7CCWjKqYy5QCb4o/PUHlOSgghgCABlNDW8xEfLOPiZveHh
         ouieX8QSVs2UkgLjb/C0yd2PUEyGNKsMMZPQdIuBQuBHfu5OEkaHh8uDr65WPL6TwSDD
         8apsrd0fCDZpiAKRw7xE4P6bJND22K+TnuXWQgr7xe4JGVhE0in0G4mJB56r0VgWoL1Z
         2hvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=hZXZMeFo;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk. [2001:4d48:ad52:3201:214:fdff:fe10:1be6])
        by gmr-mx.google.com with ESMTPS id z3si575252lfe.4.2019.11.01.15.10.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Nov 2019 15:10:06 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender) client-ip=2001:4d48:ad52:3201:214:fdff:fe10:1be6;
Received: from shell.armlinux.org.uk ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:58018)
	by pandora.armlinux.org.uk with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.90_1)
	(envelope-from <linux@armlinux.org.uk>)
	id 1iQf71-0007UG-3j; Fri, 01 Nov 2019 22:09:43 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1iQf6x-0007vG-Dj; Fri, 01 Nov 2019 22:09:39 +0000
Date: Fri, 1 Nov 2019 22:09:39 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Stefan Agner <stefan@agner.ch>
Cc: ndesaulniers@google.com, nico@fluxnic.net, rfranz@marvell.com,
	linus.walleij@linaro.org, ard.biesheuvel@linaro.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] ARM: use APSR_nzcv instead of r15 as mrc operand
Message-ID: <20191101220939.GK25745@shell.armlinux.org.uk>
References: <472f8bd1f000f45343cc0c66a26380fe4b532147.1572644664.git.stefan@agner.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <472f8bd1f000f45343cc0c66a26380fe4b532147.1572644664.git.stefan@agner.ch>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-Original-Sender: linux@armlinux.org.uk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass (test
 mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=hZXZMeFo;
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

On Fri, Nov 01, 2019 at 10:47:58PM +0100, Stefan Agner wrote:
> LLVM's integrated assembler does not accept r15 as mrc operand.
>   arch/arm/boot/compressed/head.S:1267:16: error: operand must be a register in range [r0, r14] or apsr_nzcv
>   1: mrc p15, 0, r15, c7, c14, 3 @ test,clean,invalidate D cache
>                  ^
> 
> Use APSR_nzcv instead of r15. The GNU assembler supports this
> syntax since binutils 2.21 [0].
> 
> [0] https://sourceware.org/git/gitweb.cgi?p=binutils-gdb.git;a=commit;h=db472d6ff0f438a21b357249a9b48e4b74498076
> 
> Signed-off-by: Stefan Agner <stefan@agner.ch>

Looks fine, please put it in the patch system; however, please note
that I've been tweaking the patch system over the last week (mainly
with the database, which has impacted almost everything) so there
may be issues that I've not yet found...

Thanks.

> ---
>  arch/arm/boot/compressed/head.S | 2 +-
>  arch/arm/mm/proc-arm1026.S      | 4 ++--
>  arch/arm/mm/proc-arm926.S       | 4 ++--
>  3 files changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm/boot/compressed/head.S b/arch/arm/boot/compressed/head.S
> index 15ecad944847..ead21e5f2b80 100644
> --- a/arch/arm/boot/compressed/head.S
> +++ b/arch/arm/boot/compressed/head.S
> @@ -1273,7 +1273,7 @@ iflush:
>  __armv5tej_mmu_cache_flush:
>  		tst	r4, #1
>  		movne	pc, lr
> -1:		mrc	p15, 0, r15, c7, c14, 3	@ test,clean,invalidate D cache
> +1:		mrc	p15, 0, APSR_nzcv, c7, c14, 3	@ test,clean,invalidate D cache
>  		bne	1b
>  		mcr	p15, 0, r0, c7, c5, 0	@ flush I cache
>  		mcr	p15, 0, r0, c7, c10, 4	@ drain WB
> diff --git a/arch/arm/mm/proc-arm1026.S b/arch/arm/mm/proc-arm1026.S
> index 10e21012380b..0bdf25a95b10 100644
> --- a/arch/arm/mm/proc-arm1026.S
> +++ b/arch/arm/mm/proc-arm1026.S
> @@ -138,7 +138,7 @@ ENTRY(arm1026_flush_kern_cache_all)
>  	mov	ip, #0
>  __flush_whole_cache:
>  #ifndef CONFIG_CPU_DCACHE_DISABLE
> -1:	mrc	p15, 0, r15, c7, c14, 3		@ test, clean, invalidate
> +1:	mrc	p15, 0, APSR_nzcv, c7, c14, 3		@ test, clean, invalidate
>  	bne	1b
>  #endif
>  	tst	r2, #VM_EXEC
> @@ -363,7 +363,7 @@ ENTRY(cpu_arm1026_switch_mm)
>  #ifdef CONFIG_MMU
>  	mov	r1, #0
>  #ifndef CONFIG_CPU_DCACHE_DISABLE
> -1:	mrc	p15, 0, r15, c7, c14, 3		@ test, clean, invalidate
> +1:	mrc	p15, 0, APSR_nzcv, c7, c14, 3		@ test, clean, invalidate
>  	bne	1b
>  #endif
>  #ifndef CONFIG_CPU_ICACHE_DISABLE
> diff --git a/arch/arm/mm/proc-arm926.S b/arch/arm/mm/proc-arm926.S
> index 3188ab2bac61..1ba253c2bce1 100644
> --- a/arch/arm/mm/proc-arm926.S
> +++ b/arch/arm/mm/proc-arm926.S
> @@ -131,7 +131,7 @@ __flush_whole_cache:
>  #ifdef CONFIG_CPU_DCACHE_WRITETHROUGH
>  	mcr	p15, 0, ip, c7, c6, 0		@ invalidate D cache
>  #else
> -1:	mrc	p15, 0, r15, c7, c14, 3 	@ test,clean,invalidate
> +1:	mrc	p15, 0, APSR_nzcv, c7, c14, 3 	@ test,clean,invalidate
>  	bne	1b
>  #endif
>  	tst	r2, #VM_EXEC
> @@ -358,7 +358,7 @@ ENTRY(cpu_arm926_switch_mm)
>  	mcr	p15, 0, ip, c7, c6, 0		@ invalidate D cache
>  #else
>  @ && 'Clean & Invalidate whole DCache'
> -1:	mrc	p15, 0, r15, c7, c14, 3 	@ test,clean,invalidate
> +1:	mrc	p15, 0, APSR_nzcv, c7, c14, 3 	@ test,clean,invalidate
>  	bne	1b
>  #endif
>  	mcr	p15, 0, ip, c7, c5, 0		@ invalidate I cache
> -- 
> 2.23.0
> 
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191101220939.GK25745%40shell.armlinux.org.uk.
