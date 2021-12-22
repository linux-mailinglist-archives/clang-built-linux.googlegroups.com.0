Return-Path: <clang-built-linux+bncBCT6537ZTEKRBFG4RWHAMGQE3JG4GEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BEFA47D6BA
	for <lists+clang-built-linux@lfdr.de>; Wed, 22 Dec 2021 19:27:34 +0100 (CET)
Received: by mail-yb1-xb40.google.com with SMTP id y125-20020a25dc83000000b005c2326bf744sf5312089ybe.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Dec 2021 10:27:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1640197653; cv=pass;
        d=google.com; s=arc-20160816;
        b=0sDVgMBdJZ9e52zlVu0M0wmb5/3ZbjFKEpOit0/E3fw4A2OjjJH42UqDN7gEeNbNxq
         1R4C+UbkqLt5cRDXNN9xtpVCR7c8UyuNMGjrKPJGsCk7C7QgbtTisstaOMTanrsC9tRI
         qlLoyp/9bmLx+YbQ/RPQabbzmdrbfGf3rqW9IjRoXZ1WuLzouWoXbDl41zE6OwSOM2B7
         /7S4nheIcoFaDrj43kBfge/pgLBnhn3HLHCJ6WA5AckBBIdnm3xQsVzY3EoLnpxNX9/P
         LewUpr0pg1eDyrnKEb7Kf5RLmR2JuZP3r2OBvADpLMW73dl301JplM2ZbwGRdIydnuNi
         Kx8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature;
        bh=hQuDiBVuWAIAhpzUjexEujBru7D53eJ++/a/vi0rkd8=;
        b=JaEGXwOTSXeVFBa3M59yV9FAo7XXQ79DJapf5GOT4Y7rsK2nU5uu1WupJSnhxAMG8N
         jLyWk+rhrBOiCAHATxvJj5tFWWWo9GeiPXJEWe26wIFwaf8NCw0oEqgSnr4avlKmaLp1
         lIzJFfmPo5Qud3UoKKnxH+YF6taVMzsp3bdox2BrDZu/RoB/JO1VPiOdQg/XiLrmyVol
         rUgIszHAD2HjRPxfJd3KrJ91EXHgz4w/2HdNXm78c40JG5b0q8LCIcXkNJt0pOaOA3wf
         vKNVI4fbjJBc3uVRZ/R6H71a1SV4PGwVougerIIqoOKSzb5PwTZ/Qw4g46k5iLhZSz4o
         nyOQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=w0ugai6D;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2607:f8b0:4864:20::b2c as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hQuDiBVuWAIAhpzUjexEujBru7D53eJ++/a/vi0rkd8=;
        b=S5cROsK8chb2NYkA3SIJm81Shfa9SIBfb8g8OWlX7z8JonJXwYI9vf91NiTW2s6WnN
         PXkqFinV60RgnAnNg6m9ENbBAc7j5C7ffBbBb2UuLGXxxt7OjTsJyVoB1jeYsdryijIV
         6bvLdtbVkQgiVx6Gu1YgEYxTWJtfSjzb+VRGactxJfTndZm2IjDBnc/1a1Xmz4b8jdG4
         +W29xTLHd1blr8Seh96hx/iYSqw84qgyFO1Z4E4V41z7E70JtsmqULFs657OHk2UmBPN
         cN8LnSJ3gD3ity10X1ay9LWq9HFctVPZOMBUsleu1qL6kyG3F+2nTiixUlxEP5SfUvjB
         cO6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hQuDiBVuWAIAhpzUjexEujBru7D53eJ++/a/vi0rkd8=;
        b=mAIkHZxBR+DJvuqu4cmChcfZthygBQM72jp4c+M1YJWTmuuKlGrIr+TbuG6fJpaeUB
         ZdAm0y+YMJzrBhc2n9Tpu0g2GPx7lizDkfAZskhsP2S+uMjFFSGW22B+lqEcsPr+jDrN
         UiqFCQGVoBLG5K/x/imt3aKj83oxirzLvapBnrRqEJWiB4+dgp6AYsUbBgOWeflD+GW9
         /uIIlqKc3tPD1J/piWioXo7hkfbE/L2sz4HFnQ3xV52nrOqP2dYhZsvL/gNzkv75onU5
         CgO6kxYd8oxs+3WboGkA1dNJ5ktOwzHoq1TBLchl2qEPUSGI9AAeIqRgoYZ02L+O+SA0
         Kp4Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530A+Lt4xz1CcaoCYp6kRDm2qjRcjx1bBDNr1TmQCwHQacHlHYfH
	jN470Zy5QsKY1nhERTtkXDs=
X-Google-Smtp-Source: ABdhPJxeqefsN2hLO+5JPJoqgkCqGU9ci8O2Hp2Z+8FPyEII1rypZA4OWpY9pPKwengpjNyyKHVPFA==
X-Received: by 2002:a05:6902:1245:: with SMTP id t5mr6077827ybu.379.1640197652932;
        Wed, 22 Dec 2021 10:27:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:2c53:: with SMTP id s80ls2912264ybs.1.gmail; Wed, 22 Dec
 2021 10:27:32 -0800 (PST)
X-Received: by 2002:a5b:8c4:: with SMTP id w4mr6145396ybq.333.1640197652442;
        Wed, 22 Dec 2021 10:27:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1640197652; cv=none;
        d=google.com; s=arc-20160816;
        b=bSmUUTB4mHDeUAfe0KHV/ZknBXsFm7FZCV6o1y8nBW5HWDkwi3ScErr1puNxOwh0r6
         L1tBHU0mc4Ypf2vswLMZD4/K2qUMXmZiE52enPn+eaeQG/CHagqe/WD2s4qRS2uNKzvU
         s3Eq21NAAZwn8APefUhQ9hACUgmXAHrLpLUupG6HZCI5MIVrXfAkcW1OouzrPPDFe9vQ
         Vo9ZP4/cuMolG0pocGXmOrRxZpmAAC9dv8MFx8gsNrjuu6vNIj9J1S1vET9SWnp0Rx6Z
         2GDg0kHtchzE1uFQORC7cgMyjl87mL1AJkVFMAIEpoFqqdZOnd5l2XVmWsOtr6wt0QDV
         gQmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=QJClJoOTl1ARv5tnKdMN0rMx96zafbI3qCWhIbJDc30=;
        b=a5Thcv6vHWWihxlHiG5Q5xeUKGSQHAvY8DSdzVARmRtymmK3aKgODgW379eICYBsgR
         BHlF5JcsPcy1v5CFjdIOpEpjpvnOussGgZg7cok54PjN0EtkT84t1kHHdbxU/GJnI3W2
         ETdsEo4HMVTlCRG4Hr3a6nB87UxZE20ucWj/cXOOdDZbIlsUh8yWE9pDrLKB9vQemxAX
         RJqFrxDKu0DGd9cSwRbpu9VD+5AG9HA8rK/d4fjEoUMapw89MM0ZSw7gaOh/GTWxNMnL
         TSRrYKU060hwsrYyysST5PnERhpralyqltSZuizdLyRm9EiyQi94oIaeS/K1fvwq2QgS
         SfQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=w0ugai6D;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2607:f8b0:4864:20::b2c as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-yb1-xb2c.google.com (mail-yb1-xb2c.google.com. [2607:f8b0:4864:20::b2c])
        by gmr-mx.google.com with ESMTPS id a38si214197ybi.4.2021.12.22.10.27.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Dec 2021 10:27:32 -0800 (PST)
Received-SPF: pass (google.com: domain of naresh.kamboju@linaro.org designates 2607:f8b0:4864:20::b2c as permitted sender) client-ip=2607:f8b0:4864:20::b2c;
Received: by mail-yb1-xb2c.google.com with SMTP id e136so9241289ybc.4
        for <clang-built-linux@googlegroups.com>; Wed, 22 Dec 2021 10:27:32 -0800 (PST)
X-Received: by 2002:a25:d68e:: with SMTP id n136mr6521994ybg.520.1640197651952;
 Wed, 22 Dec 2021 10:27:31 -0800 (PST)
MIME-Version: 1.0
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Wed, 22 Dec 2021 23:57:20 +0530
Message-ID: <CA+G9fYuz1Bfkfga7xVPVdTLETBQK3=4UsXq15kZW8C85DhyXJQ@mail.gmail.com>
Subject: [next] arm: current.h:53:6: error: out of range pc-relative fixup value
To: llvm@lists.linux.dev, open list <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux-Next Mailing List <linux-next@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <nathan@kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, Catalin Marinas <catalin.marinas@arm.com>, 
	Ard Biesheuvel <ardb@kernel.org>, Nicolas Pitre <nico@fluxnic.net>, 
	Linus Walleij <linus.walleij@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: naresh.kamboju@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=w0ugai6D;       spf=pass
 (google.com: domain of naresh.kamboju@linaro.org designates
 2607:f8b0:4864:20::b2c as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

[ Please ignore this email if it is already reported ]

On Linux next 20211220 (and  20211222) tag following arm config builds failed
with clang-11, clang-12, clang-13 and clang-nightly.

Build errors:
-------------
In file included from /builds/linux/kernel/sched/core.c:10:
In file included from /builds/linux/include/trace/events/sched.h:8:
In file included from /builds/linux/include/linux/kthread.h:6:
In file included from /builds/linux/include/linux/sched.h:12:
/builds/linux/arch/arm/include/asm/current.h:53:6: error: out of range
pc-relative fixup value
        asm(LOAD_SYM_ARMV6(%0, __current) : "=r"(cur));
            ^
/builds/linux/arch/arm/include/asm/insn.h:25:2: note: expanded from
macro 'LOAD_SYM_ARMV6'
        "       ldr     " #reg ", =" #sym "                     \n\t"   \
        ^
<inline asm>:1:3: note: instantiated into assembly here
                ldr     r2, =__current
                ^

Reported-by: Linux Kernel Functional Testing <lkft@linaro.org>


meta data:
-----------
    git describe: next-20211220 to next-20211222
    git_repo: https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
    git_sha: 2bd48302750c652889a2604b3df8b591c1d3af08
    git_short_log: 2bd48302750c (\"Add linux-next specific files for 20211222\")
    target_arch: arm
    toolchain: clang-11, clang-12, clang-13 and clang-nightly

Build log:
https://builds.tuxbuild.com/22doqqkr5uM1RUG67iJevPNL9nQ/

Regressions found on arm:

  -  clang-11-vexpress_defconfig
  -  clang-11-shmobile_defconfig
  -  clang-13-at91_dt_defconfig
  -  clang-13-lpc32xx_defconfig
  -  clang-11-omap2plus_defconfig
  -  clang-12-allnoconfig
  -  clang-13-imx_v6_v7_defconfig
  -  clang-11-mini2440_defconfig
  -  clang-13-imx_v4_v5_defconfig
  -  clang-12-multi_v5_defconfig
  -  clang-13-mxs_defconfig
  -  clang-13-ixp4xx_defconfig
  -  clang-11-lpc32xx_defconfig
  -  clang-nightly-s3c6400_defconfig
  -  clang-13-nhk8815_defconfig
  -  clang-12-imx_v6_v7_defconfig
  -  clang-11-nhk8815_defconfig
  -  clang-12-ixp4xx_defconfig
  -  clang-13-footbridge_defconfig
  -  clang-11-tinyconfig
  -  clang-11-axm55xx_defconfig
  -  clang-12-bcm2835_defconfig
  -  clang-12-davinci_all_defconfig
  -  clang-12-omap2plus_defconfig
  -  clang-11-at91_dt_defconfig
  -  clang-11-multi_v5_defconfig
  -  clang-11-s3c2410_defconfig
  -  clang-11-footbridge_defconfig
  -  clang-12-s3c2410_defconfig
  -  clang-12-mxs_defconfig
  -  clang-12-omap1_defconfig
  -  clang-11-defconfig
  -  clang-11-omap1_defconfig
  -  clang-13-orion5x_defconfig
  -  clang-12-orion5x_defconfig
  -  clang-11-davinci_all_defconfig
  -  clang-12-lpc32xx_defconfig
  -  clang-11-ixp4xx_defconfig
  -  clang-12-mini2440_defconfig
  -  clang-11-u8500_defconfig
  -  clang-11-integrator_defconfig
  -  clang-13-davinci_all_defconfig
  -  clang-11-mxs_defconfig
  -  clang-11-orion5x_defconfig
  -  clang-12-tinyconfig
  -  clang-12-footbridge_defconfig
  -  clang-11-imx_v4_v5_defconfig
  -  clang-13-s3c2410_defconfig
  -  clang-nightly-bcm2835_defconfig
  -  clang-11-allnoconfig
  -  clang-11-exynos_defconfig
  -  clang-11-keystone_defconfig
  -  clang-13-mini2440_defconfig
  -  clang-13-integrator_defconfig
  -  clang-12-imx_v4_v5_defconfig
  -  clang-13-multi_v5_defconfig
  -  clang-13-omap1_defconfig
  -  clang-11-bcm2835_defconfig
  -  clang-11-imx_v6_v7_defconfig
  -  clang-12-at91_dt_defconfig
  -  clang-12-integrator_defconfig
  -  clang-12-nhk8815_defconfig

steps to reproduce:
-------------------
# To install tuxmake on your system globally:
# sudo pip3 install -U tuxmake
#
# See https://docs.tuxmake.org/ for complete documentation.
# Original tuxmake command with fragments listed below.
# tuxmake --runtime podman --target-arch arm --toolchain clang-11
--kconfig at91_dt_defconfig LLVM=1 LLVM_IAS=1


tuxmake --runtime podman --target-arch arm --toolchain clang-11
--kconfig https://builds.tuxbuild.com/22doqqkr5uM1RUG67iJevPNL9nQ/config
LLVM=1 LLVM_IAS=1

--
Linaro LKFT
https://lkft.linaro.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BG9fYuz1Bfkfga7xVPVdTLETBQK3%3D4UsXq15kZW8C85DhyXJQ%40mail.gmail.com.
