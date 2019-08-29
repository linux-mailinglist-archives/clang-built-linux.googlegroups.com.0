Return-Path: <clang-built-linux+bncBD3ITNHVX4NRBWXWT7VQKGQE4AMGS2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc37.google.com (mail-yw1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BD05A20AB
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 18:20:47 +0200 (CEST)
Received: by mail-yw1-xc37.google.com with SMTP id j132sf2944377ywa.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 09:20:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567095644; cv=pass;
        d=google.com; s=arc-20160816;
        b=gbhxESBfbWbZdQR6qlzM4xbCta9c7jpI7LMViVh0/SZkuat8hRiHDm11sMSn/fZ2Ws
         8wWJq4tatCd1vRh5n48D3OS53b/2g5KI2+Fuz3cgjJZXGKkY9ROyXCTJ/gphtAo8/IlS
         il11FfAoKeF6pIDu/RE92eRxMtHH5csxSJAfqmjLR1bEUx79KER6bL6wM//CN+TQ8rle
         5FzV5QwcAEZKmQQ4dKPgvctAeH8hNeIXZC+MrFzed8p8EHpvzMr1ApXzywWxPN7jflF8
         oeaS9LgCz6zVr99FUStwkGJEex93wS+u4nRO4hDgAMpiV3VPDnDQ0XO+H9mKHhW0A+gO
         Yreg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=9fvG13j65Zxt4+sIf3xnlhYsJSRVV808W6IMGNco/KE=;
        b=laRN3xOW1oLfKEBxB050kikJDmmIAMMLfjbQEp/ALDDxFj3yqgwi7FCv8ahBVGHuuv
         Ni3TXdvl5oAqln+Fpkz/EHCRyJdlHNCD/qPntvlFMItNqHMSWztF30a4FwnHfm0WheGX
         zBlY0zmLIt8sg/PxRGs5wDQD23D+Rl3Z+lAiLJzFVk2B42PU3Kv0MNmL3Y0QDlv7qrrg
         bTyhO29+Z9cb/Os74FcedN51KA9PRgzCMQ/ejfqswoxo20Z3zyqaXM0NhwTAFwm91PuN
         OtHTUZiRaIQKlHAuOJfc4afIFg/ci4BeQJlNbpFr/mkklTXgMsOkZztUiaBzEnjglw0d
         n8CA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=SyLK87fO;
       spf=pass (google.com: domain of mka@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=mka@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9fvG13j65Zxt4+sIf3xnlhYsJSRVV808W6IMGNco/KE=;
        b=C7jQr7qJut+4VqiQsghS0jpqsh1HlJ4+pkzQsB9rMJnEKHywOYQ3qOa5KuAxSV/cyy
         UE/c6olOl4QuP8IVGLUxsYYiLR7Odl//9kgGhW/BExIFVOXqkoTaYaWY2eG0oBxJb4Dx
         UI4Ka8rDafQJcUgy+iRCgfKEo6gaQi3cGI1ZGBVWT16bq/62fDyo2R/PKJgYswOgIQk9
         xtSc1zPsQo8vRCKiroc184/8KkYkm/o6u5cFuQIEAY4kkWSwbIxpy3XEXUy+tMMdg6dw
         kng1zh3cTjvFj4au1/3Xm28jsqTvRfgaq2lapEe6BkEsXNvRN5RC8PqhiABXeaOKZ8n5
         a6Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9fvG13j65Zxt4+sIf3xnlhYsJSRVV808W6IMGNco/KE=;
        b=jM4J/6ztOx/O/H5OOzj3m6WNQkEiQa5TEpeStQiK5kZ/7jZWdz9hb2xYcnamCULYTN
         JHau6BLAG+JzQBI51U7iaOu7AMzdAcAXuPKm8EGpwNWaNJPx5dANrSjCNc2pB61yQi7x
         J+Rz+oGmH4J0JhkonL7/xSoLGrqJrKriUAzVyMWZ3S8JsuKtlU8O1RXk+TIuWjGyJrIY
         TPq8GbSnXbcyyb5m0Z37eN/Jx9sNKwmB0tfMVziuzcElMI0GJihA4oUfBCCnUt6T98Ew
         R8VNpt2C1d2kLT02O3pO2ijqapEy3kENYJlRLvs2zAbw6E7G46udjkIWgMO0zRVd62f9
         NTcw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUtZXpydKKLIyeMwJm9he4KGih7SYRfLD3uO9whVRFj2z3jCEHI
	69fBYO7Ka0OFl4PqpSQQMNA=
X-Google-Smtp-Source: APXvYqx6qz+AsGE8WckF7snxNsKRub+SHIzB5qtai/ODE0HuRX6QZOlREajiQdpQ/zAzMbZJQ724qw==
X-Received: by 2002:a25:9a08:: with SMTP id x8mr7694905ybn.91.1567095642531;
        Thu, 29 Aug 2019 09:20:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:5255:: with SMTP id g82ls508859ywb.9.gmail; Thu, 29 Aug
 2019 09:20:42 -0700 (PDT)
X-Received: by 2002:a0d:e14d:: with SMTP id k74mr7797239ywe.364.1567095642253;
        Thu, 29 Aug 2019 09:20:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567095642; cv=none;
        d=google.com; s=arc-20160816;
        b=pwZI3BsPb2+vIjkTyeT5zbuhHVgbGbcUQJV0DOnwfbS5Ay4eUacpUcoCA9RY3CCF1s
         RUKghhs5GQ4FR1PZATr/UUCE/qXWH6YVygYwj4FMmk4PJHvJxDsy03GtiDotll1/7ZwZ
         GSi4fYUMdVSpUv18Kf28imzyBI0VMw97BWiUT/9ICqLvDYOnZasoq3ANsd7fzKtbM2En
         3D2MkNAiP9IoVKvHndIla5sHCR9xUFK68uspFcMMVUmYpOXulIlpMve8+mO1hl766R9D
         hYOJzWQhJI4AT8FdXO75zDRLCy638fBWOqO0JGk+wTqNo3cW9ZYTipZowld1CvTwtVOT
         W0IA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=E3LStifNgUuLd+VD32Zb5UxmVS77q41aK/xZU55AQsc=;
        b=UOIaYFmJKcUAhhZUsCiT+4VjxUdajne90L37NH5z2olkbgRC7lzapomiw1bSJboCQ6
         r8jY69UKJMIyd6rC0uM2g8kra9W2t6HOGkQwJ4tPI89jkFfioQbdI9TrN3JiyydwqqmD
         t+50Qk69aZr+hUcVQdhW3T26Etfk992PX1DuPluZvm4y3moLbhovNLtcm7iqKUzCoqTY
         mE2dCDF+b1nRrB294R+hQ9VicR4O4TV+PTSz094S0fsSmFGVzyRB1G2VNkP9prPh9/x0
         P8dh0/OiKhjq0vMZXYECxM6jvKxxr5fBAmWz0B2Oa9T4Bg1XXZaHNoHuv/73SVU2wzGj
         cslQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=SyLK87fO;
       spf=pass (google.com: domain of mka@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=mka@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id p188si153370ywd.1.2019.08.29.09.20.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Aug 2019 09:20:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of mka@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id go14so1809477plb.0
        for <clang-built-linux@googlegroups.com>; Thu, 29 Aug 2019 09:20:42 -0700 (PDT)
X-Received: by 2002:a17:902:6687:: with SMTP id e7mr10999063plk.211.1567095641909;
        Thu, 29 Aug 2019 09:20:41 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
        by smtp.gmail.com with ESMTPSA id l31sm3066505pgm.63.2019.08.29.09.20.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Aug 2019 09:20:40 -0700 (PDT)
Date: Thu, 29 Aug 2019 09:20:38 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Russell King <linux@armlinux.org.uk>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>, Stefan Agner <stefan@agner.ch>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] ARM: Emit __gnu_mcount_nc when using Clang 10.0.0 or
 newer
Message-ID: <20190829162038.GC70797@google.com>
References: <20190829062635.45609-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190829062635.45609-1-natechancellor@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: mka@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=SyLK87fO;       spf=pass
 (google.com: domain of mka@chromium.org designates 2607:f8b0:4864:20::642 as
 permitted sender) smtp.mailfrom=mka@chromium.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=chromium.org
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

On Wed, Aug 28, 2019 at 11:26:35PM -0700, Nathan Chancellor wrote:
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
> arm-linux-gnueabi-ld: kernel/softirq.o:softirq.c:(.text+0xa50): more undefined references to `mcount' follow
> 
> clang can emit a working mcount symbol, __gnu_mcount_nc, when
> '-meabi gnu' is passed to it. Until r369147 in LLVM, this was
> broken and caused the kernel not to boot because the calling
> convention was not correct. Now that it is fixed, add this to
> the command line when clang is 10.0.0 or newer so everything
> works properly.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/35
> Link: https://bugs.llvm.org/show_bug.cgi?id=33845
> Link: https://github.com/llvm/llvm-project/commit/16fa8b09702378bacfa3d07081afe6b353b99e60
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
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

Is this also correct/needed when CONFIG_AEABI is not set?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190829162038.GC70797%40google.com.
