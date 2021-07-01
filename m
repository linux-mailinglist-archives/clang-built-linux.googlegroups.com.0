Return-Path: <clang-built-linux+bncBDT6TV45WMPRBBUP62DAMGQELINMZDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id B2EF23B8F98
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Jul 2021 11:14:47 +0200 (CEST)
Received: by mail-vk1-xa40.google.com with SMTP id k14-20020a1f240e0000b029024f5824350csf1062769vkk.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Jul 2021 02:14:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625130886; cv=pass;
        d=google.com; s=arc-20160816;
        b=UTRMQCC7kavijCQwuvm33NevR5IVWTkgwjwk6w+JARljWcFEuF4RmkG5QkJ9YWHBLQ
         UIVWG/a/Ks6lziRqc5oEeRE4ldAdd5Ue7WF7oexcKx2YXzpmwz9Xcv2FPqvRQpVPF8L0
         kPDoQp2vGKbig3ZndtFqS2eqVz1lxzIJOwc8MkkUNamEgYlVD4NjpaKfz3ETbbfM/MOG
         mgpywo++11P0YE+eZtn8MB09g49QD/fUqwXVxN56LQrBMTZc48I+OlemC7e7u5wltH0d
         jftZCTr9eiKl9vKivC+yYgtusaHky0ugX1dqMLBEumM6yPKOkP5gFpBf8cVlP58r77lB
         lVBQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:from:to:subject
         :content-transfer-encoding:mime-version:date:message-id:sender
         :dkim-signature;
        bh=8nyG5mhCqMFlGOdudH76/S5hYw7cQPvyBycBsTzegL8=;
        b=JAeGl0cIOKy19d4015HxU+IK2lP1Uh6Khfc1fmAYOmWnXRXNN1E3ZQyIxNZm1dwQ5p
         FKYTQqsVO09dstia2CYr5r0L/2w/DgSuoQPGQVzyq9L3KAxDudNiNrZS4Nkolam1V5fq
         i+VdnnzNLtAJWgQpTOc2+RRRu7/7TeP5LKJtqKePARt2N0YEiDcsMWBj0o35cPvgWamf
         /OTd6wxdn+JP/fNthVNLouhu5FouddUCqLJQyLtnObHeUjzx1VumqElOGkl0HXg2PHHF
         2ltD+3bkmB5JZ1x4repNJE6G7kVcQ6S/lHMMPqVJpzwMV3V1dErsrXUaQQRd7JvzmtdB
         JqgQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=NQkFgYQy;
       spf=neutral (google.com: 2607:f8b0:4864:20::102a is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:mime-version:content-transfer-encoding
         :subject:to:from:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8nyG5mhCqMFlGOdudH76/S5hYw7cQPvyBycBsTzegL8=;
        b=XvsWmgOBLP2qJFlZGs1os9qwP6ftv0/1v4mf/wcbnyBOH7FlJQQ2Uc+27F1YvcGECT
         53JHCGP7N44nWUgkenG/3Pa1B/kZlt2E5c0+8u91HgUqwqDm5EM92FL6ltZAjyQURTea
         /RlVRNfEMCmvmOyp7J1P70tvLKGYV/IoCqbD0Mk2X81WomYfFsA/VWmTNUY0KWm5BRtH
         QvUqM/Zy2v4/hmNBXeDYZz0zft50SU64mo+xevGXrB2N8Uzo3LEOWTs1ZjlMpNVMKdo2
         mzt9ijKNY+jlp+AbU4trtFq/6XrZw7LLC8iWYGsuZwT/KNEijbLyNhgWD98taKPphArG
         bnyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:mime-version
         :content-transfer-encoding:subject:to:from:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8nyG5mhCqMFlGOdudH76/S5hYw7cQPvyBycBsTzegL8=;
        b=QTa83aX1BdmxTZ4MVjDIDB/NmzBTib3j+MCmo/51x+rjW5VX6BowXh9hFWqD8G2wjx
         YEwHRPXoTmVdHg51jcnk5Cil7cUvdQ9WfqutDlkv5dxIpOmMSTLvQKuwv+H8raaNZ+ZR
         sMaO3PPIBJIgxU9zZ/katiDaHkdlB1Ej5dKaCcNtTHZ0dM/tKTSpqA5q7NH57sAqYRyv
         LhbxG4BAqUnAv+/53HVRVV6jjLgffnseLcXrYtueowgWHCVKxafgaGaJOk1yvDNQI2oY
         2bm2yT6Mlcp/pODqfIekJVcUSq/z1SQQ54D97OhFNFCPFz+PbAHmPw/Ye7UGnU9Dn5PK
         sz/A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530mJqIphlV3sRZO8805EXuSKlhSeJM60cMWFHW+q4hfzlnGKsxP
	QQvvfjxYFHD5iCuFmqldDcM=
X-Google-Smtp-Source: ABdhPJzwiIW26vYQbLrRZywKZNwIFnu+7QPhuMDUvtv9N7hqUD5nfi3dvdz905TN//bNA4MqcrPfXw==
X-Received: by 2002:ab0:908:: with SMTP id w8mr28553651uag.0.1625130886771;
        Thu, 01 Jul 2021 02:14:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:6037:: with SMTP id n23ls993143ual.7.gmail; Thu, 01 Jul
 2021 02:14:46 -0700 (PDT)
X-Received: by 2002:ab0:647:: with SMTP id f65mr37859238uaf.4.1625130886245;
        Thu, 01 Jul 2021 02:14:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625130886; cv=none;
        d=google.com; s=arc-20160816;
        b=ay2hAXkvuxYonYzaY5GkaEqsqT54+ZNlHGyOJQuuP+j7GA6GhkhErq7DZynMccH6WF
         Q5uNBuXqGDFVAnYtYD06MUMiAea2imkfLiwLn4vYqq6TLW+oq2KTcXZRpVgkd0eeL9MQ
         K2WWjSvRNgn2YqdewshRAc65zsOIQcbGaX18sEUJbMH5EHtFEmb6+JrwIVw3FHkmu9bK
         w70gxOvKR78zBrO7C9zU2hcVaIqu6q88s7B5WJbrGm/zwtJJQLqsAB0GzL0oydDYcGg5
         f1dbAJs1NElswE/3ws0ReDOWBZ1DTyXRo63so/vbypPFUnAl4tQbleQ1Y5rocSG2qkuX
         YKmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=from:to:subject:content-transfer-encoding:mime-version:date
         :message-id:dkim-signature;
        bh=fZ1XMaiZB0XfrCYrwG1bfj4Emw4DbUoRODMqm4thzIA=;
        b=fm4/UdtF+o4J6IceGu7joA/pzRaK0eyfbQQlt+/3AmY6Poq9swmyKK38z3U4XPDJiE
         TeU4k04zTRTtV6CnsyI24hpT1NaptroSD6/2WuFogvMq5uU0PWo57+l6jb5NsSnCOm8z
         1Xd144lgHHBT4lv87tQq5h7b0FwlomiytZHgXuJIa3MS6BHBugRsQhU7zJBd3xsTWZiG
         +sz2NEg7WHbx1mZYS6TUUsHHYVrTuSYlWltaCjvL0VAieubOyApsaRsHr6Yn4dcYDs80
         hI5xlMU2YsAcsH0y7f3ihUaRIeEvml0ykeyUiW2sPvUbYbfe9BpzOd9qMROAluBPbD+t
         8nBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=NQkFgYQy;
       spf=neutral (google.com: 2607:f8b0:4864:20::102a is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com. [2607:f8b0:4864:20::102a])
        by gmr-mx.google.com with ESMTPS id a1si2076178uaq.0.2021.07.01.02.14.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Jul 2021 02:14:46 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::102a is neither permitted nor denied by best guess record for domain of bot@kernelci.org) client-ip=2607:f8b0:4864:20::102a;
Received: by mail-pj1-x102a.google.com with SMTP id g24so3859771pji.4
        for <clang-built-linux@googlegroups.com>; Thu, 01 Jul 2021 02:14:46 -0700 (PDT)
X-Received: by 2002:a17:90a:dc10:: with SMTP id i16mr25127109pjv.233.1625130884510;
        Thu, 01 Jul 2021 02:14:44 -0700 (PDT)
Received: from kernelci-production.internal.cloudapp.net ([52.250.1.28])
        by smtp.gmail.com with ESMTPSA id gi20sm9154572pjb.20.2021.07.01.02.14.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Jul 2021 02:14:44 -0700 (PDT)
Message-ID: <60dd8784.1c69fb81.903c7.c5eb@mx.google.com>
Date: Thu, 01 Jul 2021 02:14:44 -0700 (PDT)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Kernelci-Report-Type: build
X-Kernelci-Kernel: next-20210701
X-Kernelci-Tree: next
X-Kernelci-Branch: master
Subject: next/master build: 209 builds: 6 failed, 203 passed, 42 errors,
 45 warnings (next-20210701)
To: clang-built-linux@googlegroups.com
From: "kernelci.org bot" <bot@kernelci.org>
X-Original-Sender: bot@kernelci.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623
 header.b=NQkFgYQy;       spf=neutral (google.com: 2607:f8b0:4864:20::102a is
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

next/master build: 209 builds: 6 failed, 203 passed, 42 errors, 45 warnings=
 (next-20210701)

Full Build Summary: https://kernelci.org/build/next/branch/master/kernel/ne=
xt-20210701/

Tree: next
Branch: master
Git Describe: next-20210701
Git Commit: fb0ca446157a86b75502c1636b0d81e642fe6bf1
Git URL: https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.gi=
t
Built: 7 unique architectures

Build Failures Detected:

arc:
    allnoconfig: (gcc-8) FAIL
    nsimosci_hs_smp_defconfig: (gcc-8) FAIL

arm64:
    allmodconfig: (gcc-8) FAIL

mips:
    decstation_64_defconfig: (gcc-8) FAIL
    lemote2f_defconfig: (gcc-8) FAIL

riscv:
    rv32_defconfig: (gcc-8) FAIL

Errors and Warnings Detected:

arc:
    allnoconfig (gcc-8): 8 errors
    haps_hs_smp_defconfig+kselftest (gcc-8): 2 warnings
    nsimosci_hs_smp_defconfig (gcc-8): 8 errors

arm64:
    allmodconfig (clang-10): 13 warnings
    allmodconfig (gcc-8): 2 errors, 1 warning
    defconfig+CONFIG_ARM64_64K_PAGES=3Dy (clang-10): 1 warning

arm:
    lpc18xx_defconfig (gcc-8): 1 warning
    mps2_defconfig (gcc-8): 1 warning
    multi_v7_defconfig (clang-12): 2 warnings
    multi_v7_defconfig (clang-10): 2 warnings
    stm32_defconfig (gcc-8): 1 warning
    vf610m4_defconfig (gcc-8): 1 warning

i386:

mips:
    rm200_defconfig (gcc-8): 1 warning

riscv:
    nommu_k210_defconfig (gcc-8): 1 warning
    nommu_k210_sdcard_defconfig (gcc-8): 1 warning
    rv32_defconfig (gcc-8): 24 errors, 15 warnings

x86_64:
    x86_64_defconfig (clang-10): 2 warnings

Errors summary:

    12   arch/riscv/include/asm/pgtable.h:520:9: error: incompatible types =
when returning type =E2=80=98int=E2=80=99 but =E2=80=98pmd_t=E2=80=99 {aka =
=E2=80=98struct <anonymous>=E2=80=99} was expected
    12   arch/riscv/include/asm/pgtable.h:520:9: error: implicit declaratio=
n of function =E2=80=98pfn_pmd=E2=80=99; did you mean =E2=80=98pfn_pgd=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]
    2    arc-elf32-ld: stackdepot.c:(.text+0x4e0): undefined reference to `=
__softirqentry_text_end'
    2    arc-elf32-ld: stackdepot.c:(.text+0x4d8): undefined reference to `=
__softirqentry_text_start'
    2    arc-elf32-ld: stackdepot.c:(.text+0x4cc): undefined reference to `=
__irqentry_text_end'
    2    arc-elf32-ld: stackdepot.c:(.text+0x38): undefined reference to `_=
_softirqentry_text_end'
    2    arc-elf32-ld: stackdepot.c:(.text+0x30): undefined reference to `_=
_softirqentry_text_start'
    2    arc-elf32-ld: stackdepot.c:(.text+0x24): undefined reference to `_=
_irqentry_text_end'
    1    stackdepot.c:(.text+0x4ac): undefined reference to `__irqentry_tex=
t_start'
    1    stackdepot.c:(.text+0x4): undefined reference to `__irqentry_text_=
start'
    1    arc-elf32-ld: stackdepot.c:(.text+0x4ac): undefined reference to `=
__irqentry_text_start'
    1    arc-elf32-ld: stackdepot.c:(.text+0x4): undefined reference to `__=
irqentry_text_start'
    1    ./../include/linux/compiler_types.h:328:38: error: call to =E2=80=
=98__compiletime_assert_1864=E2=80=99 declared with attribute error: FIELD_=
PREP: value too large for the field
    1    ./../include/linux/compiler_types.h:328:38: error: call to =E2=80=
=98__compiletime_assert_1857=E2=80=99 declared with attribute error: FIELD_=
PREP: value too large for the field

Warnings summary:

    12   cc1: some warnings being treated as errors
    6    include/linux/rmap.h:294:34: warning: statement with no effect [-W=
unused-value]
    6    1 warning generated.
    3    sound/usb/mixer_scarlett_gen2.c:1189:32: warning: expression resul=
t unused [-Wunused-value]
    3    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.13.0-next-20210701/kernel/drivers/media/tuners/tuner-types.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.13.0-next-20=
210701/kernel/drivers/clk/keystone/gate.ko: unsupported GNU_PROPERTY_TYPE (=
5) type: 0xc0000000
    1    kernel/trace/trace_osnoise.c:1461:8: warning: =E2=80=98main=E2=80=
=99 is usually a function [-Wmain]
    1    drivers/staging/greybus/audio_topology.c:977:12: warning: stack fr=
ame size of 3328 bytes in function 'gbaudio_tplg_create_widget' [-Wframe-la=
rger-than=3D]
    1    drivers/net/wireless/mediatek/mt76/mt7921/mcu.c:114:10: warning: i=
mplicit conversion from enumeration type 'enum mt76_cipher_type' to differe=
nt enumeration type 'enum mcu_cipher_type' [-Wenum-conversion]
    1    drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:114:10: warning: i=
mplicit conversion from enumeration type 'enum mt76_cipher_type' to differe=
nt enumeration type 'enum mcu_cipher_type' [-Wenum-conversion]
    1    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: =
eb_relocate_parse_slow()+0x427: stack state mismatch: cfa1=3D4+120 cfa2=3D-=
1+0
    1    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: =
eb_copy_relocations()+0x1d5: stack state mismatch: cfa1=3D4+104 cfa2=3D-1+0
    1    drivers/block/paride/bpck.c:32: warning: "PC" redefined
    1    arch/arc/include/asm/perf_event.h:91:27: warning: =E2=80=98arc_pmu=
_ev_hw_map=E2=80=99 defined but not used [-Wunused-const-variable=3D]
    1    arch/arc/include/asm/perf_event.h:126:23: warning: =E2=80=98arc_pm=
u_cache_map=E2=80=99 defined but not used [-Wunused-const-variable=3D]
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.13.0-next-20210701/kernel/sound/soc/intel/boards/snd-soc-intel=
-hda-dsp-common.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.13.0-next-20210701/kernel/drivers/clk/keystone/pll.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000aarch64-linux-gnu-strip:
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.13.0-next-20210701/kernel/crypto/cast_common.ko: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    1    <stdin>:834:2: warning: #warning syscall fstat64 not implemented [=
-Wcpp]
    1    <stdin>:1515:2: warning: #warning syscall clone3 not implemented [=
-Wcpp]
    1    <stdin>:1131:2: warning: #warning syscall fstatat64 not implemente=
d [-Wcpp]

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
32r2el_defconfig+kselftest (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnin=
gs, 0 section mismatches

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, clang-10) =E2=80=94 PASS, 0 errors, 13 warnings, 0 sec=
tion mismatches

Warnings:
    sound/usb/mixer_scarlett_gen2.c:1189:32: warning: expression result unu=
sed [-Wunused-value]
    1 warning generated.
    drivers/net/wireless/mediatek/mt76/mt7921/mcu.c:114:10: warning: implic=
it conversion from enumeration type 'enum mt76_cipher_type' to different en=
umeration type 'enum mcu_cipher_type' [-Wenum-conversion]
    1 warning generated.
    drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:114:10: warning: implic=
it conversion from enumeration type 'enum mt76_cipher_type' to different en=
umeration type 'enum mcu_cipher_type' [-Wenum-conversion]
    1 warning generated.
    drivers/staging/greybus/audio_topology.c:977:12: warning: stack frame s=
ize of 3328 bytes in function 'gbaudio_tplg_create_widget' [-Wframe-larger-=
than=3D]
    1 warning generated.
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.13.0-next-20210701/kernel/crypto/cast_common.ko: unsupported GNU_PR=
OPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.13.0-next-20210701/kernel/drivers/clk/keystone/pll.ko: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000aarch64-linux-gnu-strip:
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.13.0-next-2021070=
1/kernel/drivers/clk/keystone/gate.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.13.0-next-20210701/kernel/drivers/media/tuners/tuner-types.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.13.0-next-20210701/kernel/sound/soc/intel/boards/snd-soc-intel-hda-=
dsp-common.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, gcc-8) =E2=80=94 FAIL, 2 errors, 1 warning, 0 section =
mismatches

Errors:
    ./../include/linux/compiler_types.h:328:38: error: call to =E2=80=98__c=
ompiletime_assert_1857=E2=80=99 declared with attribute error: FIELD_PREP: =
value too large for the field
    ./../include/linux/compiler_types.h:328:38: error: call to =E2=80=98__c=
ompiletime_assert_1864=E2=80=99 declared with attribute error: FIELD_PREP: =
value too large for the field

Warnings:
    kernel/trace/trace_osnoise.c:1461:8: warning: =E2=80=98main=E2=80=99 is=
 usually a function [-Wmain]

---------------------------------------------------------------------------=
-----
allnoconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

---------------------------------------------------------------------------=
-----
allnoconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (i386, clang-12) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (arc, gcc-8) =E2=80=94 FAIL, 8 errors, 0 warnings, 0 section mi=
smatches

Errors:
    stackdepot.c:(.text+0x4ac): undefined reference to `__irqentry_text_sta=
rt'
    arc-elf32-ld: stackdepot.c:(.text+0x4ac): undefined reference to `__irq=
entry_text_start'
    arc-elf32-ld: stackdepot.c:(.text+0x4cc): undefined reference to `__irq=
entry_text_end'
    arc-elf32-ld: stackdepot.c:(.text+0x4cc): undefined reference to `__irq=
entry_text_end'
    arc-elf32-ld: stackdepot.c:(.text+0x4d8): undefined reference to `__sof=
tirqentry_text_start'
    arc-elf32-ld: stackdepot.c:(.text+0x4d8): undefined reference to `__sof=
tirqentry_text_start'
    arc-elf32-ld: stackdepot.c:(.text+0x4e0): undefined reference to `__sof=
tirqentry_text_end'
    arc-elf32-ld: stackdepot.c:(.text+0x4e0): undefined reference to `__sof=
tirqentry_text_end'

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
allnoconfig (x86_64, clang-10) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

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
aspeed_g5_defconfig (arm, clang-10) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches

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
cm_x300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

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
defconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
defconfig (arm64, clang-12) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_ARM64_64K_PAGES=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 error=
s, 0 warnings, 0 section mismatches

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_ARM64_64K_PAGES=3Dy (arm64, clang-10) =E2=80=94 PASS, 0 er=
rors, 1 warning, 0 section mismatches

Warnings:
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.13.0-next-20210701/kernel/drivers/media/tuners/tuner-types.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_ARM64_64K_PAGES=3Dy (arm64, clang-12) =E2=80=94 PASS, 0 er=
rors, 0 warnings, 0 section mismatches

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 errors=
, 0 warnings, 0 section mismatches

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_EFI=3Dn (riscv, clang-12) =E2=80=94 PASS, 0 errors, 0 warn=
ings, 0 section mismatches

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_RANDOMIZE_BASE=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 errors=
, 0 warnings, 0 section mismatches

---------------------------------------------------------------------------=
-----
defconfig+kselftest (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
defconfig+kselftest (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

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
haps_hs_smp_defconfig+kselftest (arc, gcc-8) =E2=80=94 PASS, 0 errors, 2 wa=
rnings, 0 section mismatches

Warnings:
    arch/arc/include/asm/perf_event.h:126:23: warning: =E2=80=98arc_pmu_cac=
he_map=E2=80=99 defined but not used [-Wunused-const-variable=3D]
    arch/arc/include/asm/perf_event.h:91:27: warning: =E2=80=98arc_pmu_ev_h=
w_map=E2=80=99 defined but not used [-Wunused-const-variable=3D]

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
i386_defconfig+kselftest (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings=
, 0 section mismatches

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
lpc18xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    include/linux/rmap.h:294:34: warning: statement with no effect [-Wunuse=
d-value]

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
malta_qemu_32r6_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warning=
s, 0 section mismatches

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
mps2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    include/linux/rmap.h:294:34: warning: statement with no effect [-Wunuse=
d-value]

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
multi_v7_defconfig (arm, clang-12) =E2=80=94 PASS, 0 errors, 2 warnings, 0 =
section mismatches

Warnings:
    sound/usb/mixer_scarlett_gen2.c:1189:32: warning: expression result unu=
sed [-Wunused-value]
    1 warning generated.

---------------------------------------------------------------------------=
-----
multi_v7_defconfig (arm, clang-10) =E2=80=94 PASS, 0 errors, 2 warnings, 0 =
section mismatches

Warnings:
    sound/usb/mixer_scarlett_gen2.c:1189:32: warning: expression result unu=
sed [-Wunused-value]
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
multi_v7_defconfig+kselftest (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warni=
ngs, 0 section mismatches

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
nommu_k210_defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 =
section mismatches

Warnings:
    include/linux/rmap.h:294:34: warning: statement with no effect [-Wunuse=
d-value]

---------------------------------------------------------------------------=
-----
nommu_k210_sdcard_defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 1 warn=
ing, 0 section mismatches

Warnings:
    include/linux/rmap.h:294:34: warning: statement with no effect [-Wunuse=
d-value]

---------------------------------------------------------------------------=
-----
nsimosci_hs_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
nsimosci_hs_smp_defconfig (arc, gcc-8) =E2=80=94 FAIL, 8 errors, 0 warnings=
, 0 section mismatches

Errors:
    stackdepot.c:(.text+0x4): undefined reference to `__irqentry_text_start=
'
    arc-elf32-ld: stackdepot.c:(.text+0x4): undefined reference to `__irqen=
try_text_start'
    arc-elf32-ld: stackdepot.c:(.text+0x24): undefined reference to `__irqe=
ntry_text_end'
    arc-elf32-ld: stackdepot.c:(.text+0x24): undefined reference to `__irqe=
ntry_text_end'
    arc-elf32-ld: stackdepot.c:(.text+0x30): undefined reference to `__soft=
irqentry_text_start'
    arc-elf32-ld: stackdepot.c:(.text+0x30): undefined reference to `__soft=
irqentry_text_start'
    arc-elf32-ld: stackdepot.c:(.text+0x38): undefined reference to `__soft=
irqentry_text_end'
    arc-elf32-ld: stackdepot.c:(.text+0x38): undefined reference to `__soft=
irqentry_text_end'

---------------------------------------------------------------------------=
-----
omap1_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

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
rs90_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
rt305x_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
rv32_defconfig (riscv, gcc-8) =E2=80=94 FAIL, 24 errors, 15 warnings, 0 sec=
tion mismatches

Errors:
    arch/riscv/include/asm/pgtable.h:520:9: error: implicit declaration of =
function =E2=80=98pfn_pmd=E2=80=99; did you mean =E2=80=98pfn_pgd=E2=80=99?=
 [-Werror=3Dimplicit-function-declaration]
    arch/riscv/include/asm/pgtable.h:520:9: error: incompatible types when =
returning type =E2=80=98int=E2=80=99 but =E2=80=98pmd_t=E2=80=99 {aka =E2=
=80=98struct <anonymous>=E2=80=99} was expected
    arch/riscv/include/asm/pgtable.h:520:9: error: implicit declaration of =
function =E2=80=98pfn_pmd=E2=80=99; did you mean =E2=80=98pfn_pgd=E2=80=99?=
 [-Werror=3Dimplicit-function-declaration]
    arch/riscv/include/asm/pgtable.h:520:9: error: incompatible types when =
returning type =E2=80=98int=E2=80=99 but =E2=80=98pmd_t=E2=80=99 {aka =E2=
=80=98struct <anonymous>=E2=80=99} was expected
    arch/riscv/include/asm/pgtable.h:520:9: error: implicit declaration of =
function =E2=80=98pfn_pmd=E2=80=99; did you mean =E2=80=98pfn_pgd=E2=80=99?=
 [-Werror=3Dimplicit-function-declaration]
    arch/riscv/include/asm/pgtable.h:520:9: error: incompatible types when =
returning type =E2=80=98int=E2=80=99 but =E2=80=98pmd_t=E2=80=99 {aka =E2=
=80=98struct <anonymous>=E2=80=99} was expected
    arch/riscv/include/asm/pgtable.h:520:9: error: implicit declaration of =
function =E2=80=98pfn_pmd=E2=80=99; did you mean =E2=80=98pfn_pgd=E2=80=99?=
 [-Werror=3Dimplicit-function-declaration]
    arch/riscv/include/asm/pgtable.h:520:9: error: incompatible types when =
returning type =E2=80=98int=E2=80=99 but =E2=80=98pmd_t=E2=80=99 {aka =E2=
=80=98struct <anonymous>=E2=80=99} was expected
    arch/riscv/include/asm/pgtable.h:520:9: error: implicit declaration of =
function =E2=80=98pfn_pmd=E2=80=99; did you mean =E2=80=98pfn_pgd=E2=80=99?=
 [-Werror=3Dimplicit-function-declaration]
    arch/riscv/include/asm/pgtable.h:520:9: error: incompatible types when =
returning type =E2=80=98int=E2=80=99 but =E2=80=98pmd_t=E2=80=99 {aka =E2=
=80=98struct <anonymous>=E2=80=99} was expected
    arch/riscv/include/asm/pgtable.h:520:9: error: implicit declaration of =
function =E2=80=98pfn_pmd=E2=80=99; did you mean =E2=80=98pfn_pgd=E2=80=99?=
 [-Werror=3Dimplicit-function-declaration]
    arch/riscv/include/asm/pgtable.h:520:9: error: incompatible types when =
returning type =E2=80=98int=E2=80=99 but =E2=80=98pmd_t=E2=80=99 {aka =E2=
=80=98struct <anonymous>=E2=80=99} was expected
    arch/riscv/include/asm/pgtable.h:520:9: error: implicit declaration of =
function =E2=80=98pfn_pmd=E2=80=99; did you mean =E2=80=98pfn_pgd=E2=80=99?=
 [-Werror=3Dimplicit-function-declaration]
    arch/riscv/include/asm/pgtable.h:520:9: error: incompatible types when =
returning type =E2=80=98int=E2=80=99 but =E2=80=98pmd_t=E2=80=99 {aka =E2=
=80=98struct <anonymous>=E2=80=99} was expected
    arch/riscv/include/asm/pgtable.h:520:9: error: implicit declaration of =
function =E2=80=98pfn_pmd=E2=80=99; did you mean =E2=80=98pfn_pgd=E2=80=99?=
 [-Werror=3Dimplicit-function-declaration]
    arch/riscv/include/asm/pgtable.h:520:9: error: incompatible types when =
returning type =E2=80=98int=E2=80=99 but =E2=80=98pmd_t=E2=80=99 {aka =E2=
=80=98struct <anonymous>=E2=80=99} was expected
    arch/riscv/include/asm/pgtable.h:520:9: error: implicit declaration of =
function =E2=80=98pfn_pmd=E2=80=99; did you mean =E2=80=98pfn_pgd=E2=80=99?=
 [-Werror=3Dimplicit-function-declaration]
    arch/riscv/include/asm/pgtable.h:520:9: error: incompatible types when =
returning type =E2=80=98int=E2=80=99 but =E2=80=98pmd_t=E2=80=99 {aka =E2=
=80=98struct <anonymous>=E2=80=99} was expected
    arch/riscv/include/asm/pgtable.h:520:9: error: implicit declaration of =
function =E2=80=98pfn_pmd=E2=80=99; did you mean =E2=80=98pfn_pgd=E2=80=99?=
 [-Werror=3Dimplicit-function-declaration]
    arch/riscv/include/asm/pgtable.h:520:9: error: incompatible types when =
returning type =E2=80=98int=E2=80=99 but =E2=80=98pmd_t=E2=80=99 {aka =E2=
=80=98struct <anonymous>=E2=80=99} was expected
    arch/riscv/include/asm/pgtable.h:520:9: error: implicit declaration of =
function =E2=80=98pfn_pmd=E2=80=99; did you mean =E2=80=98pfn_pgd=E2=80=99?=
 [-Werror=3Dimplicit-function-declaration]
    arch/riscv/include/asm/pgtable.h:520:9: error: incompatible types when =
returning type =E2=80=98int=E2=80=99 but =E2=80=98pmd_t=E2=80=99 {aka =E2=
=80=98struct <anonymous>=E2=80=99} was expected
    arch/riscv/include/asm/pgtable.h:520:9: error: implicit declaration of =
function =E2=80=98pfn_pmd=E2=80=99; did you mean =E2=80=98pfn_pgd=E2=80=99?=
 [-Werror=3Dimplicit-function-declaration]
    arch/riscv/include/asm/pgtable.h:520:9: error: incompatible types when =
returning type =E2=80=98int=E2=80=99 but =E2=80=98pmd_t=E2=80=99 {aka =E2=
=80=98struct <anonymous>=E2=80=99} was expected

Warnings:
    <stdin>:834:2: warning: #warning syscall fstat64 not implemented [-Wcpp=
]
    <stdin>:1131:2: warning: #warning syscall fstatat64 not implemented [-W=
cpp]
    <stdin>:1515:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    cc1: some warnings being treated as errors
    cc1: some warnings being treated as errors
    cc1: some warnings being treated as errors
    cc1: some warnings being treated as errors
    cc1: some warnings being treated as errors
    cc1: some warnings being treated as errors
    cc1: some warnings being treated as errors
    cc1: some warnings being treated as errors
    cc1: some warnings being treated as errors
    cc1: some warnings being treated as errors
    cc1: some warnings being treated as errors
    cc1: some warnings being treated as errors

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
shmobile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

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
stm32_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    include/linux/rmap.h:294:34: warning: statement with no effect [-Wunuse=
d-value]

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
tinyconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
tinyconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

---------------------------------------------------------------------------=
-----
tinyconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mis=
matches

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
vf610m4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    include/linux/rmap.h:294:34: warning: statement with no effect [-Wunuse=
d-value]

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
x86_64_defconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
x86_64_defconfig (x86_64, clang-12) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches

---------------------------------------------------------------------------=
-----
x86_64_defconfig (x86_64, clang-10) =E2=80=94 PASS, 0 errors, 2 warnings, 0=
 section mismatches

Warnings:
    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: eb_re=
locate_parse_slow()+0x427: stack state mismatch: cfa1=3D4+120 cfa2=3D-1+0
    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: eb_co=
py_relocations()+0x1d5: stack state mismatch: cfa1=3D4+104 cfa2=3D-1+0

---------------------------------------------------------------------------=
-----
x86_64_defconfig+kselftest (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warn=
ings, 0 section mismatches

---------------------------------------------------------------------------=
-----
x86_64_defconfig+x86-chromebook (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0=
 warnings, 0 section mismatches

---------------------------------------------------------------------------=
-----
x86_64_defconfig+x86-chromebook+kselftest (x86_64, gcc-8) =E2=80=94 PASS, 0=
 errors, 0 warnings, 0 section mismatches

---------------------------------------------------------------------------=
-----
x86_64_defconfig+x86_kvm_guest (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 =
warnings, 0 section mismatches

---------------------------------------------------------------------------=
-----
xcep_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

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
clang-built-linux/60dd8784.1c69fb81.903c7.c5eb%40mx.google.com.
