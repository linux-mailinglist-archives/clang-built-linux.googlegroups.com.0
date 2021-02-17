Return-Path: <clang-built-linux+bncBDP6N55ZUYDRBPFVWKAQMGQEUJKKKZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E9D831D495
	for <lists+clang-built-linux@lfdr.de>; Wed, 17 Feb 2021 05:25:34 +0100 (CET)
Received: by mail-pg1-x539.google.com with SMTP id f16sf10735827pgh.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Feb 2021 20:25:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613535933; cv=pass;
        d=google.com; s=arc-20160816;
        b=GT7k8aVQOYRH9O82zOheybAcNocipHzzxIqDzDulb6AN69EsHR2Pc1kltB+qvRyuW7
         aIJtkYib0BMFOxj1LkSGJLGQTEHdwSir4DzhayCKEMtozAL7Jdl4Gk5WLbDwtQ7f+aMi
         PmUo836JaPsCKqN2fnTNNmByWpVU02no0cS2oeWpf9buPBayvtSVK6bDND4vDvxtyNpy
         CAdkcAxP+nG4Sb8i8EB/buYAa1Kx48e8pVrD/V+owD3Nhri0Z4WLuiw+DEhoM2rQZrIO
         E/t/LSRvxyBxVWN69uGI4e6LYMDWFnOzYwqVXw2MMsS0nqLbvRy2cnrnYerPcy9ym+J3
         K4BA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=yJHMDlIIE3ePI3B5VCQA9ps8YskH0AHa57lzAW1rkuo=;
        b=qAmtHROhvFtlVGoVZRoFVTF0ecSZA0N1K8Kbd+wlj6v4P4D4aBTVx7FXTWLsRBBcoy
         WIGZ/WJo/N9zFqgWTAZMtsuSDFqgBVUiA+8kZ8Y3Hs9TFYBXU3MUBMPMFveur1ecd/PI
         BpW0Av20fPOMb+7jT6PIZLtW0ZJVmfP2EyaJYHP9kKv0+qWxGsNxrP0kk9sa2ZMUe1sV
         27J0wI6X8kYuAOAVQxct8gHqj/cS6LRXUs140/EgKtmZjaBPhJhQHWEK5ZALM19ik5SH
         nlf/XQBzM//7tOwQMlfqVRtXFQbsgUD+qMSDArIihIRqx2MHPrkYG4R5RUI6FYe4vgr9
         XIiQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kZKS1i1c;
       spf=pass (google.com: domain of dmitry.torokhov@gmail.com designates 2607:f8b0:4864:20::529 as permitted sender) smtp.mailfrom=dmitry.torokhov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yJHMDlIIE3ePI3B5VCQA9ps8YskH0AHa57lzAW1rkuo=;
        b=hTLwtdatzPZP1ucSRNqrFLCKWqLDoS79vx1h4Rt3veY6bnLAyOyyAXvzlu7/jiqpIB
         F1CeYLt3DJ1DFcjLYzzVOkcszdV4+xReOhQMSWMeQMKVAtyjUk9QRb3w3wYrQGaG/u3p
         IjI4fxmDQIDaKf1+zl03PDIouDp9dW9n8E7FkJ3CAtDIfIRKPdc7Rl96ZaRXrgR/kBbT
         hrzMAaDAw4Yiv+J3dNQs9P6lpBTC4oU71cOQFLawM/cMZG38RsgZM5AY5SXSCz86M7St
         jRT+FEo1AHnp8r+mwRm84NdMlEJm+eulQd1ANQmjh/DiPydepwUjR/vaOyf6wNqzm4oC
         qxtg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yJHMDlIIE3ePI3B5VCQA9ps8YskH0AHa57lzAW1rkuo=;
        b=m4auEUEvs/quLoyObZ+Q+9pXlBDD+xptWyEKU0cqAcFysTfb0TPZuypEgOT6Rjauve
         tVzfTub4CF6WIZLK3buAXotnI27X2lSkttM4ujz2KdA/bunUikv3h46UGcbplupw24iO
         9YOk+nM9HV8YqFaSS43NsvbZkTbjMCZs1qkW0cH+SMSZzTJ3CNr49+6dkNI6AQhZxGmY
         BNFtBsLvDJ/yPr2nUp8UcNK8Bzkqx6YG4ACnTqVhpKH2SzhRgvkRczXc4rdiod8Z3Jwl
         SsyLwv3PCY/nEzIl48SGYrYii3VXhwbka8glgd0Xc9OJHoB3sj5nGWiaxnOWofv3oIZh
         HAvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yJHMDlIIE3ePI3B5VCQA9ps8YskH0AHa57lzAW1rkuo=;
        b=PWjOXV6vehp0b+7MuU7PAdj/1p3j1g8Yxg5xPyD2rBTAy0JL/ugcBKmsGsgeLNsQ7/
         Q4WRjYnVYPoSKAYO3vep+6rBXpmd3hWOBtU/qKE0JB0Uj+vYK4hQBwSCyQMQsq+zA/n+
         1TD0M5VBaDiMr99SM1oZ9cjePImLgz0Vu70JjKGOtQHEjwZe+BLmNTlEUNR1Iy4O2NLW
         /CdoVFIa0TSQTMbFDe07mu3UvS/3rHe5s0BKXtwwH1NialWJu5HGUMtqZnbIs5wX2IB1
         rd9UU/yQPDkRTgDl6Q8RmOOUvxHxnAgCsS2sybHnKIRwManpbSF7P+sCFlYN/gUHmgQT
         ZNYg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530J01p7rIRDdyOEem1Wv1yxXi4/1JUqk/WOXi8cPKRKwEryL9mc
	k9tizsnmXQEs5VbAseD0r/U=
X-Google-Smtp-Source: ABdhPJwq1wqSkg7Fg05EQBSuShvygbZdIRZuuCSeEuRSUY9k6/a2LyLtG7U8/bAxWnrWh/zLBq8QyA==
X-Received: by 2002:aa7:9d83:0:b029:1ec:b2e9:af94 with SMTP id f3-20020aa79d830000b02901ecb2e9af94mr8611950pfq.48.1613535933039;
        Tue, 16 Feb 2021 20:25:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:511a:: with SMTP id f26ls278477pgb.9.gmail; Tue, 16 Feb
 2021 20:25:32 -0800 (PST)
X-Received: by 2002:a63:581f:: with SMTP id m31mr8032536pgb.142.1613535932230;
        Tue, 16 Feb 2021 20:25:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613535932; cv=none;
        d=google.com; s=arc-20160816;
        b=fJMss/YHilNs75L+nkHtHjO+qjmkFnJWHvBs+UaEa5o6U2Kp007jvX6BOnJMeOWNHe
         iVK0nUZ5VesZtXKFDFirxd6MXi69HmCg7R2dbe2DDI5BG738Ho9TBBFmO6kXWpWGLFde
         iyNVODO9F6WrdKt32p+5N73m+6A2mT8op5qsgItAWDwc8yealhLRCJ/fc0B0Hrpg0Pik
         U5jJAZRqaatqUJEDDF6TIX+tzv+vpM9ZZv6hlvGNEBdlVog6UtOuAmB5QI0SErZDqK7n
         eSst+T3mw3NwB9bncIN/q2S/NvgtC+fpVn76hwHF03noC+0XftNfKl3pf8ozFthSjY8Z
         PYzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=8N8VUtymbEwBaNMugopGhm8YEpo6bazq+MwNjAUL6n4=;
        b=1FDg59OukTlacd1e9PPquA/qIB+/rkBRuOwjiryPUMZsqiNY8AXKW98O/MfBMPp+J7
         DKEKr4tCKpUgDyafyWnI9PWuzOU2UvHY8WUVHlCckZoZjxZwJa+Pxs0UmasiQqZqjLko
         XOAyBIBbPmCW3Zh7J6S6xPlwa39k2UslVKPHpW5sLTgNWQTnoOJHLcrcBO/x3sTn6kv8
         fbODd6ddgG1f61XW4vC7etRBo3NhCzxzVberd34RJt1ruqDkBXAok/ABw4yNh08xVghS
         VKVuKeGVYkib3tSlliMQEu0N2pgQ/tDl6eHlS1fzXqq10fPvfK0VYgRVHRVskl9JWOze
         vr1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kZKS1i1c;
       spf=pass (google.com: domain of dmitry.torokhov@gmail.com designates 2607:f8b0:4864:20::529 as permitted sender) smtp.mailfrom=dmitry.torokhov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com. [2607:f8b0:4864:20::529])
        by gmr-mx.google.com with ESMTPS id v7si47100pgs.2.2021.02.16.20.25.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Feb 2021 20:25:32 -0800 (PST)
Received-SPF: pass (google.com: domain of dmitry.torokhov@gmail.com designates 2607:f8b0:4864:20::529 as permitted sender) client-ip=2607:f8b0:4864:20::529;
Received: by mail-pg1-x529.google.com with SMTP id p21so2041556pgl.12
        for <clang-built-linux@googlegroups.com>; Tue, 16 Feb 2021 20:25:32 -0800 (PST)
X-Received: by 2002:a62:ed01:0:b029:1c8:c6c:16f0 with SMTP id u1-20020a62ed010000b02901c80c6c16f0mr22934118pfh.80.1613535931888;
        Tue, 16 Feb 2021 20:25:31 -0800 (PST)
Received: from google.com ([2620:15c:202:201:21d3:2abc:ad8c:8b3a])
        by smtp.gmail.com with ESMTPSA id 12sm462369pjm.28.2021.02.16.20.25.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Feb 2021 20:25:30 -0800 (PST)
Date: Tue, 16 Feb 2021 20:25:28 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Linux Memory Management List <linux-mm@kvack.org>,
	Tony Lindgren <tony@atomide.com>,
	Scott Branden <sbranden@broadcom.com>,
	Shawn Guo <shawnguo@kernel.org>
Subject: Re: [linux-next:master 2048/11541] omap4-keypad.c:undefined
 reference to `devm_ioremap_resource'
Message-ID: <YCyauGyqxut69JNz@google.com>
References: <202102161003.uEuTf3vU-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202102161003.uEuTf3vU-lkp@intel.com>
X-Original-Sender: dmitry.torokhov@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=kZKS1i1c;       spf=pass
 (google.com: domain of dmitry.torokhov@gmail.com designates
 2607:f8b0:4864:20::529 as permitted sender) smtp.mailfrom=dmitry.torokhov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Feb 16, 2021 at 10:38:07AM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   52a0bcb60e40f30211cb5cbbb0f582ec4e91d896
> commit: 60dc45119465d086724851d2a5fd09daeb3c515e [2048/11541] Input: omap4-keypad - switch to use managed resources
> config: s390-randconfig-r002-20210215 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c9439ca36342fb6013187d0a69aef92736951476)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install s390 cross compiling tool for clang build
>         # apt-get install binutils-s390x-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=60dc45119465d086724851d2a5fd09daeb3c515e
>         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>         git fetch --no-tags linux-next master
>         git checkout 60dc45119465d086724851d2a5fd09daeb3c515e
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 

Thanks for the report. I think the following should take care of it:


Input: add missing dependencies on CONFIG_HAS_IOMEM

From: Dmitry Torokhov <dmitry.torokhov@gmail.com>

devm_ioremap_resource() is only guaranteed to be present if
CONFIG_HAS_IOMEM is set.

Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>
---
 drivers/input/keyboard/Kconfig    |    4 ++--
 drivers/input/serio/Kconfig       |    2 +-
 drivers/input/touchscreen/Kconfig |    2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/input/keyboard/Kconfig b/drivers/input/keyboard/Kconfig
index 94eab82086b2..32d15809ae58 100644
--- a/drivers/input/keyboard/Kconfig
+++ b/drivers/input/keyboard/Kconfig
@@ -685,7 +685,7 @@ config KEYBOARD_OMAP
 
 config KEYBOARD_OMAP4
 	tristate "TI OMAP4+ keypad support"
-	depends on OF || ARCH_OMAP2PLUS
+	depends on (OF && HAS_IOMEM) || ARCH_OMAP2PLUS
 	select INPUT_MATRIXKMAP
 	help
 	  Say Y here if you want to use the OMAP4+ keypad.
@@ -773,7 +773,7 @@ config KEYBOARD_CAP11XX
 
 config KEYBOARD_BCM
 	tristate "Broadcom keypad driver"
-	depends on OF && HAVE_CLK
+	depends on OF && HAVE_CLK && HAS_IOMEM
 	select INPUT_MATRIXKMAP
 	default ARCH_BCM_CYGNUS
 	help
diff --git a/drivers/input/serio/Kconfig b/drivers/input/serio/Kconfig
index 0754744b9ce5..f39b7b3f7942 100644
--- a/drivers/input/serio/Kconfig
+++ b/drivers/input/serio/Kconfig
@@ -255,7 +255,7 @@ config SERIO_ARC_PS2
 
 config SERIO_APBPS2
 	tristate "GRLIB APBPS2 PS/2 keyboard/mouse controller"
-	depends on OF
+	depends on OF && HAS_IOMEM
 	help
 	  Say Y here if you want support for GRLIB APBPS2 peripherals used
 	  to connect to PS/2 keyboard and/or mouse.
diff --git a/drivers/input/touchscreen/Kconfig b/drivers/input/touchscreen/Kconfig
index cc18f54ea887..529614d364fe 100644
--- a/drivers/input/touchscreen/Kconfig
+++ b/drivers/input/touchscreen/Kconfig
@@ -608,7 +608,7 @@ config TOUCHSCREEN_MTOUCH
 
 config TOUCHSCREEN_IMX6UL_TSC
 	tristate "Freescale i.MX6UL touchscreen controller"
-	depends on (OF && GPIOLIB) || COMPILE_TEST
+	depends on ((OF && GPIOLIB) || COMPILE_TEST) && HAS_IOMEM
 	help
 	  Say Y here if you have a Freescale i.MX6UL, and want to
 	  use the internal touchscreen controller.


-- 
Dmitry



-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YCyauGyqxut69JNz%40google.com.
