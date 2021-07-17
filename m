Return-Path: <clang-built-linux+bncBDM6PI5M4IFRB24AZKDQMGQE24IMAPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id D22D63CC19F
	for <lists+clang-built-linux@lfdr.de>; Sat, 17 Jul 2021 09:02:03 +0200 (CEST)
Received: by mail-lj1-x240.google.com with SMTP id r3-20020a2e80c30000b0290190289db7f9sf5873069ljg.7
        for <lists+clang-built-linux@lfdr.de>; Sat, 17 Jul 2021 00:02:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626505323; cv=pass;
        d=google.com; s=arc-20160816;
        b=c/JtZ5i2z/glYxUAtHlE6d2GAVnex7QPJs8aOqALDQo/nKcqnmDO30ZURoQnPuHKjU
         0KhjJJrrs4x4qilyMwXTXTRCC+8oW/sxhv3gKwzm+ZssjxJGMdVobYZd3PDnia70C97u
         yQMEBRdwLBvGAdE597OmMRA6CW/oeRktbuY7yQMKLbzrrzJK8qQdPb8TOlhBFx6yZs7U
         MpZkHOMWbzGV/W/Z5WHGSRILSjo30DKuJeLVkVeleeECAPVm/D3LAVtyoa2hiNAcJ7XM
         R4+yoqnSnSYNACoQRCK/Q8UZ6+bRPmkewCce7Xs0qP9enCpCFTFDFpFkeACDt86Yfepa
         U6vA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=222lc7K5HnOegIJTEa9tmPJd1SyU9D3JYlSsmon0CSE=;
        b=w3VH0Y8jPB832xraAclgN1MMkFFQuS4qHWp7cGsLJdWhm0dLNxtgn8y3d3NBAoUZpc
         3wS2Zrilht0KmhyphcvYhgQggJGJJNvKI14YbFu3ofgUHxQlUM5HUWavz64YHKGvjWbh
         w4bmSUM4AdMH6wF3RMmXq0WxRgbK5fHFOnOXOUFNp7oOzFfbvwLID4lTFVBQ6+q4D/6M
         0qYudOYJdMbA/o4nyN+N7q21Arczph2X6DDL91XIDLiHMG3kXikc3HkaworAh5TqhTC9
         YAas8yGlufh1YIOokKQdVYBkA3Jm1NRcQ7Bbi2Vey+ixi7TQ8+pYR+FThhE0T5Il6yyv
         9AuQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=C38fm4Ev;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::32b as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=222lc7K5HnOegIJTEa9tmPJd1SyU9D3JYlSsmon0CSE=;
        b=Uf9lkqvdflEw2m6CeW/eg0upe85nXqROD9h4Y2tggbOLET9MgA/EAgr3PsMWJmCFlY
         PsK2mNyVfKE9yKPHl/UlD1QKrc7fxLBl/WXZV1wWL832GQKvChcF8xMPYkRh1U50yLuk
         0DkHkCkLWb+jN78nINU4Kg/+IrlADEFi8Tf52yLb5uZrS+WanADhAv33SYNRoz9pP2HT
         kq6LHV9YNxxDc6oMeduOLGBjWgEqoi21aEJG2hvi82eun3+yOWryXAf3LgUfJ3E9oWm4
         Cg0Ca7FrwaLCxkXcLgTLwZUxidq9Jc+a3pdCeiX2MwkDE/06fJtR+avuGxgxhKnHyI6i
         3cOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=222lc7K5HnOegIJTEa9tmPJd1SyU9D3JYlSsmon0CSE=;
        b=mRUi4yL8VeKDM4GUlxE9aIum13A+7Rjmfmw6quC4RW0fSvKO1EuaMDdzIjNUPA8h9a
         qN3vsqDbnN8pbK1t7q3So9I9j3nDxlRqcXNC60ptxkk1MpoOzo/dWaoPEZjWDuTGTwuU
         2ziKaYdSF6SY1qRChdOgEd2OWbegjO4BMVmxKPpv0muu4DThp9e5b9AutOJczsbm9B0l
         jWs79NEgXw6UjxmHUKGIh2yiXsdTZAoypt1b/h/HR6I6JgsorExrNzys+Kprk3L0dNuc
         yljFu4XOvTPlVBdCqzFvdLN67YnVPoVHZGzHtftl34nfVPe5pKvP1UOcWFEvjKhT4OEn
         5Q3g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530nqkNt2hkNln3vVZ13muTlTFaGJoWaDAwqqNCraKEfz6aawhfh
	Af/M5zL5a/qcnm6zH4EpzE0=
X-Google-Smtp-Source: ABdhPJxRwcxiTSxe+a04Hd7wS1sraRhkhDspztSNxE4+nuO23ETdSgTyZDcgK0ns63aZCmiJacBppA==
X-Received: by 2002:a2e:a495:: with SMTP id h21mr12950423lji.60.1626505323338;
        Sat, 17 Jul 2021 00:02:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b88e:: with SMTP id r14ls2813222ljp.7.gmail; Sat, 17 Jul
 2021 00:02:02 -0700 (PDT)
X-Received: by 2002:a2e:a495:: with SMTP id h21mr12950354lji.60.1626505322305;
        Sat, 17 Jul 2021 00:02:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626505322; cv=none;
        d=google.com; s=arc-20160816;
        b=bRZRV2NWwE14s7g1HDMS3iKQ1oJ1nmmEMWoYHUkrIb39vO8FRgFyo5O5EsL+lbA5Mm
         cNPSRk/iNZLtQEbkmtA4i7jeI4fV8bjwthCgoKgBBs0BVmCdzGueRgJ0A7t+2CGyJH69
         CGC/dmo7K1ZVKeP9qLDhH5QpptTdPYxDvwdqWTxM0/61R79vU9lxwPbMEZ8M3oYjOV69
         ozl7a1aTS6bYxCdbGNBIKBvFcf8fqcHDfpzFRZb8xHKPriaZ6h7iv5W3cJPOLCWiyOdj
         /DSEOgl5xfrCacMDezjcM8vnuwfLECFSKd8boej69Syde75Vig4CvKISrMHcYV++pWj5
         82wQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=xE8XLaRbM5lbeSnNYx8Ubdfkz67cvKxqp5OlcX83cxk=;
        b=x3vmwInRyoG8DrOYyzzkJE6K9rzokZihjjw4v2STPS7BKbmEEdkuKWJ70mPJzQku10
         AKi+F8mTMG8UpGMkHmeaaCfJZY2E0C1txIKAdmDLzIwLdYsyDMqk4BAkMYQmtQYt3lSI
         CttGJvWe8PPD+pRYHIC4EfFEKZRgdULSUKjmvT32UCYGz+kyf6Ir5d+RIJ4uN7NIrdoH
         sZzjXM01LTQ2COAEInRR2Z/VmLQfUn+YFTpGHCT6171SKnsjMUmWzneDD8ZX1flfwE2E
         hKn2/Iv5dG3JBNVK3Ah1TF3Fg5uX4uHQNyhYgPPeg8L3QnNRdzDfoZJ4mG1G2l0xTFbM
         saDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=C38fm4Ev;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::32b as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com. [2a00:1450:4864:20::32b])
        by gmr-mx.google.com with ESMTPS id z24si490692lfq.5.2021.07.17.00.02.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Jul 2021 00:02:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::32b as permitted sender) client-ip=2a00:1450:4864:20::32b;
Received: by mail-wm1-x32b.google.com with SMTP id a5-20020a7bc1c50000b02901e3bbe0939bso7193973wmj.0
        for <clang-built-linux@googlegroups.com>; Sat, 17 Jul 2021 00:02:02 -0700 (PDT)
X-Received: by 2002:a05:600c:2211:: with SMTP id z17mr14900048wml.17.1626505321468;
        Sat, 17 Jul 2021 00:02:01 -0700 (PDT)
Received: from 172.17.0.5 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id l20sm10974846wmq.3.2021.07.17.00.02.00
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Jul 2021 00:02:00 -0700 (PDT)
From: ci_notify@linaro.org
Date: Sat, 17 Jul 2021 07:02:00 +0000 (UTC)
To: tcwg-validation@linaro.org, Alexey Dobriyan <adobriyan@gmail.com>,
	linaro-toolchain@lists.linaro.org,
	clang-built-linux@googlegroups.com, arnd@linaro.org
Message-ID: <331762447.7463.1626505320908@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-arm-next-allmodconfig - Build # 29 - Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_7462_794608583.1626505320425"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-release-arm-next-allmodconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=C38fm4Ev;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::32b
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

------=_Part_7462_794608583.1626505320425
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-release-arm-next-allmodconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/llvm-release-arm-next-allmodconfig

Culprit:
<cut>
commit 6f4266a78a4e090b452a0335c1414f3240684743
Author: Alexey Dobriyan <adobriyan@gmail.com>
Date:   Fri Jul 16 13:44:03 2021 +1000

    kbuild: decouple build from userspace headers
    
    First, userspace headers can be under incompatible license.
    
    Second, kernel doesn't require userspace to operate and should not
    require anything from userspace to be built other than compiler.
    We would use -ffreestanding too if not builtin function shenanigans.
    
    To decouple:
    
    * ship minimal stdarg.h as <linux/stdarg.h>,
            1 type, 4 macros
    
    GPL 2 version of <stdarg.h> can be extracted from
    http://archive.debian.org/debian/pool/main/g/gcc-4.2/gcc-4.2_4.2.4.orig.tar.gz
    
    * delete "-isystem" from command line arguments,
            this is what enables header leakage
    
    * fixup/delete include directives where necessary.
    
    Link: https://lkml.kernel.org/r/YO8ioz4sHwcUAkdt@localhost.localdomain
    Signed-off-by: Alexey Dobriyan <adobriyan@gmail.com>
    Cc: Arnd Bergmann <arnd@arndb.de>
    Cc: Masahiro Yamada <masahiroy@kernel.org>
    Cc: Christoph Hellwig <hch@infradead.org>
    Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
    Signed-off-by: Stephen Rothwell <sfr@canb.auug.org.au>
</cut>

Results regressed to (for first_bad == 6f4266a78a4e090b452a0335c1414f3240684743)
# reset_artifacts:
-10
# build_abe binutils:
-9
# build_llvm:
-5
# build_abe qemu:
-2
# linux_n_obj:
21684
# First few build errors in logs:
# 00:01:11 crypto/aegis128-neon-inner.c:11:10: fatal error: 'arm_neon.h' file not found
# 00:01:11 make[1]: *** [crypto/aegis128-neon-inner.o] Error 1
# 00:01:14 lib/raid6/recov_neon_inner.c:7:10: fatal error: 'arm_neon.h' file not found
# 00:01:14 make[2]: *** [lib/raid6/recov_neon_inner.o] Error 1
# 00:01:14 lib/raid6/neon1.c:27:10: fatal error: 'arm_neon.h' file not found
# 00:01:14 make[2]: *** [lib/raid6/neon1.o] Error 1
# 00:01:15 lib/raid6/neon2.c:27:10: fatal error: 'arm_neon.h' file not found
# 00:01:15 make[2]: *** [lib/raid6/neon2.o] Error 1
# 00:01:15 lib/raid6/neon4.c:27:10: fatal error: 'arm_neon.h' file not found
# 00:01:15 make[2]: *** [lib/raid6/neon4.o] Error 1

from (for last_good == d06391f28276b0ad28a59073bdb8eb10dc4ea495)
# reset_artifacts:
-10
# build_abe binutils:
-9
# build_llvm:
-5
# build_abe qemu:
-2
# linux_n_obj:
29753
# linux build successful:
all

Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-release-arm-next-allmodconfig/29/artifact/artifacts/build-d06391f28276b0ad28a59073bdb8eb10dc4ea495/
Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-release-arm-next-allmodconfig/29/artifact/artifacts/build-6f4266a78a4e090b452a0335c1414f3240684743/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-release-arm-next-allmodconfig/29/

Configuration details:
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"
rr[linux_branch]="e9338abf0e186336022293d2e454c106761f262b"

Reproduce builds:
<cut>
mkdir investigate-linux-6f4266a78a4e090b452a0335c1414f3240684743
cd investigate-linux-6f4266a78a4e090b452a0335c1414f3240684743

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-release-arm-next-allmodconfig/29/artifact/artifacts/manifests/build-baseline.sh --fail
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-release-arm-next-allmodconfig/29/artifact/artifacts/manifests/build-parameters.sh --fail
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-release-arm-next-allmodconfig/29/artifact/artifacts/test.sh --fail
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh

# Save baseline build state (which is then restored in artifacts/test.sh)
rsync -a --del --delete-excluded --exclude bisect/ --exclude artifacts/ --exclude linux/ ./ ./bisect/baseline/

cd linux

# Reproduce first_bad build
git checkout --detach 6f4266a78a4e090b452a0335c1414f3240684743
../artifacts/test.sh

# Reproduce last_good build
git checkout --detach d06391f28276b0ad28a59073bdb8eb10dc4ea495
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-release-arm-next-allmodconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-release-arm-next-allmodconfig/29/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-release-arm-next-allmodconfig/29/consoleText

Full commit (up to 1000 lines):
<cut>
commit 6f4266a78a4e090b452a0335c1414f3240684743
Author: Alexey Dobriyan <adobriyan@gmail.com>
Date:   Fri Jul 16 13:44:03 2021 +1000

    kbuild: decouple build from userspace headers
    
    First, userspace headers can be under incompatible license.
    
    Second, kernel doesn't require userspace to operate and should not
    require anything from userspace to be built other than compiler.
    We would use -ffreestanding too if not builtin function shenanigans.
    
    To decouple:
    
    * ship minimal stdarg.h as <linux/stdarg.h>,
            1 type, 4 macros
    
    GPL 2 version of <stdarg.h> can be extracted from
    http://archive.debian.org/debian/pool/main/g/gcc-4.2/gcc-4.2_4.2.4.orig.tar.gz
    
    * delete "-isystem" from command line arguments,
            this is what enables header leakage
    
    * fixup/delete include directives where necessary.
    
    Link: https://lkml.kernel.org/r/YO8ioz4sHwcUAkdt@localhost.localdomain
    Signed-off-by: Alexey Dobriyan <adobriyan@gmail.com>
    Cc: Arnd Bergmann <arnd@arndb.de>
    Cc: Masahiro Yamada <masahiroy@kernel.org>
    Cc: Christoph Hellwig <hch@infradead.org>
    Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
    Signed-off-by: Stephen Rothwell <sfr@canb.auug.org.au>
---
 Makefile                                                      |  2 +-
 arch/arm/kernel/process.c                                     |  2 --
 arch/arm/mach-bcm/bcm_kona_smc.c                              |  2 --
 arch/arm64/kernel/process.c                                   |  3 ---
 arch/openrisc/kernel/process.c                                |  2 --
 arch/parisc/kernel/firmware.c                                 |  2 +-
 arch/parisc/kernel/process.c                                  |  3 ---
 arch/powerpc/kernel/prom.c                                    |  1 -
 arch/powerpc/kernel/prom_init.c                               |  2 +-
 arch/powerpc/kernel/rtas.c                                    |  2 +-
 arch/powerpc/kernel/udbg.c                                    |  2 +-
 arch/s390/boot/pgm_check_info.c                               |  2 +-
 arch/sparc/kernel/process_32.c                                |  3 ---
 arch/sparc/kernel/process_64.c                                |  3 ---
 arch/um/include/shared/irq_user.h                             |  1 -
 arch/um/include/shared/os.h                                   |  1 -
 arch/um/os-Linux/signal.c                                     |  2 +-
 arch/um/os-Linux/util.c                                       |  1 +
 arch/x86/boot/boot.h                                          |  2 +-
 crypto/aegis128-neon-inner.c                                  |  2 --
 drivers/block/xen-blkback/xenbus.c                            |  1 -
 drivers/firmware/efi/libstub/efi-stub-helper.c                |  2 +-
 drivers/firmware/efi/libstub/vsprintf.c                       |  2 +-
 drivers/gpu/drm/amd/display/dc/dc_helper.c                    |  2 +-
 drivers/gpu/drm/amd/display/dmub/inc/dmub_cmd.h               |  1 -
 drivers/gpu/drm/drm_print.c                                   |  2 +-
 drivers/gpu/drm/msm/disp/msm_disp_snapshot.h                  |  1 -
 drivers/isdn/capi/capiutil.c                                  |  2 +-
 drivers/macintosh/macio-adb.c                                 |  1 -
 drivers/macintosh/via-cuda.c                                  |  2 +-
 drivers/macintosh/via-macii.c                                 |  2 --
 drivers/macintosh/via-pmu.c                                   |  2 +-
 drivers/net/wireless/intersil/orinoco/hermes.c                |  1 -
 drivers/net/wwan/iosm/iosm_ipc_imem.h                         |  1 -
 drivers/pinctrl/aspeed/pinmux-aspeed.h                        |  1 -
 drivers/scsi/elx/efct/efct_driver.h                           |  1 -
 .../media/atomisp/pci/hive_isp_css_common/host/isp_local.h    |  2 --
 .../media/atomisp/pci/hive_isp_css_include/print_support.h    |  2 +-
 drivers/staging/media/atomisp/pci/ia_css_env.h                |  2 +-
 .../media/atomisp/pci/runtime/debug/interface/ia_css_debug.h  |  2 +-
 drivers/staging/media/atomisp/pci/sh_css_internal.h           |  2 +-
 drivers/xen/xen-scsiback.c                                    |  2 --
 fs/befs/debug.c                                               |  2 +-
 fs/reiserfs/prints.c                                          |  2 +-
 fs/ufs/super.c                                                |  2 +-
 include/acpi/platform/acgcc.h                                 |  2 +-
 include/linux/filter.h                                        |  2 --
 include/linux/kernel.h                                        |  2 +-
 include/linux/mISDNif.h                                       |  1 -
 include/linux/printk.h                                        |  2 +-
 include/linux/stdarg.h                                        | 11 +++++++++++
 include/linux/string.h                                        |  2 +-
 kernel/debug/kdb/kdb_support.c                                |  1 -
 lib/debug_info.c                                              |  3 +--
 lib/kasprintf.c                                               |  2 +-
 lib/kunit/string-stream.h                                     |  2 +-
 lib/vsprintf.c                                                |  2 +-
 mm/kfence/report.c                                            |  2 +-
 net/batman-adv/log.c                                          |  2 +-
 sound/aoa/codecs/onyx.h                                       |  1 -
 sound/aoa/codecs/tas.c                                        |  1 -
 sound/core/info.c                                             |  1 -
 62 files changed, 44 insertions(+), 77 deletions(-)

diff --git a/Makefile b/Makefile
index eaa692976851..02591a333d86 100644
--- a/Makefile
+++ b/Makefile
@@ -972,7 +972,7 @@ KBUILD_CFLAGS += -falign-functions=64
 endif
 
 # arch Makefile may override CC so keep this after arch Makefile is included
-NOSTDINC_FLAGS += -nostdinc -isystem $(shell $(CC) -print-file-name=include)
+NOSTDINC_FLAGS += -nostdinc
 
 # warn about C99 declaration after statement
 KBUILD_CFLAGS += -Wdeclaration-after-statement
diff --git a/arch/arm/kernel/process.c b/arch/arm/kernel/process.c
index fc9e8b37eaa8..bb5ad8a6a4c3 100644
--- a/arch/arm/kernel/process.c
+++ b/arch/arm/kernel/process.c
@@ -5,8 +5,6 @@
  *  Copyright (C) 1996-2000 Russell King - Converted to ARM.
  *  Original Copyright (C) 1995  Linus Torvalds
  */
-#include <stdarg.h>
-
 #include <linux/export.h>
 #include <linux/sched.h>
 #include <linux/sched/debug.h>
diff --git a/arch/arm/mach-bcm/bcm_kona_smc.c b/arch/arm/mach-bcm/bcm_kona_smc.c
index 43a16f922b53..43829e49ad93 100644
--- a/arch/arm/mach-bcm/bcm_kona_smc.c
+++ b/arch/arm/mach-bcm/bcm_kona_smc.c
@@ -10,8 +10,6 @@
  * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  */
-
-#include <stdarg.h>
 #include <linux/smp.h>
 #include <linux/io.h>
 #include <linux/ioport.h>
diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
index c8989b999250..5f7ac9a0f9a3 100644
--- a/arch/arm64/kernel/process.c
+++ b/arch/arm64/kernel/process.c
@@ -6,9 +6,6 @@
  * Copyright (C) 1996-2000 Russell King - Converted to ARM.
  * Copyright (C) 2012 ARM Ltd.
  */
-
-#include <stdarg.h>
-
 #include <linux/compat.h>
 #include <linux/efi.h>
 #include <linux/elf.h>
diff --git a/arch/openrisc/kernel/process.c b/arch/openrisc/kernel/process.c
index eb62429681fc..b0698d9ce14f 100644
--- a/arch/openrisc/kernel/process.c
+++ b/arch/openrisc/kernel/process.c
@@ -14,8 +14,6 @@
  */
 
 #define __KERNEL_SYSCALLS__
-#include <stdarg.h>
-
 #include <linux/errno.h>
 #include <linux/sched.h>
 #include <linux/sched/debug.h>
diff --git a/arch/parisc/kernel/firmware.c b/arch/parisc/kernel/firmware.c
index 665b70086685..7034227dbdf3 100644
--- a/arch/parisc/kernel/firmware.c
+++ b/arch/parisc/kernel/firmware.c
@@ -51,7 +51,7 @@
  *					prumpf	991016	
  */
 
-#include <stdarg.h>
+#include <linux/stdarg.h>
 
 #include <linux/delay.h>
 #include <linux/init.h>
diff --git a/arch/parisc/kernel/process.c b/arch/parisc/kernel/process.c
index 184ec3c1eae4..38ec4ae81239 100644
--- a/arch/parisc/kernel/process.c
+++ b/arch/parisc/kernel/process.c
@@ -17,9 +17,6 @@
  *    Copyright (C) 2001-2014 Helge Deller <deller@gmx.de>
  *    Copyright (C) 2002 Randolph Chung <tausq with parisc-linux.org>
  */
-
-#include <stdarg.h>
-
 #include <linux/elf.h>
 #include <linux/errno.h>
 #include <linux/kernel.h>
diff --git a/arch/powerpc/kernel/prom.c b/arch/powerpc/kernel/prom.c
index f620e04dc9bf..a1e7ba0fad09 100644
--- a/arch/powerpc/kernel/prom.c
+++ b/arch/powerpc/kernel/prom.c
@@ -11,7 +11,6 @@
 
 #undef DEBUG
 
-#include <stdarg.h>
 #include <linux/kernel.h>
 #include <linux/string.h>
 #include <linux/init.h>
diff --git a/arch/powerpc/kernel/prom_init.c b/arch/powerpc/kernel/prom_init.c
index a5bf355ce1d6..10664633f7e3 100644
--- a/arch/powerpc/kernel/prom_init.c
+++ b/arch/powerpc/kernel/prom_init.c
@@ -14,7 +14,7 @@
 /* we cannot use FORTIFY as it brings in new symbols */
 #define __NO_FORTIFY
 
-#include <stdarg.h>
+#include <linux/stdarg.h>
 #include <linux/kernel.h>
 #include <linux/string.h>
 #include <linux/init.h>
diff --git a/arch/powerpc/kernel/rtas.c b/arch/powerpc/kernel/rtas.c
index 99f2cce635fb..ff80bbad22a5 100644
--- a/arch/powerpc/kernel/rtas.c
+++ b/arch/powerpc/kernel/rtas.c
@@ -7,7 +7,7 @@
  * Copyright (C) 2001 IBM.
  */
 
-#include <stdarg.h>
+#include <linux/stdarg.h>
 #include <linux/kernel.h>
 #include <linux/types.h>
 #include <linux/spinlock.h>
diff --git a/arch/powerpc/kernel/udbg.c b/arch/powerpc/kernel/udbg.c
index 01595e8cafe7..b1544b2f6321 100644
--- a/arch/powerpc/kernel/udbg.c
+++ b/arch/powerpc/kernel/udbg.c
@@ -5,7 +5,7 @@
  * c 2001 PPC 64 Team, IBM Corp
  */
 
-#include <stdarg.h>
+#include <linux/stdarg.h>
 #include <linux/types.h>
 #include <linux/sched.h>
 #include <linux/console.h>
diff --git a/arch/s390/boot/pgm_check_info.c b/arch/s390/boot/pgm_check_info.c
index 3a46abed2549..b7d8dd88bbf2 100644
--- a/arch/s390/boot/pgm_check_info.c
+++ b/arch/s390/boot/pgm_check_info.c
@@ -1,5 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0
 #include <linux/kernel.h>
+#include <linux/stdarg.h>
 #include <linux/string.h>
 #include <linux/ctype.h>
 #include <asm/stacktrace.h>
@@ -8,7 +9,6 @@
 #include <asm/setup.h>
 #include <asm/sclp.h>
 #include <asm/uv.h>
-#include <stdarg.h>
 #include "boot.h"
 
 const char hex_asc[] = "0123456789abcdef";
diff --git a/arch/sparc/kernel/process_32.c b/arch/sparc/kernel/process_32.c
index 93983d6d431d..bbbe0cfef746 100644
--- a/arch/sparc/kernel/process_32.c
+++ b/arch/sparc/kernel/process_32.c
@@ -8,9 +8,6 @@
 /*
  * This file handles the architecture-dependent parts of process handling..
  */
-
-#include <stdarg.h>
-
 #include <linux/elfcore.h>
 #include <linux/errno.h>
 #include <linux/module.h>
diff --git a/arch/sparc/kernel/process_64.c b/arch/sparc/kernel/process_64.c
index d33c58a58d4f..0cabcdfb23fd 100644
--- a/arch/sparc/kernel/process_64.c
+++ b/arch/sparc/kernel/process_64.c
@@ -9,9 +9,6 @@
 /*
  * This file handles the architecture-dependent parts of process handling..
  */
-
-#include <stdarg.h>
-
 #include <linux/errno.h>
 #include <linux/export.h>
 #include <linux/sched.h>
diff --git a/arch/um/include/shared/irq_user.h b/arch/um/include/shared/irq_user.h
index 065829f443ae..86a8a573b65c 100644
--- a/arch/um/include/shared/irq_user.h
+++ b/arch/um/include/shared/irq_user.h
@@ -7,7 +7,6 @@
 #define __IRQ_USER_H__
 
 #include <sysdep/ptrace.h>
-#include <stdbool.h>
 
 enum um_irq_type {
 	IRQ_READ,
diff --git a/arch/um/include/shared/os.h b/arch/um/include/shared/os.h
index 60b84edc8a68..96d400387c93 100644
--- a/arch/um/include/shared/os.h
+++ b/arch/um/include/shared/os.h
@@ -8,7 +8,6 @@
 #ifndef __OS_H__
 #define __OS_H__
 
-#include <stdarg.h>
 #include <irq_user.h>
 #include <longjmp.h>
 #include <mm_id.h>
diff --git a/arch/um/os-Linux/signal.c b/arch/um/os-Linux/signal.c
index 6de99bb16113..6cf098c23a39 100644
--- a/arch/um/os-Linux/signal.c
+++ b/arch/um/os-Linux/signal.c
@@ -67,7 +67,7 @@ int signals_enabled;
 #ifdef UML_CONFIG_UML_TIME_TRAVEL_SUPPORT
 static int signals_blocked;
 #else
-#define signals_blocked false
+#define signals_blocked 0
 #endif
 static unsigned int signals_pending;
 static unsigned int signals_active = 0;
diff --git a/arch/um/os-Linux/util.c b/arch/um/os-Linux/util.c
index 07327425d06e..41297ec404bf 100644
--- a/arch/um/os-Linux/util.c
+++ b/arch/um/os-Linux/util.c
@@ -3,6 +3,7 @@
  * Copyright (C) 2000 - 2007 Jeff Dike (jdike@{addtoit,linux.intel}.com)
  */
 
+#include <stdarg.h>
 #include <stdio.h>
 #include <stdlib.h>
 #include <unistd.h>
diff --git a/arch/x86/boot/boot.h b/arch/x86/boot/boot.h
index ca866f1cca2e..34c9dbb6a47d 100644
--- a/arch/x86/boot/boot.h
+++ b/arch/x86/boot/boot.h
@@ -18,7 +18,7 @@
 
 #ifndef __ASSEMBLY__
 
-#include <stdarg.h>
+#include <linux/stdarg.h>
 #include <linux/types.h>
 #include <linux/edd.h>
 #include <asm/setup.h>
diff --git a/crypto/aegis128-neon-inner.c b/crypto/aegis128-neon-inner.c
index 7de485907d81..6b37fbb79884 100644
--- a/crypto/aegis128-neon-inner.c
+++ b/crypto/aegis128-neon-inner.c
@@ -15,8 +15,6 @@
 
 #define AEGIS_BLOCK_SIZE	16
 
-#include <stddef.h>
-
 extern int aegis128_have_aes_insn;
 
 void *memcpy(void *dest, const void *src, size_t n);
diff --git a/drivers/block/xen-blkback/xenbus.c b/drivers/block/xen-blkback/xenbus.c
index 125b22205d38..33eba3df4dd9 100644
--- a/drivers/block/xen-blkback/xenbus.c
+++ b/drivers/block/xen-blkback/xenbus.c
@@ -8,7 +8,6 @@
 
 #define pr_fmt(fmt) "xen-blkback: " fmt
 
-#include <stdarg.h>
 #include <linux/module.h>
 #include <linux/kthread.h>
 #include <xen/events.h>
diff --git a/drivers/firmware/efi/libstub/efi-stub-helper.c b/drivers/firmware/efi/libstub/efi-stub-helper.c
index aa8da0a49829..4921580e1725 100644
--- a/drivers/firmware/efi/libstub/efi-stub-helper.c
+++ b/drivers/firmware/efi/libstub/efi-stub-helper.c
@@ -7,7 +7,7 @@
  * Copyright 2011 Intel Corporation; author Matt Fleming
  */
 
-#include <stdarg.h>
+#include <linux/stdarg.h>
 
 #include <linux/ctype.h>
 #include <linux/efi.h>
diff --git a/drivers/firmware/efi/libstub/vsprintf.c b/drivers/firmware/efi/libstub/vsprintf.c
index 1088e288c04d..71c71c222346 100644
--- a/drivers/firmware/efi/libstub/vsprintf.c
+++ b/drivers/firmware/efi/libstub/vsprintf.c
@@ -10,7 +10,7 @@
  * Oh, it's a waste of space, but oh-so-yummy for debugging.
  */
 
-#include <stdarg.h>
+#include <linux/stdarg.h>
 
 #include <linux/compiler.h>
 #include <linux/ctype.h>
diff --git a/drivers/gpu/drm/amd/display/dc/dc_helper.c b/drivers/gpu/drm/amd/display/dc/dc_helper.c
index a612ba6dc389..ab6bc5d79012 100644
--- a/drivers/gpu/drm/amd/display/dc/dc_helper.c
+++ b/drivers/gpu/drm/amd/display/dc/dc_helper.c
@@ -28,9 +28,9 @@
  */
 
 #include <linux/delay.h>
+#include <linux/stdarg.h>
 
 #include "dm_services.h"
-#include <stdarg.h>
 
 #include "dc.h"
 #include "dc_dmub_srv.h"
diff --git a/drivers/gpu/drm/amd/display/dmub/inc/dmub_cmd.h b/drivers/gpu/drm/amd/display/dmub/inc/dmub_cmd.h
index 7c4734f905d9..68fd451aca23 100644
--- a/drivers/gpu/drm/amd/display/dmub/inc/dmub_cmd.h
+++ b/drivers/gpu/drm/amd/display/dmub/inc/dmub_cmd.h
@@ -39,7 +39,6 @@
 #include <linux/types.h>
 #include <linux/string.h>
 #include <linux/delay.h>
-#include <stdarg.h>
 
 #include "atomfirmware.h"
 
diff --git a/drivers/gpu/drm/drm_print.c b/drivers/gpu/drm/drm_print.c
index 111b932cf2a9..f783d4963d4b 100644
--- a/drivers/gpu/drm/drm_print.c
+++ b/drivers/gpu/drm/drm_print.c
@@ -25,7 +25,7 @@
 
 #define DEBUG /* for pr_debug() */
 
-#include <stdarg.h>
+#include <linux/stdarg.h>
 
 #include <linux/io.h>
 #include <linux/moduleparam.h>
diff --git a/drivers/gpu/drm/msm/disp/msm_disp_snapshot.h b/drivers/gpu/drm/msm/disp/msm_disp_snapshot.h
index c92a9508c8d3..0f9a5364cd86 100644
--- a/drivers/gpu/drm/msm/disp/msm_disp_snapshot.h
+++ b/drivers/gpu/drm/msm/disp/msm_disp_snapshot.h
@@ -25,7 +25,6 @@
 #include <linux/pm_runtime.h>
 #include <linux/kthread.h>
 #include <linux/devcoredump.h>
-#include <stdarg.h>
 #include "msm_kms.h"
 
 #define MSM_DISP_SNAPSHOT_MAX_BLKS		10
diff --git a/drivers/isdn/capi/capiutil.c b/drivers/isdn/capi/capiutil.c
index f26bf3c66d7e..d7ae42edc4a8 100644
--- a/drivers/isdn/capi/capiutil.c
+++ b/drivers/isdn/capi/capiutil.c
@@ -379,7 +379,7 @@ static char *pnames[] =
 	/*2f */ "Useruserdata"
 };
 
-#include <stdarg.h>
+#include <linux/stdarg.h>
 
 /*-------------------------------------------------------*/
 static _cdebbuf *bufprint(_cdebbuf *cdb, char *fmt, ...)
diff --git a/drivers/macintosh/macio-adb.c b/drivers/macintosh/macio-adb.c
index d4759db002c6..dc634c2932fd 100644
--- a/drivers/macintosh/macio-adb.c
+++ b/drivers/macintosh/macio-adb.c
@@ -2,7 +2,6 @@
 /*
  * Driver for the ADB controller in the Mac I/O (Hydra) chip.
  */
-#include <stdarg.h>
 #include <linux/types.h>
 #include <linux/errno.h>
 #include <linux/kernel.h>
diff --git a/drivers/macintosh/via-cuda.c b/drivers/macintosh/via-cuda.c
index 3581abfb0c6a..cd267392289c 100644
--- a/drivers/macintosh/via-cuda.c
+++ b/drivers/macintosh/via-cuda.c
@@ -9,7 +9,7 @@
  *
  * Copyright (C) 1996 Paul Mackerras.
  */
-#include <stdarg.h>
+#include <linux/stdarg.h>
 #include <linux/types.h>
 #include <linux/errno.h>
 #include <linux/kernel.h>
diff --git a/drivers/macintosh/via-macii.c b/drivers/macintosh/via-macii.c
index 060e03f2264b..db9270da5b8e 100644
--- a/drivers/macintosh/via-macii.c
+++ b/drivers/macintosh/via-macii.c
@@ -23,8 +23,6 @@
  * Apple's "ADB Analyzer" bus sniffer is invaluable:
  *   ftp://ftp.apple.com/developer/Tool_Chest/Devices_-_Hardware/Apple_Desktop_Bus/
  */
-
-#include <stdarg.h>
 #include <linux/types.h>
 #include <linux/errno.h>
 #include <linux/kernel.h>
diff --git a/drivers/macintosh/via-pmu.c b/drivers/macintosh/via-pmu.c
index 4bdd4c45e7a7..4b98bc26a94b 100644
--- a/drivers/macintosh/via-pmu.c
+++ b/drivers/macintosh/via-pmu.c
@@ -18,7 +18,7 @@
  *    a sleep or a freq. switch
  *
  */
-#include <stdarg.h>
+#include <linux/stdarg.h>
 #include <linux/mutex.h>
 #include <linux/types.h>
 #include <linux/errno.h>
diff --git a/drivers/net/wireless/intersil/orinoco/hermes.c b/drivers/net/wireless/intersil/orinoco/hermes.c
index 6d4b7f64efcf..256946552742 100644
--- a/drivers/net/wireless/intersil/orinoco/hermes.c
+++ b/drivers/net/wireless/intersil/orinoco/hermes.c
@@ -79,7 +79,6 @@
 
 #undef HERMES_DEBUG
 #ifdef HERMES_DEBUG
-#include <stdarg.h>
 
 #define DEBUG(lvl, stuff...) if ((lvl) <= HERMES_DEBUG) DMSG(stuff)
 
diff --git a/drivers/net/wwan/iosm/iosm_ipc_imem.h b/drivers/net/wwan/iosm/iosm_ipc_imem.h
index 0d2f10e4cbc8..dc65b0712261 100644
--- a/drivers/net/wwan/iosm/iosm_ipc_imem.h
+++ b/drivers/net/wwan/iosm/iosm_ipc_imem.h
@@ -7,7 +7,6 @@
 #define IOSM_IPC_IMEM_H
 
 #include <linux/skbuff.h>
-#include <stdbool.h>
 
 #include "iosm_ipc_mmio.h"
 #include "iosm_ipc_pcie.h"
diff --git a/drivers/pinctrl/aspeed/pinmux-aspeed.h b/drivers/pinctrl/aspeed/pinmux-aspeed.h
index b69ba6b360a2..4d7548686f39 100644
--- a/drivers/pinctrl/aspeed/pinmux-aspeed.h
+++ b/drivers/pinctrl/aspeed/pinmux-aspeed.h
@@ -5,7 +5,6 @@
 #define ASPEED_PINMUX_H
 
 #include <linux/regmap.h>
-#include <stdbool.h>
 
 /*
  * The ASPEED SoCs provide typically more than 200 pins for GPIO and other
diff --git a/drivers/scsi/elx/efct/efct_driver.h b/drivers/scsi/elx/efct/efct_driver.h
index dab8eac4f243..0e3c931db7c2 100644
--- a/drivers/scsi/elx/efct/efct_driver.h
+++ b/drivers/scsi/elx/efct/efct_driver.h
@@ -10,7 +10,6 @@
 /***************************************************************************
  * OS specific includes
  */
-#include <stdarg.h>
 #include <linux/module.h>
 #include <linux/debugfs.h>
 #include <linux/firmware.h>
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/isp_local.h b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/isp_local.h
index eceeb5d160ad..4dbec4063b3d 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/isp_local.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/isp_local.h
@@ -16,8 +16,6 @@
 #ifndef __ISP_LOCAL_H_INCLUDED__
 #define __ISP_LOCAL_H_INCLUDED__
 
-#include <stdbool.h>
-
 #include "isp_global.h"
 
 #include <isp2400_support.h>
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/print_support.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/print_support.h
index 540b405cc0f7..a3c7f3de6d17 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/print_support.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_include/print_support.h
@@ -16,7 +16,7 @@
 #ifndef __PRINT_SUPPORT_H_INCLUDED__
 #define __PRINT_SUPPORT_H_INCLUDED__
 
-#include <stdarg.h>
+#include <linux/stdarg.h>
 
 extern int (*sh_css_printf)(const char *fmt, va_list args);
 /* depends on host supplied print function in ia_css_init() */
diff --git a/drivers/staging/media/atomisp/pci/ia_css_env.h b/drivers/staging/media/atomisp/pci/ia_css_env.h
index 6b38723b27cd..3b89bbd837a0 100644
--- a/drivers/staging/media/atomisp/pci/ia_css_env.h
+++ b/drivers/staging/media/atomisp/pci/ia_css_env.h
@@ -17,7 +17,7 @@
 #define __IA_CSS_ENV_H
 
 #include <type_support.h>
-#include <stdarg.h> /* va_list */
+#include <linux/stdarg.h> /* va_list */
 #include "ia_css_types.h"
 #include "ia_css_acc_types.h"
 
diff --git a/drivers/staging/media/atomisp/pci/runtime/debug/interface/ia_css_debug.h b/drivers/staging/media/atomisp/pci/runtime/debug/interface/ia_css_debug.h
index 5e6e7447ae00..e37ef4232c55 100644
--- a/drivers/staging/media/atomisp/pci/runtime/debug/interface/ia_css_debug.h
+++ b/drivers/staging/media/atomisp/pci/runtime/debug/interface/ia_css_debug.h
@@ -19,7 +19,7 @@
 /*! \file */
 
 #include <type_support.h>
-#include <stdarg.h>
+#include <linux/stdarg.h>
 #include "ia_css_types.h"
 #include "ia_css_binary.h"
 #include "ia_css_frame_public.h"
diff --git a/drivers/staging/media/atomisp/pci/sh_css_internal.h b/drivers/staging/media/atomisp/pci/sh_css_internal.h
index 3c669ec79b68..496faa7297a5 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_internal.h
+++ b/drivers/staging/media/atomisp/pci/sh_css_internal.h
@@ -20,7 +20,7 @@
 #include <math_support.h>
 #include <type_support.h>
 #include <platform_support.h>
-#include <stdarg.h>
+#include <linux/stdarg.h>
 
 #if !defined(ISP2401)
 #include "input_formatter.h"
diff --git a/drivers/xen/xen-scsiback.c b/drivers/xen/xen-scsiback.c
index 61ce0d142eea..0c5e565aa8cf 100644
--- a/drivers/xen/xen-scsiback.c
+++ b/drivers/xen/xen-scsiback.c
@@ -33,8 +33,6 @@
 
 #define pr_fmt(fmt) "xen-pvscsi: " fmt
 
-#include <stdarg.h>
-
 #include <linux/module.h>
 #include <linux/utsname.h>
 #include <linux/interrupt.h>
diff --git a/fs/befs/debug.c b/fs/befs/debug.c
index eb7bd6c692c7..02fa66fb82c2 100644
--- a/fs/befs/debug.c
+++ b/fs/befs/debug.c
@@ -14,7 +14,7 @@
 #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
 #ifdef __KERNEL__
 
-#include <stdarg.h>
+#include <linux/stdarg.h>
 #include <linux/string.h>
 #include <linux/spinlock.h>
 #include <linux/kernel.h>
diff --git a/fs/reiserfs/prints.c b/fs/reiserfs/prints.c
index 500f2000eb41..30319dc33c18 100644
--- a/fs/reiserfs/prints.c
+++ b/fs/reiserfs/prints.c
@@ -8,7 +8,7 @@
 #include <linux/string.h>
 #include <linux/buffer_head.h>
 
-#include <stdarg.h>
+#include <linux/stdarg.h>
 
 static char error_buf[1024];
 static char fmt_buf[1024];
diff --git a/fs/ufs/super.c b/fs/ufs/super.c
index 74028b5a7b0a..00a01471ea05 100644
--- a/fs/ufs/super.c
+++ b/fs/ufs/super.c
@@ -70,7 +70,7 @@
 #include <linux/module.h>
 #include <linux/bitops.h>
 
-#include <stdarg.h>
+#include <linux/stdarg.h>
 
 #include <linux/uaccess.h>
 
diff --git a/include/acpi/platform/acgcc.h b/include/acpi/platform/acgcc.h
index f6656be81760..fb172a03a753 100644
--- a/include/acpi/platform/acgcc.h
+++ b/include/acpi/platform/acgcc.h
@@ -22,7 +22,7 @@ typedef __builtin_va_list va_list;
 #define va_arg(v, l)            __builtin_va_arg(v, l)
 #define va_copy(d, s)           __builtin_va_copy(d, s)
 #else
-#include <stdarg.h>
+#include <linux/stdarg.h>
 #endif
 #endif
 
diff --git a/include/linux/filter.h b/include/linux/filter.h
index 472f97074da0..45785fc231a8 100644
--- a/include/linux/filter.h
+++ b/include/linux/filter.h
@@ -5,8 +5,6 @@
 #ifndef __LINUX_FILTER_H__
 #define __LINUX_FILTER_H__
 
-#include <stdarg.h>
-
 #include <linux/atomic.h>
 #include <linux/refcount.h>
 #include <linux/compat.h>
diff --git a/include/linux/kernel.h b/include/linux/kernel.h
index 1b2f0a7e00d6..2776423a587e 100644
--- a/include/linux/kernel.h
+++ b/include/linux/kernel.h
@@ -2,7 +2,7 @@
 #ifndef _LINUX_KERNEL_H
 #define _LINUX_KERNEL_H
 
-#include <stdarg.h>
+#include <linux/stdarg.h>
 #include <linux/align.h>
 #include <linux/limits.h>
 #include <linux/linkage.h>
diff --git a/include/linux/mISDNif.h b/include/linux/mISDNif.h
index a7330eb3ec64..7dd1f01ec4f9 100644
--- a/include/linux/mISDNif.h
+++ b/include/linux/mISDNif.h
@@ -18,7 +18,6 @@
 #ifndef mISDNIF_H
 #define mISDNIF_H
 
-#include <stdarg.h>
 #include <linux/types.h>
 #include <linux/errno.h>
 #include <linux/socket.h>
diff --git a/include/linux/printk.h b/include/linux/printk.h
index e834d78f0478..9f3f29ea348e 100644
--- a/include/linux/printk.h
+++ b/include/linux/printk.h
@@ -2,7 +2,7 @@
 #ifndef __KERNEL_PRINTK__
 #define __KERNEL_PRINTK__
 
-#include <stdarg.h>
+#include <linux/stdarg.h>
 #include <linux/init.h>
 #include <linux/kern_levels.h>
 #include <linux/linkage.h>
diff --git a/include/linux/stdarg.h b/include/linux/stdarg.h
new file mode 100644
index 000000000000..c8dc7f4f390c
--- /dev/null
+++ b/include/linux/stdarg.h
@@ -0,0 +1,11 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+#ifndef _LINUX_STDARG_H
+#define _LINUX_STDARG_H
+
+typedef __builtin_va_list va_list;
+#define va_start(v, l)	__builtin_va_start(v, l)
+#define va_end(v)	__builtin_va_end(v)
+#define va_arg(v, T)	__builtin_va_arg(v, T)
+#define va_copy(d, s)	__builtin_va_copy(d, s)
+
+#endif
diff --git a/include/linux/string.h b/include/linux/string.h
index b48d2d28e0b1..5e96d656be7a 100644
--- a/include/linux/string.h
+++ b/include/linux/string.h
@@ -6,7 +6,7 @@
 #include <linux/types.h>	/* for size_t */
 #include <linux/stddef.h>	/* for NULL */
 #include <linux/errno.h>	/* for E2BIG */
-#include <stdarg.h>
+#include <linux/stdarg.h>
 #include <uapi/linux/string.h>
 
 extern char *strndup_user(const char __user *, long);
diff --git a/kernel/debug/kdb/kdb_support.c b/kernel/debug/kdb/kdb_support.c
index 9f50d22d68e6..4f9950678e7b 100644
--- a/kernel/debug/kdb/kdb_support.c
+++ b/kernel/debug/kdb/kdb_support.c
@@ -10,7 +10,6 @@
  * 03/02/13    added new 2.5 kallsyms <xavier.bru@bull.net>
  */
 
-#include <stdarg.h>
 #include <linux/types.h>
 #include <linux/sched.h>
 #include <linux/mm.h>
diff --git a/lib/debug_info.c b/lib/debug_info.c
index 36daf753293c..cc4723c74af5 100644
--- a/lib/debug_info.c
+++ b/lib/debug_info.c
@@ -5,8 +5,6 @@
  * CONFIG_DEBUG_INFO_REDUCED. Please do not add actual code. However,
  * adding appropriate #includes is fine.
  */
-#include <stdarg.h>
-
 #include <linux/cred.h>
 #include <linux/crypto.h>
 #include <linux/dcache.h>
@@ -22,6 +20,7 @@
 #include <linux/net.h>
 #include <linux/sched.h>
 #include <linux/slab.h>
+#include <linux/stdarg.h>
 #include <linux/types.h>
 #include <net/addrconf.h>
 #include <net/sock.h>
diff --git a/lib/kasprintf.c b/lib/kasprintf.c
index bacf7b83ccf0..cd2f5974ed98 100644
--- a/lib/kasprintf.c
+++ b/lib/kasprintf.c
@@ -5,7 +5,7 @@
  *  Copyright (C) 1991, 1992  Linus Torvalds
  */
 
-#include <stdarg.h>
+#include <linux/stdarg.h>
 #include <linux/export.h>
 #include <linux/slab.h>
 #include <linux/types.h>
diff --git a/lib/kunit/string-stream.h b/lib/kunit/string-stream.h
index 5e94b623454f..43f9508a55b4 100644
--- a/lib/kunit/string-stream.h
+++ b/lib/kunit/string-stream.h
@@ -11,7 +11,7 @@
 
 #include <linux/spinlock.h>
 #include <linux/types.h>
-#include <stdarg.h>
+#include <linux/stdarg.h>
 
 struct string_stream_fragment {
 	struct kunit *test;
diff --git a/lib/vsprintf.c b/lib/vsprintf.c
index 26c83943748a..3bcb7be03f93 100644
--- a/lib/vsprintf.c
+++ b/lib/vsprintf.c
@@ -17,7 +17,7 @@
  * - scnprintf and vscnprintf
  */
 
-#include <stdarg.h>
+#include <linux/stdarg.h>
 #include <linux/build_bug.h>
 #include <linux/clk.h>
 #include <linux/clk-provider.h>
diff --git a/mm/kfence/report.c b/mm/kfence/report.c
index 2a319c21c939..4b891dd75650 100644
--- a/mm/kfence/report.c
+++ b/mm/kfence/report.c
@@ -5,7 +5,7 @@
  * Copyright (C) 2020, Google LLC.
  */
 
-#include <stdarg.h>
+#include <linux/stdarg.h>
 
 #include <linux/kernel.h>
 #include <linux/lockdep.h>
diff --git a/net/batman-adv/log.c b/net/batman-adv/log.c
index f0e5d1429662..7a93a1e94c40 100644
--- a/net/batman-adv/log.c
+++ b/net/batman-adv/log.c
@@ -7,7 +7,7 @@
 #include "log.h"
 #include "main.h"
 
-#include <stdarg.h>
+#include <linux/stdarg.h>
 
 #include "trace.h"
 
diff --git a/sound/aoa/codecs/onyx.h b/sound/aoa/codecs/onyx.h
index 8a32c3c3d716..6c31b7373b78 100644
--- a/sound/aoa/codecs/onyx.h
+++ b/sound/aoa/codecs/onyx.h
@@ -6,7 +6,6 @@
  */
 #ifndef __SND_AOA_CODEC_ONYX_H
 #define __SND_AOA_CODEC_ONYX_H
-#include <stddef.h>
 #include <linux/i2c.h>
 #include <asm/pmac_low_i2c.h>
 #include <asm/prom.h>
diff --git a/sound/aoa/codecs/tas.c b/sound/aoa/codecs/tas.c
index ac246dd3ab49..ab19a37e2a68 100644
--- a/sound/aoa/codecs/tas.c
+++ b/sound/aoa/codecs/tas.c
@@ -58,7 +58,6 @@
  *    and up to the hardware designer to not wire
  *    them up in some weird unusable way.
  */
-#include <stddef.h>
 #include <linux/i2c.h>
 #include <asm/pmac_low_i2c.h>
 #include <asm/prom.h>
diff --git a/sound/core/info.c b/sound/core/info.c
index 9fec3070f8ba..a451b24199c3 100644
--- a/sound/core/info.c
+++ b/sound/core/info.c
@@ -16,7 +16,6 @@
 #include <linux/utsname.h>
 #include <linux/proc_fs.h>
 #include <linux/mutex.h>
-#include <stdarg.h>
 
 int snd_info_check_reserved_words(const char *str)
 {
</cut>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/331762447.7463.1626505320908%40localhost.

------=_Part_7462_794608583.1626505320425--
