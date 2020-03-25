Return-Path: <clang-built-linux+bncBCXKBPVPXAFRBG4M5PZQKGQE4B34CMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-f60.google.com (mail-lf1-f60.google.com [209.85.167.60])
	by mail.lfdr.de (Postfix) with ESMTPS id CF287191F69
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Mar 2020 03:46:51 +0100 (CET)
Received: by mail-lf1-f60.google.com with SMTP id u11sf246923lff.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 19:46:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585104411; cv=pass;
        d=google.com; s=arc-20160816;
        b=J7Ip8SLyNc3qNlaXsVOjrt9Ecgq2ZjTkx3HXGOZWGR0dZpyPCBUWAmP4d43Diqay3M
         TfyXWSa7E+qfLrEdLyF9QHOUM3RzUSTjTrUYFHRHGPvvhHggdHKAdZtoKw/KzHSe7ciQ
         I06jXvInWJWWN51NSxMzidCabWND9CveMBmSsRRx50n2w+MPXJdxwb66OpNApJUU6vIi
         FroYvc9vTIz2d5Es0X5KQxS6NM7FjsLtPQMm9/1rsB8g/wh+0BjpSOOGBUib6tsorF7V
         UsFfik73PO+6Y015GHZRvaWkLI4MmYcp7SBOmiIfhNUSzaGIaZgl0x5wGCf8rMVY5h5x
         FNEw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:sender:date;
        bh=kjmBYYV3ljb5bBLneSb2k6EFdOhstx+Z1gOXe8mZeu8=;
        b=AfXIYbtwEmRuUJZCJrCN6Ily1iLAeTTRjqq4FU3k2WjGMEjnC9KQ5SElnXh3m+l/Ph
         1yYkkXl6jkEZoJCIolFwxxd+pK27RMLVU+eS2K1bBU7uEXw2sfqzlqQGWRgdr/A5SCCJ
         W5bBXVMR2CmKGX287Sv4rAyh1u7agSRvsC1g8W5OAT4U8jbffLmrX1CkMvdtRazdOYqm
         oQCU8MpD7zltpoqyi/kbEtYxckw1v1JrYpUEF4qssXv6lPI9jc1aL5tha5Gn3etn7pvA
         C63senki5EdhLgxCf9yCLuRCiDkpdEvPatZDvQW89YvczJboDo5eb2oWJGPTYCdkoF77
         lN6g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of macro@linux-mips.org designates 148.251.95.138 as permitted sender) smtp.mailfrom=macro@linux-mips.org
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:sender:from:to:cc:subject:in-reply-to
         :message-id:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kjmBYYV3ljb5bBLneSb2k6EFdOhstx+Z1gOXe8mZeu8=;
        b=k4VpfjKmZj+YiUI3iQ9N7W0j0EQwziX9+E8aNXo/eveRAWfKCwFk4fQKxlU2wrQsFm
         9LjEa+Vlz42bTIWrsl/ugYRpSxDj0sQkEBG1wh0xFc1xSzGu53pBMFrxRDu2RnTakWFi
         A3tvhldGfWYDGrTn73XollCPtDNkquG3KLL9a8aeJechbaqW/2Aj3NkXU9Fx36tNh5pf
         UVe8nV7ZmlBIASjYEKOkNyHDY9qCPMolb2aEuut0t90A+RL3/P5Uvp8w/3obi4/XINnK
         c7887GjYtbu2PXeAS4YlCGHLmM27UkyrONo+MOVqPofxnFbKfsLEFBjgbpQA+XF3gw0P
         KC8w==
X-Gm-Message-State: ANhLgQ2rI7ETNfGjktxVfikKNh5AyO2hEHetEx999PZhWTT9fU2l2Pbl
	C+ehFr4uaNTdhFK3Atl3LbQ=
X-Google-Smtp-Source: ADFU+vsDDSDG01xvH+yegxIRmusc8WiHXF6rNzhLEtxg3gruKhTje7dhf9Axo6cx9rD2hklqSHy9qQ==
X-Received: by 2002:a05:6512:407:: with SMTP id u7mr713269lfk.36.1585104411323;
        Tue, 24 Mar 2020 19:46:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:10c2:: with SMTP id k2ls62884lfg.9.gmail; Tue, 24
 Mar 2020 19:46:50 -0700 (PDT)
X-Received: by 2002:ac2:4201:: with SMTP id y1mr733827lfh.92.1585104410575;
        Tue, 24 Mar 2020 19:46:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585104410; cv=none;
        d=google.com; s=arc-20160816;
        b=kjnddyy7uxWx0YgtJHaVtrgjMBMaNem8klizoI6CoqAbLUIfhTmKV91/TcMTh53J91
         Vbw/8+dRA8JNI3jpOMKcxqVYck6DUMxlndSSqUrsuCvg5HevP1FCix15H/efV75Ud/Zr
         mTP7eTiW0VPPwIJSMfAjJx8vaTpbOHP1q6j29OxcsHrRz/ir00/G6AGioaA5S0Besb+v
         jd2FbVf3y+vL+dcCbpzQ10J0IfkTvSasQyMKFhcYr2A5lwTaFpDfDaN0LISV17860nZZ
         bDHJbvcpaWNLsqAuTjt9OsOdPLS9ofr1kmW54bcf4DYixxTEsGNYns79RTCa5iUGEgNZ
         mTyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :sender:date;
        bh=RnuuT6Wo29ZN8ZOm9y1Uszg6/KylcQjz+iCyW0bBRII=;
        b=BpmNjZS+g4z3VXFMs6mIV7Lur7NeTXV5VcbpSHM5luW/I4uAWU01t8qE3FawZBUi2c
         8DJVth62JsdslmJ3xOPN57k3tGiHTPtUeQe7E/x5t8DBSKHLDWuqG7rY/pdsrNo4NXCp
         xSBvsMelNPNUpcSGBGqjJboUHdqXxC1bv/7ocLNZwp+4aGqqvUvZyp37sQ0u13lnfWTn
         b7/cIsDtfIB2WYaa1sYCg8mO89TOoHyTJu4seVSg9emuYu4YIZDw4wOQMZy4HDRNaDEX
         Dc6OqWZ3ta9IZhVwD6EUsfBnnvItbM4x61MliWU+lu0vwWgsfa6YfC8DEugQfy2c/CW6
         8jgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of macro@linux-mips.org designates 148.251.95.138 as permitted sender) smtp.mailfrom=macro@linux-mips.org
Received: from cvs.linux-mips.org (eddie.linux-mips.org. [148.251.95.138])
        by gmr-mx.google.com with ESMTP id p5si59103ljj.3.2020.03.24.19.46.50
        for <clang-built-linux@googlegroups.com>;
        Tue, 24 Mar 2020 19:46:50 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of macro@linux-mips.org designates 148.251.95.138 as permitted sender) client-ip=148.251.95.138;
Received: (from localhost user: 'macro', uid#1010) by eddie.linux-mips.org
        with ESMTP id S23992811AbgCYCqrzvS2L (ORCPT
        <rfc822;clang-built-linux@googlegroups.com>);
        Wed, 25 Mar 2020 03:46:47 +0100
Date: Wed, 25 Mar 2020 02:46:47 +0000 (GMT)
Sender: "Maciej W. Rozycki" <macro@linux-mips.org>
From: "Maciej W. Rozycki" <macro@linux-mips.org>
To: Masahiro Yamada <masahiroy@kernel.org>
cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org,
        Alexander Lobakin <alobakin@dlink.ru>,
        Paul Burton <paulburton@kernel.org>,
        clang-built-linux@googlegroups.com
Subject: Re: [PATCH] MIPS: mark some functions as weak to avoid conflict with
 Octeon ones
In-Reply-To: <20200324164005.8259-1-masahiroy@kernel.org>
Message-ID: <alpine.LFD.2.21.2003250240110.2689954@eddie.linux-mips.org>
References: <20200324164005.8259-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: macro@linux-mips.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of macro@linux-mips.org designates
 148.251.95.138 as permitted sender) smtp.mailfrom=macro@linux-mips.org
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

On Wed, 25 Mar 2020, Masahiro Yamada wrote:

> MIPS provides multiple definitions for the following functions:
> 
>   fw_init_cmdline
>   __delay
>   __udelay
>   __ndelay
>   memmove
>   __rmemcpy
>   memcpy
>   __copy_user
> 
> The generic ones are defined in lib-y objects, which are overridden by
> the Octeon ones when CONFIG_CAVIUM_OCTEON_SOC is enabled.
> 
> The use of EXPORT_SYMBOL in static libraries potentially causes a
> problem for the llvm linker [1]. So, I want to forcibly link lib-y
> objects to vmlinux when CONFIG_MODULES=y.
> 
> As a groundwork, we must fix multiple definitions that have been
> hidden by lib-y.

 IIUC that causes known dead code to be included in the kernel image.  
Wouldn't it be possible to actually omit replaced functions from output by 
keying the build of the sources providing generic code with appropriate 
CONFIG_* settings (such as CONFIG_GENERIC_DELAY, CONFIG_GENERIC_MEMCPY, 
etc. or suchlike)?

  Maciej

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.LFD.2.21.2003250240110.2689954%40eddie.linux-mips.org.
