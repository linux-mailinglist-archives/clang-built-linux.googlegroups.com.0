Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBJUZ77WAKGQEDFVT3BY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 91FF8D35C2
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Oct 2019 02:28:22 +0200 (CEST)
Received: by mail-lf1-x140.google.com with SMTP id f3sf1685630lfa.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Oct 2019 17:28:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570753702; cv=pass;
        d=google.com; s=arc-20160816;
        b=ExE1n3TWk7HXVrmO8UPaP8Zmtk6N/rsSsEgvYPQmA6srhrT9WYn0Fe6uqciaNNQJoy
         dM8wLyxMRv51rHRLen0yi5E5RJLpFwEXMFTyqnup+kvjHzai1PgvfDmN51z+a/LqsS/k
         QZZUfprzcYZWZ/Mz+CvvsHcmQ8g/mjZcdVT4zlHC8wbrKM7x9IsUpfiKYmgdG0H86Qzc
         yC0NAWZ33YTF8bR3c0jC9XtUL2XanGKu8aDsWIRPF8/qNwjNTA/is6dA6j594MU9Hia+
         hp/0n/Sfpj2awxhyvuAstkMYv4yjrdQTjHlRtpbdPJb+cnzmFdkGe/KGfI546VpUYj4y
         uGpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=vIf0pvoAoYPsCOYt34TeMevWaI7jCYxzuLnGnv/Myt8=;
        b=dRRHkAGqCe/oWDo/2IB2h0FaaajWxDQQ+jCgNlarL631Ih8ExiWxGb9LVqGU9UXfWD
         xB5stJfnlO3O/4jdMPDx1LKruHQ/2fedvFyA73Ob+DN2N52PLnlQvYPPndoV4oenfxiB
         mHDLC3baVEFS4EqtZ85eZCLrbP6Dke0+98H4DoatZE4Q/5ZG4UjlMMPKSfjgKnRqXslr
         4wvxD++DOq8w+iGnaR+YtJ5uXLmUuGEANCVN213KojlLECbaNrYAi0B+Zv3SpUYNRQdi
         Lll79U3mf+6OPQoCt2+8Zq6zk+MGZmLdKnLZMvKDfK0kPLjseOz0Vv64cePVuP+pWrTu
         3Vdw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=iAsoVQsf;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vIf0pvoAoYPsCOYt34TeMevWaI7jCYxzuLnGnv/Myt8=;
        b=LHVg9aFQHB4wBol1KHSwTIhkqJAHcmeDWMqLoFaJ9vNtG06EGSKjkMvl9MyCWUkkKv
         yXG30Xa3qff1fST5JQ3xwEZSURdWYbONMLnsCr4Mmmlc0nkUB/4ub/KU4v5gbllE46eX
         GEeyQNYqZwbMdi7w3sChF9MPUWx6bOsc5Iyu5zCYs/xTPSN1riCp1uJmIW3DKE9F2sz/
         sPmOc48tpolV5f3wV1iJd0jNnkdw4veD2qCBYTZtnX8TvJFA/SnaUV3PnQti+qRdN6jO
         nd54tS2IXw7KGNHxeiWxpk51mD/yUtGF/vTiA9536XBI6RjgSIrJUOgDfyc2SK6zW61y
         hzwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vIf0pvoAoYPsCOYt34TeMevWaI7jCYxzuLnGnv/Myt8=;
        b=MCt14bZ347CnNQY+4z/+eoPA+aSVCIZBOBPosQL4avlYukOBJu5Qu2Uy7d1LIU9bD9
         VeTMCvUqwcCgoo84RPLO7hxzZzXM6himZ+JMfdzKWbZC9u1ti5aV5DB84B3/qkmi9JzD
         hsTlSx+z7uC1ctfSnbIuzl74i3KXYm79u1mviSnyOe7ABo/3WSBqfgOttH3HxmWMfUjc
         bfC4jsFWtFD5KmwtqIg4Q8kZmqe03mwbQwl27iFfmd0qbrKnjGNSo0J7qlA1LBlWl1DQ
         6NWvzSLnQDMzURp2vpwyJSq3icTL71ieH+3iD0Bxng1anWm9kgE8vztR9ICMhIy6wXAL
         9b+Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVqviA8L0kzG5eoKsQmj/hZqhwVgtACAaQJ43uHg1gge5FPGRrb
	6vvBYbOO/HGEfSl+3mUTn0Q=
X-Google-Smtp-Source: APXvYqwbFPQEZ999SBpY1SHbEekcbM58WeTVwlVjsNICk+2O6Uhn9+GT9wru5CQ/hlqJCdc1M3tvSg==
X-Received: by 2002:a19:2394:: with SMTP id j142mr7345743lfj.13.1570753702070;
        Thu, 10 Oct 2019 17:28:22 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:95d4:: with SMTP id y20ls735873ljh.15.gmail; Thu, 10 Oct
 2019 17:28:21 -0700 (PDT)
X-Received: by 2002:a2e:1214:: with SMTP id t20mr8016658lje.240.1570753701533;
        Thu, 10 Oct 2019 17:28:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570753701; cv=none;
        d=google.com; s=arc-20160816;
        b=BqFOPnJTAIRGMB9cgtypmASsDwjlv3Br0/kWyN51Kkrau5g2bJQlh3vpIEIOEPykW9
         0x04/zXHxLUzO1S9hAjJ5IqoRp/3MbCJGbd9CX/b9F8hzdVuhpUqTGp/2i+EF3eKlb3u
         hk0TfxNpK5m64/rm+87vX8tcgxe6Tjp5vaPu86f4MLbW/2Tyn3Svxao/IgGypApICYtM
         BvLOrKfNLqNlnYmI9TWg9g466qlhtYJGZv19P5jYxk+FOBhlwJrlLDhK7yAYPO6sKfet
         wMFbNvUhk/Wh57l83xZ9CcMCVGmmUg7ptrj4bipwD1HY2DbTvy+gke3ExMwECVSpR7tq
         VmBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=rEOxUviEkcCW48fJxCH3+DMoe12h6LP7M/4uKtZsbx8=;
        b=oyheQBFpEePdRzHPXJvnj75X5m61gKVli6GnoWkY3H7f3/Uga2EFDLLin+WKK631Ch
         92yvOyIQZrH5PTqujG9qGcsGLl7WYdhiXD+mzE+bioDNoUX7EKK9tVaD+0Y0jtgA/eD4
         ha7ebvSkxIBuPaJ9Psvk8f9/DsTZ7Pf9vDzIvwodUB6Ei4P2VaG99qvwuSVHtu80s6CV
         Vy/UPHtmOjiVoesNyJhC0yopNys0/oxvTSv2cotKi9tHBzNpXvWT4ibdlMm4hXaHJMFo
         Yf8xIWfAinYRmR4Vj4dttuRXp4coR4sKArcfYezb7VQcyK2LLKrz/WOPuK2fV+GX5him
         p22A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=iAsoVQsf;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com. [2a00:1450:4864:20::244])
        by gmr-mx.google.com with ESMTPS id q25si87167ljg.5.2019.10.10.17.28.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2019 17:28:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::244 as permitted sender) client-ip=2a00:1450:4864:20::244;
Received: by mail-lj1-x244.google.com with SMTP id v24so8044898ljj.3
        for <clang-built-linux@googlegroups.com>; Thu, 10 Oct 2019 17:28:21 -0700 (PDT)
X-Received: by 2002:a2e:584b:: with SMTP id x11mr8035721ljd.90.1570753701013;
        Thu, 10 Oct 2019 17:28:21 -0700 (PDT)
Received: from localhost.localdomain (88-201-94-178.pool.ukrtel.net. [178.94.201.88])
        by smtp.gmail.com with ESMTPSA id 126sm2367010lfh.45.2019.10.10.17.28.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2019 17:28:20 -0700 (PDT)
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
	ilias.apalodimas@linaro.org,
	sergei.shtylyov@cogentembedded.com,
	Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
Subject: [PATCH v5 bpf-next 00/15] samples: bpf: improve/fix cross-compilation
Date: Fri, 11 Oct 2019 03:27:53 +0300
Message-Id: <20191011002808.28206-1-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=iAsoVQsf;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
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
but not only, tested for arm, arm64, and intended for any arch.
Also verified on native build (not cross compilation) for x86_64
and arm, arm64.

Initial RFC link:
https://lkml.org/lkml/2019/8/29/1665

Prev. version:
https://lkml.org/lkml/2019/10/9/1045

Besides the patches given here, the RFC also contains couple patches
related to llvm clang
  arm: include: asm: swab: mask rev16 instruction for clang
  arm: include: asm: unified: mask .syntax unified for clang
They are necessarily to verify arm 32 build.

Also, couple more fixes were added but are not merged in bpf-next yet,
they can be needed for verification/configuration steps, if not in
your tree the fixes can be taken here:
https://www.spinics.net/lists/netdev/msg601716.html
https://www.spinics.net/lists/netdev/msg601714.html
https://www.spinics.net/lists/linux-kbuild/msg23468.html

Now, to build samples, SAMPLE_BPF should be enabled in config.

The change touches not only cross-compilation and can have impact on
other archs and build environments, so might be good idea to verify
it in order to add appropriate changes, some warn options could be
tuned also.

All is tested on x86-64 with clang installed (has to be built containing
targets for arm, arm64..., see llc --version, usually it's present already)

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

# Enable SAMPLE_BPF and it's dependencies in config

# The kernel version used in sdk doesn't correspond to checked one,
# but for this verification only headers need to be syched,
# so install them (can be enabled in config):
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
# headers only should be synched,
# so install them (can be enabled in config):

make ARCH=arm headers_install

# or on SDK if need keep them in sync (not necessarily):

make ARCH=arm INSTALL_HDR_PATH=/../sdk/\
ti-processor-sdk-linux-am57xx-evm-05.03.00.07/linux-devkit/sysroots/\
armv7ahf-neon-linux-gnueabi/usr headers_install

# Build samples
make samples/bpf/ ARCH=arm CROSS_COMPILE="arm-linux-gnueabihf-"\
SYSROOT="/../sdk/ti-processor-sdk-linux-am57xx-evm-05.03\
.00.07/linux-devkit/sysroots/armv7ahf-neon-linux-gnueabi"


Based on bpf-next/master

v5..v4:
- any changes, only missed SOBs are added

v4..v3:
- renamed CLANG_EXTRA_CFLAGS on BPF_EXTRA_CFLAGS
- used filter for ARCH_ARM_SELECTOR
- omit "-fomit-frame-pointer" and use same flags for native and "cross"
- used sample/bpf prefixes
- use C instead of C++ compiler for test_libbpf target

v3..v2:
- renamed makefile.progs to makeifle.target, as more appropriate
- left only __LINUX_ARM_ARCH__ for D options for arm
- for host build - left options from KBUILD_HOST for compatibility reasons
- split patch adding c/cxx/ld flags to libbpf by modules
- moved readme change to separate patch
- added patch setting options for cross-compile
- fixed issue with option error for syscall_nrs.S,
  avoiding overlap for ccflags-y.

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

Ivan Khoronzhuk (15):
  samples/bpf: fix HDR_PROBE "echo"
  samples/bpf: fix cookie_uid_helper_example obj build
  samples/bpf: use --target from cross-compile
  samples/bpf: use own EXTRA_CFLAGS for clang commands
  samples/bpf: use __LINUX_ARM_ARCH__ selector for arm
  samples/bpf: drop unnecessarily inclusion for bpf_load
  samples/bpf: add makefile.target for separate CC target build
  samples/bpf: base target programs rules on Makefile.target
  samples/bpf: use own flags but not HOSTCFLAGS
  samples/bpf: use target CC environment for HDR_PROBE
  libbpf: don't use cxx to test_libpf target
  libbpf: add C/LDFLAGS to libbpf.so and test_libpf targets
  samples/bpf: provide C/LDFLAGS to libbpf
  samples/bpf: add sysroot support
  samples/bpf: add preparation steps and sysroot info to readme

 samples/bpf/Makefile                          | 164 ++++++++++--------
 samples/bpf/Makefile.target                   |  75 ++++++++
 samples/bpf/README.rst                        |  41 ++++-
 tools/lib/bpf/Makefile                        |  23 +--
 .../bpf/{test_libbpf.cpp => test_libbpf.c}    |  14 +-
 5 files changed, 218 insertions(+), 99 deletions(-)
 create mode 100644 samples/bpf/Makefile.target
 rename tools/lib/bpf/{test_libbpf.cpp => test_libbpf.c} (61%)

-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191011002808.28206-1-ivan.khoronzhuk%40linaro.org.
