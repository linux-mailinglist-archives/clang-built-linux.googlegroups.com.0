Return-Path: <clang-built-linux+bncBCEJHTXX7MFBBWEKT3VQKGQEFPJYBKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 97D9CA130F
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 09:57:12 +0200 (CEST)
Received: by mail-lf1-x139.google.com with SMTP id t84sf585536lff.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 00:57:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567065432; cv=pass;
        d=google.com; s=arc-20160816;
        b=KVuB+Vb2ZD4cwgGd5vtY6PXir9e5tzWgkPpAGRJzWvHGLZ7JncBXySlUb/BOEcH0F9
         NjC30ImLSwe3Jcj5Aaskt+4xvdoeoqtTf0PdRpl/S2sJWvH+pbR9g705rEB+xFTUM4y2
         g+Bt1/lIACWA6UqHHPcsmyTgbFkCSNKf0wwPazJ0Eqd4VCGRkNajdOBV850/zhbPbqwr
         fcpzNfBP7Di7qqEbSs4ePPge0fS1NYiXyVECCJVdvNAMC24R1C5ELE8JrtzaEPP4l8aX
         6M4pnuezafG3nx0mL7gXjQchRdMyLndnSTDeeF20inwc7GCfIoO+JBq+7OfoTQRtpFUD
         66kg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:message-id:references
         :in-reply-to:subject:cc:to:from:date:mime-version:sender
         :dkim-signature;
        bh=x7jtHkuoFqgA3hTTtB4ae19SScuoujJ9BtfJvoR6qko=;
        b=Bbild64+NAcGujgtLboL3E5GBlSO/ksENXozVGZjoIJCwTAJUCn8gsPiqPHjkX/Fp2
         bAW7NBT1mbgO9Zn27CvLkXionpAm6Y/sLrHdfkVTeyYi3RIchXRIFGEV2MVM+nWC709Y
         ejZIq9zu7mohSh83LjQcXfoV6+rt3Ba2v0o97d5cC5CYHw4yOqXiL8B+TFTitnHLNrXU
         Wm31wnUwkCGABpimDMQu9HdGNm4sETPyKb1sDo8dGtwCHQ+zJj1jw6B6UwaIId5yBYuP
         5PqfFdxP04O+b1gBjl+q5Ec2hGoi1oOQtWYiNQCH5XAapX9bDCeis9GgSDBu5xxqYQsI
         8QHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b=VK1CIOcB;
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:date:from:to:cc:subject:in-reply-to:references
         :message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=x7jtHkuoFqgA3hTTtB4ae19SScuoujJ9BtfJvoR6qko=;
        b=N6RURtrilMzvLsOn57okhMo0a0zqvrVYrbS13a/+Xl2vjZ5feEn+S0Ak8H2rnfl3zN
         ATiPTYpSyX4re91UOvm9jqm/+NPnIgh+sKB8+28pqTYJ9PDgt7+Q6LmL/suvVP9fkCoy
         c9iqY3frrMm7AR2DY0eLXEofSv5AV0hSch/9VR8dtoY/zjVeA7UaWTKkwg+RJdk3IjuF
         eMsGS+lZ10ML7NSWG50rY/QIq3FxfmGDDtSESnpA11258Wxol/HBlk0jjivcOOl8nSa2
         TNhUko3R9E7nxFzPSeGUQex13X1V0n6rLtgMNyHiZV2H77yR6snlk37DOPoB8WF1aytb
         6lZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:from:to:cc:subject
         :in-reply-to:references:message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x7jtHkuoFqgA3hTTtB4ae19SScuoujJ9BtfJvoR6qko=;
        b=H7boG6H6UHLGD2g5m/LNGKdXj3w7oV8kTWQjrLkcEBhLWA8IoIBX6YYBdbBLmlGTM7
         XIJYKNwqN/wUs4rHfpys3GCAZGrg81teqOeQmqYYziize0R1A3B36Ra6rkSS4GqmCd8N
         GGiOavEPJ7XJXjcWnAlDHUw/sjCDIS8NlMXUIIO4fxtWQ6VosEjOk3UNxXpALewgcoZU
         m4LLkN4fJcliZjOdHpYAdkg7N7njoz8BhCze74HnxK03ClHBLEgWOwIg0y92NUfpmNGD
         AKsdO6kDLqerJwLmwBoyTV+B8shDz8sTSSM1TUlbbdvFvEkk80zll+wZ5WaSrla/YlC1
         pqqA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWQaYkdTeHaZrp+grZg7wmgNXyEX4+rduzQF+i3BVeT8ToCIaQP
	nDIVyqmSoslBlQW59soZeMo=
X-Google-Smtp-Source: APXvYqy11uBRmb0l6Oyke0vkBpeOAjfxGEAj93Knz3xTzUZjj5s6vLva0JMaT041H3qQKnFhVT1Azw==
X-Received: by 2002:a19:6041:: with SMTP id p1mr5282886lfk.6.1567065432191;
        Thu, 29 Aug 2019 00:57:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:8c0c:: with SMTP id o12ls139168lfd.12.gmail; Thu, 29 Aug
 2019 00:57:11 -0700 (PDT)
X-Received: by 2002:ac2:51a3:: with SMTP id f3mr5142941lfk.94.1567065431572;
        Thu, 29 Aug 2019 00:57:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567065431; cv=none;
        d=google.com; s=arc-20160816;
        b=pPLeyL5GDj1BkJu3c6wD210jINvs92QWjFY2IBWYzOflWEV9WqmXtDrm3jxisCJUKU
         uHZqEoZMddZiatpcH8BNe01MMZg0gDY6NS8H+m46ddx6H+P9fyKEflUXPjkPIcCXkIbo
         57/xkP9F+IDQWz/Q7mYaRSlYN4unLgSqj5BNQ3IUG8n0KqgczlVrMS75OJ+x7D8kn5y/
         7bgk1Eyls2PCBpRCU8+ugeA6W8huWb78Xh2VT8YzvqJaCje7VXFGStyf1u0qOr9pQT8T
         uAt0i+BtGfDrEIvi2ubHt1hy+pKiuLS7glcvR6B075VwjaHjcMmh7H3ccjdxB3T6H9wW
         PGxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:message-id:references:in-reply-to:subject:cc:to:from
         :date:content-transfer-encoding:mime-version:dkim-signature;
        bh=z8mT125lg2u4srukuCuOIjTA/fSrbJ4+/sfujlxob84=;
        b=0VTxa+1T8FXGW1K/ic+4KaoN18S2quXS1EzdpnWxIuUWxOrC+FHpUoLALiNBAHwi9W
         pR9brpS/Yufpru9l/baclSljtc2lL941h5zBjzH49M3/lWBHAavLEFH+kUnta+HJReS/
         4jFp+HFS7MX1a+INLm4c4ZgB7zTBYaHEI4UDZ5/f9kdYtzPxq4SqZcHzF/aVM01TaPPG
         zdtkXSUwrTmCG4weHZ/MZjqNdtElZTVBLQObG93tbDLXjszvx7IO0JmGEsGKiPVQRCRy
         7u0i4ePH6ZzvPWv2vOJ/4slIShsF+wxOGlrqUxKqu9BfbRNJ0yDiLf2ylCRIQX5Rv9Z2
         n/Gw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b=VK1CIOcB;
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
Received: from mail.kmu-office.ch (mail.kmu-office.ch. [2a02:418:6a02::a2])
        by gmr-mx.google.com with ESMTPS id x14si98781lfc.2.2019.08.29.00.57.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Aug 2019 00:57:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) client-ip=2a02:418:6a02::a2;
Received: from webmail.kmu-office.ch (unknown [IPv6:2a02:418:6a02::a3])
	by mail.kmu-office.ch (Postfix) with ESMTPSA id 5BBF95C061A;
	Thu, 29 Aug 2019 09:57:10 +0200 (CEST)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Thu, 29 Aug 2019 09:57:10 +0200
From: Stefan Agner <stefan@agner.ch>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Russell King <linux@armlinux.org.uk>, Nick Desaulniers
 <ndesaulniers@google.com>, Arnd Bergmann <arnd@arndb.de>, Matthias Kaehlcke
 <mka@chromium.org>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] ARM: Emit __gnu_mcount_nc when using Clang 10.0.0 or
 newer
In-Reply-To: <20190829062635.45609-1-natechancellor@gmail.com>
References: <20190829062635.45609-1-natechancellor@gmail.com>
Message-ID: <f82b89b8b3d1db04dc083643bd25c1f1@agner.ch>
X-Sender: stefan@agner.ch
User-Agent: Roundcube Webmail/1.3.9
X-Original-Sender: stefan@agner.ch
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@agner.ch header.s=dkim header.b=VK1CIOcB;       spf=pass
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

On 2019-08-29 08:26, Nathan Chancellor wrote:
> Currently, multi_v7_defconfig + CONFIG_FUNCTION_TRACER fails to build
> with clang:
> 
> arm-linux-gnueabi-ld: kernel/softirq.o: in function `_local_bh_enable':
> softirq.c:(.text+0x504): undefined reference to `mcount'
> arm-linux-gnueabi-ld: kernel/softirq.o: in function `__local_bh_enable_ip':
> softirq.c:(.text+0x58c): undefined reference to `mcount'
> arm-linux-gnueabi-ld: kernel/softirq.o: in function `do_softirq':
> softirq.c:(.text+0x6c8): undefined reference to `mcount'
> arm-linux-gnueabi-ld: kernel/softirq.o: in function `irq_enter':
> softirq.c:(.text+0x75c): undefined reference to `mcount'
> arm-linux-gnueabi-ld: kernel/softirq.o: in function `irq_exit':
> softirq.c:(.text+0x840): undefined reference to `mcount'
> arm-linux-gnueabi-ld: kernel/softirq.o:softirq.c:(.text+0xa50): more
> undefined references to `mcount' follow
> 
> clang can emit a working mcount symbol, __gnu_mcount_nc, when
> '-meabi gnu' is passed to it. Until r369147 in LLVM, this was
> broken and caused the kernel not to boot because the calling
> convention was not correct. Now that it is fixed, add this to
> the command line when clang is 10.0.0 or newer so everything
> works properly.

Cool, finally function tracing with Clang :-)

> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/35
> Link: https://bugs.llvm.org/show_bug.cgi?id=33845
> Link:
> https://github.com/llvm/llvm-project/commit/16fa8b09702378bacfa3d07081afe6b353b99e60
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Reviewed-by: Stefan Agner <stefan@agner.ch>

--
Stefan

> ---
>  arch/arm/Makefile | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index c3624ca6c0bc..7b5a26a866fc 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -112,6 +112,12 @@ ifeq ($(CONFIG_ARM_UNWIND),y)
>  CFLAGS_ABI	+=-funwind-tables
>  endif
>  
> +ifeq ($(CONFIG_CC_IS_CLANG),y)
> +ifeq ($(shell test $(CONFIG_CLANG_VERSION) -ge 100000; echo $$?),0)
> +CFLAGS_ABI	+=-meabi gnu
> +endif
> +endif
> +
>  # Accept old syntax despite ".syntax unified"
>  AFLAGS_NOWARN	:=$(call as-option,-Wa$(comma)-mno-warn-deprecated,-Wa$(comma)-W)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/f82b89b8b3d1db04dc083643bd25c1f1%40agner.ch.
