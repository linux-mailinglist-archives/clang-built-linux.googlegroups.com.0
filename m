Return-Path: <clang-built-linux+bncBDM6PI5M4IFRB65JZPYQKGQECGFOJSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x339.google.com (mail-wm1-x339.google.com [IPv6:2a00:1450:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BCA014DB3F
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jan 2020 14:07:07 +0100 (CET)
Received: by mail-wm1-x339.google.com with SMTP id q125sf482550wme.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jan 2020 05:07:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580389627; cv=pass;
        d=google.com; s=arc-20160816;
        b=BlpNKwCeX4GEC4QXJPMeDDYzXTb7yp2Z5pJEJ9pilqg8+NtPTTJ/Qyaj4l0A24MWm4
         3YcTlCgXPqIITUbI5FP8XiZGLAhbzb0L7W1zp1WsSawLwYqGysjTPZWxRx5DU7+0KzTf
         5onhQRkcU0J8qTR7U/wXsjOZ0kz3/rLbsYsdADnCHyq6tzZ70YVH+3i0PJH2GIcDnBot
         IsMSA3obyUTx2HoSNGPavMvZ7jcwIr/5PIDGQRaZu79rQCwNflRinbRPTRKAxMrKZiuB
         SJxyvgXzKEalwqFQQ3M0QfshzPEcJDU76RaDPFwcd9Ez9alUcAIBAPH1dveWsCCDYsuo
         33lQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=ZSL5mJ8j16fImO/6qFRKivGhKDaPAWVQ5a947mOrjWg=;
        b=X2iagF97+Z9NwinpnauHott8JfX13e5i2BMhSXwTuUk6+KjLpQWzJv25iUegWhOoMu
         c3UEfAntoj4XXB2ckRSwtJTefBhodeKtaFnmloglsUeHWP+fFB7vRk/55U2+5JLX3lrx
         D/FXXOKmNwiYEOUvfAinP56BrvoC2yVVkHwRYPtyJQizQJbILP3Yu+WVVS0JOzbL3o5p
         cQwne08gq0FKlc2uf+UoSVpB/MSIJjCFfp7kA+MsK9gUNaR3ZBFsJs21wYGTjt3d8bO2
         OMMQro3Ax6zI4uPEFYh8elJK1YIhAgk7EdRAEGuUUpTH8nQCmjyZ+QQ/TpG4vNWLEWpl
         MZxg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=Jda5X1pr;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZSL5mJ8j16fImO/6qFRKivGhKDaPAWVQ5a947mOrjWg=;
        b=B+tiNISHRGQTq4Wbt2J+pr+hFQ6+1i6YHm9NEAHjt9a4v1ZQ8guPjyjlhxyvniN4Q9
         9b/i60JLnDWZZweUdopXPZ1IwrCYWXWeiEn8bBR46P0urnQjhAp9nYJNJUeTm9m15z7q
         j+kLtGvIB3XKWeoiv+s2H7Mseus4Q/2gRU6ZpdmCDUKiCjiKKBAoAp+i9Y1hsFQcE26L
         lYtkdUWbRnO6Redso7oBxBIam36+a8qtQtnrc/gwwi5U0NbQWSn/WUKMC4DWXHQUpE7S
         ZsfhGUx+Pli2SYjmcAHORVgsGE/9B+hiaV6R+OWHIR7iZjxrjH4lZ+8aOEgvmcviWXeO
         L+Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZSL5mJ8j16fImO/6qFRKivGhKDaPAWVQ5a947mOrjWg=;
        b=f3P+8hGfKJbllqe/Op3IiSDaSSqawiFpUNtBdQy+MhPE2I1lnD6j94bip0PAh/VA8m
         vUturkAWyHQ17almYqescMHRwKk5I9ovrHJjVotsNklJi5kM5y4SXuxJt48gu/7pv2kC
         3W/a77Edd0SjtM8VVSDzbAlUM+n2UGpCRkXuuQyGUpBUomRTgs9f3+uPHQ2R6vDB7b2o
         l5YH4btlChCw+KSQrInw1kANVCEmaKQ5JxrcM2eRgvO4fUlIbqDQMgccb2Pscv9Y17dP
         dKKsd6vQaXVmfK72IljfbpKljpd2rYMfbi8tY76Pb2mUTbTWxJCDVD+VkT8g0B46jjAK
         QM0Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXVcZQO0SO2jFxox3Ih9WN6VWNtuNSxmjtin44P7Pq77HzfZD6/
	prwZndUZ+fCbXtohOsVrXMU=
X-Google-Smtp-Source: APXvYqzEewxMZNjNwrAg1neZ3aVhNguMlbhSCKD1Ojq9eyOm5Z8n1i9oB+AMqBBQMkTOuGBMUmblxA==
X-Received: by 2002:adf:dd4d:: with SMTP id u13mr5879189wrm.394.1580389627178;
        Thu, 30 Jan 2020 05:07:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:6385:: with SMTP id x127ls2319533wmb.2.gmail; Thu, 30
 Jan 2020 05:07:06 -0800 (PST)
X-Received: by 2002:a1c:5441:: with SMTP id p1mr5864685wmi.161.1580389626602;
        Thu, 30 Jan 2020 05:07:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580389626; cv=none;
        d=google.com; s=arc-20160816;
        b=rHYbrEQTtbUMIUK+829Ex5WqBqQpCKVwMRHaAXEAFlUfDIjw5nMzXxxWWkohpFW9q/
         QUjFo7P3tQzQfRM5fbhmZAEm3Mgl7AVWNS02sF1ACtFSLxRF8wUICtDqLg99n+tPuHmS
         rWlNvuR7vHmVFo78482TY35Nph0KZ8nO9+54FidUy4LPLkvFh+RqTzx9xJlShJ9/lEn+
         6Vl2vD40edB4wfKOiZnwT/Z2Mc/kbHnU82fu4Ua0rLw7KDAbNCznYc0vUWeFnK3dcjHH
         RONgRKcKxYbluLPTE6+ZgxMrXxcRu/AoOKfJUsqxVPxsSOMDq+vbooPuKvNgK/eSXUba
         QNag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=l9+GB99HO7ewBLZEXQsqHd35NXGK7DlvnrmUcy9zSB4=;
        b=N9FIu0h2d22N0ylOg1UPekEaHd+VtBhTB6mRYL/8APAFKzwpV5RZrxsPJ6sbKNNiU3
         6KXwW1CJciWH2XSHuiGUp2CqkN2dQ5CZa2lpKucTFydw+CKq4Nm7xWMJGUw+iHO7/gRp
         SsjYx3giBkXxTEQKlh4yWGws7V7rQ9mQJ/aCHDV3LuhdzjxikhskSCXsuG11G6h0/nkn
         L9QTVxy4mpJ0APuyQ3uFzFmKSTMZfnzF9ipQcC2LxKma0QRvGQnBDhiQK9tDr73+Grp/
         XhDPyhGlLL8/wr48O1t44wnWCB84M8OW5k5zJABCuFKJXmhl9vblXcQ5WowJd3Od8jb1
         FsiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=Jda5X1pr;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id 202si251767wme.0.2020.01.30.05.07.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Jan 2020 05:07:06 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Received: by mail-wm1-x344.google.com with SMTP id s144so6420845wme.1
        for <clang-built-linux@googlegroups.com>; Thu, 30 Jan 2020 05:07:06 -0800 (PST)
X-Received: by 2002:a7b:c088:: with SMTP id r8mr5699535wmh.18.1580389625286;
        Thu, 30 Jan 2020 05:07:05 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id t81sm6257387wmg.6.2020.01.30.05.07.04
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 30 Jan 2020 05:07:04 -0800 (PST)
From: ci_notify@linaro.org
Date: Thu, 30 Jan 2020 13:07:04 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <1632023087.92.1580389624753.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-arm-mainline-allmodconfig - Build # 29 -
 Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_91_1253531651.1580389624178"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-arm-mainline-allmodconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=Jda5X1pr;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::344
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

------=_Part_91_1253531651.1580389624178
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-master-arm-mainline-allmodconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/llvm-master-arm-mainline-allmodconfig

Culprit:
<cut>
commit 7ba31c3f2f1ee095d8126f4d3757fc3b2bc3c838
Merge: ca9b5b628398 fc157998b825
Author: Linus Torvalds <torvalds@linux-foundation.org>
Date:   Wed Jan 29 10:15:11 2020 -0800

    Merge tag 'staging-5.6-rc1' of git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging
    
    Pull staging and IIO updates from Greg KH:
     "Here is the big staging/iio driver patches for 5.6-rc1
    
      Included in here are:
    
       - lots of new IIO drivers and updates for that subsystem
    
       - the usual huge quantity of minor cleanups for staging drivers
    
       - removal of the following staging drivers:
           - isdn/avm
           - isdn/gigaset
           - isdn/hysdn
           - octeon-usb
           - octeon ethernet
    
      Overall we deleted far more lines than we added, removing over 40k of
      old and obsolete driver code.
    
      All of these changes have been in linux-next for a while with no
      reported issues"
    
    * tag 'staging-5.6-rc1' of git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging: (353 commits)
      staging: most: usb: check for NULL device
      staging: next: configfs: fix release link
      staging: most: core: fix logging messages
      staging: most: core: remove container struct
      staging: most: remove struct device core driver
      staging: most: core: drop device reference
      staging: most: remove device from interface structure
      staging: comedi: drivers: fix spelling mistake "to" -> "too"
      staging: exfat: remove fs_func struct.
      staging: wilc1000: avoid mutex unlock without lock in wilc_wlan_handle_txq()
      staging: wilc1000: return zero on success and non-zero on function failure
      staging: axis-fifo: replace spinlock with mutex
      staging: wilc1000: remove unused code prior to throughput enhancement in SPI
      staging: wilc1000: added 'wilc_' prefix for 'struct assoc_resp' name
      staging: wilc1000: move firmware API struct's to separate header file
      staging: wilc1000: remove use of infinite loop conditions
      staging: kpc2000: rename variables with kpc namespace
      staging: vt6656: Remove memory buffer from vnt_download_firmware.
      staging: vt6656: Just check NEWRSR_DECRYPTOK for RX_FLAG_DECRYPTED.
      staging: vt6656: Use vnt_rx_tail struct for tail variables.
      ...
</cut>

First few errors in logs of first_bad:
00:19:30 make[1]: *** [__modpost] Error 1
00:19:30 make: *** [modules] Error 2
Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git"
rr[linux_branch]="abb22e44cff3f11d9e087bdd46c04bb32ff57678"

Results regressed to (for first_bad == 7ba31c3f2f1ee095d8126f4d3757fc3b2bc3c838)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
20193

from (for last_good == ca9b5b6283984f67434cee810f3b08e19630226d)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
20216

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allmodconfig/29/artifact/artifacts/build-7ba31c3f2f1ee095d8126f4d3757fc3b2bc3c838/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allmodconfig/29/artifact/artifacts/build-ca9b5b6283984f67434cee810f3b08e19630226d/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allmodconfig/29/

Reproduce builds:
<cut>
mkdir investigate-linux-7ba31c3f2f1ee095d8126f4d3757fc3b2bc3c838
cd investigate-linux-7ba31c3f2f1ee095d8126f4d3757fc3b2bc3c838

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allmodconfig/29/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allmodconfig/29/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allmodconfig/29/artifact/artifacts/test.sh
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh

cd linux

# Reproduce first_bad build
git checkout --detach 7ba31c3f2f1ee095d8126f4d3757fc3b2bc3c838
../artifacts/test.sh

# Reproduce last_good build
git checkout --detach ca9b5b6283984f67434cee810f3b08e19630226d
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-arm-mainline-allmodconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allmodconfig/29/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allmodconfig/29/consoleText

Full commit:
<cut>
commit 7ba31c3f2f1ee095d8126f4d3757fc3b2bc3c838
Merge: ca9b5b628398 fc157998b825
Author: Linus Torvalds <torvalds@linux-foundation.org>
Date:   Wed Jan 29 10:15:11 2020 -0800

    Merge tag 'staging-5.6-rc1' of git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging
    
    Pull staging and IIO updates from Greg KH:
     "Here is the big staging/iio driver patches for 5.6-rc1
    
      Included in here are:
    
       - lots of new IIO drivers and updates for that subsystem
    
       - the usual huge quantity of minor cleanups for staging drivers
    
       - removal of the following staging drivers:
           - isdn/avm
           - isdn/gigaset
           - isdn/hysdn
           - octeon-usb
           - octeon ethernet
    
      Overall we deleted far more lines than we added, removing over 40k of
      old and obsolete driver code.
    
      All of these changes have been in linux-next for a while with no
      reported issues"
    
    * tag 'staging-5.6-rc1' of git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging: (353 commits)
      staging: most: usb: check for NULL device
      staging: next: configfs: fix release link
      staging: most: core: fix logging messages
      staging: most: core: remove container struct
      staging: most: remove struct device core driver
      staging: most: core: drop device reference
      staging: most: remove device from interface structure
      staging: comedi: drivers: fix spelling mistake "to" -> "too"
      staging: exfat: remove fs_func struct.
      staging: wilc1000: avoid mutex unlock without lock in wilc_wlan_handle_txq()
      staging: wilc1000: return zero on success and non-zero on function failure
      staging: axis-fifo: replace spinlock with mutex
      staging: wilc1000: remove unused code prior to throughput enhancement in SPI
      staging: wilc1000: added 'wilc_' prefix for 'struct assoc_resp' name
      staging: wilc1000: move firmware API struct's to separate header file
      staging: wilc1000: remove use of infinite loop conditions
      staging: kpc2000: rename variables with kpc namespace
      staging: vt6656: Remove memory buffer from vnt_download_firmware.
      staging: vt6656: Just check NEWRSR_DECRYPTOK for RX_FLAG_DECRYPTED.
      staging: vt6656: Use vnt_rx_tail struct for tail variables.
      ...

 Documentation/ABI/testing/sysfs-bus-iio            |   13 +
 Documentation/ABI/testing/sysfs-bus-iio-dma-buffer |   19 +
 .../bindings/iio/accel/adi,adis16240.yaml          |   49 +
 .../devicetree/bindings/iio/accel/bma180.txt       |    7 +-
 .../bindings/iio/accel/bosch,bma400.yaml           |   54 +
 .../bindings/iio/accel/kionix,kxcjk1013.txt        |    7 +
 .../devicetree/bindings/iio/adc/adi,ad7091r5.yaml  |   54 +
 .../devicetree/bindings/iio/adc/lltc,ltc2496.yaml  |   47 +
 .../bindings/iio/adc/sigma-delta-modulator.txt     |   13 -
 .../bindings/iio/adc/sigma-delta-modulator.yaml    |   37 +
 .../devicetree/bindings/iio/imu/adi,adis16480.txt  |    1 +
 .../bindings/iio/pressure/asc,dlhl60d.yaml         |   51 +
 .../bindings/iio/proximity/parallax-ping.yaml      |   51 +
 .../iio/temperature/maxim_thermocouple.txt         |    7 +-
 .../devicetree/bindings/vendor-prefixes.yaml       |    4 +
 Documentation/isdn/avmb1.rst                       |  246 --
 Documentation/isdn/gigaset.rst                     |  465 ---
 Documentation/isdn/hysdn.rst                       |  196 -
 Documentation/isdn/index.rst                       |    3 -
 Documentation/isdn/interface_capi.rst              |   71 -
 Documentation/userspace-api/ioctl/ioctl-number.rst |    1 -
 MAINTAINERS                                        |   35 +-
 drivers/iio/accel/Kconfig                          |   20 +-
 drivers/iio/accel/Makefile                         |    2 +
 drivers/iio/accel/adis16201.c                      |    8 +-
 drivers/iio/accel/adis16209.c                      |    8 +-
 drivers/iio/accel/bma180.c                         |  225 +-
 drivers/iio/accel/bma400.h                         |   99 +
 drivers/iio/accel/bma400_core.c                    |  853 +++++
 drivers/iio/accel/bma400_i2c.c                     |   61 +
 drivers/iio/accel/kxcjk-1013.c                     |   27 +-
 drivers/iio/accel/st_accel.h                       |    2 +-
 drivers/iio/accel/st_accel_i2c.c                   |    8 +-
 drivers/iio/accel/st_accel_spi.c                   |    9 +-
 drivers/iio/adc/Kconfig                            |   17 +
 drivers/iio/adc/Makefile                           |    4 +-
 drivers/iio/adc/ad7091r-base.c                     |  298 ++
 drivers/iio/adc/ad7091r-base.h                     |   26 +
 drivers/iio/adc/ad7091r5.c                         |  113 +
 drivers/iio/adc/ad7124.c                           |    2 +
 drivers/iio/adc/ad7266.c                           |   29 +-
 drivers/iio/adc/ad7780.c                           |    1 +
 drivers/iio/adc/ad7791.c                           |    1 +
 drivers/iio/adc/ad7793.c                           |    1 +
 drivers/iio/adc/ad7887.c                           |   82 +-
 drivers/iio/adc/ad7923.c                           |   64 +-
 drivers/iio/adc/ad799x.c                           |   66 +-
 drivers/iio/adc/ad_sigma_delta.c                   |    2 +-
 drivers/iio/adc/at91-sama5d2_adc.c                 |    6 +-
 drivers/iio/adc/ltc2496.c                          |  108 +
 drivers/iio/adc/ltc2497-core.c                     |  243 ++
 drivers/iio/adc/ltc2497.c                          |  234 +-
 drivers/iio/adc/ltc2497.h                          |   18 +
 drivers/iio/adc/max9611.c                          |   36 +-
 drivers/iio/adc/stm32-adc-core.c                   |   23 +-
 drivers/iio/adc/stm32-adc-core.h                   |    9 +
 drivers/iio/adc/stm32-adc.c                        |   71 +-
 drivers/iio/adc/stm32-dfsdm-adc.c                  |   55 +-
 drivers/iio/adc/ti-ads1015.c                       |   73 +-
 drivers/iio/adc/ti-ads7950.c                       |    2 +-
 drivers/iio/buffer/industrialio-buffer-dma.c       |    2 +-
 drivers/iio/buffer/industrialio-buffer-dmaengine.c |   30 +-
 drivers/iio/buffer/kfifo_buf.c                     |    5 +-
 drivers/iio/chemical/Makefile                      |    2 +-
 .../chemical/{atlas-ph-sensor.c => atlas-sensor.c} |   24 +-
 drivers/iio/common/ssp_sensors/ssp.h               |   14 +-
 drivers/iio/common/ssp_sensors/ssp_dev.c           |   29 +-
 drivers/iio/common/ssp_sensors/ssp_spi.c           |    8 +-
 drivers/iio/common/st_sensors/st_sensors_core.c    |   45 +-
 drivers/iio/common/st_sensors/st_sensors_i2c.c     |   21 -
 drivers/iio/common/st_sensors/st_sensors_spi.c     |   12 +-
 drivers/iio/common/st_sensors/st_sensors_trigger.c |    3 +
 drivers/iio/dac/ad5592r-base.c                     |    1 -
 drivers/iio/dac/ad7303.c                           |   25 +-
 drivers/iio/dac/stm32-dac-core.c                   |   19 +-
 drivers/iio/frequency/adf4350.c                    |   30 +-
 drivers/iio/gyro/Kconfig                           |   32 +-
 drivers/iio/gyro/adis16136.c                       |   72 +-
 drivers/iio/gyro/adis16260.c                       |   14 +-
 drivers/iio/gyro/itg3200_core.c                    |    1 -
 drivers/iio/gyro/st_gyro.h                         |    2 +-
 drivers/iio/gyro/st_gyro_core.c                    |   75 +-
 drivers/iio/gyro/st_gyro_i2c.c                     |    9 +-
 drivers/iio/gyro/st_gyro_spi.c                     |    9 +-
 drivers/iio/humidity/dht11.c                       |    1 -
 drivers/iio/humidity/hts221_core.c                 |   19 +-
 drivers/iio/iio_core.h                             |    8 +-
 drivers/iio/imu/adis.c                             |  139 +-
 drivers/iio/imu/adis16400.c                        |  115 +-
 drivers/iio/imu/adis16460.c                        |    7 +
 drivers/iio/imu/adis16480.c                        |   92 +-
 drivers/iio/imu/adis_buffer.c                      |    4 +-
 drivers/iio/imu/inv_mpu6050/Kconfig                |    9 +-
 drivers/iio/imu/inv_mpu6050/inv_mpu_core.c         |  237 +-
 drivers/iio/imu/inv_mpu6050/inv_mpu_i2c.c          |    2 +
 drivers/iio/imu/inv_mpu6050/inv_mpu_iio.h          |   22 +-
 drivers/iio/imu/inv_mpu6050/inv_mpu_magn.c         |   80 +-
 drivers/iio/imu/inv_mpu6050/inv_mpu_ring.c         |   11 +-
 drivers/iio/imu/inv_mpu6050/inv_mpu_spi.c          |    1 -
 drivers/iio/imu/inv_mpu6050/inv_mpu_trigger.c      |    4 +
 drivers/iio/imu/st_lsm6dsx/st_lsm6dsx.h            |   49 +-
 drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_buffer.c     |   27 +-
 drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c       |  121 +-
 drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_i2c.c        |    3 +-
 drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_shub.c       |   76 +-
 drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_spi.c        |    3 +-
 drivers/iio/industrialio-buffer.c                  |   10 +-
 drivers/iio/industrialio-core.c                    |   25 +-
 drivers/iio/light/apds9960.c                       |    2 -
 drivers/iio/light/lm3533-als.c                     |    2 +-
 drivers/iio/light/si1145.c                         |    1 -
 drivers/iio/light/st_uvis25_i2c.c                  |    1 -
 drivers/iio/magnetometer/ak8975.c                  |  107 +-
 drivers/iio/magnetometer/st_magn_i2c.c             |    9 +-
 drivers/iio/magnetometer/st_magn_spi.c             |    9 +-
 drivers/iio/pressure/Kconfig                       |   12 +
 drivers/iio/pressure/Makefile                      |    1 +
 drivers/iio/pressure/bmp280-i2c.c                  |   18 +-
 drivers/iio/pressure/dlhl60d.c                     |  375 ++
 drivers/iio/pressure/st_pressure.h                 |    2 +-
 drivers/iio/pressure/st_pressure_i2c.c             |   22 +-
 drivers/iio/pressure/st_pressure_spi.c             |    9 +-
 drivers/iio/proximity/Kconfig                      |   15 +
 drivers/iio/proximity/Makefile                     |    1 +
 drivers/iio/proximity/as3935.c                     |    3 -
 drivers/iio/proximity/ping.c                       |  335 ++
 drivers/iio/resolver/ad2s1200.c                    |    1 -
 drivers/iio/temperature/max31856.c                 |  134 +-
 drivers/iio/temperature/maxim_thermocouple.c       |   44 +-
 drivers/iio/trigger/stm32-timer-trigger.c          |    3 -
 drivers/isdn/Makefile                              |    2 +-
 drivers/isdn/capi/Kconfig                          |   32 +-
 drivers/isdn/capi/Makefile                         |   18 +-
 drivers/isdn/capi/capi.c                           |   14 +-
 drivers/isdn/capi/capilib.c                        |  202 --
 drivers/isdn/capi/capiutil.c                       |  231 +-
 drivers/isdn/capi/kcapi.c                          |  409 +--
 drivers/isdn/capi/kcapi.h                          |  149 +-
 drivers/isdn/capi/kcapi_proc.c                     |   36 +-
 drivers/staging/Kconfig                            |    6 -
 drivers/staging/Makefile                           |    5 +-
 drivers/staging/android/ashmem.c                   |    6 +-
 drivers/staging/axis-fifo/axis-fifo.c              |  160 +-
 drivers/staging/comedi/drivers/das6402.c           |    2 +-
 drivers/staging/exfat/Kconfig                      |   26 +-
 drivers/staging/exfat/Makefile                     |    2 +-
 drivers/staging/exfat/exfat.h                      |   93 +-
 drivers/staging/exfat/exfat_blkdev.c               |   16 +-
 drivers/staging/exfat/exfat_core.c                 |  211 +-
 drivers/staging/exfat/exfat_super.c                |  175 +-
 drivers/staging/hp/hp100.c                         |   11 +-
 drivers/staging/iio/accel/adis16203.c              |    8 +-
 drivers/staging/iio/accel/adis16240.c              |   15 +-
 drivers/staging/isdn/Kconfig                       |   12 -
 drivers/staging/isdn/Makefile                      |    8 -
 drivers/staging/isdn/TODO                          |   22 -
 drivers/staging/isdn/avm/Kconfig                   |   65 -
 drivers/staging/isdn/avm/Makefile                  |   12 -
 drivers/staging/isdn/avm/avm_cs.c                  |  166 -
 drivers/staging/isdn/avm/avmcard.h                 |  581 ---
 drivers/staging/isdn/avm/b1.c                      |  819 -----
 drivers/staging/isdn/avm/b1dma.c                   |  981 -----
 drivers/staging/isdn/avm/b1isa.c                   |  243 --
 drivers/staging/isdn/avm/b1pci.c                   |  416 ---
 drivers/staging/isdn/avm/b1pcmcia.c                |  224 --
 drivers/staging/isdn/avm/c4.c                      | 1317 -------
 drivers/staging/isdn/avm/t1isa.c                   |  594 ----
 drivers/staging/isdn/avm/t1pci.c                   |  259 --
 drivers/staging/isdn/gigaset/Kconfig               |   62 -
 drivers/staging/isdn/gigaset/Makefile              |   17 -
 drivers/staging/isdn/gigaset/asyncdata.c           |  606 ----
 drivers/staging/isdn/gigaset/bas-gigaset.c         | 2672 --------------
 drivers/staging/isdn/gigaset/capi.c                | 2517 -------------
 drivers/staging/isdn/gigaset/common.c              | 1153 ------
 drivers/staging/isdn/gigaset/dummyll.c             |   74 -
 drivers/staging/isdn/gigaset/ev-layer.c            | 1910 ----------
 drivers/staging/isdn/gigaset/gigaset.h             |  827 -----
 drivers/staging/isdn/gigaset/interface.c           |  613 ----
 drivers/staging/isdn/gigaset/isocdata.c            | 1006 ------
 drivers/staging/isdn/gigaset/proc.c                |   77 -
 drivers/staging/isdn/gigaset/ser-gigaset.c         |  796 -----
 drivers/staging/isdn/gigaset/usb-gigaset.c         |  959 -----
 drivers/staging/isdn/hysdn/Kconfig                 |   15 -
 drivers/staging/isdn/hysdn/Makefile                |   12 -
 drivers/staging/isdn/hysdn/boardergo.c             |  445 ---
 drivers/staging/isdn/hysdn/boardergo.h             |  100 -
 drivers/staging/isdn/hysdn/hycapi.c                |  785 ----
 drivers/staging/isdn/hysdn/hysdn_boot.c            |  400 ---
 drivers/staging/isdn/hysdn/hysdn_defs.h            |  282 --
 drivers/staging/isdn/hysdn/hysdn_init.c            |  213 --
 drivers/staging/isdn/hysdn/hysdn_net.c             |  330 --
 drivers/staging/isdn/hysdn/hysdn_pof.h             |   78 -
 drivers/staging/isdn/hysdn/hysdn_procconf.c        |  411 ---
 drivers/staging/isdn/hysdn/hysdn_proclog.c         |  357 --
 drivers/staging/isdn/hysdn/hysdn_sched.c           |  197 --
 drivers/staging/isdn/hysdn/ince1pc.h               |  134 -
 drivers/staging/kpc2000/kpc2000_i2c.c              |  120 +-
 drivers/staging/kpc2000/kpc_dma/fileops.c          |    2 -
 drivers/staging/most/Makefile                      |    1 -
 drivers/staging/most/cdev/Makefile                 |    1 -
 drivers/staging/most/cdev/cdev.c                   |    5 +-
 drivers/staging/most/configfs.c                    |   59 +-
 drivers/staging/most/core.c                        |  204 +-
 drivers/staging/most/dim2/Makefile                 |    1 -
 drivers/staging/most/dim2/dim2.c                   |    5 +-
 drivers/staging/most/i2c/Makefile                  |    1 -
 drivers/staging/most/i2c/i2c.c                     |    2 +-
 drivers/staging/most/{core.h => most.h}            |   30 +-
 drivers/staging/most/net/Makefile                  |    1 -
 drivers/staging/most/net/net.c                     |   17 +-
 drivers/staging/most/sound/Makefile                |    1 -
 drivers/staging/most/sound/sound.c                 |   54 +-
 drivers/staging/most/usb/Makefile                  |    1 -
 drivers/staging/most/usb/usb.c                     |   26 +-
 drivers/staging/most/video/Makefile                |    1 -
 drivers/staging/most/video/video.c                 |    6 +-
 drivers/staging/mt7621-dts/mt7621.dtsi             |    2 +-
 drivers/staging/nvec/nvec_kbd.c                    |    2 +
 drivers/staging/octeon-usb/Kconfig                 |   11 -
 drivers/staging/octeon-usb/Makefile                |    2 -
 drivers/staging/octeon-usb/TODO                    |    8 -
 drivers/staging/octeon-usb/octeon-hcd.c            | 3737 --------------------
 drivers/staging/octeon-usb/octeon-hcd.h            | 1847 ----------
 drivers/staging/octeon/Kconfig                     |   16 -
 drivers/staging/octeon/Makefile                    |   19 -
 drivers/staging/octeon/TODO                        |    9 -
 drivers/staging/octeon/ethernet-defines.h          |   40 -
 drivers/staging/octeon/ethernet-mdio.c             |  178 -
 drivers/staging/octeon/ethernet-mdio.h             |   28 -
 drivers/staging/octeon/ethernet-mem.c              |  154 -
 drivers/staging/octeon/ethernet-mem.h              |    9 -
 drivers/staging/octeon/ethernet-rgmii.c            |  158 -
 drivers/staging/octeon/ethernet-rx.c               |  538 ---
 drivers/staging/octeon/ethernet-rx.h               |   31 -
 drivers/staging/octeon/ethernet-sgmii.c            |   30 -
 drivers/staging/octeon/ethernet-spi.c              |  226 --
 drivers/staging/octeon/ethernet-tx.c               |  717 ----
 drivers/staging/octeon/ethernet-tx.h               |   14 -
 drivers/staging/octeon/ethernet-util.h             |   47 -
 drivers/staging/octeon/ethernet.c                  |  992 ------
 drivers/staging/octeon/octeon-ethernet.h           |  107 -
 drivers/staging/octeon/octeon-stubs.h              | 1433 --------
 drivers/staging/qlge/qlge.h                        |   15 +-
 drivers/staging/qlge/qlge_dbg.c                    |   32 +-
 drivers/staging/qlge/qlge_ethtool.c                |   39 +-
 drivers/staging/qlge/qlge_main.c                   |  215 +-
 drivers/staging/qlge/qlge_mpi.c                    |   26 +-
 drivers/staging/rtl8188eu/core/rtw_ap.c            |    4 +-
 drivers/staging/rtl8188eu/core/rtw_efuse.c         |   14 +-
 drivers/staging/rtl8188eu/core/rtw_ieee80211.c     |   20 +-
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c      |  200 +-
 drivers/staging/rtl8188eu/core/rtw_pwrctrl.c       |   34 +-
 drivers/staging/rtl8188eu/core/rtw_wlan_util.c     |    8 +-
 drivers/staging/rtl8188eu/core/rtw_xmit.c          |    4 +-
 drivers/staging/rtl8188eu/hal/odm.c                |    7 +-
 drivers/staging/rtl8188eu/hal/odm_rtl8188e.c       |   82 +-
 drivers/staging/rtl8188eu/hal/phy.c                |   41 +-
 drivers/staging/rtl8188eu/hal/rtl8188e_dm.c        |   97 +-
 .../staging/rtl8188eu/include/hal8188e_phy_cfg.h   |    5 -
 drivers/staging/rtl8188eu/include/hal_intf.h       |    2 +-
 drivers/staging/rtl8188eu/include/ieee80211.h      |    2 +-
 drivers/staging/rtl8188eu/include/odm.h            |    1 -
 drivers/staging/rtl8188eu/include/rtl8188e_dm.h    |    7 +-
 drivers/staging/rtl8188eu/include/rtw_rf.h         |   16 -
 drivers/staging/rtl8188eu/os_dep/ioctl_linux.c     |   15 +-
 drivers/staging/rtl8192e/rtl8192e/rtl_core.c       |   11 +-
 drivers/staging/rtl8192u/Makefile                  |    4 -
 drivers/staging/rtl8192u/ieee80211/Makefile        |   27 -
 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c  |   62 +-
 drivers/staging/rtl8192u/r8192U_core.c             |   13 +-
 drivers/staging/rtl8192u/r8192U_wx.c               |    2 +-
 drivers/staging/rtl8192u/r819xU_phy.c              |    2 +-
 drivers/staging/rtl8712/rtl8712_recv.c             |   10 +-
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c      |   54 +-
 drivers/staging/rtl8723bs/hal/HalPhyRf.c           |   30 -
 drivers/staging/rtl8723bs/hal/HalPhyRf.h           |    8 -
 drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c     |   23 +-
 drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c  |   44 +-
 drivers/staging/rts5208/Makefile                   |    2 -
 drivers/staging/rts5208/rtsx.c                     |    7 +-
 drivers/staging/vc04_services/Makefile             |    2 +-
 .../vc04_services/bcm2835-audio/bcm2835-pcm.c      |   19 +-
 .../vc04_services/bcm2835-camera/bcm2835-camera.c  |    9 +-
 .../staging/vc04_services/interface/vchi/vchi.h    |    4 +-
 .../vc04_services/interface/vchiq_arm/vchiq_shim.c |    2 +-
 drivers/staging/vt6655/rf.c                        |    2 +-
 drivers/staging/vt6656/baseband.c                  |    8 +-
 drivers/staging/vt6656/device.h                    |   19 +-
 drivers/staging/vt6656/dpc.c                       |  114 +-
 drivers/staging/vt6656/firmware.c                  |   14 +-
 drivers/staging/vt6656/int.c                       |    6 +-
 drivers/staging/vt6656/main_usb.c                  |    1 +
 drivers/staging/vt6656/rxtx.c                      |   26 +-
 drivers/staging/vt6656/usbpipe.c                   |    2 +-
 drivers/staging/vt6656/usbpipe.h                   |    2 +-
 drivers/staging/wfx/TODO                           |   71 +-
 drivers/staging/wfx/bh.c                           |    3 +-
 drivers/staging/wfx/bus_spi.c                      |    9 +-
 drivers/staging/wfx/data_rx.c                      |   85 +-
 drivers/staging/wfx/data_rx.h                      |    4 +-
 drivers/staging/wfx/data_tx.c                      |  322 +-
 drivers/staging/wfx/data_tx.h                      |   27 +-
 drivers/staging/wfx/debug.c                        |    2 +-
 drivers/staging/wfx/fwio.c                         |   28 +-
 drivers/staging/wfx/hif_api_cmd.h                  |   35 +-
 drivers/staging/wfx/hif_api_mib.h                  |   35 +-
 drivers/staging/wfx/hif_rx.c                       |  115 +-
 drivers/staging/wfx/hif_tx.c                       |  164 +-
 drivers/staging/wfx/hif_tx.h                       |   28 +-
 drivers/staging/wfx/hif_tx_mib.h                   |  183 +-
 drivers/staging/wfx/hwio.h                         |   15 +-
 drivers/staging/wfx/main.c                         |   10 +-
 drivers/staging/wfx/queue.c                        |  216 +-
 drivers/staging/wfx/queue.h                        |   10 +-
 drivers/staging/wfx/scan.c                         |  321 +-
 drivers/staging/wfx/scan.h                         |   26 +-
 drivers/staging/wfx/secure_link.h                  |    8 +-
 drivers/staging/wfx/sta.c                          | 1058 ++----
 drivers/staging/wfx/sta.h                          |   20 +-
 drivers/staging/wfx/traces.h                       |   14 +-
 drivers/staging/wfx/wfx.h                          |   43 +-
 drivers/staging/wilc1000/fw.h                      |  119 +
 drivers/staging/wilc1000/hif.c                     |   90 +-
 drivers/staging/wilc1000/hif.h                     |   19 -
 drivers/staging/wilc1000/netdev.c                  |   63 +-
 drivers/staging/wilc1000/netdev.h                  |    1 -
 drivers/staging/wilc1000/sdio.c                    |  178 +-
 drivers/staging/wilc1000/spi.c                     |  285 +-
 drivers/staging/wilc1000/wlan.c                    |  192 +-
 drivers/staging/wilc1000/wlan.h                    |    2 +
 drivers/staging/wilc1000/wlan_cfg.c                |  152 +-
 drivers/staging/wilc1000/wlan_if.h                 |    1 +
 drivers/staging/wlan-ng/prism2mgmt.c               |    2 +-
 include/linux/b1pcmcia.h                           |   21 -
 include/linux/iio/accel/kxcjk_1013.h               |    3 +
 include/linux/iio/adc/ad_sigma_delta.h             |    2 +
 include/linux/iio/buffer_impl.h                    |    6 +-
 include/linux/iio/common/st_sensors.h              |   12 +-
 include/linux/iio/common/st_sensors_i2c.h          |   10 -
 include/linux/iio/frequency/adf4350.h              |    4 -
 include/linux/iio/imu/adis.h                       |  164 +-
 include/linux/iio/magnetometer/ak8975.h            |   17 -
 include/linux/iio/types.h                          |    2 +
 include/linux/isdn/capilli.h                       |   18 -
 include/linux/isdn/capiutil.h                      |  456 ---
 include/linux/kernelcapi.h                         |   75 -
 include/linux/platform_data/ad7266.h               |    3 -
 include/linux/platform_data/ads1015.h              |   23 -
 include/uapi/linux/b1lli.h                         |   74 -
 include/uapi/linux/gigaset_dev.h                   |   39 -
 include/uapi/linux/hysdn_if.h                      |   34 -
 351 files changed, 7825 insertions(+), 40990 deletions(-)
</cut>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1632023087.92.1580389624753.JavaMail.javamailuser%40localhost.

------=_Part_91_1253531651.1580389624178--
