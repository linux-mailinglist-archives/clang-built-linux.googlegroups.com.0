Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBYMB3XYQKGQEUJT2B5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EADA14FF6A
	for <lists+clang-built-linux@lfdr.de>; Sun,  2 Feb 2020 22:36:34 +0100 (CET)
Received: by mail-wr1-x43d.google.com with SMTP id f10sf7132586wro.14
        for <lists+clang-built-linux@lfdr.de>; Sun, 02 Feb 2020 13:36:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580679394; cv=pass;
        d=google.com; s=arc-20160816;
        b=z3GoS3+IVo06RmMwXzriglYWlCW244wrumbIVFRxlN2B/xkFA2TpJiHW4G/IePZxP3
         /MuiPVWWQvNLnxjQAiRSpDHfw9VTlEV3a+8C/KoCN2rhzpOh82nEWzZGGpZGvvufNWZX
         MvDVgtauy2FzGD6TC4W02ikqN3nK/En/yVGVvIRKK/aB6II5tjESzBV3lNb6E3dS9N28
         AwgR3ly2oBxb5WQTGqAXaVKs+yuObHN3honYvlw3sKGm36/+0F3aOgrenPw94nDsn1Cd
         FcFpzNgw7NLGv1IO3vTEmK0eIiQfUaqHmwrhrbtp+rEt7z6RDsmX6rzMJCn70NQmMy7Z
         YyUg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=iX6gLWeeTgV494y6Rd4bFbqX/8x351dmI+pto0vyCP0=;
        b=CavbuEn/7vRy2J9Oo8utWvJeORvdJ2oaNeCe4MgCljoXVHbt6vz5+d8IjAAZ7NlUXZ
         C4bGgz/YA6UhrOXgayzp6Av9aOnWnH2Rvzef3PUx8KKtZu4+JHK6TmQjeqHPSp1X+fOe
         yDXDXpFuqBW417M9OA/NKzp4HKSIQZ7iboM/SWOzCpOCAhwhD5lvNn3S+c2F6j40qQPX
         b/xNtgEd2GPeAvnB/kl9QwJ/eipVJ/RLafXXD8FDJKt1gZ5WuqUdDjTA+goqK++wo4Gm
         CSl3zSw/zbgg3U7XZFoVNyeUvdjfkDqHmqhQwkmroHQKN1ptA0L2YBYWjPX+nA95gj4N
         lhHA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=FJUUogpY;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iX6gLWeeTgV494y6Rd4bFbqX/8x351dmI+pto0vyCP0=;
        b=tWfUnlcHSaCViJRMnYOXC9lZIxRIZaIIIfsVVUZcLvo2RFuu5y/ypHmwWsTA55L+8E
         tcWqW3HdKeHH2DNLiPlDZ+EW0K4CHMsoj0vD9F3L+SjYBDaU3wSq9tUamKbUSqeAyb93
         hu6+6LhPwOPB5xw6fJUtobdbdrlf5T4mZtzL/265j+LpRXaA8uAuJOY35XBFfon9hjgX
         z+iSLNysKDYWayeVtEwCTm3NME/YrWlYgf4UquEZ8Ch4AW5Hd6WPBlArCJKqynLSgHaU
         L6OZmg8iA1PI7VPfSzWhRlTn1uPEhX8asocDVBmLlnebXvAALANptRx9WSzT6RyxBlOh
         KAlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iX6gLWeeTgV494y6Rd4bFbqX/8x351dmI+pto0vyCP0=;
        b=FJOYLpVJyA5SDwJZXJUR6Nj4y3qFAk0i7Op6scvsb5h+phWlFIBfonv0e6ndsq0jVG
         UFBwgvmTIhARvTosGSvFsXLNP5vzTwVVNwZwrksyuAHSDo46cmqwXE7efU1GENYQdraz
         bZ/E293G3s6GPuUEy4V0Ti1ahTabcojBfnJRFRUlHDTKEt5hE1NX2kt1hUHp+PGDTyJB
         i6vxIDz2k03WKRevsrArgUDdvvtaQWlc/n518vYlXU3M4cow8yhPkmGYxt/RDPGfvqUR
         5fvi7SxDJ/NqK5FvEyMhOqUwHrRN6LqSqlRpSGuqyKunXGPBmLKx/B0vzw5JQBgfDX+X
         GThg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXAaxafQtc07xnsiLACCoWtpI4M6mfGIH7JOV34W2+U9ruSo1W6
	ikiDFPPhj6iS6S+4Y9t/QRI=
X-Google-Smtp-Source: APXvYqxkQc1r1/iF4K44ON3ew/Ws5Prb/WXcUowBFB7x3Qra5lVMyJl5AXpg1GuYNFayRQaIuJf2EA==
X-Received: by 2002:adf:ef07:: with SMTP id e7mr11395872wro.104.1580679393938;
        Sun, 02 Feb 2020 13:36:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:fc89:: with SMTP id g9ls7690585wrr.5.gmail; Sun, 02 Feb
 2020 13:36:33 -0800 (PST)
X-Received: by 2002:adf:b605:: with SMTP id f5mr11047505wre.383.1580679393422;
        Sun, 02 Feb 2020 13:36:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580679393; cv=none;
        d=google.com; s=arc-20160816;
        b=eHbZjMacKThlZOlXsU3oejP8JRHlpFLbuFCxVJPzx16sZjg2pXZ4uvVMzEBrDw+iB0
         GEy4r53/Fh0F7BPnfmjhX3SHl4b/m+uHWoN2Y0fDJr0kXfnQf80yWMsccNJ7Og19zLiM
         BX0og4V2Ojf763xGBID+3LSrH+B0+GutfY796ZZTG9FLk83eUwetRRNa7aab7uZQtG/g
         CrikbZqqcwEc+LsdA0Kogd9eDDvnNp33cy+pYqfcZqQP6NWKhCYVunWeFhMr1GfhPrYt
         +nIuWb1bXeZL4jjQfMyx1OICE0oR8gDcT9A4kipHt68HScohVF7BSJfcZA3LngBgEz6Q
         gZjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=mzB5bwRhhkM5mVUzgJWyCaIZE5mXEWlyD83iZN1iJfY=;
        b=DLW7vqB0xcJnEQp0ILOCpQjtTD5VGPjLuQUghYUWn8H3yz5RzxOr6o3v5yCmjt8Jzy
         ZO+9o5yUj0n/hOOxI5qLWzbHi2Y8WmKx6UwssLZsKRzAf6bI0nPWu2EM9v7E0OpF5zx8
         kBlg5xd5Zzt94g69vLgnWi/RHP9T0L96LqZ4nevIG+9VgiM8V2loU4G34YJT12lnA+dZ
         3J0xQObayvQ7LpnfpBrr+afjawdnzrVzwsQz2oU6FsrQBP01JeKL8NSXsMl/w+bxlFDM
         DOHSp7oy5fCc8JK/X/6lAYTDfgMWi7WFiDpJxw/ZJWq1/XaKfpgZkRj8CZkan0wtv373
         E0tw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=FJUUogpY;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id t83si708521wmb.4.2020.02.02.13.36.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 02 Feb 2020 13:36:33 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id w12so4561822wrt.2
        for <clang-built-linux@googlegroups.com>; Sun, 02 Feb 2020 13:36:33 -0800 (PST)
X-Received: by 2002:adf:fe4d:: with SMTP id m13mr12184852wrs.179.1580679392995;
        Sun, 02 Feb 2020 13:36:32 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id g7sm22232052wrq.21.2020.02.02.13.36.32
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 02 Feb 2020 13:36:32 -0800 (PST)
From: ci_notify@linaro.org
Date: Sun, 2 Feb 2020 21:36:31 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <9244397.743.1580679392434.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-arm-mainline-allmodconfig - Build # 37 -
 Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_742_614648859.1580679391737"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-release-arm-mainline-allmodconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=FJUUogpY;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::444
 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

------=_Part_742_614648859.1580679391737
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-release-arm-mainline-allmodconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/gnu-master-arm-mainline-allmodconfig
 - tcwg_kernel/llvm-master-arm-mainline-allmodconfig
 - tcwg_kernel/llvm-release-arm-mainline-allmodconfig

Culprit:
<cut>
commit 368d060bb497775e42e323b9f676c45e2011da27
Merge: acd77500aa8a 451dff37f075
Author: Linus Torvalds <torvalds@linux-foundation.org>

    Merge tag 'kbuild-v5.6' of git://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild
</cut>

First few errors in logs of first_bad:
00:04:23 make[1]: *** [__modpost] Error 1
00:04:23 make: *** [modules] Error 2
Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git"
rr[linux_branch]="26dca6dbd62d74a5012cafab6b2d6d65a01ea69c"

Results regressed to (for first_bad == 368d060bb497775e42e323b9f676c45e2011da27)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
20241

from (for last_good == acd77500aa8a337baa6d853568c4b55aca48e20f)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
20248

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-mainline-allmodconfig/37/artifact/artifacts/build-368d060bb497775e42e323b9f676c45e2011da27/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-mainline-allmodconfig/37/artifact/artifacts/build-acd77500aa8a337baa6d853568c4b55aca48e20f/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-mainline-allmodconfig/37/

Reproduce builds:
<cut>
mkdir investigate-linux-368d060bb497775e42e323b9f676c45e2011da27
cd investigate-linux-368d060bb497775e42e323b9f676c45e2011da27

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-mainline-allmodconfig/37/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-mainline-allmodconfig/37/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-mainline-allmodconfig/37/artifact/artifacts/test.sh
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh

cd linux

# Reproduce first_bad build
git checkout --detach 368d060bb497775e42e323b9f676c45e2011da27
../artifacts/test.sh

# Reproduce last_good build
git checkout --detach acd77500aa8a337baa6d853568c4b55aca48e20f
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-release-arm-mainline-allmodconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-mainline-allmodconfig/37/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-mainline-allmodconfig/37/consoleText

Full commit:
<cut>
commit 368d060bb497775e42e323b9f676c45e2011da27
Merge: acd77500aa8a 451dff37f075
Author: Linus Torvalds <torvalds@linux-foundation.org>
Date:   Sat Feb 1 10:01:52 2020 -0800

    Merge tag 'kbuild-v5.6' of git://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild
    
    Pull Kbuild updates from Masahiro Yamada:
    
     - detect missing include guard in UAPI headers
    
     - do not create orphan built-in.a or obj-y objects
    
     - generate modules.builtin more simply, and drop tristate.conf
    
     - simplify built-in initramfs creation
    
     - make linux-headers deb package thinner
    
     - optimize the deb package build script
    
     - misc cleanups
    
    * tag 'kbuild-v5.6' of git://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild: (34 commits)
      builddeb: split libc headers deployment out into a function
      builddeb: split kernel headers deployment out into a function
      builddeb: remove redundant make for ARCH=um
      builddeb: avoid invoking sub-shells where possible
      builddeb: remove redundant $objtree/
      builddeb: match temporary directory name to the package name
      builddeb: remove unneeded files in hdrobjfiles for headers package
      kbuild: use -S instead of -E for precise cc-option test in Kconfig
      builddeb: allow selection of .deb compressor
      kbuild: remove 'Building modules, stage 2.' log
      kbuild: remove *.tmp file when filechk fails
      kbuild: remove PYTHON2 variable
      modpost: assume STT_SPARC_REGISTER is defined
      gen_initramfs.sh: remove intermediate cpio_list on errors
      initramfs: refactor the initramfs build rules
      gen_initramfs.sh: always output cpio even without -o option
      initramfs: add default_cpio_list, and delete -d option support
      initramfs: generate dependency list and cpio at the same time
      initramfs: specify $(src)/gen_initramfs.sh as a prerequisite in Makefile
      initramfs: make initramfs compression choice non-optional
      ...

 Documentation/kbuild/kconfig.rst                |   5 -
 Makefile                                        |  24 +---
 include/linux/module.h                          |  12 +-
 scripts/Kbuild.include                          |  25 ++--
 scripts/Kconfig.include                         |   2 +-
 scripts/Makefile.build                          |   4 +-
 scripts/Makefile.lib                            |  21 ++-
 scripts/Makefile.modbuiltin                     |  57 --------
 scripts/Makefile.modpost                        |   1 -
 scripts/kconfig/confdata.c                      |  45 +------
 scripts/link-vmlinux.sh                         |   4 +
 scripts/mod/modpost.c                           |   8 +-
 scripts/package/builddeb                        | 106 +++++++++------
 usr/.gitignore                                  |   8 +-
 usr/Kconfig                                     |  26 ----
 usr/Makefile                                    |  97 +++++++++-----
 usr/default_cpio_list                           |   6 +
 usr/{gen_initramfs_list.sh => gen_initramfs.sh} | 167 ++++++------------------
 usr/include/Makefile                            | 107 +++++++--------
 usr/initramfs_data.S                            |   5 +-
 20 files changed, 281 insertions(+), 449 deletions(-)
</cut>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/9244397.743.1580679392434.JavaMail.javamailuser%40localhost.

------=_Part_742_614648859.1580679391737--
