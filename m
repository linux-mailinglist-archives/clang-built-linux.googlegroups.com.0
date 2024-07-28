Return-Path: <clang-built-linux+bncBD63HSEZTUIBB47WTG2QMGQEXJG347Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id A011993E8C0
	for <lists+clang-built-linux@lfdr.de>; Sun, 28 Jul 2024 19:10:13 +0200 (CEST)
Received: by mail-qt1-x83a.google.com with SMTP id d75a77b69052e-44fe49fa389sf36352911cf.1
        for <lists+clang-built-linux@lfdr.de>; Sun, 28 Jul 2024 10:10:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1722186612; cv=pass;
        d=google.com; s=arc-20160816;
        b=FvJzzVvt4lhlLWOIadPH8suqEVYytQncRP5id8JnMcoV/PKbLpM6OwdVLqqoad4l+0
         qtfR7acBKrLXF2eIwflVviF0p4p82kXYDlX6zIyUoyD7C2Vc2hAWysrocS8z+qnNfbAJ
         ExGPNJvx+wH1aHut5TyVGGxrk/dK1NbrTe7xxdEUnpUAe0F07HK5j/Spcw0tIXOpQKKG
         WCKrilKMNUbwGHPms9Z7v1hNIhXgCzfTDyBLg+StzPe6czCueqNpTYf50oVONa+Qw9ne
         HBB3q8G8v8voAq7uZ4xw7TeRu8iAXxqhk7dyMIq3J6saYnY0xd16fQRqeMg2T5kTw5dm
         FJ/A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=pgVJ+pAkUadtlTZBCLsuV+yY8W/Jf1FZBNqc+QjUeB8=;
        fh=FaJLrLFRKdpNxF3HmzhyYjVL1mmXkQVQX11Nxqo92T4=;
        b=pi9v7l9OaJTnk/D3VTejdmnlC7uGLqoFh97/cuwuLFrPEboAayKf2ANQD2GxKFdT3N
         +wF6VJk9oovz+Q5xFJRgYW+yh/E31rf/h0FlCI/08Zm70aQd3IiEDLt0ZR7X/kVyLAyI
         xqUECqVOP4GNtiRXdOocHaCbVy3LZ7sjFgjV41UeloOhAy0AODKYQ7evlVgPPF9GQAlK
         rvF9NBDwfTdS59IEJdUyC8X1vVOArqP73bLJl1zTLvaVdUj2GsYsLvyhp6x1FFv8VF75
         kmbfncYids7K8ph8SXbsDwXpMc5NUqusrd1b8OmWFPYf7/EOze3+zhRm4VlI/ayxEd6V
         JObA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=NHBCCx5R;
       spf=pass (google.com: domain of ardb@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1722186612; x=1722791412; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pgVJ+pAkUadtlTZBCLsuV+yY8W/Jf1FZBNqc+QjUeB8=;
        b=mT7FJCkOCYhIE4d/QF2uT1FDzpGKegXH1QZqEpg1KTeV0R7jDtYXtNUS4Y8IuEz6uJ
         QOfwrNh4e3EKIwLXjjHAmo9daXDoGtSx6xKmBE1VMcub8A/G6oCQJvUd5rHXsvV5i+1+
         vu1mitf4uMDrXvsLqj/80/z/A+3e1dfANNFAi6cMOgwyyydSBjPmRno6+CCYsH084R17
         ZCsCjOF33zQUVioMhSItwCOnjrIf7FeJwsbyG8ICM5a9yboEuTq6qReWnBOQwX3oAo9D
         fgjiJyDSvQNCG8xxaBUJzlZFLdtBLarHV9S8zAJEWNyryPhqFkAvruKP9EFXGrQC/LfE
         U1IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722186612; x=1722791412;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pgVJ+pAkUadtlTZBCLsuV+yY8W/Jf1FZBNqc+QjUeB8=;
        b=T8/m94JFsjFhCdndrA9pufqFGR94SrABg7Gto4j40TJykxCf8gMjWWVrNatGjOtv/x
         szztl2POy+1MoqaJz96ciH3GQr7IuvLqi8zeIz3imIF2EJjh/gajVez2H/t7/FN6mWDm
         Q/hk6F0OJNdknf5q0SV1At+JoLPLK+qjg9fegMLYTA1xWW37Ka9Q/lkMBxYJCH1bp9gG
         5qljmW9b3/Zw7eetWXablE2nr+eTTEyp808BnPvdsmlCPlZX36C+S22OG/3435+rmB+n
         HO/rXn1Oa70jw/fMv22WXDswOp8LugOo2OQmKZGg0G1E/cDjChGLHOUioIzuiLoHkdC+
         ES/A==
Sender: clang-built-linux@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCWqDiWP0YA7vtNLbKaYKZ9h/OOTHTqnn0VKQt4SqiftpZLGmKD8ptzegHocBtCYkdoqz52xdC/9eIPSjiDr9b0GyCqgAxMoYYnUqjGPapeg
X-Gm-Message-State: AOJu0YzwIOLnzfp7WoXKnl4uNNjEiBqmManWnBZa1zrn1UyeP+ZUPcgv
	eul0XHl8rf7kdvDzCMAz4m2Qm89qvtW54xSEOGU67r8GPHcAyNvE
X-Google-Smtp-Source: AGHT+IEiX7lGSBPLVzQgg1Puu7AZiDNGW2oHnDeMs9Ujl7xZ0GV5kix7/+ysULpXQEXnUEmtbE5A0w==
X-Received: by 2002:ac8:5d0e:0:b0:447:f9b2:6c48 with SMTP id d75a77b69052e-45004f3efe2mr79964651cf.53.1722186612088;
        Sun, 28 Jul 2024 10:10:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:622a:1a13:b0:447:ca9a:34f2 with SMTP id
 d75a77b69052e-44fe31cc97cls71220431cf.2.-pod-prod-05-us; Sun, 28 Jul 2024
 10:10:11 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWA6Dg4BUgMeGAmYAc1FG+KcOQ9AdqSQznMMjcgyMWI2WA4Eg2ScRvyRQTcLC49HkVTZCuMn98gt82aECkYXNryMVInln+QUzKJM1i7v8sUKaYs
X-Received: by 2002:a05:6122:4128:b0:4f5:cd00:e492 with SMTP id 71dfb90a1353d-4f6e691d5efmr5433832e0c.7.1722186610931;
        Sun, 28 Jul 2024 10:10:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1722186610; cv=none;
        d=google.com; s=arc-20160816;
        b=xJ/QNjOKLDHPds3LsexkubLO60NgHo4iNv6Lw8TojFJJbn/fKdaN8zhIavZw/xkMCy
         MuwQw7g3h6Dr3jLCL1nVi97L46Egyr3veWT0pXm7OAaYRMHxBGoP2VYJoSE5YNBaplIf
         tZT2K9fI1hNr4MXS+NC3YLM+tzlgGQnVINO0IOdWx8dtKd763Bk6pezdzBZp0OLZHcvV
         srBCRqAoTNkATd5GPsU5ojE59WbThNY7/datSyt/5szgdIlKDkLH6TYTByoZJ+JYtb6y
         spRPcB1/55FMdX1KlpbrL/DQAalbQkFoEKhjh9LErDte3Ji1kRemM75yFZjBjSgofKCs
         AseA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=DfDWsHBgBx2A38fXu8wVcWgT2gIwfOIBZCcRWTl/UNE=;
        fh=f5uAOtvEx3WXLevHBmKyXJtlfqBe3pusQzPLtY4Em34=;
        b=bvfnxhXOJVO+EvA/PUS40lK6PRuQse88zNasbHal+IRvi21fa+QDOz0VOsuMSRffKK
         +SHBxFBWEMoju1Z+rADuYBNnvLV3JAXmJeQhzY2ZqebRKZhkHeP1JvmvMsgFtFXOKvw5
         W6wIbIKspgiY8WRkQP4XlfTyDp8PUYqJMjlL6obW60rm9UOUWPOh18x2kVrijslXy9AV
         mfRcvle23/mHvrXslPicZEdP0rs+6Gmct3KVunC8G6jnP/z49EARGSmQpsvVaY48a8MN
         bvOyOvGryNGK0UJSnvnPjcC2mk5VQOiWBqjOh29LTvkN4V3rEC74LPDVs1K4eBYcpDaB
         RIyA==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=NHBCCx5R;
       spf=pass (google.com: domain of ardb@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by gmr-mx.google.com with ESMTPS id 71dfb90a1353d-4f6c867ec92si337312e0c.1.2024.07.28.10.10.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Jul 2024 10:10:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 52B84611F1
	for <clang-built-linux@googlegroups.com>; Sun, 28 Jul 2024 17:10:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C88C1C4AF0E
	for <clang-built-linux@googlegroups.com>; Sun, 28 Jul 2024 17:10:09 +0000 (UTC)
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-52f01613acbso3140703e87.1
        for <clang-built-linux@googlegroups.com>; Sun, 28 Jul 2024 10:10:09 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXRc+tHxVOhsKB/m7DJeiY9PNSnpxdeUMN45AQdkGcAwyi9azJqhBimqr/c53IGxENKWvCoQ3D5tTkNVnjJHOEh5sndiH5RZONpUrg15R8ZJ2Te
X-Received: by 2002:a05:6512:250d:b0:52f:cc9e:4480 with SMTP id
 2adb3069b0e04-5309b674224mr1693146e87.0.1722186608115; Sun, 28 Jul 2024
 10:10:08 -0700 (PDT)
MIME-Version: 1.0
References: <92a00580828a1bdf96e7e36545f6d229809af04f.1722154575.git.calvin@wbinvd.org>
In-Reply-To: <92a00580828a1bdf96e7e36545f6d229809af04f.1722154575.git.calvin@wbinvd.org>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Sun, 28 Jul 2024 19:09:56 +0200
X-Gmail-Original-Message-ID: <CAMj1kXFT3RFW7oPg5pc=bXCqBrzx9amAyR1dZpiqaLKu-5GXpQ@mail.gmail.com>
Message-ID: <CAMj1kXFT3RFW7oPg5pc=bXCqBrzx9amAyR1dZpiqaLKu-5GXpQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: vfp: Use asm volatile in fmrx/fmxr macros
To: Calvin Owens <calvin@wbinvd.org>, Arnd Bergmann <arnd@arndb.de>, 
	Nathan Chancellor <nathan@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	zhuqiuer <zhuqiuer1@huawei.com>
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	Russell King <linux@armlinux.org.uk>, Linus Walleij <linus.walleij@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=NHBCCx5R;       spf=pass
 (google.com: domain of ardb@kernel.org designates 2604:1380:4641:c500::1 as
 permitted sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

(cc Arnd, Nathan, zhuqiuer)

On Sun, 28 Jul 2024 at 10:21, Calvin Owens <calvin@wbinvd.org> wrote:
>
> Floating point instructions in userspace can crash some arm kernels
> built with clang/LLD 17.0.6:
>
>     BUG: unsupported FP instruction in kernel mode
>     FPEXC == 0xc0000780
>     Internal error: Oops - undefined instruction: 0 [#1] ARM
>     CPU: 0 PID: 196 Comm: vfp-reproducer Not tainted 6.10.0 #1
>     Hardware name: BCM2835
>     PC is at vfp_support_entry+0xc8/0x2cc
>     LR is at do_undefinstr+0xa8/0x250
>     pc : [<c0101d50>]    lr : [<c010a80c>]    psr: a0000013
>     sp : dc8d1f68  ip : 60000013  fp : bedea19c
>     r10: ec532b17  r9 : 00000010  r8 : 0044766c
>     r7 : c0000780  r6 : ec532b17  r5 : c1c13800  r4 : dc8d1fb0
>     r3 : c10072c4  r2 : c0101c88  r1 : ec532b17  r0 : 0044766c
>     Flags: NzCv  IRQs on  FIQs on  Mode SVC_32  ISA ARM  Segment none
>     Control: 00c5387d  Table: 0251c008  DAC: 00000051
>     Register r0 information: non-paged memory
>     Register r1 information: vmalloc memory
>     Register r2 information: non-slab/vmalloc memory
>     Register r3 information: non-slab/vmalloc memory
>     Register r4 information: 2-page vmalloc region
>     Register r5 information: slab kmalloc-cg-2k
>     Register r6 information: vmalloc memory
>     Register r7 information: non-slab/vmalloc memory
>     Register r8 information: non-paged memory
>     Register r9 information: zero-size pointer
>     Register r10 information: vmalloc memory
>     Register r11 information: non-paged memory
>     Register r12 information: non-paged memory
>     Process vfp-reproducer (pid: 196, stack limit = 0x61aaaf8b)
>     Stack: (0xdc8d1f68 to 0xdc8d2000)
>     1f60:                   0000081f b6f69300 0000000f c10073f4 c10072c4 dc8d1fb0
>     1f80: ec532b17 0c532b17 0044766c b6f9ccd8 00000000 c010a80c 00447670 60000010
>     1fa0: ffffffff c1c13800 00c5387d c0100f10 b6f68af8 00448fc0 00000000 bedea188
>     1fc0: bedea314 00000001 00448ebc b6f9d000 00447608 b6f9ccd8 00000000 bedea19c
>     1fe0: bede9198 bedea188 b6e1061c 0044766c 60000010 ffffffff 00000000 00000000
>     Call trace:
>     [<c0101d50>] (vfp_support_entry) from [<c010a80c>] (do_undefinstr+0xa8/0x250)
>     [<c010a80c>] (do_undefinstr) from [<c0100f10>] (__und_usr+0x70/0x80)
>     Exception stack(0xdc8d1fb0 to 0xdc8d1ff8)
>     1fa0:                                     b6f68af8 00448fc0 00000000 bedea188
>     1fc0: bedea314 00000001 00448ebc b6f9d000 00447608 b6f9ccd8 00000000 bedea19c
>     1fe0: bede9198 bedea188 b6e1061c 0044766c 60000010 ffffffff
>     Code: 0a000061 e3877202 e594003c e3a09010 (eef16a10)
>     ---[ end trace 0000000000000000 ]---
>     Kernel panic - not syncing: Fatal exception in interrupt
>     ---[ end Kernel panic - not syncing: Fatal exception in interrupt ]---
>
> This is a minimal userspace reproducer on a Raspberry Pi Zero W:
>
>     #include <stdio.h>
>     #include <math.h>
>
>     int main(void)
>     {
>             double v = 1.0;
>             printf("%f\n", NAN + *(volatile double *)&v);
>             return 0;
>     }
>
> Another way to consistently trigger the oops is:
>
>     calvin@raspberry-pi-zero-w ~$ python -c "import json"
>
> The bug reproduces only when the kernel is built with DYNAMIC_DEBUG=n,
> because the pr_debug() calls act as barriers even when not activated.
>
> This is the output from the same kernel source built with the same
> compiler and DYNAMIC_DEBUG=y, where the userspace reproducer works as
> expected:
>
>     VFP: bounce: trigger ec532b17 fpexc c0000780
>     VFP: emulate: INST=0xee377b06 SCR=0x00000000
>     VFP: bounce: trigger eef1fa10 fpexc c0000780
>     VFP: emulate: INST=0xeeb40b40 SCR=0x00000000
>     VFP: raising exceptions 30000000
>
>     calvin@raspberry-pi-zero-w ~$ ./vfp-reproducer
>     nan
>
> Crudely grepping for vmsr/vmrs instructions in the otherwise nearly
> idential text for vfp_support_entry() makes the problem obvious:
>
>     vmlinux.llvm.good [0xc0101cb8] <+48>:  vmrs   r7, fpexc
>     vmlinux.llvm.good [0xc0101cd8] <+80>:  vmsr   fpexc, r0
>     vmlinux.llvm.good [0xc0101d20] <+152>: vmsr   fpexc, r7
>     vmlinux.llvm.good [0xc0101d38] <+176>: vmrs   r4, fpexc
>     vmlinux.llvm.good [0xc0101d6c] <+228>: vmrs   r0, fpscr
>     vmlinux.llvm.good [0xc0101dc4] <+316>: vmsr   fpexc, r0
>     vmlinux.llvm.good [0xc0101dc8] <+320>: vmrs   r0, fpsid
>     vmlinux.llvm.good [0xc0101dcc] <+324>: vmrs   r6, fpscr
>     vmlinux.llvm.good [0xc0101e10] <+392>: vmrs   r10, fpinst
>     vmlinux.llvm.good [0xc0101eb8] <+560>: vmrs   r10, fpinst2
>
>     vmlinux.llvm.bad  [0xc0101cb8] <+48>:  vmrs   r7, fpexc
>     vmlinux.llvm.bad  [0xc0101cd8] <+80>:  vmsr   fpexc, r0
>     vmlinux.llvm.bad  [0xc0101d20] <+152>: vmsr   fpexc, r7
>     vmlinux.llvm.bad  [0xc0101d30] <+168>: vmrs   r0, fpscr
>     vmlinux.llvm.bad  [0xc0101d50] <+200>: vmrs   r6, fpscr  <== BOOM!
>     vmlinux.llvm.bad  [0xc0101d6c] <+228>: vmsr   fpexc, r0
>     vmlinux.llvm.bad  [0xc0101d70] <+232>: vmrs   r0, fpsid
>     vmlinux.llvm.bad  [0xc0101da4] <+284>: vmrs   r10, fpinst
>     vmlinux.llvm.bad  [0xc0101df8] <+368>: vmrs   r4, fpexc
>     vmlinux.llvm.bad  [0xc0101e5c] <+468>: vmrs   r10, fpinst2
>
> I think LLVM's reordering is valid as the code is currently written: the
> compiler doesn't know the instructions have side effects in hardware.
>
> Fix by using "asm volatile" in fmxr() and fmrx(), so they cannot be
> reordered with respect to each other. The original compiler now produces
> working kernels on my hardware with DYNAMIC_DEBUG=n.
>
> This is the relevant piece of the diff of the vfp_support_entry() text,
> from the original oopsing kernel to a working kernel with this patch:
>
>          vmrs r0, fpscr
>          tst r0, #4096
>          bne 0xc0101d48
>          tst r0, #458752
>          beq 0xc0101ecc
>          orr r7, r7, #536870912
>          ldr r0, [r4, #0x3c]
>          mov r9, #16
>         -vmrs r6, fpscr
>          orr r9, r9, #251658240
>          add r0, r0, #4
>          str r0, [r4, #0x3c]
>          mvn r0, #159
>          sub r0, r0, #-1207959552
>          and r0, r7, r0
>          vmsr fpexc, r0
>          vmrs r0, fpsid
>         +vmrs r6, fpscr
>          and r0, r0, #983040
>          cmp r0, #65536
>          bne 0xc0101d88
>
> Fixes: 4708fb041346 ("ARM: vfp: Reimplement VFP exception entry in C code")
> Signed-off-by: Calvin Owens <calvin@wbinvd.org>
> ---
>  arch/arm/vfp/vfpinstr.h | 48 ++++++++++++++++++++++-------------------
>  1 file changed, 26 insertions(+), 22 deletions(-)
>

Thanks for the patch, and for the excellent analysis.

Note that this fix has been proposed in the past, as well as another
one addressing the same issue, but we've been incredibly sloppy
getting it merged.

https://lore.kernel.org/linux-arm-kernel/20240410024126.21589-2-zhuqiuer1@huawei.com/
https://lore.kernel.org/linux-arm-kernel/20240318093004.117153-2-ardb+git@google.com/

What both of us appear to have missed is that there are two versions
of these routines, which should either be dropped (as they are
obsolete now that the minimum binutils version is 2.25) or fixed up as
well, as you do below.

Anyone have any thoughts on using a memory clobber as opposed to
volatile? I think volatile means that the access cannot be elided, but
it is unclear to me whether that implies any ordering. A 'memory'
clobber implies that globally visible state is updated, which seems
like a stronger guarantee to me.

In any case, let's work together to get /some/ version of this fix merged asap.



> diff --git a/arch/arm/vfp/vfpinstr.h b/arch/arm/vfp/vfpinstr.h
> index 3c7938fd40aa..32090b0fb250 100644
> --- a/arch/arm/vfp/vfpinstr.h
> +++ b/arch/arm/vfp/vfpinstr.h
> @@ -64,33 +64,37 @@
>
>  #ifdef CONFIG_AS_VFP_VMRS_FPINST
>
> -#define fmrx(_vfp_) ({                 \
> -       u32 __v;                        \
> -       asm(".fpu       vfpv2\n"        \
> -           "vmrs       %0, " #_vfp_    \
> -           : "=r" (__v) : : "cc");     \
> -       __v;                            \
> - })
> -
> -#define fmxr(_vfp_,_var_)              \
> -       asm(".fpu       vfpv2\n"        \
> -           "vmsr       " #_vfp_ ", %0" \
> -          : : "r" (_var_) : "cc")
> +#define fmrx(_vfp_) ({                         \
> +       u32 __v;                                \
> +       asm volatile (".fpu     vfpv2\n"        \
> +                     "vmrs     %0, " #_vfp_    \
> +                    : "=r" (__v) : : "cc");    \
> +       __v;                                    \
> +})
> +
> +#define fmxr(_vfp_, _var_) ({                  \
> +       asm volatile (".fpu     vfpv2\n"        \
> +                     "vmsr     " #_vfp_ ", %0" \
> +                    : : "r" (_var_) : "cc");   \
> +})
>
>  #else
>
>  #define vfpreg(_vfp_) #_vfp_
>
> -#define fmrx(_vfp_) ({                 \
> -       u32 __v;                        \
> -       asm("mrc p10, 7, %0, " vfpreg(_vfp_) ", cr0, 0 @ fmrx   %0, " #_vfp_    \
> -           : "=r" (__v) : : "cc");     \
> -       __v;                            \
> - })
> -
> -#define fmxr(_vfp_,_var_)              \
> -       asm("mcr p10, 7, %0, " vfpreg(_vfp_) ", cr0, 0 @ fmxr   " #_vfp_ ", %0" \
> -          : : "r" (_var_) : "cc")
> +#define fmrx(_vfp_) ({                                         \
> +       u32 __v;                                                \
> +       asm volatile ("mrc p10, 7, %0, " vfpreg(_vfp_) ","      \
> +                     "cr0, 0 @ fmrx    %0, " #_vfp_            \
> +                    : "=r" (__v) : : "cc");                    \
> +       __v;                                                    \
> +})
> +
> +#define fmxr(_vfp_, _var_) ({                                  \
> +       asm volatile ("mcr p10, 7, %0, " vfpreg(_vfp_) ","      \
> +                     "cr0, 0 @ fmxr    " #_vfp_ ", %0"         \
> +                    : : "r" (_var_) : "cc");                   \
> +})
>
>  #endif
>
> --
> 2.39.2
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXFT3RFW7oPg5pc%3DbXCqBrzx9amAyR1dZpiqaLKu-5GXpQ%40mail.gmail.com.
