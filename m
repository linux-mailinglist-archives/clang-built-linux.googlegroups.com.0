Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBBEM7HWAKGQEAUK2K6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CD06D19B5
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Oct 2019 22:41:41 +0200 (CEST)
Received: by mail-wm1-x33a.google.com with SMTP id l3sf1568302wmf.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Oct 2019 13:41:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570653701; cv=pass;
        d=google.com; s=arc-20160816;
        b=ag0vthnVI8WQws4hywAzBxTdvcp6JqZ6+zcWHtNrMdcnlbpui1NdlxZilSaWqxk1AE
         ZuWZkZLtSo9yfp6TX36OB/VLs7Kapn4q/45a9qDIxTSvf6+IXHN6YLNrBFnHUSvc1hTi
         wAUk7Y6ZP4XGbmulUzRkbNPWsRLi2XuUkkYR3y3UfVrkBnzld7/Njxo60PD9X6K68Qqc
         cxvkLSn7Ee03vhkr22TX4Ag59ik8amjoXnJdw0dmWQQWh3hikpuv+aSxM5WIf3zXKOYC
         4V1aQB/i/cSQataCT0wDi6hO3I8GTxZrd+x0rtEU7xz4E5niDOecuPjU/4Kcr5IXSuVR
         KdTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=m6O28ThBk/h0AYnRYJvwBTvyRC5wSdVesrLAtRwEFsc=;
        b=Z7lohBI7ozIJwwcDwbmlkFmYwXGSJ0muoDRddArhqhr9OmBJNMtIb91iUXWTU56rGw
         iypeGbEhcKS+izXBiyET5SIXLXK+Prg7kJVVeXfbyNMx938AlSOVBSPDr2TFhd1P8qnr
         I/An0iS5Ee7uDTSvw7V18h5gWl/rD8zXarOVQ4uleDt5H40CgHN0iMwkc8DRkmZYqAvT
         zvs7bizA9b2FPi+tcHmNlFtzLAoa69qe/Z0BjDyzPlcYHrERNB+SphZ1HDnRo61IRXsa
         xIBbFaWmGfzPx78eWonVgzKw6L0jdA83Y3FFX3bDoJNp57vOfOkHviy45FTXbsH7NWdp
         12gA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=WxNv25vr;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m6O28ThBk/h0AYnRYJvwBTvyRC5wSdVesrLAtRwEFsc=;
        b=orKJ6OxxFUptF/FCU7d0sXk1vK9nCCBDV1LPBRgJliccPoVHhFC7zblfk9Kt5EcO4I
         vOb8KnB8GE/WP0mPc5cKhOQeF/IpHFq+XijEVqcQNSSWA+cGW/kd91T/N+rgLibWNuPR
         YW9QORPKKSDUgS49q8uP78tc87eeoA9rAXZJsZ805cU/GbOL8F+1sjo0VbXNrcmvpFTw
         Eg1ZqyDzY7flhTilyLqf0nF9sxirb6yNy2yFSbWeXOW7UBTHAStLGTeozdjhxpYPr/wS
         ZPESlxgIdgVkZgz9aNE6qcY14SLF61Gv4aIr7jbVY9xgpvZG1bPG4F8wZ6F35m7Astj2
         U3DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=m6O28ThBk/h0AYnRYJvwBTvyRC5wSdVesrLAtRwEFsc=;
        b=gmN4DVF5WmG9tkbmOshy5hm1kkL97M3zC6uYSe5TuLiQKw96W7ZAt/yHnnCydb75rd
         2Fhi6cr3+c8i4QprMMgzuex9FxG1MMTN8IFiTjkqyUqALdEZM+KjEzfHpPn/2NFwHNoR
         UjmHUtNcA24OiBO2hyEsOZMBbN55vYBmH1Is7j8uj9heRppac/sm5m2Y3tZEcijUnqNL
         VzhdqpUyncAFde3x67+E9REEoETNVKGSG9y3rjSj8ZCHPttGqCH9/eGfUIWrpZcnW1H4
         OhnOQ6o5tb/Gi+aZafclvlOOqYmXN6v1jy+H7VoSIIv2N0v6tF9hbLtSenlgDOzBjLlF
         w2Kg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWUQljRkdzsDKbt46CoEqYEmy6UW3/F4CT4uvdWEB0xtZuBpLEp
	8lu1HwCKUS+9z+44fbPjOj4=
X-Google-Smtp-Source: APXvYqx7dRnuOYt4sbTxjodXM8XgOZ883vPPGzbmNpm7XjOiPqypsYULhLW4zsUwFbDxwamzLCxl3w==
X-Received: by 2002:adf:dbcf:: with SMTP id e15mr4684896wrj.134.1570653700976;
        Wed, 09 Oct 2019 13:41:40 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:99d7:: with SMTP id b206ls577574wme.2.canary-gmail; Wed,
 09 Oct 2019 13:41:40 -0700 (PDT)
X-Received: by 2002:a7b:cf30:: with SMTP id m16mr4158338wmg.89.1570653700370;
        Wed, 09 Oct 2019 13:41:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570653700; cv=none;
        d=google.com; s=arc-20160816;
        b=Sa/nXJUQBE6/9fpzLnxvdGbZoaRi4M4DMBgRG5e0IWOmfufAgVkWBdGUof/FxHtG/E
         xbSUfIv/gB3+xEmMh1Fcpz+NqVmNBrodx0eEZRtwyXLhyZ4/qDlv3PEREcBoMbvLeddl
         h2x7pjMZczm0aHdROouLXAL3b9Yef25dotgZ2VPuYqm73El3PjWrz5fhQN1MxBgyiXVY
         v3yOefOT1OzAkhW9aewM7/oA4FnShH3/AI7UUgnk+LSp+dLDWQ+JxkK2IMIAL1BeoN0q
         ttTmYQXadV5MJOCrDCW0kHo4/BZBGQOeblxcsb474eqkcgD3QRhihZ1sliiglDE+30gE
         Zvjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=tKxIqZaGiIZbrcpQmZNhRc78ngIxmKtJ7WH1CMEhs2I=;
        b=ZQoen/Xv6H2yK1Orbz8WPSbAkx4iWP3wa6rl6LajytWTBACcvc0qSz+TRuVyHK7mzJ
         punZ/Jrp+HGyu6qbc9HAax9dLLBq0+TZidMRjibC4+IEYYJNhm8a3iDHVEgSlFFZCP+P
         0e1+Z22P2QAPbfWYQmbBWNgEQclFjdFjdqrQ/4kUcVHbyEkXylvOM55NTq081fjmNusu
         nWIsCTnkHUvChX2vDd8ByxGkBM3RmeHjQDVrqBAWiV8Uxb7YzHDpu0R60dYOA+x44iwm
         WksMrqLlnxblc0LatYX5CFwtlLTr46X9Y8NjeiaiAHT2QuwAVt3LQ3iQIfS9JepNOsXf
         dejw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=WxNv25vr;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com. [2a00:1450:4864:20::242])
        by gmr-mx.google.com with ESMTPS id o10si257675wrm.5.2019.10.09.13.41.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Oct 2019 13:41:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::242 as permitted sender) client-ip=2a00:1450:4864:20::242;
Received: by mail-lj1-x242.google.com with SMTP id a22so3917051ljd.0
        for <clang-built-linux@googlegroups.com>; Wed, 09 Oct 2019 13:41:40 -0700 (PDT)
X-Received: by 2002:a2e:8310:: with SMTP id a16mr3673167ljh.48.1570653699554;
        Wed, 09 Oct 2019 13:41:39 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id h3sm730871ljf.12.2019.10.09.13.41.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2019 13:41:38 -0700 (PDT)
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
Subject: [PATCH v4 bpf-next 00/15] samples: bpf: improve/fix cross-compilation
Date: Wed,  9 Oct 2019 23:41:19 +0300
Message-Id: <20191009204134.26960-1-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=WxNv25vr;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
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
https://lkml.org/lkml/2019/9/16/231

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
  samples/bpf add makefile.target for separate CC target build
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191009204134.26960-1-ivan.khoronzhuk%40linaro.org.
