Return-Path: <clang-built-linux+bncBDY3NC743AGBBWNVVT6AKGQEPLF3TVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3f.google.com (mail-oo1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A46F291316
	for <lists+clang-built-linux@lfdr.de>; Sat, 17 Oct 2020 18:24:58 +0200 (CEST)
Received: by mail-oo1-xc3f.google.com with SMTP id t14sf2446621ooq.8
        for <lists+clang-built-linux@lfdr.de>; Sat, 17 Oct 2020 09:24:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602951897; cv=pass;
        d=google.com; s=arc-20160816;
        b=DP5gzyNs23Pq/0Y+7ujaEYQWuLb15nhtUMwslf2gzY4iCUTatkN3GkgEYh2PI/7SWf
         xehktfoVJh+w/QWXSOH9C5AL22C2mCXLLFE9hGpCbAw6mrlXnJ6g/XeOYieVZgSN1oMq
         msrxCDFmkKVMPREGD2d05A2fhRK9AUB8YjOLDK+sZJQUObS0ZpEJ0d9qrPrBEip5KFu0
         1XG+yxgDNkSlsguHKQU1ObaXb2tVcUm8mLA2tXa2VNDt6v4pvgy5dZS2P7z27WhPdXXq
         hzHlTsn87HikR2Mfrl/PlktZ/hi+nMoE8Gsqz/sL2c+A4FjSG1mu6Xw5dJcV2gllDypO
         5gtQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=nNPxvpliryZQedSxNqs7Zq1qt6lKiYC89BKQWOn+f4Q=;
        b=z6MS+ScOxuAhV+TFHJKPPAGgp20T1XRDYvTXWHOyc9u8I0mntdLrKytfPav0KpeHc5
         0/8DCaN4RMYhaF2v0kkAXQftBMMJ5rBqBRgR3xnZqso7eb7A805U4TB4DWkT4i4XsCpg
         +Ya9X3NoUSBqAs9lhi9kVaD7MY7ex5D8Gvp2WQDZEz1155hKhbWHYs/o7f1Gh3aoCkQ9
         sQDBe4w2yECvjvHG+Guw66J4gEgoPkMQi+wISbDSoUe2Fswja60W2ndOyO3w3qrcNYov
         21TyKUy4r0s7wcu1uVV+tUViKZ1kc/qZ2udj/h99KgDZVL/C5n8QoStyw0IB3jepENGk
         Mssw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.86 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nNPxvpliryZQedSxNqs7Zq1qt6lKiYC89BKQWOn+f4Q=;
        b=oYNdRqcvLtk7hn4eU0VzzICvRQzDTMmPLsnH5IB1IdttpWsFN0IAWkXCuF39YbAb4p
         NQehTLe2nIB33c3g4m3Z0mz5GP3IGr7dYq7y3Te90MBjpdo4ABQ6ntVaHC4BcLCmSgXF
         ovaAFt/4aytIfa8Jn04TsB19lwF8/K0ZPpfw1FlrIxehvXicDn5ux+Yl+n4UAPBUJQMI
         sRlTCoJe72eRDcH1dU8PJPVgW2lrrhqu/qM6HSf/CHbo+c8CMvoGJmPVOTqDget4v4E8
         rOQUcs1CBa9Enj5z44aSuNOLdWcuYR87vwIgjOcXIcIPDkClhf85ZkXP81dhaWD4gaOc
         rNRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nNPxvpliryZQedSxNqs7Zq1qt6lKiYC89BKQWOn+f4Q=;
        b=GIqeXrkoJL12WOPbV15HInt5yORDzzUQjM7bFq3EbUw4hrXwR/9v6z9jR/bfCoZ5zd
         onLx4itZEhVsUxacwVvXvydoFd3ekWup14l3raOOzsT9P4oHRUUGAVJgl/E4DeLGe0H6
         yMHlItDhkqmaCJQ420UynVInZ90UW8q6jzgvOQbrKWakEPwrmokQLPOhd59sCxVNrvoO
         i8PpnuCV6FHs13dKN15LOZKkrQxs2rpswp2oWxtcGwmaN0epGy+yPxITrZnc03DJz4hP
         x/9dm1CJ2ISG53kvXXfUkG9TeUvrQ6fDrSSg5osaSC1w/jyPx38W8MnK0nkEP8Fpo9Z7
         Tvxw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530KPSMkw1Zry/Gwh8dEW3t/hpYJOYxjdf1BK+0QS+HfQLjhdX10
	Nrl5j0aczT3KF4WzemgeQTE=
X-Google-Smtp-Source: ABdhPJwCOFU10XTGOL4MvscITZ8jw9CP8AQkLrGsUZBUIXOtOdZbsZ/WAj9e4nYSXNITtRPSaXG99g==
X-Received: by 2002:aca:c692:: with SMTP id w140mr5906437oif.94.1602951897145;
        Sat, 17 Oct 2020 09:24:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:c1:: with SMTP id t1ls1358698oic.7.gmail; Sat, 17
 Oct 2020 09:24:56 -0700 (PDT)
X-Received: by 2002:a05:6808:6c8:: with SMTP id m8mr6377640oih.142.1602951896750;
        Sat, 17 Oct 2020 09:24:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602951896; cv=none;
        d=google.com; s=arc-20160816;
        b=Q9zyFkEgIPOS3ew+cNVm9cGPmUoSPzKOBDGFgxHiU+SixNxOB6+Jg8iL32JhznhRHd
         MI5TkA3JIHwAAtiWfnR9XQ9DrBj45AozcYM9WzzAxsa95xDsxC6xMfUk7tNFDtXSCIqy
         1FpwfTef8cl0C3K+mJmqLw0eVKhPHHXaZXmPYfAtMYIDcPl+CFrT0mr9h1KB4BWHq1P1
         jMy9pbMSY+/gS8m65tlmxXPwakD2xfh57iLZgZgAm+BVOBz027vb3v2xGhuKzuuiMmpB
         0fE7XcFSZTcS+P7Ue90lUeE3hRA/hBxAqKIhuiWeRjbzS3lZ0couSu2VSpUtop2kwUs+
         8e/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=arVmUw0GvGXhSzSCN8RjyxamqGjuvxtsf4zhxn8FImo=;
        b=RS28sb7+Q6p/U0UAD4FvIwy1Pv6Vdf1521GkBRM0TrRoUyBNyQskbK1R3av3SejN+Y
         6HdUQ5ML82/OYYZ5hK0VuVKDieXbEprauiIRAb9ZYAcDgA8bAzm6qJ7R877d1ICw53S2
         qFLbaVKHBoUxQTbuxKB+vxTuAAbOyjI33aIuNdsZ+yDjiiPEwOxfNs4JU06sfjNHDDM8
         mAs2N5vsigCNVjWhm3k3iZO5SL8r7FR/OPT2EE0brKNhp1pQDv6CgRtMjhjRMcdZ/eWi
         CErF+wCN2VMBGoP4Nixsu28ukwUTlgWpkZUTZkRs8qh4FVA8t7UDW3cgZCSpXA4OHPq1
         E0eQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.86 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0086.hostedemail.com. [216.40.44.86])
        by gmr-mx.google.com with ESMTPS id p17si444055oot.0.2020.10.17.09.24.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2020 09:24:56 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.86 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.86;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay05.hostedemail.com (Postfix) with ESMTP id E0A6918029120;
	Sat, 17 Oct 2020 16:24:55 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:327:355:379:599:857:960:966:967:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1434:1437:1515:1516:1518:1593:1594:1605:1730:1747:1777:1792:2194:2196:2198:2199:2200:2201:2393:2525:2561:2564:2682:2685:2828:2859:2894:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3622:3865:3866:3867:3870:3871:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:4385:5007:6742:6743:7576:7903:8557:8957:9025:10004:10848:11026:11232:11914:12043:12050:12295:12296:12297:12438:12555:12663:12712:12737:12740:12760:12895:13161:13225:13229:13439:13870:14096:14097:14659:21080:21325:21433:21451:21611:21627:21773:21990:30010:30034:30054:30055:30070:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: soap40_350edcc27227
X-Filterd-Recvd-Size: 36889
Received: from XPS-9350.home (unknown [47.151.133.149])
	(Authenticated sender: joe@perches.com)
	by omf13.hostedemail.com (Postfix) with ESMTPA;
	Sat, 17 Oct 2020 16:24:48 +0000 (UTC)
Message-ID: <f530b7aeecbbf9654b4540cfa20023a4c2a11889.camel@perches.com>
Subject: Re: [RFC] treewide: cleanup unreachable breaks
From: Joe Perches <joe@perches.com>
To: trix@redhat.com, linux-kernel@vger.kernel.org, cocci
 <cocci@systeme.lip6.fr>
Cc: linux-edac@vger.kernel.org, linux-acpi@vger.kernel.org, 
 linux-pm@vger.kernel.org, xen-devel@lists.xenproject.org, 
 linux-block@vger.kernel.org, openipmi-developer@lists.sourceforge.net, 
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-power@fi.rohmeurope.com, linux-gpio@vger.kernel.org, 
 amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, 
 nouveau@lists.freedesktop.org, virtualization@lists.linux-foundation.org, 
 spice-devel@lists.freedesktop.org, linux-iio@vger.kernel.org, 
 linux-amlogic@lists.infradead.org,
 industrypack-devel@lists.sourceforge.net,  linux-media@vger.kernel.org,
 MPT-FusionLinux.pdl@broadcom.com,  linux-scsi@vger.kernel.org,
 linux-mtd@lists.infradead.org,  linux-can@vger.kernel.org,
 netdev@vger.kernel.org,  intel-wired-lan@lists.osuosl.org,
 ath10k@lists.infradead.org,  linux-wireless@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,  linux-nfc@lists.01.org,
 linux-nvdimm@lists.01.org, linux-pci@vger.kernel.org, 
 linux-samsung-soc@vger.kernel.org, platform-driver-x86@vger.kernel.org, 
 patches@opensource.cirrus.com, storagedev@microchip.com, 
 devel@driverdev.osuosl.org, linux-serial@vger.kernel.org, 
 linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net, 
 linux-watchdog@vger.kernel.org, ocfs2-devel@oss.oracle.com,
 bpf@vger.kernel.org,  linux-integrity@vger.kernel.org,
 linux-security-module@vger.kernel.org,  keyrings@vger.kernel.org,
 alsa-devel@alsa-project.org,  clang-built-linux@googlegroups.com
Date: Sat, 17 Oct 2020 09:24:47 -0700
In-Reply-To: <20201017160928.12698-1-trix@redhat.com>
References: <20201017160928.12698-1-trix@redhat.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.4-0ubuntu1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.86 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Sat, 2020-10-17 at 09:09 -0700, trix@redhat.com wrote:
> From: Tom Rix <trix@redhat.com>
> 
> This is a upcoming change to clean up a new warning treewide.
> I am wondering if the change could be one mega patch (see below) or
> normal patch per file about 100 patches or somewhere half way by collecting
> early acks.
> 
> clang has a number of useful, new warnings see
> https://clang.llvm.org/docs/DiagnosticsReference.html
> 
> This change cleans up -Wunreachable-code-break
> https://clang.llvm.org/docs/DiagnosticsReference.html#wunreachable-code-break
> for 266 of 485 warnings in this week's linux-next, allyesconfig on x86_64.

Early acks/individual patches by subsystem would be good.
Better still would be an automated cocci script.

The existing checkpatch test for UNNECESSARY_BREAK
has a few too many false positives.

From a script run on next on July 28th:

arch/arm/mach-s3c24xx/mach-rx1950.c:266: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
arch/arm/nwfpe/fpa11_cprt.c:38: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
arch/arm/nwfpe/fpa11_cprt.c:41: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
arch/mips/include/asm/mach-au1x00/au1000.h:684: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
arch/mips/include/asm/mach-au1x00/au1000.h:687: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
arch/mips/include/asm/mach-au1x00/au1000.h:690: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
arch/mips/include/asm/mach-au1x00/au1000.h:693: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
arch/mips/include/asm/mach-au1x00/au1000.h:697: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
arch/mips/include/asm/mach-au1x00/au1000.h:700: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
arch/mips/loongson2ef/common/cs5536/cs5536_isa.c:276: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
arch/mips/loongson2ef/common/cs5536/cs5536_isa.c:279: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
arch/mips/loongson2ef/common/cs5536/cs5536_isa.c:282: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
arch/mips/loongson2ef/common/cs5536/cs5536_isa.c:287: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
arch/mips/loongson2ef/common/cs5536/cs5536_isa.c:290: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
arch/mips/rb532/setup.c:76: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
arch/mips/rb532/setup.c:79: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
arch/powerpc/include/asm/kvm_book3s_64.h:231: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
arch/powerpc/include/asm/kvm_book3s_64.h:234: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
arch/powerpc/include/asm/kvm_book3s_64.h:237: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
arch/powerpc/include/asm/kvm_book3s_64.h:240: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
arch/powerpc/net/bpf_jit_comp.c:455: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
arch/powerpc/platforms/cell/spufs/switch.c:2047: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
arch/powerpc/platforms/cell/spufs/switch.c:2077: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
arch/sh/boards/mach-landisk/gio.c:111: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
arch/x86/kernel/cpu/mce/core.c:1734: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
arch/x86/kernel/cpu/mce/core.c:1738: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
arch/x86/kernel/cpu/microcode/amd.c:218: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/acpi/utils.c:107: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/acpi/utils.c:132: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/acpi/utils.c:147: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/acpi/utils.c:158: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/ata/libata-scsi.c:3973: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/base/power/main.c:366: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/block/xen-blkback/blkback.c:1272: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/char/ipmi/ipmi_devintf.c:493: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/char/lp.c:625: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/char/mwave/mwavedd.c:406: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/cpufreq/e_powersaver.c:226: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/cpufreq/longhaul.c:596: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/crypto/atmel-sha.c:462: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/edac/amd64_edac.c:2464: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/edac/amd64_edac.c:2468: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/edac/amd64_edac.c:2471: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/edac/amd64_edac.c:2481: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/edac/amd64_edac.c:2485: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/edac/amd64_edac.c:2488: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/edac/amd64_edac.c:2491: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/gpu/drm/amd/amdgpu/atombios_encoders.c:505: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/gpu/drm/amd/amdgpu/atombios_encoders.c:528: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/gpu/drm/amd/amdgpu/dce_v10_0.c:2220: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/gpu/drm/amd/amdgpu/dce_v11_0.c:2253: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/gpu/drm/amd/amdgpu/dce_v8_0.c:2110: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/gpu/drm/gma500/cdv_intel_hdmi.c:346: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/gpu/drm/mgag200/mgag200_mode.c:723: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/gpu/drm/mgag200/mgag200_mode.c:727: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/gpu/drm/mgag200/mgag200_mode.c:730: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/gpu/drm/mgag200/mgag200_mode.c:734: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/gpu/drm/mgag200/mgag200_mode.c:737: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/gpu/drm/nouveau/nvkm/subdev/bios/pll.c:126: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/gpu/drm/nouveau/nvkm/subdev/clk/mcp77.c:143: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/gpu/drm/nouveau/nvkm/subdev/clk/mcp77.c:150: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/gpu/drm/nouveau/nvkm/subdev/clk/mcp77.c:153: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramnv50.c:174: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/gpu/drm/qxl/qxl_ioctl.c:163: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/gpu/drm/radeon/atombios_encoders.c:749: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/gpu/drm/radeon/atombios_encoders.c:780: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/gpu/drm/radeon/r300.c:1160: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/gpu/drm/radeon/radeon_i2c.c:462: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/infiniband/hw/cxgb4/qp.c:1972: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/infiniband/hw/cxgb4/qp.c:2021: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/infiniband/hw/cxgb4/qp.c:2026: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/input/mouse/synaptics_usb.c:207: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/ipack/devices/ipoctal.c:547: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/irqchip/irq-crossbar.c:291: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/irqchip/irq-mips-gic.c:643: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/isdn/mISDN/dsp_dtmf.c:174: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/macintosh/via-pmu-led.c:65: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/media/dvb-frontends/cx24117.c:1175: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/media/dvb-frontends/dib0090.c:407: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/media/dvb-frontends/dib0090.c:497: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/media/dvb-frontends/drxd_hard.c:1625: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/media/dvb-frontends/drx39xyj/drxj.c:2328: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/media/dvb-frontends/drx39xyj/drxj.c:2655: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/media/dvb-frontends/drx39xyj/drxj.c:3597: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/media/dvb-frontends/drx39xyj/drxj.c:3621: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/media/dvb-frontends/drx39xyj/drxj.c:3645: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/media/dvb-frontends/drx39xyj/drxj.c:10947: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/media/dvb-frontends/drx39xyj/drxj.c:11068: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/media/dvb-frontends/drx39xyj/drxj.c:11890: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/media/dvb-frontends/nxt200x.c:171: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/media/dvb-frontends/nxt200x.c:193: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/media/dvb-frontends/nxt200x.c:219: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/media/dvb-frontends/nxt200x.c:242: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/media/dvb-frontends/nxt200x.c:245: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/media/dvb-frontends/nxt200x.c:377: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/media/dvb-frontends/nxt200x.c:558: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/media/dvb-frontends/nxt200x.c:583: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/media/dvb-frontends/nxt200x.c:597: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/media/dvb-frontends/nxt200x.c:613: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/media/dvb-frontends/nxt200x.c:629: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/media/dvb-frontends/nxt200x.c:641: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/media/dvb-frontends/nxt200x.c:667: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/media/dvb-frontends/nxt200x.c:723: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/media/dvb-frontends/nxt200x.c:745: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/media/dvb-frontends/nxt200x.c:1117: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/media/dvb-frontends/si21xx.c:467: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/media/dvb-frontends/si21xx.c:470: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/media/dvb-frontends/stv0900_core.c:1948: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/media/tuners/mt2063.c:1852: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/media/usb/b2c2/flexcop-usb.c:198: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/media/usb/b2c2/flexcop-usb.c:521: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/media/usb/gspca/pac_common.h:105: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/media/usb/pwc/pwc-if.c:860: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/media/usb/pwc/pwc-if.c:872: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/media/usb/pwc/pwc-if.c:931: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/media/usb/pwc/pwc-if.c:957: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/media/usb/pwc/pwc-if.c:976: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/media/usb/pwc/pwc-if.c:988: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/media/usb/pwc/pwc-if.c:1001: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/media/usb/pwc/pwc-if.c:1019: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/media/usb/tm6000/tm6000-core.c:674: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/media/usb/tm6000/tm6000-core.c:696: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/media/usb/tm6000/tm6000-core.c:761: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/media/usb/ttusb-dec/ttusb_dec.c:1105: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/media/usb/ttusb-dec/ttusb_dec.c:1109: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/media/usb/ttusb-dec/ttusb_dec.c:1160: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/media/usb/ttusb-dec/ttusb_dec.c:1164: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/message/fusion/mptbase.c:476: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/misc/mei/hbm.c:1307: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/mmc/host/atmel-mci.c:1919: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/mtd/devices/ms02-nv.c:289: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/mtd/mtdchar.c:884: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/mtd/mtdchar.c:894: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/net/ethernet/8390/mac8390.c:193: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/net/ethernet/8390/mac8390.c:206: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/net/ethernet/cisco/enic/enic_ethtool.c:437: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c:353: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/net/wireless/ath/ath9k/hw.c:2311: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/net/wireless/realtek/rtlwifi/rtl8188ee/hw.c:1230: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c:1135: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/nfc/trf7970a.c:1385: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/nvdimm/claim.c:205: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/parport/parport_ip32.c:1862: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/pci/controller/pci-v3-semi.c:664: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/pci/hotplug/ibmphp_pci.c:297: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/pci/hotplug/ibmphp_pci.c:1512: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/pinctrl/pinctrl-rockchip.c:2718: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/pinctrl/pinctrl-rockchip.c:2788: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/pinctrl/samsung/pinctrl-s3c24xx.c:111: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/pinctrl/samsung/pinctrl-s3c24xx.c:114: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/pinctrl/samsung/pinctrl-s3c24xx.c:117: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/pinctrl/samsung/pinctrl-s3c24xx.c:120: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/pinctrl/samsung/pinctrl-s3c24xx.c:123: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/platform/x86/acer-wmi.c:795: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/platform/x86/sony-laptop.c:2470: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/platform/x86/sony-laptop.c:2476: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/platform/x86/wmi.c:1263: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/platform/x86/wmi.c:1266: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/platform/x86/wmi.c:1269: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/pnp/pnpbios/rsparser.c:192: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/pnp/pnpbios/rsparser.c:476: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/pnp/pnpbios/rsparser.c:745: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/power/supply/ipaq_micro_battery.c:98: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/power/supply/ipaq_micro_battery.c:101: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/power/supply/ipaq_micro_battery.c:104: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/power/supply/wm831x_power.c:671: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/s390/char/tape_34xx.c:654: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/s390/char/tape_3590.c:946: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/s390/scsi/zfcp_fc.c:980: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/s390/scsi/zfcp_fc.c:983: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/scsi/aic94xx/aic94xx_task.c:272: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/scsi/arcmsr/arcmsr_hba.c:2702: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/scsi/arcmsr/arcmsr_hba.c:2705: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/scsi/be2iscsi/be_mgmt.c:1251: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/scsi/be2iscsi/be_mgmt.c:1254: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/scsi/bfa/bfa_ioc.h:1001: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/scsi/bfa/bfa_ioc.h:1004: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/scsi/bfa/bfa_ioc.h:1007: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/scsi/bfa/bfa_ioc.h:1019: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/scsi/bfa/bfa_ioc.h:1022: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/scsi/bfa/bfa_ioc.h:1025: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/scsi/bnx2fc/bnx2fc_hwi.c:773: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/scsi/fcoe/fcoe.c:1897: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/scsi/hptiop.c:761: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/scsi/hpsa.c:7443: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/scsi/isci/phy.c:756: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/scsi/isci/phy.c:961: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/scsi/ipr.c:9490: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/scsi/lpfc/lpfc_debugfs.c:3347: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/scsi/lpfc/lpfc_debugfs.c:4387: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/scsi/lpfc/lpfc_debugfs.c:4439: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/scsi/lpfc/lpfc_debugfs.c:4453: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/scsi/lpfc/lpfc_debugfs.c:4495: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/scsi/lpfc/lpfc_debugfs.c:4520: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/scsi/lpfc/lpfc_debugfs.c:4523: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/scsi/lpfc/lpfc_scsi.c:4287: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/scsi/lpfc/lpfc_init.c:7189: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/scsi/lpfc/lpfc_sli.c:9192: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/scsi/lpfc/lpfc_sli.c:10075: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/scsi/lpfc/lpfc_sli.c:10237: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/scsi/mvumi.c:2299: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/scsi/nsp32.c:2114: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/scsi/nsp32.c:2125: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/scsi/qla2xxx/qla_mbx.c:4026: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/scsi/st.c:2849: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/scsi/sym53c8xx_2/sym_hipd.c:4599: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c:907: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c:910: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c:913: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c:916: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c:998: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c:1035: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c:1322: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c:1699: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c:1702: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c:1705: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c:1708: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/tty/nozomi.c:417: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/tty/nozomi.c:421: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/tty/nozomi.c:463: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/tty/nozomi.c:471: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/tty/serial/imx.c:323: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/tty/serial/imx.c:334: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/tty/serial/imx.c:337: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/tty/serial/imx.c:340: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/tty/serial/imx.c:343: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/usb/gadget/function/f_hid.c:516: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/usb/gadget/function/f_hid.c:524: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/usb/gadget/function/f_hid.c:530: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/usb/gadget/function/f_hid.c:547: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/usb/gadget/function/f_hid.c:565: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/usb/gadget/function/f_hid.c:573: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/usb/gadget/function/f_hid.c:579: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/usb/gadget/function/f_hid.c:587: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/usb/host/xhci-mem.c:1147: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/usb/image/microtek.c:294: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/usb/misc/iowarrior.c:387: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/usb/misc/iowarrior.c:457: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/usb/misc/iowarrior.c:464: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/usb/misc/usblcd.c:190: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/usb/serial/iuu_phoenix.c:853: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/usb/serial/iuu_phoenix.c:867: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/usb/storage/freecom.c:434: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/video/fbdev/amifb.c:1212: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/video/fbdev/core/fbcon.c:1915: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/video/fbdev/core/fbcon.c:2006: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/vme/bridges/vme_ca91cx42.c:372: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/vme/bridges/vme_ca91cx42.c:681: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/vme/bridges/vme_ca91cx42.c:713: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/vme/bridges/vme_ca91cx42.c:1126: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/vme/bridges/vme_ca91cx42.c:1338: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/vme/bridges/vme_tsi148.c:509: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/vme/bridges/vme_tsi148.c:998: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/vme/bridges/vme_tsi148.c:1506: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/vme/bridges/vme_tsi148.c:1606: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/vme/bridges/vme_tsi148.c:1704: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/vme/bridges/vme_tsi148.c:1741: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/vme/bridges/vme_tsi148.c:1967: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/vme/vme.c:71: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/vme/vme.c:182: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/vme/vme.c:190: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/vme/vme.c:193: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
drivers/vme/vme.c:197: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
fs/efs/inode.c:166: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
fs/ocfs2/cluster/tcp.c:1201: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
kernel/bpf/syscall.c:2786: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
samples/hidraw/hid-example.c:168: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
samples/hidraw/hid-example.c:171: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
samples/hidraw/hid-example.c:174: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
samples/hidraw/hid-example.c:177: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
samples/hidraw/hid-example.c:180: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
security/integrity/ima/ima_appraise.c:173: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
security/keys/trusted-keys/trusted_tpm1.c:904: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
sound/oss/dmasound/dmasound_core.c:1002: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
sound/oss/dmasound/dmasound_core.c:1006: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
sound/oss/dmasound/dmasound_core.c:1023: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
sound/oss/dmasound/dmasound_core.c:1047: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
sound/oss/dmasound/dmasound_core.c:1126: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
sound/oss/dmasound/dmasound_core.c:1261: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
sound/pci/echoaudio/midi.c:100: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
sound/pci/echoaudio/midi.c:104: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
sound/pci/rme32.c:471: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
sound/pci/rme9652/rme9652.c:735: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
sound/pci/rme9652/rme9652.c:739: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
sound/pci/rme9652/rme9652.c:743: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
sound/pci/rme9652/rme9652.c:747: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
sound/pci/rme9652/rme9652.c:751: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
sound/pci/rme9652/rme9652.c:755: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
sound/pci/rme9652/rme9652.c:762: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
sound/pci/rme9652/hdspm.c:2289: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
sound/pci/rme9652/hdspm.c:2315: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
sound/pci/rme9652/hdspm.c:2341: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
sound/pci/rme9652/hdspm.c:2361: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
sound/pci/rme9652/hdspm.c:3848: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
sound/pci/rme9652/hdspm.c:3859: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
sound/soc/codecs/wl1273.c:314: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
sound/soc/intel/skylake/skl-pcm.c:505: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
sound/soc/sh/hac.c:254: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
sound/soc/ti/davinci-mcasp.c:2388: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
tools/perf/ui/stdio/hist.c:401: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
tools/perf/ui/stdio/hist.c:404: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
tools/perf/util/probe-event.c:1516: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
tools/power/acpi/tools/acpidbg/acpidbg.c:412: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return
tools/power/acpi/tools/acpidbg/acpidbg.c:418: WARNING:UNNECESSARY_BREAK: break is not useful after a goto or return


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/f530b7aeecbbf9654b4540cfa20023a4c2a11889.camel%40perches.com.
