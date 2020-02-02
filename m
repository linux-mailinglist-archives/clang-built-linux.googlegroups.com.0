Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBW7W3HYQKGQE47FMARA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id E173914FC1D
	for <lists+clang-built-linux@lfdr.de>; Sun,  2 Feb 2020 08:33:47 +0100 (CET)
Received: by mail-wr1-x439.google.com with SMTP id d15sf2880499wru.1
        for <lists+clang-built-linux@lfdr.de>; Sat, 01 Feb 2020 23:33:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580628827; cv=pass;
        d=google.com; s=arc-20160816;
        b=fR7Sy/q01wOUHdL3msSI/h7U+X1ce7xD/FTBfBUwItoaiPAczYbXZZvFmULqd7LtuN
         dQbc5vLMjVxiyJuHILKLQUiRxZWiUrqoT0Z6R+5YkMV9kANfS9CI0u19K9pQtvc1DyHy
         3hDkCTOKtvRuaAs/ZMWuk+WzfSlFUGbtfthN6Iq7xX7tMJkuNDPtcEF5ZQHMyNVhh3LM
         KQtpF0WsnK8hjX8l8MLY9xEsXlz+H686TwqhGF8Pw0im0YI6rkLvidSSAgIscV+z5iZm
         YIOOnaZLsp2uDehy9OunkBSZiGECnB0l4ghS0TxPiBEWww4t2HbwcZQ76q2WUw4e2KtI
         S4ag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=bjibQFWqp4JFaQPh3+09M/TjU0KmnCAqDrgg8ek+P68=;
        b=khk04UAO+KgJAdRgSpF1qZ+Tf9SR8HGKWFdw288+3ifd8Kk3b3g6+3O4BRyMYzwrSw
         9Dg0alVE+NTjDXOGh1OInGb0fHT8N8epBvOhyBIAqSd0npq0d8SqSGCEnzUQyx3sacNk
         ojstWcwr/+rUM7bQVa6tgq/2P+QYCnuAl850HCq/Tm3XllEPt+ZJWUYNdEIvx26eUrn2
         RKFgC4lnRzNV7T+mcoR1IvuWIT0j+jnEzjYGzI0BsgwmVRwRN3tU4eFHn4UGgHGLfdjy
         9WAGsRUWQxv2BkZuVfqXO0ZJVBwq02o1dYIJpzyjThDDxvQ8lXTXezs0JQSu+QHpFlx7
         K7Rw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=HqdOiMjM;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bjibQFWqp4JFaQPh3+09M/TjU0KmnCAqDrgg8ek+P68=;
        b=Yio0qXICgXbWVtAf3/1Zm7wPxgiGSZKxkHN7MzJ19JW+ANoK415ZSArP28OKKe3KqA
         OupUh3OnHS0gKJMoxjcYe2/C+Eg8VQuL5viO6LgwDj+3vPc7F7fkZ426sZ3/eHFIBZRX
         1zkxY1fBDBQnubLLNyq/dtUihiqr0cgz5O0KiJFKA/IAT3dOxWIalh9ZUAxshBQJMeYN
         hG3ifjS7o8eCRGP4EtX22pLZatQEFcGP1lgLEdpxVJPGROQL1a/n/ITwNu4xa/UnR3NQ
         RtI59EEn280MIotDBlJpQVlD5Um3QmPW6arPIJj4jzSz83KdLspXu/+mx9g6xzykqzuU
         oGEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bjibQFWqp4JFaQPh3+09M/TjU0KmnCAqDrgg8ek+P68=;
        b=DdKIKz63BJEuTKHnPPbkn4wzwtyXXYkkAMY4PIk7Tl5vnlWpdkERiF01JcrEVL8Fev
         UVXxH8twLjtN4O9nKjfmH66wdsgXpJGpW2eaUkWtlVbM+qDFg/BOmbpv6f9HCKztGWmJ
         bX1RlOopCnPj0geMPRFr91DFst/U9FU0ZwL6xfjoMFO3rn2Kj0+dTWO2DhV4xMVWgdeb
         MeZI5p2EQAAjOguLfGGdpq5FbqXsIQ3zhYmqnEriKDG9iPwGnZY9A/EUExyfYWa4uz74
         qSMigQo6aAAsDfCqvpqApZKW6NlceTLeV/wU9PYmmcB1UlwEuPae33SVy+HyAzuN1DRI
         3n7Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUtTeCAfe/v3xStODzjDXZ0tziXaKxaP1yRIQv71dbOoCJWGAfY
	/KxIlTyYy0tBT3TSSGHW9i0=
X-Google-Smtp-Source: APXvYqxRWW+UEzOfbvBmQQVYb00UwWeESpSI14KjvcGXNQ2kbzbs0x5kLYUkjI0y8o0V1wQ7uJUj5Q==
X-Received: by 2002:a7b:caf2:: with SMTP id t18mr23092860wml.131.1580628827525;
        Sat, 01 Feb 2020 23:33:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:9d13:: with SMTP id g19ls8921759wme.1.gmail; Sat, 01 Feb
 2020 23:33:47 -0800 (PST)
X-Received: by 2002:a7b:cae2:: with SMTP id t2mr22673341wml.180.1580628827009;
        Sat, 01 Feb 2020 23:33:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580628827; cv=none;
        d=google.com; s=arc-20160816;
        b=n0mOfMb1egV/nqimaECZqNoPVg4dx95MpbJNHMsaQvnU0cOZzsCzJYzvs9ceFwftf5
         aSw164Z6Z75KLKBtHDxayZ5BV0/Gqn2K8HSzSbvh0h1cax4pSW2WraECmodOugXOYknO
         4my0jjPiDm+YnLFR6zqLvdtNGQnql+WPgiOupt4uwlksCocuH83CNIgEQVCrtI+idKGO
         KEmOfMh93rXeZOWizBf/s/57qlbK4rJUilHIQ8ZNXy7XoK4bv3iIvctqsLa9cTltQzDo
         MtXddpc+lisVekfyZPmeC9yfoLB3KD2Qko967kt5M6fg7k58wVckdcuxlgVsQH80yxSt
         Bz4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=VWJuYT8NK+aFX+CszlSnbO/FSg2eHikxqsPHLLnsQlY=;
        b=R/yGndJ0lixeoq/tLNJYOO9O6trsw5b7WMcFbOFFT8J+KLsrAdxbm4VWTnxt1d2vhL
         CQIN6Qu7inYWYc4rGzvoqNMgJRV+BUcGwpkwOVZVk5FU1wODUl765ft/Bb7k7n5ljUfV
         XW9HOKOZfsQze3vvItq2Td8lbW0v2VgEb4nmN+ccNTmgbmI110/ZhcXWo/AAv/UA9Xjq
         B6vtYLl37A9sN3UlcQ+eMQzcoqTM9j6HmjACus/kCOisD+mXoNTHVjZykHNVUD3xIRVh
         6v+X4hsO7XUEWaOW5Lr2Lf2GDD08MUytXIgmvcN0XlF1Py22T5cijzc3SoKeU3dk0Z5O
         o+Dg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=HqdOiMjM;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id y185si481075wmd.2.2020.02.01.23.33.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 Feb 2020 23:33:46 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id t2so13883511wrr.1
        for <clang-built-linux@googlegroups.com>; Sat, 01 Feb 2020 23:33:46 -0800 (PST)
X-Received: by 2002:adf:f802:: with SMTP id s2mr9292096wrp.201.1580628826401;
        Sat, 01 Feb 2020 23:33:46 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id q14sm20040217wrj.81.2020.02.01.23.33.45
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 01 Feb 2020 23:33:45 -0800 (PST)
From: ci_notify@linaro.org
Date: Sun, 2 Feb 2020 07:33:45 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <1088744759.596.1580628825881.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-arm-mainline-allmodconfig - Build # 30 -
 Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_595_28739833.1580628825264"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-arm-mainline-allmodconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=HqdOiMjM;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::442
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

------=_Part_595_28739833.1580628825264
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-master-arm-mainline-allmodconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/llvm-master-arm-mainline-allmodconfig

Culprit:
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
</cut>

First few errors in logs of first_bad:
00:03:56 make[1]: *** [__modpost] Error 1
00:03:56 make: *** [modules] Error 2
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

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allmodconfig/30/artifact/artifacts/build-368d060bb497775e42e323b9f676c45e2011da27/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allmodconfig/30/artifact/artifacts/build-acd77500aa8a337baa6d853568c4b55aca48e20f/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allmodconfig/30/

Reproduce builds:
<cut>
mkdir investigate-linux-368d060bb497775e42e323b9f676c45e2011da27
cd investigate-linux-368d060bb497775e42e323b9f676c45e2011da27

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allmodconfig/30/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allmodconfig/30/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allmodconfig/30/artifact/artifacts/test.sh
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

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-arm-mainline-allmodconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allmodconfig/30/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allmodconfig/30/consoleText

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1088744759.596.1580628825881.JavaMail.javamailuser%40localhost.

------=_Part_595_28739833.1580628825264--
