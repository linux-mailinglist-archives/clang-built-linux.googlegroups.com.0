Return-Path: <clang-built-linux+bncBC5KPPH4YUKRBPPPW77AKGQEFHDUO7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id E91FB2D0D20
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Dec 2020 10:37:01 +0100 (CET)
Received: by mail-lf1-x13f.google.com with SMTP id a14sf2527979lfo.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Dec 2020 01:37:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607333821; cv=pass;
        d=google.com; s=arc-20160816;
        b=dr5cIEkVJcIHzvSl4JRgdAwqA/kuzKR3R5pOhe1kTmKHpZ8zp7/R3MlWBoWDBDzSOk
         CUJdqk3tLldHxyKdwZFi725+WjRtNMCJ1XlY6DEflXPyBnfGJgtkoazC8xHWolYuD61t
         Gwlp893prVmhlVLKqGLX/b59CeyttNN2JTii+sc8l6MDoF1clNBdF+R5vK9wVD++3z2y
         7S4ACR6fqmO9EWRSpHM5aTa5HoOJ/HPPus1n5ruxQuQCJXXZc7lzx29/g3FglRFLmqGz
         O+18dt9EFdiJ8jAW7X6FZpaVkiCP9Imy5cFUnqF0Fj2KY9Vy6DFX+R6m/KoF64lr9jV3
         BE/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=EVGrQkdxPH/UrbUH70o5taplf5qdOGlL8Ll890/jsY0=;
        b=I0rpOm7wX1+zpQkAeMxJdzqWisbEgmEhPLJh6dOJBpBhPTBq62VvV/Gt7KF7AturR/
         pjxVFFLd32FZYSE+pHUnQVFwssUntyLDkb5tA5C5BZrEQExvDnTrEeWh9HTHxRsFSU1n
         3hIbqYFel0YFKa1qunIcxghIydxOxGuTp4jUvRxEgkWfKvrMjzPlw8wNQmPVVYQZEt3L
         rSmHq2so0zvTryd60YKyKOGehARTBIXFPcSqXCukhnbDAoOD1/ZHVRmqDxVNhHa7n/fC
         saXu8vz4mQy3Gez11bikKDPzpquBdaUF+SQe6fJiZ4WVdjCV3ojkSuWN+WyGjTeWR+cp
         Hlhg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of guillaume.tucker@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=guillaume.tucker@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EVGrQkdxPH/UrbUH70o5taplf5qdOGlL8Ll890/jsY0=;
        b=Z9rN7UD4m4VePq7Pr4bnzRKE6lT1inpi/gEDf+PIRORBdC2rpd4+my9w2VBe7E6efh
         6w9VLsoH7KJNn9ccPTFP/KJ54wCCNL4ETbHv9gxg6IgWPqCX70Ou1G0Yu0xnpS09kAaN
         pcGMzjc5EvBizyszNl2ozHVv2YTLXBT5k+2juXJGCYzIqEAOa9+m1xcjgl/jQGPRWMrd
         Aa+WjeigjXDhGN3PUL55lZ33NNEGWXSxMKwtN0m7IsNbsFaeacafc2q6AVOpiz4IfiT9
         3BGjzzSHT0cM1g13vd7W8/H8wQx5OEk8yO1A4XxNRfAOWLLuo2qfX9+wqccBfXJ2HaBu
         jVKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EVGrQkdxPH/UrbUH70o5taplf5qdOGlL8Ll890/jsY0=;
        b=bs9FTRkvjp2d30pqMznZftW7FDhyjBFw2p8MVzuHoq00AHlHElA+y/ywoFoMZ+QZ97
         7cLa4fm0Yb/EVADprUpRQJPaBv3qpL++tm6/5A/isNnzBHQvlwzfeFWPIkZ7jJ2sNWIQ
         5vmfpgLYv4pPc7WjkB++oNnnvXji7xRTTm6JRQl0g8lKD2BhVWlby5ggKBSvECpq+IYS
         ww5PAA7Ff1dM2T+1aXEMuqtEm3MR6XD2F0yVQIwzVWppnzGbBxMM+9bWIRiC0SvGH0Jz
         2l2wbpm/YYPU8lbxHjCqrOLrwxE8WYCxahYWy0yq4i6AVFyGEq3Qfk+U5jkxZBnl+c6h
         Vn6A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533KiDrhM/gKzqPgOqt8fG5XHFCyy3VWkzVKF2PLug+7vN51wbL1
	9xWLoUf+Z6u1Nypgqzl0AFo=
X-Google-Smtp-Source: ABdhPJxTRH13PESvqhmnMa0F6oVoIrhwfGlPLC4DIPGjFpr3QzdHrmwEvAg9/300XBRyj/eO+aIJWQ==
X-Received: by 2002:a2e:9006:: with SMTP id h6mr1200229ljg.268.1607333821444;
        Mon, 07 Dec 2020 01:37:01 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3608:: with SMTP id f8ls1137716lfs.2.gmail; Mon, 07
 Dec 2020 01:37:00 -0800 (PST)
X-Received: by 2002:ac2:53bc:: with SMTP id j28mr8039535lfh.39.1607333820284;
        Mon, 07 Dec 2020 01:37:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607333820; cv=none;
        d=google.com; s=arc-20160816;
        b=oGrP2qBkipTfG5D0g8pDkkwvibEAEh8Vfkp7L9V+BoQXJkIMsj25zsN2HjaI9W0zWY
         H0x3Mc4TX5+LcFehC/BVgMrs+hGqvypkrpo1enn1QkjYqQp2qyFTMdoTM6m3CfuS7HQC
         daQPhKJ+nazPg6aNFlVBcvU+6NjMLskPDSfnCZc/6ytLquyGgBF2a1Mc2uOkNjtsVHkb
         yjjhDFBAiVDa14Mq6hsngoxtLfnt7IRAU2xvpWqmEj6wJBPA2m3v5zJPjpRT13Mp0ba0
         pHTgQBEP2FO/spp1SmYBjKteAu/TupL+5qR/rLQDT6qGrbA/HGLve6bbTbEFQrPa4uTG
         Kb9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=TGJVgwXYm5zHWs2w5/vDAKvCw9gNxJ2YV8Ua+Yn+qhE=;
        b=PUM67ENB1exX0nITAeFB0mmjgRejI9XInEAOVA2DJPf61uHznJfj3PywEA/FcwvMsm
         x1d9CgimhoPm2U3hbrBhZ/hVGZcYP6fzd8C/hC4mTKJ6zrwUF+J33fxZp5QzixjnckxC
         voSZVpwZnlQRTvWE+1b4V37CcJw3bEfTIJvK6AuHaqUil0NeaUFZO/rYFvC6AZahZ3tg
         EZ8Y+OLr3VgRjTd9KqFNjK7lt8nx4z6KEkp05Mz/6+FeuWMoI/dTEN4Iaj1AwaN4lhJX
         lgvZcSHc5q30O1O/Gk022j7UhH6hoOSnBWAutpHA2Yj+cN1u3lirfEsirGYzZcOoGGyC
         /wJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of guillaume.tucker@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=guillaume.tucker@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [2a00:1098:0:82:1000:25:2eeb:e3e3])
        by gmr-mx.google.com with ESMTPS id u25si72976lfd.11.2020.12.07.01.36.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 07 Dec 2020 01:36:59 -0800 (PST)
Received-SPF: pass (google.com: domain of guillaume.tucker@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) client-ip=2a00:1098:0:82:1000:25:2eeb:e3e3;
Received: from [IPv6:2a00:5f00:102:0:8cc5:dff:fe97:23e8] (unknown [IPv6:2a00:5f00:102:0:8cc5:dff:fe97:23e8])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: gtucker)
	by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 9CDF11F44EB3;
	Mon,  7 Dec 2020 09:36:58 +0000 (GMT)
Subject: Re: next/master build: 229 builds: 13 failed, 216 passed, 63 errors,
 131 warnings (next-20201130)
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Kees Cook <keescook@chromium.org>
References: <5fc5476c.1c69fb81.43fd4.49d0@mx.google.com>
 <CAKwvOdnuaP6-tpsWiVzGLvNXHOsZxAgnYr+UjUArsU6RGWuLEQ@mail.gmail.com>
From: Guillaume Tucker <guillaume.tucker@collabora.com>
Message-ID: <9ebc5cc1-e871-6c03-e420-549ce2c31c70@collabora.com>
Date: Mon, 7 Dec 2020 09:36:56 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.2
MIME-Version: 1.0
In-Reply-To: <CAKwvOdnuaP6-tpsWiVzGLvNXHOsZxAgnYr+UjUArsU6RGWuLEQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: guillaume.tucker@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of guillaume.tucker@collabora.com designates
 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=guillaume.tucker@collabora.com;
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

On 30/11/2020 19:41, Nick Desaulniers wrote:
> Nice, we got our email reports back!  Looks like we have some cleanup
> to do with arm32+lld, though I think those all might be addressed by:
> https://www.armlinux.org.uk/developer/patches/viewpatch.php?id=3D9025/1
>=20
> Nathan's patches for orphan section warnings from lld 10 must have
> been merged up by Kees.  Now to fix up the rest of these warnings.

Great, thanks for confirming it's working again for you now.

To avoid such issues in the future, it seems we should have a way
to truncate very long emails.  That would mean striking the right
balance between missing out some useful data in the emails and
not having emails delivered at all due to their size.

We should dig out the big emails that didn't get delivered and
compare their size with this one to get an idea of the margin we
have.  Since the number of builds is a known quantity, we could
then define a maximum number of errors and warnings to show per
build, with something like "[...] 1234 more warnings" and a link
to the full results.  Do you think that could break your
workflow?

We should also be able to stop mentioning builds that passed
with "PASS, 0 errors, 0 warnings, 0 section mismatches" now as
they'll appear on the web dashboard anyway.  That's what we've
been doing with test results for several months and it's working
well.

Thanks,
Guillaume

> On Mon, Nov 30, 2020 at 11:26 AM kernelci.org bot <bot@kernelci.org> wrot=
e:
>>
>> next/master build: 229 builds: 13 failed, 216 passed, 63 errors, 131 war=
nings (next-20201130)
>>
>> Full Build Summary: https://kernelci.org/build/next/branch/master/kernel=
/next-20201130/
>>
>> Tree: next
>> Branch: master
>> Git Describe: next-20201130
>> Git Commit: c6b11acc5f85b6e11d128fad8e0b7b223aa7e33f
>> Git URL: https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next=
.git
>> Built: 7 unique architectures
>>
>> Build Failures Detected:
>>
>> arm64:
>>     allmodconfig: (clang-10) FAIL
>>     defconfig: (clang-10) FAIL
>>     defconfig+CONFIG_ARM64_64K_PAGES=3Dy: (clang-10) FAIL
>>     allmodconfig: (clang-11) FAIL
>>     allmodconfig: (gcc-8) FAIL
>>
>> arm:
>>     allmodconfig: (clang-10) FAIL
>>     aspeed_g5_defconfig: (clang-10) FAIL
>>     allmodconfig: (clang-11) FAIL
>>     allmodconfig: (gcc-8) FAIL
>>     milbeaut_m10v_defconfig: (gcc-8) FAIL
>>     mini2440_defconfig: (gcc-8) FAIL
>>     s3c2410_defconfig: (gcc-8) FAIL
>>
>> x86_64:
>>     allmodconfig: (gcc-8) FAIL
>>
>> Errors and Warnings Detected:
>>
>> arc:
>>
>> arm64:
>>     allmodconfig (gcc-8): 1 error, 1 warning
>>     allmodconfig (clang-10): 1 error, 11 warnings
>>     allmodconfig (clang-11): 1 error, 11 warnings
>>     defconfig (gcc-8): 1 warning
>>     defconfig (clang-10): 1 error, 5 warnings
>>     defconfig (clang-11): 6 warnings
>>     defconfig+CONFIG_ARM64_64K_PAGES=3Dy (clang-10): 1 error, 5 warnings
>>     defconfig+CONFIG_ARM64_64K_PAGES=3Dy (gcc-8): 1 warning
>>     defconfig+CONFIG_ARM64_64K_PAGES=3Dy (clang-11): 6 warnings
>>     defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (gcc-8): 1 warning
>>     defconfig+CONFIG_RANDOMIZE_BASE=3Dy (gcc-8): 1 warning
>>
>> arm:
>>     allmodconfig (clang-11): 21 errors
>>     allmodconfig (gcc-8): 1 error
>>     allmodconfig (clang-10): 20 errors, 19 warnings
>>     aspeed_g5_defconfig (clang-10): 13 errors
>>     axm55xx_defconfig (gcc-8): 1 warning
>>     exynos_defconfig (gcc-8): 1 warning
>>     keystone_defconfig (gcc-8): 1 warning
>>     mini2440_defconfig (gcc-8): 1 error
>>     mmp2_defconfig (gcc-8): 3 warnings
>>     multi_v7_defconfig (gcc-8): 4 warnings
>>     multi_v7_defconfig (clang-11): 5 warnings
>>     multi_v7_defconfig (clang-10): 5 warnings
>>     multi_v7_defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (gcc-8): 4 warnings
>>     multi_v7_defconfig+CONFIG_EFI=3Dy+CONFIG_ARM_LPAE=3Dy (gcc-8): 5 war=
nings
>>     multi_v7_defconfig+CONFIG_SMP=3Dn (gcc-8): 4 warnings
>>     mvebu_v7_defconfig (gcc-8): 1 warning
>>     omap1_defconfig (gcc-8): 2 warnings
>>     pxa168_defconfig (gcc-8): 3 warnings
>>     pxa910_defconfig (gcc-8): 3 warnings
>>     s3c2410_defconfig (gcc-8): 1 error
>>     tegra_defconfig (gcc-8): 1 warning
>>
>> i386:
>>
>> mips:
>>     loongson3_defconfig (gcc-8): 1 warning
>>     malta_qemu_32r6_defconfig (gcc-8): 1 warning
>>     maltaup_xpa_defconfig (gcc-8): 1 warning
>>     nlm_xlr_defconfig (gcc-8): 1 warning
>>     rm200_defconfig (gcc-8): 1 warning
>>     xway_defconfig (gcc-8): 2 warnings
>>
>> riscv:
>>     defconfig+CONFIG_EFI=3Dn (clang-11): 1 warning
>>     rv32_defconfig (gcc-8): 6 warnings
>>
>> x86_64:
>>     allmodconfig (gcc-8): 1 error, 1 warning
>>     tinyconfig (gcc-8): 1 warning
>>     x86_64_defconfig (clang-10): 2 warnings
>>     x86_64_defconfig (clang-11): 2 warnings
>>
>> Errors summary:
>>
>>     3    ERROR: modpost: "device_is_bound" [drivers/clk/imx/clk-imx-scu.=
ko] undefined!
>>     2    ld.lld: error: unknown argument '--be8'
>>     2    ld.lld: error: init/main.o:(.rodata.str1.1): offset is outside =
the section
>>     2    ld.lld: error: init/init_task.o:(.rodata.str1.1): offset is out=
side the section
>>     2    ld.lld: error: init/do_mounts.o:(.rodata.str1.1): offset is out=
side the section
>>     2    ld.lld: error: arch/arm/vfp/vfpmodule.o:(.rodata.str1.1): offse=
t is outside the section
>>     2    ld.lld: error: arch/arm/mm/mmu.o:(.rodata.str1.1): offset is ou=
tside the section
>>     2    ld.lld: error: arch/arm/mm/init.o:(.rodata.str1.1): offset is o=
utside the section
>>     2    ld.lld: error: arch/arm/mm/flush.o:(.rodata.str1.1): offset is =
outside the section
>>     2    ld.lld: error: arch/arm/mm/dma-mapping.o:(.rodata.str1.1): offs=
et is outside the section
>>     2    ld.lld: error: arch/arm/mach-at91/pm.o:(.rodata.str1.1): offset=
 is outside the section
>>     2    ld.lld: error: arch/arm/kernel/elf.o:(__ksymtab_strings): offse=
t is outside the section
>>     2    ERROR: modpost: "__field_overflow" [drivers/net/ipa/ipa.ko] und=
efined!
>>     1    ld.lld: error: init/version.o:(__ksymtab_strings): offset is ou=
tside the section
>>     1    ld.lld: error: init/version.o:(.rodata.str1.1): offset is outsi=
de the section
>>     1    ld.lld: error: arch/arm/probes/decode-arm.o:(__ksymtab_strings)=
: offset is outside the section
>>     1    ld.lld: error: arch/arm/probes/decode-arm.o:(.rodata.str1.1): o=
ffset is outside the section
>>     1    ld.lld: error: arch/arm/mm/proc-syms.o:(__ksymtab_strings): off=
set is outside the section
>>     1    ld.lld: error: arch/arm/mm/ioremap.o:(__ksymtab_strings): offse=
t is outside the section
>>     1    ld.lld: error: arch/arm/mm/ioremap.o:(.rodata.str1.1): offset i=
s outside the section
>>     1    ld.lld: error: arch/arm/mm/iomap.o:(__ksymtab_strings): offset =
is outside the section
>>     1    ld.lld: error: arch/arm/mm/iomap.o:(.rodata.str1.1): offset is =
outside the section
>>     1    ld.lld: error: arch/arm/mach-mmp/sram.o:(.rodata.str1.1): offse=
t is outside the section
>>     1    ld.lld: error: arch/arm/mach-mmp/common.o:(__ksymtab_strings): =
offset is outside the section
>>     1    ld.lld: error: arch/arm/mach-cns3xxx/pm.o:(__ksymtab_strings): =
offset is outside the section
>>     1    ld.lld: error: arch/arm/mach-cns3xxx/pm.o:(.rodata.str1.1): off=
set is outside the section
>>     1    ld.lld: error: arch/arm/kernel/reboot.o:(.rodata.str1.1): offse=
t is outside the section
>>     1    ld.lld: error: arch/arm/kernel/process.o:(.rodata.str1.1): offs=
et is outside the section
>>     1    ld.lld: error: arch/arm/kernel/opcodes.o:(.rodata.str1.1): offs=
et is outside the section
>>     1    ld.lld: error: arch/arm/common/mcpm_entry.o:(.rodata.str1.1): o=
ffset is outside the section
>>     1    ld.lld: error: arch/arm/common/krait-l2-accessors.o:(__ksymtab_=
strings): offset is outside the section
>>     1    ld.lld: error: arch/arm/common/krait-l2-accessors.o:(.rodata.st=
r1.1): offset is outside the section
>>     1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37414): rel=
ocation R_ARM_PREL31 out of range: 2135598372 is not in [-1073741824, 10737=
41823]
>>     1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37374): rel=
ocation R_ARM_PREL31 out of range: 2135598532 is not in [-1073741824, 10737=
41823]
>>     1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37364): rel=
ocation R_ARM_PREL31 out of range: 2135598548 is not in [-1073741824, 10737=
41823]
>>     1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37314): rel=
ocation R_ARM_PREL31 out of range: 2135598628 is not in [-1073741824, 10737=
41823]
>>     1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37304): rel=
ocation R_ARM_PREL31 out of range: 2135598644 is not in [-1073741824, 10737=
41823]
>>     1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x372EC): rel=
ocation R_ARM_PREL31 out of range: 2135598668 is not in [-1073741824, 10737=
41823]
>>     1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x372D4): rel=
ocation R_ARM_PREL31 out of range: 2135598692 is not in [-1073741824, 10737=
41823]
>>     1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x372A4): rel=
ocation R_ARM_PREL31 out of range: 2135598740 is not in [-1073741824, 10737=
41823]
>>     1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37274): rel=
ocation R_ARM_PREL31 out of range: 2135598788 is not in [-1073741824, 10737=
41823]
>>     1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x3726C): rel=
ocation R_ARM_PREL31 out of range: 2135598796 is not in [-1073741824, 10737=
41823]
>>     1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x3722C): rel=
ocation R_ARM_PREL31 out of range: 2135598860 is not in [-1073741824, 10737=
41823]
>>     1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37214): rel=
ocation R_ARM_PREL31 out of range: 2135598884 is not in [-1073741824, 10737=
41823]
>>     1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x34C28): rel=
ocation R_ARM_PREL31 out of range: 2135543056 is not in [-1073741824, 10737=
41823]
>>     1    arch/arm/mach-s3c/mach-mini2440.c:47:10: fatal error: linux/mtd=
/nand_ecc.h: No such file or directory
>>     1    arch/arm/mach-s3c/mach-bast.c:27:10: fatal error: linux/mtd/nan=
d_ecc.h: No such file or directory
>>     1    ERROR: modpost: "crypto_aegis128_update_simd" [crypto/aegis128.=
ko] undefined!
>>     1    ./arch/arm/include/asm/kasan.h:26:11: error: expected =E2=80=98=
;=E2=80=99 before =E2=80=98void=E2=80=99
>>
>> Warnings summary:
>>
>>     19   ld.lld: warning: lld uses blx instruction, no object with archi=
tecture supporting feature detected
>>     18   1 warning generated.
>>     12   drivers/hwmon/pwm-fan.c:167:22: warning: unused variable =E2=80=
=98ctx=E2=80=99 [-Wunused-variable]
>>     9    arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_brid=
ge): /soc/apb@d4000000/spi@d4037000: incorrect #size-cells for SPI bus
>>     9    arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_brid=
ge): /soc/apb@d4000000/spi@d4037000: incorrect #address-cells for SPI bus
>>     9    arch/arm/boot/dts/mmp2-olpc-xo-1-75.dtb: Warning (spi_bus_reg):=
 Failed prerequisite 'spi_bus_bridge'
>>     8    drivers/hwmon/pwm-fan.c:167:22: warning: unused variable 'ctx' =
[-Wunused-variable]
>>     6    drivers/remoteproc/qcom_sysmon.c:551:11: warning: variable 'ack=
ed' is used uninitialized whenever 'if' condition is false [-Wsometimes-uni=
nitialized]
>>     6    drivers/remoteproc/qcom_sysmon.c:536:12: note: initialize the v=
ariable 'acked' to silence this warning
>>     5    lib/cpumask.c:222:17: warning: cast from pointer to integer of =
different size [-Wpointer-to-int-cast]
>>     2    fs/nfsd/nfs3xdr.c:299:6: warning: variable 'err' is used uninit=
ialized whenever 'if' condition is false [-Wsometimes-uninitialized]
>>     2    drivers/mtd/nand/raw/r852.c:874:24: warning: variable 'dev' is =
uninitialized when used here [-Wuninitialized]
>>     2    drivers/mtd/nand/raw/r852.c:847:25: note: initialize the variab=
le 'dev' to silence this warning
>>     2    drivers/gpu/drm/ttm/ttm_pool.c:243:21: warning: =E2=80=98ttm_po=
ol_type_count=E2=80=99 defined but not used [-Wunused-function]
>>     2    aarch64-linux-gnu-strip: warning: /scratch/linux/_modules_/lib/=
modules/5.10.0-rc5-next-20201130/kernel/drivers/media/tuners/tuner-types.ko=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
>>     2    <stdin>:830:2: warning: #warning syscall fstat64 not implemente=
d [-Wcpp]
>>     2    <stdin>:1511:2: warning: #warning syscall clone3 not implemente=
d [-Wcpp]
>>     2    <stdin>:1127:2: warning: #warning syscall fstatat64 not impleme=
nted [-Wcpp]
>>     1    {standard input}:39: Warning: macro instruction expanded into m=
ultiple instructions
>>     1    fs/nfsd/nfs3xdr.c:293:12: note: initialize the variable 'err' t=
o silence this warning
>>     1    drivers/net/ethernet/lantiq_etop.c:281:4: warning: ignoring ret=
urn value of =E2=80=98request_irq=E2=80=99, declared with attribute warn_un=
used_result [-Wunused-result]
>>     1    drivers/net/ethernet/lantiq_etop.c:273:4: warning: ignoring ret=
urn value of =E2=80=98request_irq=E2=80=99, declared with attribute warn_un=
used_result [-Wunused-result]
>>     1    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtoo=
l: eb_prefault_relocations()+0xc6: stack state mismatch: cfa1=3D7+8 cfa2=3D=
-1+0
>>     1    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtoo=
l: eb_prefault_relocations()+0xb8: stack state mismatch: cfa1=3D7+8 cfa2=3D=
-1+0
>>     1    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtoo=
l: eb_copy_relocations()+0x259: stack state mismatch: cfa1=3D7+104 cfa2=3D-=
1+0
>>     1    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtoo=
l: eb_copy_relocations()+0x249: stack state mismatch: cfa1=3D7+104 cfa2=3D-=
1+0
>>     1    drivers/block/paride/bpck.c:32: warning: "PC" redefined
>>     1    clang: warning: argument unused during compilation: '-no-pie' [=
-Wunused-command-line-argument]
>>     1    arch/arm/mach-omap1/board-h2.c:347:34: warning: =E2=80=98isp130=
1_gpiod_table=E2=80=99 defined but not used [-Wunused-variable]
>>     1    arch/arm/mach-omap1/board-ams-delta.c:462:12: warning: =E2=80=
=98ams_delta_camera_power=E2=80=99 defined but not used [-Wunused-function]
>>     1    12: note: initialize the variable 'err' to silence this warning
>>     1    .config:1181:warning: override: UNWINDER_GUESS changes choice s=
tate
>>
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
>>
>> Detailed per-defconfig build reports:
>>
>> ------------------------------------------------------------------------=
--------
>> 32r2el_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> allmodconfig (arm, clang-11) =E2=80=94 FAIL, 21 errors, 0 warnings, 0 se=
ction mismatches
>>
>> Errors:
>>     ld.lld: error: unknown argument '--be8'
>>     ld.lld: error: arch/arm/common/krait-l2-accessors.o:(.rodata.str1.1)=
: offset is outside the section
>>     ld.lld: error: init/version.o:(.rodata.str1.1): offset is outside th=
e section
>>     ld.lld: error: arch/arm/kernel/elf.o:(__ksymtab_strings): offset is =
outside the section
>>     ld.lld: error: arch/arm/vfp/vfpmodule.o:(.rodata.str1.1): offset is =
outside the section
>>     ld.lld: error: arch/arm/kernel/opcodes.o:(.rodata.str1.1): offset is=
 outside the section
>>     ld.lld: error: init/init_task.o:(.rodata.str1.1): offset is outside =
the section
>>     ld.lld: error: arch/arm/mach-cns3xxx/pm.o:(.rodata.str1.1): offset i=
s outside the section
>>     ld.lld: error: arch/arm/mach-at91/pm.o:(.rodata.str1.1): offset is o=
utside the section
>>     ld.lld: error: arch/arm/kernel/reboot.o:(.rodata.str1.1): offset is =
outside the section
>>     ld.lld: error: arch/arm/mm/init.o:(.rodata.str1.1): offset is outsid=
e the section
>>     ld.lld: error: init/main.o:(.rodata.str1.1): offset is outside the s=
ection
>>     ld.lld: error: arch/arm/kernel/process.o:(.rodata.str1.1): offset is=
 outside the section
>>     ld.lld: error: arch/arm/mm/iomap.o:(.rodata.str1.1): offset is outsi=
de the section
>>     ld.lld: error: init/do_mounts.o:(.rodata.str1.1): offset is outside =
the section
>>     ld.lld: error: arch/arm/probes/decode-arm.o:(.rodata.str1.1): offset=
 is outside the section
>>     ld.lld: error: arch/arm/mm/ioremap.o:(.rodata.str1.1): offset is out=
side the section
>>     ld.lld: error: arch/arm/mm/flush.o:(.rodata.str1.1): offset is outsi=
de the section
>>     ld.lld: error: arch/arm/mm/dma-mapping.o:(.rodata.str1.1): offset is=
 outside the section
>>     ld.lld: error: arch/arm/mm/proc-syms.o:(__ksymtab_strings): offset i=
s outside the section
>>     ld.lld: error: arch/arm/mm/mmu.o:(.rodata.str1.1): offset is outside=
 the section
>>
>> ------------------------------------------------------------------------=
--------
>> allmodconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 0 warnings, 0 section=
 mismatches
>>
>> Errors:
>>     ./arch/arm/include/asm/kasan.h:26:11: error: expected =E2=80=98;=E2=
=80=99 before =E2=80=98void=E2=80=99
>>
>> ------------------------------------------------------------------------=
--------
>> allmodconfig (arm64, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sectio=
n mismatches
>>
>> Errors:
>>     ERROR: modpost: "device_is_bound" [drivers/clk/imx/clk-imx-scu.ko] u=
ndefined!
>>
>> Warnings:
>>     drivers/hwmon/pwm-fan.c:167:22: warning: unused variable =E2=80=98ct=
x=E2=80=99 [-Wunused-variable]
>>
>> ------------------------------------------------------------------------=
--------
>> allmodconfig (x86_64, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 secti=
on mismatches
>>
>> Errors:
>>     ERROR: modpost: "crypto_aegis128_update_simd" [crypto/aegis128.ko] u=
ndefined!
>>
>> Warnings:
>>     drivers/hwmon/pwm-fan.c:167:22: warning: unused variable =E2=80=98ct=
x=E2=80=99 [-Wunused-variable]
>>
>> ------------------------------------------------------------------------=
--------
>> allmodconfig (arm, clang-10) =E2=80=94 FAIL, 20 errors, 19 warnings, 0 s=
ection mismatches
>>
>> Errors:
>>     ld.lld: error: arch/arm/common/krait-l2-accessors.o:(__ksymtab_strin=
gs): offset is outside the section
>>     ld.lld: error: unknown argument '--be8'
>>     ld.lld: error: init/version.o:(__ksymtab_strings): offset is outside=
 the section
>>     ld.lld: error: arch/arm/kernel/elf.o:(__ksymtab_strings): offset is =
outside the section
>>     ld.lld: error: arch/arm/vfp/vfpmodule.o:(.rodata.str1.1): offset is =
outside the section
>>     ld.lld: error: arch/arm/probes/decode-arm.o:(__ksymtab_strings): off=
set is outside the section
>>     ld.lld: error: init/init_task.o:(.rodata.str1.1): offset is outside =
the section
>>     ld.lld: error: arch/arm/common/mcpm_entry.o:(.rodata.str1.1): offset=
 is outside the section
>>     ld.lld: error: arch/arm/mach-cns3xxx/pm.o:(__ksymtab_strings): offse=
t is outside the section
>>     ld.lld: error: init/main.o:(.rodata.str1.1): offset is outside the s=
ection
>>     ld.lld: error: arch/arm/mach-at91/pm.o:(.rodata.str1.1): offset is o=
utside the section
>>     ld.lld: error: arch/arm/mm/iomap.o:(__ksymtab_strings): offset is ou=
tside the section
>>     ld.lld: error: arch/arm/mm/init.o:(.rodata.str1.1): offset is outsid=
e the section
>>     ld.lld: error: arch/arm/mach-mmp/common.o:(__ksymtab_strings): offse=
t is outside the section
>>     ld.lld: error: init/do_mounts.o:(.rodata.str1.1): offset is outside =
the section
>>     ld.lld: error: arch/arm/mm/ioremap.o:(__ksymtab_strings): offset is =
outside the section
>>     ld.lld: error: arch/arm/mm/dma-mapping.o:(.rodata.str1.1): offset is=
 outside the section
>>     ld.lld: error: arch/arm/mm/flush.o:(.rodata.str1.1): offset is outsi=
de the section
>>     ld.lld: error: arch/arm/mach-mmp/sram.o:(.rodata.str1.1): offset is =
outside the section
>>     ld.lld: error: arch/arm/mm/mmu.o:(.rodata.str1.1): offset is outside=
 the section
>>
>> Warnings:
>>     ld.lld: warning: lld uses blx instruction, no object with architectu=
re supporting feature detected
>>     ld.lld: warning: lld uses blx instruction, no object with architectu=
re supporting feature detected
>>     ld.lld: warning: lld uses blx instruction, no object with architectu=
re supporting feature detected
>>     ld.lld: warning: lld uses blx instruction, no object with architectu=
re supporting feature detected
>>     ld.lld: warning: lld uses blx instruction, no object with architectu=
re supporting feature detected
>>     ld.lld: warning: lld uses blx instruction, no object with architectu=
re supporting feature detected
>>     ld.lld: warning: lld uses blx instruction, no object with architectu=
re supporting feature detected
>>     ld.lld: warning: lld uses blx instruction, no object with architectu=
re supporting feature detected
>>     ld.lld: warning: lld uses blx instruction, no object with architectu=
re supporting feature detected
>>     ld.lld: warning: lld uses blx instruction, no object with architectu=
re supporting feature detected
>>     ld.lld: warning: lld uses blx instruction, no object with architectu=
re supporting feature detected
>>     ld.lld: warning: lld uses blx instruction, no object with architectu=
re supporting feature detected
>>     ld.lld: warning: lld uses blx instruction, no object with architectu=
re supporting feature detected
>>     ld.lld: warning: lld uses blx instruction, no object with architectu=
re supporting feature detected
>>     ld.lld: warning: lld uses blx instruction, no object with architectu=
re supporting feature detected
>>     ld.lld: warning: lld uses blx instruction, no object with architectu=
re supporting feature detected
>>     ld.lld: warning: lld uses blx instruction, no object with architectu=
re supporting feature detected
>>     ld.lld: warning: lld uses blx instruction, no object with architectu=
re supporting feature detected
>>     ld.lld: warning: lld uses blx instruction, no object with architectu=
re supporting feature detected
>>
>> ------------------------------------------------------------------------=
--------
>> allmodconfig (arm64, clang-10) =E2=80=94 FAIL, 1 error, 11 warnings, 0 s=
ection mismatches
>>
>> Errors:
>>     ERROR: modpost: "device_is_bound" [drivers/clk/imx/clk-imx-scu.ko] u=
ndefined!
>>
>> Warnings:
>>     fs/nfsd/nfs3xdr.c:299:6: warning: variable 'err' is used uninitializ=
ed whenever 'if' condition is false [-Wsometimes-uninitialized]
>>     12: note: initialize the variable 'err' to silence this warning
>>     1 warning generated.
>>     drivers/remoteproc/qcom_sysmon.c:551:11: warning: variable 'acked' i=
s used uninitialized whenever 'if' condition is false [-Wsometimes-uninitia=
lized]
>>     drivers/remoteproc/qcom_sysmon.c:536:12: note: initialize the variab=
le 'acked' to silence this warning
>>     1 warning generated.
>>     drivers/mtd/nand/raw/r852.c:874:24: warning: variable 'dev' is unini=
tialized when used here [-Wuninitialized]
>>     drivers/mtd/nand/raw/r852.c:847:25: note: initialize the variable 'd=
ev' to silence this warning
>>     1 warning generated.
>>     drivers/hwmon/pwm-fan.c:167:22: warning: unused variable 'ctx' [-Wun=
used-variable]
>>     1 warning generated.
>>
>> ------------------------------------------------------------------------=
--------
>> allmodconfig (arm64, clang-11) =E2=80=94 FAIL, 1 error, 11 warnings, 0 s=
ection mismatches
>>
>> Errors:
>>     ERROR: modpost: "device_is_bound" [drivers/clk/imx/clk-imx-scu.ko] u=
ndefined!
>>
>> Warnings:
>>     fs/nfsd/nfs3xdr.c:299:6: warning: variable 'err' is used uninitializ=
ed whenever 'if' condition is false [-Wsometimes-uninitialized]
>>     fs/nfsd/nfs3xdr.c:293:12: note: initialize the variable 'err' to sil=
ence this warning
>>     1 warning generated.
>>     drivers/remoteproc/qcom_sysmon.c:551:11: warning: variable 'acked' i=
s used uninitialized whenever 'if' condition is false [-Wsometimes-uninitia=
lized]
>>     drivers/remoteproc/qcom_sysmon.c:536:12: note: initialize the variab=
le 'acked' to silence this warning
>>     1 warning generated.
>>     drivers/mtd/nand/raw/r852.c:874:24: warning: variable 'dev' is unini=
tialized when used here [-Wuninitialized]
>>     drivers/mtd/nand/raw/r852.c:847:25: note: initialize the variable 'd=
ev' to silence this warning
>>     1 warning generated.
>>     drivers/hwmon/pwm-fan.c:167:22: warning: unused variable 'ctx' [-Wun=
used-variable]
>>     1 warning generated.
>>
>> ------------------------------------------------------------------------=
--------
>> allnoconfig (arm, clang-11) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> allnoconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> allnoconfig (x86_64, clang-11) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> allnoconfig (arm, clang-10) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> allnoconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> allnoconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> allnoconfig (x86_64, clang-10) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> allnoconfig (riscv, clang-11) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> allnoconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> allnoconfig (arm64, clang-11) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> allnoconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> allnoconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> allnoconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> allnoconfig (arm64, clang-10) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> am200epdkit_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> ar7_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> aspeed_g4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> aspeed_g5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> aspeed_g5_defconfig (arm, clang-11) =E2=80=94 PASS, 0 errors, 0 warnings=
, 0 section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> aspeed_g5_defconfig (arm, clang-10) =E2=80=94 FAIL, 13 errors, 0 warning=
s, 0 section mismatches
>>
>> Errors:
>>     ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x34C28): relocati=
on R_ARM_PREL31 out of range: 2135543056 is not in [-1073741824, 1073741823=
]
>>     ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37214): relocati=
on R_ARM_PREL31 out of range: 2135598884 is not in [-1073741824, 1073741823=
]
>>     ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x3722C): relocati=
on R_ARM_PREL31 out of range: 2135598860 is not in [-1073741824, 1073741823=
]
>>     ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x3726C): relocati=
on R_ARM_PREL31 out of range: 2135598796 is not in [-1073741824, 1073741823=
]
>>     ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37274): relocati=
on R_ARM_PREL31 out of range: 2135598788 is not in [-1073741824, 1073741823=
]
>>     ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x372A4): relocati=
on R_ARM_PREL31 out of range: 2135598740 is not in [-1073741824, 1073741823=
]
>>     ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x372D4): relocati=
on R_ARM_PREL31 out of range: 2135598692 is not in [-1073741824, 1073741823=
]
>>     ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x372EC): relocati=
on R_ARM_PREL31 out of range: 2135598668 is not in [-1073741824, 1073741823=
]
>>     ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37304): relocati=
on R_ARM_PREL31 out of range: 2135598644 is not in [-1073741824, 1073741823=
]
>>     ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37314): relocati=
on R_ARM_PREL31 out of range: 2135598628 is not in [-1073741824, 1073741823=
]
>>     ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37364): relocati=
on R_ARM_PREL31 out of range: 2135598548 is not in [-1073741824, 1073741823=
]
>>     ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37374): relocati=
on R_ARM_PREL31 out of range: 2135598532 is not in [-1073741824, 1073741823=
]
>>     ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37414): relocati=
on R_ARM_PREL31 out of range: 2135598372 is not in [-1073741824, 1073741823=
]
>>
>> ------------------------------------------------------------------------=
--------
>> assabet_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> at91_dt_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> ath25_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> ath79_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> axm55xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches
>>
>> Warnings:
>>     lib/cpumask.c:222:17: warning: cast from pointer to integer of diffe=
rent size [-Wpointer-to-int-cast]
>>
>> ------------------------------------------------------------------------=
--------
>> axs103_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> axs103_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> badge4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> bcm2835_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> bcm47xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> bcm63xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> bigsur_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> bmips_be_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> bmips_stb_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> capcella_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> cavium_octeon_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnin=
gs, 0 section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> cerfcube_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> ci20_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> clps711x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> cm_x300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> cns3420vb_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> cobalt_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> colibri_pxa270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnin=
gs, 0 section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> colibri_pxa300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnin=
gs, 0 section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> collie_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> corgi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> cu1000-neo_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> cu1830-neo_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> davinci_all_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> db1xxx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> decstation_64_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnin=
gs, 0 section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> decstation_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> decstation_r4k_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warni=
ngs, 0 section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> defconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches
>>
>> Warnings:
>>     drivers/hwmon/pwm-fan.c:167:22: warning: unused variable =E2=80=98ct=
x=E2=80=99 [-Wunused-variable]
>>
>> ------------------------------------------------------------------------=
--------
>> defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> defconfig (arm64, clang-10) =E2=80=94 FAIL, 1 error, 5 warnings, 0 secti=
on mismatches
>>
>> Errors:
>>     ERROR: modpost: "__field_overflow" [drivers/net/ipa/ipa.ko] undefine=
d!
>>
>> Warnings:
>>     drivers/hwmon/pwm-fan.c:167:22: warning: unused variable 'ctx' [-Wun=
used-variable]
>>     1 warning generated.
>>     drivers/remoteproc/qcom_sysmon.c:551:11: warning: variable 'acked' i=
s used uninitialized whenever 'if' condition is false [-Wsometimes-uninitia=
lized]
>>     drivers/remoteproc/qcom_sysmon.c:536:12: note: initialize the variab=
le 'acked' to silence this warning
>>     1 warning generated.
>>
>> ------------------------------------------------------------------------=
--------
>> defconfig (arm64, clang-11) =E2=80=94 PASS, 0 errors, 6 warnings, 0 sect=
ion mismatches
>>
>> Warnings:
>>     drivers/hwmon/pwm-fan.c:167:22: warning: unused variable 'ctx' [-Wun=
used-variable]
>>     1 warning generated.
>>     drivers/remoteproc/qcom_sysmon.c:551:11: warning: variable 'acked' i=
s used uninitialized whenever 'if' condition is false [-Wsometimes-uninitia=
lized]
>>     drivers/remoteproc/qcom_sysmon.c:536:12: note: initialize the variab=
le 'acked' to silence this warning
>>     1 warning generated.
>>     aarch64-linux-gnu-strip: warning: /scratch/linux/_modules_/lib/modul=
es/5.10.0-rc5-next-20201130/kernel/drivers/media/tuners/tuner-types.ko: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
>>
>> ------------------------------------------------------------------------=
--------
>> defconfig+CONFIG_ARM64_64K_PAGES=3Dy (arm64, clang-10) =E2=80=94 FAIL, 1=
 error, 5 warnings, 0 section mismatches
>>
>> Errors:
>>     ERROR: modpost: "__field_overflow" [drivers/net/ipa/ipa.ko] undefine=
d!
>>
>> Warnings:
>>     drivers/hwmon/pwm-fan.c:167:22: warning: unused variable 'ctx' [-Wun=
used-variable]
>>     1 warning generated.
>>     drivers/remoteproc/qcom_sysmon.c:551:11: warning: variable 'acked' i=
s used uninitialized whenever 'if' condition is false [-Wsometimes-uninitia=
lized]
>>     drivers/remoteproc/qcom_sysmon.c:536:12: note: initialize the variab=
le 'acked' to silence this warning
>>     1 warning generated.
>>
>> ------------------------------------------------------------------------=
--------
>> defconfig+CONFIG_ARM64_64K_PAGES=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 er=
rors, 1 warning, 0 section mismatches
>>
>> Warnings:
>>     drivers/hwmon/pwm-fan.c:167:22: warning: unused variable =E2=80=98ct=
x=E2=80=99 [-Wunused-variable]
>>
>> ------------------------------------------------------------------------=
--------
>> defconfig+CONFIG_ARM64_64K_PAGES=3Dy (arm64, clang-11) =E2=80=94 PASS, 0=
 errors, 6 warnings, 0 section mismatches
>>
>> Warnings:
>>     drivers/hwmon/pwm-fan.c:167:22: warning: unused variable 'ctx' [-Wun=
used-variable]
>>     1 warning generated.
>>     drivers/remoteproc/qcom_sysmon.c:551:11: warning: variable 'acked' i=
s used uninitialized whenever 'if' condition is false [-Wsometimes-uninitia=
lized]
>>     drivers/remoteproc/qcom_sysmon.c:536:12: note: initialize the variab=
le 'acked' to silence this warning
>>     1 warning generated.
>>     aarch64-linux-gnu-strip: warning: /scratch/linux/_modules_/lib/modul=
es/5.10.0-rc5-next-20201130/kernel/drivers/media/tuners/tuner-types.ko: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
>>
>> ------------------------------------------------------------------------=
--------
>> defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 err=
ors, 1 warning, 0 section mismatches
>>
>> Warnings:
>>     drivers/hwmon/pwm-fan.c:167:22: warning: unused variable =E2=80=98ct=
x=E2=80=99 [-Wunused-variable]
>>
>> ------------------------------------------------------------------------=
--------
>> defconfig+CONFIG_EFI=3Dn (riscv, clang-11) =E2=80=94 PASS, 0 errors, 1 w=
arning, 0 section mismatches
>>
>> Warnings:
>>     clang: warning: argument unused during compilation: '-no-pie' [-Wunu=
sed-command-line-argument]
>>
>> ------------------------------------------------------------------------=
--------
>> defconfig+CONFIG_RANDOMIZE_BASE=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 err=
ors, 1 warning, 0 section mismatches
>>
>> Warnings:
>>     drivers/hwmon/pwm-fan.c:167:22: warning: unused variable =E2=80=98ct=
x=E2=80=99 [-Wunused-variable]
>>
>> ------------------------------------------------------------------------=
--------
>> dove_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> e55_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> efm32_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> ep93xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> eseries_pxa_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> exynos_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches
>>
>> Warnings:
>>     drivers/hwmon/pwm-fan.c:167:22: warning: unused variable =E2=80=98ct=
x=E2=80=99 [-Wunused-variable]
>>
>> ------------------------------------------------------------------------=
--------
>> ezx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> footbridge_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> fuloong2e_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> gcw0_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> gemini_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> gpr_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> h3600_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> h5000_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> hackkit_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> haps_hs_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> haps_hs_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> hisi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> hsdk_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> i386_defconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> imote2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> imx_v4_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> imx_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> integrator_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> iop32x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> ip22_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> ip27_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> ip28_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> ip32_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> ixp4xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> jazz_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> jmr3927_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> jornada720_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> keystone_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches
>>
>> Warnings:
>>     lib/cpumask.c:222:17: warning: cast from pointer to integer of diffe=
rent size [-Wpointer-to-int-cast]
>>
>> ------------------------------------------------------------------------=
--------
>> lart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> lemote2f_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> loongson1b_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> loongson1c_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> loongson3_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0=
 section mismatches
>>
>> Warnings:
>>     drivers/gpu/drm/ttm/ttm_pool.c:243:21: warning: =E2=80=98ttm_pool_ty=
pe_count=E2=80=99 defined but not used [-Wunused-function]
>>
>> ------------------------------------------------------------------------=
--------
>> lpc18xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> lpc32xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> lpd270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> lubbock_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> magician_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> mainstone_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> malta_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> malta_kvm_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> malta_kvm_guest_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warn=
ings, 0 section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> malta_qemu_32r6_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warn=
ing, 0 section mismatches
>>
>> Warnings:
>>     {standard input}:39: Warning: macro instruction expanded into multip=
le instructions
>>
>> ------------------------------------------------------------------------=
--------
>> maltaaprp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> maltasmvp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> maltasmvp_eva_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnin=
gs, 0 section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> maltaup_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> maltaup_xpa_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning,=
 0 section mismatches
>>
>> Warnings:
>>     lib/cpumask.c:222:17: warning: cast from pointer to integer of diffe=
rent size [-Wpointer-to-int-cast]
>>
>> ------------------------------------------------------------------------=
--------
>> milbeaut_m10v_defconfig (arm, gcc-8) =E2=80=94 FAIL, 0 errors, 0 warning=
s, 0 section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> mini2440_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 0 warnings, 0 s=
ection mismatches
>>
>> Errors:
>>     arch/arm/mach-s3c/mach-mini2440.c:47:10: fatal error: linux/mtd/nand=
_ecc.h: No such file or directory
>>
>> ------------------------------------------------------------------------=
--------
>> mmp2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sect=
ion mismatches
>>
>> Warnings:
>>     arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge): =
/soc/apb@d4000000/spi@d4037000: incorrect #address-cells for SPI bus
>>     arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge): =
/soc/apb@d4000000/spi@d4037000: incorrect #size-cells for SPI bus
>>     arch/arm/boot/dts/mmp2-olpc-xo-1-75.dtb: Warning (spi_bus_reg): Fail=
ed prerequisite 'spi_bus_bridge'
>>
>> ------------------------------------------------------------------------=
--------
>> moxart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> mpc30x_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> mps2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> mtx1_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> multi_v4t_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> multi_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> multi_v5_defconfig (arm, clang-10) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> multi_v5_defconfig (arm, clang-11) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> multi_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 =
section mismatches
>>
>> Warnings:
>>     drivers/hwmon/pwm-fan.c:167:22: warning: unused variable =E2=80=98ct=
x=E2=80=99 [-Wunused-variable]
>>     arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge): =
/soc/apb@d4000000/spi@d4037000: incorrect #address-cells for SPI bus
>>     arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge): =
/soc/apb@d4000000/spi@d4037000: incorrect #size-cells for SPI bus
>>     arch/arm/boot/dts/mmp2-olpc-xo-1-75.dtb: Warning (spi_bus_reg): Fail=
ed prerequisite 'spi_bus_bridge'
>>
>> ------------------------------------------------------------------------=
--------
>> multi_v7_defconfig (arm, clang-11) =E2=80=94 PASS, 0 errors, 5 warnings,=
 0 section mismatches
>>
>> Warnings:
>>     drivers/hwmon/pwm-fan.c:167:22: warning: unused variable 'ctx' [-Wun=
used-variable]
>>     1 warning generated.
>>     arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge): =
/soc/apb@d4000000/spi@d4037000: incorrect #address-cells for SPI bus
>>     arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge): =
/soc/apb@d4000000/spi@d4037000: incorrect #size-cells for SPI bus
>>     arch/arm/boot/dts/mmp2-olpc-xo-1-75.dtb: Warning (spi_bus_reg): Fail=
ed prerequisite 'spi_bus_bridge'
>>
>> ------------------------------------------------------------------------=
--------
>> multi_v7_defconfig (arm, clang-10) =E2=80=94 PASS, 0 errors, 5 warnings,=
 0 section mismatches
>>
>> Warnings:
>>     drivers/hwmon/pwm-fan.c:167:22: warning: unused variable 'ctx' [-Wun=
used-variable]
>>     1 warning generated.
>>     arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge): =
/soc/apb@d4000000/spi@d4037000: incorrect #address-cells for SPI bus
>>     arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge): =
/soc/apb@d4000000/spi@d4037000: incorrect #size-cells for SPI bus
>>     arch/arm/boot/dts/mmp2-olpc-xo-1-75.dtb: Warning (spi_bus_reg): Fail=
ed prerequisite 'spi_bus_bridge'
>>
>> ------------------------------------------------------------------------=
--------
>> multi_v7_defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm, gcc-8) =E2=80=94 PASS=
, 0 errors, 4 warnings, 0 section mismatches
>>
>> Warnings:
>>     drivers/hwmon/pwm-fan.c:167:22: warning: unused variable =E2=80=98ct=
x=E2=80=99 [-Wunused-variable]
>>     arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge): =
/soc/apb@d4000000/spi@d4037000: incorrect #address-cells for SPI bus
>>     arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge): =
/soc/apb@d4000000/spi@d4037000: incorrect #size-cells for SPI bus
>>     arch/arm/boot/dts/mmp2-olpc-xo-1-75.dtb: Warning (spi_bus_reg): Fail=
ed prerequisite 'spi_bus_bridge'
>>
>> ------------------------------------------------------------------------=
--------
>> multi_v7_defconfig+CONFIG_EFI=3Dy+CONFIG_ARM_LPAE=3Dy (arm, gcc-8) =E2=
=80=94 PASS, 0 errors, 5 warnings, 0 section mismatches
>>
>> Warnings:
>>     lib/cpumask.c:222:17: warning: cast from pointer to integer of diffe=
rent size [-Wpointer-to-int-cast]
>>     drivers/hwmon/pwm-fan.c:167:22: warning: unused variable =E2=80=98ct=
x=E2=80=99 [-Wunused-variable]
>>     arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge): =
/soc/apb@d4000000/spi@d4037000: incorrect #address-cells for SPI bus
>>     arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge): =
/soc/apb@d4000000/spi@d4037000: incorrect #size-cells for SPI bus
>>     arch/arm/boot/dts/mmp2-olpc-xo-1-75.dtb: Warning (spi_bus_reg): Fail=
ed prerequisite 'spi_bus_bridge'
>>
>> ------------------------------------------------------------------------=
--------
>> multi_v7_defconfig+CONFIG_SMP=3Dn (arm, gcc-8) =E2=80=94 PASS, 0 errors,=
 4 warnings, 0 section mismatches
>>
>> Warnings:
>>     drivers/hwmon/pwm-fan.c:167:22: warning: unused variable =E2=80=98ct=
x=E2=80=99 [-Wunused-variable]
>>     arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge): =
/soc/apb@d4000000/spi@d4037000: incorrect #address-cells for SPI bus
>>     arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge): =
/soc/apb@d4000000/spi@d4037000: incorrect #size-cells for SPI bus
>>     arch/arm/boot/dts/mmp2-olpc-xo-1-75.dtb: Warning (spi_bus_reg): Fail=
ed prerequisite 'spi_bus_bridge'
>>
>> ------------------------------------------------------------------------=
--------
>> mv78xx0_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> mvebu_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> mvebu_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches
>>
>> Warnings:
>>     drivers/hwmon/pwm-fan.c:167:22: warning: unused variable =E2=80=98ct=
x=E2=80=99 [-Wunused-variable]
>>
>> ------------------------------------------------------------------------=
--------
>> mxs_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> neponset_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> netwinder_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> nhk8815_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> nlm_xlp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> nlm_xlr_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches
>>
>> Warnings:
>>     lib/cpumask.c:222:17: warning: cast from pointer to integer of diffe=
rent size [-Wpointer-to-int-cast]
>>
>> ------------------------------------------------------------------------=
--------
>> nommu_k210_defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings=
, 0 section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> nommu_virt_defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings=
, 0 section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> nsimosci_hs_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> nsimosci_hs_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warni=
ngs, 0 section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> omap1_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches
>>
>> Warnings:
>>     arch/arm/mach-omap1/board-h2.c:347:34: warning: =E2=80=98isp1301_gpi=
od_table=E2=80=99 defined but not used [-Wunused-variable]
>>     arch/arm/mach-omap1/board-ams-delta.c:462:12: warning: =E2=80=98ams_=
delta_camera_power=E2=80=99 defined but not used [-Wunused-function]
>>
>> ------------------------------------------------------------------------=
--------
>> omap2plus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> omega2p_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> orion5x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> oxnas_v6_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> palmz72_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> pcm027_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> pic32mzda_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> pistachio_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> pleb_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> prima2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> pxa168_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 se=
ction mismatches
>>
>> Warnings:
>>     arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge): =
/soc/apb@d4000000/spi@d4037000: incorrect #address-cells for SPI bus
>>     arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge): =
/soc/apb@d4000000/spi@d4037000: incorrect #size-cells for SPI bus
>>     arch/arm/boot/dts/mmp2-olpc-xo-1-75.dtb: Warning (spi_bus_reg): Fail=
ed prerequisite 'spi_bus_bridge'
>>
>> ------------------------------------------------------------------------=
--------
>> pxa255-idp_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> pxa3xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> pxa910_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 se=
ction mismatches
>>
>> Warnings:
>>     arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge): =
/soc/apb@d4000000/spi@d4037000: incorrect #address-cells for SPI bus
>>     arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge): =
/soc/apb@d4000000/spi@d4037000: incorrect #size-cells for SPI bus
>>     arch/arm/boot/dts/mmp2-olpc-xo-1-75.dtb: Warning (spi_bus_reg): Fail=
ed prerequisite 'spi_bus_bridge'
>>
>> ------------------------------------------------------------------------=
--------
>> pxa_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> qcom_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> qi_lb60_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> rb532_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> rbtx49xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> realview_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> rm200_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches
>>
>> Warnings:
>>     drivers/block/paride/bpck.c:32: warning: "PC" redefined
>>
>> ------------------------------------------------------------------------=
--------
>> rpc_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> rs90_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> rt305x_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> rv32_defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 6 warnings, 0 se=
ction mismatches
>>
>> Warnings:
>>     <stdin>:830:2: warning: #warning syscall fstat64 not implemented [-W=
cpp]
>>     <stdin>:1127:2: warning: #warning syscall fstatat64 not implemented =
[-Wcpp]
>>     <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-W=
cpp]
>>     <stdin>:830:2: warning: #warning syscall fstat64 not implemented [-W=
cpp]
>>     <stdin>:1127:2: warning: #warning syscall fstatat64 not implemented =
[-Wcpp]
>>     <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-W=
cpp]
>>
>> ------------------------------------------------------------------------=
--------
>> s3c2410_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 0 warnings, 0 se=
ction mismatches
>>
>> Errors:
>>     arch/arm/mach-s3c/mach-bast.c:27:10: fatal error: linux/mtd/nand_ecc=
.h: No such file or directory
>>
>> ------------------------------------------------------------------------=
--------
>> s3c6400_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> s5pv210_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> sama5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> sb1250_swarm_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warning=
s, 0 section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> shannon_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> shmobile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> simpad_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> socfpga_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> spear13xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> spear3xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> spear6xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> spitz_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> stm32_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> sunxi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> tango4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> tb0219_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> tb0226_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> tb0287_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> tct_hammer_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> tegra_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches
>>
>> Warnings:
>>     drivers/gpu/drm/ttm/ttm_pool.c:243:21: warning: =E2=80=98ttm_pool_ty=
pe_count=E2=80=99 defined but not used [-Wunused-function]
>>
>> ------------------------------------------------------------------------=
--------
>> tinyconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> tinyconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> tinyconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> tinyconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> tinyconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches
>>
>> Warnings:
>>     .config:1181:warning: override: UNWINDER_GUESS changes choice state
>>
>> ------------------------------------------------------------------------=
--------
>> tinyconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> tinyconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> trizeps4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> u300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> u8500_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> vdk_hs38_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> vdk_hs38_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings=
, 0 section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> versatile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> vexpress_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> vf610m4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> viper_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> vocore2_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> vt8500_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings=
, 0 section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> workpad_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> x86_64_defconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> x86_64_defconfig (x86_64, clang-10) =E2=80=94 PASS, 0 errors, 2 warnings=
, 0 section mismatches
>>
>> Warnings:
>>     drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: eb=
_prefault_relocations()+0xc6: stack state mismatch: cfa1=3D7+8 cfa2=3D-1+0
>>     drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: eb=
_copy_relocations()+0x249: stack state mismatch: cfa1=3D7+104 cfa2=3D-1+0
>>
>> ------------------------------------------------------------------------=
--------
>> x86_64_defconfig (x86_64, clang-11) =E2=80=94 PASS, 0 errors, 2 warnings=
, 0 section mismatches
>>
>> Warnings:
>>     drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: eb=
_prefault_relocations()+0xb8: stack state mismatch: cfa1=3D7+8 cfa2=3D-1+0
>>     drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: eb=
_copy_relocations()+0x259: stack state mismatch: cfa1=3D7+104 cfa2=3D-1+0
>>
>> ------------------------------------------------------------------------=
--------
>> x86_64_defconfig+kvm_guest (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 w=
arnings, 0 section mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> xcep_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> xway_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches
>>
>> Warnings:
>>     drivers/net/ethernet/lantiq_etop.c:273:4: warning: ignoring return v=
alue of =E2=80=98request_irq=E2=80=99, declared with attribute warn_unused_=
result [-Wunused-result]
>>     drivers/net/ethernet/lantiq_etop.c:281:4: warning: ignoring return v=
alue of =E2=80=98request_irq=E2=80=99, declared with attribute warn_unused_=
result [-Wunused-result]
>>
>> ------------------------------------------------------------------------=
--------
>> zeus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>>
>> ------------------------------------------------------------------------=
--------
>> zx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches
>>
>> ---
>> For more info write to <info@kernelci.org>
>>
>> --
>> You received this message because you are subscribed to the Google Group=
s "Clang Built Linux" group.
>> To unsubscribe from this group and stop receiving emails from it, send a=
n email to clang-built-linux+unsubscribe@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msg=
id/clang-built-linux/5fc5476c.1c69fb81.43fd4.49d0%40mx.google.com.
>=20
>=20
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/9ebc5cc1-e871-6c03-e420-549ce2c31c70%40collabora.com.
