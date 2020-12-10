Return-Path: <clang-built-linux+bncBCT6537ZTEKRBV5QZH7AKGQEMQY3FQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x539.google.com (mail-ed1-x539.google.com [IPv6:2a00:1450:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F9422D634B
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Dec 2020 18:18:16 +0100 (CET)
Received: by mail-ed1-x539.google.com with SMTP id h5sf2737784edq.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Dec 2020 09:18:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607620695; cv=pass;
        d=google.com; s=arc-20160816;
        b=pMi5Rbm/gD4RU+9LiTWCaYhjcyrD9crPIs3J7GBzUKAG2WXmw8VEcnteWTV4ObGS7a
         tfKkANC3HAhwOj17L+U9F731O/LqOgmGHYfif0pRJ+bBQfl484gSB/NS4NDN+IQjAS8z
         Gh/6T6NpREX+Ji9ViR4xH2N62vXJHLiAngkfC043OOHq2nyRRXvjlndfLiWODSD6ZM2j
         WJJ8N8g5uFob6NXdt1gUYbLeRCrCnKSrBFGcWnMUC9kzDk4sy7rXZ/yH15k/jBCJqvKq
         FsimFPg+iYmeEfmZ2aI94etrQnRBrrJs94knxkCmCIzX5oTQnROd3M9MB7H/TDkYiCJB
         myqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature;
        bh=T0FHTYYuJlFvZPJe8QCnpCTDLZesNsRQdhm2N32G4nI=;
        b=ceOojiKYpx0IhU128WECvnOul//KhltK2Qmn0TgS22hqBAAQ6O1incc3SjQlRM0HlB
         6fFJ3yrHgVtfc1YJcntqIJs26Abc54XmCHBo7UYET5BDwfauygi19IKNUlJIvb9m5fW0
         vHYrFqFufaSX5X8unA8oe20GiGqnb24MxYabjo+xSpPFEA91CoUidMMNgOa1Oc8Crkwq
         KPz78R6ZQnAPXWZ5YwrZhEiiSqlTPJHZ/WUuBqqbyqXvs4pgFkl1dfpEKDu2N+GDm9m6
         yL76eaSZ8ZVI/1SOhZqz8H8gFjGgNJYh/mW9pUIqT7FidD/QOB9g9TBNs3w5VR6rU+D6
         SZvw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=ST7OI3KG;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::534 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=T0FHTYYuJlFvZPJe8QCnpCTDLZesNsRQdhm2N32G4nI=;
        b=DxKObLRHjHB8fl1r06HLWDvhM0CAaCMVkdfyW1F1XKbUxrnEgVPbusPSpAwAIKq3x4
         9sT5sby5gYHTJESTwAniGqqXDViKN2dv2+2+BvDFJsoPh+YLlmArof+jN7tsuKrff5ed
         wBH9pq+Yn+chiABcM3cWURkeOpasF+EhzgzvRpCjuGIuABwtDqTEP2fQIhBX6wg0ceQc
         HnsGoc5nqdilnXr7pJ1gA1ySLLHHcO5smItbM1//57qC6lJaaOJbCC4fJk61l74RTGlI
         6Dge2P5zSYU1/qUeGxKYCw9E8yLLQbtEgNgUQGkrlpwWh1Tq3X2GGCeaLxxepmo4gSQm
         VIzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=T0FHTYYuJlFvZPJe8QCnpCTDLZesNsRQdhm2N32G4nI=;
        b=uiBUFSxOyle6JOj3VzASwYNGJVzmeHvDMc56qZD5C3iYFN9NT6iuwSQoVFriCN4pqh
         rXHE9XHlN5p6Y8uszFnhkIWvBT5Oot6Kx93cKX1bXWH9GsYnSBa0prfR3Z3DljfxSY8g
         9JZ8aCsd/LdToJwoxtJpgRK9k+WifXuMDnjyAdjs74NGJPuefJ8+4nwtHxCVj0LbsSUf
         wWh50PwpYaLcZatv5jZTUruKg1nbu6ycbwyBO5ptwvFqnIB/DoEObz32GH2DFUxt34ZV
         dfrswMuMxLhKh3pql/1rNSkZTqCF1J3f/Y8DToPul7JlXNO2qzvPQF9OovaPYR4aZ1np
         JAng==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ENGtPIkL65zcc3iUCd9gtWzOGYUjJmdE9LfZ38pMoJPopAP4X
	fvJ5hVQWN0BWVRHRrD08NtE=
X-Google-Smtp-Source: ABdhPJwEyirlAnTeAxCjxrm07KIYcieKNvRNaGBsFN1uwV/1HTEtMhzNGjlWd9/exe/Gu/ZEcTKQqw==
X-Received: by 2002:a17:906:ce23:: with SMTP id sd3mr7354068ejb.69.1607620695810;
        Thu, 10 Dec 2020 09:18:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:5591:: with SMTP id y17ls405532ejp.5.gmail; Thu, 10
 Dec 2020 09:18:15 -0800 (PST)
X-Received: by 2002:a17:907:206a:: with SMTP id qp10mr7462295ejb.432.1607620694970;
        Thu, 10 Dec 2020 09:18:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607620694; cv=none;
        d=google.com; s=arc-20160816;
        b=AICPsvwoYz/TNSOnjQYFbifDOetlTLrL1+IO527z2Mvbfx4ujRQF6N8/1D2/r0az4H
         MfqyuhzHxeDoM6tauxrAcX0g+pK+BqmLO4y9SBC+R9r87o510us3wVpyuhjsDUlJGYN+
         7y6QfKK7X+9Rqyq43TnwScWAVJCj+Ude4tRY6+4rox56frm3nvh9OoSzB95/20HyQdVz
         IF5y9IH8UtUFPV+qRKReGsqIYiDhu4b38XPeeomtVVLZP6+vrEYl+R96cZ3nU/GqKhU2
         1tfPhrX87zepdF0+1UlvtWTcw7icqchAYlsBabjGGCNBKr66lPx8dVa3uwUHqZcZsKfC
         UClw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=MW8U021JzvFtVr7JpE11QNz129nE9ceQfCdsjjgn81w=;
        b=CTUI+Gwx6U12sIpJhxi5GEFZ6GawWkvN76IuS/aDI+Tc+ZShLV8G4NHmtJqUHuGR+y
         9YNVkhnBVCBFjEBPIbKLSBFgJdx4bIIx6eWAlZ1jr2HzQ+YsUPjK3CjD6amWcXrU5lK1
         IsS+C0OBdCfXVI/kT9iGqTfuiVzHsGZea78SIfMM/OiOpZ4cFizxGT4xhamZlpuaq28H
         71UrP5kyxh6A1ERuoDjhdzaGHf16oR903ehUmXd46me4/28w8OkGrsM/AFhFB3AfavCh
         Y0SP6p9hgiBRR7sEZbvWlZAmtCR1hnFgO/n8bCCVtJtO888CcT7Hh9EcqjObqGI8RfiC
         beYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=ST7OI3KG;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::534 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com. [2a00:1450:4864:20::534])
        by gmr-mx.google.com with ESMTPS id z13si187342ejb.1.2020.12.10.09.18.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Dec 2020 09:18:14 -0800 (PST)
Received-SPF: pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::534 as permitted sender) client-ip=2a00:1450:4864:20::534;
Received: by mail-ed1-x534.google.com with SMTP id cm17so6353781edb.4
        for <clang-built-linux@googlegroups.com>; Thu, 10 Dec 2020 09:18:14 -0800 (PST)
X-Received: by 2002:aa7:d75a:: with SMTP id a26mr7637348eds.230.1607620694590;
 Thu, 10 Dec 2020 09:18:14 -0800 (PST)
MIME-Version: 1.0
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Thu, 10 Dec 2020 22:48:03 +0530
Message-ID: <CA+G9fYuRHoZsW9KyRJVGrXznB8dbt5+ZZTMCpK+3mqcuwHcSMw@mail.gmail.com>
Subject: MIPS + clang-11 + allnoconfig / tinyconfig builds failed
To: linux-mips@vger.kernel.org, open list <linux-kernel@vger.kernel.org>, 
	tsbogend@alpha.franken.de, xie.he.0141@gmail.com, 
	clang-built-linux <clang-built-linux@googlegroups.com>, lkft-triage@lists.linaro.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: naresh.kamboju@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=ST7OI3KG;       spf=pass
 (google.com: domain of naresh.kamboju@linaro.org designates
 2a00:1450:4864:20::534 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
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

Recently we have setup clang build and found that,
MIPS + clang-11 + allnoconfig  build failed
MIPS + clang-11 + tinyconfig  build failed

MIPS + clang-10 + allnoconfig  build failed
MIPS + clang-10 + tinyconfig  build failed

We have noticed these build failures on
 - stable-4.19
 - stable-5.4
 - stable-5.9
 - mainline
 - next-master

FYI, The defconfig builds are successful.
BTW, May I know what are the configs you build often ?

Steps to reproduce build failure:
-----------------------------------------
# sudo pip3 install -U tuxmake
# tuxmake --runtime docker --target-arch mips --toolchain clang-11
--kconfig allnoconfig
# tuxmake --runtime docker --target-arch mips --toolchain clang-11
--kconfig tinyconfig

Build failed log:
ake --silent --keep-going --jobs=16
O=/home/tuxbuild/.cache/tuxmake/builds/2/tmp ARCH=mips
CROSS_COMPILE=mips-linux-gnu- 'HOSTCC=sccache clang' 'CC=sccache
clang' allnoconfig
make --silent --keep-going --jobs=16
O=/home/tuxbuild/.cache/tuxmake/builds/2/tmp ARCH=mips
CROSS_COMPILE=mips-linux-gnu- 'HOSTCC=sccache clang' 'CC=sccache
clang'
/builds/1kl9SVppm6wRdzlQ3UcQKIBaUrx/arch/mips/vdso/elf.S:14:1:
warning: DWARF2 only supports one section per compilation unit
.pushsection .note.Linux, "a",@note ; .balign 4 ; .long 2f - 1f ;
.long 4484f - 3f ; .long 0 ; 1:.asciz "Linux" ; 2:.balign 4 ; 3:
^
/builds/1kl9SVppm6wRdzlQ3UcQKIBaUrx/arch/mips/vdso/elf.S:34:2:
warning: DWARF2 only supports one section per compilation unit
 .section .mips_abiflags, "a"
 ^
/builds/1kl9SVppm6wRdzlQ3UcQKIBaUrx/arch/mips/lib/uncached.c:45:6:
warning: variable 'sp' is uninitialized when used here
[-Wuninitialized]
        if (sp >= (long)CKSEG0 && sp < (long)CKSEG2)
            ^~
/builds/1kl9SVppm6wRdzlQ3UcQKIBaUrx/arch/mips/lib/uncached.c:40:18:
note: initialize the variable 'sp' to silence this warning
        register long sp __asm__("$sp");
                        ^
                         = 0
1 warning generated.
WARNING: modpost: vmlinux.o(.text+0x1a124): Section mismatch in
reference from the function r4k_cache_init() to the function
.init.text:loongson3_sc_init()
The function r4k_cache_init() references
the function __init loongson3_sc_init().
This is often because r4k_cache_init lacks a __init
annotation or the annotation of loongson3_sc_init is wrong.
WARNING: modpost: vmlinux.o(.text+0x1f1c8): Section mismatch in
reference from the function mips_sc_init() to the function
.init.text:mips_sc_probe()
The function mips_sc_init() references
the function __init mips_sc_probe().
This is often because mips_sc_init lacks a __init
annotation or the annotation of mips_sc_probe is wrong.
FATAL: modpost: Section mismatches detected.
Set CONFIG_SECTION_MISMATCH_WARN_ONLY=y to allow them.
make[2]: *** [/builds/1kl9SVppm6wRdzlQ3UcQKIBaUrx/scripts/Makefile.modpost:59:
vmlinux.symvers] Error 1

--
Linaro LKFT
https://lkft.linaro.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BG9fYuRHoZsW9KyRJVGrXznB8dbt5%2BZZTMCpK%2B3mqcuwHcSMw%40mail.gmail.com.
