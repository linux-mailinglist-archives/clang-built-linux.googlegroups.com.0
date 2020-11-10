Return-Path: <clang-built-linux+bncBDYJPJO25UGBB6PHVP6QKGQEJ7ZLP2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc37.google.com (mail-oo1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id 2729A2AE082
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 21:11:38 +0100 (CET)
Received: by mail-oo1-xc37.google.com with SMTP id q80sf3309365ooq.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 12:11:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605039097; cv=pass;
        d=google.com; s=arc-20160816;
        b=jeWUxdHIyNJKRXejw7q+ZkI5RqsUQ6GjAE+D7gQ7c121l2Xv3EO/QMxIHiyUTauzb+
         1Nw1VZi6NllujMaCJJdtONlAEecV6shnuM49Mt4DFDveesIyrG+3fAYHlgowrH0uozI/
         pS4ZQo5IuN8563iKKtT4siNI+hsPcyUmrt3FCf2nvJzYFyCMH3AmOoYT3t8d68Ulr4Jv
         +DRRm4vBHCJCgJkfp6r7jELIYphTIikU4HNv45uVAJHKQ098jW0fghqd0k2H6+kA4IDU
         +8Hjwo+WjQTAxWE4263HM0/P1dFh2rVCVyVm1yRsJt29IrP38dXW8ce1YqHBsVrSnnv/
         AEKw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=TgNZ5HRYARhjjciyE2wxy1SEqD2pNMZI1lZKwHeUlg4=;
        b=YITN/nimkSOAYc1D6YLKbFhlp4wLi0cPyL9BGoxM1Y1rdyZ1zeacudYn7tN73XvP9T
         PiW/YvEv20Jp5fD+R+Ke6DC7Vk8nZHv9W16WDZRNqFrdj0dPA7Ka3AnV9uzeM5Cpmwf3
         0Jv+gQ/60BAB9uy+79RjYPHO+Dz64CcMqJo4FlyxqIAhdOdOAmSWU3Lm8YQJQkLkpjoO
         VmbLWh6XeXhCkxI9NG6e7/CYqse87/DLEqKSQGpSuYTaO6bPMw49nZqjEwVU4PPAdZjZ
         50+uWteXq3GkZwtDqbrgu6QDho7nEXIKE1cMdw5zaz4R4NoR6VX96t0Up2ev7YuwFuXK
         VD6A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=wPVJ2kjr;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TgNZ5HRYARhjjciyE2wxy1SEqD2pNMZI1lZKwHeUlg4=;
        b=ZqJCg1xsU/ZL/SJg2VpPkJWr6vGN/kZD7yp7N8G6jDZNpsSP5O26NqCibd9qkHDbQn
         9OlB1dznn1gWlvoJSABhL0d3A4x3JgU45dg+NyptUKdanGkJABUMPd01pd/MrgGcjNCJ
         dgEO7fcxUfX+cuzhhvs53/aAmXePw7jR3y3KBtVWiCJHXj0PyoUomZZ8NqXdI0dP/YJg
         Pajsuyvcq8CXDLRY4/xhaxPxlVr8+4iZxJFTo/Q3y7DbxaNWGpvhXA18wlmcC/p+zoEI
         5WKGuVIHYtlPlj/TiQXE4/Ur49fFgjRN5O2e+yRIiS033zHhagh/kYyRnR3f+k5bdl2Y
         HUXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TgNZ5HRYARhjjciyE2wxy1SEqD2pNMZI1lZKwHeUlg4=;
        b=t/bxKxi/6YNj28EG5Y+c25ZS7fn53y43iaHBAbnaPCjZwKGGDfIHm9FyNI76s64khP
         Qxl2akNChnuF1Krq9CAfef56Wi66siy3Xx679GhR5JbGl9+tlRiMl+C0Q7+e7SRCmyBB
         Nh7HLZs4NQeD5ZzU8Lwq3kV1Xgj7JyALvryWzQz88lHn/EZkxHDCI3F4KLpaFEDV3M4M
         VJTRZinVCMV6MjKb+hPL1HaYPCJWVo79DJusVJT1fATmy4i9qMmMhvKFQCoznIhX5mRL
         4Q5f++xppx5O8zS3sw8Iw3TrtpvLe5aaawZnEnCyMllNVh4mV17CIJo4E/KRv5wA6DUH
         hPrg==
X-Gm-Message-State: AOAM531f+DT4fbi9hgTuFMxzDTsPtRxNkBfDjv4gjDECLyUwIY7vCiqP
	oiNvNqb0lNLYDNwd1cmXn18=
X-Google-Smtp-Source: ABdhPJwzfDrX0C3+twmE0FCtFH8cMbn3JQYmmmsiLpFzB7EjhNM3R+SQ3KDJMh+ogxBq/xoAp34ZDA==
X-Received: by 2002:aca:e185:: with SMTP id y127mr565858oig.57.1605039097112;
        Tue, 10 Nov 2020 12:11:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7994:: with SMTP id h20ls538956otm.2.gmail; Tue, 10 Nov
 2020 12:11:36 -0800 (PST)
X-Received: by 2002:a05:6830:12c2:: with SMTP id a2mr15459313otq.162.1605039096787;
        Tue, 10 Nov 2020 12:11:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605039096; cv=none;
        d=google.com; s=arc-20160816;
        b=NgG0XjgCsj/EfVC9MxIIkAqPQjaM3xxSmiqFroIa1hvZf8GmcfRYIvcugn8W/LIOHh
         HlNJ7ZK0vhqSvu0rLCs4AlINiCiaacM0fLHy/Y3dBc/Xyjk33egN1l12eLfqslyG1dkA
         NjVWm4iG88r83FEu7E0yI3cQql7otkXVnNYYnmuMJ0nNAu0bhMJEDS4SlVwKLQLuNRiI
         twpPcveAx2fv+2qCYEwinm7gqfPCWDynY0Pv1hOMOQ0Lzn3zTouhoGYiGgPmupxGPa7d
         xEwpv/DBSIfIv51uCD/+sCVQyNBMbkG68rYvwBDE7aT92inq/VxnQscO8G3i2vxDv/Dq
         U6dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=dF4wNWErsCaTFjbAYZ5rOT8K7SSx1h9isfYodFGRVTA=;
        b=JzXLIvos8lw+6G6HG05+VFtFagyK0/wNfdCUr079bqK+fDVncLaXabt9pi3NyuxSl0
         rvxX3ZRjZOwxvqfu3cd4QqHhhrW/ANVtFHUuvS/nCDEx7VhLTP0EfqoJN54kCM9fEIqs
         lF0CQWJzB3QmBJMKQBCoq5G4jEt7EWa1EU5pxJxnmyYE0htoMNBu8jmP2I45j06NueVC
         4yf/gb2B/y/nQ9SpuAPHqabck/4qX1TCFyeJsxsKu8WRdnPbz3yiPhSn+UUYVK7d/U4Q
         U7VnvrjKDb/XcV5oDRKd4B0wj2uCCTQnTanGkpYHzzVgLXdXxnd3SVPoMFtCS47hZBKk
         +Bkg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=wPVJ2kjr;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id r6si1902759oth.4.2020.11.10.12.11.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Nov 2020 12:11:36 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id r186so11236045pgr.0
        for <clang-built-linux@googlegroups.com>; Tue, 10 Nov 2020 12:11:36 -0800 (PST)
X-Received: by 2002:a17:90a:6b04:: with SMTP id v4mr867608pjj.101.1605039095998;
 Tue, 10 Nov 2020 12:11:35 -0800 (PST)
MIME-Version: 1.0
References: <20200409232728.231527-1-caij2003@gmail.com> <20201107001056.225807-1-jiancai@google.com>
 <CAMj1kXG+qb267Hig6zoO=y6_BVsKsqHikvbJ83YsBD8SBaZ1xw@mail.gmail.com>
 <CAKwvOd=pHgT3LsjYH10eXQjLPtiOKDj-8nJwjQ=NMSFLTG1xAg@mail.gmail.com>
 <CAMj1kXHDzj3Q-sCv1szseUC7g2bWRFeVP6WME-sMqDf+0wyU8Q@mail.gmail.com>
 <CAKwvOdkXz5wOwKQDsi5jt21ov3xETSByAqxGLQ=7U6Gsp46zcQ@mail.gmail.com> <CA+SOCLJSSR62VfWhKx9R1cxT-CHXD7RN08eJBYxUH8zzyWos9Q@mail.gmail.com>
In-Reply-To: <CA+SOCLJSSR62VfWhKx9R1cxT-CHXD7RN08eJBYxUH8zzyWos9Q@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 10 Nov 2020 12:11:24 -0800
Message-ID: <CAKwvOdkpHdQF9Ko8FbP_SN=QfDiMq8ra5TSj_KHGRCbJdyYm6w@mail.gmail.com>
Subject: Re: [PATCH v2] Make iwmmxt.S support Clang's integrated assembler
To: Jian Cai <jiancai@google.com>
Cc: Ard Biesheuvel <ardb@kernel.org>, Manoj Gupta <manojgupta@google.com>, 
	Luis Lozano <llozano@google.com>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Russell King <linux@armlinux.org.uk>, Nathan Chancellor <natechancellor@gmail.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=wPVJ2kjr;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Tue, Nov 10, 2020 at 12:10 PM Jian Cai <jiancai@google.com> wrote:
>
> I tried to verify with ixp4xx_defconfig, and I noticed it also used CONFIG_CPU_BIG_ENDIAN=y to enable big endianness as follows,
>
> linux$ grep ENDIAN arch/arm/configs/ixp4xx_defconfig
> CONFIG_CPU_BIG_ENDIAN=y
>
> Also it appeared arch/arm/kernel/iwmmxt.o was not built with ixp4xx_defconfig. The commands I used
>
> linux$ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make CC=clang ixp4xx_defconfig
> linux$ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make -j32 CC=clang
> linux$ ls arch/arm/kernel/iwmmxt.o
> ls: cannot access 'arch/arm/kernel/iwmmxt.o': No such file or directory
>
> Did I miss any steps?

Yes, you need to manually enable CONFIG_IWMMXT in menuconfig or via
`scripts/configs -e`.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkpHdQF9Ko8FbP_SN%3DQfDiMq8ra5TSj_KHGRCbJdyYm6w%40mail.gmail.com.
