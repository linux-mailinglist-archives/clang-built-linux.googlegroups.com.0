Return-Path: <clang-built-linux+bncBCRKNY4WZECBBBU43WGAMGQEENO35VQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F537456ABC
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Nov 2021 08:11:04 +0100 (CET)
Received: by mail-qv1-xf3d.google.com with SMTP id jt9-20020a05621427e900b003c027cd9516sf8144611qvb.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Nov 2021 23:11:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637305863; cv=pass;
        d=google.com; s=arc-20160816;
        b=UBxE/cfmbI5hm9G1t2WHqhG8v8HU97QOS2SA3Npoc6OYPTFx67pvJ3SwoKXFS6MXyb
         xRvWPOID7RqqcJa0vVrpvuTYpwLvNiF5z6iURmLNUao2gfZFTi7lf1gYSk/7uUlsqa+F
         tXxVP77CAQj9uskhfnrdY3mFrILP83Whn9cIatQdNPUB1IcLEs1td0NYSJ+EhjTvy6C2
         t4dRae5USMD2absOVAOzPBGjlCUbonax4gedUGfzFaxxAZgNpiDMmsOLrZE+GuJdZfyy
         2re0yTkyz/l1NYiiChbdnoLsmuN7/2YM7Kia3ML3bYBxM8BUrrHav5jaDKM0pGIBxZhq
         WOlw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:sender:dkim-signature;
        bh=uZGaBO9JorooUBTAWz52WjHa45LOL4oLY7IK/89hlzA=;
        b=ZIOTYuAZ95kXzbRhARGjFIajttDrk2oFy0s+omjfmyQ8VwzN3+jSYBImw3iAXPbMjn
         UfQ5dWfYsejhjOO7v8c1UwwWT+/ETqyl8QqV5ZzSC5dMGS+ryqXfy2YzfydMVqpPgZ3B
         RyY2YZxYbgkzgv25Y7hIQuKHKwLERCRaw8PEnfQMzcfMTAYiUw3WTCn7Ba59Ujup1VXb
         5LKFIfwyeea0mzQRdo27ANl4MsAq3rmLkUIzc3QINcXX2vAryho+qzb7PcVKM6cIGQky
         lIjZbZNyuU8ov++MZInaXMFAOzPIFbZ3GETcCy8N9NZMjLsGi8hsIwrKZxBIXpQ3LRrn
         70RQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@dabbelt-com.20210112.gappssmtp.com header.s=20210112 header.b=n0557Xpy;
       spf=pass (google.com: domain of palmer@dabbelt.com designates 2607:f8b0:4864:20::1031 as permitted sender) smtp.mailfrom=palmer@dabbelt.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:subject:in-reply-to:cc:from:to:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uZGaBO9JorooUBTAWz52WjHa45LOL4oLY7IK/89hlzA=;
        b=mOgiaEP9PeiuH/vV93pRbh+LhPw6ldF9dqcATjhRv085BuzKq1i1izg/G2yfgRRbHp
         DyUWVDIZIYt1YMyV1Vx9c4EOvYpIH6xgeG8e6XeouNqpXQMxXOFVDr8L89RLS+CU0rih
         5LLITRmSPaUMzyuyYBtV7kAp5zO2k1ZYt0NeFq0wdTUHVu1mUoyiUIYCtQ+/AWG0ghPy
         VKnzPgryBYTuc4FmCswMb1vU12sc7/AH8D4KMj53WnGfIEp6I8Dt731fn+KpF63Rnudv
         gCUWXRsb3XDqjrXgLBHTDjInx7/paKgsUmseQeROF+h/e9pRHg/1M0/+KhiOOVFjyBky
         7/NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:subject:in-reply-to:cc:from:to
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uZGaBO9JorooUBTAWz52WjHa45LOL4oLY7IK/89hlzA=;
        b=lalXvk1/aeDfJFNOK8RDC3OHqFfNTtUKYG20N+iTSPF8boGRpUkzzCYVDE2pSbc3AG
         crsUO8l8IIP6mFBA3PUe0z1H4BD8kIaHcWH7+zFCqenug3VXAKHVCrxiswBhiFFZmToC
         YydNSwb6IO5FPSOqLXkiAhxNaO0as1ik6PSDlWNcQSaTgeRhAtNw6RL3dTccoTnP6aNr
         oRdC9dzBL/o6D/ePQNj5ajN5MtZJoat9kZSm59Hm8JRaE8QSZ3uXDdb5anFR/NEWCuiL
         zyJxS9G0r+09CNTyDglCBGK6WzFm7fuC7Tw86lPsPjQ37hOauu3IdwdJy2JXk+Wsc81z
         pmVA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532So6jo4dPDo43qrQmL56zEWO+/KF6cuXXtbImucbLgZE4hNDZd
	dLZLFSL9pk/rQShCOak89oE=
X-Google-Smtp-Source: ABdhPJy6ryZA9/ixixHwygUVZM6h5yoslmOVwcuRXUEUaPVMtV5kIlcc4Z3k5XCZK32OhUzk5gEFPA==
X-Received: by 2002:a37:a853:: with SMTP id r80mr26240588qke.202.1637305862771;
        Thu, 18 Nov 2021 23:11:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:622a:180f:: with SMTP id t15ls1222903qtc.2.gmail; Thu,
 18 Nov 2021 23:11:02 -0800 (PST)
X-Received: by 2002:a05:622a:554:: with SMTP id m20mr3893978qtx.382.1637305862284;
        Thu, 18 Nov 2021 23:11:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637305862; cv=none;
        d=google.com; s=arc-20160816;
        b=oo8BhjYIXh7d+M8Wn13eoUQHpCv3AazMdNqlye5bwLPVA/W/F6pR0saXWSQYZF6PMD
         DFabAHFBnLi4ZNItmRUwZlWQ4PAu+YplYYK92nwx8IClJKFiB/eomiruQgd5BoCIWXfg
         Q2nhDRVk8lOkZsaJux+MAm8jTiwkXoHp0mwe1rlGvU+kJHvimuyiuEUB2PlBbbLi6pv0
         UM3nx9BFs4hyFcxMp7esBYYAy6ZqIHSy9ALOa0LdFp8gqpBOV1lIOEuvWgymY9wctnkj
         ix26windPpE902E3Ugy5wyxTRiALjDAXswYwLpTG9KgAl7YQACLT15WYg+KS4Qr2uaxc
         FiUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:dkim-signature;
        bh=p1eOarTU7vFn4QPFb7iBA1/Wh2WEiqkaaZtB0EXNIbg=;
        b=jwohuo+3wC6kmL0jzug4AJ9NeRnMVPoDeASMQsbx1lz0T0e3b86C0ImlWN+7E3W39r
         phBfR6qIVMproy677Xv1zAF5vHXW+U3NIrld1scZzxFtxMKfrtnjL36BJ5emYrtFAScH
         XqJBN6qKSw4ieN8taGCZazPtKKa/VvqW+gcB0KXlbtsQcsEjLdOtTPRgIW3A8n7zfAeS
         7U6MLzzNa0/RZOVClw4GHJvjW/83Hdxwga1w2GmwJvM6w53cLFldKRc02t64DimCEU9o
         oAuPJfxbyP6n7YErn0lnq5AemGFP62fk82NxNAuSOsfsDhzqTVD01Pb99e+choDQyzg0
         A5oA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@dabbelt-com.20210112.gappssmtp.com header.s=20210112 header.b=n0557Xpy;
       spf=pass (google.com: domain of palmer@dabbelt.com designates 2607:f8b0:4864:20::1031 as permitted sender) smtp.mailfrom=palmer@dabbelt.com
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com. [2607:f8b0:4864:20::1031])
        by gmr-mx.google.com with ESMTPS id i6si399956qko.3.2021.11.18.23.11.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Nov 2021 23:11:02 -0800 (PST)
Received-SPF: pass (google.com: domain of palmer@dabbelt.com designates 2607:f8b0:4864:20::1031 as permitted sender) client-ip=2607:f8b0:4864:20::1031;
Received: by mail-pj1-x1031.google.com with SMTP id v23so7238304pjr.5
        for <clang-built-linux@googlegroups.com>; Thu, 18 Nov 2021 23:11:02 -0800 (PST)
X-Received: by 2002:a17:903:4043:b0:142:4f21:6976 with SMTP id n3-20020a170903404300b001424f216976mr74448503pla.62.1637305861199;
        Thu, 18 Nov 2021 23:11:01 -0800 (PST)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net. [76.210.143.223])
        by smtp.gmail.com with ESMTPSA id u32sm1754055pfg.220.2021.11.18.23.11.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Nov 2021 23:11:00 -0800 (PST)
Date: Thu, 18 Nov 2021 23:11:00 -0800 (PST)
Subject: Re: [PATCH] riscv: fix building external modules
In-Reply-To: <mvma6imr1ww.fsf@suse.de>
CC: linux-riscv@lists.infradead.org, abdulras@google.com,
  linux-kernel@vger.kernel.org, nathan@kernel.org, ndesaulniers@google.com, morbo@google.com,
  clang-built-linux@googlegroups.com
From: Palmer Dabbelt <palmer@dabbelt.com>
To: schwab@suse.de
Message-ID: <mhng-797195d8-b49e-418b-af9a-013d36194662@palmer-ri-x1c9>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: palmer@dabbelt.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@dabbelt-com.20210112.gappssmtp.com header.s=20210112
 header.b=n0557Xpy;       spf=pass (google.com: domain of palmer@dabbelt.com
 designates 2607:f8b0:4864:20::1031 as permitted sender) smtp.mailfrom=palmer@dabbelt.com
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

On Tue, 02 Nov 2021 08:51:43 PDT (-0700), schwab@suse.de wrote:
> When building external modules, vdso_prepare should not be run.  If the
> kernel sources are read-only, it will fail.
>
> Fixes: fde9c59aebaf ("riscv: explicitly use symbol offsets for VDSO")
> Signed-off-by: Andreas Schwab <schwab@suse.de>
> ---
>  arch/riscv/Makefile | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
> index 0eb4568fbd29..41f3a75fe2ec 100644
> --- a/arch/riscv/Makefile
> +++ b/arch/riscv/Makefile
> @@ -108,11 +108,13 @@ PHONY += vdso_install
>  vdso_install:
>  	$(Q)$(MAKE) $(build)=arch/riscv/kernel/vdso $@
>
> +ifeq ($(KBUILD_EXTMOD),)
>  ifeq ($(CONFIG_MMU),y)
>  prepare: vdso_prepare
>  vdso_prepare: prepare0
>  	$(Q)$(MAKE) $(build)=arch/riscv/kernel/vdso include/generated/vdso-offsets.h
>  endif
> +endif
>
>  ifneq ($(CONFIG_XIP_KERNEL),y)
>  ifeq ($(CONFIG_RISCV_M_MODE)$(CONFIG_SOC_CANAAN),yy)

Thanks, this is on fixes.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/mhng-797195d8-b49e-418b-af9a-013d36194662%40palmer-ri-x1c9.
