Return-Path: <clang-built-linux+bncBDM6PI5M4IFRB36DSH2AKGQEURZ2U7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x340.google.com (mail-wm1-x340.google.com [IPv6:2a00:1450:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 24F9219A8C5
	for <lists+clang-built-linux@lfdr.de>; Wed,  1 Apr 2020 11:42:08 +0200 (CEST)
Received: by mail-wm1-x340.google.com with SMTP id w8sf2225109wmk.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 01 Apr 2020 02:42:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585734127; cv=pass;
        d=google.com; s=arc-20160816;
        b=rK5fPlE4ZUzal01WSlYaeiDff+W0McYBrHDG8dcADfp598q28pb/UqWGsvC8evaf2/
         gYGQBSdR7k+vTOFn87zSYX0uiURKm0mZrKbtHInoCmiLr0DR/RpaqbgDmoBR4UjN5vrg
         EDws4s3rn+sM7ngYSxrAbQu2DJ731RNTP94jVBYpLCbOeLOpxDdIdkRCJxmjQXCmSI/8
         Akdm9sQt1+GDRgFpvEodbGx20slg8SH1ovIGpKcraENL0CWLH2ZOzMrwMDSGTc8NKwP3
         inygOsJnTfYMLhiju2i4+6O4inwMPCu9nMVBPS2tCGvPvoIY6rrMpEBhc/HxOEtUFGYp
         mWuA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=fcrzmSdCaFT2aD4ObPcmKihhw+WYJRtVgm1yitLlkwM=;
        b=a4S4GgwhF4j7Cp4+cHdzyMLOGbNPn4JBsEA+uJckFOIbN3iQF25zPuk+YElQemhIF8
         +IGVaMmeLo/2sHL7+7Y6sOfzlUh8IHbsWXUgbbWOk3e94/WiByPe7yXgfMkLMjbo9/Ae
         GDIkR93AMhKLPnsSS4JnVqevyPmQbavFsNomW7TmgntCccl/XptKl8t4ReOCU2jgMP3d
         QIAAOLlWmitdRnuxov4Tj0sdfLUoJf3IbjNK2lo/LDK8gP3FmTHZXosBpjXOxqK60pTr
         MLDzkwMV7nFKx+XYn4H/pBvzS9EMGqeu5aLklHwZWC6Yjjb19grDHBGdl6nyDfLSDt/f
         d7AQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=IoTjFaS7;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fcrzmSdCaFT2aD4ObPcmKihhw+WYJRtVgm1yitLlkwM=;
        b=lSI/2Wkprq3KAKpKAv3h2CzWb9TvlsS+DMbqqNx1DnTHyGWunZ7sjqvuC9JKCYFRas
         cEapeRzfin9KzJtsuMfzdE3oi7GWYSA6VlsMN+ZhPlWB/PulTX6fcKLqNdm1GUD7M/RE
         8S/vg3NX7eF4yTa87i98MeIjDL69q9y7aIJAqgvPEii1symyCUy4edfFtdcoF+HlppBz
         0DV8/tmQe2DbEq6kr3BuVq71LAORGZBgyADH83P1Y1bSRrdAf2r4cM/GHhElFm/u7J2J
         hzhjbBB8UkReR6SZdmtppjtZLzFzE2PTLC+Bv47zxSNYlRe1IKrOv6iF+kq54uWUzhGu
         mPmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fcrzmSdCaFT2aD4ObPcmKihhw+WYJRtVgm1yitLlkwM=;
        b=gMJdS7pU1E8JGcB5BQlMnCbePOeDtkzoA/2sqFZ55tBtI3ZyDItvH5wkuh2bQJ+jOu
         WFN2lxGhOQ7vtJLfn9wOedzaiL/FcBABYkwYch+hHy2vTVk4wQY1Q51RRXO5nr9Jvo89
         zMa4tJtTe9V2I22Z+1D/WrZxDH9KC0n0ipBSd84mFM6ACIClYMqNEMqSQ//cPeeSqfSV
         bOUiAKSXAA7hqdae8hWdm2NwsCyHj4Nt1jWr6i8bZqP/GrOZWQdi32r7Kqd7GP6QLae5
         6MiapUBws2PPXFfm+ifaXt+KSu/X4VMeEVBZt+8Wr3PoCtCEFkpQbbvaY3a3xv//o1B7
         QNbw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubI3F2w/ybLgcicLLvTwIM7W+jzgZa7DUjt/PhKfyuikcWnRf4V
	97O/B993s/p+wq4CIy9R6qo=
X-Google-Smtp-Source: APiQypL1vfiUbGjQTVn6geLzM20nP+aVzY5yuM54TU5acRf6h3663gKhZoJaM/n0cs8NJYidMxmbow==
X-Received: by 2002:a1c:ac8a:: with SMTP id v132mr3297136wme.62.1585734127645;
        Wed, 01 Apr 2020 02:42:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4690:: with SMTP id u16ls2906809wrq.11.gmail; Wed, 01
 Apr 2020 02:42:07 -0700 (PDT)
X-Received: by 2002:adf:8364:: with SMTP id 91mr26503429wrd.251.1585734126960;
        Wed, 01 Apr 2020 02:42:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585734126; cv=none;
        d=google.com; s=arc-20160816;
        b=nblt9y94bR2ZWNdi8EXB2LY1c0elRnmxjVAUMX2/Q609wDyXCn7v0V9VNQx5qfWDei
         6Wr7PHUJ/HkYcP83GRyXi/cH6BpMdy+S5eGN4N4hiVPx8crf7RlsIyGv+j629kOr0O2c
         b/LaxFWSzgOR1n3LU/ZqmQ3ak3ETyEyavtJKDLtFM6sXPGOHW8e2UZSi8NFzl/JyojdI
         dQiIHQoKc7q6Qg/MYJlAWEDOwX/hgKdRFAkrX/AZm3ajc5wVPy1EK1D/TP3583iaG3iF
         7MJ3qJZOZqrPOnkiHAJXc8p32NwNQSOjPeFwWQhJe/3JZ97Dn3sj9vNilgrhUTibAVae
         9B5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=Wb1ZGbK+uKvQrdvYdSmwN8QS4cDI+DWpCp5kyJe1byM=;
        b=kcpWMDJx/CYcj/OrG9cSmvCqQOJsPcSl6t0Be4S4OjWAxOQmT8+43BCRtB0U9T1yNS
         EvUBbkQMRN2kjyWZCE8jRvUXuZyuSX3QJIThG2WIkpTJECTymOIczLPALEcYfVkSMtcW
         VFockpyS/2r98OxYkpUuxXF4XNu5SuecR/uI02tcDFH61/55F1MoZHtVo7yaf+Wqg0Vx
         StTZ2/BjD3xp/smr3dt5N+mB9VfdpJNbYo8JhIMpBPpQoMEcpXUdUql9ylr39d70dys0
         ucI+KYlUpNyDpjgDrV31w1XUYuLLc4d4/mc3acZn9ZxfbQiXtv8YIL+g+nd1bkamLpfk
         l5Kg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=IoTjFaS7;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id f3si355990wmc.2.2020.04.01.02.42.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Apr 2020 02:42:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id d202so2387131wmd.1
        for <clang-built-linux@googlegroups.com>; Wed, 01 Apr 2020 02:42:06 -0700 (PDT)
X-Received: by 2002:a05:600c:21ce:: with SMTP id x14mr1418514wmj.47.1585734125944;
        Wed, 01 Apr 2020 02:42:05 -0700 (PDT)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id 5sm2378476wrs.20.2020.04.01.02.42.04
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 01 Apr 2020 02:42:05 -0700 (PDT)
From: ci_notify@linaro.org
Date: Wed, 1 Apr 2020 09:42:04 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <1317317694.13612.1585734125143.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-arm-mainline-allyesconfig - Build # 31 -
 Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_13611_410959888.1585734124457"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-arm-mainline-allyesconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=IoTjFaS7;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::342
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

------=_Part_13611_410959888.1585734124457
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-master-arm-mainline-allyesconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/llvm-master-arm-mainline-allyesconfig

Culprit:
<cut>
commit caa6772db4c1deb5d9add48e95d6eab50699ee5e
Author: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date:   Mon Feb 10 15:14:17 2020 -0800

    Staging: remove wusbcore and UWB from the kernel tree.
    
    It's been over 6 months, and no one has noticed that these drivers are
    deleted, probably because no one actually has this hardware.  As no one
    has volunteered to maintain the code, let's drop it for good.
    
    Link: https://lore.kernel.org/r/20200210231417.GA1736729@kroah.com
    Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
</cut>

Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git"
rr[linux_branch]="c3709b3285009e0c1448510b9460e96146cd5c9a"

Results regressed to (for first_bad == caa6772db4c1deb5d9add48e95d6eab50699ee5e)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
18402
# First few build errors in logs:
# 00:04:50 make: *** [vmlinux] Error 1
# 00:00:00 +++ grep ' error:\|^ERROR:\|: undefined reference\|\] Error '

from (for last_good == 4fb8b5aa2a1126783ae00bae544d6f3c519408ef)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
18457

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/31/artifact/artifacts/build-caa6772db4c1deb5d9add48e95d6eab50699ee5e/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/31/artifact/artifacts/build-4fb8b5aa2a1126783ae00bae544d6f3c519408ef/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/31/

Reproduce builds:
<cut>
mkdir investigate-linux-caa6772db4c1deb5d9add48e95d6eab50699ee5e
cd investigate-linux-caa6772db4c1deb5d9add48e95d6eab50699ee5e

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/31/artifact/artifacts/manifests/build-baseline.sh --fail
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/31/artifact/artifacts/manifests/build-parameters.sh --fail
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/31/artifact/artifacts/test.sh --fail
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh

cd linux

# Reproduce first_bad build
git checkout --detach caa6772db4c1deb5d9add48e95d6eab50699ee5e
../artifacts/test.sh

# Reproduce last_good build
git checkout --detach 4fb8b5aa2a1126783ae00bae544d6f3c519408ef
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-arm-mainline-allyesconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/31/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/31/consoleText

Full commit:
<cut>
commit caa6772db4c1deb5d9add48e95d6eab50699ee5e
Author: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date:   Mon Feb 10 15:14:17 2020 -0800

    Staging: remove wusbcore and UWB from the kernel tree.
    
    It's been over 6 months, and no one has noticed that these drivers are
    deleted, probably because no one actually has this hardware.  As no one
    has volunteered to maintain the code, let's drop it for good.
    
    Link: https://lore.kernel.org/r/20200210231417.GA1736729@kroah.com
    Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 MAINTAINERS                                        |   10 -
 drivers/staging/Kconfig                            |    3 -
 drivers/staging/Makefile                           |    2 -
 drivers/staging/uwb/Kconfig                        |   72 -
 drivers/staging/uwb/Makefile                       |   32 -
 drivers/staging/uwb/TODO                           |    8 -
 drivers/staging/uwb/address.c                      |  352 ---
 drivers/staging/uwb/allocator.c                    |  374 ---
 drivers/staging/uwb/beacon.c                       |  595 ----
 drivers/staging/uwb/driver.c                       |  143 -
 drivers/staging/uwb/drp-avail.c                    |  278 --
 drivers/staging/uwb/drp-ie.c                       |  305 --
 drivers/staging/uwb/drp.c                          |  842 ------
 drivers/staging/uwb/est.c                          |  450 ---
 drivers/staging/uwb/hwa-rc.c                       |  929 -------
 drivers/staging/uwb/i1480/Makefile                 |    2 -
 drivers/staging/uwb/i1480/dfu/Makefile             |   10 -
 drivers/staging/uwb/i1480/dfu/dfu.c                |  198 --
 drivers/staging/uwb/i1480/dfu/i1480-dfu.h          |  246 --
 drivers/staging/uwb/i1480/dfu/mac.c                |  496 ----
 drivers/staging/uwb/i1480/dfu/phy.c                |  190 --
 drivers/staging/uwb/i1480/dfu/usb.c                |  448 ---
 drivers/staging/uwb/i1480/i1480-est.c              |   85 -
 drivers/staging/uwb/ie-rcv.c                       |   42 -
 drivers/staging/uwb/ie.c                           |  366 ---
 drivers/staging/uwb/include/debug-cmd.h            |   57 -
 drivers/staging/uwb/include/spec.h                 |  767 -----
 drivers/staging/uwb/include/umc.h                  |  192 --
 drivers/staging/uwb/include/whci.h                 |  102 -
 drivers/staging/uwb/lc-dev.c                       |  457 ---
 drivers/staging/uwb/lc-rc.c                        |  569 ----
 drivers/staging/uwb/neh.c                          |  606 ----
 drivers/staging/uwb/pal.c                          |  128 -
 drivers/staging/uwb/radio.c                        |  196 --
 drivers/staging/uwb/reset.c                        |  379 ---
 drivers/staging/uwb/rsv.c                          | 1000 -------
 drivers/staging/uwb/scan.c                         |  120 -
 drivers/staging/uwb/umc-bus.c                      |  211 --
 drivers/staging/uwb/umc-dev.c                      |   94 -
 drivers/staging/uwb/umc-drv.c                      |   31 -
 drivers/staging/uwb/uwb-debug.c                    |  354 ---
 drivers/staging/uwb/uwb-internal.h                 |  366 ---
 drivers/staging/uwb/uwb.h                          |  817 ------
 drivers/staging/uwb/uwbd.c                         |  356 ---
 drivers/staging/uwb/whc-rc.c                       |  467 ----
 drivers/staging/uwb/whci.c                         |  257 --
 drivers/staging/wusbcore/Documentation/wusb-cbaf   |  130 -
 .../Documentation/wusb-design-overview.rst         |  457 ---
 drivers/staging/wusbcore/Kconfig                   |   39 -
 drivers/staging/wusbcore/Makefile                  |   28 -
 drivers/staging/wusbcore/TODO                      |    8 -
 drivers/staging/wusbcore/cbaf.c                    |  645 -----
 drivers/staging/wusbcore/crypto.c                  |  441 ---
 drivers/staging/wusbcore/dev-sysfs.c               |  124 -
 drivers/staging/wusbcore/devconnect.c              | 1085 --------
 drivers/staging/wusbcore/host/Kconfig              |   28 -
 drivers/staging/wusbcore/host/Makefile             |    3 -
 drivers/staging/wusbcore/host/hwa-hc.c             |  875 ------
 drivers/staging/wusbcore/host/whci/Makefile        |   14 -
 drivers/staging/wusbcore/host/whci/asl.c           |  376 ---
 drivers/staging/wusbcore/host/whci/debug.c         |  153 -
 drivers/staging/wusbcore/host/whci/hcd.c           |  356 ---
 drivers/staging/wusbcore/host/whci/hw.c            |   93 -
 drivers/staging/wusbcore/host/whci/init.c          |  177 --
 drivers/staging/wusbcore/host/whci/int.c           |   82 -
 drivers/staging/wusbcore/host/whci/pzl.c           |  404 ---
 drivers/staging/wusbcore/host/whci/qset.c          |  831 ------
 drivers/staging/wusbcore/host/whci/whcd.h          |  202 --
 drivers/staging/wusbcore/host/whci/whci-hc.h       |  401 ---
 drivers/staging/wusbcore/host/whci/wusb.c          |  210 --
 drivers/staging/wusbcore/include/association.h     |  151 -
 drivers/staging/wusbcore/include/wusb-wa.h         |  304 --
 drivers/staging/wusbcore/include/wusb.h            |  362 ---
 drivers/staging/wusbcore/mmc.c                     |  303 --
 drivers/staging/wusbcore/pal.c                     |   45 -
 drivers/staging/wusbcore/reservation.c             |  110 -
 drivers/staging/wusbcore/rh.c                      |  426 ---
 drivers/staging/wusbcore/security.c                |  599 ----
 drivers/staging/wusbcore/wa-hc.c                   |   88 -
 drivers/staging/wusbcore/wa-hc.h                   |  467 ----
 drivers/staging/wusbcore/wa-nep.c                  |  289 --
 drivers/staging/wusbcore/wa-rpipe.c                |  539 ----
 drivers/staging/wusbcore/wa-xfer.c                 | 2927 --------------------
 drivers/staging/wusbcore/wusbhc.c                  |  490 ----
 drivers/staging/wusbcore/wusbhc.h                  |  487 ----
 85 files changed, 28753 deletions(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 38fe2f3f7b6f..9a4c715d1e50 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -3919,11 +3919,6 @@ F:	certs/
 F:	scripts/sign-file.c
 F:	scripts/extract-cert.c
 
-CERTIFIED WIRELESS USB (WUSB) SUBSYSTEM:
-L:	devel@driverdev.osuosl.org
-S:	Obsolete
-F:	drivers/staging/wusbcore/
-
 CFAG12864B LCD DRIVER
 M:	Miguel Ojeda Sandonis <miguel.ojeda.sandonis@gmail.com>
 S:	Maintained
@@ -17094,11 +17089,6 @@ S:	Maintained
 F:	drivers/usb/common/ulpi.c
 F:	include/linux/ulpi/
 
-ULTRA-WIDEBAND (UWB) SUBSYSTEM:
-L:	devel@driverdev.osuosl.org
-S:	Obsolete
-F:	drivers/staging/uwb/
-
 UNICODE SUBSYSTEM:
 M:	Gabriel Krisman Bertazi <krisman@collabora.com>
 L:	linux-fsdevel@vger.kernel.org
diff --git a/drivers/staging/Kconfig b/drivers/staging/Kconfig
index baccd7c883cc..0f82e23e151b 100644
--- a/drivers/staging/Kconfig
+++ b/drivers/staging/Kconfig
@@ -112,9 +112,6 @@ source "drivers/staging/fieldbus/Kconfig"
 
 source "drivers/staging/kpc2000/Kconfig"
 
-source "drivers/staging/wusbcore/Kconfig"
-source "drivers/staging/uwb/Kconfig"
-
 source "drivers/staging/exfat/Kconfig"
 
 source "drivers/staging/qlge/Kconfig"
diff --git a/drivers/staging/Makefile b/drivers/staging/Makefile
index fdd03fd6e704..49b21951b6f2 100644
--- a/drivers/staging/Makefile
+++ b/drivers/staging/Makefile
@@ -46,8 +46,6 @@ obj-$(CONFIG_STAGING_GASKET_FRAMEWORK)	+= gasket/
 obj-$(CONFIG_XIL_AXIS_FIFO)	+= axis-fifo/
 obj-$(CONFIG_FIELDBUS_DEV)     += fieldbus/
 obj-$(CONFIG_KPC2000)		+= kpc2000/
-obj-$(CONFIG_UWB)		+= uwb/
-obj-$(CONFIG_USB_WUSB)		+= wusbcore/
 obj-$(CONFIG_STAGING_EXFAT_FS)	+= exfat/
 obj-$(CONFIG_QLGE)		+= qlge/
 obj-$(CONFIG_NET_VENDOR_HP)	+= hp/
diff --git a/drivers/staging/uwb/Kconfig b/drivers/staging/uwb/Kconfig
deleted file mode 100644
index 259e053e1e09..000000000000
--- a/drivers/staging/uwb/Kconfig
+++ /dev/null
@@ -1,72 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-#
-# UWB device configuration
-#
-
-menuconfig UWB
-	tristate "Ultra Wideband devices"
-	default n
-	select GENERIC_NET_UTILS
-	help
-	  UWB is a high-bandwidth, low-power, point-to-point radio
-	  technology using a wide spectrum (3.1-10.6GHz). It is
-	  optimized for in-room use (480Mbps at 2 meters, 110Mbps at
-	  10m). It serves as the transport layer for other protocols,
-	  such as Wireless USB (WUSB).
-
-	  The topology is peer to peer; however, higher level
-	  protocols (such as WUSB) might impose a master/slave
-	  relationship.
-
-	  Say Y here if your computer has UWB radio controllers (USB or PCI)
-	  based. You will need to enable the radio controllers
-	  below.  It is ok to select all of them, no harm done.
-
-	  For more help check the UWB and WUSB related files in
-	  <file:Documentation/usb/>.
-
-	  To compile the UWB stack as a module, choose M here.
-
-if UWB
-
-config UWB_HWA
-	tristate "UWB Radio Control driver for WUSB-compliant USB dongles (HWA)"
-	depends on USB
-	help
-	  This driver enables the radio controller for HWA USB
-	  devices. HWA stands for Host Wire Adapter, and it is a UWB
-	  Radio Controller connected to your system via USB. Most of
-	  them come with a Wireless USB host controller also.
-
-	  To compile this driver select Y (built in) or M (module). It
-	  is safe to select any even if you do not have the hardware.
-
-config UWB_WHCI
-        tristate "UWB Radio Control driver for WHCI-compliant cards"
-        depends on PCI
-        help
-          This driver enables the radio controller for WHCI cards.
-
-          WHCI is a specification developed by Intel
-          (http://www.intel.com/technology/comms/wusb/whci.htm) much
-          in the spirit of USB's EHCI, but for UWB and Wireless USB
-          radio/host controllers connected via memory mapping (eg:
-          PCI). Most of these cards come also with a Wireless USB host
-          controller.
-
-          To compile this driver select Y (built in) or M (module). It
-          is safe to select any even if you do not have the hardware.
-
-config UWB_I1480U
-        tristate "Support for Intel Wireless UWB Link 1480 HWA"
-        depends on UWB_HWA
-        select FW_LOADER
-        help
-         This driver enables support for the i1480 when connected via
-         USB. It consists of a firmware uploader that will enable it
-         to behave as an HWA device.
-
-         To compile this driver select Y (built in) or M (module). It
-         is safe to select any even if you do not have the hardware.
-
-endif # UWB
diff --git a/drivers/staging/uwb/Makefile b/drivers/staging/uwb/Makefile
deleted file mode 100644
index 32f4de7afbd6..000000000000
--- a/drivers/staging/uwb/Makefile
+++ /dev/null
@@ -1,32 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0
-obj-$(CONFIG_UWB)		+= uwb.o
-obj-$(CONFIG_UWB_WHCI)		+= umc.o whci.o whc-rc.o
-obj-$(CONFIG_UWB_HWA)		+= hwa-rc.o
-obj-$(CONFIG_UWB_I1480U)	+= i1480/
-
-uwb-objs :=		\
-	address.o	\
-	allocator.o	\
-	beacon.o	\
-	driver.o	\
-	drp.o		\
-	drp-avail.o	\
-	drp-ie.o	\
-	est.o		\
-	ie.o		\
-	ie-rcv.o	\
-	lc-dev.o	\
-	lc-rc.o		\
-	neh.o		\
-	pal.o		\
-	radio.o		\
-	reset.o		\
-	rsv.o		\
-	scan.o		\
-	uwb-debug.o	\
-	uwbd.o
-
-umc-objs :=		\
-	umc-bus.o	\
-	umc-dev.o	\
-	umc-drv.o
diff --git a/drivers/staging/uwb/TODO b/drivers/staging/uwb/TODO
deleted file mode 100644
index abae57000534..000000000000
--- a/drivers/staging/uwb/TODO
+++ /dev/null
@@ -1,8 +0,0 @@
-TODO: Remove in late 2019 unless there are users
-
-There seems to not be any real wireless USB devices anywhere in the wild
-anymore.  It turned out to be a failed technology :(
-
-This will be removed from the tree if no one objects.
-
-Greg Kroah-Hartman <gregkh@linuxfoundation.org>
diff --git a/drivers/staging/uwb/address.c b/drivers/staging/uwb/address.c
deleted file mode 100644
index 857d5cd56a95..000000000000
--- a/drivers/staging/uwb/address.c
+++ /dev/null
@@ -1,352 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * Ultra Wide Band
- * Address management
- *
- * Copyright (C) 2005-2006 Intel Corporation
- * Inaky Perez-Gonzalez <inaky.perez-gonzalez@intel.com>
- *
- * FIXME: docs
- */
-
-#include <linux/slab.h>
-#include <linux/errno.h>
-#include <linux/module.h>
-#include <linux/device.h>
-#include <linux/random.h>
-#include <linux/etherdevice.h>
-
-#include "uwb-internal.h"
-
-
-/** Device Address Management command */
-struct uwb_rc_cmd_dev_addr_mgmt {
-	struct uwb_rccb rccb;
-	u8 bmOperationType;
-	u8 baAddr[6];
-} __attribute__((packed));
-
-
-/**
- * Low level command for setting/getting UWB radio's addresses
- *
- * @hwarc:	HWA Radio Control interface instance
- * @bmOperationType:
- * 		Set/get, MAC/DEV (see WUSB1.0[8.6.2.2])
- * @baAddr:	address buffer--assumed to have enough data to hold
- *              the address type requested.
- * @reply:	Pointer to reply buffer (can be stack allocated)
- * @returns:	0 if ok, < 0 errno code on error.
- *
- * @cmd has to be allocated because USB cannot grok USB or vmalloc
- * buffers depending on your combination of host architecture.
- */
-static
-int uwb_rc_dev_addr_mgmt(struct uwb_rc *rc,
-			 u8 bmOperationType, const u8 *baAddr,
-			 struct uwb_rc_evt_dev_addr_mgmt *reply)
-{
-	int result;
-	struct uwb_rc_cmd_dev_addr_mgmt *cmd;
-
-	result = -ENOMEM;
-	cmd = kzalloc(sizeof(*cmd), GFP_KERNEL);
-	if (cmd == NULL)
-		goto error_kzalloc;
-	cmd->rccb.bCommandType = UWB_RC_CET_GENERAL;
-	cmd->rccb.wCommand = cpu_to_le16(UWB_RC_CMD_DEV_ADDR_MGMT);
-	cmd->bmOperationType = bmOperationType;
-	if (baAddr) {
-		size_t size = 0;
-		switch (bmOperationType >> 1) {
-		case 0:	size = 2; break;
-		case 1:	size = 6; break;
-		default: BUG();
-		}
-		memcpy(cmd->baAddr, baAddr, size);
-	}
-	reply->rceb.bEventType = UWB_RC_CET_GENERAL;
-	reply->rceb.wEvent = UWB_RC_CMD_DEV_ADDR_MGMT;
-	result = uwb_rc_cmd(rc, "DEV-ADDR-MGMT",
-			    &cmd->rccb, sizeof(*cmd),
-			    &reply->rceb, sizeof(*reply));
-	if (result < 0)
-		goto error_cmd;
-	if (result < sizeof(*reply)) {
-		dev_err(&rc->uwb_dev.dev,
-			"DEV-ADDR-MGMT: not enough data replied: "
-			"%d vs %zu bytes needed\n", result, sizeof(*reply));
-		result = -ENOMSG;
-	} else if (reply->bResultCode != UWB_RC_RES_SUCCESS) {
-		dev_err(&rc->uwb_dev.dev,
-			"DEV-ADDR-MGMT: command execution failed: %s (%d)\n",
-			uwb_rc_strerror(reply->bResultCode),
-			reply->bResultCode);
-		result = -EIO;
-	} else
-		result = 0;
-error_cmd:
-	kfree(cmd);
-error_kzalloc:
-	return result;
-}
-
-
-/**
- * Set the UWB RC MAC or device address.
- *
- * @rc:      UWB Radio Controller
- * @_addr:   Pointer to address to write [assumed to be either a
- *           'struct uwb_mac_addr *' or a 'struct uwb_dev_addr *'].
- * @type:    Type of address to set (UWB_ADDR_DEV or UWB_ADDR_MAC).
- * @returns: 0 if ok, < 0 errno code on error.
- *
- * Some anal retentivity here: even if both 'struct
- * uwb_{dev,mac}_addr' have the actual byte array in the same offset
- * and I could just pass _addr to hwarc_cmd_dev_addr_mgmt(), I prefer
- * to use some syntatic sugar in case someday we decide to change the
- * format of the structs. The compiler will optimize it out anyway.
- */
-static int uwb_rc_addr_set(struct uwb_rc *rc,
-		    const void *_addr, enum uwb_addr_type type)
-{
-	int result;
-	u8 bmOperationType = 0x1; 		/* Set address */
-	const struct uwb_dev_addr *dev_addr = _addr;
-	const struct uwb_mac_addr *mac_addr = _addr;
-	struct uwb_rc_evt_dev_addr_mgmt reply;
-	const u8 *baAddr;
-
-	result = -EINVAL;
-	switch (type) {
-	case UWB_ADDR_DEV:
-		baAddr = dev_addr->data;
-		break;
-	case UWB_ADDR_MAC:
-		baAddr = mac_addr->data;
-		bmOperationType |= 0x2;
-		break;
-	default:
-		return result;
-	}
-	return uwb_rc_dev_addr_mgmt(rc, bmOperationType, baAddr, &reply);
-}
-
-
-/**
- * Get the UWB radio's MAC or device address.
- *
- * @rc:      UWB Radio Controller
- * @_addr:   Where to write the address data [assumed to be either a
- *           'struct uwb_mac_addr *' or a 'struct uwb_dev_addr *'].
- * @type:    Type of address to get (UWB_ADDR_DEV or UWB_ADDR_MAC).
- * @returns: 0 if ok (and *_addr set), < 0 errno code on error.
- *
- * See comment in uwb_rc_addr_set() about anal retentivity in the
- * type handling of the address variables.
- */
-static int uwb_rc_addr_get(struct uwb_rc *rc,
-		    void *_addr, enum uwb_addr_type type)
-{
-	int result;
-	u8 bmOperationType = 0x0; 		/* Get address */
-	struct uwb_rc_evt_dev_addr_mgmt evt;
-	struct uwb_dev_addr *dev_addr = _addr;
-	struct uwb_mac_addr *mac_addr = _addr;
-	u8 *baAddr;
-
-	result = -EINVAL;
-	switch (type) {
-	case UWB_ADDR_DEV:
-		baAddr = dev_addr->data;
-		break;
-	case UWB_ADDR_MAC:
-		bmOperationType |= 0x2;
-		baAddr = mac_addr->data;
-		break;
-	default:
-		return result;
-	}
-	result = uwb_rc_dev_addr_mgmt(rc, bmOperationType, baAddr, &evt);
-	if (result == 0)
-		switch (type) {
-		case UWB_ADDR_DEV:
-			memcpy(&dev_addr->data, evt.baAddr,
-			       sizeof(dev_addr->data));
-			break;
-		case UWB_ADDR_MAC:
-			memcpy(&mac_addr->data, evt.baAddr,
-			       sizeof(mac_addr->data));
-			break;
-		default:		/* shut gcc up */
-			BUG();
-		}
-	return result;
-}
-
-
-/** Get @rc's MAC address to @addr */
-int uwb_rc_mac_addr_get(struct uwb_rc *rc,
-			struct uwb_mac_addr *addr) {
-	return uwb_rc_addr_get(rc, addr, UWB_ADDR_MAC);
-}
-EXPORT_SYMBOL_GPL(uwb_rc_mac_addr_get);
-
-
-/** Get @rc's device address to @addr */
-int uwb_rc_dev_addr_get(struct uwb_rc *rc,
-			struct uwb_dev_addr *addr) {
-	return uwb_rc_addr_get(rc, addr, UWB_ADDR_DEV);
-}
-EXPORT_SYMBOL_GPL(uwb_rc_dev_addr_get);
-
-
-/** Set @rc's address to @addr */
-int uwb_rc_mac_addr_set(struct uwb_rc *rc,
-			const struct uwb_mac_addr *addr)
-{
-	int result = -EINVAL;
-	mutex_lock(&rc->uwb_dev.mutex);
-	result = uwb_rc_addr_set(rc, addr, UWB_ADDR_MAC);
-	mutex_unlock(&rc->uwb_dev.mutex);
-	return result;
-}
-
-
-/** Set @rc's address to @addr */
-int uwb_rc_dev_addr_set(struct uwb_rc *rc,
-			const struct uwb_dev_addr *addr)
-{
-	int result = -EINVAL;
-	mutex_lock(&rc->uwb_dev.mutex);
-	result = uwb_rc_addr_set(rc, addr, UWB_ADDR_DEV);
-	rc->uwb_dev.dev_addr = *addr;
-	mutex_unlock(&rc->uwb_dev.mutex);
-	return result;
-}
-
-/* Returns !0 if given address is already assigned to device. */
-int __uwb_mac_addr_assigned_check(struct device *dev, void *_addr)
-{
-	struct uwb_dev *uwb_dev = to_uwb_dev(dev);
-	struct uwb_mac_addr *addr = _addr;
-
-	if (!uwb_mac_addr_cmp(addr, &uwb_dev->mac_addr))
-		return !0;
-	return 0;
-}
-
-/* Returns !0 if given address is already assigned to device. */
-int __uwb_dev_addr_assigned_check(struct device *dev, void *_addr)
-{
-	struct uwb_dev *uwb_dev = to_uwb_dev(dev);
-	struct uwb_dev_addr *addr = _addr;
-	if (!uwb_dev_addr_cmp(addr, &uwb_dev->dev_addr))
-		return !0;
-	return 0;
-}
-
-/**
- * uwb_dev_addr_assign - assigned a generated DevAddr to a radio controller
- * @rc:      the (local) radio controller device requiring a new DevAddr
- *
- * A new DevAddr is required when:
- *    - first setting up a radio controller
- *    - if the hardware reports a DevAddr conflict
- *
- * The DevAddr is randomly generated in the generated DevAddr range
- * [0x100, 0xfeff]. The number of devices in a beacon group is limited
- * by mMaxBPLength (96) so this address space will never be exhausted.
- *
- * [ECMA-368] 17.1.1, 17.16.
- */
-int uwb_rc_dev_addr_assign(struct uwb_rc *rc)
-{
-	struct uwb_dev_addr new_addr;
-
-	do {
-		get_random_bytes(new_addr.data, sizeof(new_addr.data));
-	} while (new_addr.data[0] == 0x00 || new_addr.data[0] == 0xff
-		 || __uwb_dev_addr_assigned(rc, &new_addr));
-
-	return uwb_rc_dev_addr_set(rc, &new_addr);
-}
-
-/**
- * uwbd_evt_handle_rc_dev_addr_conflict - handle a DEV_ADDR_CONFLICT event
- * @evt: the DEV_ADDR_CONFLICT notification from the radio controller
- *
- * A new (non-conflicting) DevAddr is assigned to the radio controller.
- *
- * [ECMA-368] 17.1.1.1.
- */
-int uwbd_evt_handle_rc_dev_addr_conflict(struct uwb_event *evt)
-{
-	struct uwb_rc *rc = evt->rc;
-
-	return uwb_rc_dev_addr_assign(rc);
-}
-
-/*
- * Print the 48-bit EUI MAC address of the radio controller when
- * reading /sys/class/uwb_rc/XX/mac_address
- */
-static ssize_t uwb_rc_mac_addr_show(struct device *dev,
-				    struct device_attribute *attr, char *buf)
-{
-	struct uwb_dev *uwb_dev = to_uwb_dev(dev);
-	struct uwb_rc *rc = uwb_dev->rc;
-	struct uwb_mac_addr addr;
-	ssize_t result;
-
-	mutex_lock(&rc->uwb_dev.mutex);
-	result = uwb_rc_addr_get(rc, &addr, UWB_ADDR_MAC);
-	mutex_unlock(&rc->uwb_dev.mutex);
-	if (result >= 0) {
-		result = uwb_mac_addr_print(buf, UWB_ADDR_STRSIZE, &addr);
-		buf[result++] = '\n';
-	}
-	return result;
-}
-
-/*
- * Parse a 48 bit address written to /sys/class/uwb_rc/XX/mac_address
- * and if correct, set it.
- */
-static ssize_t uwb_rc_mac_addr_store(struct device *dev,
-				     struct device_attribute *attr,
-				     const char *buf, size_t size)
-{
-	struct uwb_dev *uwb_dev = to_uwb_dev(dev);
-	struct uwb_rc *rc = uwb_dev->rc;
-	struct uwb_mac_addr addr;
-	ssize_t result;
-
-	if (!mac_pton(buf, addr.data))
-		return -EINVAL;
-	if (is_multicast_ether_addr(addr.data)) {
-		dev_err(&rc->uwb_dev.dev, "refusing to set multicast "
-			"MAC address %s\n", buf);
-		return -EINVAL;
-	}
-	result = uwb_rc_mac_addr_set(rc, &addr);
-	if (result == 0)
-		rc->uwb_dev.mac_addr = addr;
-
-	return result < 0 ? result : size;
-}
-DEVICE_ATTR(mac_address, S_IRUGO | S_IWUSR, uwb_rc_mac_addr_show, uwb_rc_mac_addr_store);
-
-/** Print @addr to @buf, @return bytes written */
-size_t __uwb_addr_print(char *buf, size_t buf_size, const unsigned char *addr,
-			int type)
-{
-	size_t result;
-	if (type)
-		result = scnprintf(buf, buf_size, "%pM", addr);
-	else
-		result = scnprintf(buf, buf_size, "%02x:%02x",
-				  addr[1], addr[0]);
-	return result;
-}
-EXPORT_SYMBOL_GPL(__uwb_addr_print);
diff --git a/drivers/staging/uwb/allocator.c b/drivers/staging/uwb/allocator.c
deleted file mode 100644
index 1f429fba20b7..000000000000
--- a/drivers/staging/uwb/allocator.c
+++ /dev/null
@@ -1,374 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * UWB reservation management.
- *
- * Copyright (C) 2008 Cambridge Silicon Radio Ltd.
- */
-#include <linux/kernel.h>
-#include <linux/slab.h>
-#include "uwb.h"
-
-#include "uwb-internal.h"
-
-static void uwb_rsv_fill_column_alloc(struct uwb_rsv_alloc_info *ai)
-{
-	int col, mas, safe_mas, unsafe_mas;
-	unsigned char *bm = ai->bm;
-	struct uwb_rsv_col_info *ci = ai->ci;
-	unsigned char c;
-
-	for (col = ci->csi.start_col; col < UWB_NUM_ZONES; col += ci->csi.interval) {
-    
-		safe_mas   = ci->csi.safe_mas_per_col;
-		unsafe_mas = ci->csi.unsafe_mas_per_col;
-    
-		for (mas = 0; mas < UWB_MAS_PER_ZONE; mas++ ) {
-			if (bm[col * UWB_MAS_PER_ZONE + mas] == 0) {
-	
-				if (safe_mas > 0) {
-					safe_mas--;
-					c = UWB_RSV_MAS_SAFE;
-				} else if (unsafe_mas > 0) {
-					unsafe_mas--;
-					c = UWB_RSV_MAS_UNSAFE;
-				} else {
-					break;
-				}
-				bm[col * UWB_MAS_PER_ZONE + mas] = c;
-			}
-		}
-	}
-}
-
-static void uwb_rsv_fill_row_alloc(struct uwb_rsv_alloc_info *ai)
-{
-	int mas, col, rows;
-	unsigned char *bm = ai->bm;
-	struct uwb_rsv_row_info *ri = &ai->ri;
-	unsigned char c;
-
-	rows = 1;
-	c = UWB_RSV_MAS_SAFE;
-	for (mas = UWB_MAS_PER_ZONE - 1; mas >= 0; mas--) {
-		if (ri->avail[mas] == 1) {
-      
-			if (rows > ri->used_rows) {
-				break;
-			} else if (rows > 7) {
-				c = UWB_RSV_MAS_UNSAFE;
-			}
-
-			for (col = 0; col < UWB_NUM_ZONES; col++) {
-				if (bm[col * UWB_NUM_ZONES + mas] != UWB_RSV_MAS_NOT_AVAIL) {
-					bm[col * UWB_NUM_ZONES + mas] = c;
-					if(c == UWB_RSV_MAS_SAFE)
-						ai->safe_allocated_mases++;
-					else
-						ai->unsafe_allocated_mases++;
-				}
-			}
-			rows++;
-		}
-	}
-	ai->total_allocated_mases = ai->safe_allocated_mases + ai->unsafe_allocated_mases;
-}
-
-/*
- * Find the best column set for a given availability, interval, num safe mas and
- * num unsafe mas.
- *
- * The different sets are tried in order as shown below, depending on the interval.
- *
- * interval = 16
- *	deep = 0
- *		set 1 ->  {  8 }
- *	deep = 1
- *		set 1 ->  {  4 }
- *		set 2 ->  { 12 }
- *	deep = 2
- *		set 1 ->  {  2 }
- *		set 2 ->  {  6 }
- *		set 3 ->  { 10 }
- *		set 4 ->  { 14 }
- *	deep = 3
- *		set 1 ->  {  1 }
- *		set 2 ->  {  3 }
- *		set 3 ->  {  5 }
- *		set 4 ->  {  7 }
- *		set 5 ->  {  9 }
- *		set 6 ->  { 11 }
- *		set 7 ->  { 13 }
- *		set 8 ->  { 15 }
- *
- * interval = 8
- *	deep = 0
- *		set 1 ->  {  4  12 }
- *	deep = 1
- *		set 1 ->  {  2  10 }
- *		set 2 ->  {  6  14 }
- *	deep = 2
- *		set 1 ->  {  1   9 }
- *		set 2 ->  {  3  11 }
- *		set 3 ->  {  5  13 }
- *		set 4 ->  {  7  15 }
- *
- * interval = 4
- *	deep = 0
- *		set 1 ->  {  2   6  10  14 }
- *	deep = 1
- *		set 1 ->  {  1   5   9  13 }
- *		set 2 ->  {  3   7  11  15 }
- *
- * interval = 2
- *	deep = 0
- *		set 1 ->  {  1   3   5   7   9  11  13  15 }
- */
-static int uwb_rsv_find_best_column_set(struct uwb_rsv_alloc_info *ai, int interval, 
-					int num_safe_mas, int num_unsafe_mas)
-{
-	struct uwb_rsv_col_info *ci = ai->ci;
-	struct uwb_rsv_col_set_info *csi = &ci->csi;
-	struct uwb_rsv_col_set_info tmp_csi;
-	int deep, set, col, start_col_deep, col_start_set;
-	int start_col, max_mas_in_set, lowest_max_mas_in_deep;
-	int n_mas;
-	int found = UWB_RSV_ALLOC_NOT_FOUND; 
-
-	tmp_csi.start_col = 0;
-	start_col_deep = interval;
-	n_mas = num_unsafe_mas + num_safe_mas;
-
-	for (deep = 0; ((interval >> deep) & 0x1) == 0; deep++) {
-		start_col_deep /= 2;
-		col_start_set = 0;
-		lowest_max_mas_in_deep = UWB_MAS_PER_ZONE;
-
-		for (set = 1; set <= (1 << deep); set++) {
-			max_mas_in_set = 0;
-			start_col = start_col_deep + col_start_set;
-			for (col = start_col; col < UWB_NUM_ZONES; col += interval) {
-                
-				if (ci[col].max_avail_safe >= num_safe_mas &&
-				    ci[col].max_avail_unsafe >= n_mas) {
-					if (ci[col].highest_mas[n_mas] > max_mas_in_set)
-						max_mas_in_set = ci[col].highest_mas[n_mas];
-				} else {
-					max_mas_in_set = 0;
-					break;
-				}
-			}
-			if ((lowest_max_mas_in_deep > max_mas_in_set) && max_mas_in_set) {
-				lowest_max_mas_in_deep = max_mas_in_set;
-
-				tmp_csi.start_col = start_col;
-			}
-			col_start_set += (interval >> deep);
-		}
-
-		if (lowest_max_mas_in_deep < 8) {
-			csi->start_col = tmp_csi.start_col;
-			found = UWB_RSV_ALLOC_FOUND;
-			break;
-		} else if ((lowest_max_mas_in_deep > 8) && 
-			   (lowest_max_mas_in_deep != UWB_MAS_PER_ZONE) &&
-			   (found == UWB_RSV_ALLOC_NOT_FOUND)) {
-			csi->start_col = tmp_csi.start_col;
-			found = UWB_RSV_ALLOC_FOUND;
-		}
-	}
-
-	if (found == UWB_RSV_ALLOC_FOUND) {
-		csi->interval = interval;
-		csi->safe_mas_per_col = num_safe_mas;
-		csi->unsafe_mas_per_col = num_unsafe_mas;
-
-		ai->safe_allocated_mases = (UWB_NUM_ZONES / interval) * num_safe_mas;
-		ai->unsafe_allocated_mases = (UWB_NUM_ZONES / interval) * num_unsafe_mas;
-		ai->total_allocated_mases = ai->safe_allocated_mases + ai->unsafe_allocated_mases;
-		ai->interval = interval;		
-	}
-	return found;
-}
-
-static void get_row_descriptors(struct uwb_rsv_alloc_info *ai)
-{
-	unsigned char *bm = ai->bm;
-	struct uwb_rsv_row_info *ri = &ai->ri;
-	int col, mas;
-  
-	ri->free_rows = 16;
-	for (mas = 0; mas < UWB_MAS_PER_ZONE; mas ++) {
-		ri->avail[mas] = 1;
-		for (col = 1; col < UWB_NUM_ZONES; col++) {
-			if (bm[col * UWB_NUM_ZONES + mas] == UWB_RSV_MAS_NOT_AVAIL) {
-				ri->free_rows--;
-				ri->avail[mas]=0;
-				break;
-			}
-		}
-	}
-}
-
-static void uwb_rsv_fill_column_info(unsigned char *bm, int column, struct uwb_rsv_col_info *rci)
-{
-	int mas;
-	int block_count = 0, start_block = 0; 
-	int previous_avail = 0;
-	int available = 0;
-	int safe_mas_in_row[UWB_MAS_PER_ZONE] = {
-		8, 7, 6, 5, 4, 4, 4, 4, 4, 4, 4, 4, 4, 3, 2, 1,
-	};
-
-	rci->max_avail_safe = 0;
-
-	for (mas = 0; mas < UWB_MAS_PER_ZONE; mas ++) {
-		if (!bm[column * UWB_NUM_ZONES + mas]) {
-			available++;
-			rci->max_avail_unsafe = available;
-
-			rci->highest_mas[available] = mas;
-
-			if (previous_avail) {
-				block_count++;
-				if ((block_count > safe_mas_in_row[start_block]) &&
-				    (!rci->max_avail_safe))
-					rci->max_avail_safe = available - 1;
-			} else {
-				previous_avail = 1;
-				start_block = mas;
-				block_count = 1;
-			}
-		} else {
-			previous_avail = 0;
-		}
-	}
-	if (!rci->max_avail_safe)
-		rci->max_avail_safe = rci->max_avail_unsafe;
-}
-
-static void get_column_descriptors(struct uwb_rsv_alloc_info *ai)
-{
-	unsigned char *bm = ai->bm;
-	struct uwb_rsv_col_info *ci = ai->ci;
-	int col;
-
-	for (col = 1; col < UWB_NUM_ZONES; col++) {
-		uwb_rsv_fill_column_info(bm, col, &ci[col]);
-	}
-}
-
-static int uwb_rsv_find_best_row_alloc(struct uwb_rsv_alloc_info *ai)
-{
-	int n_rows;
-	int max_rows = ai->max_mas / UWB_USABLE_MAS_PER_ROW;
-	int min_rows = ai->min_mas / UWB_USABLE_MAS_PER_ROW;
-	if (ai->min_mas % UWB_USABLE_MAS_PER_ROW)
-		min_rows++;
-	for (n_rows = max_rows; n_rows >= min_rows; n_rows--) {
-		if (n_rows <= ai->ri.free_rows) {
-			ai->ri.used_rows = n_rows;
-			ai->interval = 1; /* row reservation */
-			uwb_rsv_fill_row_alloc(ai);
-			return UWB_RSV_ALLOC_FOUND;
-		}
-	}  
-	return UWB_RSV_ALLOC_NOT_FOUND;
-}
-
-static int uwb_rsv_find_best_col_alloc(struct uwb_rsv_alloc_info *ai, int interval)
-{
-	int n_safe, n_unsafe, n_mas;  
-	int n_column = UWB_NUM_ZONES / interval;
-	int max_per_zone = ai->max_mas / n_column;
-	int min_per_zone = ai->min_mas / n_column;
-
-	if (ai->min_mas % n_column)
-		min_per_zone++;
-
-	if (min_per_zone > UWB_MAS_PER_ZONE) {
-		return UWB_RSV_ALLOC_NOT_FOUND;
-	}
-    
-	if (max_per_zone > UWB_MAS_PER_ZONE) {
-		max_per_zone = UWB_MAS_PER_ZONE;
-	}
-    
-	for (n_mas = max_per_zone; n_mas >= min_per_zone; n_mas--) {
-		if (uwb_rsv_find_best_column_set(ai, interval, 0, n_mas) == UWB_RSV_ALLOC_NOT_FOUND)
-			continue;
-		for (n_safe = n_mas; n_safe >= 0; n_safe--) {
-			n_unsafe = n_mas - n_safe;
-			if (uwb_rsv_find_best_column_set(ai, interval, n_safe, n_unsafe) == UWB_RSV_ALLOC_FOUND) {
-				uwb_rsv_fill_column_alloc(ai);
-				return UWB_RSV_ALLOC_FOUND;
-			}
-		}
-	}
-	return UWB_RSV_ALLOC_NOT_FOUND;
-}
-
-int uwb_rsv_find_best_allocation(struct uwb_rsv *rsv, struct uwb_mas_bm *available, 
-				 struct uwb_mas_bm *result)
-{
-	struct uwb_rsv_alloc_info *ai;
-	int interval;
-	int bit_index;
-
-	ai = kzalloc(sizeof(struct uwb_rsv_alloc_info), GFP_KERNEL);
-	if (!ai)
-		return UWB_RSV_ALLOC_NOT_FOUND;
-	ai->min_mas = rsv->min_mas;
-	ai->max_mas = rsv->max_mas;
-	ai->max_interval = rsv->max_interval;
-
-
-	/* fill the not available vector from the available bm */
-	for_each_clear_bit(bit_index, available->bm, UWB_NUM_MAS)
-		ai->bm[bit_index] = UWB_RSV_MAS_NOT_AVAIL;
-
-	if (ai->max_interval == 1) {
-		get_row_descriptors(ai);
-		if (uwb_rsv_find_best_row_alloc(ai) == UWB_RSV_ALLOC_FOUND)
-			goto alloc_found;
-		else
-			goto alloc_not_found;
-	}
-
-	get_column_descriptors(ai);
-        
-	for (interval = 16; interval >= 2; interval>>=1) {
-		if (interval > ai->max_interval)
-			continue;
-		if (uwb_rsv_find_best_col_alloc(ai, interval) == UWB_RSV_ALLOC_FOUND)
-			goto alloc_found;
-	}
-
-	/* try row reservation if no column is found */
-	get_row_descriptors(ai);
-	if (uwb_rsv_find_best_row_alloc(ai) == UWB_RSV_ALLOC_FOUND)
-		goto alloc_found;
-	else
-		goto alloc_not_found;
</cut>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1317317694.13612.1585734125143.JavaMail.javamailuser%40localhost.

------=_Part_13611_410959888.1585734124457--
