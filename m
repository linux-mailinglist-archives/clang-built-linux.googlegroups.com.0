Return-Path: <clang-built-linux+bncBCT6537ZTEKRBDHCSORQMGQEM7A3YFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oa1-x3f.google.com (mail-oa1-x3f.google.com [IPv6:2001:4860:4864:20::3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BC80706C86
	for <lists+clang-built-linux@lfdr.de>; Wed, 17 May 2023 17:21:49 +0200 (CEST)
Received: by mail-oa1-x3f.google.com with SMTP id 586e51a60fabf-199c7a99a51sf239035fac.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 May 2023 08:21:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1684336908; cv=pass;
        d=google.com; s=arc-20160816;
        b=iGRdGgwYuWe1G1QeGmOpGr/SpQGkpaZbSr86oDiHjN5W7ST+GpRrnZliZJCbq5dFb1
         cVM+rCEr/ynm1uG9n2Pj2kqgkQA1TcPE10NERqdG0Rq/zXma9JbVUOGBcmWQr8OaGkJi
         uZz4++NdLDQxTtcyd/J2WBu/yaYbIBtdzOer+/PiymFlIjH3pKyPoBbE5c/a7f9IXgWG
         z+moVIiF3BJDnoG3UI2dgxLoid5vae1o7EzE5ES2ac7zMDxNeBpxSwNNtBILcN0JBPnF
         X5ILh5EwHsKUdSKMZOhjFMDZovcWwJlWz+0z3iPoITg/4d1KM/SY/oJRjnm9KfUrWnjY
         BBtw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature;
        bh=Fxb1HcFnoozwA+LRD7rWo/Lb2QWZEvWMWLSQz14QvNk=;
        b=Y3fn9zn8iOkYRra/ksest+GvVVwYfs8LIPq3I9KuXj/KFOkM5T5B/G7E75y/6Lqh2x
         NrZjSY7v9/ToXAzDCDcV0E3wu5M236bLThBZz3UfDopPe70SWZ51+jDy0tv/D1lJ0yvc
         haKh8zMyzJed6RhAWsVGb55TX/b6nBeh6b0HX+S0hRSEvd4NYrK5re7LkJ2RrdAmKrIq
         tgxzyfqdHsZvVoYMgGwu2N47/4Ddp7rVtd/E8Um8cbai+yfemP0fb4gFRe1fGN6oB68g
         mjLp+Eu3sydWZFYkwY5FgOSmoQIE6FYu6R1sYeQoKJpZ9FaArj2OPbZ+wJYdmMzt2IPs
         fbjA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=YexNOPiS;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2607:f8b0:4864:20::e35 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1684336908; x=1686928908;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:cc:to:subject:message-id:date:from:mime-version
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=Fxb1HcFnoozwA+LRD7rWo/Lb2QWZEvWMWLSQz14QvNk=;
        b=W8EhimoMboLjO2ij82YT/1pVwBAaw2cA05gVu1Y6g8WQYUlIDOUU7BM5P2hjdZwwNj
         bi/rWZJfGpzOQDTNDETrggTlsCZNaiSNbACXyT4hMdkWg2wZ1KQCo8vxBAa24WNPDwmg
         kTntXIxfzTBzURe+W2JOGpBpDjfcR0SAuT2QjwtFfpYpwolqrQjDY/p7kyjPgMxzACY8
         4bBLI90pfZQ8oFz5f2AlPL80ADuEjH61F9aR+PKZM8+cWqNvDq+Nhs5PuPOLmqlxHJZH
         yIlLHe8Ic16+x/BF5RnLVHj1y0HT2j5rPaYIipKc3z4xYpWDVj+prnTKGt1iT5SNXRUz
         5LSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684336908; x=1686928908;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:mime-version:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=Fxb1HcFnoozwA+LRD7rWo/Lb2QWZEvWMWLSQz14QvNk=;
        b=eSpce5eYFTnGyTwfW38L12c8OEboIgu5VWVflmkRSw/LMosOISDFaeAD0zjZzXCsFU
         M5n86nGTiIxWmwATHp+Fy0ZmfAoXstSE2DaWHWJEgRRndZe2Y0ehJfWb0s/ZOJhds9+G
         C6wdjhX8+KO/Dira/CD1ZjsJEmF3vVo4Ch45HHUR6+KLT0Y/sZam5Ro1FBuSirBK66b5
         9GFUM0Y1N2o/lh39jkCxEfESR991Oyzr5eM41hpQDg+eVeCK4aMmFZJZHqLQ9SJ+24gH
         9e5BQR150cPAhp9LH2UylQuzvePl+9g6X9/El2qc29mHkaqXV4Mz7El9j5DCUmLFWytw
         hI7Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AC+VfDynJiBDk6GeMfpDruI4Lg9GufbLYmsYI+Hp056N3O8tsrJkIeBM
	iZl2oFKTUXQ6oh5BUlq1jjI=
X-Google-Smtp-Source: ACHHUZ5DdA43yanYDjsM1bSorqhAH+yiZR8GL+xzscAXxJFKE7VCDriofk/BMkbJpAHDjwwq0NKZMg==
X-Received: by 2002:a05:6870:7718:b0:19a:f8e:f3e0 with SMTP id dw24-20020a056870771800b0019a0f8ef3e0mr1049303oab.9.1684336908109;
        Wed, 17 May 2023 08:21:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6870:822b:b0:17a:fd94:4676 with SMTP id
 n43-20020a056870822b00b0017afd944676ls2426674oae.1.-pod-prod-08-us; Wed, 17
 May 2023 08:21:47 -0700 (PDT)
X-Received: by 2002:a05:6830:1e8e:b0:6aa:fe15:7b38 with SMTP id n14-20020a0568301e8e00b006aafe157b38mr14733085otr.23.1684336907573;
        Wed, 17 May 2023 08:21:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1684336907; cv=none;
        d=google.com; s=arc-20160816;
        b=mZWC9RE78JNtffYkrea/PFPwF1ylOce6fQ9D4Mz4YTOLvcwcjnKIBtuX4ASXx7M14i
         3qR35reJXUxwFn+egZJQaj7jJ1zs/D55FMfIpkdhw33e1m0o0XDKkBSzFTrqm0BOYGH8
         ArzWsZB4hY966nlH8Lz3p+V54TJO8LYRZOFDlxX9oWv+G5PHBt/RUchbpEOQz/BDJSDl
         0sJj6S97ILfUDToU8M/C9eEAtaXaopl/IOpJeyXQ0dNJ7Y2iUJ7LHcwEpu6KsImNEzkA
         v62AUBWT6rARYzeLMclakEV8z5pc64EJNp6mE+drFAPEhEsg5f5grpHJvbwPC9MULe1U
         Sjjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=h2F0qp3GQzVUQvM8YH57toDxvVA2BRCfFsNcdNXrXtw=;
        b=zoa868aYqFnV+MjI2Mx/PmLlzhumAwtL9ECoOOOleyvFR1U0XVd6Pt2hFMCxLm9G2d
         2vzTvDvVxZ4g4NVjrWRz2TWvJX+fhRJ7QdmInKycjBoI7f6waYtNGcZIrdjtwl6HskmX
         eDF9iHi4/69olO7wHtlCwN3nBPaMPEEYnKW3WvIM58ulFbA2ipXMzJm4k4cYc2h3xAdw
         TCHQ8daJuvOMtFFX9mejFluL+nZQSWDDWOdcIBRcg4rsHAiDeZ4dPVPh7ZsuM7p8ldvt
         2QdptN5od2F/btPnZakBLC8sUliacWegkNHN0jjfIAp6kHNUxgzEh/vK97rpkJ3omLcw
         rXaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=YexNOPiS;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2607:f8b0:4864:20::e35 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-vs1-xe35.google.com (mail-vs1-xe35.google.com. [2607:f8b0:4864:20::e35])
        by gmr-mx.google.com with ESMTPS id bq20-20020a056830389400b006ac8e0f88b7si985098otb.2.2023.05.17.08.21.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 May 2023 08:21:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of naresh.kamboju@linaro.org designates 2607:f8b0:4864:20::e35 as permitted sender) client-ip=2607:f8b0:4864:20::e35;
Received: by mail-vs1-xe35.google.com with SMTP id ada2fe7eead31-43478543ad0so258953137.1
        for <clang-built-linux@googlegroups.com>; Wed, 17 May 2023 08:21:47 -0700 (PDT)
X-Received: by 2002:a67:f84f:0:b0:435:fed0:e3be with SMTP id
 b15-20020a67f84f000000b00435fed0e3bemr13775623vsp.22.1684336906733; Wed, 17
 May 2023 08:21:46 -0700 (PDT)
MIME-Version: 1.0
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Wed, 17 May 2023 20:51:35 +0530
Message-ID: <CA+G9fYvhPgoP57ip1cW5TaWJfkbkHA2SZqd5fFoTJ7rDGA138w@mail.gmail.com>
Subject: next: i386-boot: clang-nightly: failed - intermittently - BUG: unable
 to handle page fault for address: 000024c0
To: open list <linux-kernel@vger.kernel.org>, 
	Linux-Next Mailing List <linux-next@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, x86@vger.kernel.org, 
	lkft-triage@lists.linaro.org
Cc: Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Dan Carpenter <dan.carpenter@linaro.org>, Arnd Bergmann <arnd@arndb.de>, 
	Anders Roxell <anders.roxell@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: naresh.kamboju@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=YexNOPiS;       spf=pass
 (google.com: domain of naresh.kamboju@linaro.org designates
 2607:f8b0:4864:20::e35 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
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

Linux next-20230517 build with clang nightly for i386 boot fails intermittently.
  - i386: boot/clang-nightly-lkftconfig - failed

Please find detailed log here,

boot log:
=====
[    0.000000] Linux version 6.4.0-rc2-next-20230517 (tuxmake@tuxmake)
(Debian clang version 17.0.0
(++20230507093322+728b8a139804-1~exp1~20230507093335.652), Debian LLD
17.0.0) #1 SMP PREEMPT_DYNAMIC @1684291209
<6>[    0.000000] x86/fpu: x87 FPU will use FXSAVE
<6>[    0.000000] signal: max sigframe size: 1440
<6>[    0.000000] BIOS-provided physical RAM map:
<6>[    0.000000] BIOS-e820: [mem 0x0000000000000000-0x000000000009fbff] usable
<6>[    0.000000] BIOS-e820: [mem
0x000000000009fc00-0x000000000009ffff] reserved
<6>[    0.000000] BIOS-e820: [mem
0x00000000000f0000-0x00000000000fffff] reserved
<6>[    0.000000] BIOS-e820: [mem 0x0000000000100000-0x000000007ffdefff] usable
<6>[    0.000000] BIOS-e820: [mem
0x000000007ffdf000-0x000000007fffffff] reserved
<6>[    0.000000] BIOS-e820: [mem
0x00000000b0000000-0x00000000bfffffff] reserved
<6>[    0.000000] BIOS-e820: [mem
0x00000000fed1c000-0x00000000fed1ffff] reserved
<6>[    0.000000] BIOS-e820: [mem
0x00000000fffc0000-0x00000000ffffffff] reserved
<6>[    0.000000] BIOS-e820: [mem 0x0000000100000000-0x000000017fffffff] usable
<5>[    0.000000] random: crng init done
<5>[    0.000000] Notice: NX (Execute Disable) protection cannot be
enabled: non-PAE kernel!
<7>[    0.000000] e820: update [mem 0x00cfce20-0x00cfce2f] usable ==> usable
<7>[    0.000000] e820: update [mem 0x00cfce20-0x00cfce2f] usable ==> usable
<6>[    0.000000] extended physical RAM map:
<6>[    0.000000] reserve setup_data: [mem
0x0000000000000000-0x000000000009fbff] usable
<6>[    0.000000] reserve setup_data: [mem
0x000000000009fc00-0x000000000009ffff] reserved
<6>[    0.000000] reserve setup_data: [mem
0x00000000000f0000-0x00000000000fffff] reserved
<6>[    0.000000] reserve setup_data: [mem
0x0000000000100000-0x0000000000cfce1f] usable
<6>[    0.000000] reserve setup_data: [mem
0x0000000000cfce20-0x0000000000cfce2f] usable
<6>[    0.000000] reserve setup_data: [mem
0x0000000000cfce30-0x000000007ffdefff] usable
<6>[    0.000000] reserve setup_data: [mem
0x000000007ffdf000-0x000000007fffffff] reserved
<6>[    0.000000] reserve setup_data: [mem
0x00000000b0000000-0x00000000bfffffff] reserved
<6>[    0.000000] reserve setup_data: [mem
0x00000000fed1c000-0x00000000fed1ffff] reserved
<6>[    0.000000] reserve setup_data: [mem
0x00000000fffc0000-0x00000000ffffffff] reserved
<6>[    0.000000] reserve setup_data: [mem
0x0000000100000000-0x000000017fffffff] usable
<6>[    0.000000] SMBIOS 2.8 present.
<6>[    0.000000] DMI: QEMU Standard PC (Q35 + ICH9, 2009), BIOS
1.14.0-2 04/01/2014
<6>[    0.000000] tsc: Fast TSC calibration using PIT
<6>[    0.000000] tsc: Detected 3000.002 MHz processor
<7>[    0.009140] e820: update [mem 0x00000000-0x00000fff] usable ==> reserved
<7>[    0.009369] e820: remove [mem 0x000a0000-0x000fffff] usable
<6>[    0.009688] last_pfn = 0x7ffdf max_arch_pfn = 0x100000
<6>[    0.010313] x86/PAT: PAT not supported by the CPU.
<6>[    0.010476] x86/PAT: Configuration [0-7]: WB  WT  UC- UC  WB  WT  UC- UC
<6>[    0.028035] found SMP MP-table at [mem 0x000f5ce0-0x000f5cef]
<7>[    0.029050] initial memory mapped: [mem 0x00000000-0x18ffffff]
<6>[    0.032814] ACPI: Early table checksum verification disabled
<6>[    0.033316] ACPI: RSDP 0x00000000000F5B10 000014 (v00 BOCHS )
<6>[    0.033820] ACPI: RSDT 0x000000007FFE2319 000038 (v01 BOCHS
BXPC     00000001 BXPC 00000001)
<6>[    0.034477] ACPI: FACP 0x000000007FFE2109 0000F4 (v03 BOCHS
BXPC     00000001 BXPC 00000001)
<6>[    0.035093] ACPI: DSDT 0x000000007FFE0040 0020C9 (v01 BOCHS
BXPC     00000001 BXPC 00000001)
<6>[    0.035191] ACPI: FACS 0x000000007FFE0000 000040
<6>[    0.035258] ACPI: APIC 0x000000007FFE21FD 000080 (v01 BOCHS
BXPC     00000001 BXPC 00000001)
<6>[    0.035306] ACPI: HPET 0x000000007FFE227D 000038 (v01 BOCHS
BXPC     00000001 BXPC 00000001)
<6>[    0.035336] ACPI: MCFG 0x000000007FFE22B5 00003C (v01 BOCHS
BXPC     00000001 BXPC 00000001)
<6>[    0.035365] ACPI: WAET 0x000000007FFE22F1 000028 (v01 BOCHS
BXPC     00000001 BXPC 00000001)
<6>[    0.035470] ACPI: Reserving FACP table memory at [mem
0x7ffe2109-0x7ffe21fc]
<6>[    0.035522] ACPI: Reserving DSDT table memory at [mem
0x7ffe0040-0x7ffe2108]
<6>[    0.035533] ACPI: Reserving FACS table memory at [mem
0x7ffe0000-0x7ffe003f]
<6>[    0.035542] ACPI: Reserving APIC table memory at [mem
0x7ffe21fd-0x7ffe227c]
<6>[    0.035550] ACPI: Reserving HPET table memory at [mem
0x7ffe227d-0x7ffe22b4]
<6>[    0.035558] ACPI: Reserving MCFG table memory at [mem
0x7ffe22b5-0x7ffe22f0]
<6>[    0.035566] ACPI: Reserving WAET table memory at [mem
0x7ffe22f1-0x7ffe2318]
<5>[    0.036775] 1167MB HIGHMEM available.
<5>[    0.036823] 879MB LOWMEM available.
<6>[    0.036848]   mapped low ram: 0 - 36ffe000
<6>[    0.036864]   low ram: 0 - 36ffe000
<6>[    0.037465] Zone ranges:
<6>[    0.037490]   DMA      [mem 0x0000000000001000-0x0000000000ffffff]
<6>[    0.037576]   Normal   [mem 0x0000000001000000-0x0000000036ffdfff]
<6>[    0.037591]   HighMem  [mem 0x0000000036ffe000-0x000000007ffdefff]
<6>[    0.037610] Movable zone start for each node
<6>[    0.037625] Early memory node ranges
<6>[    0.037668]   node   0: [mem 0x0000000000001000-0x000000000009efff]
<6>[    0.037741]   node   0: [mem 0x0000000000100000-0x000000007ffdefff]
<6>[    0.037912] Initmem setup node 0 [mem
0x0000000000001000-0x000000007ffdefff]
<6>[    0.039699] On node 0, zone DMA: 1 pages in unavailable ranges
<6>[    0.040493] On node 0, zone DMA: 97 pages in unavailable ranges
<6>[    0.068623] Using APIC driver default
<6>[    0.069096] ACPI: PM-Timer IO Port: 0x608
<6>[    0.069764] ACPI: LAPIC_NMI (acpi_id[0xff] dfl dfl lint[0x1])
<6>[    0.070159] IOAPIC[0]: apic_id 0, version 32, address 0xfec00000, GSI 0-23
<6>[    0.070278] ACPI: INT_SRC_OVR (bus 0 bus_irq 0 global_irq 2 dfl dfl)
<6>[    0.070576] ACPI: INT_SRC_OVR (bus 0 bus_irq 5 global_irq 5 high level)
<6>[    0.070611] ACPI: INT_SRC_OVR (bus 0 bus_irq 9 global_irq 9 high level)
<6>[    0.070722] ACPI: INT_SRC_OVR (bus 0 bus_irq 10 global_irq 10 high level)
<6>[    0.070735] ACPI: INT_SRC_OVR (bus 0 bus_irq 11 global_irq 11 high level)
<6>[    0.070968] ACPI: Using ACPI (MADT) for SMP configuration information
<6>[    0.071240] smpboot: Allowing 2 CPUs, 0 hotplug CPUs
<6>[    0.072248] PM: hibernation: Registered nosave memory: [mem
0x00000000-0x00000fff]
<6>[    0.072334] PM: hibernation: Registered nosave memory: [mem
0x0009f000-0x0009ffff]
<6>[    0.072384] PM: hibernation: Registered nosave memory: [mem
0x000a0000-0x000effff]
<6>[    0.072394] PM: hibernation: Registered nosave memory: [mem
0x000f0000-0x000fffff]
<6>[    0.072405] PM: hibernation: Registered nosave memory: [mem
0x00cfc000-0x00cfcfff]
<6>[    0.072417] PM: hibernation: Registered nosave memory: [mem
0x00cfc000-0x00cfcfff]
<6>[    0.072636] [mem 0xc0000000-0xfed1bfff] available for PCI devices
<6>[    0.072683] Booting paravirtualized kernel on bare hardware
<6>[    0.073201] clocksource: refined-jiffies: mask: 0xffffffff
max_cycles: 0xffffffff, max_idle_ns: 1910969940391419 ns
<6>[    0.073674] setup_percpu: NR_CPUS:8 nr_cpumask_bits:2
nr_cpu_ids:2 nr_node_ids:1
<6>[    0.075154] percpu: Embedded 31 pages/cpu s96372 r0 d30604 u126976
<7>[    0.075652] pcpu-alloc: s96372 r0 d30604 u126976 alloc=31*4096
<7>[    0.075742] pcpu-alloc: [0] 0 [0] 1
<5>[    0.077147] Kernel command line: console=ttyS0,115200 rootwait
root=/dev/sda debug verbose console_msg_format=syslog earlycon
<5>[    0.078730] Unknown kernel command line parameters \"verbose\",
will be passed to user space.
<6>[    0.080340] Dentry cache hash table entries: 131072 (order: 7,
524288 bytes, linear)
<6>[    0.081003] Inode-cache hash table entries: 65536 (order: 6,
262144 bytes, linear)
<6>[    0.082840] Built 1 zonelists, mobility grouping on.  Total pages: 521957
<6>[    0.088082] mem auto-init: stack:all(zero), heap alloc:off, heap free:off
<6>[    0.088308] Initializing HighMem for node 0 (00036ffe:0007ffdf)
<6>[    0.454727] Initializing Movable for node 0 (00000000:00000000)
<6>[    0.459790] Checking if this processor honours the WP bit even
in supervisor mode...Ok.
<6>[    0.460945] Memory: 2046372K/2096628K available (15688K kernel
code, 2173K rwdata, 5772K rodata, 996K init, 780K bss, 50256K
reserved, 0K cma-reserved, 1195908K highmem)
<6>[    0.466051] SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=2, Nodes=1
<6>[    0.468048] ftrace: allocating 54241 entries in 106 pages
<6>[    0.511020] ftrace: allocated 106 pages with 4 groups
<6>[    0.514727] trace event string verifier disabled
<6>[    0.519501] Dynamic Preempt: voluntary
<6>[    0.522734] rcu: Preemptible hierarchical RCU implementation.
<6>[    0.522756] rcu: RCU event tracing is enabled.
<6>[    0.522785] rcu: RCU restricting CPUs from NR_CPUS=8 to nr_cpu_ids=2.
<6>[    0.522916] Trampoline variant of Tasks RCU enabled.
<6>[    0.522927] Rude variant of Tasks RCU enabled.
<6>[    0.523017] rcu: RCU calculated value of scheduler-enlistment
delay is 100 jiffies.
<6>[    0.523045] rcu: Adjusting geometry for rcu_fanout_leaf=16, nr_cpu_ids=2
<6>[    0.538503] NR_IRQS: 2304, nr_irqs: 440, preallocated irqs: 16
<6>[    0.543029] rcu: srcu_init: Setting srcu_struct sizes based on contention.
<6>[    0.546346] kfence: initialized - using 2097152 bytes for 255
objects at 0x(ptrval)-0x(ptrval)
<6>[    0.551378] Console: colour VGA+ 80x25
<6>[    0.553103] printk: console [ttyS0] enabled
<6>[    0.626471] ACPI: Core revision 20230331
<6>[    0.637882] APIC: Switch to symmetric I/O mode setup
<6>[    0.638348] Enabling APIC mode:  Flat.  Using 1 I/O APICs
<6>[    0.644118] ..TIMER: vector=0x30 apic1=0 pin1=2 apic2=-1 pin2=-1
<6>[    0.650790] clocksource: tsc-early: mask: 0xffffffffffffffff
max_cycles: 0x2b3e46fa93c, max_idle_ns: 440795237232 ns
<6>[    0.652683] Calibrating delay loop (skipped), value calculated
using timer frequency.. 6000.00 BogoMIPS (lpj=3000002)
<6>[    0.654599] pid_max: default: 32768 minimum: 301
<6>[    0.656733] LSM: initializing lsm=capability,selinux,integrity
<6>[    0.657713] SELinux:  Initializing.
<6>[    0.660732] Mount-cache hash table entries: 2048 (order: 1, 8192
bytes, linear)
<6>[    0.661233] Mountpoint-cache hash table entries: 2048 (order: 1,
8192 bytes, linear)
<6>[    0.682197] Last level iTLB entries: 4KB 0, 2MB 0, 4MB 0
<6>[    0.682458] Last level dTLB entries: 4KB 0, 2MB 0, 4MB 0, 1GB 0
<6>[    0.682670] Spectre V1 : Mitigation: usercopy/swapgs barriers
and __user pointer sanitization
<6>[    0.684632] Spectre V2 : Mitigation: Retpolines
<6>[    0.684930] Spectre V2 : Spectre v2 / SpectreRSB mitigation:
Filling RSB on context switch
<6>[    0.685539] Spectre V2 : Spectre v2 / SpectreRSB : Filling RSB on VMEXIT
<4>[    0.686934] L1TF: Kernel not compiled for PAE. No mitigation for L1TF
<6>[    0.688097] MDS: Vulnerable: Clear CPU buffers attempted, no microcode
<6>[    0.688548] MMIO Stale Data: Unknown: No mitigations
<0>[    0.692458] __common_interrupt: 0.79 No irq handler for vector
<0>[    0.692458] __common_interrupt: 0.160 No irq handler for vector
<1>[    0.692458] BUG: unable to handle page fault for address: 000024c0
<1>[    0.692458] #PF: user read access in kernel mode
<1>[    0.692458] #PF: error_code(0x0004) - not-present page
<6>[    0.692458] *pde = 00000000
<4>[    0.692458] Oops: 0004 [#1] PREEMPT SMP
<4>[    0.692458] CPU: 0 PID: 0 Comm: swapper/0 Not tainted
6.4.0-rc2-next-20230517 #1
<4>[    0.692458] Hardware name: QEMU Standard PC (Q35 + ICH9, 2009),
BIOS 1.14.0-2 04/01/2014
<4>[    0.692458] EIP: 0x60
<4>[    0.692458] Code: Unable to access opcode bytes at 0x36.
<4>[    0.692458] EAX: 00000060 EBX: 00000000 ECX: b51e0945 EDX: 006afcf0
<4>[    0.692458] ESI: 00000060 EDI: 00000020 EBP: d86f7c04 ESP: d86f7ce0
<4>[    0.692458] DS: 0000 ES: 0000 FS: 0000 GS: 0000 SS: 7c8c EFLAGS: 00324b92
<4>[    0.692458] CR0: 80050033 CR2: 000024c0 CR3: 18a49000 CR4: 000006d0
<4>[    0.692458] Call Trace:
<4>[    0.692458]  ? vscnprintf+0x12/0x30
<4>[    0.692458]  ? prb_read_valid+0x31/0x50
<4>[    0.692458]  ? console_unlock+0x94/0xc0
<4>[    0.692458]  ? vprintk_emit+0xf4/0x230
<4>[    0.692458]  ? vprintk_emit+0xf4/0x230
<4>[    0.692458]  ? vprintk_default+0x15/0x20
<4>[    0.692458]  ? __is_insn_slot_addr+0x41/0x50
<4>[    0.692458]  ? kernel_text_address+0x7c/0x90
<4>[    0.692458]  ? __kernel_text_address+0x10/0x40
<4>[    0.692458]  ? show_trace_log_lvl.17+0x1f5/0x2f0
<4>[    0.692458]  ? __die_body+0x54/0x90
<4>[    0.692458]  ? __die+0x70/0x80
<4>[    0.692458]  ? page_fault_oops+0x2d3/0x310
<4>[    0.692458]  ? kernelmode_fixup_or_oops+0xa5/0xc0
<4>[    0.692458]  ? __bad_area_nosemaphore+0x59/0x1d0
<4>[    0.692458]  ? bad_area_nosemaphore+0x12/0x20
<4>[    0.692458]  ? do_user_addr_fault+0x156/0x400
<4>[    0.692458]  ? irqentry_enter+0x32/0x38
<4>[    0.692458]  ? trace_hardirqs_off_finish+0x2c/0x70
<4>[    0.692458]  ? exc_page_fault+0x50/0x154
<4>[    0.692458]  ? pvclock_clocksource_read_nowd+0xdc/0xdc
<4>[    0.692458]  ? handle_exception+0x133/0x133
<4>[    0.692458]  ? pvclock_clocksource_read_nowd+0xdc/0xdc
<4>[    0.692458] Modules linked in:
<4>[    0.692458] CR2: 00000000000024c0
<4>[    0.692458] ---[ end trace 0000000000000000 ]---
<4>[    0.692458] EIP: 0x60
<4>[    0.692458] Code: Unable to access opcode bytes at 0x36.
<4>[    0.692458] EAX: 00000060 EBX: 00000000 ECX: b51e0945 EDX: 006afcf0
<4>[    0.692458] ESI: 00000060 EDI: 00000020 EBP: d86f7c04 ESP: d86f7ce0
<4>[    0.692458] DS: 0000 ES: 0000 FS: 0000 GS: 0000 SS: 7c8c EFLAGS: 00324b92
<4>[    0.692458] CR0: 80050033 CR2: 000024c0 CR3: 18a49000 CR4: 000006d0
<0>[    0.692458] Kernel panic - not syncing: Attempted to kill the idle task!
<0>[    0.692458] ---[ end Kernel panic - not syncing: Attempted to
kill the idle task! ]---
poweroff


logs:
===
 - https://qa-reports.linaro.org/lkft/linux-next-master/build/next-20230517/testrun/17029757/suite/boot/test/clang-nightly-lkftconfig/log
 - https://tuxapi.tuxsuite.com/v1/groups/linaro/projects/lkft/tests/2PtyoY5qEJrKsuIBPRVSIGK02m3


Steps to reproduce intermittently,
=============
# To install tuxrun on your system globally:
# sudo pip3 install -U tuxrun==0.42.0
#
# See https://tuxrun.org/ for complete documentation.

tuxrun   \
 --runtime podman   \
 --device qemu-i386   \
 --kernel https://storage.tuxsuite.com/public/linaro/lkft/builds/2PtylXBvODt99O8r9YKOEwj0fQc/bzImage
  \
 --modules https://storage.tuxsuite.com/public/linaro/lkft/builds/2PtylXBvODt99O8r9YKOEwj0fQc/modules.tar.xz
  \
 --rootfs https://storage.tuxsuite.com/public/linaro/lkft/oebuilds/2PeQhkn36JqPowQBZge0AFhBav6/images/intel-core2-32/lkft-tux-image-intel-core2-32-20230511145016.rootfs.ext4.gz
  \
 --parameters SKIPFILE=skipfile-lkft.yaml   \
 --parameters SHARD_NUMBER=10   \
 --parameters SHARD_INDEX=2   \
 --image docker.io/lavasoftware/lava-dispatcher:2023.01.0020.gc1598238f   \
 --tests ltp-syscalls   \
 --timeouts boot=15 ltp-syscalls=50

--
Linaro LKFT
https://lkft.linaro.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BG9fYvhPgoP57ip1cW5TaWJfkbkHA2SZqd5fFoTJ7rDGA138w%40mail.gmail.com.
