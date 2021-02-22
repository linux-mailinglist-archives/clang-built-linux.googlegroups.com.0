Return-Path: <clang-built-linux+bncBCT6537ZTEKRB5NNZ6AQMGQEVGWANJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BC2D321C5F
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Feb 2021 17:08:22 +0100 (CET)
Received: by mail-lj1-x239.google.com with SMTP id o8sf12938764ljp.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Feb 2021 08:08:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614010102; cv=pass;
        d=google.com; s=arc-20160816;
        b=Sm1I/lu6tVYF+dE8VNNyw7HTeQsBO/ayT/fHsH9nYCVZL8/9Tgv9hk8A3l73tB4J72
         nx86GBupU0EGSImlH/65wfJncEmNLTsLqzhXeenNUI5U5KzpTk85BpAHKCymE3pTuQsJ
         m2TgMGCMvJMC+T8569HXATzY1UjwAFMtWd6jSsUolEWuOSGicu8p1S5UMSIa7iA3g5KR
         /Ko1cEWjU3sqXC+pPBiJJFRJCBrO5AVP9sCQDbTlEGzuKn7jPkLpRuDFtMkE47eDLSFn
         qo/32hfybgoTgyZjPGJAackO25gMUw7H9q1kGoTnexxt0W4Ubcb97yUt+qyArATZpqZZ
         xpbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature;
        bh=QoAX1b/oDf+y55wIYvDigVPwX/j1plTX78HzBq5IQxI=;
        b=lPzAkfX6GUhjfc9EatBPO35Am+ZipdZvwlA/c/BqdmypqwwHQed7NVj73JtkecaNEK
         geo97EudgkmEXRUcehJ5g7GW5HuEkrIAZSBp7EKpokJ7mgwMbqAmGnmD+bnHPK+BFLdI
         SnKLyQwFc/EiXnXgPrCFt9pKQ8He1B8IQnDnlZ1H90tvvzaoAJEL5bEo6Lr8Bv0WOtER
         cZESB1Y61BG5ldC0O8TAwQRpUPiRbbUToaT/PMrifr4V0BH1ta9jh9QvR0amQQK1/Ebd
         RCmHtugVoIXAcvNKlHm9QVcA6l7wGjSTMjki3KGiygjjUc8XR+EtNtoArbgRZChq+X74
         LcqA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=mcHi7L8O;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::635 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QoAX1b/oDf+y55wIYvDigVPwX/j1plTX78HzBq5IQxI=;
        b=q0YLuxug4Nnru/9pgkx98LVb3YLhpLvfDBoX5Sq18e3x9S3AXCWuU69PxMifo345jj
         J62BNaeav5QrVvvU7eM17PJQ+3hexzYVzz+WjiD4LhctzNWZWatiRdIhZ3/Zlsbg1ZiX
         RppTz4fxPRwH/XS+pSCgRiRxv1Vn5CQ8fePpeOWRtTLHsNnS/R6GEycCkOLUTQ0lQE+I
         OPws2eqbnZXqtiFCrJoYa8CWYxyK/IUEftIAf8CLl8PtSWNH4vwZtltMcRcCprvd7tru
         X9wk/B1j3IMFgwHw4PeBwX+++EOwcagB8KWWz/EXFwirJ5gA4irmnd2JyBct1OVEB6nH
         R3lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QoAX1b/oDf+y55wIYvDigVPwX/j1plTX78HzBq5IQxI=;
        b=b1un9BTHYSrTOaMTucDDR4hVyjEsCqCs52MoiF4l6jDeTyN5Uq1ScJAB4L+zSB0BX4
         6QxflazyOEG+8JVggbi0pgCV3XO8QBYVcOmSyItB0XXHmGShiV2FLyA4QfzJeNVl7iK7
         /sW4kVoZi/pFW601Vf9GDVivzFlr2IX5DIKaLapinoImP6IZq7wo+M2RpFdCGV1Cq12R
         I6FO0QNMe+gbzMgH1aFVfax/ZX+c1u4amJDWIhZhJdG2ibVCQjrueAZFnXx2GjfPusiK
         aquJYFU5Zb9XtFym2/WHSxgqWqvGcjL3PoVAS65qvuWMFkJgd4PgnJhCBN76ZNEMjR6X
         SrQw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533geVbVWQKVqykd8cDvfM+IMz2zl5jTD7IAdndGEB0+IKhA5p+D
	IDhwZXPbySSZ3H+3J779wfA=
X-Google-Smtp-Source: ABdhPJydIarhEUYGz1DdeNW7I9IvdLjR54Q8Bzxsj/VHVbWZrpTBQFYsMk0X9JFZm5aPt0WBoc2PRQ==
X-Received: by 2002:a19:5218:: with SMTP id m24mr14748123lfb.145.1614010101891;
        Mon, 22 Feb 2021 08:08:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:4c:: with SMTP id 73ls325431lfa.2.gmail; Mon, 22 Feb
 2021 08:08:21 -0800 (PST)
X-Received: by 2002:a19:c517:: with SMTP id w23mr13362313lfe.606.1614010100928;
        Mon, 22 Feb 2021 08:08:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614010100; cv=none;
        d=google.com; s=arc-20160816;
        b=TNPEWLPnH6qZFOjabi/tgqmHYelj9sU1ND67d7KyHBk5XsmbBQhFCM2n+e4//drw7z
         RsQdvyg9p68DcYrn5+BhYvYss8kVqKH9m+/IGW/DTM8nI9bu8H7soTklwdgZiGeuV7fL
         VOgmMrU7uHFTNJN3EI7BTcVut7Q4diQr92VGTm76FIjaK5dhn3rdwtCX7gWlT4RgTHJn
         xQGxsPFD/gGf18U4h8lPpJnkt2UF8ZZRxSpdZYb8gb5RAsJVIvs9NsNsfonTbrMIEB1b
         u4UYRFAIJQkKVy6VkoE68NuWs7YFg0cysO52FImg/ympviU/1XSiuaCr1yDOwaY+YAS1
         0J2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=TyEqjaEftvJKe5NhA72gotX3XSovzTBWWQb9G6YQcso=;
        b=mSE8zMuRVc+CWg4JAYPPjbFBvA8ZTvYcgXsiFZV4glObPFvAAGWMAtbCKmxYnY6WCZ
         IAoGqBf61ccMQ72zeILV6fllBfg+sEs9X/X/yE8hoKdLPL2+f24VnWGBUS71mh2evo2C
         n62Tsd5ktwziJ3rGYAc0EC1ZdayUvSeOuJLa1jGWN3+eiIYz7dLFIbyb5kRMtPhxFNT5
         MV1xWqL5W6ENO2/y9mqcfTe6ZM53hjs8JC9JuEaRHbxaJg+9FsXwrEYtS3za1RKTtP6o
         mlLHG5c6B/ya5f8zFqgU9UDv6t74yJoCE4DuJ6ISPrKezUAIP41EHeca5YI/GiIcl529
         ZQcA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=mcHi7L8O;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::635 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com. [2a00:1450:4864:20::635])
        by gmr-mx.google.com with ESMTPS id a26si305154lff.2.2021.02.22.08.08.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Feb 2021 08:08:20 -0800 (PST)
Received-SPF: pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::635 as permitted sender) client-ip=2a00:1450:4864:20::635;
Received: by mail-ej1-x635.google.com with SMTP id r17so3908995ejy.13
        for <clang-built-linux@googlegroups.com>; Mon, 22 Feb 2021 08:08:20 -0800 (PST)
X-Received: by 2002:a17:906:4c85:: with SMTP id q5mr21293694eju.375.1614010099619;
 Mon, 22 Feb 2021 08:08:19 -0800 (PST)
MIME-Version: 1.0
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Mon, 22 Feb 2021 21:38:08 +0530
Message-ID: <CA+G9fYtNOZ-G_RTq_Uedy-7wkFog2q+OWNbWd--eL+i2-OQ7NA@mail.gmail.com>
Subject: clang-12: i386: Unsupported relocation type: R_386_PLT32 (4)
To: clang-built-linux <clang-built-linux@googlegroups.com>, 
	open list <linux-kernel@vger.kernel.org>, x86-ml <x86@kernel.org>, 
	lkft-triage@lists.linaro.org
Cc: Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: naresh.kamboju@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=mcHi7L8O;       spf=pass
 (google.com: domain of naresh.kamboju@linaro.org designates
 2a00:1450:4864:20::635 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
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

While building i386 configs on stable-rc 5.10, stable-rc 5.11 branch
and mainline
with clang-12 these following warnings and errors were noticed.

make --silent --keep-going --jobs=8
O=/home/tuxbuild/.cache/tuxmake/builds/1/tmp ARCH=i386
CROSS_COMPILE=i686-linux-gnu- 'HOSTCC=sccache clang' 'CC=sccache
clang'

drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:2586:9: warning: shift
count >= width of type [-Wshift-count-overflow]

        return hweight64(VDBOX_MASK(&i915->gt));
               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
include/asm-generic/bitops/const_hweight.h:29:49: note: expanded from
macro 'hweight64'
#define hweight64(w) (__builtin_constant_p(w) ? __const_hweight64(w) :
__arch_hweight64(w))
                                                ^~~~~~~~~~~~~~~~~~~~
include/asm-generic/bitops/const_hweight.h:21:76: note: expanded from
macro '__const_hweight64'
#define __const_hweight64(w) (__const_hweight32(w) +
__const_hweight32((w) >> 32))
                                                                           ^  ~~
include/asm-generic/bitops/const_hweight.h:20:49: note: expanded from
macro '__const_hweight32'
#define __const_hweight32(w) (__const_hweight16(w) +
__const_hweight16((w) >> 16))
                                                ^
include/asm-generic/bitops/const_hweight.h:19:48: note: expanded from
macro '__const_hweight16'
#define __const_hweight16(w) (__const_hweight8(w)  +
__const_hweight8((w)  >> 8 ))
                                               ^
include/asm-generic/bitops/const_hweight.h:10:9: note: expanded from
macro '__const_hweight8'
         ((!!((w) & (1ULL << 0))) +     \
               ^
drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:2586:9: warning: shift
count >= width of type [-Wshift-count-overflow]
        return hweight64(VDBOX_MASK(&i915->gt));
               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
<trim>

32 warnings generated.
Unsupported relocation type: R_386_PLT32 (4)
make[3]: *** [arch/x86/boot/compressed/Makefile:116:
arch/x86/boot/compressed/vmlinux.relocs] Error 1
make[3]: *** Deleting file 'arch/x86/boot/compressed/vmlinux.relocs'
make[3]: Target 'arch/x86/boot/compressed/vmlinux' not remade because of errors.

Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>

Steps to reproduce:
---------------------------
# TuxMake is a command line tool and Python library that provides
# portable and repeatable Linux kernel builds across a variety of
# architectures, toolchains, kernel configurations, and make targets.
#
# TuxMake supports the concept of runtimes.
# See https://docs.tuxmake.org/runtimes/, for that to work it requires
# that you install podman or docker on your system.
#
# To install tuxmake on your system globally:
# sudo pip3 install -U tuxmake
#
# See https://docs.tuxmake.org/ for complete documentation.

tuxmake --runtime podman --target-arch i386 --toolchain clang-12
--kconfig defconfig  --kconfig-add
https://builds.tuxbuild.com/1opxSKxZuRowPsiOsSJ0IoUOXOt/config

-- 
Linaro LKFT
https://lkft.linaro.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BG9fYtNOZ-G_RTq_Uedy-7wkFog2q%2BOWNbWd--eL%2Bi2-OQ7NA%40mail.gmail.com.
