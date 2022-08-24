Return-Path: <clang-built-linux+bncBCT6537ZTEKRBYUMTKMAMGQEFOE3DNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 389A05A028A
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Aug 2022 22:13:23 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id n17-20020adf8b11000000b0022536079ef1sf2720342wra.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Aug 2022 13:13:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1661372002; cv=pass;
        d=google.com; s=arc-20160816;
        b=SdgVedC+B4f+ewaHKCePcQqcUIaEizTf7jlCqx4qZb/N449yx6XIx/Y/Hgoq2wJXsT
         ns5gqVyNgg9xW8f3Smho0VRElib1PB5TCyp5qcRXhL37m0y6dPVVZUGEIuMZFYCCp7Uh
         dGk1r5NZRy/H1a893p4biYkLxF7jFhrbNcXoaMjMoh5IWKUFIn3XBWAmGwFgT7g4YuCX
         cEA5wIxh0aBoTjpMFLCwDknOQ/GWtCTFwK5Onvv6KyNqUpLD/j2tn0Dph1YVxQnfAIFC
         cTi05hTjPXjVlu3xLdXYtW951LiY6nK9JWEszEppjIhW6kF+QF02VJdZtc1fAr4LzJ9u
         dqzQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=9c9jIDmZmfFSPEWFm1Hir1iYnSsPGiQPJko69ALPpMY=;
        b=cOjGNL+uZjd6gNhCj3X0yRnSy434l+3cryIGjqJVuQbWoK+Y6WWiyXxIfwv6NO14ZR
         h/CfxATAsNoRw82t/p6rDNDy/aqDSp6OVAI5CbbsLc2OkTxlqqtiGuRApYbjDXHwlQh5
         Gb35q3nOvbz+KXxvRtEO3U22+CqgMEkye9+2ylM4FORvE8cQ+YLgLQhbmx6M+ieEMrGS
         mH1On5k08qfsD2oKvE8X1hHz2EULqBYwuFZ/GHbxmf2v6xb5vOhhQa0Yjt9npKCRWCkk
         zgcnXKQHGU+tInfE2wSegT5eRe55QES076KVuA0puhhGCYxgwCcC4g+QxYmvFyyjlgCb
         M7ZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=ukFtpbOm;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::633 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:sender:from:to:cc;
        bh=9c9jIDmZmfFSPEWFm1Hir1iYnSsPGiQPJko69ALPpMY=;
        b=i2ylnLjTSys71zr1KqKiCnjsjZswf5HLeGLv7Yn9DbB5dwkKztVOFZQqwF3ryWUhDY
         jxqy5dQA92LT/u7RquMxD4CYy1+tiUjzmiKGJRcrJaT6DgUnBy2xtGyZX2f10NbDaDEW
         vgEslQ0MEc3R5gaHRFHOvIZZGxaRf+7SmDvu88j+PzePQddlFvHewTVo20MH+fuV+Sjy
         NOj9lwoWx0JFG8kc+99c4K5xtGPhvbgYIL4ZYTd3HBKriPQjJBxG3Msrnsy7L7U9n6/S
         GtaVErqbMrblY29gCiU96Az6du1K+bQWkwEne6TWjwuqlt3dG1ANYhjNjS71LiynRFt+
         aJbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:sender:from:to:cc;
        bh=9c9jIDmZmfFSPEWFm1Hir1iYnSsPGiQPJko69ALPpMY=;
        b=ifU3iq2o7xgJ+SYqC1AR1onId5B1Fbxc95WBjSUFU51pkOWQB6VJ8BCS193JlLs1m9
         7MYea0yNYCKzRt6O6jSGh9RLR/mxRGZpoB+nDfDa7fFBOYRWmnvxf+P3U6jupdBYt+ER
         +mAh29pI6SBB9sddy488xWwZzerUl93+FEiYvyHR8V4wQH5+N7VAcZb9ZSH9Gpy8uyFl
         qr9rDfMHFFnpslG4npi0xwe7u/sGej/1pgG5bZaiqxIOdO7dVhzzl5OzPWGJT8CuThLd
         np7lLMVmHQboDCF/YTt9c/pBCXcunPQUb4VY14lML916cSjcWGukgK89fpRhl3MnTS7P
         wB+g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ACgBeo0ViVzvQrQEWpclrjZ5IosIIXackoFEaeM+8DqsHPbB32eWMkaJ
	VzxrUaDKr2gyYkNrtG5qpLE=
X-Google-Smtp-Source: AA6agR61eq2WnG8HI2ewE1NHPr8qk7q9NBk2mkAVR96xmROmXsGyb1TV3+R/TeMCCHWlw3rw6SvKGw==
X-Received: by 2002:a5d:4587:0:b0:225:5f3f:1d7a with SMTP id p7-20020a5d4587000000b002255f3f1d7amr410884wrq.181.1661372002545;
        Wed, 24 Aug 2022 13:13:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6000:22d:b0:221:24a2:5cf with SMTP id
 l13-20020a056000022d00b0022124a205cfls3753470wrz.0.-pod-prod-gmail; Wed, 24
 Aug 2022 13:13:21 -0700 (PDT)
X-Received: by 2002:a5d:47a6:0:b0:225:6283:3d71 with SMTP id 6-20020a5d47a6000000b0022562833d71mr430842wrb.694.1661372001524;
        Wed, 24 Aug 2022 13:13:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1661372001; cv=none;
        d=google.com; s=arc-20160816;
        b=OH116L/Etmx5NakSr4QjRTimnnEorZrIFjI70pI/rTxoeP3mLy72YEp04xk81Fu/NY
         5ZtAdSGSLE3DVkQYkWRe+f1QjmHYZS+XvRiorJpzVPj/pw3eju60b6FgutCmeyBoEAUr
         zPjMABEB9SHW54xoG8MY3PiH20gkamZH0BnNO6DVkAGzjm0XAUwcama7UctRp55b61kk
         qF0duVgB8vfo30RwPqVmKPx+DgOIr2+2DduAupDbElPS61IVhz4KVeZolzxBAGXBkdUd
         f3jr4f5oRihSDav3F0npuKhqG6cgGHYGU8i1tv37iPro/ir0d3uor0TFgtT1IC7HITlJ
         hFDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=HgbqYZOjkQz+AVbkvY9xpQJX7wcETZRoC2bMvANI6uE=;
        b=1Fsmyc3KrQWTUQlqdRAj2SqTz9j5pUmPxQRc2fC9lR0MS9YLhtATtrTTbYxh21lF3O
         tjPjMhHuEtS+NsEBDWO5q+rdxZXmfywt1MaUzSU91FXVGZZtqKUfILVa3ahnImRcHsZY
         J38F1jI/eOqRhYBIWHR97s1JR1j5RpObub/NRmKgLrCuJ/TKQQaKpTyHYk5i+jz5jTWX
         Lb9jxoAld8SQqEOTCuvc6H48QyeqJQkmaWiiVNwSS1vGDvjJUgiRzBwGejUXsBtybfI9
         mUHWmoexRtqG3Ldw5MYPyrpASGQsE7K+o03wXb1GG8/AhU8eiXlv/QIy6GYWVYHVtoZU
         lhJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=ukFtpbOm;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::633 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com. [2a00:1450:4864:20::633])
        by gmr-mx.google.com with ESMTPS id ck13-20020a5d5e8d000000b0021e8b3a5ffesi166674wrb.2.2022.08.24.13.13.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Aug 2022 13:13:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::633 as permitted sender) client-ip=2a00:1450:4864:20::633;
Received: by mail-ej1-x633.google.com with SMTP id sd33so14285151ejc.8
        for <clang-built-linux@googlegroups.com>; Wed, 24 Aug 2022 13:13:21 -0700 (PDT)
X-Received: by 2002:a17:906:9bea:b0:73d:cd17:7528 with SMTP id
 de42-20020a1709069bea00b0073dcd177528mr198282ejc.412.1661372001129; Wed, 24
 Aug 2022 13:13:21 -0700 (PDT)
MIME-Version: 1.0
References: <20220824065936.861377531@linuxfoundation.org>
In-Reply-To: <20220824065936.861377531@linuxfoundation.org>
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Thu, 25 Aug 2022 01:43:09 +0530
Message-ID: <CA+G9fYuTOvKfHz7t0GppiNqLx-9n-yycsLX-rdMQogrh9guX_w@mail.gmail.com>
Subject: Re: [PATCH 5.19 000/362] 5.19.4-rc2 review
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-kernel@vger.kernel.org, stable@vger.kernel.org, 
	torvalds@linux-foundation.org, akpm@linux-foundation.org, linux@roeck-us.net, 
	shuah@kernel.org, patches@kernelci.org, lkft-triage@lists.linaro.org, 
	pavel@denx.de, jonathanh@nvidia.com, f.fainelli@gmail.com, 
	sudipm.mukherjee@gmail.com, slade@sladewatkins.com, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: naresh.kamboju@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=ukFtpbOm;       spf=pass
 (google.com: domain of naresh.kamboju@linaro.org designates
 2a00:1450:4864:20::633 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
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

On Wed, 24 Aug 2022 at 12:31, Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> This is the start of the stable review cycle for the 5.19.4 release.
> There are 362 patches in this series, all will be posted as a response
> to this one.  If anyone has any issues with these being applied, please
> let me know.
>
> Responses should be made by Fri, 26 Aug 2022 06:58:34 +0000.
> Anything received after that time might be too late.
>
> The whole patch series can be found in one patch at:
>         https://www.kernel.org/pub/linux/kernel/v5.x/stable-review/patch-5.19.4-rc2.gz
> or in the git tree and branch at:
>         git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-5.19.y
> and the diffstat can be found below.
>
> thanks,
>
> greg k-h

Results from Linaro's test farm.
No regressions on arm64, arm, x86_64, and i386.

Tested-by: Linux Kernel Functional Testing <lkft@linaro.org>

NOTE:
x86_64 and arm64 clang nightly allmodconfig build failed.
sound/soc/atmel/mchp-spdiftx.c:508:20: error: implicit truncation from
'int' to bit-field changes value from 1 to -1
[-Werror,-Wbitfield-constant-conversion]
dev->gclk_enabled = 1;
                  ^ ~
1 error generated.

clang-14-allmodconfig build pass on x86_64 and arm64.
https://qa-reports.linaro.org/lkft/linux-stable-rc-linux-5.19.y/build/v5.19.3-363-gafd9d04cfdb9/testrun/11542345/suite/build/test/clang-14-allmodconfig/history/

clang-nightly-allmodconfig build pass on x86_64 and arm64.
https://qa-reports.linaro.org/lkft/linux-stable-rc-linux-5.19.y/build/v5.19.3-363-gafd9d04cfdb9/testrun/11542345/suite/build/test/clang-nightly-allmodconfig/history/

## Build
* kernel: 5.19.4-rc2
* git: https://gitlab.com/Linaro/lkft/mirrors/stable/linux-stable-rc
* git branch: linux-5.19.y
* git commit: afd9d04cfdb9cff1b69e2ff10272ced56c641036
* git describe: v5.19.3-363-gafd9d04cfdb9
* test details:
https://qa-reports.linaro.org/lkft/linux-stable-rc-linux-5.19.y/build/v5.19.3-363-gafd9d04cfdb9

## Test regressions (compared to v5.19.3)
* arm64, build
  - clang-nightly-allmodconfig

* x86_64, build
  - clang-nightly-allmodconfig
  - https://builds.tuxbuild.com/2DntPWhfYK6ESM6Il3l6aIvKqes/

* riscv, build
  - clang-nightly-allmodconfig
  - clang-nightly-defconfig
  - clang-nightly-tinyconfig
  - https://builds.tuxbuild.com/2DntPYts34sHJI5VZuK5zKzkXr1/

## No metric Regressions (compared to v5.19.3)

## No test Fixes (compared to v5.19.3)

## No metric Fixes (compared to v5.19.3)

## Test result summary
total: 106629, pass: 95920, fail: 1031, skip: 9541, xfail: 137

## Build Summary
* arc: 10 total, 10 passed, 0 failed
* arm: 306 total, 303 passed, 3 failed
* arm64: 68 total, 65 passed, 3 failed
* i386: 57 total, 51 passed, 6 failed
* mips: 50 total, 47 passed, 3 failed
* parisc: 14 total, 14 passed, 0 failed
* powerpc: 65 total, 56 passed, 9 failed
* riscv: 32 total, 24 passed, 8 failed
* s390: 22 total, 20 passed, 2 failed
* sh: 26 total, 24 passed, 2 failed
* sparc: 14 total, 14 passed, 0 failed
* x86_64: 61 total, 58 passed, 3 failed

## Test suites summary
* fwts
* igt-gpu-tools
* kunit
* kvm-unit-tests
* libgpiod
* libhugetlbfs
* log-parser-boot
* log-parser-test
* ltp-cap_bounds
* ltp-commands
* ltp-containers
* ltp-cpuhotplug
* ltp-crypto
* ltp-cve
* ltp-dio
* ltp-fcntl-locktests
* ltp-filecaps
* ltp-fs
* ltp-fs_bind
* ltp-fs_perms_simple
* ltp-fsx
* ltp-hugetlb
* ltp-io
* ltp-ipc
* ltp-math
* ltp-mm
* ltp-nptl
* ltp-open-posix-tests
* ltp-pty
* ltp-sched
* ltp-securebits
* ltp-smoke
* ltp-syscalls
* ltp-tracing
* network-basic-tests
* rcutorture
* v4l2-compliance
* vdso

--
Linaro LKFT
https://lkft.linaro.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BG9fYuTOvKfHz7t0GppiNqLx-9n-yycsLX-rdMQogrh9guX_w%40mail.gmail.com.
