Return-Path: <clang-built-linux+bncBCT6537ZTEKRB35I2GBAMGQEGCJFNJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 34EF33416BD
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 08:36:16 +0100 (CET)
Received: by mail-lj1-x23e.google.com with SMTP id d15sf17576887ljl.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 00:36:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616139375; cv=pass;
        d=google.com; s=arc-20160816;
        b=LjvNcmo7FbZVKzUPEF8YOZ1OxL5d6IV/sH68i8+4npJBWtW4UhkwlP3wdLjOSM7cIe
         zCzQIsWEcRg0xI3s+nAwxnOgP2Nfn/aJ+SHGvZ8nAhk17iFOvVMwE/DI9Z4EgF+avl5D
         MVuRP/VXA1js9i/X+OpaRnUWPms5uHXth0Qcu/w8sQjWpSC8kuc471KNh5pFKly307oF
         jYsdu03NkE9S8L0TDwOSIydgFhUBddm/1Re8senGWWnO09YD4sa8ErJV/vioHhHFfZrV
         R5uiemi0nj46spHKxSLWe2MDgvR/NSS6Q1HTzJrOYrit19SeCSsw29++iv9AkHOa/jQJ
         NqJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature;
        bh=XqKfwlE0ZkFqHwf5K5sk/XZrkeUkCu5Ao/ku+DIE0CU=;
        b=ba0er2Zj3v+cX9zxyacaX6EgLGvrMRivSorLMsS6Vgd8e8obsA67pQohFldZVLTiOH
         bHY1ve9K7RZt7mys7TyFO2T/FxlqPa2QlN/9ZIIhKyTH5TEtPFSd2N6OYHaPsMMEGEgp
         xjrNyWoBGxq71Z9pfcuQ7MqiQHSmIHJafOeGQNoJVZpuGLE03l/lHv05ITUcuZs5cXyq
         Om3dQmwpPjXLrWIyastMgL8rGQsIFBjf+RDQ6Zfvv5OMOEZJuU/x/WhTUh2q/kg19ijz
         rqws3nQbCfZj5sJq/4goBJj+MZQp4lMnaxQ+WQBNYIJjFSGlDBncR1Kyx/8QUWDIL7gP
         A8sQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=CzTKZRB9;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::52a as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XqKfwlE0ZkFqHwf5K5sk/XZrkeUkCu5Ao/ku+DIE0CU=;
        b=DrEb2kbJ620TwN8PSwkgpEkcr/RAXHwaeH1mGMN8yIknu9xA9Ea1XYS/cUFe9AVEEv
         btfqO06ioHrwWiM53e/BR7X2dCoU5zOEivRHp/h+AkvS4OyIBEBOnTLYRoPLJQ9MKGPk
         NuxpU1dl1ilPrkfVUj+fKbUIxt1+ZxmJKDNMC0S8v9EqmcCtkJg0fTtCDn3ZmsP7yUL2
         yMnSOJmJKAFaC9HH58FMgGTxypcuUyTX1xq3xBdFrXszBwp8wxm6+E0WlRrTZU4i/k3Z
         cGyFEx7efNembQ9D6QPgxcis5n7M+DZZfKynsoW6mJq9G5iEhfrBLbp87aj/7oqi5jE4
         +4lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XqKfwlE0ZkFqHwf5K5sk/XZrkeUkCu5Ao/ku+DIE0CU=;
        b=nmLTJkbziBbCFrDoGzq3p1mnxGEibGSNwrUEnEwZEeLllf8gAW8FxYQtWouZfjeAgK
         AHBI6hv7JFplHgkji4NqMDO122rZ1eus8ILQoDP53Wv1JAzk5onJIk2KRVe1G6GwoMAI
         M3jVzwwcJn3rz9wbc46KF0GBl9zLPG+x1zUqP6w5OnC39rleizXVfJQ0vkoDTBI5/0nc
         0URYZuRVClHQamm3tqcSWqCfkznBwRqowN3kruK2ojK3Uy6Un7m7X6Nj4qbOk/SS/QNh
         nlf+c4Do5QjsXiE/G7hJW259a1Vy925/+5PgKr08U9NoYkXcwxyJ8HEDzHQI+BI+NSu4
         F3kQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531slgK5ZQMK4LD9f3U3vIhGJfwoE0PnStYAN5RoM7q8QukHI9Yy
	En3BrbOSILe7El6hdhw8eFU=
X-Google-Smtp-Source: ABdhPJwL64qq+KMCufagi1jWfCAJJYYhiuikehKIkbVzZ9GgmNC3JaNgKJCI3xnsuXtZDKPqVWbArg==
X-Received: by 2002:a2e:91c4:: with SMTP id u4mr49370ljg.281.1616139375791;
        Fri, 19 Mar 2021 00:36:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:58f8:: with SMTP id v24ls3535950lfo.2.gmail; Fri, 19 Mar
 2021 00:36:14 -0700 (PDT)
X-Received: by 2002:a19:c3c3:: with SMTP id t186mr50235lff.596.1616139374787;
        Fri, 19 Mar 2021 00:36:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616139374; cv=none;
        d=google.com; s=arc-20160816;
        b=K66C9wFtah5QF1ROg3odaxO6QvLTi0HswVEUf8mnZRBVzpsiHrwEvA43Xbd5fwfsZZ
         al3BJUZu/Li82AiABqyMTTIhG0WxI34LEoIwZ81R4vQlPzOpAQAmHN0w+QREd+gUPzfp
         1RO01QIc8FEZEf+RiQKh5o2160OddrZtyrj/mgCPX5XsX9wk71HoKX0VpWv/PvV3dDdq
         gvG4TX7sCazTNye7EQUTUj6azVZtDzAQea8B1qQ398GndHBtFXefNJteDjZgKpw25erL
         YQMlOTPmv6eZNx9rx0NFX/5ODpZ2GGQpPoUai+k11ODoGZCDjWAB/NvHY3GUUiWt4t+g
         L1GQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=cFztndHYvTA4SCUs/JT696S46MToc8dDZLMQpjlmP/w=;
        b=O/F5lfOWa7ZqOuiNAbH4iLDArM1uClS8Cys0l4lll4MMOtJOO0YHPsudd2j2gYMapi
         3+b4VoXBOLx5PK7IRdKJ+ozge0k1MZ1xdKwMQPgPSmWsVvjQ6ua69duba5+JEaghkVYH
         R4HVMM9F4hB5yvTVrlPe+6YoF1AcZVhhLASJgbhgjYmCZ1pPucJQ0MkMCqqWq+OW1uUw
         Q3WVEM1mKM12GZ/etkBcnbiaKnMa2Qq8TVUOJRcAo2BWlTmarButwq1WkXGIeRrd2wqM
         tJgmQfmg7rGiW9zyA4p1UbRA2xZ7vQ9JsXuWwiwVJwTtYt31PWP7W8/f2k2v8Wuu/eLQ
         b0CA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=CzTKZRB9;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::52a as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com. [2a00:1450:4864:20::52a])
        by gmr-mx.google.com with ESMTPS id 63si154050lfg.9.2021.03.19.00.36.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Mar 2021 00:36:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::52a as permitted sender) client-ip=2a00:1450:4864:20::52a;
Received: by mail-ed1-x52a.google.com with SMTP id o19so9631429edc.3
        for <clang-built-linux@googlegroups.com>; Fri, 19 Mar 2021 00:36:14 -0700 (PDT)
X-Received: by 2002:aa7:d416:: with SMTP id z22mr7919214edq.239.1616139373731;
 Fri, 19 Mar 2021 00:36:13 -0700 (PDT)
MIME-Version: 1.0
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Fri, 19 Mar 2021 13:06:02 +0530
Message-ID: <CA+G9fYseDSQ2Vgg5Cb=8HHdpm56aeVQH0Vdx7JK1SktGpRRkgw@mail.gmail.com>
Subject: sparc: clang: error: unknown argument: '-mno-fpu'
To: clang-built-linux <clang-built-linux@googlegroups.com>, 
	open list <linux-kernel@vger.kernel.org>, lkft-triage@lists.linaro.org, 
	sparclinux@vger.kernel.org
Cc: "David S. Miller" <davem@davemloft.net>, Nick Desaulniers <ndesaulniers@google.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	Anders Roxell <anders.roxell@linaro.org>, =?UTF-8?B?RGFuaWVsIETDrWF6?= <daniel.diaz@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: naresh.kamboju@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=CzTKZRB9;       spf=pass
 (google.com: domain of naresh.kamboju@linaro.org designates
 2a00:1450:4864:20::52a as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
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

Linux mainline master build breaks for sparc defconfig.
There are multiple errors / warnings with clang-12 and clang-11 and 10.
 - sparc (defconfig) with clang-12, clang-11 and clang-10
 - sparc (tinyconfig) with clang-12, clang-11 and clang-10
 - sparc (allnoconfig) with clang-12, clang-11 and clang-10

make --silent --keep-going --jobs=8
O=/home/tuxbuild/.cache/tuxmake/builds/1/tmp ARCH=sparc
CROSS_COMPILE=sparc64-linux-gnu- 'HOSTCC=sccache clang' 'CC=sccache
clang'
clang: error: unknown argument: '-mno-fpu'
clang: error: unknown argument: '-fcall-used-g5'
clang: error: unknown argument: '-fcall-used-g7'
make[2]: *** [/builds/linux/scripts/Makefile.build:116:
scripts/mod/devicetable-offsets.s] Error 1
clang: error: unknown argument: '-mno-fpu'
clang: error: unknown argument: '-fcall-used-g5'
clang: error: unknown argument: '-fcall-used-g7'
make[2]: *** [/builds/linux/scripts/Makefile.build:271:
scripts/mod/empty.o] Error 1

Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>

build link,
https://gitlab.com/Linaro/lkft/mirrors/torvalds/linux-mainline/-/jobs/1110841374#L81

steps to reproduce:
--------------------------
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

tuxmake --runtime podman --target-arch sparc --toolchain clang-12
--kconfig defconfig


--
Linaro LKFT
https://lkft.linaro.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BG9fYseDSQ2Vgg5Cb%3D8HHdpm56aeVQH0Vdx7JK1SktGpRRkgw%40mail.gmail.com.
