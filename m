Return-Path: <clang-built-linux+bncBDOILZ6ZXABBBNHMQGHAMGQE7TUEXCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E32547A97D
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Dec 2021 13:25:25 +0100 (CET)
Received: by mail-lf1-x138.google.com with SMTP id m5-20020a05651202e500b00425baf04eacsf1767056lfq.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Dec 2021 04:25:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1640003124; cv=pass;
        d=google.com; s=arc-20160816;
        b=iPNQACbHVyFe7q6sO787oLxptG87zrwVdyTcqc/u3gUnm1rh9GZeoI4vkreH6lu2EN
         W8LlWNUxlKE8dHVzssASE4NSuKelnyoX958CXFWKGZ2uQxtcL+UXKJjyWmEu1NAKzfWJ
         CeE28JR0Jta5tae3nR4f5KIJ24P1+dFCtPsdNIM/i3Im1UfceBeY8gW/7mP5EqWOhBD7
         hYuPVZJ687LUXwsiOEoSJ11Dg1mdxcK3i6rMPC7bK0p8BJcLIIr+Ds3gII2x2Dpqff03
         iTRCVdMIRFDYxpuPxIwFxsmQd1ivi4EHaFXDEhyR8w6nYzwykt4U8QuAiFzjVg4boERS
         s+jg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=1UCNWj2CeM2dCJDnoxFanYpb7/dQBZrWeUGB/dnev8g=;
        b=ww7d5DVCWI6oK2RnY/CH3qeGbM3eT+MeKWjZ5yRgGYPMxOTY1s9SEIwrTU1Bm+0YLM
         glcv1sAN6AcSkIVzJBTTycpboY4VmpXjDWsvTkgV072RWzYXDYFKRBLx9P0TpGfCqWoI
         o3ZWLfWD50OL8IQJjqapc9jsLFGM8ealLTK7IJRlQoLEgsX1LEHUZ9a4qIsUrQ0QTak/
         1mMuvYu4Qx9yWKMWJFMtvoBRJRstZjfll5krflB6YFo1vg8q0tAx5Bn2Xt1vG42qV3kf
         K3wUceTOj5HHUEKKorSIsG1Y1GLSoEy76/VfX/MYIQWU7TfvIiQ6NzpboOf5AdQI7JxV
         B0Hg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=y8baxxmu;
       spf=pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::52e as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1UCNWj2CeM2dCJDnoxFanYpb7/dQBZrWeUGB/dnev8g=;
        b=h+tmHky+NbvdjymIUkrbZEwRespRMmD5L/MNZBMea5yW3IiqiPvok7AcHOKNvcnU8r
         2FltNh3eDdvqi3gaSDJpLWwmzCuVLfx00GR/Ewp6HYhzSfiGXIYamd3W2KgJCJ8tMKok
         bUvGwBHyF/4DKSsQVU02KYVztrY6h8V9gQuMLz7v52ZnwN7BUFB+FcFjS4GYYO0ZzfMp
         GN7Ril6NrQjUK95KMFeTiEYVghN2UOsGvLEBaB7pqV/MAlCZmputcw7mfxdp/HFNMHB3
         2p1HmOx0J9hpaaeXckPpIFg/dpUPrwUXU51s7qjHZmlx7G+P530lCDjyzpAvOcj9kNEB
         Uj6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1UCNWj2CeM2dCJDnoxFanYpb7/dQBZrWeUGB/dnev8g=;
        b=WoVluq67m6iFPJP8aJwcspKQH7cDZi6c8ET+YogStqcaq8Xnv30r7FycsIteP2okKl
         Nk1OwvWBnm8/5B0xvQ5xov2sqIKAz9emqYYC5ie4HQclq0VUYcZ4C+dnvWzGGpthSPok
         XtvYtKT4JtPmjSqk6L1qkHLvofrq+VbwVWYOnpXlvDQweIpdlXBHWCN03nImId/hwQIL
         860B9TOaNgqP+1u4o5SICa1gXuIZ2femqp9Jjghu8yjJQKLr2f8FLjSBjpYeE/h4xFbX
         kDrZJ8YrpZNCECG4IpOAnBMx/LPf42Oe9oZsrc86AeVIHmQ00chWNWB6Ld46fhbzn9Pl
         97aA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ICqk2WrcBoQAJEtTjrbozOXDn5+xAvonUnM0KrVu7s9Tk9k60
	i1de4jKaB9T9fFqMIkgZozE=
X-Google-Smtp-Source: ABdhPJyY+ls2Cj5nrgbJEatRg1sJT5lBi6K2LgC5Dc602ErIM63x9VQ4K4QYrAsBpV/zFQ1C1ODDPg==
X-Received: by 2002:a05:6512:1293:: with SMTP id u19mr8613461lfs.239.1640003124517;
        Mon, 20 Dec 2021 04:25:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:a7c4:: with SMTP id x4ls2453382ljp.8.gmail; Mon, 20 Dec
 2021 04:25:23 -0800 (PST)
X-Received: by 2002:a2e:bb98:: with SMTP id y24mr13831056lje.315.1640003123542;
        Mon, 20 Dec 2021 04:25:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1640003123; cv=none;
        d=google.com; s=arc-20160816;
        b=Cvf01C52Qct+vUYeLZlCMQAq/HFqxP0Rutm+XTrWS44cgcfZCETbOw3Yq59axji36P
         MRGBhyTFRrRwKh0S6Q4V/4BFYdR8ZfnHHLuokl8YrER/IyzUzFoXkbjq0ChVgAsCOYWo
         8mqNWT8qiCoP/zW2Ox2jP44pdT3m67dsTxtfzxh66XgBVvNfPnTxUI3NGgNV+Bs+tr8w
         XIbidX2WwbQWgd4ON6tcdGyuldA8A9XReSAdiUj3r7bDu0D1XIIirdBDcwb2aurOstIq
         ++2WofnMuFTcR+2eKsywAZ+ft6conlq5y35ljTTXTtcbSetqTuVR0mUMBLZ23Xa3g0Nz
         tkQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=RLoaJ3N8Xq0PfED/81k7x9QvjcAx1z3or5WiHD5qoGU=;
        b=iw852sluezprnQq0EN+M0Rc2tpCIb7tOihNpBwa7wwwPzdorwLmmQyuNAgz+HPbISj
         fYY+v8ev2VZbeDKifC85hcF6y22Em7OUPc41y3LpAWufHTR2ty9xAtnAl3Ydm+aT9zAp
         S2R5OjWW4xbAEnTE5RPIPhNULPhZ/sxGNGUv5s17yc7LTASy4UtIg36BOef6rH1Q16I/
         Um2DFc7j5LbN5OYZ9DEMc+Y9zbvYncMtN5Glf9aoInywmdXlwe8MO3FZeggjIAyqzkDX
         Db0HSPYgvJtDaplefyNIMRcQJWYrC66BR8AXxzhn0Dc5o9jpomeNpftkpUuMpBiTO3K4
         MmAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=y8baxxmu;
       spf=pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::52e as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com. [2a00:1450:4864:20::52e])
        by gmr-mx.google.com with ESMTPS id l13si792586lfg.1.2021.12.20.04.25.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Dec 2021 04:25:23 -0800 (PST)
Received-SPF: pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::52e as permitted sender) client-ip=2a00:1450:4864:20::52e;
Received: by mail-ed1-x52e.google.com with SMTP id b13so8975605edd.8
        for <clang-built-linux@googlegroups.com>; Mon, 20 Dec 2021 04:25:23 -0800 (PST)
X-Received: by 2002:a05:6402:1702:: with SMTP id y2mr4583607edu.372.1640003123217;
        Mon, 20 Dec 2021 04:25:23 -0800 (PST)
Received: from localhost (c-9b28e555.07-21-73746f28.bbcust.telenor.se. [85.229.40.155])
        by smtp.gmail.com with ESMTPSA id i13sm4927823eds.72.2021.12.20.04.25.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Dec 2021 04:25:22 -0800 (PST)
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
Subject: [PATCH 4.14 0/6] fix warning and errors on arm built with clang
Date: Mon, 20 Dec 2021 13:25:00 +0100
Message-Id: <20211220122506.3631672-1-anders.roxell@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Original-Sender: anders.roxell@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=y8baxxmu;       spf=pass
 (google.com: domain of anders.roxell@linaro.org designates
 2a00:1450:4864:20::52e as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
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

Can this patchset be applied to linux-4.14.y. I've tried to build an arm
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20211220122506.3631672-1-anders.roxell%40linaro.org.
