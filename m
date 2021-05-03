Return-Path: <clang-built-linux+bncBDT6TV45WMPRB5UHX2CAMGQEYDOJPQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3d.google.com (mail-vs1-xe3d.google.com [IPv6:2607:f8b0:4864:20::e3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 54BC3371118
	for <lists+clang-built-linux@lfdr.de>; Mon,  3 May 2021 07:02:47 +0200 (CEST)
Received: by mail-vs1-xe3d.google.com with SMTP id z7-20020a67ca070000b0290220c083d3acsf2238114vsk.21
        for <lists+clang-built-linux@lfdr.de>; Sun, 02 May 2021 22:02:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620018166; cv=pass;
        d=google.com; s=arc-20160816;
        b=dRsiyEWGTgJbLNoqKZ1PlU0qqC/2EqUs9byT77xbWPO1KCZSMKiSkyH2wbqkbkOOie
         uD9sCPwrIedVS6NKFue7Z4CSQsElLkTqzo9nlZqOW7ioa4Acm8+tuv5BeaKg01ZpcInd
         q4i8/clQrQJmlCpuj9BdFOYJyU4cNeI4vx5ZeeaHqhwi3J/6+hUyIXnNas1OUdahmrfY
         zqY6F6JNUn5lLd6ossMhHjik/o3HrW9N5BsD1I+UeYEuSkU26QKJ8CQVJmRcysj4lni2
         eFKcV7hz8xUpQCSFw0U2b1n6PLWJp4XhKap8IdHgQOcU147Dd6plmzUejq7vL9pbOs6K
         LnNQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:from:to:subject
         :content-transfer-encoding:mime-version:date:message-id:sender
         :dkim-signature;
        bh=PM8VR4gFmt/3zC0mwopZFYOtgSEgltTDA6u86kBLr2Q=;
        b=j5tml4tFA2fbLoRT7PE/rWfMNgYB/hJM1SVliSfjaQgITNFEfHGzrN4tvNMVIHrE9z
         2vY7B2L88vcl9oyBJu22wqvTczmtfvhUQJ9he/u8x3IziFpz9zDAnWaHj5zwJPfMMPE3
         Vv3syZX+8jpNNoNnmClTMynzIowKEMk8DkGp1dpD4W//TOnrBURkFjYta9jl9mCve3IC
         aKK2FoWh6t2bvCM3XifnSfuuBLGLeoNKIX8mDL5Te2e+Ormkh3DXAq8mdIgjximNytb7
         WwXBms1v50mg9KLMxQus1dCD3Es9GSZSEsQ9uCWn25hqsJQW9cjx06YPrW1uAy+MWqTC
         hMxQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=MbJKx+nB;
       spf=neutral (google.com: 2607:f8b0:4864:20::42c is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:mime-version:content-transfer-encoding
         :subject:to:from:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PM8VR4gFmt/3zC0mwopZFYOtgSEgltTDA6u86kBLr2Q=;
        b=F1qfVW0kCRBMY3FbjFgxex4bjUj3Ris7NOt5J1RokWguj0fyMm0YpcvPWhrmgwIxWi
         OsT5P1LD6O0isQIFy2EAyKTxKd2OFDrONc/CF61Gi+eh9evdOg3oyYmr0euCHH7M5C7k
         xF+tqtm8mg6sPQrtrWINV4Rh1LhXZM/vd/QFxlp65gufaHKUt/DfNCrpW3N1DACtVDL9
         zRCd+9O0qB9lOU2+rGic1rcr2Jxc1/7iwqjBw+1vNfBJPK8pkCAJFo8RtJlPYJs2yBj+
         Zx3HClyBatlwImvNPspIhNO2ZIfxMsDWknR2p7Il/Oeeicqnh7HKJCHMDn5ge8ZdP8SL
         rLSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:mime-version
         :content-transfer-encoding:subject:to:from:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PM8VR4gFmt/3zC0mwopZFYOtgSEgltTDA6u86kBLr2Q=;
        b=Hmh1wsgpcAYd66DzUUdfYL3cjun055vnj1Y0SuqR9Cj5KgghnezNWvxPZG7MD0/FSL
         34glloNLIpIzz1sNZMtliLLg2S952jNX13u6hFaGYUGgQs8UVxR2k59PTiQhBhrINIPG
         OwsclR3U3HK0mWtzFjlNmv9OK1/FZUZZZPtxEcPd2/S6XCecCHFpmjcYh7DTf8RXJl9C
         tzzlaORomF4oILB8BSqwjMvhbOAK7P7iSLJwEPX6l3iCcgCiM1pLcV83CPCS1ikLrO6u
         EG55TJPBydI0/GqoEiGDnAlAcYd/FaC18aySQ9hGEyEWAJ3cY3w9PhIn2IuPGFvJV8Mk
         QJzQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532PGuvsvRPCEbiObccpXgLnz3kJ627Leqs+mOM7+inVI3lHlu58
	c85I+qyX6XmCgZW807YWFao=
X-Google-Smtp-Source: ABdhPJxxBiRMwLFjPbUsNReN2bQuAdNH01pKYLhOFJWJCEgNPvgJw+GBv9gucxBYjULSHGNlT81mjA==
X-Received: by 2002:ab0:4364:: with SMTP id k91mr13181305uak.11.1620018166386;
        Sun, 02 May 2021 22:02:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:e24d:: with SMTP id w13ls2328172vse.4.gmail; Sun, 02 May
 2021 22:02:45 -0700 (PDT)
X-Received: by 2002:a67:2042:: with SMTP id g63mr14881544vsg.28.1620018165641;
        Sun, 02 May 2021 22:02:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620018165; cv=none;
        d=google.com; s=arc-20160816;
        b=f3rMu4azZlxKFufsZwS0o6++pmnIrIa5UEY7lixGeYuhm+5pi/CoTwk2Z4Yidxyj9V
         5hu0RtP5mHSFN4w3RTrdtaLVewmbhgfMnW+doRWkON1Em2hOX+GXNWZiWmUPggAmRq2H
         2MJrGmaALl4zQRFQ1medlkMf64YFWfaGD3lQrUlPfLT9w5LxupEL5v1nF1wv0fCXiB1j
         y1Y+CmHDO75k672CyR1tFsNSGe7A3gpEt+38VqBxNZMbe9O5wJmbcDCSpclVJUDhUJDI
         OMqiJ1tjxMC5UdlKZBVxo4ZWrLSqbrP5D+ZKeCXudYIp+xx87FzXJZxoYqC/J60Ifz1F
         nVXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=from:to:subject:content-transfer-encoding:mime-version:date
         :message-id:dkim-signature;
        bh=mDPXkMUHScxhUXnNObc78AUn6iRSnz0Odh+Fsg964o8=;
        b=tlNotglX3hboR6qROwJugrCidASz5cEh53uzLBHN/iLPv7+v/gBT0cegNk3D2bmBlK
         zfw1Ei4Qd53d7NA6yMv+jhqQUnvnPegXpLVn2+1Jy/GwCpj2bhFjvtsIlgR4lLi95g7o
         xmHfGCE908U85ahNZlbm5cyJy2yrtjgO1BN1NH4+JV/+dYov4c0J6q9FDtZH4aDRzYAt
         WW0fFm9lztdQginNkbpxGcFrO4HQzHQD/zQbAhYE0+sKj4kYVjLbXSvv62ljPNuoaJFx
         dRf2zCTC3ygox1lu6ZBdjipQUcnC9vzsbCjc6fpY+REKMqXXtJPZIz3tlF+mc6mWzq2h
         KD0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=MbJKx+nB;
       spf=neutral (google.com: 2607:f8b0:4864:20::42c is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com. [2607:f8b0:4864:20::42c])
        by gmr-mx.google.com with ESMTPS id h7si1049484uad.1.2021.05.02.22.02.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 02 May 2021 22:02:45 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::42c is neither permitted nor denied by best guess record for domain of bot@kernelci.org) client-ip=2607:f8b0:4864:20::42c;
Received: by mail-pf1-x42c.google.com with SMTP id v191so3321228pfc.8
        for <clang-built-linux@googlegroups.com>; Sun, 02 May 2021 22:02:45 -0700 (PDT)
X-Received: by 2002:a63:1f25:: with SMTP id f37mr16798157pgf.142.1620018162488;
        Sun, 02 May 2021 22:02:42 -0700 (PDT)
Received: from kernelci-production.internal.cloudapp.net ([52.250.1.28])
        by smtp.gmail.com with ESMTPSA id s22sm8334503pgk.28.2021.05.02.22.02.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 May 2021 22:02:41 -0700 (PDT)
Message-ID: <608f83f1.1c69fb81.c07fd.771e@mx.google.com>
Date: Sun, 02 May 2021 22:02:41 -0700 (PDT)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Kernelci-Kernel: next-20210503
X-Kernelci-Report-Type: build
X-Kernelci-Tree: next
X-Kernelci-Branch: master
Subject: next/master build: 230 builds: 3 failed, 227 passed, 11 errors,
 246 warnings (next-20210503)
To: clang-built-linux@googlegroups.com
From: "kernelci.org bot" <bot@kernelci.org>
X-Original-Sender: bot@kernelci.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623
 header.b=MbJKx+nB;       spf=neutral (google.com: 2607:f8b0:4864:20::42c is
 neither permitted nor denied by best guess record for domain of
 bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
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

next/master build: 230 builds: 3 failed, 227 passed, 11 errors, 246 warning=
s (next-20210503)

Full Build Summary: https://kernelci.org/build/next/branch/master/kernel/ne=
xt-20210503/

Tree: next
Branch: master
Git Describe: next-20210503
Git Commit: fd3ecedb365cc7c80040ad7c030a60b420a85711
Git URL: https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.gi=
t
Built: 7 unique architectures

Build Failures Detected:

arm:
    aspeed_g5_defconfig: (clang-10) FAIL

mips:
    decstation_64_defconfig: (gcc-8) FAIL
    lemote2f_defconfig: (gcc-8) FAIL

Errors and Warnings Detected:

arc:

arm64:
    allmodconfig (clang-10): 29 warnings
    defconfig (gcc-8): 1 warning
    defconfig (clang-10): 2 warnings
    defconfig (clang-12): 1 warning
    defconfig+CONFIG_ARM64_64K_PAGES=3Dy (clang-10): 2 warnings
    defconfig+CONFIG_ARM64_64K_PAGES=3Dy (clang-12): 1 warning
    defconfig+CONFIG_ARM64_64K_PAGES=3Dy (gcc-8): 1 warning
    defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (gcc-8): 1 warning
    defconfig+CONFIG_RANDOMIZE_BASE=3Dy (gcc-8): 1 warning

arm:
    allmodconfig (clang-12): 45 warnings
    allmodconfig (clang-10): 47 warnings
    aspeed_g5_defconfig (clang-10): 11 errors
    multi_v7_defconfig (clang-10): 2 warnings
    multi_v7_defconfig (clang-12): 2 warnings
    omap1_defconfig (gcc-8): 2 warnings

i386:
    allmodconfig (clang-12): 42 warnings

mips:
    malta_qemu_32r6_defconfig (gcc-8): 1 warning
    rm200_defconfig (gcc-8): 1 warning
    xway_defconfig (gcc-8): 2 warnings

riscv:
    rv32_defconfig (gcc-8): 6 warnings

x86_64:
    allmodconfig (clang-10): 25 warnings
    allmodconfig (clang-12): 29 warnings
    tinyconfig (gcc-8): 1 warning
    x86_64_defconfig (clang-10): 2 warnings

Errors summary:

    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37DCC): reloca=
tion R_ARM_PREL31 out of range: 2135571308 is not in [-1073741824, 10737418=
23]
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37D24): reloca=
tion R_ARM_PREL31 out of range: 2135571476 is not in [-1073741824, 10737418=
23]
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37D14): reloca=
tion R_ARM_PREL31 out of range: 2135571492 is not in [-1073741824, 10737418=
23]
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37CC4): reloca=
tion R_ARM_PREL31 out of range: 2135571572 is not in [-1073741824, 10737418=
23]
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37CB4): reloca=
tion R_ARM_PREL31 out of range: 2135571588 is not in [-1073741824, 10737418=
23]
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37C9C): reloca=
tion R_ARM_PREL31 out of range: 2135571612 is not in [-1073741824, 10737418=
23]
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37C84): reloca=
tion R_ARM_PREL31 out of range: 2135571636 is not in [-1073741824, 10737418=
23]
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37C54): reloca=
tion R_ARM_PREL31 out of range: 2135571684 is not in [-1073741824, 10737418=
23]
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37C24): reloca=
tion R_ARM_PREL31 out of range: 2135571732 is not in [-1073741824, 10737418=
23]
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37BDC): reloca=
tion R_ARM_PREL31 out of range: 2135571804 is not in [-1073741824, 10737418=
23]
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x355A0): reloca=
tion R_ARM_PREL31 out of range: 2135516056 is not in [-1073741824, 10737418=
23]

Warnings summary:

    36   1 warning generated.
    8    arch/arm64/configs/defconfig:1018:warning: override: reassigning t=
o symbol MTK_PMIC_WRAP
    8    2 warnings generated.
    6    drivers/misc/habanalabs/goya/goya.c:142:14: warning: implicit conv=
ersion from enumeration type 'enum goya_pll_index' to different enumeration=
 type 'enum pll_index' [-Wenum-conversion]
    6    drivers/misc/habanalabs/goya/goya.c:141:15: warning: implicit conv=
ersion from enumeration type 'enum goya_pll_index' to different enumeration=
 type 'enum pll_index' [-Wenum-conversion]
    6    drivers/misc/habanalabs/goya/goya.c:140:14: warning: implicit conv=
ersion from enumeration type 'enum goya_pll_index' to different enumeration=
 type 'enum pll_index' [-Wenum-conversion]
    6    drivers/misc/habanalabs/goya/goya.c:138:13: warning: implicit conv=
ersion from enumeration type 'enum goya_pll_index' to different enumeration=
 type 'enum pll_index' [-Wenum-conversion]
    6    drivers/misc/habanalabs/goya/goya.c:137:13: warning: implicit conv=
ersion from enumeration type 'enum goya_pll_index' to different enumeration=
 type 'enum pll_index' [-Wenum-conversion]
    6    drivers/misc/habanalabs/goya/goya.c:136:14: warning: implicit conv=
ersion from enumeration type 'enum goya_pll_index' to different enumeration=
 type 'enum pll_index' [-Wenum-conversion]
    6    drivers/misc/habanalabs/gaudi/gaudi.c:135:13: warning: implicit co=
nversion from enumeration type 'enum gaudi_pll_index' to different enumerat=
ion type 'enum pll_index' [-Wenum-conversion]
    6    drivers/misc/habanalabs/gaudi/gaudi.c:134:14: warning: implicit co=
nversion from enumeration type 'enum gaudi_pll_index' to different enumerat=
ion type 'enum pll_index' [-Wenum-conversion]
    6    drivers/misc/habanalabs/gaudi/gaudi.c:133:14: warning: implicit co=
nversion from enumeration type 'enum gaudi_pll_index' to different enumerat=
ion type 'enum pll_index' [-Wenum-conversion]
    6    drivers/misc/habanalabs/gaudi/gaudi.c:132:15: warning: implicit co=
nversion from enumeration type 'enum gaudi_pll_index' to different enumerat=
ion type 'enum pll_index' [-Wenum-conversion]
    6    drivers/misc/habanalabs/gaudi/gaudi.c:131:14: warning: implicit co=
nversion from enumeration type 'enum gaudi_pll_index' to different enumerat=
ion type 'enum pll_index' [-Wenum-conversion]
    6    drivers/misc/habanalabs/gaudi/gaudi.c:130:14: warning: implicit co=
nversion from enumeration type 'enum gaudi_pll_index' to different enumerat=
ion type 'enum pll_index' [-Wenum-conversion]
    6    drivers/misc/habanalabs/gaudi/gaudi.c:129:14: warning: implicit co=
nversion from enumeration type 'enum gaudi_pll_index' to different enumerat=
ion type 'enum pll_index' [-Wenum-conversion]
    6    drivers/misc/habanalabs/gaudi/gaudi.c:128:15: warning: implicit co=
nversion from enumeration type 'enum gaudi_pll_index' to different enumerat=
ion type 'enum pll_index' [-Wenum-conversion]
    6    drivers/misc/habanalabs/gaudi/gaudi.c:127:14: warning: implicit co=
nversion from enumeration type 'enum gaudi_pll_index' to different enumerat=
ion type 'enum pll_index' [-Wenum-conversion]
    6    drivers/misc/habanalabs/gaudi/gaudi.c:126:14: warning: implicit co=
nversion from enumeration type 'enum gaudi_pll_index' to different enumerat=
ion type 'enum pll_index' [-Wenum-conversion]
    6    7 warnings generated.
    6    10 warnings generated.
    5    drivers/misc/habanalabs/goya/goya.c:139:14: warning: implicit conv=
ersion from enumeration type 'enum goya_pll_index' to different enumeration=
 type 'enum pll_index' [-Wenum-conversion]
    4    drivers/platform/surface/surface_aggregator_registry.c:478:25: war=
ning: implicit conversion from 'int' to '__u8' (aka 'unsigned char') change=
s value from 65535 to 255 [-Wconstant-conversion]
    4    drivers/hid/surface-hid/surface_hid.c:233:25: warning: implicit co=
nversion from 'int' to '__u8' (aka 'unsigned char') changes value from 6553=
5 to 255 [-Wconstant-conversion]
    4    drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c:975:48: warning: implici=
t conversion from 'unsigned long long' to 'unsigned long' changes value fro=
m 5000000000 to 705032704 [-Wconstant-conversion]
    4    arch/arm/lib/xor-neon.c:30:2: warning: This code requires at least=
 version 4.6 of GCC [-W#warnings]
    4    #warning This code requires at least version 4.6 of GCC
    3    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/_modules_/lib/mod=
ules/5.12.0-next-20210503/kernel/drivers/media/tuners/tuner-types.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    kernel/trace/trace_events_hist.c:4594:13: warning: stack frame siz=
e of 1304 bytes in function 'hist_trigger_print_key' [-Wframe-larger-than=
=3D]
    2    drivers/net/wireless/cisco/airo.c:3075:12: warning: stack frame si=
ze of 1056 bytes in function 'airo_thread' [-Wframe-larger-than=3D]
    2    drivers/gpu/drm/selftests/test-drm_mm.c:372:12: warning: stack fra=
me size of 1040 bytes in function '__igt_reserve' [-Wframe-larger-than=3D]
    2    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dce_calcs.c:3041:6:=
 warning: stack frame size of 1384 bytes in function 'bw_calcs' [-Wframe-la=
rger-than=3D]
    2    drivers/firmware/tegra/bpmp-debugfs.c:321:16: warning: stack frame=
 size of 1264 bytes in function 'bpmp_debug_store' [-Wframe-larger-than=3D]
    2    <stdin>:834:2: warning: #warning syscall fstat64 not implemented [=
-Wcpp]
    2    <stdin>:1515:2: warning: #warning syscall clone3 not implemented [=
-Wcpp]
    2    <stdin>:1131:2: warning: #warning syscall fstatat64 not implemente=
d [-Wcpp]
    1    {standard input}:39: Warning: macro instruction expanded into mult=
iple instructions
    1    kernel/trace/trace_events_hist.c:4594:13: warning: stack frame siz=
e of 1248 bytes in function 'hist_trigger_print_key' [-Wframe-larger-than=
=3D]
    1    fs/reiserfs/do_balan.o: warning: objtool: balance_leaf_when_delete=
()+0x10cd: stack state mismatch: cfa1=3D4+184 cfa2=3D4+176
    1    drivers/staging/wlan-ng/cfg80211.c:272:12: warning: stack frame si=
ze of 1032 bytes in function 'prism2_scan' [-Wframe-larger-than=3D]
    1    drivers/staging/greybus/audio_topology.c:977:12: warning: stack fr=
ame size of 3328 bytes in function 'gbaudio_tplg_create_widget' [-Wframe-la=
rger-than=3D]
    1    drivers/staging/greybus/audio_topology.c:977:12: warning: stack fr=
ame size of 3304 bytes in function 'gbaudio_tplg_create_widget' [-Wframe-la=
rger-than=3D]
    1    drivers/staging/greybus/audio_topology.c:977:12: warning: stack fr=
ame size of 3288 bytes in function 'gbaudio_tplg_create_widget' [-Wframe-la=
rger-than=3D]
    1    drivers/staging/greybus/audio_topology.c:977:12: warning: stack fr=
ame size of 1804 bytes in function 'gbaudio_tplg_create_widget' [-Wframe-la=
rger-than=3D]
    1    drivers/staging/fbtft/fbtft-core.c:995:5: warning: stack frame siz=
e of 1216 bytes in function 'fbtft_init_display' [-Wframe-larger-than=3D]
    1    drivers/staging/fbtft/fbtft-core.c:995:5: warning: stack frame siz=
e of 1208 bytes in function 'fbtft_init_display' [-Wframe-larger-than=3D]
    1    drivers/staging/fbtft/fbtft-core.c:903:12: warning: stack frame si=
ze of 1080 bytes in function 'fbtft_init_display_from_property' [-Wframe-la=
rger-than=3D]
    1    drivers/staging/fbtft/fbtft-core.c:903:12: warning: stack frame si=
ze of 1072 bytes in function 'fbtft_init_display_from_property' [-Wframe-la=
rger-than=3D]
    1    drivers/net/ethernet/lantiq_etop.c:281:4: warning: ignoring return=
 value of =E2=80=98request_irq=E2=80=99, declared with attribute warn_unuse=
d_result [-Wunused-result]
    1    drivers/net/ethernet/lantiq_etop.c:273:4: warning: ignoring return=
 value of =E2=80=98request_irq=E2=80=99, declared with attribute warn_unuse=
d_result [-Wunused-result]
    1    drivers/mtd/chips/cfi_cmdset_0001.c:1872:12: warning: stack frame =
size of 1064 bytes in function 'cfi_intelext_writev' [-Wframe-larger-than=
=3D]
    1    drivers/mtd/chips/cfi_cmdset_0001.c:1872:12: warning: stack frame =
size of 1056 bytes in function 'cfi_intelext_writev' [-Wframe-larger-than=
=3D]
    1    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: =
eb_prefault_relocations()+0xc6: stack state mismatch: cfa1=3D4+8 cfa2=3D-1+=
0
    1    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: =
eb_copy_relocations()+0x249: stack state mismatch: cfa1=3D4+104 cfa2=3D-1+0
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dml1_display_rq_dlg_c=
alc.c:997:6: warning: stack frame size of 1196 bytes in function 'dml1_rq_d=
lg_get_dlg_params' [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_rq_dlg_=
calc_30.c:981:13: warning: stack frame size of 1036 bytes in function 'dml_=
rq_dlg_get_dlg_params' [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn21/display_mode_vb=
a_21.c:3393:6: warning: stack frame size of 1436 bytes in function 'dml21_M=
odeSupportAndSystemConfigurationFull' [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn21/display_mode_vb=
a_21.c:1463:13: warning: stack frame size of 1116 bytes in function 'DISPCL=
KDPPCLKDCFCLKDeepSleepPrefetchParametersWatermarksAndPerformanceCalculation=
' [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/display_mode_vb=
a_20v2.c:3393:6: warning: stack frame size of 1420 bytes in function 'dml20=
v2_ModeSupportAndSystemConfigurationFull' [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/display_mode_vb=
a_20v2.c:1145:13: warning: stack frame size of 1164 bytes in function 'dml2=
0v2_DISPCLKDPPCLKDCFCLKDeepSleepPrefetchParametersWatermarksAndPerformanceC=
alculation' [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/display_mode_vb=
a_20.c:3286:6: warning: stack frame size of 1420 bytes in function 'dml20_M=
odeSupportAndSystemConfigurationFull' [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/display_mode_vb=
a_20.c:1085:13: warning: stack frame size of 1180 bytes in function 'dml20_=
DISPCLKDPPCLKDCFCLKDeepSleepPrefetchParametersWatermarksAndPerformanceCalcu=
lation' [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:450:13:=
 warning: stack frame size of 1564 bytes in function 'dcn_bw_calc_rq_dlg_tt=
u' [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dce_calcs.c:77:13: =
warning: stack frame size of 5560 bytes in function 'calculate_bandwidth' [=
-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dce_calcs.c:77:13: =
warning: stack frame size of 5536 bytes in function 'calculate_bandwidth' [=
-Wframe-larger-than=3D]
    1    drivers/block/paride/bpck.c:32: warning: "PC" redefined
    1    crypto/wp512.c:782:13: warning: stack frame size of 1192 bytes in =
function 'wp512_process_buffer' [-Wframe-larger-than=3D]
    1    crypto/wp512.c:782:13: warning: stack frame size of 1176 bytes in =
function 'wp512_process_buffer' [-Wframe-larger-than=3D]
    1    arch/arm/mach-omap1/board-h2.c:347:34: warning: =E2=80=98isp1301_g=
piod_table=E2=80=99 defined but not used [-Wunused-variable]
    1    arch/arm/mach-omap1/board-ams-delta.c:462:12: warning: =E2=80=98am=
s_delta_camera_power=E2=80=99 defined but not used [-Wunused-function]
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/_modules_/lib/mod=
ules/5.12.0-next-20210503/kernel/drivers/clk/keystone/pll.ko: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/_modules_/lib/mod=
ules/5.12.0-next-20210503/kernel/drivers/clk/keystone/gate.ko: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/_modules_/lib/mod=
ules/5.12.0-next-20210503/kernel/crypto/cast_common.ko: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    1    139:14: warning: implicit conversion from enumeration type 'enum g=
oya_pll_index' to different enumeration type 'enum pll_index' [-Wenum-conve=
rsion]
    1    1 warning  CC [M]  fs/autofs/waitq.o
    1    .config:1202:warning: override: UNWINDER_GUESS changes choice stat=
e
    1    ./usr/include/linux/bcache.h:355:2: warning: field '' with variabl=
e sized type 'union jset::(anonymous at ./usr/include/linux/bcache.h:355:2)=
' not at the end of a struct or class is a GNU extension [-Wgnu-variable-si=
zed-type-not-at-end]
    1    ./usr/include/linux/bcache.h:354:2: warning: field '' with variabl=
e sized type 'union jset::(anonymous at ./usr/include/linux/bcache.h:354:2)=
' not at the end of a struct or class is a GNU extension [-Wgnu-variable-si=
zed-type-not-at-end]

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D

Detailed per-defconfig build reports:

---------------------------------------------------------------------------=
-----
32r2el_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
allmodconfig (arm, clang-12) =E2=80=94 PASS, 0 errors, 45 warnings, 0 secti=
on mismatches

Warnings:
    kernel/trace/trace_events_hist.c:4594:13: warning: stack frame size of =
1304 bytes in function 'hist_trigger_print_key' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/firmware/tegra/bpmp-debugfs.c:321:16: warning: stack frame size=
 of 1264 bytes in function 'bpmp_debug_store' [-Wframe-larger-than=3D]
    1 warning generated.
    arch/arm/lib/xor-neon.c:30:2: warning: This code requires at least vers=
ion 4.6 of GCC [-W#warnings]
    #warning This code requires at least version 4.6 of GCC
    1 warning generated.
    arch/arm/lib/xor-neon.c:30:2: warning: This code requires at least vers=
ion 4.6 of GCC [-W#warnings]
    #warning This code requires at least version 4.6 of GCC
    1 warning generated.
    crypto/wp512.c:782:13: warning: stack frame size of 1176 bytes in funct=
ion 'wp512_process_buffer' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/misc/habanalabs/goya/goya.c:141:15: warning: implicit conversio=
n from enumeration type 'enum goya_pll_index' to different enumeration type=
 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/goya/goya.c:138:13: warning: implicit conversio=
n from enumeration type 'enum goya_pll_index' to different enumeration type=
 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/goya/goya.c:137:13: warning: implicit conversio=
n from enumeration type 'enum goya_pll_index' to different enumeration type=
 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/goya/goya.c:142:14: warning: implicit conversio=
n from enumeration type 'enum goya_pll_index' to different enumeration type=
 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/goya/goya.c:139:14: warning: implicit conversio=
n from enumeration type 'enum goya_pll_index' to different enumeration type=
 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/goya/goya.c:140:14: warning: implicit conversio=
n from enumeration type 'enum goya_pll_index' to different enumeration type=
 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/goya/goya.c:136:14: warning: implicit conversio=
n from enumeration type 'enum goya_pll_index' to different enumeration type=
 'enum pll_index' [-Wenum-conversion]
    7 warnings generated.
    drivers/misc/habanalabs/gaudi/gaudi.c:129:14: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:128:15: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:135:13: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:134:14: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:133:14: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:132:15: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:131:14: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:130:14: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:127:14: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:126:14: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    10 warnings generated.
    drivers/gpu/drm/selftests/test-drm_mm.c:372:12: warning: stack frame si=
ze of 1040 bytes in function '__igt_reserve' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/net/wireless/cisco/airo.c:3075:12: warning: stack frame size of=
 1056 bytes in function 'airo_thread' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c:975:48: warning: implicit con=
version from 'unsigned long long' to 'unsigned long' changes value from 500=
0000000 to 705032704 [-Wconstant-conversion]
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dce_calcs.c:3041:6: warn=
ing: stack frame size of 1384 bytes in function 'bw_calcs' [-Wframe-larger-=
than=3D]
    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dce_calcs.c:77:13: warni=
ng: stack frame size of 5560 bytes in function 'calculate_bandwidth' [-Wfra=
me-larger-than=3D]
    2 warnings generated.
    drivers/staging/fbtft/fbtft-core.c:995:5: warning: stack frame size of =
1208 bytes in function 'fbtft_init_display' [-Wframe-larger-than=3D]
    drivers/staging/fbtft/fbtft-core.c:903:12: warning: stack frame size of=
 1080 bytes in function 'fbtft_init_display_from_property' [-Wframe-larger-=
than=3D]
    2 warnings generated.
    drivers/mtd/chips/cfi_cmdset_0001.c:1872:12: warning: stack frame size =
of 1064 bytes in function 'cfi_intelext_writev' [-Wframe-larger-than=3D]
    1 warning generated.

---------------------------------------------------------------------------=
-----
allmodconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

---------------------------------------------------------------------------=
-----
allmodconfig (arm, clang-10) =E2=80=94 PASS, 0 errors, 47 warnings, 0 secti=
on mismatches

Warnings:
    kernel/trace/trace_events_hist.c:4594:13: warning: stack frame size of =
1304 bytes in function 'hist_trigger_print_key' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/firmware/tegra/bpmp-debugfs.c:321:16: warning: stack frame size=
 of 1264 bytes in function 'bpmp_debug_store' [-Wframe-larger-than=3D]
    1 warning generated.
    arch/arm/lib/xor-neon.c:30:2: warning: This code requires at least vers=
ion 4.6 of GCC [-W#warnings]
    #warning This code requires at least version 4.6 of GCC
    1 warning generated.
    arch/arm/lib/xor-neon.c:30:2: warning: This code requires at least vers=
ion 4.6 of GCC [-W#warnings]
    #warning This code requires at least version 4.6 of GCC
    1 warning generated.
    crypto/wp512.c:782:13: warning: stack frame size of 1192 bytes in funct=
ion 'wp512_process_buffer' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/gpu/drm/selftests/test-drm_mm.c:372:12: warning: stack frame si=
ze of 1040 bytes in function '__igt_reserve' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/misc/habanalabs/goya/goya.c:136:14: warning: implicit conversio=
n from enumeration type 'enum goya_pll_index' to different enumeration type=
 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/goya/goya.c:140:14: warning: implicit conversio=
n from enumeration type 'enum goya_pll_index' to different enumeration type=
 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/goya/goya.c:139:14: warning: implicit conversio=
n from enumeration type 'enum goya_pll_index' to different enumeration type=
 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/goya/goya.c:142:14: warning: implicit conversio=
n from enumeration type 'enum goya_pll_index' to different enumeration type=
 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/goya/goya.c:137:13: warning: implicit conversio=
n from enumeration type 'enum goya_pll_index' to different enumeration type=
 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/goya/goya.c:138:13: warning: implicit conversio=
n from enumeration type 'enum goya_pll_index' to different enumeration type=
 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/goya/goya.c:141:15: warning: implicit conversio=
n from enumeration type 'enum goya_pll_index' to different enumeration type=
 'enum pll_index' [-Wenum-conversion]
    7 warnings generated.
    drivers/misc/habanalabs/gaudi/gaudi.c:126:14: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:127:14: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:130:14: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:131:14: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:132:15: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:133:14: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:134:14: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:135:13: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:128:15: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:129:14: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    10 warnings generated.
    drivers/net/wireless/cisco/airo.c:3075:12: warning: stack frame size of=
 1056 bytes in function 'airo_thread' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dce_calcs.c:3041:6: warn=
ing: stack frame size of 1384 bytes in function 'bw_calcs' [-Wframe-larger-=
than=3D]
    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dce_calcs.c:77:13: warni=
ng: stack frame size of 5536 bytes in function 'calculate_bandwidth' [-Wfra=
me-larger-than=3D]
    2 warnings generated.
    drivers/staging/wlan-ng/cfg80211.c:272:12: warning: stack frame size of=
 1032 bytes in function 'prism2_scan' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c:975:48: warning: implicit con=
version from 'unsigned long long' to 'unsigned long' changes value from 500=
0000000 to 705032704 [-Wconstant-conversion]
    1 warning generated.
    drivers/staging/fbtft/fbtft-core.c:995:5: warning: stack frame size of =
1216 bytes in function 'fbtft_init_display' [-Wframe-larger-than=3D]
    drivers/staging/fbtft/fbtft-core.c:903:12: warning: stack frame size of=
 1072 bytes in function 'fbtft_init_display_from_property' [-Wframe-larger-=
than=3D]
    2 warnings generated.
    drivers/mtd/chips/cfi_cmdset_0001.c:1872:12: warning: stack frame size =
of 1056 bytes in function 'cfi_intelext_writev' [-Wframe-larger-than=3D]
    1 warning generated.

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, clang-10) =E2=80=94 PASS, 0 errors, 29 warnings, 0 sec=
tion mismatches

Warnings:
    drivers/misc/habanalabs/goya/goya.c:136:14: warning: implicit conversio=
n from enumeration type 'enum goya_pll_index' to different enumeration type=
 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/goya/goya.c:140:14: warning: implicit conversio=
n from enumeration type 'enum goya_pll_index' to different enumeration type=
 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/goya/goya.c:139:14: warning: implicit conversio=
n from enumeration type 'enum goya_pll_index' to different enumeration type=
 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/goya/goya.c:142:14: warning: implicit conversio=
n from enumeration type 'enum goya_pll_index' to different enumeration type=
 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/goya/goya.c:137:13: warning: implicit conversio=
n from enumeration type 'enum goya_pll_index' to different enumeration type=
 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/goya/goya.c:138:13: warning: implicit conversio=
n from enumeration type 'enum goya_pll_index' to different enumeration type=
 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/goya/goya.c:141:15: warning: implicit conversio=
n from enumeration type 'enum goya_pll_index' to different enumeration type=
 'enum pll_index' [-Wenum-conversion]
    7 warnings generated.
    drivers/misc/habanalabs/gaudi/gaudi.c:126:14: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:127:14: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:130:14: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:131:14: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:132:15: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:133:14: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:134:14: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:135:13: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:128:15: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:129:14: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    10 warnings generated.
    drivers/platform/surface/surface_aggregator_registry.c:478:25: warning:=
 implicit conversion from 'int' to '__u8' (aka 'unsigned char') changes val=
ue from 65535 to 255 [-Wconstant-conversion]
    1 warning generated.
    drivers/staging/greybus/audio_topology.c:977:12: warning: stack frame s=
ize of 3328 bytes in function 'gbaudio_tplg_create_widget' [-Wframe-larger-=
than=3D]
    1 warning generated.
    drivers/hid/surface-hid/surface_hid.c:233:25: warning: implicit convers=
ion from 'int' to '__u8' (aka 'unsigned char') changes value from 65535 to =
255 [-Wconstant-conversion]
    1 warning generated.
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/_modules_/lib/modules/=
5.12.0-next-20210503/kernel/crypto/cast_common.ko: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/_modules_/lib/modules/=
5.12.0-next-20210503/kernel/drivers/clk/keystone/gate.ko: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/_modules_/lib/modules/=
5.12.0-next-20210503/kernel/drivers/clk/keystone/pll.ko: unsupported GNU_PR=
OPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/_modules_/lib/modules/=
5.12.0-next-20210503/kernel/drivers/media/tuners/tuner-types.ko: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000

---------------------------------------------------------------------------=
-----
allmodconfig (i386, clang-12) =E2=80=94 PASS, 0 errors, 42 warnings, 0 sect=
ion mismatches

Warnings:
    kernel/trace/trace_events_hist.c:4594:13: warning: stack frame size of =
1248 bytes in function 'hist_trigger_print_key' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/misc/habanalabs/goya/goya.c:141:15: warning: implicit conversio=
n from enumeration type 'enum goya_pll_index' to different enumeration type=
 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/goya/goya.c:138:13: warning: implicit conversio=
n from enumeration type 'enum goya_pll_index' to different enumeration type=
 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/goya/goya.c:137:13: warning: implicit conversio=
n from enumeration type 'enum goya_pll_index' to different enumeration type=
 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/goya/goya.c:142:14: warning: implicit conversio=
n from enumeration type 'enum goya_pll_index' to different enumeration type=
 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/goya/goya.c:139:14: warning: implicit conversio=
n from enumeration type 'enum goya_pll_index' to different enumeration type=
 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/goya/goya.c:140:14: warning: implicit conversio=
n from enumeration type 'enum goya_pll_index' to different enumeration type=
 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/goya/goya.c:136:14: warning: implicit conversio=
n from enumeration type 'enum goya_pll_index' to different enumeration type=
 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:129:14: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:128:15: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:135:13: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:134:14: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:133:14: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:132:15: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:131:14: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:130:14: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:127:14: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:126:14: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    7 warnings generated.
    10 warnings generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:450:13: warn=
ing: stack frame size of 1564 bytes in function 'dcn_bw_calc_rq_dlg_ttu' [-=
Wframe-larger-than=3D]
    1 warning  CC [M]  fs/autofs/waitq.o
    drivers/platform/surface/surface_aggregator_registry.c:478:25: warning:=
 implicit conversion from 'int' to '__u8' (aka 'unsigned char') changes val=
ue from 65535 to 255 [-Wconstant-conversion]
    1 warning generated.
    drivers/staging/greybus/audio_topology.c:977:12: warning: stack frame s=
ize of 1804 bytes in function 'gbaudio_tplg_create_widget' [-Wframe-larger-=
than=3D]
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dml1_display_rq_dlg_calc.c=
:997:6: warning: stack frame size of 1196 bytes in function 'dml1_rq_dlg_ge=
t_dlg_params' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_rq_dlg_calc_=
30.c:981:13: warning: stack frame size of 1036 bytes in function 'dml_rq_dl=
g_get_dlg_params' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/display_mode_vba_20.=
c:1085:13: warning: stack frame size of 1180 bytes in function 'dml20_DISPC=
LKDPPCLKDCFCLKDeepSleepPrefetchParametersWatermarksAndPerformanceCalculatio=
n' [-Wframe-larger-than=3D]
    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/display_mode_vba_20.=
c:3286:6: warning: stack frame size of 1420 bytes in function 'dml20_ModeSu=
pportAndSystemConfigurationFull' [-Wframe-larger-than=3D]
    2 warnings generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/display_mode_vba_20v=
2.c:1145:13: warning: stack frame size of 1164 bytes in function 'dml20v2_D=
ISPCLKDPPCLKDCFCLKDeepSleepPrefetchParametersWatermarksAndPerformanceCalcul=
ation' [-Wframe-larger-than=3D]
    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn21/display_mode_vba_21.=
c:1463:13: warning: stack frame size of 1116 bytes in function 'DISPCLKDPPC=
LKDCFCLKDeepSleepPrefetchParametersWatermarksAndPerformanceCalculation' [-W=
frame-larger-than=3D]
    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/display_mode_vba_20v=
2.c:3393:6: warning: stack frame size of 1420 bytes in function 'dml20v2_Mo=
deSupportAndSystemConfigurationFull' [-Wframe-larger-than=3D]
    2 warnings generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn21/display_mode_vba_21.=
c:3393:6: warning: stack frame size of 1436 bytes in function 'dml21_ModeSu=
pportAndSystemConfigurationFull' [-Wframe-larger-than=3D]
    2 warnings generated.
    drivers/hid/surface-hid/surface_hid.c:233:25: warning: implicit convers=
ion from 'int' to '__u8' (aka 'unsigned char') changes value from 65535 to =
255 [-Wconstant-conversion]
    1 warning generated.

---------------------------------------------------------------------------=
-----
allmodconfig (x86_64, clang-10) =E2=80=94 PASS, 0 errors, 25 warnings, 0 se=
ction mismatches

Warnings:
    drivers/misc/habanalabs/goya/goya.c:136:14: warning: implicit conversio=
n from enumeration type 'enum goya_pll_index' to different enumeration type=
 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/goya/goya.c:140:14: warning: implicit conversio=
n from enumeration type 'enum goya_pll_index' to different enumeration type=
 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/goya/goya.c:139:14: warning: implicit conversio=
n from enumeration type 'enum goya_pll_index' to different enumeration type=
 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/goya/goya.c:142:14: warning: implicit conversio=
n from enumeration type 'enum goya_pll_index' to different enumeration type=
 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/goya/goya.c:137:13: warning: implicit conversio=
n from enumeration type 'enum goya_pll_index' to different enumeration type=
 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/goya/goya.c:138:13: warning: implicit conversio=
n from enumeration type 'enum goya_pll_index' to different enumeration type=
 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/goya/goya.c:141:15: warning: implicit conversio=
n from enumeration type 'enum goya_pll_index' to different enumeration type=
 'enum pll_index' [-Wenum-conversion]
    7 warnings generated.
    drivers/misc/habanalabs/gaudi/gaudi.c:126:14: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:127:14: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:130:14: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:131:14: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:132:15: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:133:14: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:134:14: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:135:13: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:128:15: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:129:14: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    10 warnings generated.
    drivers/platform/surface/surface_aggregator_registry.c:478:25: warning:=
 implicit conversion from 'int' to '__u8' (aka 'unsigned char') changes val=
ue from 65535 to 255 [-Wconstant-conversion]
    1 warning generated.
    drivers/staging/greybus/audio_topology.c:977:12: warning: stack frame s=
ize of 3304 bytes in function 'gbaudio_tplg_create_widget' [-Wframe-larger-=
than=3D]
    1 warning generated.
    drivers/hid/surface-hid/surface_hid.c:233:25: warning: implicit convers=
ion from 'int' to '__u8' (aka 'unsigned char') changes value from 65535 to =
255 [-Wconstant-conversion]
    1 warning generated.

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
allmodconfig (x86_64, clang-12) =E2=80=94 PASS, 0 errors, 29 warnings, 0 se=
ction mismatches

Warnings:
    ./usr/include/linux/bcache.h:354:2: warning: field '' with variable siz=
ed type 'union jset::(anonymous at ./usr/include/linux/bcache.h:354:2)' not=
 at the end of a struct or class is a GNU extension [-Wgnu-variable-sized-t=
ype-not-at-end]
    ./usr/include/linux/bcache.h:355:2: warning: field '' with variable siz=
ed type 'union jset::(anonymous at ./usr/include/linux/bcache.h:355:2)' not=
 at the end of a struct or class is a GNU extension [-Wgnu-variable-sized-t=
ype-not-at-end]
    2 warnings generated.
    fs/reiserfs/do_balan.o: warning: objtool: balance_leaf_when_delete()+0x=
10cd: stack state mismatch: cfa1=3D4+184 cfa2=3D4+176
    drivers/misc/habanalabs/goya/goya.c:141:15: warning: implicit conversio=
n from enumeration type 'enum goya_pll_index' to different enumeration type=
 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/goya/goya.c:138:13: warning: implicit conversio=
n from enumeration type 'enum goya_pll_index' to different enumeration type=
 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/goya/goya.c:137:13: warning: implicit conversio=
n from enumeration type 'enum goya_pll_index' to different enumeration type=
 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/goya/goya.c:142:14: warning: implicit conversio=
n from enumeration type 'enum goya_pll_index' to different enumeration type=
 'enum pll_index' [-Wenum-conversion]
    139:14: warning: implicit conversion from enumeration type 'enum goya_p=
ll_index' to different enumeration type 'enum pll_index' [-Wenum-conversion=
]
    drivers/misc/habanalabs/goya/goya.c:140:14: warning: implicit conversio=
n from enumeration type 'enum goya_pll_index' to different enumeration type=
 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/goya/goya.c:136:14: warning: implicit conversio=
n from enumeration type 'enum goya_pll_index' to different enumeration type=
 'enum pll_index' [-Wenum-conversion]
    7 warnings generated.
    drivers/misc/habanalabs/gaudi/gaudi.c:129:14: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:128:15: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:135:13: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:134:14: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:133:14: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:132:15: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:131:14: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:130:14: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:127:14: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:126:14: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    10 warnings generated.
    drivers/platform/surface/surface_aggregator_registry.c:478:25: warning:=
 implicit conversion from 'int' to '__u8' (aka 'unsigned char') changes val=
ue from 65535 to 255 [-Wconstant-conversion]
    1 warning generated.
    drivers/staging/greybus/audio_topology.c:977:12: warning: stack frame s=
ize of 3288 bytes in function 'gbaudio_tplg_create_widget' [-Wframe-larger-=
than=3D]
    1 warning generated.
    drivers/hid/surface-hid/surface_hid.c:233:25: warning: implicit convers=
ion from 'int' to '__u8' (aka 'unsigned char') changes value from 65535 to =
255 [-Wconstant-conversion]
    1 warning generated.

---------------------------------------------------------------------------=
-----
allnoconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (arm, clang-12) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (x86_64, clang-10) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (i386, clang-12) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (arm64, clang-10) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
allnoconfig (riscv, clang-12) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (arm, clang-10) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (i386, clang-10) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (x86_64, clang-12) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
allnoconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

---------------------------------------------------------------------------=
-----
allnoconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

---------------------------------------------------------------------------=
-----
allnoconfig (arm64, clang-12) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

---------------------------------------------------------------------------=
-----
am200epdkit_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
ar7_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
aspeed_g4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
aspeed_g5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
aspeed_g5_defconfig (arm, clang-12) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches

---------------------------------------------------------------------------=
-----
aspeed_g5_defconfig (arm, clang-10) =E2=80=94 FAIL, 11 errors, 0 warnings, =
0 section mismatches

Errors:
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x355A0): relocation =
R_ARM_PREL31 out of range: 2135516056 is not in [-1073741824, 1073741823]
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37BDC): relocation =
R_ARM_PREL31 out of range: 2135571804 is not in [-1073741824, 1073741823]
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37C24): relocation =
R_ARM_PREL31 out of range: 2135571732 is not in [-1073741824, 1073741823]
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37C54): relocation =
R_ARM_PREL31 out of range: 2135571684 is not in [-1073741824, 1073741823]
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37C84): relocation =
R_ARM_PREL31 out of range: 2135571636 is not in [-1073741824, 1073741823]
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37C9C): relocation =
R_ARM_PREL31 out of range: 2135571612 is not in [-1073741824, 1073741823]
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37CB4): relocation =
R_ARM_PREL31 out of range: 2135571588 is not in [-1073741824, 1073741823]
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37CC4): relocation =
R_ARM_PREL31 out of range: 2135571572 is not in [-1073741824, 1073741823]
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37D14): relocation =
R_ARM_PREL31 out of range: 2135571492 is not in [-1073741824, 1073741823]
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37D24): relocation =
R_ARM_PREL31 out of range: 2135571476 is not in [-1073741824, 1073741823]
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37DCC): relocation =
R_ARM_PREL31 out of range: 2135571308 is not in [-1073741824, 1073741823]

---------------------------------------------------------------------------=
-----
assabet_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
at91_dt_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
ath25_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
ath79_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
axm55xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
axs103_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
axs103_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
badge4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
bcm2835_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
bcm47xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
bcm63xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
bigsur_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
bmips_be_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
bmips_stb_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
capcella_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
cavium_octeon_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches

---------------------------------------------------------------------------=
-----
cerfcube_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
ci20_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
clps711x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
cm_x300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
cns3420vb_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
cobalt_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
colibri_pxa270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches

---------------------------------------------------------------------------=
-----
colibri_pxa300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches

---------------------------------------------------------------------------=
-----
collie_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
corgi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
cu1000-neo_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
cu1830-neo_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
davinci_all_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
db1xxx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
decstation_64_defconfig (mips, gcc-8) =E2=80=94 FAIL, 0 errors, 0 warnings,=
 0 section mismatches

---------------------------------------------------------------------------=
-----
decstation_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
decstation_r4k_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings=
, 0 section mismatches

---------------------------------------------------------------------------=
-----
defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
defconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mis=
matches

Warnings:
    arch/arm64/configs/defconfig:1018:warning: override: reassigning to sym=
bol MTK_PMIC_WRAP

---------------------------------------------------------------------------=
-----
defconfig (arm64, clang-10) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section=
 mismatches

Warnings:
    arch/arm64/configs/defconfig:1018:warning: override: reassigning to sym=
bol MTK_PMIC_WRAP
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/_modules_/lib/modules/=
5.12.0-next-20210503/kernel/drivers/media/tuners/tuner-types.ko: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000

---------------------------------------------------------------------------=
-----
defconfig (arm64, clang-12) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    arch/arm64/configs/defconfig:1018:warning: override: reassigning to sym=
bol MTK_PMIC_WRAP

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_ARM64_64K_PAGES=3Dy (arm64, clang-10) =E2=80=94 PASS, 0 er=
rors, 2 warnings, 0 section mismatches

Warnings:
    arch/arm64/configs/defconfig:1018:warning: override: reassigning to sym=
bol MTK_PMIC_WRAP
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/_modules_/lib/modules/=
5.12.0-next-20210503/kernel/drivers/media/tuners/tuner-types.ko: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_ARM64_64K_PAGES=3Dy (arm64, clang-12) =E2=80=94 PASS, 0 er=
rors, 1 warning, 0 section mismatches

Warnings:
    arch/arm64/configs/defconfig:1018:warning: override: reassigning to sym=
bol MTK_PMIC_WRAP

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_ARM64_64K_PAGES=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 error=
s, 1 warning, 0 section mismatches

Warnings:
    arch/arm64/configs/defconfig:1018:warning: override: reassigning to sym=
bol MTK_PMIC_WRAP

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 errors=
, 1 warning, 0 section mismatches

Warnings:
    arch/arm64/configs/defconfig:1018:warning: override: reassigning to sym=
bol MTK_PMIC_WRAP

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_EFI=3Dn (riscv, clang-12) =E2=80=94 PASS, 0 errors, 0 warn=
ings, 0 section mismatches

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_RANDOMIZE_BASE=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 errors=
, 1 warning, 0 section mismatches

Warnings:
    arch/arm64/configs/defconfig:1018:warning: override: reassigning to sym=
bol MTK_PMIC_WRAP

---------------------------------------------------------------------------=
-----
dove_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
e55_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
ep93xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
eseries_pxa_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
exynos_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
ezx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

---------------------------------------------------------------------------=
-----
footbridge_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
fuloong2e_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
gcw0_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
gemini_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
gpr_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
h3600_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
h5000_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
hackkit_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
haps_hs_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
haps_hs_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
hisi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
hsdk_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
i386_defconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
i386_defconfig (i386, clang-10) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
i386_defconfig (i386, clang-12) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
imote2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
imx_v4_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
imx_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
integrator_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
iop32x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
ip22_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
ip27_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
ip28_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
ip32_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
ixp4xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
jazz_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
jmr3927_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
jornada720_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
keystone_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
lart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
lemote2f_defconfig (mips, gcc-8) =E2=80=94 FAIL, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
loongson1b_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
loongson1c_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
loongson2k_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
loongson3_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
lpc18xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
lpc32xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
lpd270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
lubbock_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
magician_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
mainstone_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
malta_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
malta_kvm_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
malta_qemu_32r6_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning=
, 0 section mismatches

Warnings:
    {standard input}:39: Warning: macro instruction expanded into multiple =
instructions

---------------------------------------------------------------------------=
-----
maltaaprp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
maltasmvp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
maltasmvp_eva_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches

---------------------------------------------------------------------------=
-----
maltaup_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
maltaup_xpa_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches

---------------------------------------------------------------------------=
-----
milbeaut_m10v_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches

---------------------------------------------------------------------------=
-----
mini2440_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
mmp2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
moxart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
mpc30x_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
mps2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
mtx1_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
multi_v4t_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
multi_v5_defconfig (arm, clang-10) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
multi_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
multi_v5_defconfig (arm, clang-12) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
multi_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
multi_v7_defconfig (arm, clang-10) =E2=80=94 PASS, 0 errors, 2 warnings, 0 =
section mismatches

Warnings:
    drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c:975:48: warning: implicit con=
version from 'unsigned long long' to 'unsigned long' changes value from 500=
0000000 to 705032704 [-Wconstant-conversion]
    1 warning generated.

---------------------------------------------------------------------------=
-----
multi_v7_defconfig (arm, clang-12) =E2=80=94 PASS, 0 errors, 2 warnings, 0 =
section mismatches

Warnings:
    drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c:975:48: warning: implicit con=
version from 'unsigned long long' to 'unsigned long' changes value from 500=
0000000 to 705032704 [-Wconstant-conversion]
    1 warning generated.

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm, gcc-8) =E2=80=94 PASS, 0=
 errors, 0 warnings, 0 section mismatches

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_EFI=3Dy+CONFIG_ARM_LPAE=3Dy (arm, gcc-8) =E2=80=
=94 PASS, 0 errors, 0 warnings, 0 section mismatches

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_SMP=3Dn (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 =
warnings, 0 section mismatches

---------------------------------------------------------------------------=
-----
mv78xx0_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
mvebu_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
mvebu_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
mxs_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

---------------------------------------------------------------------------=
-----
neponset_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
netwinder_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
nhk8815_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
nlm_xlp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
nlm_xlr_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
nommu_k210_defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches

---------------------------------------------------------------------------=
-----
nommu_k210_sdcard_defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warn=
ings, 0 section mismatches

---------------------------------------------------------------------------=
-----
nommu_virt_defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches

---------------------------------------------------------------------------=
-----
nsimosci_hs_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
nsimosci_hs_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings=
, 0 section mismatches

---------------------------------------------------------------------------=
-----
omap1_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sectio=
n mismatches

Warnings:
    arch/arm/mach-omap1/board-h2.c:347:34: warning: =E2=80=98isp1301_gpiod_=
table=E2=80=99 defined but not used [-Wunused-variable]
    arch/arm/mach-omap1/board-ams-delta.c:462:12: warning: =E2=80=98ams_del=
ta_camera_power=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
omap2plus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
omega2p_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
orion5x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
oxnas_v6_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
palmz72_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
pcm027_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
pic32mzda_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
pistachio_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
pleb_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
pxa168_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
pxa255-idp_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
pxa3xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
pxa910_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
pxa_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

---------------------------------------------------------------------------=
-----
qcom_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
qi_lb60_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
rb532_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
rbtx49xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
realview_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
rm200_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    drivers/block/paride/bpck.c:32: warning: "PC" redefined

---------------------------------------------------------------------------=
-----
rpc_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

---------------------------------------------------------------------------=
-----
rs90_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
rt305x_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
rv32_defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 6 warnings, 0 secti=
on mismatches

Warnings:
    <stdin>:834:2: warning: #warning syscall fstat64 not implemented [-Wcpp=
]
    <stdin>:1131:2: warning: #warning syscall fstatat64 not implemented [-W=
cpp]
    <stdin>:1515:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:834:2: warning: #warning syscall fstat64 not implemented [-Wcpp=
]
    <stdin>:1131:2: warning: #warning syscall fstatat64 not implemented [-W=
cpp]
    <stdin>:1515:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
s3c2410_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
s3c6400_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
s5pv210_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
sama5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
sb1250_swarm_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches

---------------------------------------------------------------------------=
-----
shannon_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
simpad_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
socfpga_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
spear13xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
spear3xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
spear6xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
spitz_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
stm32_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
sunxi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
tb0219_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
tb0226_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
tb0287_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
tct_hammer_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
tegra_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
tinyconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

---------------------------------------------------------------------------=
-----
tinyconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
tinyconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

---------------------------------------------------------------------------=
-----
tinyconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mis=
matches

---------------------------------------------------------------------------=
-----
tinyconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
tinyconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mis=
matches

---------------------------------------------------------------------------=
-----
tinyconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches

Warnings:
    .config:1202:warning: override: UNWINDER_GUESS changes choice state

---------------------------------------------------------------------------=
-----
trizeps4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
u8500_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
vdk_hs38_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
vdk_hs38_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches

---------------------------------------------------------------------------=
-----
versatile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
vexpress_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
vf610m4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
viper_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
vocore2_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
vt8500_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches

---------------------------------------------------------------------------=
-----
workpad_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
x86_64_defconfig (x86_64, clang-10) =E2=80=94 PASS, 0 errors, 2 warnings, 0=
 section mismatches

Warnings:
    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: eb_pr=
efault_relocations()+0xc6: stack state mismatch: cfa1=3D4+8 cfa2=3D-1+0
    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: eb_co=
py_relocations()+0x249: stack state mismatch: cfa1=3D4+104 cfa2=3D-1+0

---------------------------------------------------------------------------=
-----
x86_64_defconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
x86_64_defconfig (x86_64, clang-12) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches

---------------------------------------------------------------------------=
-----
x86_64_defconfig+kvm_guest (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warn=
ings, 0 section mismatches

---------------------------------------------------------------------------=
-----
x86_64_defconfig+x86-chromebook (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0=
 warnings, 0 section mismatches

---------------------------------------------------------------------------=
-----
xcep_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
xway_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sectio=
n mismatches

Warnings:
    drivers/net/ethernet/lantiq_etop.c:273:4: warning: ignoring return valu=
e of =E2=80=98request_irq=E2=80=99, declared with attribute warn_unused_res=
ult [-Wunused-result]
    drivers/net/ethernet/lantiq_etop.c:281:4: warning: ignoring return valu=
e of =E2=80=98request_irq=E2=80=99, declared with attribute warn_unused_res=
ult [-Wunused-result]

---------------------------------------------------------------------------=
-----
zeus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---
For more info write to <info@kernelci.org>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/608f83f1.1c69fb81.c07fd.771e%40mx.google.com.
