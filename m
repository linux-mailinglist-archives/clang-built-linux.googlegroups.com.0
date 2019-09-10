Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBLX23XVQKGQEQW3NZWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x538.google.com (mail-ed1-x538.google.com [IPv6:2a00:1450:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 14539AE84A
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Sep 2019 12:38:39 +0200 (CEST)
Received: by mail-ed1-x538.google.com with SMTP id f5sf10059589edr.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Sep 2019 03:38:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568111918; cv=pass;
        d=google.com; s=arc-20160816;
        b=B868MstTEgOmyKhQJFtJLWwICHpAtv9hKRwdJ7KR5fpyqcFgr+sAaVJjrlJY1jAA0L
         mYFlU8NAV1eOmBtZfymiFn/eD3F++PniWVoegiOFbBh1hmhmH5r7ontExihfoMkn3cdi
         dZ6pJ4bOyIEGpQYPoMRRWDllsFcCaWt6s2FMhSF7+oKVQPKTuhWq/4Jf6zmoq2cJlUQz
         ntoBMeAWACJ1hYOh3kGicyfeIo+HspzESwiSRpugf0GMxdRpBSCsWnbfaLzq5sr01MQv
         HtB00erUGjJUx1Fb2iGIxdH8icn1iSWk9KRHwgMv+XZJ4Zf022mscgFyTsbifxp3HIPy
         sdaw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=QGPLGCDUnL9Y/FVr9eg8sAZHZ+kXRo1e84LUnP7h0RY=;
        b=pkFth5h7GGSLTpr6vXKFpQO0egjBS+mi1BRBbjKT8PkNNnzMBiHMuuPAQvqdW/QHZt
         U7YhNsqokImScsOFPpUR0Zgjl+tmischc+P6wjarsEB+JyfCVlJdTt9JuXv8ScRI9IVX
         jiNf45RTPHZYhT30JeoLY0Dvt29L0LNfqi/ISioJkkr+OdfjYt+HPAhJBrzHUvth9BIb
         KjIXmB7ponGMEbA7hzrJNy20UabxCHJhseQfDTr/ITYg9Qin0ISnsqJqneCk1Cf6EF/W
         tvaIY4xOSqv5d6MgAgdUViFtLGdg0ZGg4H3YVyZHYXRwUWCML0jPycI5jjXNbpM8m18k
         qLCA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=XbS41MO2;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QGPLGCDUnL9Y/FVr9eg8sAZHZ+kXRo1e84LUnP7h0RY=;
        b=hXsbTet7xf9CGdSCt21RmRKU3sOV8w9bZVEgN1ZLKRKKy+thchrWJdRYMHgokB/C6Q
         LdVpX/6FxoSLzwB3Jf8vy+Ip0obLlCNtG0D+3VKs4onlNlZBCHc9MJfxAuj24l1Yj34K
         iwUNYM/B06FJix+IqNdi+Gf+wLhI84OKz0DvDGaOC+RnKBsg8t3suzA6UDzKePvIjiVo
         G7Hpu5B08Y6f0/faRRrEf21ukFA774jxErLGsrZZLHmL4UUJqauAfWQ8hVTxyCUBY7OQ
         5PTYCHomJH5/DIu5E8z/CTQ98MaZ9wSsWUg11vgKFzeb5jAAVPR5ZOKcP/ZOqeyTaQPS
         grYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QGPLGCDUnL9Y/FVr9eg8sAZHZ+kXRo1e84LUnP7h0RY=;
        b=alEv0nO+dnQh5pym74nxlWgWfTxtt7pDoQyHh6HVn8yfUzsnD99jMfOVeQcDu+GOGT
         DbANKNtV/QtDNJ9uCih5GgmQwVGO/t3Mdbvlc+4H9t7T6QktAXxtnO1qzuUloWZdDg60
         qh7EdIXI+rI8SaLZsf57QKskhWHsEf1e2bm2c+zo9wfpELXQHu9g8MZKWJi1jKuvqPec
         H9Sx0nXcg09EM2bspENpUNRofH+Illv8uFy51TkGjXJAnv7X4d2kVA5cxl+iw6rjf+PF
         OPqziee+SgQpLx0v0rPV+fWrYTNzaALa4NMZi9meKfJZWuX0weYWoDWZYh9BbbsEoGFE
         /70A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV14Klt0yJrE412vAQQddpiMHNTkISgo0JRjonAqTg2vXaUti7W
	SkwnF26l9aGNlKmh4VNyZ30=
X-Google-Smtp-Source: APXvYqwdpxfmY8JVoWGcDr0CLCsxNlPwUUUSGwmxlZ1eM6Auxnp8pYrb+qLFHRHY9CGXcQmPF+ET0w==
X-Received: by 2002:a05:6402:14da:: with SMTP id f26mr29704147edx.165.1568111918735;
        Tue, 10 Sep 2019 03:38:38 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:326:: with SMTP id q6ls4499196edw.0.gmail; Tue, 10
 Sep 2019 03:38:38 -0700 (PDT)
X-Received: by 2002:aa7:d488:: with SMTP id b8mr24508732edr.90.1568111918337;
        Tue, 10 Sep 2019 03:38:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568111918; cv=none;
        d=google.com; s=arc-20160816;
        b=a8/yJbRyZFogfAt21PoapUzQjg5lvuBU/BEnfZSglBFxnXN2nq52d1yCVeLOziM58m
         4oNw5cZAIEvSg3cX9SR/fV6PBznxuUOpbHuGLX8xXLYlaP94c/7bUSTGFpCT9w3WUUQf
         GkaMcQZofm2rY8H3ccG6rrdKysgHDnw6WVm3E6ve86cbLNIbGDqpt2oW5L7kgmf+600u
         QG8eD+Ku3Nmx/vWuYxkHpU7SClw/JfstiQdkWTDTWTotXWtot+KdZS/lLCut2ShvJn+L
         K+0UZWTWRisvDblLZQrud2R3eletE1nULkmFDBVqkyaQ7HnRSqU9PpnJpLUCUzfivLBS
         O65A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=lE9SLT+Epa1yWUlST5UPew6aiB+QEt/X8AxyplMCiDk=;
        b=n/DUNsCcG3L+O03f7OsIy3k8g+1IzH07P5Hw9xuimAC2atZQVsQMjb+MuM3a+CubJ9
         l56JhV/9L2kD5OJDWrsB2oO/3DEjg4c3l6mOVhIPBsBBpFU4Mr0ShkEOYllA/5k0ZQVS
         HyFqhVNKy2+fIzdTXRmKx2/0gJy7Ob6DQs0YJR1kYHaPNRbKXKvOSovzz1bP5NJe7aV5
         RPPVhKuMVRwaA/NUb63va2swYFoVCSdwzhxC+fjdf1QLMKIsX/uW914STTVYgTczfzez
         s3Kry1TpwJWvYWu+thL9iRwrmnGq82ul5nidGnTObX5oKsG8fx1BT3xfIG/VIzHwzJEx
         t+GA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=XbS41MO2;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com. [2a00:1450:4864:20::142])
        by gmr-mx.google.com with ESMTPS id c31si588907edb.0.2019.09.10.03.38.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Sep 2019 03:38:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::142 as permitted sender) client-ip=2a00:1450:4864:20::142;
Received: by mail-lf1-x142.google.com with SMTP id r22so1728061lfm.1
        for <clang-built-linux@googlegroups.com>; Tue, 10 Sep 2019 03:38:38 -0700 (PDT)
X-Received: by 2002:a19:48c3:: with SMTP id v186mr19952832lfa.141.1568111917725;
        Tue, 10 Sep 2019 03:38:37 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id g5sm4005563lfh.2.2019.09.10.03.38.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Sep 2019 03:38:36 -0700 (PDT)
From: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
To: ast@kernel.org,
	daniel@iogearbox.net,
	yhs@fb.com,
	davem@davemloft.net,
	jakub.kicinski@netronome.com,
	hawk@kernel.org,
	john.fastabend@gmail.com
Cc: linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
Subject: [PATCH bpf-next 00/11] samples: bpf: improve/fix cross-compilation
Date: Tue, 10 Sep 2019 13:38:19 +0300
Message-Id: <20190910103830.20794-1-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=XbS41MO2;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Content-Type: text/plain; charset="UTF-8"
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

This series contains mainly fixes/improvements for cross-compilation
but not only, tested for arm, arm64, but intended for any arch.
Also verified on native build (not cross compilation) for x86_64
and arm.

Initial RFC link:
https://lkml.org/lkml/2019/8/29/1665

Prev. version:
https://www.spinics.net/lists/netdev/msg597823.html

Besides the patches given here, the RFC also contains couple patches
related to llvm clang
  arm: include: asm: swab: mask rev16 instruction for clang
  arm: include: asm: unified: mask .syntax unified for clang
They are necessarily to verify arm build.

The change touches not only cross-compilation and can have impact on
other archs and build environments, so might be good idea to verify
it in order to add appropriate changes, some warn options could be
tuned also.

All is tasted on x86-64 with clang installed (has to be built containing
targets for arm, arm64..., see llvm -v, usually it's present already)

Instructions to test native on x86_64
=================================================
Native build on x86_64 is done in usual way and shouldn't have difference
except HOSTCC is now printed as CC wile building the samples.

Instructions to test cross compilation on arm64
=================================================
#Toolchain used for test:
gcc version 8.3.0
(GNU Toolchain for the A-profile Architecture 8.3-2019.03 (arm-rel-8.36))

# Get some arm64 FS, containing at least libelf
I've used sdk for TI am65x got here:
http://downloads.ti.com/processor-sdk-linux/esd/AM65X/latest/exports/\
ti-processor-sdk-linux-am65xx-evm-06.00.00.07-Linux-x86-Install.bin

# Install this binary to some dir, say "sdk".
# Configure kernel (use defconfig as no matter), but clean everything
# before.
make ARCH=arm64 -C tools/ clean
make ARCH=arm64 -C samples/bpf clean
make ARCH=arm64 clean
make ARCH=arm64 defconfig

# The kernel version used in sdk doesn't correspond to checked one,
# but for this verification only headers need to be syched,
# so install them:
make ARCH=arm64 headers_install

# or on SDK if need keep them in sync (not necessarily to verify):

make ARCH=arm64 INSTALL_HDR_PATH=/../sdk/\
ti-processor-sdk-linux-am65xx-evm-06.00.00.07/linux-devkit/sysroots/\
aarch64-linux/usr headers_install

# Build samples
make samples/bpf/ ARCH=arm64 CROSS_COMPILE="aarch64-linux-gnu-"\
SYSROOT="/../sdk/ti-processor-sdk-linux-am65xx-evm-06.00.00.07/\
linux-devkit/sysroots/aarch64-linux"

Instructions to test cross compilation on arm
=================================================
#Toolchains used for test:
arm-linux-gnueabihf-gcc (Linaro GCC 7.2-2017.11) 7.2.1 20171011
or
arm-linux-gnueabihf-gcc
(GNU Toolchain for the A-profile Architecture 8.3-2019.03 \
(arm-rel-8.36)) 8.3.0

# Get some FS, I've used sdk for TI am52xx got here:
http://downloads.ti.com/processor-sdk-linux/esd/AM57X/05_03_00_07/exports/\
ti-processor-sdk-linux-am57xx-evm-05.03.00.07-Linux-x86-Install.bin

# Install this binary to some dir, say "sdk".
# Configure kernel, but clean everything before.
make ARCH=arm -C tools/ clean
make ARCH=arm -C samples/bpf clean
make ARCH=arm clean
make ARCH=arm omap2plus_defconfig

# The kernel version used in sdk doesn't correspond to checked one, but
headers only should be synched, so install them:

make ARCH=arm64 headers_install

# or on SDK if need keep them in sync (not necessarily):

make ARCH=arm INSTALL_HDR_PATH=/../sdk/\
ti-processor-sdk-linux-am57xx-evm-05.03.00.07/linux-devkit/sysroots/\
armv7ahf-neon-linux-gnueabi/usr headers_install

# Build samples
make samples/bpf/ ARCH=arm CROSS_COMPILE="arm-linux-gnueabihf-"\
SYSROOT="/../sdk/ti-processor-sdk-linux-am57xx-evm-05.03\
.00.07/linux-devkit/sysroots/armv7ahf-neon-linux-gnueabi"


Based on bpf-next/master

v2..v1:
- restructured patches order
- split "samples: bpf: Makefile: base progs build on Makefile.progs"
  to make change more readable. It added couple nice extra patches.
- removed redundant patch:
  "samples: bpf: Makefile: remove target for native build"
- added fix:
  "samples: bpf: makefile: fix cookie_uid_helper_example obj build"
- limited -D option filter only for arm
- improved comments
- added couple instructions to verify cross compilation for arm and
  arm64 arches based on TI am57xx and am65xx sdks.
- corrected include a little order

Ivan Khoronzhuk (11):
  samples: bpf: makefile: fix HDR_PROBE "echo"
  samples: bpf: makefile: fix cookie_uid_helper_example obj build
  samples: bpf: makefile: use --target from cross-compile
  samples: bpf: use own EXTRA_CFLAGS for clang commands
  samples: bpf: makefile: use D vars from KBUILD_CFLAGS to handle
    headers
  samples: bpf: makefile: drop unnecessarily inclusion for bpf_load
  samples: bpf: add makefile.prog for separate CC build
  samples: bpf: makefile: base progs build on makefile.progs
  samples: bpf: makefile: use CC environment for HDR_PROBE
  libbpf: makefile: add C/CXX/LDFLAGS to libbpf.so and test_libpf
    targets
  samples: bpf: makefile: add sysroot support

 samples/bpf/Makefile      | 172 ++++++++++++++++++++++----------------
 samples/bpf/Makefile.prog |  77 +++++++++++++++++
 samples/bpf/README.rst    |  10 +++
 tools/lib/bpf/Makefile    |  11 ++-
 4 files changed, 194 insertions(+), 76 deletions(-)
 create mode 100644 samples/bpf/Makefile.prog

-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190910103830.20794-1-ivan.khoronzhuk%40linaro.org.
