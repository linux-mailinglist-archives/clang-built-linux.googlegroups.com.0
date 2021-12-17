Return-Path: <clang-built-linux+bncBDOILZ6ZXABBBGOD6KGQMGQEMUO3GXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C13D478DFA
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Dec 2021 15:41:30 +0100 (CET)
Received: by mail-wm1-x337.google.com with SMTP id z199-20020a1c7ed0000000b003456affcffasf3044650wmc.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Dec 2021 06:41:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1639752090; cv=pass;
        d=google.com; s=arc-20160816;
        b=xxoQ7Cw7XpPg8/UoBI6B0sW7hB2Bu1rOZdT6tdJtHs7TUKmqbuulzZgMqcX7dsRwZj
         muAuZ+RCBwYR2Hq/e9NJntcrqzyXWyy1VJfNxxEcGBjSK2GtZWNvroDYaHO5godMVMgX
         U2uRwe4Pt2JtIDZo7r8zy500CqAuvpaG+tAnP+N5jLWuyKqFHRwlCSw7e+Haryxqm9In
         fw/ASB8GgWEQPhRpCHmXFUiqIYly6WhHQOk5RFNyMS9h03TIV++Ae1n91sTePo58M/1P
         7NaU5kbZP1COcJaQ4m5J10azggIL4fNpWJa26ifYBWvxsNU3Zm2qM4I/qGWZC/EJE6wq
         jG5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=WXap52bXSms+LI92+L6KWvIpGassxB5ZR+LjkjBlkvc=;
        b=lNGhmTMjGuxUsHY5lEuFrXLcADPDK6zHfbMOkoM7TNfP1pdZIfXLaO65St62RDvZvQ
         TvC1lSJevi5PJwPQtTi+JD2N+JYj68U1RFlXhWXBsycLsVFmnmfw1aj9B7Kt4WATTl2t
         /+bquhKvxtXa+vddyJivLxhjNrgToSrE59qUZSEmLlJTLbU/fjGx4w1S+MIbZqX3COH6
         s0F3YLUGZ7sX9rsfNuwpi0+Y9xzhads79JVxyPylQeIKIvlugzp4S3BZKqlVdqHfLh7h
         NEt7945y/8jXwVJyyPwCZtoj740rRAoSgc6c7pKs2cS+GmzKyC6JXGBgocFeRnDEL94q
         qyYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="srPPgox/";
       spf=pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::52d as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WXap52bXSms+LI92+L6KWvIpGassxB5ZR+LjkjBlkvc=;
        b=oMkwU3B6I4DBraofTf5J12Risza5+RatDPqEr0v8t/tXO1a54jF2FyvXo4iF/dXc8y
         JYAhbCTWV1ljJ/6Q9E58YMjODWoGXb1kmQ1fFA+gP9WuN8PJ2nqDnSIk3nxy3t2cLRop
         MfxOhkwmZklxdaAgcwnAe1onO5fQVcrnHzCkwrqD5k6NJo+RNQJ1XL4s46SZie3y3KG/
         AvcdBEiJAjkmiaW0QSu/YE7lSs4eX1PcwBxITTkYulnPS4V5gDGTjeXSMxSLERFpC20t
         yV7541gZlIjFAioyxkICKsRwuX8Y3ORekcfdEULzM8XaGykbjpgTBhGjnCN+5YCQATVT
         +33Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WXap52bXSms+LI92+L6KWvIpGassxB5ZR+LjkjBlkvc=;
        b=Q9BE+uf2EBX5q600m9kTa6pSZuyR1gmHqnJ4ffCjmnR7hTNkEWKHScA119x6IOUqNV
         Ey8bV5fF3CRF6WUJyZYMHjdqOrla7JAFkzs/K/aE39WsnxHQOHAhtVgqLR7TKxwe7ZX3
         tcF5S8wsw2C+V00EQItDLYoeJ7Jt1dFH8EuwWJwDkYNitYt8ChXp0mlM74OZPjFhgauu
         O0/Ik6jw1UxFH0KDTe6J4O8eEzKYfwn0aPXI6nVeGEDxQrvToT3u/EMlGLHpGIgCPrYt
         J5N5wyRwnv9pX1aINdKhQJKljcD81SWrKvAm4Gzawo8Ro6d3OjaKN/AttR4TRmfQFjBA
         n8Ag==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533k+J+HugL7BvUHZaCs0HvjgR8eiWBZ/uSHJ3wZHq6bL8AfgHfo
	ErZpAPBC5r2/e1LIPV6os78=
X-Google-Smtp-Source: ABdhPJx8x0DsFHgLYGIIlYnSL0rVzZP69RZ/AoHJqSsCYeGcBVfHBvOgaXamixeIo8SZWfOpXobFeA==
X-Received: by 2002:a05:600c:3554:: with SMTP id i20mr2993649wmq.124.1639752090043;
        Fri, 17 Dec 2021 06:41:30 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:c90f:: with SMTP id f15ls206208wmb.1.gmail; Fri, 17 Dec
 2021 06:41:29 -0800 (PST)
X-Received: by 2002:a1c:8015:: with SMTP id b21mr9718040wmd.161.1639752089124;
        Fri, 17 Dec 2021 06:41:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1639752089; cv=none;
        d=google.com; s=arc-20160816;
        b=FoU/rLQ9/dCA/cYf9neJVZZi+bK/QeeU3sutxTeOrW9NVCP3rAfR0pJZkIxs0FcK7R
         KgC6e54W28zs3JsLZ9CJBU+zlSUqzmDd1nIdRyjod3DeKIW2b7o6kLv6ErJAMqPHQ4Dm
         AQ/aCHGdhhz3mEEiComzGcurG3qdhkMGcExVWv5oVBetjoLWe7Vyo/0itBfkMYq5CdAe
         tctq2I6u1zdqc0IUfHFZEcQlQyZiHyWLxC4TgK3TanlNKjiImsOqaurgSrimFLuPvC4R
         tanWPvwtNfvXwttgB02VvWXAAAzL2nR3qMwkJc8A0ZX557HGUbi+jHix7gzkDNl9YIbE
         tyVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=JWU5jrx8uzkoFd78Ys23ZOK1dm9ivQmIi4HaxP6dlv4=;
        b=PyXcfwMWORkNDLsULhak36VUBbrxSFV+Xq5lkZ2VaZ358/8C+KDxUYbk2zU2VI2OEc
         BjGqgH/awwHPQ81v7TpYEVrfzkvoVxz8qjR0RMdwz8Nt2u+yyw0kYP1WLF5CBlFFbtB+
         REcUO/U3fNUO5g24NuFCnIdtrTT7GDg9NcElzVqtDYm4IukseIaqmi/rRwluJnWa85sP
         XcDU/jZW0HmKRQwSMtw0ZFOFYy8i+UDYnbo1wU1V1xIOvlpR2gNsE7X+lvhC7ddSQ9BP
         rPIY/gWU2EIAxhgf6yRoBlkp4hXy1PKrdJimCemz/HIvBvKPrDsK1Zk+ykmCgy7tkRyk
         7ADw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="srPPgox/";
       spf=pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::52d as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com. [2a00:1450:4864:20::52d])
        by gmr-mx.google.com with ESMTPS id u16si25575wri.0.2021.12.17.06.41.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Dec 2021 06:41:29 -0800 (PST)
Received-SPF: pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::52d as permitted sender) client-ip=2a00:1450:4864:20::52d;
Received: by mail-ed1-x52d.google.com with SMTP id j21so4234137edt.9
        for <clang-built-linux@googlegroups.com>; Fri, 17 Dec 2021 06:41:29 -0800 (PST)
X-Received: by 2002:a50:fb98:: with SMTP id e24mr3196629edq.80.1639752088840;
        Fri, 17 Dec 2021 06:41:28 -0800 (PST)
Received: from localhost (c-9b28e555.07-21-73746f28.bbcust.telenor.se. [85.229.40.155])
        by smtp.gmail.com with ESMTPSA id c12sm3864770edx.80.2021.12.17.06.41.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Dec 2021 06:41:28 -0800 (PST)
From: Anders Roxell <anders.roxell@linaro.org>
To: stable@vger.kernel.org
Cc: linux-kernel@vger.kernel.org,
	woojung.huh@microchip.com,
	UNGLinuxDriver@microchip.com,
	davem@davemloft.net,
	netdev@vger.kernel.org,
	linux-usb@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	ulli.kroll@googlemail.com,
	linux@armlinux.org.uk,
	linux-arm-kernel@lists.infradead.org,
	amitkarwar@gmail.com,
	nishants@marvell.com,
	gbhat@marvell.com,
	huxinming820@gmail.com,
	kvalo@codeaurora.org,
	linux-wireless@vger.kernel.org,
	rostedt@goodmis.org,
	mingo@redhat.com,
	dmitry.torokhov@gmail.com,
	ndesaulniers@google.com,
	nathan@kernel.org,
	linux-input@vger.kernel.org,
	Anders Roxell <anders.roxell@linaro.org>
Subject: [PATCH 4.19 0/6] fix warning and errors on arm built with clang
Date: Fri, 17 Dec 2021 15:41:13 +0100
Message-Id: <20211217144119.2538175-1-anders.roxell@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Original-Sender: anders.roxell@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b="srPPgox/";       spf=pass
 (google.com: domain of anders.roxell@linaro.org designates
 2a00:1450:4864:20::52d as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Content-Type: text/plain; charset="UTF-8"
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

Hi,

Can this patchset be applied to linux-4.19.y. I've tried to build an arm
kernel for these defconfigs:

mini2440_defconfig, mxs_defconfig, imx_v4_v5_defconfig,
integrator_defconfig, lpc32xx_defconfig, s3c2410_defconfig,
nhk8815_defconfig, imx_v6_v7_defconfig, at91_dt_defconfig,
shmobile_defconfig, omap1_defconfig, multi_v5_defconfig,
orion5x_defconfig, footbridge_defconfig, davinci_all_defconfig

Without this patchset these configs faild to build.
Also I fixed a few warnings.

There are still a few more warnings to fix.
But this is a start.

I built the kernel with tuxmake and this is the command:
tuxmake --runtime podman --target-arch arm --toolchain clang-nightly --kconfig tinyconfig LLVM=1 LLVM_IAS=0

Similar results with clang-13.


Patch "net: lan78xx: Avoid unnecessary self assignment" fixes:

drivers/net/usb/lan78xx.c:949:11: warning: explicitly assigning value of variable of type 'u32' (aka 'unsigned int') to itself [-Wself-assign]
                        offset = offset;
                        ~~~~~~ ^ ~~~~~~
1 warning generated.


Patch "ARM: 8805/2: remove unneeded naked function usage" fixes:

arch/arm/mm/copypage-v4wb.c:47:9: error: parameter references not allowed in naked functions
        : "r" (kto), "r" (kfrom), "I" (PAGE_SIZE / 64));
               ^
/builds/linux/arch/arm/mm/copypage-v4wb.c:25:13: note: attribute is here
static void __naked
            ^
/builds/linux/include/linux/compiler_types.h:249:34: note: expanded from macro '__naked'
#define __naked                 __attribute__((naked)) notrace
                                               ^
1 error generated.


Patch "mwifiex: Remove unnecessary braces from HostCmd_SET_SEQ_NO_BSS_INFO" fixes:

drivers/net/wireless/marvell/mwifiex/cmdevt.c:219:22: warning: '(' and '{' tokens introducing statement expression appear in different macro expansion contexts [-Wcompound-token-split-by-macro]
        host_cmd->seq_num = cpu_to_le16(HostCmd_SET_SEQ_NO_BSS_INFO
                            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/builds/linux/include/linux/byteorder/generic.h:90:21: note: expanded from macro 'cpu_to_le16'
#define cpu_to_le16 __cpu_to_le16
                    ^


Patch "Input: touchscreen - avoid bitwise vs logical OR warning" fixes:

drivers/input/touchscreen/of_touchscreen.c:80:17: warning: use of bitwise '|' with boolean operands [-Wbitwise-instead-of-logical]
        data_present = touchscreen_get_prop_u32(dev, "touchscreen-size-x",
                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


Patch "ARM: 8788/1: ftrace: remove old mcount support" fixes:

arch/arm/kernel/entry-ftrace.S:56:2: error: Ftrace requires CONFIG_FRAME_POINTER=y with GCC older than 4.4.0.
#error Ftrace requires CONFIG_FRAME_POINTER=y with GCC older than 4.4.0.
 ^
1 error generated.


Patch "ARM: 8800/1: use choice for kernel unwinders" fixes the build
error:

clang: error: unknown argument: '-mapcs'
clang: error: unknown argument: '-mno-sched-prolog'


Cheers,
Anders

Nathan Chancellor (3):
  net: lan78xx: Avoid unnecessary self assignment
  mwifiex: Remove unnecessary braces from HostCmd_SET_SEQ_NO_BSS_INFO
  Input: touchscreen - avoid bitwise vs logical OR warning

Nicolas Pitre (1):
  ARM: 8805/2: remove unneeded naked function usage

Stefan Agner (2):
  ARM: 8800/1: use choice for kernel unwinders
  ARM: 8788/1: ftrace: remove old mcount support

 arch/arm/Kconfig.debug                        | 45 +++++----
 arch/arm/include/asm/ftrace.h                 |  3 -
 arch/arm/kernel/armksyms.c                    |  3 -
 arch/arm/kernel/entry-ftrace.S                | 75 +-------------
 arch/arm/kernel/ftrace.c                      | 51 ----------
 arch/arm/mm/copypage-fa.c                     | 35 ++++---
 arch/arm/mm/copypage-feroceon.c               | 98 +++++++++----------
 arch/arm/mm/copypage-v4mc.c                   | 19 ++--
 arch/arm/mm/copypage-v4wb.c                   | 41 ++++----
 arch/arm/mm/copypage-v4wt.c                   | 37 ++++---
 arch/arm/mm/copypage-xsc3.c                   | 71 ++++++--------
 arch/arm/mm/copypage-xscale.c                 | 71 +++++++-------
 drivers/input/touchscreen/of_touchscreen.c    | 18 ++--
 drivers/net/usb/lan78xx.c                     |  6 +-
 drivers/net/wireless/marvell/mwifiex/cmdevt.c |  4 +-
 drivers/net/wireless/marvell/mwifiex/fw.h     |  8 +-
 lib/Kconfig.debug                             |  6 +-
 17 files changed, 228 insertions(+), 363 deletions(-)

-- 
2.34.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20211217144119.2538175-1-anders.roxell%40linaro.org.
