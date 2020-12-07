Return-Path: <clang-built-linux+bncBC5KPPH4YUKRBFXQW77AKGQE2MS2RVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id AB9592D0D28
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Dec 2020 10:38:30 +0100 (CET)
Received: by mail-wm1-x33f.google.com with SMTP id a134sf3924247wmd.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Dec 2020 01:38:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607333910; cv=pass;
        d=google.com; s=arc-20160816;
        b=fFnkc597avTpkh51IMakFufm0d5Ik0CB1f9MErIzrHZex5H/LoiPgj3UrjYsGDk3cY
         e1kxb33RwWWWpoIRz4kEjVPTjwnu7bxkb6ujs3883J5fCM4uk1C/7Spbu51dp9Elcm3H
         EinPhJI4VfZw/nLzWKTbZfgTvZVgntzn12LrxGGXh+b5xmvlZsYdmwU+HAA6Eo4MflLn
         G8VNvmFpElEH128DwXnyQqZ0vbN7dj1pmMKY0XcwRN3cDF76n/9R3MCH5sTUuT45lmpQ
         cjZDnB3Ijfw6Fw7dp/2SmyEQUgRS7LgdupNRXWMYqdHDwKn8Y3Qx2ZSaZ8SfyLDFXZka
         ZRbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:references:cc:to:from:subject:sender:dkim-signature;
        bh=7auPpmu83ngcbgM771H6lfRYbZHVf0YUFhH9NyFkXuY=;
        b=oOcilbCVUG8Q4itkj8kGviLXfYgPt3jL3/8yZqpByurAezp1gn18++Ze1waG11ZmpW
         E2GgLJFI8FybRKZWZpptwXXLIpNywBgIfyU6hZZo4a4n0yos8YOV8RvHg+XfJ9z1/BzR
         3x/hDFLV+b5zF+wsbObswc/JqFMu0Yx/UQoWM+uocq6v8kmifTVMY+11Wgw1uSxMQnw3
         kSvEY00H/MTvVf5suhiOHNIUf+oGYoz7SFf8cc+6BEmpttDMjpjQdVcHecr7rY88Ndge
         3ECiMIjF+Kxg2N2IoPAdnnHywFzk5YdiWlP6bapO5uK3qmkhXAEEOE4jVbq3fxMZL/5Y
         zEPA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of guillaume.tucker@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=guillaume.tucker@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7auPpmu83ngcbgM771H6lfRYbZHVf0YUFhH9NyFkXuY=;
        b=SuNPkdEWzsPl0xxwr90vPZ9b0O7467EsYiEJJWAuErgbKxRLCOXhVsNz3K7PIZiEos
         eM44uHo6TcBRUeZRkiS7JG1Wt1R0TgRQim+wIEHfmZfFfP9U2HeEuho3Yzqjju0rVAMh
         7/jpYZCEJdYjBo+c9Nqq/3LIsu0mwHH/QWYcOOaLv1fwKGDMca1XV4iRSYSQIB6DeErt
         KSeqrorBBX+0zTRxXT0an8T/ztIdY603lgQSFmmM9PpUGz6jo/ennsL8a+zb5i8xGkXU
         MVVXKpyzYMRqCSwnQaaDsUIiQvEQdJ+rjZ3tO9b28gqD7y2kchBcREkhr33fUTKpzsxe
         bSNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:references:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7auPpmu83ngcbgM771H6lfRYbZHVf0YUFhH9NyFkXuY=;
        b=J/0BB8J0siZoEkvvKt1kbShlZEfv3FtRkkuzM3sxfj4HIDitgiauitjQYbj+/fcCPj
         jREop8sAk3ra7Q1tJ6uKVPFJBC5scemWwxTTmlx4AuZkqVAlkzwidQqEQMdO3hhmA6Aa
         IkGpfYk9mjGvelZ6/FCPM6uhQK2KPYQMc/SAqbupgS7tUxa+wtQPlJj+Q068qZthoLC6
         +DosMNDXtihXW8LeuEzbFGMv+s+eC0ke+DxuS6LaUxdNrsvC8C5qgXgk9R8O5Bs57VzW
         k6GhCugOHbMukuZiKF84amEo1QkPeNIiKLkVt5J10FlEnbOHL8JYdOaQTWUrknxFwIna
         htxA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5323np2vg5hdmBPGvPR+zqwqeLVa2xCOkKDOU7Dd37obutB+emsI
	K8ebya8z4L+URjH24AZMNXM=
X-Google-Smtp-Source: ABdhPJxGUwGW1N84gG/a6Rj74xyGSCN8VExpAc0k5aIsgmvaNt0W5Z5z2OOTTOqRTFImhTQVAJpO0A==
X-Received: by 2002:a5d:638e:: with SMTP id p14mr11555169wru.358.1607333910393;
        Mon, 07 Dec 2020 01:38:30 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:a781:: with SMTP id q123ls4739856wme.1.canary-gmail;
 Mon, 07 Dec 2020 01:38:29 -0800 (PST)
X-Received: by 2002:a1c:a912:: with SMTP id s18mr17111933wme.26.1607333909366;
        Mon, 07 Dec 2020 01:38:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607333909; cv=none;
        d=google.com; s=arc-20160816;
        b=Ahbri3v5HvVUw3D+FDVG0WJxZkTTUI6cxVNS8WFsFYu6EMyh51ZxxJWcMZABnmLjab
         jxeDfxCosve0XZlp2spDkKUUdweXuF17WJZo+d4hhcNKx7VWpaJdGo3l5sc+pUADip5T
         LqfZ1NI8CmXvt2d28sg+ZLbWaY6fOJkIO3tOx3tTCYh3ycv/E1cSxZE+cCSzyCB2Y1pJ
         AzFW+xZRhm9SAdTxIDJ47VnNVK1QQFTelJYENSIRPAXkPtA9siC6Z2dR8W5WSi1N+DyB
         F+PczTtSaBj8Vjhllk4Op7Lh8OPwPL3aUtZPkzHC/BK3CaJeUs350Z5ZqJjo0godMN3N
         ltoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:references:cc:to:from:subject;
        bh=Yuvk6t3xcjtck80lFJpkqSrAipvEKEqTk/g7Rkga2Mk=;
        b=fX6A3XBckRCbjVe8UX+OmTmqHAFWn3+bwpbUkOc2SWzAlZqlaWcuSRTrnCWp3ZHDJa
         3lXUyvfAM1R5s9207s8Em4KNT+CB2N/CVzv0lmMlM4YE+DfvnlHZ58jnrDbUybfslEO7
         RyJTgRRQ7EcseI9eCtU7eoBaeGrUgW4zgcGL4hJq+40FdEv2kaY9HaLvtfs2tziDo14+
         eatBvhwWghB5AsuFbbg3+qMjWq1XsIcxyjCuyR+aYggiZpopIjfUtjwbLXIGSl2mhh4f
         oRkfRngPDsiUwVq+hY7pyuGlR2zBz8s2xVbb/692I3kWTYpSd1NSNIejK9p8YHRwVcTY
         GkVg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of guillaume.tucker@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=guillaume.tucker@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [46.235.227.227])
        by gmr-mx.google.com with ESMTPS id l3si227851wmg.3.2020.12.07.01.38.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 07 Dec 2020 01:38:29 -0800 (PST)
Received-SPF: pass (google.com: domain of guillaume.tucker@collabora.com designates 46.235.227.227 as permitted sender) client-ip=46.235.227.227;
Received: from [IPv6:2a00:5f00:102:0:8cc5:dff:fe97:23e8] (unknown [IPv6:2a00:5f00:102:0:8cc5:dff:fe97:23e8])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: gtucker)
	by bhuna.collabora.co.uk (Postfix) with ESMTPSA id B2C131F44EBD;
	Mon,  7 Dec 2020 09:38:28 +0000 (GMT)
Subject: Re: next/master build: 229 builds: 13 failed, 216 passed, 63 errors,
 131 warnings (next-20201130)
From: Guillaume Tucker <guillaume.tucker@collabora.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Kees Cook <keescook@chromium.org>,
 "kernelci-results@groups.io" <kernelci-results@groups.io>, kernelci@groups.io
References: <5fc5476c.1c69fb81.43fd4.49d0@mx.google.com>
 <CAKwvOdnuaP6-tpsWiVzGLvNXHOsZxAgnYr+UjUArsU6RGWuLEQ@mail.gmail.com>
 <9ebc5cc1-e871-6c03-e420-549ce2c31c70@collabora.com>
Message-ID: <78e41d71-20d4-b8c4-35da-588a02bf3a8c@collabora.com>
Date: Mon, 7 Dec 2020 09:38:26 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.2
MIME-Version: 1.0
In-Reply-To: <9ebc5cc1-e871-6c03-e420-549ce2c31c70@collabora.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: guillaume.tucker@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of guillaume.tucker@collabora.com designates
 46.235.227.227 as permitted sender) smtp.mailfrom=guillaume.tucker@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
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

+kernelci-results@groups.io and kernelci@groups.io

On 07/12/2020 09:36, Guillaume Tucker wrote:
> On 30/11/2020 19:41, Nick Desaulniers wrote:
>> Nice, we got our email reports back!  Looks like we have some cleanup
>> to do with arm32+lld, though I think those all might be addressed by:
>> https://www.armlinux.org.uk/developer/patches/viewpatch.php?id=3D9025/1
>>
>> Nathan's patches for orphan section warnings from lld 10 must have
>> been merged up by Kees.  Now to fix up the rest of these warnings.
>=20
> Great, thanks for confirming it's working again for you now.
>=20
> To avoid such issues in the future, it seems we should have a way
> to truncate very long emails.  That would mean striking the right
> balance between missing out some useful data in the emails and
> not having emails delivered at all due to their size.
>=20
> We should dig out the big emails that didn't get delivered and
> compare their size with this one to get an idea of the margin we
> have.  Since the number of builds is a known quantity, we could
> then define a maximum number of errors and warnings to show per
> build, with something like "[...] 1234 more warnings" and a link
> to the full results.  Do you think that could break your
> workflow?
>=20
> We should also be able to stop mentioning builds that passed
> with "PASS, 0 errors, 0 warnings, 0 section mismatches" now as
> they'll appear on the web dashboard anyway.  That's what we've
> been doing with test results for several months and it's working
> well.
>=20
> Thanks,
> Guillaume
>=20
>> On Mon, Nov 30, 2020 at 11:26 AM kernelci.org bot <bot@kernelci.org> wro=
te:
>>>
>>> next/master build: 229 builds: 13 failed, 216 passed, 63 errors, 131 wa=
rnings (next-20201130)
>>>
>>> Full Build Summary: https://kernelci.org/build/next/branch/master/kerne=
l/next-20201130/
>>>
>>> Tree: next
>>> Branch: master
>>> Git Describe: next-20201130
>>> Git Commit: c6b11acc5f85b6e11d128fad8e0b7b223aa7e33f
>>> Git URL: https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-nex=
t.git
>>> Built: 7 unique architectures
>>>
>>> Build Failures Detected:
>>>
>>> arm64:
>>>     allmodconfig: (clang-10) FAIL
>>>     defconfig: (clang-10) FAIL
>>>     defconfig+CONFIG_ARM64_64K_PAGES=3Dy: (clang-10) FAIL
>>>     allmodconfig: (clang-11) FAIL
>>>     allmodconfig: (gcc-8) FAIL
>>>
>>> arm:
>>>     allmodconfig: (clang-10) FAIL
>>>     aspeed_g5_defconfig: (clang-10) FAIL
>>>     allmodconfig: (clang-11) FAIL
>>>     allmodconfig: (gcc-8) FAIL
>>>     milbeaut_m10v_defconfig: (gcc-8) FAIL
>>>     mini2440_defconfig: (gcc-8) FAIL
>>>     s3c2410_defconfig: (gcc-8) FAIL
>>>
>>> x86_64:
>>>     allmodconfig: (gcc-8) FAIL
>>>
>>> Errors and Warnings Detected:
>>>
>>> arc:
>>>
>>> arm64:
>>>     allmodconfig (gcc-8): 1 error, 1 warning
>>>     allmodconfig (clang-10): 1 error, 11 warnings
>>>     allmodconfig (clang-11): 1 error, 11 warnings
>>>     defconfig (gcc-8): 1 warning
>>>     defconfig (clang-10): 1 error, 5 warnings
>>>     defconfig (clang-11): 6 warnings
>>>     defconfig+CONFIG_ARM64_64K_PAGES=3Dy (clang-10): 1 error, 5 warning=
s
>>>     defconfig+CONFIG_ARM64_64K_PAGES=3Dy (gcc-8): 1 warning
>>>     defconfig+CONFIG_ARM64_64K_PAGES=3Dy (clang-11): 6 warnings
>>>     defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (gcc-8): 1 warning
>>>     defconfig+CONFIG_RANDOMIZE_BASE=3Dy (gcc-8): 1 warning
>>>
>>> arm:
>>>     allmodconfig (clang-11): 21 errors
>>>     allmodconfig (gcc-8): 1 error
>>>     allmodconfig (clang-10): 20 errors, 19 warnings
>>>     aspeed_g5_defconfig (clang-10): 13 errors
>>>     axm55xx_defconfig (gcc-8): 1 warning
>>>     exynos_defconfig (gcc-8): 1 warning
>>>     keystone_defconfig (gcc-8): 1 warning
>>>     mini2440_defconfig (gcc-8): 1 error
>>>     mmp2_defconfig (gcc-8): 3 warnings
>>>     multi_v7_defconfig (gcc-8): 4 warnings
>>>     multi_v7_defconfig (clang-11): 5 warnings
>>>     multi_v7_defconfig (clang-10): 5 warnings
>>>     multi_v7_defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (gcc-8): 4 warnings
>>>     multi_v7_defconfig+CONFIG_EFI=3Dy+CONFIG_ARM_LPAE=3Dy (gcc-8): 5 wa=
rnings
>>>     multi_v7_defconfig+CONFIG_SMP=3Dn (gcc-8): 4 warnings
>>>     mvebu_v7_defconfig (gcc-8): 1 warning
>>>     omap1_defconfig (gcc-8): 2 warnings
>>>     pxa168_defconfig (gcc-8): 3 warnings
>>>     pxa910_defconfig (gcc-8): 3 warnings
>>>     s3c2410_defconfig (gcc-8): 1 error
>>>     tegra_defconfig (gcc-8): 1 warning
>>>
>>> i386:
>>>
>>> mips:
>>>     loongson3_defconfig (gcc-8): 1 warning
>>>     malta_qemu_32r6_defconfig (gcc-8): 1 warning
>>>     maltaup_xpa_defconfig (gcc-8): 1 warning
>>>     nlm_xlr_defconfig (gcc-8): 1 warning
>>>     rm200_defconfig (gcc-8): 1 warning
>>>     xway_defconfig (gcc-8): 2 warnings
>>>
>>> riscv:
>>>     defconfig+CONFIG_EFI=3Dn (clang-11): 1 warning
>>>     rv32_defconfig (gcc-8): 6 warnings
>>>
>>> x86_64:
>>>     allmodconfig (gcc-8): 1 error, 1 warning
>>>     tinyconfig (gcc-8): 1 warning
>>>     x86_64_defconfig (clang-10): 2 warnings
>>>     x86_64_defconfig (clang-11): 2 warnings
>>>
>>> Errors summary:
>>>
>>>     3    ERROR: modpost: "device_is_bound" [drivers/clk/imx/clk-imx-scu=
.ko] undefined!
>>>     2    ld.lld: error: unknown argument '--be8'
>>>     2    ld.lld: error: init/main.o:(.rodata.str1.1): offset is outside=
 the section
>>>     2    ld.lld: error: init/init_task.o:(.rodata.str1.1): offset is ou=
tside the section
>>>     2    ld.lld: error: init/do_mounts.o:(.rodata.str1.1): offset is ou=
tside the section
>>>     2    ld.lld: error: arch/arm/vfp/vfpmodule.o:(.rodata.str1.1): offs=
et is outside the section
>>>     2    ld.lld: error: arch/arm/mm/mmu.o:(.rodata.str1.1): offset is o=
utside the section
>>>     2    ld.lld: error: arch/arm/mm/init.o:(.rodata.str1.1): offset is =
outside the section
>>>     2    ld.lld: error: arch/arm/mm/flush.o:(.rodata.str1.1): offset is=
 outside the section
>>>     2    ld.lld: error: arch/arm/mm/dma-mapping.o:(.rodata.str1.1): off=
set is outside the section
>>>     2    ld.lld: error: arch/arm/mach-at91/pm.o:(.rodata.str1.1): offse=
t is outside the section
>>>     2    ld.lld: error: arch/arm/kernel/elf.o:(__ksymtab_strings): offs=
et is outside the section
>>>     2    ERROR: modpost: "__field_overflow" [drivers/net/ipa/ipa.ko] un=
defined!
>>>     1    ld.lld: error: init/version.o:(__ksymtab_strings): offset is o=
utside the section
>>>     1    ld.lld: error: init/version.o:(.rodata.str1.1): offset is outs=
ide the section
>>>     1    ld.lld: error: arch/arm/probes/decode-arm.o:(__ksymtab_strings=
): offset is outside the section
>>>     1    ld.lld: error: arch/arm/probes/decode-arm.o:(.rodata.str1.1): =
offset is outside the section
>>>     1    ld.lld: error: arch/arm/mm/proc-syms.o:(__ksymtab_strings): of=
fset is outside the section
>>>     1    ld.lld: error: arch/arm/mm/ioremap.o:(__ksymtab_strings): offs=
et is outside the section
>>>     1    ld.lld: error: arch/arm/mm/ioremap.o:(.rodata.str1.1): offset =
is outside the section
>>>     1    ld.lld: error: arch/arm/mm/iomap.o:(__ksymtab_strings): offset=
 is outside the section
>>>     1    ld.lld: error: arch/arm/mm/iomap.o:(.rodata.str1.1): offset is=
 outside the section
>>>     1    ld.lld: error: arch/arm/mach-mmp/sram.o:(.rodata.str1.1): offs=
et is outside the section
>>>     1    ld.lld: error: arch/arm/mach-mmp/common.o:(__ksymtab_strings):=
 offset is outside the section
>>>     1    ld.lld: error: arch/arm/mach-cns3xxx/pm.o:(__ksymtab_strings):=
 offset is outside the section
>>>     1    ld.lld: error: arch/arm/mach-cns3xxx/pm.o:(.rodata.str1.1): of=
fset is outside the section
>>>     1    ld.lld: error: arch/arm/kernel/reboot.o:(.rodata.str1.1): offs=
et is outside the section
>>>     1    ld.lld: error: arch/arm/kernel/process.o:(.rodata.str1.1): off=
set is outside the section
>>>     1    ld.lld: error: arch/arm/kernel/opcodes.o:(.rodata.str1.1): off=
set is outside the section
>>>     1    ld.lld: error: arch/arm/common/mcpm_entry.o:(.rodata.str1.1): =
offset is outside the section
>>>     1    ld.lld: error: arch/arm/common/krait-l2-accessors.o:(__ksymtab=
_strings): offset is outside the section
>>>     1    ld.lld: error: arch/arm/common/krait-l2-accessors.o:(.rodata.s=
tr1.1): offset is outside the section
>>>     1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37414): re=
location R_ARM_PREL31 out of range: 2135598372 is not in [-1073741824, 1073=
741823]
>>>     1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37374): re=
location R_ARM_PREL31 out of range: 2135598532 is not in [-1073741824, 1073=
741823]
>>>     1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37364): re=
location R_ARM_PREL31 out of range: 2135598548 is not in [-1073741824, 1073=
741823]
>>>     1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37314): re=
location R_ARM_PREL31 out of range: 2135598628 is not in [-1073741824, 1073=
741823]
>>>     1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37304): re=
location R_ARM_PREL31 out of range: 2135598644 is not in [-1073741824, 1073=
741823]
>>>     1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x372EC): re=
location R_ARM_PREL31 out of range: 2135598668 is not in [-1073741824, 1073=
741823]
>>>     1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x372D4): re=
location R_ARM_PREL31 out of range: 2135598692 is not in [-1073741824, 1073=
741823]
>>>     1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x372A4): re=
location R_ARM_PREL31 out of range: 2135598740 is not in [-1073741824, 1073=
741823]
>>>     1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37274): re=
location R_ARM_PREL31 out of range: 2135598788 is not in [-1073741824, 1073=
741823]
>>>     1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x3726C): re=
location R_ARM_PREL31 out of range: 2135598796 is not in [-1073741824, 1073=
741823]
>>>     1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x3722C): re=
location R_ARM_PREL31 out of range: 2135598860 is not in [-1073741824, 1073=
741823]
>>>     1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37214): re=
location R_ARM_PREL31 out of range: 2135598884 is not in [-1073741824, 1073=
741823]
>>>     1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x34C28): re=
location R_ARM_PREL31 out of range: 2135543056 is not in [-1073741824, 1073=
741823]
>>>     1    arch/arm/mach-s3c/mach-mini2440.c:47:10: fatal error: linux/mt=
d/nand_ecc.h: No such file or directory
>>>     1    arch/arm/mach-s3c/mach-bast.c:27:10: fatal error: linux/mtd/na=
nd_ecc.h: No such file or directory
>>>     1    ERROR: modpost: "crypto_aegis128_update_simd" [crypto/aegis128=
.ko] undefined!
>>>     1    ./arch/arm/include/asm/kasan.h:26:11: error: expected =E2=80=
=98;=E2=80=99 before =E2=80=98void=E2=80=99
>>>
>>> Warnings summary:
>>>
>>>     19   ld.lld: warning: lld uses blx instruction, no object with arch=
itecture supporting feature detected
>>>     18   1 warning generated.
>>>     12   drivers/hwmon/pwm-fan.c:167:22: warning: unused variable =E2=
=80=98ctx=E2=80=99 [-Wunused-variable]
>>>     9    arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bri=
dge): /soc/apb@d4000000/spi@d4037000: incorrect #size-cells for SPI bus
>>>     9    arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bri=
dge): /soc/apb@d4000000/spi@d4037000: incorrect #address-cells for SPI bus
>>>     9    arch/arm/boot/dts/mmp2-olpc-xo-1-75.dtb: Warning (spi_bus_reg)=
: Failed prerequisite 'spi_bus_bridge'
>>>     8    drivers/hwmon/pwm-fan.c:167:22: warning: unused variable 'ctx'=
 [-Wunused-variable]
>>>     6    drivers/remoteproc/qcom_sysmon.c:551:11: warning: variable 'ac=
ked' is used uninitialized whenever 'if' condition is false [-Wsometimes-un=
initialized]
>>>     6    drivers/remoteproc/qcom_sysmon.c:536:12: note: initialize the =
variable 'acked' to silence this warning
>>>     5    lib/cpumask.c:222:17: warning: cast from pointer to integer of=
 different size [-Wpointer-to-int-cast]
>>>     2    fs/nfsd/nfs3xdr.c:299:6: warning: variable 'err' is used unini=
tialized whenever 'if' condition is false [-Wsometimes-uninitialized]
>>>     2    drivers/mtd/nand/raw/r852.c:874:24: warning: variable 'dev' is=
 uninitialized when used here [-Wuninitialized]
>>>     2    drivers/mtd/nand/raw/r852.c:847:25: note: initialize the varia=
ble 'dev' to silence this warning
>>>     2    drivers/gpu/drm/ttm/ttm_pool.c:243:21: warning: =E2=80=98ttm_p=
ool_type_count=E2=80=99 defined but not used [-Wunused-function]
>>>     2    aarch64-linux-gnu-strip: warning: /scratch/linux/_modules_/lib=
/modules/5.10.0-rc5-next-20201130/kernel/drivers/media/tuners/tuner-types.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
>>>     2    <stdin>:830:2: warning: #warning syscall fstat64 not implement=
ed [-Wcpp]
>>>     2    <stdin>:1511:2: warning: #warning syscall clone3 not implement=
ed [-Wcpp]
>>>     2    <stdin>:1127:2: warning: #warning syscall fstatat64 not implem=
ented [-Wcpp]
>>>     1    {standard input}:39: Warning: macro instruction expanded into =
multiple instructions
>>>     1    fs/nfsd/nfs3xdr.c:293:12: note: initialize the variable 'err' =
to silence this warning
>>>     1    drivers/net/ethernet/lantiq_etop.c:281:4: warning: ignoring re=
turn value of =E2=80=98request_irq=E2=80=99, declared with attribute warn_u=
nused_result [-Wunused-result]
>>>     1    drivers/net/ethernet/lantiq_etop.c:273:4: warning: ignoring re=
turn value of =E2=80=98request_irq=E2=80=99, declared with attribute warn_u=
nused_result [-Wunused-result]
>>>     1    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objto=
ol: eb_prefault_relocations()+0xc6: stack state mismatch: cfa1=3D7+8 cfa2=
=3D-1+0
>>>     1    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objto=
ol: eb_prefault_relocations()+0xb8: stack state mismatch: cfa1=3D7+8 cfa2=
=3D-1+0
>>>     1    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objto=
ol: eb_copy_relocations()+0x259: stack state mismatch: cfa1=3D7+104 cfa2=3D=
-1+0
>>>     1    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objto=
ol: eb_copy_relocations()+0x249: stack state mismatch: cfa1=3D7+104 cfa2=3D=
-1+0
>>>     1    drivers/block/paride/bpck.c:32: warning: "PC" redefined
>>>     1    clang: warning: argument unused during compilation: '-no-pie' =
[-Wunused-command-line-argument]
>>>     1    arch/arm/mach-omap1/board-h2.c:347:34: warning: =E2=80=98isp13=
01_gpiod_table=E2=80=99 defined but not used [-Wunused-variable]
>>>     1    arch/arm/mach-omap1/board-ams-delta.c:462:12: warning: =E2=80=
=98ams_delta_camera_power=E2=80=99 defined but not used [-Wunused-function]
>>>     1    12: note: initialize the variable 'err' to silence this warnin=
g
>>>     1    .config:1181:warning: override: UNWINDER_GUESS changes choice =
state
>>>
>>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D
>>>
>>> Detailed per-defconfig build reports:
>>>
>>> -----------------------------------------------------------------------=
---------
>>> 32r2el_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> allmodconfig (arm, clang-11) =E2=80=94 FAIL, 21 errors, 0 warnings, 0 s=
ection mismatches
>>>
>>> Errors:
>>>     ld.lld: error: unknown argument '--be8'
>>>     ld.lld: error: arch/arm/common/krait-l2-accessors.o:(.rodata.str1.1=
): offset is outside the section
>>>     ld.lld: error: init/version.o:(.rodata.str1.1): offset is outside t=
he section
>>>     ld.lld: error: arch/arm/kernel/elf.o:(__ksymtab_strings): offset is=
 outside the section
>>>     ld.lld: error: arch/arm/vfp/vfpmodule.o:(.rodata.str1.1): offset is=
 outside the section
>>>     ld.lld: error: arch/arm/kernel/opcodes.o:(.rodata.str1.1): offset i=
s outside the section
>>>     ld.lld: error: init/init_task.o:(.rodata.str1.1): offset is outside=
 the section
>>>     ld.lld: error: arch/arm/mach-cns3xxx/pm.o:(.rodata.str1.1): offset =
is outside the section
>>>     ld.lld: error: arch/arm/mach-at91/pm.o:(.rodata.str1.1): offset is =
outside the section
>>>     ld.lld: error: arch/arm/kernel/reboot.o:(.rodata.str1.1): offset is=
 outside the section
>>>     ld.lld: error: arch/arm/mm/init.o:(.rodata.str1.1): offset is outsi=
de the section
>>>     ld.lld: error: init/main.o:(.rodata.str1.1): offset is outside the =
section
>>>     ld.lld: error: arch/arm/kernel/process.o:(.rodata.str1.1): offset i=
s outside the section
>>>     ld.lld: error: arch/arm/mm/iomap.o:(.rodata.str1.1): offset is outs=
ide the section
>>>     ld.lld: error: init/do_mounts.o:(.rodata.str1.1): offset is outside=
 the section
>>>     ld.lld: error: arch/arm/probes/decode-arm.o:(.rodata.str1.1): offse=
t is outside the section
>>>     ld.lld: error: arch/arm/mm/ioremap.o:(.rodata.str1.1): offset is ou=
tside the section
>>>     ld.lld: error: arch/arm/mm/flush.o:(.rodata.str1.1): offset is outs=
ide the section
>>>     ld.lld: error: arch/arm/mm/dma-mapping.o:(.rodata.str1.1): offset i=
s outside the section
>>>     ld.lld: error: arch/arm/mm/proc-syms.o:(__ksymtab_strings): offset =
is outside the section
>>>     ld.lld: error: arch/arm/mm/mmu.o:(.rodata.str1.1): offset is outsid=
e the section
>>>
>>> -----------------------------------------------------------------------=
---------
>>> allmodconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 0 warnings, 0 sectio=
n mismatches
>>>
>>> Errors:
>>>     ./arch/arm/include/asm/kasan.h:26:11: error: expected =E2=80=98;=E2=
=80=99 before =E2=80=98void=E2=80=99
>>>
>>> -----------------------------------------------------------------------=
---------
>>> allmodconfig (arm64, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 secti=
on mismatches
>>>
>>> Errors:
>>>     ERROR: modpost: "device_is_bound" [drivers/clk/imx/clk-imx-scu.ko] =
undefined!
>>>
>>> Warnings:
>>>     drivers/hwmon/pwm-fan.c:167:22: warning: unused variable =E2=80=98c=
tx=E2=80=99 [-Wunused-variable]
>>>
>>> -----------------------------------------------------------------------=
---------
>>> allmodconfig (x86_64, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sect=
ion mismatches
>>>
>>> Errors:
>>>     ERROR: modpost: "crypto_aegis128_update_simd" [crypto/aegis128.ko] =
undefined!
>>>
>>> Warnings:
>>>     drivers/hwmon/pwm-fan.c:167:22: warning: unused variable =E2=80=98c=
tx=E2=80=99 [-Wunused-variable]
>>>
>>> -----------------------------------------------------------------------=
---------
>>> allmodconfig (arm, clang-10) =E2=80=94 FAIL, 20 errors, 19 warnings, 0 =
section mismatches
>>>
>>> Errors:
>>>     ld.lld: error: arch/arm/common/krait-l2-accessors.o:(__ksymtab_stri=
ngs): offset is outside the section
>>>     ld.lld: error: unknown argument '--be8'
>>>     ld.lld: error: init/version.o:(__ksymtab_strings): offset is outsid=
e the section
>>>     ld.lld: error: arch/arm/kernel/elf.o:(__ksymtab_strings): offset is=
 outside the section
>>>     ld.lld: error: arch/arm/vfp/vfpmodule.o:(.rodata.str1.1): offset is=
 outside the section
>>>     ld.lld: error: arch/arm/probes/decode-arm.o:(__ksymtab_strings): of=
fset is outside the section
>>>     ld.lld: error: init/init_task.o:(.rodata.str1.1): offset is outside=
 the section
>>>     ld.lld: error: arch/arm/common/mcpm_entry.o:(.rodata.str1.1): offse=
t is outside the section
>>>     ld.lld: error: arch/arm/mach-cns3xxx/pm.o:(__ksymtab_strings): offs=
et is outside the section
>>>     ld.lld: error: init/main.o:(.rodata.str1.1): offset is outside the =
section
>>>     ld.lld: error: arch/arm/mach-at91/pm.o:(.rodata.str1.1): offset is =
outside the section
>>>     ld.lld: error: arch/arm/mm/iomap.o:(__ksymtab_strings): offset is o=
utside the section
>>>     ld.lld: error: arch/arm/mm/init.o:(.rodata.str1.1): offset is outsi=
de the section
>>>     ld.lld: error: arch/arm/mach-mmp/common.o:(__ksymtab_strings): offs=
et is outside the section
>>>     ld.lld: error: init/do_mounts.o:(.rodata.str1.1): offset is outside=
 the section
>>>     ld.lld: error: arch/arm/mm/ioremap.o:(__ksymtab_strings): offset is=
 outside the section
>>>     ld.lld: error: arch/arm/mm/dma-mapping.o:(.rodata.str1.1): offset i=
s outside the section
>>>     ld.lld: error: arch/arm/mm/flush.o:(.rodata.str1.1): offset is outs=
ide the section
>>>     ld.lld: error: arch/arm/mach-mmp/sram.o:(.rodata.str1.1): offset is=
 outside the section
>>>     ld.lld: error: arch/arm/mm/mmu.o:(.rodata.str1.1): offset is outsid=
e the section
>>>
>>> Warnings:
>>>     ld.lld: warning: lld uses blx instruction, no object with architect=
ure supporting feature detected
>>>     ld.lld: warning: lld uses blx instruction, no object with architect=
ure supporting feature detected
>>>     ld.lld: warning: lld uses blx instruction, no object with architect=
ure supporting feature detected
>>>     ld.lld: warning: lld uses blx instruction, no object with architect=
ure supporting feature detected
>>>     ld.lld: warning: lld uses blx instruction, no object with architect=
ure supporting feature detected
>>>     ld.lld: warning: lld uses blx instruction, no object with architect=
ure supporting feature detected
>>>     ld.lld: warning: lld uses blx instruction, no object with architect=
ure supporting feature detected
>>>     ld.lld: warning: lld uses blx instruction, no object with architect=
ure supporting feature detected
>>>     ld.lld: warning: lld uses blx instruction, no object with architect=
ure supporting feature detected
>>>     ld.lld: warning: lld uses blx instruction, no object with architect=
ure supporting feature detected
>>>     ld.lld: warning: lld uses blx instruction, no object with architect=
ure supporting feature detected
>>>     ld.lld: warning: lld uses blx instruction, no object with architect=
ure supporting feature detected
>>>     ld.lld: warning: lld uses blx instruction, no object with architect=
ure supporting feature detected
>>>     ld.lld: warning: lld uses blx instruction, no object with architect=
ure supporting feature detected
>>>     ld.lld: warning: lld uses blx instruction, no object with architect=
ure supporting feature detected
>>>     ld.lld: warning: lld uses blx instruction, no object with architect=
ure supporting feature detected
>>>     ld.lld: warning: lld uses blx instruction, no object with architect=
ure supporting feature detected
>>>     ld.lld: warning: lld uses blx instruction, no object with architect=
ure supporting feature detected
>>>     ld.lld: warning: lld uses blx instruction, no object with architect=
ure supporting feature detected
>>>
>>> -----------------------------------------------------------------------=
---------
>>> allmodconfig (arm64, clang-10) =E2=80=94 FAIL, 1 error, 11 warnings, 0 =
section mismatches
>>>
>>> Errors:
>>>     ERROR: modpost: "device_is_bound" [drivers/clk/imx/clk-imx-scu.ko] =
undefined!
>>>
>>> Warnings:
>>>     fs/nfsd/nfs3xdr.c:299:6: warning: variable 'err' is used uninitiali=
zed whenever 'if' condition is false [-Wsometimes-uninitialized]
>>>     12: note: initialize the variable 'err' to silence this warning
>>>     1 warning generated.
>>>     drivers/remoteproc/qcom_sysmon.c:551:11: warning: variable 'acked' =
is used uninitialized whenever 'if' condition is false [-Wsometimes-uniniti=
alized]
>>>     drivers/remoteproc/qcom_sysmon.c:536:12: note: initialize the varia=
ble 'acked' to silence this warning
>>>     1 warning generated.
>>>     drivers/mtd/nand/raw/r852.c:874:24: warning: variable 'dev' is unin=
itialized when used here [-Wuninitialized]
>>>     drivers/mtd/nand/raw/r852.c:847:25: note: initialize the variable '=
dev' to silence this warning
>>>     1 warning generated.
>>>     drivers/hwmon/pwm-fan.c:167:22: warning: unused variable 'ctx' [-Wu=
nused-variable]
>>>     1 warning generated.
>>>
>>> -----------------------------------------------------------------------=
---------
>>> allmodconfig (arm64, clang-11) =E2=80=94 FAIL, 1 error, 11 warnings, 0 =
section mismatches
>>>
>>> Errors:
>>>     ERROR: modpost: "device_is_bound" [drivers/clk/imx/clk-imx-scu.ko] =
undefined!
>>>
>>> Warnings:
>>>     fs/nfsd/nfs3xdr.c:299:6: warning: variable 'err' is used uninitiali=
zed whenever 'if' condition is false [-Wsometimes-uninitialized]
>>>     fs/nfsd/nfs3xdr.c:293:12: note: initialize the variable 'err' to si=
lence this warning
>>>     1 warning generated.
>>>     drivers/remoteproc/qcom_sysmon.c:551:11: warning: variable 'acked' =
is used uninitialized whenever 'if' condition is false [-Wsometimes-uniniti=
alized]
>>>     drivers/remoteproc/qcom_sysmon.c:536:12: note: initialize the varia=
ble 'acked' to silence this warning
>>>     1 warning generated.
>>>     drivers/mtd/nand/raw/r852.c:874:24: warning: variable 'dev' is unin=
itialized when used here [-Wuninitialized]
>>>     drivers/mtd/nand/raw/r852.c:847:25: note: initialize the variable '=
dev' to silence this warning
>>>     1 warning generated.
>>>     drivers/hwmon/pwm-fan.c:167:22: warning: unused variable 'ctx' [-Wu=
nused-variable]
>>>     1 warning generated.
>>>
>>> -----------------------------------------------------------------------=
---------
>>> allnoconfig (arm, clang-11) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> allnoconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> allnoconfig (x86_64, clang-11) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> allnoconfig (arm, clang-10) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> allnoconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> allnoconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> allnoconfig (x86_64, clang-10) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> allnoconfig (riscv, clang-11) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> allnoconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> allnoconfig (arm64, clang-11) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> allnoconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> allnoconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> allnoconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> allnoconfig (arm64, clang-10) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> am200epdkit_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings=
, 0 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> ar7_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> aspeed_g4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> aspeed_g5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> aspeed_g5_defconfig (arm, clang-11) =E2=80=94 PASS, 0 errors, 0 warning=
s, 0 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> aspeed_g5_defconfig (arm, clang-10) =E2=80=94 FAIL, 13 errors, 0 warnin=
gs, 0 section mismatches
>>>
>>> Errors:
>>>     ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x34C28): relocat=
ion R_ARM_PREL31 out of range: 2135543056 is not in [-1073741824, 107374182=
3]
>>>     ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37214): relocat=
ion R_ARM_PREL31 out of range: 2135598884 is not in [-1073741824, 107374182=
3]
>>>     ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x3722C): relocat=
ion R_ARM_PREL31 out of range: 2135598860 is not in [-1073741824, 107374182=
3]
>>>     ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x3726C): relocat=
ion R_ARM_PREL31 out of range: 2135598796 is not in [-1073741824, 107374182=
3]
>>>     ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37274): relocat=
ion R_ARM_PREL31 out of range: 2135598788 is not in [-1073741824, 107374182=
3]
>>>     ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x372A4): relocat=
ion R_ARM_PREL31 out of range: 2135598740 is not in [-1073741824, 107374182=
3]
>>>     ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x372D4): relocat=
ion R_ARM_PREL31 out of range: 2135598692 is not in [-1073741824, 107374182=
3]
>>>     ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x372EC): relocat=
ion R_ARM_PREL31 out of range: 2135598668 is not in [-1073741824, 107374182=
3]
>>>     ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37304): relocat=
ion R_ARM_PREL31 out of range: 2135598644 is not in [-1073741824, 107374182=
3]
>>>     ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37314): relocat=
ion R_ARM_PREL31 out of range: 2135598628 is not in [-1073741824, 107374182=
3]
>>>     ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37364): relocat=
ion R_ARM_PREL31 out of range: 2135598548 is not in [-1073741824, 107374182=
3]
>>>     ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37374): relocat=
ion R_ARM_PREL31 out of range: 2135598532 is not in [-1073741824, 107374182=
3]
>>>     ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37414): relocat=
ion R_ARM_PREL31 out of range: 2135598372 is not in [-1073741824, 107374182=
3]
>>>
>>> -----------------------------------------------------------------------=
---------
>>> assabet_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> at91_dt_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> ath25_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> ath79_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> axm55xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches
>>>
>>> Warnings:
>>>     lib/cpumask.c:222:17: warning: cast from pointer to integer of diff=
erent size [-Wpointer-to-int-cast]
>>>
>>> -----------------------------------------------------------------------=
---------
>>> axs103_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> axs103_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> badge4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> bcm2835_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> bcm47xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> bcm63xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> bigsur_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> bmips_be_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> bmips_stb_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> capcella_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> cavium_octeon_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warni=
ngs, 0 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> cerfcube_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> ci20_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> clps711x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> cm_x300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> cns3420vb_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> cobalt_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> colibri_pxa270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warni=
ngs, 0 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> colibri_pxa300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warni=
ngs, 0 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> collie_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> corgi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> cu1000-neo_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings=
, 0 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> cu1830-neo_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings=
, 0 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> davinci_all_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings=
, 0 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> db1xxx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> decstation_64_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warni=
ngs, 0 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> decstation_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings=
, 0 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> decstation_r4k_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warn=
ings, 0 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> defconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches
>>>
>>> Warnings:
>>>     drivers/hwmon/pwm-fan.c:167:22: warning: unused variable =E2=80=98c=
tx=E2=80=99 [-Wunused-variable]
>>>
>>> -----------------------------------------------------------------------=
---------
>>> defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> defconfig (arm64, clang-10) =E2=80=94 FAIL, 1 error, 5 warnings, 0 sect=
ion mismatches
>>>
>>> Errors:
>>>     ERROR: modpost: "__field_overflow" [drivers/net/ipa/ipa.ko] undefin=
ed!
>>>
>>> Warnings:
>>>     drivers/hwmon/pwm-fan.c:167:22: warning: unused variable 'ctx' [-Wu=
nused-variable]
>>>     1 warning generated.
>>>     drivers/remoteproc/qcom_sysmon.c:551:11: warning: variable 'acked' =
is used uninitialized whenever 'if' condition is false [-Wsometimes-uniniti=
alized]
>>>     drivers/remoteproc/qcom_sysmon.c:536:12: note: initialize the varia=
ble 'acked' to silence this warning
>>>     1 warning generated.
>>>
>>> -----------------------------------------------------------------------=
---------
>>> defconfig (arm64, clang-11) =E2=80=94 PASS, 0 errors, 6 warnings, 0 sec=
tion mismatches
>>>
>>> Warnings:
>>>     drivers/hwmon/pwm-fan.c:167:22: warning: unused variable 'ctx' [-Wu=
nused-variable]
>>>     1 warning generated.
>>>     drivers/remoteproc/qcom_sysmon.c:551:11: warning: variable 'acked' =
is used uninitialized whenever 'if' condition is false [-Wsometimes-uniniti=
alized]
>>>     drivers/remoteproc/qcom_sysmon.c:536:12: note: initialize the varia=
ble 'acked' to silence this warning
>>>     1 warning generated.
>>>     aarch64-linux-gnu-strip: warning: /scratch/linux/_modules_/lib/modu=
les/5.10.0-rc5-next-20201130/kernel/drivers/media/tuners/tuner-types.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
>>>
>>> -----------------------------------------------------------------------=
---------
>>> defconfig+CONFIG_ARM64_64K_PAGES=3Dy (arm64, clang-10) =E2=80=94 FAIL, =
1 error, 5 warnings, 0 section mismatches
>>>
>>> Errors:
>>>     ERROR: modpost: "__field_overflow" [drivers/net/ipa/ipa.ko] undefin=
ed!
>>>
>>> Warnings:
>>>     drivers/hwmon/pwm-fan.c:167:22: warning: unused variable 'ctx' [-Wu=
nused-variable]
>>>     1 warning generated.
>>>     drivers/remoteproc/qcom_sysmon.c:551:11: warning: variable 'acked' =
is used uninitialized whenever 'if' condition is false [-Wsometimes-uniniti=
alized]
>>>     drivers/remoteproc/qcom_sysmon.c:536:12: note: initialize the varia=
ble 'acked' to silence this warning
>>>     1 warning generated.
>>>
>>> -----------------------------------------------------------------------=
---------
>>> defconfig+CONFIG_ARM64_64K_PAGES=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 e=
rrors, 1 warning, 0 section mismatches
>>>
>>> Warnings:
>>>     drivers/hwmon/pwm-fan.c:167:22: warning: unused variable =E2=80=98c=
tx=E2=80=99 [-Wunused-variable]
>>>
>>> -----------------------------------------------------------------------=
---------
>>> defconfig+CONFIG_ARM64_64K_PAGES=3Dy (arm64, clang-11) =E2=80=94 PASS, =
0 errors, 6 warnings, 0 section mismatches
>>>
>>> Warnings:
>>>     drivers/hwmon/pwm-fan.c:167:22: warning: unused variable 'ctx' [-Wu=
nused-variable]
>>>     1 warning generated.
>>>     drivers/remoteproc/qcom_sysmon.c:551:11: warning: variable 'acked' =
is used uninitialized whenever 'if' condition is false [-Wsometimes-uniniti=
alized]
>>>     drivers/remoteproc/qcom_sysmon.c:536:12: note: initialize the varia=
ble 'acked' to silence this warning
>>>     1 warning generated.
>>>     aarch64-linux-gnu-strip: warning: /scratch/linux/_modules_/lib/modu=
les/5.10.0-rc5-next-20201130/kernel/drivers/media/tuners/tuner-types.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
>>>
>>> -----------------------------------------------------------------------=
---------
>>> defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 er=
rors, 1 warning, 0 section mismatches
>>>
>>> Warnings:
>>>     drivers/hwmon/pwm-fan.c:167:22: warning: unused variable =E2=80=98c=
tx=E2=80=99 [-Wunused-variable]
>>>
>>> -----------------------------------------------------------------------=
---------
>>> defconfig+CONFIG_EFI=3Dn (riscv, clang-11) =E2=80=94 PASS, 0 errors, 1 =
warning, 0 section mismatches
>>>
>>> Warnings:
>>>     clang: warning: argument unused during compilation: '-no-pie' [-Wun=
used-command-line-argument]
>>>
>>> -----------------------------------------------------------------------=
---------
>>> defconfig+CONFIG_RANDOMIZE_BASE=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 er=
rors, 1 warning, 0 section mismatches
>>>
>>> Warnings:
>>>     drivers/hwmon/pwm-fan.c:167:22: warning: unused variable =E2=80=98c=
tx=E2=80=99 [-Wunused-variable]
>>>
>>> -----------------------------------------------------------------------=
---------
>>> dove_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> e55_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> efm32_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> ep93xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> eseries_pxa_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings=
, 0 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> exynos_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches
>>>
>>> Warnings:
>>>     drivers/hwmon/pwm-fan.c:167:22: warning: unused variable =E2=80=98c=
tx=E2=80=99 [-Wunused-variable]
>>>
>>> -----------------------------------------------------------------------=
---------
>>> ezx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> footbridge_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> fuloong2e_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> gcw0_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> gemini_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> gpr_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> h3600_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> h5000_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> hackkit_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> haps_hs_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> haps_hs_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings=
, 0 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> hisi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> hsdk_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> i386_defconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> imote2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> imx_v4_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> imx_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> integrator_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> iop32x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> ip22_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> ip27_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> ip28_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> ip32_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> ixp4xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> jazz_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> jmr3927_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> jornada720_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> keystone_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 =
section mismatches
>>>
>>> Warnings:
>>>     lib/cpumask.c:222:17: warning: cast from pointer to integer of diff=
erent size [-Wpointer-to-int-cast]
>>>
>>> -----------------------------------------------------------------------=
---------
>>> lart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> lemote2f_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> loongson1b_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings=
, 0 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> loongson1c_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings=
, 0 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> loongson3_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, =
0 section mismatches
>>>
>>> Warnings:
>>>     drivers/gpu/drm/ttm/ttm_pool.c:243:21: warning: =E2=80=98ttm_pool_t=
ype_count=E2=80=99 defined but not used [-Wunused-function]
>>>
>>> -----------------------------------------------------------------------=
---------
>>> lpc18xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> lpc32xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> lpd270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> lubbock_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> magician_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> mainstone_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> malta_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> malta_kvm_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> malta_kvm_guest_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 war=
nings, 0 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> malta_qemu_32r6_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 war=
ning, 0 section mismatches
>>>
>>> Warnings:
>>>     {standard input}:39: Warning: macro instruction expanded into multi=
ple instructions
>>>
>>> -----------------------------------------------------------------------=
---------
>>> maltaaprp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> maltasmvp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> maltasmvp_eva_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warni=
ngs, 0 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> maltaup_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> maltaup_xpa_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning=
, 0 section mismatches
>>>
>>> Warnings:
>>>     lib/cpumask.c:222:17: warning: cast from pointer to integer of diff=
erent size [-Wpointer-to-int-cast]
>>>
>>> -----------------------------------------------------------------------=
---------
>>> milbeaut_m10v_defconfig (arm, gcc-8) =E2=80=94 FAIL, 0 errors, 0 warnin=
gs, 0 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> mini2440_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 0 warnings, 0 =
section mismatches
>>>
>>> Errors:
>>>     arch/arm/mach-s3c/mach-mini2440.c:47:10: fatal error: linux/mtd/nan=
d_ecc.h: No such file or directory
>>>
>>> -----------------------------------------------------------------------=
---------
>>> mmp2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches
>>>
>>> Warnings:
>>>     arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge):=
 /soc/apb@d4000000/spi@d4037000: incorrect #address-cells for SPI bus
>>>     arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge):=
 /soc/apb@d4000000/spi@d4037000: incorrect #size-cells for SPI bus
>>>     arch/arm/boot/dts/mmp2-olpc-xo-1-75.dtb: Warning (spi_bus_reg): Fai=
led prerequisite 'spi_bus_bridge'
>>>
>>> -----------------------------------------------------------------------=
---------
>>> moxart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> mpc30x_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> mps2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> mtx1_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> multi_v4t_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> multi_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> multi_v5_defconfig (arm, clang-10) =E2=80=94 PASS, 0 errors, 0 warnings=
, 0 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> multi_v5_defconfig (arm, clang-11) =E2=80=94 PASS, 0 errors, 0 warnings=
, 0 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> multi_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0=
 section mismatches
>>>
>>> Warnings:
>>>     drivers/hwmon/pwm-fan.c:167:22: warning: unused variable =E2=80=98c=
tx=E2=80=99 [-Wunused-variable]
>>>     arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge):=
 /soc/apb@d4000000/spi@d4037000: incorrect #address-cells for SPI bus
>>>     arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge):=
 /soc/apb@d4000000/spi@d4037000: incorrect #size-cells for SPI bus
>>>     arch/arm/boot/dts/mmp2-olpc-xo-1-75.dtb: Warning (spi_bus_reg): Fai=
led prerequisite 'spi_bus_bridge'
>>>
>>> -----------------------------------------------------------------------=
---------
>>> multi_v7_defconfig (arm, clang-11) =E2=80=94 PASS, 0 errors, 5 warnings=
, 0 section mismatches
>>>
>>> Warnings:
>>>     drivers/hwmon/pwm-fan.c:167:22: warning: unused variable 'ctx' [-Wu=
nused-variable]
>>>     1 warning generated.
>>>     arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge):=
 /soc/apb@d4000000/spi@d4037000: incorrect #address-cells for SPI bus
>>>     arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge):=
 /soc/apb@d4000000/spi@d4037000: incorrect #size-cells for SPI bus
>>>     arch/arm/boot/dts/mmp2-olpc-xo-1-75.dtb: Warning (spi_bus_reg): Fai=
led prerequisite 'spi_bus_bridge'
>>>
>>> -----------------------------------------------------------------------=
---------
>>> multi_v7_defconfig (arm, clang-10) =E2=80=94 PASS, 0 errors, 5 warnings=
, 0 section mismatches
>>>
>>> Warnings:
>>>     drivers/hwmon/pwm-fan.c:167:22: warning: unused variable 'ctx' [-Wu=
nused-variable]
>>>     1 warning generated.
>>>     arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge):=
 /soc/apb@d4000000/spi@d4037000: incorrect #address-cells for SPI bus
>>>     arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge):=
 /soc/apb@d4000000/spi@d4037000: incorrect #size-cells for SPI bus
>>>     arch/arm/boot/dts/mmp2-olpc-xo-1-75.dtb: Warning (spi_bus_reg): Fai=
led prerequisite 'spi_bus_bridge'
>>>
>>> -----------------------------------------------------------------------=
---------
>>> multi_v7_defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm, gcc-8) =E2=80=94 PAS=
S, 0 errors, 4 warnings, 0 section mismatches
>>>
>>> Warnings:
>>>     drivers/hwmon/pwm-fan.c:167:22: warning: unused variable =E2=80=98c=
tx=E2=80=99 [-Wunused-variable]
>>>     arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge):=
 /soc/apb@d4000000/spi@d4037000: incorrect #address-cells for SPI bus
>>>     arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge):=
 /soc/apb@d4000000/spi@d4037000: incorrect #size-cells for SPI bus
>>>     arch/arm/boot/dts/mmp2-olpc-xo-1-75.dtb: Warning (spi_bus_reg): Fai=
led prerequisite 'spi_bus_bridge'
>>>
>>> -----------------------------------------------------------------------=
---------
>>> multi_v7_defconfig+CONFIG_EFI=3Dy+CONFIG_ARM_LPAE=3Dy (arm, gcc-8) =E2=
=80=94 PASS, 0 errors, 5 warnings, 0 section mismatches
>>>
>>> Warnings:
>>>     lib/cpumask.c:222:17: warning: cast from pointer to integer of diff=
erent size [-Wpointer-to-int-cast]
>>>     drivers/hwmon/pwm-fan.c:167:22: warning: unused variable =E2=80=98c=
tx=E2=80=99 [-Wunused-variable]
>>>     arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge):=
 /soc/apb@d4000000/spi@d4037000: incorrect #address-cells for SPI bus
>>>     arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge):=
 /soc/apb@d4000000/spi@d4037000: incorrect #size-cells for SPI bus
>>>     arch/arm/boot/dts/mmp2-olpc-xo-1-75.dtb: Warning (spi_bus_reg): Fai=
led prerequisite 'spi_bus_bridge'
>>>
>>> -----------------------------------------------------------------------=
---------
>>> multi_v7_defconfig+CONFIG_SMP=3Dn (arm, gcc-8) =E2=80=94 PASS, 0 errors=
, 4 warnings, 0 section mismatches
>>>
>>> Warnings:
>>>     drivers/hwmon/pwm-fan.c:167:22: warning: unused variable =E2=80=98c=
tx=E2=80=99 [-Wunused-variable]
>>>     arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge):=
 /soc/apb@d4000000/spi@d4037000: incorrect #address-cells for SPI bus
>>>     arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge):=
 /soc/apb@d4000000/spi@d4037000: incorrect #size-cells for SPI bus
>>>     arch/arm/boot/dts/mmp2-olpc-xo-1-75.dtb: Warning (spi_bus_reg): Fai=
led prerequisite 'spi_bus_bridge'
>>>
>>> -----------------------------------------------------------------------=
---------
>>> mv78xx0_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> mvebu_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> mvebu_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 =
section mismatches
>>>
>>> Warnings:
>>>     drivers/hwmon/pwm-fan.c:167:22: warning: unused variable =E2=80=98c=
tx=E2=80=99 [-Wunused-variable]
>>>
>>> -----------------------------------------------------------------------=
---------
>>> mxs_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> neponset_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> netwinder_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> nhk8815_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> nlm_xlp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> nlm_xlr_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 =
section mismatches
>>>
>>> Warnings:
>>>     lib/cpumask.c:222:17: warning: cast from pointer to integer of diff=
erent size [-Wpointer-to-int-cast]
>>>
>>> -----------------------------------------------------------------------=
---------
>>> nommu_k210_defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warning=
s, 0 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> nommu_virt_defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warning=
s, 0 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> nsimosci_hs_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings=
, 0 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> nsimosci_hs_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warn=
ings, 0 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> omap1_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 se=
ction mismatches
>>>
>>> Warnings:
>>>     arch/arm/mach-omap1/board-h2.c:347:34: warning: =E2=80=98isp1301_gp=
iod_table=E2=80=99 defined but not used [-Wunused-variable]
>>>     arch/arm/mach-omap1/board-ams-delta.c:462:12: warning: =E2=80=98ams=
_delta_camera_power=E2=80=99 defined but not used [-Wunused-function]
>>>
>>> -----------------------------------------------------------------------=
---------
>>> omap2plus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> omega2p_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> orion5x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> oxnas_v6_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> palmz72_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> pcm027_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> pic32mzda_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> pistachio_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> pleb_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> prima2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> pxa168_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 s=
ection mismatches
>>>
>>> Warnings:
>>>     arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge):=
 /soc/apb@d4000000/spi@d4037000: incorrect #address-cells for SPI bus
>>>     arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge):=
 /soc/apb@d4000000/spi@d4037000: incorrect #size-cells for SPI bus
>>>     arch/arm/boot/dts/mmp2-olpc-xo-1-75.dtb: Warning (spi_bus_reg): Fai=
led prerequisite 'spi_bus_bridge'
>>>
>>> -----------------------------------------------------------------------=
---------
>>> pxa255-idp_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> pxa3xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> pxa910_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 s=
ection mismatches
>>>
>>> Warnings:
>>>     arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge):=
 /soc/apb@d4000000/spi@d4037000: incorrect #address-cells for SPI bus
>>>     arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge):=
 /soc/apb@d4000000/spi@d4037000: incorrect #size-cells for SPI bus
>>>     arch/arm/boot/dts/mmp2-olpc-xo-1-75.dtb: Warning (spi_bus_reg): Fai=
led prerequisite 'spi_bus_bridge'
>>>
>>> -----------------------------------------------------------------------=
---------
>>> pxa_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> qcom_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> qi_lb60_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> rb532_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> rbtx49xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> realview_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> rm200_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches
>>>
>>> Warnings:
>>>     drivers/block/paride/bpck.c:32: warning: "PC" redefined
>>>
>>> -----------------------------------------------------------------------=
---------
>>> rpc_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> rs90_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> rt305x_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> rv32_defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 6 warnings, 0 s=
ection mismatches
>>>
>>> Warnings:
>>>     <stdin>:830:2: warning: #warning syscall fstat64 not implemented [-=
Wcpp]
>>>     <stdin>:1127:2: warning: #warning syscall fstatat64 not implemented=
 [-Wcpp]
>>>     <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-=
Wcpp]
>>>     <stdin>:830:2: warning: #warning syscall fstat64 not implemented [-=
Wcpp]
>>>     <stdin>:1127:2: warning: #warning syscall fstatat64 not implemented=
 [-Wcpp]
>>>     <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-=
Wcpp]
>>>
>>> -----------------------------------------------------------------------=
---------
>>> s3c2410_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 0 warnings, 0 s=
ection mismatches
>>>
>>> Errors:
>>>     arch/arm/mach-s3c/mach-bast.c:27:10: fatal error: linux/mtd/nand_ec=
c.h: No such file or directory
>>>
>>> -----------------------------------------------------------------------=
---------
>>> s3c6400_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> s5pv210_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> sama5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> sb1250_swarm_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnin=
gs, 0 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> shannon_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> shmobile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> simpad_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> socfpga_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> spear13xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> spear3xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> spear6xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> spitz_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> stm32_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> sunxi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> tango4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> tb0219_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> tb0226_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> tb0287_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> tct_hammer_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> tegra_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches
>>>
>>> Warnings:
>>>     drivers/gpu/drm/ttm/ttm_pool.c:243:21: warning: =E2=80=98ttm_pool_t=
ype_count=E2=80=99 defined but not used [-Wunused-function]
>>>
>>> -----------------------------------------------------------------------=
---------
>>> tinyconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> tinyconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> tinyconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> tinyconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> tinyconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches
>>>
>>> Warnings:
>>>     .config:1181:warning: override: UNWINDER_GUESS changes choice state
>>>
>>> -----------------------------------------------------------------------=
---------
>>> tinyconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> tinyconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> trizeps4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> u300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> u8500_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> vdk_hs38_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> vdk_hs38_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warning=
s, 0 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> versatile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> vexpress_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> vf610m4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> viper_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> vocore2_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> vt8500_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warning=
s, 0 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> workpad_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> x86_64_defconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> x86_64_defconfig (x86_64, clang-10) =E2=80=94 PASS, 0 errors, 2 warning=
s, 0 section mismatches
>>>
>>> Warnings:
>>>     drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: e=
b_prefault_relocations()+0xc6: stack state mismatch: cfa1=3D7+8 cfa2=3D-1+0
>>>     drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: e=
b_copy_relocations()+0x249: stack state mismatch: cfa1=3D7+104 cfa2=3D-1+0
>>>
>>> -----------------------------------------------------------------------=
---------
>>> x86_64_defconfig (x86_64, clang-11) =E2=80=94 PASS, 0 errors, 2 warning=
s, 0 section mismatches
>>>
>>> Warnings:
>>>     drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: e=
b_prefault_relocations()+0xb8: stack state mismatch: cfa1=3D7+8 cfa2=3D-1+0
>>>     drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: e=
b_copy_relocations()+0x259: stack state mismatch: cfa1=3D7+104 cfa2=3D-1+0
>>>
>>> -----------------------------------------------------------------------=
---------
>>> x86_64_defconfig+kvm_guest (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 =
warnings, 0 section mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> xcep_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> xway_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 se=
ction mismatches
>>>
>>> Warnings:
>>>     drivers/net/ethernet/lantiq_etop.c:273:4: warning: ignoring return =
value of =E2=80=98request_irq=E2=80=99, declared with attribute warn_unused=
_result [-Wunused-result]
>>>     drivers/net/ethernet/lantiq_etop.c:281:4: warning: ignoring return =
value of =E2=80=98request_irq=E2=80=99, declared with attribute warn_unused=
_result [-Wunused-result]
>>>
>>> -----------------------------------------------------------------------=
---------
>>> zeus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>>>
>>> -----------------------------------------------------------------------=
---------
>>> zx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches
>>>
>>> ---
>>> For more info write to <info@kernelci.org>
>>>
>>> --
>>> You received this message because you are subscribed to the Google Grou=
ps "Clang Built Linux" group.
>>> To unsubscribe from this group and stop receiving emails from it, send =
an email to clang-built-linux+unsubscribe@googlegroups.com.
>>> To view this discussion on the web visit https://groups.google.com/d/ms=
gid/clang-built-linux/5fc5476c.1c69fb81.43fd4.49d0%40mx.google.com.
>>
>>
>>
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/78e41d71-20d4-b8c4-35da-588a02bf3a8c%40collabora.com.
