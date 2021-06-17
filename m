Return-Path: <clang-built-linux+bncBCT6537ZTEKRB3HXVSDAMGQEBF3IGRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 52F503AB34F
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Jun 2021 14:11:25 +0200 (CEST)
Received: by mail-lj1-x23f.google.com with SMTP id e8-20020a2ea5480000b029015b5329f488sf2731851ljn.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Jun 2021 05:11:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623931885; cv=pass;
        d=google.com; s=arc-20160816;
        b=Crqk2e32c5ERgTy72T9crT6YAE1ba/xUhss871u6zyJXjqhrfhCO0odJIWCcih4Cm5
         I9X1p5MOxBfnxmOZglgexGiDeBVmx1gRGBH2IoNafZavN4pO0N65kdQu5D0JhSV2io+N
         OId3EjpQq5PpVPbAOLyEHrA4DL1pvKUI4PmOAb97l5JLCAP+JjP0NccDR/5qxdMrUjjX
         FnBEPqvIh+gea1vNQIYrTzcI/0ZN9fEfr4BWZwVTYf9/rqh807smMvMC0OX7F7p9Ohxh
         +tsqWpItrukuB5vqJc5jaailBg140MPMLEnkC4IgjH3es7k1g3Fy67292gvr8vwE6ITi
         Af6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature;
        bh=tn+r2JALGxzRzB1BWRteVlbK7ys4PEZwHuh4WR3XoSs=;
        b=r4LDGbvb7urw06De2C5uNfp8hqbhnz0L/GAaYvLRl0vpSPPn/655ihk7cAJ46hMzfh
         usRQ13BQMbNni5Vk8HDLTEYKi2+GLEQL4q8L+QUH7ihVh89DTAiZS39cBV7Iqu9Zf7kS
         30/C5NCqkmwopYjoQdHvnJDL03P7RxVDtO6DpcjZHAUnCGJ1e+keTMmSR4aHAJMgW35T
         e7JVY9L1NPaCZOTEeh79sxGRl+YN3JxPiUKGesyQIptkHC0KXV8VR4HEmz1mbfanKKW3
         BW03y+ZRfw6PWDYLXLHx5/t48uRvnSpAM+n2tM3mQAeUA30WRI5yRxnUhFVcwRMqCjF8
         yk8A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=fzpEeib8;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::630 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tn+r2JALGxzRzB1BWRteVlbK7ys4PEZwHuh4WR3XoSs=;
        b=PpZ0zCCulsjxTUBQaFn9Qs2C90z1BhKmgSDXlDKqohRu4EkcVvwB8T5F7qyE4LiU1K
         21bhyAjhEnnZrcS9xcRoP9zrYYpPVO0AoSIKn6Axr73I1YMXX21/7nTszvpWdk/hzH+L
         FVibBAD7qusD/p6PS0IVeajh7sDvQ7nBqHbHG5dyDjsPbe92pcsv0XpAvOmgmX6K5Y+q
         F/06ItbHReH5K3k1HSzzFPq6NdUDAv/1SlokKVx/PWiWfOYKYRtMOdy4MIGQ5qzV4iuN
         4BCAQDEjRN09OKyXZf8CN6T+nb/oulf+cz7OWOMAjZYoWKWHqllqy25mkX9StRdQNCov
         3v3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tn+r2JALGxzRzB1BWRteVlbK7ys4PEZwHuh4WR3XoSs=;
        b=tLL33/+PBJwwRkyttOjbdpHIA72U3xfC43704CWCRa6iS0QE3Bzl5DeNfmkKPlxuCL
         RE+FM4A4gHRlAFyBOVLWbpAncClg1GYsAm+48FB7q3ac2hoSwJowk4Bvr+GoRP76XRGG
         Celg+TBxzFAXnUfk7IhOVL8cDlUmCkLn88C/cSSXloGgyBIlB6eNZ4g/OzQ30bGs2V/v
         BbE61GSRNiu4XaqBcQXbsHS/dFR9LiochiV03ppDMOp1H+wk6rLILAXJWD3A1D9lchwy
         xKIM7lUDrfcT9n0qATMxykgMh+AXbLTR5QsN/NtVyW5CUkloDs/KJWGeuTrwDvkrciJ2
         ECLQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5311Sf//dKhwPyQlMIGH6GF8iQCW56lO/5Ok+tiGgKHEX0nsxSz/
	YkT/Inp1o9vp3nioHUzs9wk=
X-Google-Smtp-Source: ABdhPJwiiYGH9HzrVWeG4E6L/PgUElgL+Jp2JoQzsC42utx7na64NAUXmXIVgX7IkwolXT72mvdJ2g==
X-Received: by 2002:a05:6512:2251:: with SMTP id i17mr3727124lfu.613.1623931884951;
        Thu, 17 Jun 2021 05:11:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3b99:: with SMTP id g25ls2828584lfv.2.gmail; Thu,
 17 Jun 2021 05:11:23 -0700 (PDT)
X-Received: by 2002:ac2:47eb:: with SMTP id b11mr3834112lfp.455.1623931883897;
        Thu, 17 Jun 2021 05:11:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623931883; cv=none;
        d=google.com; s=arc-20160816;
        b=huPjBZgYpR1uIwSASAKwdr8Ko96Yq4dZBihADI8IrbOd1OSXnI+4JnIzahAO/KO3zH
         Jjf95QWTYB3TE/q3ixNMI4HghWByS9K4kUiv0vtKlf9mjiXQfbxDPNu4qWn0KBtmC7uA
         QKg6aFqOsjS+Q/I/re3LESh5T9DfBA5h1xfrKaH0A5NR05zhf5bglCBI6+QvWe01NSAB
         BLWXXWThMPQKQFbrGEIPsLo/0TdX5ZykUqrHrQ2B4ad/eAYrK5X9lQl8JOu09VOBEVGD
         3TLDCdIKD8C5OE9KCaEMt/shD29bf+1mzbbP7iMfxBnRms1yl2j67aYWTgG6Woww5uA1
         RerA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=abjyLhbT3u74Zgq1l+BEIdPMtx/D7+UT5cqLY6XM2/Y=;
        b=zwvoQ3hOdLgVxbdjF8hzwnwXILpt2GSIeY9d91z28+n37x37dBg/C8HyQlY4Ov4N00
         Y1YKfBF7rqMjRy3uykD5h/ZmC8Wg+Dx4W4sWDdcp36X2d/bmL92zzq9Z1Yv3L0O5PSO4
         09IJZnkruOOfpbsPcuLQmIsAEPJGHauoDFAJzm0zyNw9LVCRUhseusWb+BfcIB4/2zr1
         /spL94tdBaoXMVNfXMvl07BjrxzHzEQPDH0cmEC5eKpHOD7XMNwVjqBppvRzvXKk26lQ
         R5XpxoZyWWDF36LPOMnFS67GkSro21D8WkIn8inhPGyCqOQh7It9GgWKRRfVmkQ14+9c
         wtWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=fzpEeib8;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::630 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com. [2a00:1450:4864:20::630])
        by gmr-mx.google.com with ESMTPS id z4si81034lfs.0.2021.06.17.05.11.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Jun 2021 05:11:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::630 as permitted sender) client-ip=2a00:1450:4864:20::630;
Received: by mail-ej1-x630.google.com with SMTP id g8so9562759ejx.1
        for <clang-built-linux@googlegroups.com>; Thu, 17 Jun 2021 05:11:23 -0700 (PDT)
X-Received: by 2002:a17:906:9d05:: with SMTP id fn5mr4763120ejc.133.1623931883222;
 Thu, 17 Jun 2021 05:11:23 -0700 (PDT)
MIME-Version: 1.0
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Thu, 17 Jun 2021 17:41:11 +0530
Message-ID: <CA+G9fYsWHE5Vu9T3FV-vtHHbVFJWEF=bmjQxwaZs3uVYef028g@mail.gmail.com>
Subject: [next] [clang] x86_64-linux-gnu-ld: mm/mremap.o: in function
 `move_pgt_entry': mremap.c:(.text+0x763): undefined reference to `__compiletime_assert_342'
To: Linux-Next Mailing List <linux-next@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, lkft-triage@lists.linaro.org, 
	open list <linux-kernel@vger.kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Arnd Bergmann <arnd@arndb.de>, Stephen Rothwell <sfr@canb.auug.org.au>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: naresh.kamboju@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=fzpEeib8;       spf=pass
 (google.com: domain of naresh.kamboju@linaro.org designates
 2a00:1450:4864:20::630 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
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

Linux next 20210617 tag following x86_64 builds failed with clang-10
and clang-11.
Regressions found on x86_64:

 - build/clang-11-tinyconfig
 - build/clang-11-allnoconfig
 - build/clang-10-tinyconfig
 - build/clang-10-allnoconfig
 - build/clang-11-x86_64_defconfig
 - build/clang-10-defconfig

We are running git bisect to identify the bad commit.

Build log:
------------
drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool:
eb_relocate_parse_slow()+0x466: stack state mismatch: cfa1=4+120
cfa2=-1+0
drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool:
eb_copy_relocations()+0x1e0: stack state mismatch: cfa1=4+104
cfa2=-1+0
x86_64-linux-gnu-ld: mm/mremap.o: in function `move_pgt_entry':
mremap.c:(.text+0x763): undefined reference to `__compiletime_assert_342'
make[1]: *** [/builds/linux/Makefile:1252: vmlinux] Error 1
make[1]: Target '__all' not remade because of errors.
make: *** [Makefile:222: __sub-make] Error 2
make: Target '__all' not remade because of errors.
make --silent --keep-going --jobs=8
O=/home/tuxbuild/.cache/tuxmake/builds/current ARCH=x86_64
CROSS_COMPILE=x86_64-linux-gnu- 'HOSTCC=sccache clang' 'CC=sccache
clang' headers_install
INSTALL_HDR_PATH=/home/tuxbuild/.cache/tuxmake/builds/current/install_hdr/
tar caf /home/tuxbuild/.cache/tuxmake/builds/current/headers.tar.xz -C
/home/tuxbuild/.cache/tuxmake/builds/current/install_hdr .

ref:
https://builds.tuxbuild.com/1u4ZKFTh12vrYBVf8b1xGpaFOrE/

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

tuxmake --runtime podman --target-arch x86_64 --toolchain clang-11
--kconfig x86_64_defconfig

ref:
https://builds.tuxbuild.com/1u4ZKFTh12vrYBVf8b1xGpaFOrE/

build info:
    git_repo: https://gitlab.com/Linaro/lkft/mirrors/next/linux-next
    git_sha: 7d9c6b8147bdd76d7eb2cf6f74f84c6918ae0939
    git_short_log: 7d9c6b8147bd (\Add linux-next specific files for 20210617\)
    kconfig: x86_64_defconfig
    kernel_image:
    kernel_version: 5.13.0-rc6
    toolchain: clang-11

--
Linaro LKFT
https://lkft.linaro.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BG9fYsWHE5Vu9T3FV-vtHHbVFJWEF%3DbmjQxwaZs3uVYef028g%40mail.gmail.com.
