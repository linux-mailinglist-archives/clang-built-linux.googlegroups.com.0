Return-Path: <clang-built-linux+bncBC2ORX645YPRBDPDU7WQKGQEGRT572Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 210C5DCC45
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 19:08:31 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id y2sf4119679plk.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 10:08:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571418509; cv=pass;
        d=google.com; s=arc-20160816;
        b=oVZjZ4iwE1YiMcEI29IZH23DyrYizOyKbk4RkKRVgDs8JznEctCFEW1OAXg46nUZ87
         y9vlfDO7b0UKC/SpxFC2kWuTgy0Sts+BQifm990bwcSxa49lxDmQYx+yaxIzfR86We6O
         Zn0JDC6BgIKsXhi7pDbOh6fhVx03QqTK+9jX+qHCUEDlVG7mCc818wH5pCPMVpW1R/aj
         xTY9R8BFvvcS0b8qrtkb3Hc1sZ/kqph9WvpfozczfpRCXVqOmBpvxR9M2/TokvkOKCtb
         Y2g+HogN4LCoZIhODvWD37W/bOR7T5GTZS1VWcLht/bp/N2IH3huR1/5dgjZ47WXLESZ
         tHjQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=DyEOeZeD3NTsnAZL0RMyLsOw12/JQ7kXyTueffs0ELA=;
        b=iBwaF7TjfZTHE8KpxAxz78gQaPbN+VFqw5uWm9wOKkP+8rFXZOCc1FI72fxCKYkIsc
         kzFB7hokOieIOh4xouH6kz4yyl2bdgPsdqGpIp0ih0NExbf1dmSasWb5Kt8T16Iw3kBW
         1aRznxk/Jfmhe2WrZdoFloVeGYhTUuYeE2K8id++ouirpOKs/jhwqQ3Tjd/2l8iYjYkM
         Sc37d5TmqPJXv3WDh1L5vVEdQswWMzU+nL3BcVrC2Xf5yfzqsQQVbBM1vaIGpUPL6ySb
         ZG+wfJMIULwoHx5bIQBgmYYeiuDK/kjW8QzX3nUGl8qErRty/EIAcUDZ/3szOCNVJ7sF
         7ICQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="GEpdi/vg";
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e43 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DyEOeZeD3NTsnAZL0RMyLsOw12/JQ7kXyTueffs0ELA=;
        b=XunLhZKF9nMV5LvNAbRrTKu7/kQIsgdA+6eJ6Ll08SzAvfVZn1cHX1XPSdp+xL1Cxt
         cPpn4Bbj+oUo/UupcSLhTeeVuhtLTiA8Os4eNk6qZUOJ+UyJvN/mWywxcFku35ZVnyGv
         9ufycx3oTojdTu28OMlBIjVjlyEr3dbN689C0UXqgpliZymgh/3kvczR6xvWBmfdVfQQ
         n8eqeMxQkGNe+75Zg1gtR+ky13O++m5FiMTeLubJAs3txeoENFnCkrC3fNk4J6AYLe9L
         MY4Hm0gCpodpYIT9XB/SVJ2N42juA6FzkBiIdaVUQhb3KZc/20iO1otrUy5AvJsRrKZ7
         SBsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DyEOeZeD3NTsnAZL0RMyLsOw12/JQ7kXyTueffs0ELA=;
        b=PEC83P5FpD4WyoYLBFDjXZrgsGZn4+yaPY0igX5d33MYaSek0M76hCgSk8Zl6D4vIK
         NatUGy8G3jDt/pUMkNIsfwMWwmKlnYU8psg9VW7olGps5qsla8z3Ktqnv7Thj7gUVKHy
         Aj9oAs755t7/SoWigzAu8CCni4WYh/Sx/NgOm6ApsLdixGBODHmRhObsW1CmRksH88qw
         +a1pfM0xqbajUcKrUTJOkFAiJ1V5M5riPL3bO89rWO2R2x8YEHSk32bM3a+0nn66bRz2
         xRGnkRMZViCHwmoNm02uVJusQwcgBgTYydS1FzYspznXjMhEy8myTIv8a+ZupI4PWPok
         asAg==
X-Gm-Message-State: APjAAAUmehGwVesiNsdOZqXjeoTs/knyohyjBaNxqFs4cJQrb/S1g9CZ
	g5Ii/bLKB4L2XYq/nuPYWjY=
X-Google-Smtp-Source: APXvYqz7/YMPKSst/hTA8XMN+0KEPogwHr2rVwRl6VxSx52C3Bt7odq5pfsG6OFDb8Xq+wVaU9YokA==
X-Received: by 2002:a17:90a:7f81:: with SMTP id m1mr12236869pjl.92.1571418509860;
        Fri, 18 Oct 2019 10:08:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:5844:: with SMTP id m65ls2110330pfb.11.gmail; Fri, 18
 Oct 2019 10:08:29 -0700 (PDT)
X-Received: by 2002:a65:5b05:: with SMTP id y5mr11545760pgq.48.1571418509353;
        Fri, 18 Oct 2019 10:08:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571418509; cv=none;
        d=google.com; s=arc-20160816;
        b=EVjvKv18UZMF9Z4Mijzrrk+firqjzfdEoZkQ+aF4oMWaqSdO2g2zXiGeuigur90psg
         Lnc4GHdlFW0VgFIGcjk25KEU+KMYqkOHdIum1iW24wLGyh76jRChMIbQItNRqalxAtEy
         xyB5Pnwm8m5RsEvtxFpMXKiLEx/fgFY9m6nSanhrVsmbGz8F1P53jzWgxKsi6LSxEsH4
         WCLeX+XdTIK4F/IFCmxacT9tbVzhjpJaN04L8RlyYwcaOnhKkOHgyC+KnQDjWpRbRqxO
         YTJmsGbri72yjnc0WYHFpLYNUPpv40U3IUvZ8bgI7rEeWR6nNRmNRNNeNGJxhKoIteK8
         VMAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=icZdr5RXUlfIVPQUZ5ag+GwSMhqiqaO3j83adcgUQWY=;
        b=Cs3bpVydnbbEmgUEPmWf//EgV6FyHQhXa7hRIbQRffcUBW7BElFT4PxF7lVp797Tdw
         mOLyKrhsv7jymi2sF2j/NdkBABZ0ZpyaNZmJoxy8lyn42ypTXZf5oa9LHALqfglSmK3p
         FDrbFknjnBZkboNBCLA3D43gpP6eHFTL1IiYRER0vS2unOaPeaSaXizHP1qjDZ2XFvg+
         ge3Ve5cJL63HbswyudpaDd9Rz2b0xjrbwU8dX9JiTG07t8RzSi3R0HKkNl25MXlP9EdI
         pl2Sr+g+evv7jzDo7sR6O66RfBIqnKd/m+BTp9cgXPwCJ25UEhsoqQYl/7ecqBX8wpb6
         U3Bg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="GEpdi/vg";
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e43 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com. [2607:f8b0:4864:20::e43])
        by gmr-mx.google.com with ESMTPS id g12si267613plm.2.2019.10.18.10.08.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Oct 2019 10:08:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e43 as permitted sender) client-ip=2607:f8b0:4864:20::e43;
Received: by mail-vs1-xe43.google.com with SMTP id e19so4482816vsb.12
        for <clang-built-linux@googlegroups.com>; Fri, 18 Oct 2019 10:08:29 -0700 (PDT)
X-Received: by 2002:a67:ed8b:: with SMTP id d11mr6015143vsp.104.1571418507964;
 Fri, 18 Oct 2019 10:08:27 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-10-samitolvanen@google.com> <20191018130127.23746ff2@gandalf.local.home>
In-Reply-To: <20191018130127.23746ff2@gandalf.local.home>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 18 Oct 2019 10:08:16 -0700
Message-ID: <CABCJKufdDxJ_q-8Sj3+4rPuhAB3bdo_EN=DybZF5eenwZB4v3g@mail.gmail.com>
Subject: Re: [PATCH 09/18] trace: disable function graph tracing with SCS
To: Steven Rostedt <rostedt@goodmis.org>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Dave Martin <Dave.Martin@arm.com>, 
	Kees Cook <keescook@chromium.org>, Laura Abbott <labbott@redhat.com>, 
	Mark Rutland <mark.rutland@arm.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="GEpdi/vg";       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e43
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Fri, Oct 18, 2019 at 10:01 AM Steven Rostedt <rostedt@goodmis.org> wrote:
> NAK, Put this in the arch code.

> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 41a9b4257b72..d68339987604 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -149,7 +149,7 @@ config ARM64
>         select HAVE_FTRACE_MCOUNT_RECORD
>         select HAVE_FUNCTION_TRACER
>         select HAVE_FUNCTION_ERROR_INJECTION
> -       select HAVE_FUNCTION_GRAPH_TRACER
> +       select HAVE_FUNCTION_GRAPH_TRACER if ROP_PROTECTION_NONE
>         select HAVE_GCC_PLUGINS
>         select HAVE_HW_BREAKPOINT if PERF_EVENTS
>         select HAVE_IRQ_TIME_ACCOUNTING

Thanks, Steven. I'll fix this and kretprobes in v2.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKufdDxJ_q-8Sj3%2B4rPuhAB3bdo_EN%3DDybZF5eenwZB4v3g%40mail.gmail.com.
