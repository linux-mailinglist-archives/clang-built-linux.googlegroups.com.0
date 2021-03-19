Return-Path: <clang-built-linux+bncBCT6537ZTEKRBV5B2GBAMGQEXON4T5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 8201D341653
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 08:20:55 +0100 (CET)
Received: by mail-wr1-x438.google.com with SMTP id r6sf8120385wrt.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 00:20:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616138455; cv=pass;
        d=google.com; s=arc-20160816;
        b=F0PIIHYyzEv21LbjL/bAquNG709efPjQR6sXnMEOP3qigqT5aMweLv6ST2KTZCXJjp
         4zKPLcxWYR0BrBzUkmNydflMo7O2PIVZhQYKC8CssQHpq/cCKvdlqrsBkXmXMMnW6hMR
         t85jPZ3pGeIm1uATBjWPcea7ax1Ta/JcWurxAz0K1xdioNDb18gFd5K3nVdjb2dzsqJ4
         5JneWRMazQ6ybB02NIhAd79+P9zqssEKBwqe3N3kPqsuAR3vb0XPY+qISXjAmSDrX4W3
         Z4RC8rCMr71Mwez3t0HAcCdfJto7j9a4AfiQEJnAAcsrf9ZzxpbILWUJhVFq1rlCJFnK
         p1PA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature;
        bh=SuB4KKJgVRMmddc21a6PgvQo5X61RMvNUCnE8RCUGjM=;
        b=OUWQfyBOuYLjj0M3gI+d9kwCSlQDikIisQ77R5z8L5LQ3cuYkUDZa3Rwog0lYucV/h
         HTcABxIAbpXJwkGyH9dk30FECfr0QA3OEqWqo15f3WbLeG/RyppW9lkOPBJzecHd2id6
         wlYpIx+KWH7GgIFJ1DPUTG4ZSUpc5xG/65kilaXpipNMvwTMHuoNvcM9oUnPRreNmwp7
         IpvQGSNpijZ0kYtskeNDzMlGTgwylQEmemc8RxMQkddUTscFA6YGk7h8r6wCtm819HRu
         RGmRnuraSveyVto5FDYS6RZF266KCTQb6ZWV3VRD+w53OCf6bW06gnggFvivGPyDedi9
         X3Og==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=g3ngt0Um;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::636 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SuB4KKJgVRMmddc21a6PgvQo5X61RMvNUCnE8RCUGjM=;
        b=Mn0KBLOdafHTaWR8R2MG+c+WyLSOllh+cu/fzbNrAxxYmVXQJiTt6LcTARSPMIzSD1
         7TIf3YG4TLWtGf5qiebQjFi2uqvS2uok82fuj1dALatQCad/nS1OS0O3w1lrCUkeilQ/
         zhgtaCc5oA/0eRDKiYDsAWMlpu/xQDhpuM5EKg7F0ke7GCuaN3qURFeeffS9UFqnufsA
         BNCbWjylIHzNAcJ5nDKh4YC+3jwvVGVjsSvl2wvDvN3Va/Fai+f8BKX+faerNCM7cA6x
         ku3N6u3BU1HuJNdIbXpUWmBJnUaRDjTWVZ2b5de2BmJz1vIwfprmYflVFmKyRIg65jRJ
         wVjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SuB4KKJgVRMmddc21a6PgvQo5X61RMvNUCnE8RCUGjM=;
        b=Bg5UAswHJDJwyH4SzWpeG6xk/APkCbXdaZGoJGuHv/Dffi+0hbpcPV2mnuPfcQE2gE
         SasC2WwaWjWBB7dKsmh/r0rj5cvK7h/CHzsUwc10aohJ0xx0V7bwQpNdGmeC/0P7XTJq
         JdCDZl4iDlUdX1Dvs7/oqsim6uO3Jdq7l9GicROWCN6G7UtKJ8tf/J/qq6Rr1Y2QE40M
         5BEmv45mTVXIA/+vdOzaW4Z3aLo++8pLf2+BoI1BblKeIyZkqLPVZSELgDsagWws9LGG
         BrAI+evbvqqpUcWEiqWolWtBW8VRuRaN6xhA3TIAVtANM+luFZCY+nebfk0iT/tYEKLt
         pOhQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533BTONPXtzisPz8p8CW6qwrEtHLtfTbcbq1Gtycjfp6MYOH7yeF
	/r9hpzEfYYrymT8H2Kj/hWs=
X-Google-Smtp-Source: ABdhPJyVFZOBBbOeV3F8nrTBbpn34YbRauO19NCazROWkVF4grVYkz7OrV2u1Oi68u6OWGiObi4hWw==
X-Received: by 2002:a1c:5455:: with SMTP id p21mr2383291wmi.138.1616138455254;
        Fri, 19 Mar 2021 00:20:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:ce14:: with SMTP id m20ls2135398wmc.3.gmail; Fri, 19 Mar
 2021 00:20:54 -0700 (PDT)
X-Received: by 2002:a1c:b789:: with SMTP id h131mr2408484wmf.106.1616138454400;
        Fri, 19 Mar 2021 00:20:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616138454; cv=none;
        d=google.com; s=arc-20160816;
        b=zIhiOZr42F3Z7PKvmF1jDbB63YUEgdjedctDTtgsaspNDHNjUZg3xd52uCHcbe1KVN
         3DAeNgff0PxrvPk1HFptc6ROo1gypb4hUiJ9TIty+k+SeeBa3KxVD98GaRwbci0AcFvY
         WP5nuUrAIs0MN/QfUgUfzACgS7YLauMqVX+cj+WNYKKl/0XdqqSDSDAsg8MoVvKtr5mY
         lIcpy923z5zW0cmLdGj1n3/Ojqum+3CF6XDH7QpHuZjEkjpqBx57yZx3U8tuql/kpTzK
         XIQei4XdOstqa/ETJHcl+hctSEjXG9hQCEAJYJ+XAH5aPSfOjH5Lq6fJReITJgiUcWik
         JKRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=Qm1M+9iwmqug094Ij1+/BFzpWH81JqUDY9n0PrAzHc4=;
        b=Lu/lea8FFTTfN42sJpjtpoOpWxOtqH6R/LNwCYmWryvM+E298OFiUz7PYm9b+K6a2J
         TwM3pVjgO91LX1uUlVYrNipo2NG7eorIZlgK7M9kTLbx6wkd2EyKqeCq9Pam6yaDDUQ5
         Cd8ewDR+Eck2n3u8rOTp2513C8tHAJiu+P+fYdy0DA7t2BPZdfo+7A3ItwB9pYg95tCw
         HvDiXGkMGzdcYNPk62qKyq8lbFu/SFW09qi3hEnDLYXqnGJKcnSht1KfMp0XY5o8NyDs
         hypX/DTF8erK/ekdiJj2rLWf2nX2L5gwVL/c6h0mO+DL0F48TshX+T3b4qicoSueJmET
         1H3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=g3ngt0Um;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::636 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com. [2a00:1450:4864:20::636])
        by gmr-mx.google.com with ESMTPS id h16si163027wrx.2.2021.03.19.00.20.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Mar 2021 00:20:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::636 as permitted sender) client-ip=2a00:1450:4864:20::636;
Received: by mail-ej1-x636.google.com with SMTP id jy13so7996223ejc.2
        for <clang-built-linux@googlegroups.com>; Fri, 19 Mar 2021 00:20:54 -0700 (PDT)
X-Received: by 2002:a17:906:70d:: with SMTP id y13mr2728501ejb.170.1616138453152;
 Fri, 19 Mar 2021 00:20:53 -0700 (PDT)
MIME-Version: 1.0
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Fri, 19 Mar 2021 12:50:42 +0530
Message-ID: <CA+G9fYu=a0pk79He2DoQ9NGHkbG58PMhqJsEk=xiQv+v495Dmw@mail.gmail.com>
Subject: Clang: powerpc: kvm/book3s_hv_nested.c:264:6: error: stack frame size
 of 2480 bytes in function 'kvmhv_enter_nested_guest'
To: clang-built-linux <clang-built-linux@googlegroups.com>, 
	open list <linux-kernel@vger.kernel.org>, lkft-triage@lists.linaro.org, 
	linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, kvm-ppc@vger.kernel.org
Cc: Michael Ellerman <mpe@ellerman.id.au>, Paul Mackerras <paulus@ozlabs.org>, 
	Benjamin Herrenschmidt <benh@kernel.crashing.org>, Arnd Bergmann <arnd@arndb.de>, 
	Nathan Chancellor <nathan@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: naresh.kamboju@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=g3ngt0Um;       spf=pass
 (google.com: domain of naresh.kamboju@linaro.org designates
 2a00:1450:4864:20::636 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
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

Linux mainline master build breaks for powerpc defconfig.
There are multiple errors / warnings with clang-12 and clang-11 and 10.
 - powerpc (defconfig) with clang-12
 - powerpc (defconfig) with clang-11
 - powerpc (defconfig) with clang-10

The following build errors / warnings triggered with clang-12.
make --silent --keep-going --jobs=8
O=/home/tuxbuild/.cache/tuxmake/builds/1/tmp LLVM=1 ARCH=powerpc
CROSS_COMPILE=powerpc64le-linux-gnu- 'HOSTCC=sccache clang'
'CC=sccache clang'
/builds/linux/arch/powerpc/kvm/book3s_hv_nested.c:264:6: error: stack
frame size of 2480 bytes in function 'kvmhv_enter_nested_guest'
[-Werror,-Wframe-larger-than=]
long kvmhv_enter_nested_guest(struct kvm_vcpu *vcpu)
     ^
1 error generated.
make[3]: *** [/builds/linux/scripts/Makefile.build:271:
arch/powerpc/kvm/book3s_hv_nested.o] Error 1

Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>

The following build errors / warnings triggered with clang-10 and clang-11.
 - powerpc (defconfig) with clang-11
 - powerpc (defconfig) with clang-10
make --silent --keep-going --jobs=8
O=/home/tuxbuild/.cache/tuxmake/builds/1/tmp LLVM=1 ARCH=powerpc
CROSS_COMPILE=powerpc64le-linux-gnu- 'HOSTCC=sccache clang'
'CC=sccache clang'

/usr/bin/powerpc64le-linux-gnu-ld:
arch/powerpc/kernel/vdso32/sigtramp.o: compiled for a little endian
system and target is big endian
/usr/bin/powerpc64le-linux-gnu-ld: failed to merge target specific
data of file arch/powerpc/kernel/vdso32/sigtramp.o
/usr/bin/powerpc64le-linux-gnu-ld:
arch/powerpc/kernel/vdso32/gettimeofday.o: compiled for a little
endian system and target is big endian
/usr/bin/powerpc64le-linux-gnu-ld: failed to merge target specific
data of file arch/powerpc/kernel/vdso32/gettimeofday.o
/usr/bin/powerpc64le-linux-gnu-ld:
arch/powerpc/kernel/vdso32/datapage.o: compiled for a little endian
system and target is big endian
/usr/bin/powerpc64le-linux-gnu-ld: failed to merge target specific
data of file arch/powerpc/kernel/vdso32/datapage.o
/usr/bin/powerpc64le-linux-gnu-ld:
arch/powerpc/kernel/vdso32/cacheflush.o: compiled for a little endian
system and target is big endian
/usr/bin/powerpc64le-linux-gnu-ld: failed to merge target specific
data of file arch/powerpc/kernel/vdso32/cacheflush.o
/usr/bin/powerpc64le-linux-gnu-ld: arch/powerpc/kernel/vdso32/note.o:
compiled for a little endian system and target is big endian
/usr/bin/powerpc64le-linux-gnu-ld: failed to merge target specific
data of file arch/powerpc/kernel/vdso32/note.o
/usr/bin/powerpc64le-linux-gnu-ld:
arch/powerpc/kernel/vdso32/getcpu.o: compiled for a little endian
system and target is big endian
/usr/bin/powerpc64le-linux-gnu-ld: failed to merge target specific
data of file arch/powerpc/kernel/vdso32/getcpu.o
/usr/bin/powerpc64le-linux-gnu-ld:
arch/powerpc/kernel/vdso32/vgettimeofday.o: compiled for a little
endian system and target is big endian
/usr/bin/powerpc64le-linux-gnu-ld: failed to merge target specific
data of file arch/powerpc/kernel/vdso32/vgettimeofday.o
clang: error: unable to execute command: Segmentation fault (core dumped)
clang: error: linker command failed due to signal (use -v to see invocation)
make[2]: *** [/builds/linux/arch/powerpc/kernel/vdso32/Makefile:51:
arch/powerpc/kernel/vdso32/vdso32.so.dbg] Error 254
make[2]: Target 'include/generated/vdso32-offsets.h' not remade
because of errors.

Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>

build link,
https://gitlab.com/Linaro/lkft/mirrors/torvalds/linux-mainline/-/jobs/1110841371#L59

--
Linaro LKFT
https://lkft.linaro.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BG9fYu%3Da0pk79He2DoQ9NGHkbG58PMhqJsEk%3DxiQv%2Bv495Dmw%40mail.gmail.com.
