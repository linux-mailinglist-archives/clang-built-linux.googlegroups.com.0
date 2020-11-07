Return-Path: <clang-built-linux+bncBCSPV64IYUKBBU7KTH6QKGQEBLCR4WI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-f190.google.com (mail-lj1-f190.google.com [209.85.208.190])
	by mail.lfdr.de (Postfix) with ESMTPS id 7715C2AA467
	for <lists+clang-built-linux@lfdr.de>; Sat,  7 Nov 2020 11:22:12 +0100 (CET)
Received: by mail-lj1-f190.google.com with SMTP id s22sf1284325ljs.10
        for <lists+clang-built-linux@lfdr.de>; Sat, 07 Nov 2020 02:22:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604744532; cv=pass;
        d=google.com; s=arc-20160816;
        b=tnnbzf0TIyTrYmP/X6YLgIZn5nrMjNbg5k/UrAntU/5sZODqSKRxPMKzJKQ1LQeuXf
         PfWijOpHzfeNNZEEeAa7ToNbloHMV5cgi2DkhYeIZ0N+OkQHkgaxap6XhL/y871vgSJD
         VYqiV8mzmJi2KOlu+ojksPuTv+8oKynKfWx0ZF2vM7cZSF1ezo2MtMu5hdz8rzLou6Ov
         hr6rlHLXrnaEp4qKSX1du2P+lyH0h0pcgbURVyPGQuwSzeznqMjgrAGHw53grA9Hp1fV
         rlE5RQx7hQ2h24wkGprLUSAeRvjcz7GYF3CnzueGZP8VzhGoTj1M1TM2SRMfwAx2l4SB
         B+tg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:sender:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=AZ3SBtNUiXqnnEUCw4UXY8K39YpdjhjB6GxO5zjUR7s=;
        b=jqiN2cQdAYVnZpLA4ERVoAxxVlIXB7obwPcNFuzj8UiEeRq90YRnywmb8dj34sQ1uT
         CNEEtvEw8P+yLcmQDtQMTnU7xyhG2J+M8nRsYpc6OM84VJzVo7FN5U+uCeLi8r56Z2Q+
         JWFoccCrgvzzBP+6Wx/4/Y3WrEmZi9jTFb8E1U2GsXJ8NP1bizP8SJjDX8F9MtzaSXPn
         fQXeHuNZxYcykacrlCg2N3mcicOOA7ZDxyWtMn9R9GemYrCXnLx0fI0ocZKqb873EdA2
         VZ+DYy+R2xUBDGwmtAYjayofHcEJKFDBVc9T4+TbF4xJJPiL1H/3/tyAFhl6AVP9tKK0
         EDOw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=gyCEgepe;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:32c8:5054:ff:fe00:142 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent:sender
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=AZ3SBtNUiXqnnEUCw4UXY8K39YpdjhjB6GxO5zjUR7s=;
        b=HP2cu7yE1GXY8bme5ESbcvsa97m/Sauy9J1SBo8TxSU5/UFkp2GiPOBouCeDuN01ha
         gorkVohYRbcZwv6YN8JlJLRH+8zxNUncsrO+mqvdd8JTOn07u9hbQxqCV7G91Jwamw3J
         jRli2qjxoiRLFS+ecbbcd5oBojkaInw9yQ1F9E1BtvLkTcfxy4C5qTI559CgxE5Q65RC
         MDChJ47OS+CpVx03Iz4j6COM8cewppYG4VKbG4H36+0+2fhnyksTeNEEupEZANJTTkZY
         OMsQzOYLIx8NUXSr6MbOtKSqizDWmNT8qITi4+7zUOv7w6eVnKEI1jkBWYHCd9Pw5qNq
         958A==
X-Gm-Message-State: AOAM532iHroHmqDUQ1qhk6Cd6m+piEn+DvqFFIu6T3acpuisdWR8T50r
	3OEaSepRgdGSYeC2oiGyUZs=
X-Google-Smtp-Source: ABdhPJxDixSQiXNizhswuRzWAFnMQsC50iMNucu3AjBALIuhcOlIpKd/bxuUckK75tQkT/whqZnHnA==
X-Received: by 2002:ac2:4465:: with SMTP id y5mr2223499lfl.437.1604744531914;
        Sat, 07 Nov 2020 02:22:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:888a:: with SMTP id k10ls648026lji.10.gmail; Sat, 07 Nov
 2020 02:22:10 -0800 (PST)
X-Received: by 2002:a05:651c:1025:: with SMTP id w5mr2257066ljm.14.1604744530906;
        Sat, 07 Nov 2020 02:22:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604744530; cv=none;
        d=google.com; s=arc-20160816;
        b=OvFYwLDf8J0CPm9jhXGJcTxXqBRT6vUT21o3KX+nPyPUU3Ey4imm2/H3TOFay4oZa3
         6mNkujwFkSMu9JaoxIFsA4dyESmXOVuQ2/10gDudZuRzm8TfV9mMsjmEGbOmN1UnpPmB
         f+b4Lyb7X+UC9CkJUc6z81P9MYUiHCQ7po8fu8FZhcHV/mjXtgl2Mmm94yUKYeP7MlUT
         D+Bls7NPIuBbzTewgiaGqESs8jkhTdoMGA1thokR8T8QVa1Pldtulyq6ANQHTQrRGALD
         bwo9xaifg152aOiOMzHtsdtf7Hn3OGPv6+6c8yhLxLVORlKhQ+ktEtZgM7qw9iXVHOeO
         e3Sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=sender:user-agent:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:dkim-signature;
        bh=xKuw8zhvtdu4k0q3nrygkrJRwLjOFB13/MQ9ZczbDd4=;
        b=tg/X9fYb/SDNJLJv0N557jZ0bqoS5Smmg5gF/xWq+6c42vx4Awr8AUs3q6CAOIOa4D
         3pjRvT1jCixEwrBmiQV0pwBiGJGSIM06FEu7SSw9ybvS2+Q0E+26y5V9bNLoiuilkQBe
         iVA6u6Qg5AnZW3ZHWSPD7L8psf90PUluZV83wegi1gTB61TNub9TakmLf2/eWmdQJCt+
         9ZKxeN+3VkQKKLnvhqx8Czf/z9hGteiZImT3XP639L5ZQegV8hwJU0EBqcthux1TURzy
         uv7VltnBER/kkimGR6KPVzUp25c1rFPh+OvsnemndVyxzUT2tNVNcO1GnGEU/9WBnV5F
         YrYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=gyCEgepe;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:32c8:5054:ff:fe00:142 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk. [2001:4d48:ad52:32c8:5054:ff:fe00:142])
        by gmr-mx.google.com with ESMTPS id 26si94917lfr.13.2020.11.07.02.22.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Nov 2020 02:22:09 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:32c8:5054:ff:fe00:142 as permitted sender) client-ip=2001:4d48:ad52:32c8:5054:ff:fe00:142;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:56150)
	by pandora.armlinux.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <linux@armlinux.org.uk>)
	id 1kbLMD-0006Zo-9x; Sat, 07 Nov 2020 10:22:05 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1kbLMB-0006k4-Vd; Sat, 07 Nov 2020 10:22:04 +0000
Date: Sat, 7 Nov 2020 10:22:03 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Adrian Ratiu <adrian.ratiu@collabora.com>
Cc: linux-arm-kernel@lists.infradead.org,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCH 2/2] arm: lib: xor-neon: disable clang vectorization
Message-ID: <20201107102203.GV1551@shell.armlinux.org.uk>
References: <20201106051436.2384842-1-adrian.ratiu@collabora.com>
 <20201106051436.2384842-3-adrian.ratiu@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201106051436.2384842-3-adrian.ratiu@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-Original-Sender: linux@armlinux.org.uk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass (test
 mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=gyCEgepe;
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

On Fri, Nov 06, 2020 at 07:14:36AM +0200, Adrian Ratiu wrote:
> diff --git a/arch/arm/lib/xor-neon.c b/arch/arm/lib/xor-neon.c
> index e1e76186ec23..84c91c48dfa2 100644
> --- a/arch/arm/lib/xor-neon.c
> +++ b/arch/arm/lib/xor-neon.c
> @@ -18,6 +18,10 @@ MODULE_LICENSE("GPL");
>   * Pull in the reference implementations while instructing GCC (through
>   * -ftree-vectorize) to attempt to exploit implicit parallelism and emit
>   * NEON instructions.
> +

Please tidy this up before submission; we normally continue the "*" for
blank lines in comment blocks. Thanks.

> + * On Clang the loop vectorizer is enabled by default, but due to a bug
> + * (https://bugs.llvm.org/show_bug.cgi?id=40976) vectorization is broke
> + * so xor-neon is disabled in favor of the default reg implementations.
>   */
>  #ifdef CONFIG_CC_IS_GCC
>  #pragma GCC optimize "tree-vectorize"
> -- 
> 2.29.0
> 
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201107102203.GV1551%40shell.armlinux.org.uk.
