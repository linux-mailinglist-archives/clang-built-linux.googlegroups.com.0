Return-Path: <clang-built-linux+bncBCT6537ZTEKRBBE66CCAMGQEMAHGAEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x638.google.com (mail-ej1-x638.google.com [IPv6:2a00:1450:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 129C637CEAF
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 19:23:17 +0200 (CEST)
Received: by mail-ej1-x638.google.com with SMTP id nd10-20020a170907628ab02903a324b229bfsf7486722ejc.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 10:23:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620840196; cv=pass;
        d=google.com; s=arc-20160816;
        b=yI/iuZCtKOsTYFG6QhGzhLRIImhpqF4biximwn1oEnzQ/xDrDw656e6aei6T4e0SCe
         w3fRgnyqzPi0m1PI/2HEGYbRwwuKrlKeumpq6Hc6kyRrY4xgueswRlJD31nryFwoLXZg
         jo2XH1IMsTxWVErafrcUJYVCkeWdZS0irQ2jqjhiBr+5/WeD2d7sSc6RQRS4TE+GPk/R
         FIu6vl1/3bExKkU7I9yWkF5PlV8AZF58qz0Z2Zpc4FedSQR4ywZ4yaThAlxfiXAde19T
         RhMuL5zxJRjThseCnQhq3jeu3a8VbjKuXzjqvcJ3xgRPc5I7A3sdQOOeYpOangSD9HdP
         Mj+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=J1+EG+VaxDnX3FIy2Ouq7N38MilAJRZJ62PZgrRLBLw=;
        b=gI38vgL3v4IbmMqajqDtuwy3QnGZkgvXDijVKzLOkR0XJQA0aE1lR+b/muWvqTVqnf
         MAPh8SuFyd1Y63/g029eaR1eA0vN0rwav27RNPi2ynQyZPulDnO/BafKEPer7qO2k1fg
         YcOISM0JEKTsM5q8Sb5Nr27vvCDPJfC90vpd1Fx6PMnNylk6xPU74nNsWNXXK7UMqspU
         gVhkK3vIdL5ZCElDkDxponYyBpHkQNZf65BA/XSB3aRd41OtlxaTOKzNWYi0NORmXdMd
         EiIE2Nnwti/cMfQ5y0IhYG/6EPufQux9Ux1l93V5b5zztGQsVXRHhhg08lI86VyeV2CC
         tonw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=dZ2P6Nf8;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::52c as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=J1+EG+VaxDnX3FIy2Ouq7N38MilAJRZJ62PZgrRLBLw=;
        b=JiqikOC1O37nB3v+hcnZxd7jDhgJ8ZpJDfh10iuumwr/nJnE843WK8dZP4ZSIZlVNc
         1jdDIixJ6zMGanaM24DRIwPrUg2yOtJMJdzPF3GYiNQZNObZDZv5NnufQITy5xOz2zql
         s7a5zO7vTGuk13fUGVoI2AQ43gALK3RkHZlKhzGBJjj80s6Avqt5pQGVrLcrmz+o9Qef
         yEYzb6Myt7DvMgw5JKgCRcuyNxZBZNhNvtfm70yI7iRIZbqby/dH05YJxXQfMuEYSY58
         0GKEDJTUfT/XigC6mS/2YkjpnNeU5RvEEEvre+75J6J/WcdhyvVuUqdzh2vPp5LfYx4E
         1RVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=J1+EG+VaxDnX3FIy2Ouq7N38MilAJRZJ62PZgrRLBLw=;
        b=KKA0UdYSfkjbZMivi0XKMhbpACsIdXj21VH82kNz4KrjsWXr/41NyV4UDujYUrINRh
         VLLD3MorIsQ6WRrwd1jJD6YIkn6AfdMDfebOYu47Eh2Cuzd1yLbpfd4V3XqtU2EWnW2K
         vGev8VnC4muaHMESbxc0FUFwYzn5tUNZKeOxZORQVwl3KQiinEawP+HqCa9WFT+H4OH7
         ZxgHfigOECDmeaaqI9KC3agrf5rU539wFkQ9uiTzoFuXoSmAv7sYzfCB6gE00TDJm3i/
         FbKyF5GweR1X4pDayIQQaNxIihBcy6UgYHLQs6hs332hkFpTIFU9Kayx7JQIEDQVjft2
         5nHw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533SMeWlFJ42Lt2OY65Sh3he0wANB4Wq/k9RhzhzKPEhpHCLCmnq
	c0mi/eiLRhPrSOSJnM6kZD4=
X-Google-Smtp-Source: ABdhPJxT3aKTlRyuladrOKgctRgc9T1S8+aEieEVxExI89mWdHUnWJ7xYoOSdMBxp5Aryvq/8sDp1g==
X-Received: by 2002:aa7:cc10:: with SMTP id q16mr24662210edt.53.1620840196851;
        Wed, 12 May 2021 10:23:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:1901:: with SMTP id a1ls1411453eje.0.gmail; Wed, 12
 May 2021 10:23:16 -0700 (PDT)
X-Received: by 2002:a17:906:e28c:: with SMTP id gg12mr38763943ejb.483.1620840196001;
        Wed, 12 May 2021 10:23:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620840195; cv=none;
        d=google.com; s=arc-20160816;
        b=bytjUbCN3y1JgQNNxqHBpnDH89iP/xFscfgZGYU4phvSI0fTEvNqKCiuaXnBydh8r1
         +L4oMD4FizRpvnoA61f5ETpwk1LOy3ViJo2MHAOK9yWFjJt5dzIA//fu5luTWWQkqH+I
         bCUjvWLFugaXeVwiuroIehsj4kgPJkjoRBTGRiR9m6tznc40jSsfHibZGhad1DYRBf7v
         H0wR9EnLKobOgXQHvyMt0EwTWr6Ab7fTtYzrnOAAGBXbJWqjTR+uNuceM8U67DF2zPAg
         KMIuVBmzHAAhcTSf87SG967/3xMbvmLy3+AYAfdgbTfx0B61ZBHdPlHJoGnVESUpAwcc
         HyrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=oyKCugOHrF3iiwRI1CT/wN4ttg5vDvJaE34/Sl3BUss=;
        b=1AHfv/SyFgmR35iIPymkS43E5exhqbyu/iMXq+TnMhc295PYPl1R2aqc6ovJ/Ig/+w
         Y4ySk7C5DtoUAY1tkmOXgFfFuUE9SIxzDf+qNAR7oK4fH0V3uNKopLo/8T1Y7qQy9U/K
         fbNTLGPQHCmnbUz3j6A/C7LBte00gIiaXek/6np/BZZbJ7NN4CruoEuf1XXLUtrrDU9v
         JxrABuKwprtf76cpTd1/ro6WyVRP/8ykqjB3CWsS0V0X/AplwX/hDSyr0Y+22BXFteuG
         aziRwN3orHvlS0n1DEc3XPfWfvQbu5H+ZoFn2m7rDTuAbYGKsMTcr3oo5D+IpMgO6wwj
         znXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=dZ2P6Nf8;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::52c as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com. [2a00:1450:4864:20::52c])
        by gmr-mx.google.com with ESMTPS id cc21si11565edb.2.2021.05.12.10.23.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 May 2021 10:23:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::52c as permitted sender) client-ip=2a00:1450:4864:20::52c;
Received: by mail-ed1-x52c.google.com with SMTP id c22so27979637edn.7
        for <clang-built-linux@googlegroups.com>; Wed, 12 May 2021 10:23:15 -0700 (PDT)
X-Received: by 2002:aa7:c6ca:: with SMTP id b10mr29676518eds.221.1620840195559;
 Wed, 12 May 2021 10:23:15 -0700 (PDT)
MIME-Version: 1.0
References: <20210512144837.204217980@linuxfoundation.org>
In-Reply-To: <20210512144837.204217980@linuxfoundation.org>
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Wed, 12 May 2021 22:53:04 +0530
Message-ID: <CA+G9fYufHvM+C=39gtk5CF-r4sYYpRkQFGsmKrkdQcXj_XKFag@mail.gmail.com>
Subject: Re: [PATCH 5.12 000/677] 5.12.4-rc1 review
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: open list <linux-kernel@vger.kernel.org>, Shuah Khan <shuah@kernel.org>, 
	Florian Fainelli <f.fainelli@gmail.com>, patches@kernelci.org, lkft-triage@lists.linaro.org, 
	Jon Hunter <jonathanh@nvidia.com>, linux-stable <stable@vger.kernel.org>, 
	Pavel Machek <pavel@denx.de>, Andrew Morton <akpm@linux-foundation.org>, 
	Linus Torvalds <torvalds@linux-foundation.org>, Guenter Roeck <linux@roeck-us.net>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"Maciej W. Rozycki" <macro@orcam.me.uk>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
	Huacai Chen <chenhuacai@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: naresh.kamboju@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=dZ2P6Nf8;       spf=pass
 (google.com: domain of naresh.kamboju@linaro.org designates
 2a00:1450:4864:20::52c as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
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

On Wed, 12 May 2021 at 21:27, Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> This is the start of the stable review cycle for the 5.12.4 release.
> There are 677 patches in this series, all will be posted as a response
> to this one.  If anyone has any issues with these being applied, please
> let me know.
>
> Responses should be made by Fri, 14 May 2021 14:47:09 +0000.
> Anything received after that time might be too late.
>
> The whole patch series can be found in one patch at:
>         https://www.kernel.org/pub/linux/kernel/v5.x/stable-review/patch-5.12.4-rc1.gz
> or in the git tree and branch at:
>         git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-5.12.y
> and the diffstat can be found below.
>
> thanks,
>
> greg k-h


MIPS Clang build regression detected.
MIPS gcc-10,9 and 8 build PASS.

> Maciej W. Rozycki <macro@orcam.me.uk>
>     MIPS: Reinstate platform `__div64_32' handler

mips clang build breaks on stable rc 5.4 .. 5.12 due to below warnings / errors
 - mips (defconfig) with clang-12
 - mips (tinyconfig) with clang-12
 - mips (allnoconfig) with clang-12

make --silent --keep-going --jobs=8
O=/home/tuxbuild/.cache/tuxmake/builds/current ARCH=mips
CROSS_COMPILE=mips-linux-gnu- 'HOSTCC=sccache clang' 'CC=sccache
clang'
kernel/time/hrtimer.c:318:2: error: couldn't allocate output register
for constraint 'x'
        do_div(tmp, (u32) div);
        ^
include/asm-generic/div64.h:243:11: note: expanded from macro 'do_div'
                __rem = __div64_32(&(n), __base);       \
                        ^
arch/mips/include/asm/div64.h:74:11: note: expanded from macro '__div64_32'
                __asm__("divu   $0, %z1, %z2"                           \
                        ^
1 error generated.

Reported-by: Linux Kernel Functional Testing <lkft@linaro.org>

steps to reproduce:
--------------------------
#!/bin/sh

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

tuxmake --runtime podman --target-arch mips --toolchain clang-12
--kconfig defconfig

build ref:
https://builds.tuxbuild.com/1sRW8pJDUO08LLScNJnPlFqm8lV/

--
Linaro LKFT
https://lkft.linaro.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BG9fYufHvM%2BC%3D39gtk5CF-r4sYYpRkQFGsmKrkdQcXj_XKFag%40mail.gmail.com.
