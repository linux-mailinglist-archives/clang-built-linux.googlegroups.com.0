Return-Path: <clang-built-linux+bncBDSIZNM7U4BRB4OT7XVQKGQEBKEKDGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 0439EB38A5
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 12:54:42 +0200 (CEST)
Received: by mail-lf1-x13e.google.com with SMTP id n5sf7733346lfi.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 03:54:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568631281; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y/UbGJdZggmOfLSnSUixgSnRioAgQcsZw8CFrRwwfaGgccif+gnXUivkoKsR/pD74O
         YBpqut/2F7clPHzBvRh6bLEPGJPAR/bV9fiqYQxb4deVBYfUJV4IBXbltbDxnKTZVdLc
         3I3NaDOOLw5g0p+7UMbv2Z2M7PoUNcA+qFd/DQRRttYkkzSv5RmVCHJkQ6H5V4+5yq3u
         1ZklYnqGraC3pBtdK3UOjCtjfkG+bY1e1/RcVp8ooWCvBWUND5gtJQNr0VkWqhZuGptn
         WP3divNoBCgvpP4qRezIsj7tUuCJM4D/E/dsKw7nt+sJdvWTbypLOuVb5sZD/YuxvJfc
         52rg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=NdBFXe380pJpZmaJGuaonAJKsaAdJ5DEIAr5psKxhMU=;
        b=JB//i1Oumz9Vs1/6jRVN9aTvJ+ZG96RcsYID031y+1nBlG+C3Qr7RrpqeLWyQzATT/
         qrJy/5nx0v7LPXFOtvKToQwR9eg+5biL6ACwcwuyC/4g4yiyy8c8F9cLXFu94gW/GuqN
         vpE7x5/iZ7cNkUEhVKEB9GzOZJKl2iBFWFUw94m1Z28R02fdDNbZOIh2BVefdxE1invL
         nAabtxisPXK1O9wzpdmdFpKIypfsnbS5HEYYUsCyYZ4a1u04MxN3rfI4MI3d/bfphJAH
         T0BMXNwqpbrP/iYwRvKVHTc/MR+ZeF/aqv/pSGJd/Tb6OPwL7TkKAu2/X+03YFPHCS5V
         3PWQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=Skv+nit2;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NdBFXe380pJpZmaJGuaonAJKsaAdJ5DEIAr5psKxhMU=;
        b=eCfX8lC018rT4XFH1KseL2AvdklBjSVpIzxdIyQXYP63/3AkRhyA49IHeYka6z215t
         Hhkk6gDFroAtd3pJJbzz25AlN87Vh7ZTdTnOM8jwTYP9I5ECpAOl8RMVegKruvYm+7EB
         kEPJ2pWLoR0MSdrpBDxPyT0MlM+vZ4/AH2+U+/g/z6Rd3zI1zo4iLcxRkG4HOy6UVZWN
         iqrOBCadDIxiifCBPo8n5BFnu7Otqt39cyuf4Uc85ffSBIBmqPBkjMK495cdXmn5Orls
         BcmAcNZt8a/bW7fk4oQfOyrMpjgdCryaaqXS0Ro6RjBf4RIhOlCCmABwmAaxXIa/BsIT
         fw1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NdBFXe380pJpZmaJGuaonAJKsaAdJ5DEIAr5psKxhMU=;
        b=UdBlvZR/ROpQigUNO6vqK4X66lR46wOcVCanmqDzkNG5TS9Gxgvwaz1u6T1MwHb6v7
         oD5aizh+BQ/ZDxdCCkkFtdm8VEanqg3S9yA41HotKkkIzSfiqWXU6ZBZ1cmRzVNRN6T4
         IFUVpodmSotIwhAoVRKrcL91e5Ay4oIyGjphhBnoBmtmIt+QbRpR5pHxQm63HtpuYdc0
         YBCIyoFGkPn7c0qYAF3faCiXwlR9qFphtV1QngLM4fn2Xvh2jnLyEK6zKxfBnCCFU7kZ
         KPP7qRBoJj815wvkFOLseydhjHVqz31YKeRTn7K7W96GDkbXEbNbbvS64oifRXt8UJj3
         Omog==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXOlHRLCGJmHBokLqZ4V8Bc9wC3B5ohuV5RHSgIbFqqnXJxQNnY
	uJJ7bfisD0Izmxab8s3ARuw=
X-Google-Smtp-Source: APXvYqyLCasu8Pco9LZX8cZQ6XY6uihY5KCI8E5XDPAVNwWLPPDWVOH6OZtNU+weSLzeiyDgPcjNlg==
X-Received: by 2002:a2e:9f12:: with SMTP id u18mr1237962ljk.23.1568631281559;
        Mon, 16 Sep 2019 03:54:41 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:1285:: with SMTP id 5ls4339662ljs.11.gmail; Mon, 16 Sep
 2019 03:54:40 -0700 (PDT)
X-Received: by 2002:a05:651c:1133:: with SMTP id e19mr1526447ljo.1.1568631280910;
        Mon, 16 Sep 2019 03:54:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568631280; cv=none;
        d=google.com; s=arc-20160816;
        b=xvBLd35fbeK92t1CMV3vjQJjheTF8SnOa/y6OL+jS49/R/iRIWeBCGCsDfd6KgJ8Jf
         2zN5/Hp5OwKP97MgtVtJy/d+/cw73qdBz/NkN7D7jHFvAKQhzYAtkMkeT0mofooGohmc
         +gob1DFZ3GzkCAe90bSo8NbWwfPcHgUQxsphJjnSnakjsQd0kkdxZYS6dITLuKO4d397
         ZA8dqcQ8Womt//+6Z1Tc8hJS9yWWHxx/6SCdhafZCs3i3MtlCNMUnAUyPaGadNWYmwGo
         dr48tiYUSQbZ5TSTzr9d2VS9sCbsNbhq9U2sIJ7oG5BMKh3UYECERtCwwrznFIwk9T6l
         nr7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=nFwBnbJl1Pzb/az0iASSF7ufSzhkXpDlNpdyZZaDLco=;
        b=B1WqCAkrDf3q8TylL2etjUFKw6gOPFYacPj6QQz7K8LzeHQtt2/uTn0INDa8yvQn+c
         KKw3fFiTc5/Tx54XmmZkfKYDxLuIH3pkLUyjLourqGNKEe26OeppgSLdHIX/M+P/hwBq
         F4lPvdrQ4z89zxjmQBQAUzK4bhkFL2DsDAp8XQoAdCdWcc3qf2Mscmqw+5mP9rMpIWqN
         YZQhdLn8Y0Pteu6Nv7SyvnJ4CylXaNN/f8qs04tc9KaOLcNDgIuD9zhpUwB04wTaelf6
         VmVcSDjzEQ+V7T57NUO1X+KSNT/+JWCXbDuEfTeUMHCldKiI8kEwJsnrZ/2DovNkbB4f
         cuUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=Skv+nit2;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com. [2a00:1450:4864:20::244])
        by gmr-mx.google.com with ESMTPS id a9si1562034lfk.5.2019.09.16.03.54.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Sep 2019 03:54:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::244 as permitted sender) client-ip=2a00:1450:4864:20::244;
Received: by mail-lj1-x244.google.com with SMTP id a22so33277183ljd.0
        for <clang-built-linux@googlegroups.com>; Mon, 16 Sep 2019 03:54:40 -0700 (PDT)
X-Received: by 2002:a05:651c:282:: with SMTP id b2mr1654522ljo.121.1568631280219;
        Mon, 16 Sep 2019 03:54:40 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id v1sm8987737lfq.89.2019.09.16.03.54.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Sep 2019 03:54:39 -0700 (PDT)
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
	sergei.shtylyov@cogentembedded.com,
	Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
Subject: [PATCH v3 bpf-next 00/14] samples: bpf: improve/fix cross-compilation
Date: Mon, 16 Sep 2019 13:54:19 +0300
Message-Id: <20190916105433.11404-1-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=Skv+nit2;       spf=pass
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
but not only, tested for arm, arm64, but intended for any arch.
Also verified on native build (not cross compilation) for x86_64
and arm.

Initial RFC link:
https://lkml.org/lkml/2019/8/29/1665

Prev. version:
https://lkml.org/lkml/2019/9/10/331

Besides the patches given here, the RFC also contains couple patches
related to llvm clang
  arm: include: asm: swab: mask rev16 instruction for clang
  arm: include: asm: unified: mask .syntax unified for clang
They are necessarily to verify arm build.

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

Ivan Khoronzhuk (14):
  samples: bpf: makefile: fix HDR_PROBE "echo"
  samples: bpf: makefile: fix cookie_uid_helper_example obj build
  samples: bpf: makefile: use --target from cross-compile
  samples: bpf: use own EXTRA_CFLAGS for clang commands
  samples: bpf: makefile: use __LINUX_ARM_ARCH__ selector for arm
  samples: bpf: makefile: drop unnecessarily inclusion for bpf_load
  samples: bpf: add makefile.target for separate CC target build
  samples: bpf: makefile: base target programs rules on Makefile.target
  samples: bpf: makefile: use own flags but not host when cross compile
  samples: bpf: makefile: use target CC environment for HDR_PROBE
  libbpf: makefile: add C/CXX/LDFLAGS to libbpf.so and test_libpf
    targets
  samples: bpf: makefile: provide C/CXX/LD flags to libbpf
  samples: bpf: makefile: add sysroot support
  samples: bpf: README: add preparation steps and sysroot info

 samples/bpf/Makefile        | 179 +++++++++++++++++++++---------------
 samples/bpf/Makefile.target |  75 +++++++++++++++
 samples/bpf/README.rst      |  41 ++++++++-
 tools/lib/bpf/Makefile      |  11 ++-
 4 files changed, 225 insertions(+), 81 deletions(-)
 create mode 100644 samples/bpf/Makefile.target

-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190916105433.11404-1-ivan.khoronzhuk%40linaro.org.
