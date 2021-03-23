Return-Path: <clang-built-linux+bncBCSPV64IYUKBBY6246BAMGQENEOW5AA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-f57.google.com (mail-lf1-f57.google.com [209.85.167.57])
	by mail.lfdr.de (Postfix) with ESMTPS id A9D96345FAF
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 14:30:12 +0100 (CET)
Received: by mail-lf1-f57.google.com with SMTP id i12sf447426lfu.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 06:30:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616506212; cv=pass;
        d=google.com; s=arc-20160816;
        b=Lq9ZC4L+k0He5bAuiZ45MMXhxt/WdOQDnX+hNU+qvE8TlwwHRwRyrKpux6sU9FiO9e
         yWWVSkZeflfHbTyTkJFoEGSpB5KwJJIMftTP00DSjJJjR2XIQyni/5T9NrKQ74zitXoZ
         N6pNWZdZTnZtsvgsQSOU3z2KLUELYa8TTnfvK68rBU25FjpWqIbgfBz+ZQaepaLBqmA+
         WNNXYqG736J27nFl8p9QFxcq4TFIJkFoneYVoEECTFIsKnHvmhiUZU+XCQ6pFXSNWA3O
         XphLm/FXXVXowDpx7WFaKkZlTiUn4Zw7Zmde46zYjRzdbaDb70JznN34UTkCHfIAOaxd
         3MVw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:sender:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=ZnFTL1ne7Z+PP0wcKe540Ce55BspRn8y5joZf6KzPq4=;
        b=VJCgvcP+xpUJncgQTSd0bHCV+ZF7F14jKY0Wn9Nlnzi3UM0yTvjHDVXgr0LOena+Uw
         RT6WPsQECHvEDFiUoyd5fDpvkienpME9pIB4OwNg1c/gidBvEoQVAzH8qosDWzp6A86U
         crFk0etOJbxFmGN2GeVUNEUaVjdsV9L5PZEZjeyk0XiZ9YBOG5t6t+sIFAKEw3h4FYf4
         WeSSwOpM5iyHDGzUO0XSjRmq4LrbOpJZ4/qQKlkcJZhxDSeW95SWNZGxO1ir91WZrzds
         /18W+O2rqRenP2nB716TW0Q5ScjWk76X4yBMOLSRH/UzGIqWY8bo9SaklZKacBdYnU8x
         V+1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=f58mUhhF;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:32c8:5054:ff:fe00:142 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent:sender
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZnFTL1ne7Z+PP0wcKe540Ce55BspRn8y5joZf6KzPq4=;
        b=WuoUZnH2r3bowNucsJyEAblvrZIIyEAYr9Z/pEheKbjRHmuAQE6GaXgxtt/qPMD+Az
         5Sk0Z1mva8DWg02HRMboQG/dE3gu1ujufvTNtiZXG0uwqjGqySHBtK9ynRw/ISKGGyWu
         gv2f5DTz7Ww97gPgUse51L1m1ERc9FVoy3LiSXTpjXTDbfBgHQ60ErW/TSsH72q0IFvJ
         M+JVBF/aYiFRP1/8qLf1twmWTaLWsgMszHicaaOR4AInLuVTfmhUuP0b953J40JHpXD/
         S/YPzKjQC7lDQVHV/9QsNJG+M43sTW6lNfCHch0TcNeDb9bJ3TFohnKOlnULSCpJ+s5S
         R4mw==
X-Gm-Message-State: AOAM531oL7Y32Bbb+sjGFaPyz49mFEVhLHllYVuc7y/mCdmXrDgBALoj
	COcgInKMLrl1npUxUEunNqk=
X-Google-Smtp-Source: ABdhPJz18/vKaYMnrsS8RysRvxBIw0XQLDib4Pwj3G5mdyYdd5xmJyPvFlO5r2WnxHzdQy1ksuCTvA==
X-Received: by 2002:a2e:7301:: with SMTP id o1mr3134632ljc.42.1616506212148;
        Tue, 23 Mar 2021 06:30:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9212:: with SMTP id k18ls3149004ljg.8.gmail; Tue, 23 Mar
 2021 06:30:11 -0700 (PDT)
X-Received: by 2002:a05:651c:29a:: with SMTP id b26mr3041707ljo.451.1616506211116;
        Tue, 23 Mar 2021 06:30:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616506211; cv=none;
        d=google.com; s=arc-20160816;
        b=TLzQaYhww0G8gkvJFbCz21fzt2j1I0tBnqAutJYswMZoiaiA0wR+bPuFYGrxAY6Nyq
         NKeuF2vfm4nnxlwX2BLUFnHSTBjTz0BHwgvzxYKvQ5pXIIqMzmHOSszfEIKX1SmVfcZ/
         YRHpfqZ1e91kyXL9LXP57OdDzgqR+KgT7C25KzzAm/t6wFD2CNmV8caz2e1MsDmlEbwb
         gHx1jNOXbwEdCklL0g5Vez++GehfsqBZTEhFdapRce/WRouemEWHVtSrnxCYPCIBAhmj
         h7c4l7b/M6wC67oan0Hxom0SlbQe8R5xXPRQyR0++IeO/3ak+3nkwMpHxqDBWAl9kpZ7
         Cuvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=sender:user-agent:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:dkim-signature;
        bh=pGWpm+WB3Vg671czxou6SRrOuPgVTllUUjQ5wW0XDIY=;
        b=zwe8AUJ819NJIP2o+49futfYc/pjaYWHYxWmIq/AxkcwaCik0dj3mWNlEn3HxJs7J9
         I5wFvSZSk2GqPfh+My5icbBoY8zqrAoavp19ZOFyFjKaXl7pxoBaC7mUE5/FXenY68Cp
         Zes3IItsuLlxjo8JkBu9vvutmMo2/Hcl/QvMloiqVFigC4Gub0yv6RzJazt3m2a9N+WI
         dwiv1qxL+c5Q8I0nnhg6IJ1Fb+wJm5gfQwyiSGpmfm6VgDaZSoszV7Xc1Fy38TPX49qI
         kM/yAGomvkQXrcpWWPnCqiCKUJ64FKgw7w5Ri0ii1wsBgIIoUHzQyujucm0jYvdl+MPH
         VxqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=f58mUhhF;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:32c8:5054:ff:fe00:142 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk. [2001:4d48:ad52:32c8:5054:ff:fe00:142])
        by gmr-mx.google.com with ESMTPS id h2si573722lja.3.2021.03.23.06.30.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Mar 2021 06:30:11 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:32c8:5054:ff:fe00:142 as permitted sender) client-ip=2001:4d48:ad52:32c8:5054:ff:fe00:142;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:51626)
	by pandora.armlinux.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <linux@armlinux.org.uk>)
	id 1lOh6k-0007ly-7c; Tue, 23 Mar 2021 13:30:06 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1lOh6j-0004Bx-In; Tue, 23 Mar 2021 13:30:05 +0000
Date: Tue, 23 Mar 2021 13:30:05 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>, Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] ARM: delay: avoid clang -Wtautological-constant warning
Message-ID: <20210323133005.GC1463@shell.armlinux.org.uk>
References: <20210323132031.2858996-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210323132031.2858996-1-arnd@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-Original-Sender: linux@armlinux.org.uk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass (test
 mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=f58mUhhF;
       spf=pass (google.com: best guess record for domain of
 linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates
 2001:4d48:ad52:32c8:5054:ff:fe00:142 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
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

On Tue, Mar 23, 2021 at 02:20:23PM +0100, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> Passing an 8-bit constant into delay() triggers a warning when building
> with 'make W=1' using clang:
> 
> drivers/clk/actions/owl-pll.c:182:2: error: result of comparison of constant 2000 with expression of type 'u8' (aka 'unsigned char') is always false [-Werror,-Wtautological-constant-out-of-range-compare]
>         udelay(pll_hw->delay);
>         ^~~~~~~~~~~~~~~~~~~~~
> arch/arm/include/asm/delay.h:84:9: note: expanded from macro 'udelay'
>           ((n) > (MAX_UDELAY_MS * 1000) ? __bad_udelay() :              \
>            ~~~ ^ ~~~~~~~~~~~~~~~~~~~~~~
> arch/arm/mach-omap2/wd_timer.c:89:3: error: result of comparison of constant 2000 with expression of type 'u8' (aka 'unsigned char') is always false [-Werror,-Wtautological-constant-out-of-range-compare]
>                 udelay(oh->class->sysc->srst_udelay);
>                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> 
> Shut up the warning by adding a cast to a 64-bit number. A cast to 'int'
> would usually be sufficient, but would fail to cause a link-time error
> for large 64-bit constants.

What effect (if any) does this have on code generation when the argument
is not constant?

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210323133005.GC1463%40shell.armlinux.org.uk.
