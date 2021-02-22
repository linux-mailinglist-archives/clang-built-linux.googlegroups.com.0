Return-Path: <clang-built-linux+bncBCT6537ZTEKRBB6XZ6AQMGQEHO7WL6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 4908E321E30
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Feb 2021 18:36:08 +0100 (CET)
Received: by mail-wr1-x438.google.com with SMTP id i2sf2822266wru.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Feb 2021 09:36:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614015368; cv=pass;
        d=google.com; s=arc-20160816;
        b=YrDPz72yz5+TO1LPF9cczzOXxUhfE4h0S7hJ1IXIodWYPk4HD5utnby1XhbafUyZA/
         QfYXXuRGduZh6JgrJBd94kg9DQg1dEgws21591XyieJdXOcu8jVyHSocsfoTXVkzNCWa
         51TAhYwmxV85Cayl0sObrNv3meXRfujHYvFMtcX28avitl3BOn6kPC8D6ElVMVBaj7Hx
         zajBnBa5z2t6y9OuaPlUr1T3EjNJpJCM8s3a14LnnRgiaeUXs6Ys9NSRJm75732MAbVz
         TWXiJ9oTeCjTYTtWYc03pR4xzrzLbjIL2VlukAbH+BLlM1z1bDtvYVXjEL0Kj/1ERscP
         1TaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature;
        bh=8BhEM9gMlY6ZDugvFGS6BSqC/IEG90nYu1j+1/ie6YI=;
        b=xycO8G0+hXgJDPIyxjLwTxQOoBsKape7CSvPti+nY2JJoRogHaDss+v0MWV2P3NiZu
         YHEBXaNqRJTT6H9RtiqeYSTvvQHmSe1ZAK1rqA2qgrIfn2XtcpPz4ghldP4XKaMnMjTN
         JInk1UfcERLC4G7Y0w0HSj5L0d4EF8QIr2Eb13UrgSuKm+NQGdUiqnNafR2jGvA94gnL
         EhaX+NdzJGoNaiO2ITbnwrH0wI+ZrHW3P3KZgheR9EOho4b7sSIboIMhEJ0MA7LlzfFT
         BbW3cXUQytM7yFBPXZ19QbWFqRJ85t0fv781ZimHFWBKdcLFx72koPoh7da+jETnGN6e
         JwLA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=chpHouip;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::535 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8BhEM9gMlY6ZDugvFGS6BSqC/IEG90nYu1j+1/ie6YI=;
        b=H/ShNVuFKdQwY6DuPOJ/RgG28g4x+xRTtCvvhpoNxIlo0DlThxW01ysRBHzbxdkIcE
         Aq4P5Ijr+TqB4WgFeWr7J2Dj9ghgn8xIFkagOAKYI0yg913tKXf8S8TYkGiFHwO3JVlN
         AQWOYMtGULq9gAXDc712E3ax2nqh660uLp9gECA3gwy/ie4rt+1Sngx06o0mrRnO8Lcq
         92ao/n5F/+hi7DpRhZ8icLmMrJY0XgEnHOr897lPzoIeC9RGMv4x1ty9Jx/MthSQowaN
         Q0vOtj+KuUg0wZFzH6AOsAB2jgwmeRlcGgVbMm/Jiy6r3CCVqp3Cvv52zwgEr4QGs60G
         6BYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8BhEM9gMlY6ZDugvFGS6BSqC/IEG90nYu1j+1/ie6YI=;
        b=Emz3T0wwwn5fyRHfdxLhVe2A7wDfQg+wONQQcv2AgPCrSykOTIlSCnizFBgqKSNYzc
         LyidDdSZFzz3XE4JJmo1QB50WJ/AKDUhWK1mSHXzqg6PaiLboVSHRQ/NlmqFOKvgxUSU
         KhOjUjhgpsiv3gOcDXZdgFFhX3+k1b7EuxQd9eQCu3NK3d7tJ6h79wIKC359/nU9/+7S
         Q8YQGNODzxpMDu6fJYTqUH+RWYp1jm4xwmzidMOd2yngg2fwodErQD6iKd5NUyqVSh5n
         f8GjRRDDkQ9/L7jn+QAH8qm3/x1ZO7AJ6/k10UcVmcMW55L/5BB6bse4bcZCv2jRzcEv
         dLOA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530vvr1XsPZqUQzpLeUbQX+4Dvjz0js/ZXOoWvkgCIBd2iqeSt1c
	TDcAxjrhvl2Y3UUt84yGq+Y=
X-Google-Smtp-Source: ABdhPJyOEXavlLWN26m0qvAGN1QmzXAf+BOLfagkJxs8OSjjAm7gFQDifSSmFjXDvAuLsHId0NMKEg==
X-Received: by 2002:a5d:620d:: with SMTP id y13mr22346632wru.88.1614015368082;
        Mon, 22 Feb 2021 09:36:08 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:385:: with SMTP id 127ls7983734wmd.0.canary-gmail; Mon,
 22 Feb 2021 09:36:07 -0800 (PST)
X-Received: by 2002:a05:600c:4f0c:: with SMTP id l12mr20586080wmq.16.1614015367298;
        Mon, 22 Feb 2021 09:36:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614015367; cv=none;
        d=google.com; s=arc-20160816;
        b=mjOI4bGbXYsnp7vJS8iRhB68ybf5Y/ZQznJZcmE87Jl7P9ic+l3kmL8AVFM8HsfMfF
         OVrra24sifkIsid+SVUC/n4LUUyx0afaE/LrrswHAuE9KG3lZwflhNGQuYJNEmk1Z7LU
         +DcsFh1Nt3tUfD9PuDqWX1SY+7Ui8R7gPAM6X0zUEaxC0E9Um0ZpOoSzACqLy5oOw1ok
         FRR1mLsUmpKmqw6dS8eYyOjg4YaQT3xrGrotupo77+S2wJLglulFfFs0lRgEn2Uvab1W
         ptn+9toZztlze03cnQRCMC49heNJyMPpnRqUZAg9jVesTC4bnmXSTnF8xRmtAOe09J7w
         ph9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=1GMWB21gxYIdFKY+JbAlNikjNhpFsZRzOlIryYv/C60=;
        b=KkmLWXynIQsRcFzWH0RUSta1rZkSXTdHgZQLaHqdf7OZrvqgbc/JDhSwPyYJgsD02z
         lgJF2vXj185DtBlwQGzqnrAk6LTSh6TazC8E7DSxN9rOeqTpOPCLDVk4jWYLCm8tZn8Z
         FEeINqpUPjQkal1c4XTSd3SZLWZwKc+lNq9uGbeQSpsmjBzFjqcFy6DihXNoD4bsthsM
         w0d1PbEbHzc0k6oxqPVafV+Rmc07cFbESA470/Mn/nWixvkTHH4dLgq4IoNlusQPqvMl
         LVEVG22Yk6qwFdLLNQ+8kfeOxSoixRr0ZXu2Mo3eiiuwV9EHziP8RX6m6PA66XN0eMM8
         uJXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=chpHouip;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::535 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com. [2a00:1450:4864:20::535])
        by gmr-mx.google.com with ESMTPS id a17si12384wro.3.2021.02.22.09.36.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Feb 2021 09:36:07 -0800 (PST)
Received-SPF: pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::535 as permitted sender) client-ip=2a00:1450:4864:20::535;
Received: by mail-ed1-x535.google.com with SMTP id h10so23067065edl.6
        for <clang-built-linux@googlegroups.com>; Mon, 22 Feb 2021 09:36:07 -0800 (PST)
X-Received: by 2002:aa7:c0cd:: with SMTP id j13mr23193423edp.230.1614015366222;
 Mon, 22 Feb 2021 09:36:06 -0800 (PST)
MIME-Version: 1.0
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Mon, 22 Feb 2021 23:05:55 +0530
Message-ID: <CA+G9fYsb0LRBatwtbjULObmc4zA6SrYBE6W+S_AjxXedPwPdVQ@mail.gmail.com>
Subject: gfp.h:20:32: error: redefinition of typedef 'gfp_t' is a C11 feature
To: clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux-Next Mailing List <linux-next@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	open list <linux-kernel@vger.kernel.org>, lkft-triage@lists.linaro.org
Cc: Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <nathan@kernel.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	Stephen Rothwell <sfr@canb.auug.org.au>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: naresh.kamboju@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=chpHouip;       spf=pass
 (google.com: domain of naresh.kamboju@linaro.org designates
 2a00:1450:4864:20::535 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
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

arm davinci_all_defconfig config with clang 10, 11 and 12 failing
on Linux next tag 20210222 due to below listed errors / warnings.

 - arm (davinci_all_defconfig) with clang-10
 - arm (davinci_all_defconfig) with clang-11
 - arm (davinci_all_defconfig) with clang-12

make --silent --keep-going --jobs=8
O=/home/tuxbuild/.cache/tuxmake/builds/1/tmp ARCH=arm
CROSS_COMPILE=arm-linux-gnueabihf- 'HOSTCC=sccache clang' 'CC=sccache
clang' davinci_all_defconfig

make --silent --keep-going --jobs=8
O=/home/tuxbuild/.cache/tuxmake/builds/1/tmp ARCH=arm
CROSS_COMPILE=arm-linux-gnueabihf- 'HOSTCC=sccache clang' 'CC=sccache
clang'


include/linux/gfp.h:20:32: error: redefinition of typedef 'gfp_t' is a
C11 feature [-Werror,-Wtypedef-redefinition]
typedef unsigned int __bitwise gfp_t;   // repeated here for kernel-doc
                               ^
include/linux/types.h:148:32: note: previous definition is here
typedef unsigned int __bitwise gfp_t;
                               ^
1 warning generated.
1 warning generated.
1 warning generated.
1 warning generated.
1 error generated.
make[5]: *** [scripts/Makefile.build:287:
drivers/gpu/drm/tilcdc/tilcdc_plane.o] Error 1

Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>

Step to reproduce:
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

tuxmake --runtime podman --target-arch arm --toolchain clang-10
--kconfig davinci_all_defconfig

build log,
https://builds.tuxbuild.com/1opbM56yvX4uyeXV8JBwFNz9WEQ/

-- 
Linaro LKFT
https://lkft.linaro.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BG9fYsb0LRBatwtbjULObmc4zA6SrYBE6W%2BS_AjxXedPwPdVQ%40mail.gmail.com.
