Return-Path: <clang-built-linux+bncBCSPV64IYUKBBTXEZCAQMGQEVEM3RNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-f183.google.com (mail-lj1-f183.google.com [209.85.208.183])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F243320992
	for <lists+clang-built-linux@lfdr.de>; Sun, 21 Feb 2021 11:13:35 +0100 (CET)
Received: by mail-lj1-f183.google.com with SMTP id q13sf8892343ljp.23
        for <lists+clang-built-linux@lfdr.de>; Sun, 21 Feb 2021 02:13:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613902414; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZG4rjEcc/3eje8N6chXVzRBtybzS8eTGZVhLy0znhGJVcEDBea77eEBOJ8oKngghJu
         48cmap7QXmdPgQYzN0QGLTsW19Z70LAFLM7C7i9bHAL3W7kTMtkVrY11FlhV2Qg9OOkF
         OVrKjPNFqtg60N/QsJv1GQ/x2HvazszpK0O8xgyZ/PBbcwmEStyv5zJKA8oVJDj942RB
         AaxexVj4Kzfw6IzRDKbpz3F9c68LObtA/j2AHuNRLeBn7L7k9DFpN+NJl41Q9DwJjilR
         X4VPBem28uaXp8CRsfyapVx+MflPb/z0F0LFNQ/2xS2mJfj3Po/L+Z0CDLAAWTfyQtgQ
         eHzA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:sender:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=0CVynHQF+5CHJKjPUDgENWCtmBboxPwvG0nZfV7bhqU=;
        b=MXQANq+df88ZaTfAH8fIHwvDEobxXwFwtbWBg1fuFIoMFn9WkvRF2ca6590lGw8nZE
         GH6e9JWVyNEahIJxdWXB13jr3RqgSuheE8AUWt3w+6jSvSTNoapZc3sY7mOpgW2Lf1ew
         yL/emFOh073aK4xxT9z2MPd1a9mETcR/bFASVkmosnUyz6zE2I0AZZLJ4ymWc426rYRK
         upzOcsQlACDmZpZYHPK58BTlOSyP/86WLqRtyFeqqj+fbwllWdKER+AtWWif/fdqGBXN
         jbPh8GkmuszPizeMgqrSlmL72YZzt1phvZ1OBNdWVLvJVbqfoQ0rT7ZXZojiRIPA+i3G
         +i9w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=d9BmVzeM;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:32c8:5054:ff:fe00:142 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent:sender
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0CVynHQF+5CHJKjPUDgENWCtmBboxPwvG0nZfV7bhqU=;
        b=WNGFPczRTrxfAO3RQZAMoYsyZrFxi/2uAkQs1UIv30c/Kkf7XMhRFypzWPkPKninw7
         +ywaNp6NGXcJLFueryYAHsX7AGJn62qLzoHsZ/ZRGO0YrxzoVnjo4kVBzL+mXMKUxgVS
         +Poa9co1gOsPTVK9Eh2/+8QjZDtM5z7rS0xDaJeNXl0HcN4Iywjm3tFnISe4fSLwu4H9
         4OIBZcVa8PQKDuQibaN51V6iwGjcLMxYR5RVFOaVdZLFhbfKcQEpE81p1wxWeIlg3zVM
         I47vH2yTeU5v8CHRgBpZhDfcbR6Qj2X/7NRVEJx/lS7DLohMl38SFW4B53tGSryvbTTC
         DfLQ==
X-Gm-Message-State: AOAM532we/Dt2OgzObVEVo6RJ4MZGLqvZ3fjNXyZDFhXD4ILo8Y6Wosz
	AoiH9q4H23aHr+Re/5xEyQs=
X-Google-Smtp-Source: ABdhPJyzH/qBTEFRvFW3buvt13SrJF145CHTd6PEKnAzaG8Svw6wtRvHjMdy7rd3wxyFi8tnng6CQw==
X-Received: by 2002:a05:6512:39c3:: with SMTP id k3mr10531077lfu.501.1613902414682;
        Sun, 21 Feb 2021 02:13:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b791:: with SMTP id n17ls632831ljo.1.gmail; Sun, 21 Feb
 2021 02:13:33 -0800 (PST)
X-Received: by 2002:a2e:9086:: with SMTP id l6mr6419072ljg.93.1613902413810;
        Sun, 21 Feb 2021 02:13:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613902413; cv=none;
        d=google.com; s=arc-20160816;
        b=pAwtUQAF4/kfJUIbVNX+uuTsJxO3ESi7erRDPWFivi7QD4nxae4crcVmvsKymCq5v7
         +UdhXvnjSEnMgbsoVYasYIkE16k4zH/VxX8Z1C582TC0aJphUatqxbz9jJUS1647zqTa
         fdZwXZ6sW1cGEZT2DKEotd4j2Ni/twJT/4i/XiemqzLsjyuXwvZ5A0ZzfPvDKXDpAooi
         bMaOhGwrg1RpSge9tRaPZZbvXbq+3hB2b2OCCEc9pV9WbSeltFJCD0IxE+ghiCtRwpQd
         /OYpWNvqxgJvL9AgL8koCMRMvq+UQ4bt2w9Nd2ok58/sj/gB7jjtStTfuZBk8ksLpgB7
         0HTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=sender:user-agent:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:dkim-signature;
        bh=hcq3wt5qS99lFcdtQEki70DkgteFRHHdLhomfjlqf0A=;
        b=kvpEmkn5jgAyPvQdAWNzMaC19GqyDjrN9fzpzXnPxLTxJaWxUfOC+Rod87cVr8x0du
         mNrzQjIRdrmOqm+8KrCkwoogeHbS8fo01becNYuKt3BPgnZrXi0A9UujnrukSmv0U0M7
         TmKfBFSAqtGIkLARsQMW1XV4u8o+/AkCsdr83J/h6YtiL4vZ2xHafl32+zwMzTfbQLdT
         wKwC/oBDN6Jxxs0n0/yaO2aPnyJzYreKlMAXz3s9qM+OynCi+siwEEa3sZg2U8iL5ILO
         bjgiVAKrg6wmUNzx6aHUurCh5Y1I79SyoOmwRk6w2LMMX+TxDGT94Eb365f4IKonPM/t
         EZ4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=d9BmVzeM;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:32c8:5054:ff:fe00:142 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk. [2001:4d48:ad52:32c8:5054:ff:fe00:142])
        by gmr-mx.google.com with ESMTPS id t21si313982lfe.3.2021.02.21.02.13.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Feb 2021 02:13:33 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:32c8:5054:ff:fe00:142 as permitted sender) client-ip=2001:4d48:ad52:32c8:5054:ff:fe00:142;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:46232)
	by pandora.armlinux.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <linux@armlinux.org.uk>)
	id 1lDljt-0005aH-Cr; Sun, 21 Feb 2021 10:13:21 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1lDljp-00012f-NP; Sun, 21 Feb 2021 10:13:17 +0000
Date: Sun, 21 Feb 2021 10:13:17 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Jian Cai <jiancai@google.com>
Cc: Mark Rutland <mark.rutland@arm.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	James Morris <jmorris@namei.org>, manojgupta@google.com,
	Will Deacon <will@kernel.org>, Ingo Molnar <mingo@kernel.org>,
	Marc Zyngier <maz@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Ard Biesheuvel <ardb@kernel.org>,
	clang-built-linux@googlegroups.com, llozano@google.com,
	David Brazdil <dbrazdil@google.com>,
	"Serge E. Hallyn" <serge@hallyn.com>,
	Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <nathan@kernel.org>,
	linux-arm-kernel@lists.infradead.org, ndesaulniers@google.com,
	linux-kernel@vger.kernel.org, linux-security-module@vger.kernel.org,
	David Laight <David.Laight@aculab.com>,
	James Morse <james.morse@arm.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
	Mike Rapoport <rppt@kernel.org>
Subject: Re: [PATCH v4] ARM: Implement SLS mitigation
Message-ID: <20210221101317.GN1463@shell.armlinux.org.uk>
References: <20210219201852.3213914-1-jiancai@google.com>
 <20210219230841.875875-1-jiancai@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210219230841.875875-1-jiancai@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-Original-Sender: linux@armlinux.org.uk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass (test
 mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=d9BmVzeM;
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

On Fri, Feb 19, 2021 at 03:08:13PM -0800, Jian Cai wrote:
> diff --git a/security/Kconfig.hardening b/security/Kconfig.hardening
> index 269967c4fc1b..146b75a79d9e 100644
> --- a/security/Kconfig.hardening
> +++ b/security/Kconfig.hardening
> @@ -121,6 +121,16 @@ choice
>  
>  endchoice
>  
> +config HARDEN_SLS_ALL
> +	bool "enable SLS vulnerability hardening"
> +	default n

Please get rid of this useless "default n"

> +	depends on $(cc-option,-mharden-sls=all)
> +	help
> +	  Enables straight-line speculation vulnerability hardening on ARM and ARM64
> +	  architectures. It inserts speculation barrier sequences (SB or DSB+ISB
> +	  depending on the target architecture) after RET and BR, and replacing
> +	  BLR with BL+BR sequence.

Given that this is in an architecture independent Kconfig file, and it
detects support in CC for this feature, why should this help text be
written to be specific to a couple of architectures? Will this feature
only ever be available on these two architectures? What if someone adds
support for another architecture?

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210221101317.GN1463%40shell.armlinux.org.uk.
