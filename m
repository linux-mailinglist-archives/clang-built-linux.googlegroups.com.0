Return-Path: <clang-built-linux+bncBC4IFTUFXEFBBVU7UXVAKGQEQMYVGQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3a.google.com (mail-vk1-xa3a.google.com [IPv6:2607:f8b0:4864:20::a3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 4407F82F2A
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Aug 2019 12:00:55 +0200 (CEST)
Received: by mail-vk1-xa3a.google.com with SMTP id p196sf37580751vke.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Aug 2019 03:00:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565085654; cv=pass;
        d=google.com; s=arc-20160816;
        b=EnotIUTyf6tySO36mEp0d9xEbF4rIZ0mT/lSBXmm11oQLH5Ozhuq76Pj13OAoT5u4p
         ppHvopFwlbdBEKq8I1OAaKHriwOO0ecHqt728QY4/p9GUwv7v93q3CHlT2G0uFYPc/U+
         ggkFuP5pg4lY34RjukDSev5RtQb9eWL3abA02HIINulQEOuAjGKtoAgot0dymQV/s6fZ
         zsQstO3CRToAt/o5GqA5VeYXJ27uds8GcC/nBbcd7kav4ZjFM07TMYj740/wsFAtFjHX
         gMM/+/QLQYN9gK9qFHOJN0VcCVGC1M59Vu8b4tDKyNxfr8iqCJW7c4G/t8pkcRNQT/c4
         Ifew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=FL43eiIvw88EvU+AS3UPio54h6vi+rkFCGrywTBT8Ac=;
        b=OtuEnMSbfr6L4osKliHEqYm40/AnursW90e9BQAR9YYdPvezXOGLVehjldE3MEUHjf
         ZeMwxhqyoA3oJlTqaRpcvb44uX3LvPHU5R1lwf2NU/CCLHx2P2OVARVmTv5FAus0wKCt
         EdV6ALAwFRgzIxQOrdE0MNDrwwJaDlHqE1PJ6wYvbWY2foLGYHoqoxFTGsvYJRjZAE6F
         T351Tzw7FfF4dYiSNN5BCfAr5RM2qtio0o4B9yPjPvYURGiajppvW1inrt3UnbVSw2L3
         meFB0Tms5hgUpAZqZ8vwP8QkI5yM2BTrubfTd2yFeeu+Ad5ZenYrf+cQv9EedYlgPtwF
         QRIA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=llzpCKvf;
       spf=pass (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::b42 as permitted sender) smtp.mailfrom=leo.yan@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FL43eiIvw88EvU+AS3UPio54h6vi+rkFCGrywTBT8Ac=;
        b=nqt7GEY6yTIJ7+dD1biLjwkMJBDWrxzmg/uanpIftC7NeIKuqcb3wPSqi9YU2bhE7l
         4hanJk965fG0Fhc8pgYbovbHYxnQMQkX6LA0wwiLJZzIm1HUzbDuYjrhSq7TkZQHTDu5
         r9XVeIc7pxFUTjQZcyPA01nKmXaGd/mDgqiCbo3K8SdJzCM2l94C4UqzNTAAU/rOY5F3
         2ppr+XoNq8YbCaA9tmsejOuqIoDD8/KnrVY5jFO86vvjdxzos2poKtwkwQzcKdoyGw/p
         cObNXGlQDKXK+d5lZrIurIkhlOPu4pMUCxkprj0eoYSqJfZ29SutQVNG+1aUBQP9ilzI
         W0zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FL43eiIvw88EvU+AS3UPio54h6vi+rkFCGrywTBT8Ac=;
        b=KU2kQ+WGDFKfX2wnkefx0VSmqco/6WKW12EBE7d0rX2pO/NKyDi+jxbeVr5G4wMbFY
         cmmlVg97of6+keFs308or3fzpS5C2jBg3rQjWcVW2FnvzB8FfJVtxA/X3hG8AXymCYF0
         4BHeCW1UFNbPayfkoBAGQ/hMqC+kq6nsuDUMYVuVbnKiCIYX716mN7ZSJK28LqD7OL3i
         XtOyCB6WkwJXLPUhc/xRHBHbMrzuTSr3PceuW7B5VtStOaJ6WJ5xqEHdqz8leMrxkl3m
         bXtnYOlR0aeM4YyW/QVHqdXudXJ5bteSrLaSzbY0XoidUeJdZVtLA/utw70vc3K/uKnH
         iDZQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWK6escnHFr27Pimn3a1gpnEzAQaAc39v8M2V/j7GxwZqUctTBr
	8lpVT2zFLTUvI//nmJJhbxc=
X-Google-Smtp-Source: APXvYqxsx7DCgviP1oHFrG/JQ9aHVc64sb0VT4Qzl9GnZimVS2/SBfhOzsAQjQ80Gpc7Q8fCK7vPkA==
X-Received: by 2002:a1f:7383:: with SMTP id o125mr824564vkc.6.1565085654069;
        Tue, 06 Aug 2019 03:00:54 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:7a41:: with SMTP id v62ls10992988vsc.6.gmail; Tue, 06
 Aug 2019 03:00:53 -0700 (PDT)
X-Received: by 2002:a05:6102:10da:: with SMTP id t26mr1853273vsr.101.1565085653618;
        Tue, 06 Aug 2019 03:00:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565085653; cv=none;
        d=google.com; s=arc-20160816;
        b=CTwLHK41TxPpW++eToDOlnq3T5PW87Z1AZ11B/sF3TpWISv6H6iV0wPytbTJ/Y/kLC
         3tyDKzoPINK0jGvq6jemJTVA5rOv/Q6FQ265udLDXcl9mfnZZOcpxnVhZuJbzisNwvz/
         VtnWvqTn2r3UGhZO2/K17Lg853PSbamNjS9Q08+x6EoO1FV9dROIrA/v+t5gW5PX77JJ
         RNzCHA0HGBfukjLXyJPfEGhFjOJjP7yn455r/axkipvG+N2nUKXAMs2vF9BMFjmPwDCj
         FLdtbYHBzIGvuP3GfjC75oprlO0FGd63pMDAcW8lYAXzc666OXv/mNvUcPCRLLDXYHDR
         epOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=ss7tfuNN9gph1p4XOsDIlLKrMAe3sezcu2lcCyG5PrA=;
        b=0Hd7HhXLBN3+uu2TpYtrHQ0paB2qSnh4vpiOxYxRLLlxfVXJ8jJ1gr9u42zA+Pn3Zl
         tXiZn3PLKs/yl3ZKm4npUw9rODvBD6ZBMOZPWvfhHKB5J7Kd8hpH+L6IfkNlqltExoUE
         0EwMoeB6EMuQkYx4TfQRzY6IYhKO2UHGlWTpPwNMmXJsbh4+LqJB1sz2LhPziY1n92gA
         MpRHJ1kvfB3lLFylwQlWq0IqOe2p5SHVzLgGMfaKdTzHgUMPxlE9ymbRQ/Re5OeZZvcW
         sdBahrFhZKkC1MC9RUPvHuk+m3PnRjr66fj0cWsHhcxaf4VnP/B/4XPLaA+TB5JsR+Aw
         5suA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=llzpCKvf;
       spf=pass (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::b42 as permitted sender) smtp.mailfrom=leo.yan@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-yb1-xb42.google.com (mail-yb1-xb42.google.com. [2607:f8b0:4864:20::b42])
        by gmr-mx.google.com with ESMTPS id s72si4046632vkd.3.2019.08.06.03.00.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Aug 2019 03:00:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::b42 as permitted sender) client-ip=2607:f8b0:4864:20::b42;
Received: by mail-yb1-xb42.google.com with SMTP id j199so30426407ybg.5
        for <clang-built-linux@googlegroups.com>; Tue, 06 Aug 2019 03:00:53 -0700 (PDT)
X-Received: by 2002:a25:2005:: with SMTP id g5mr1786698ybg.410.1565085653130;
        Tue, 06 Aug 2019 03:00:53 -0700 (PDT)
Received: from localhost.localdomain (li1322-146.members.linode.com. [45.79.223.146])
        by smtp.gmail.com with ESMTPSA id h12sm18316685ywm.91.2019.08.06.03.00.42
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 06 Aug 2019 03:00:51 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Russell King <linux@armlinux.org.uk>,
	Oleg Nesterov <oleg@redhat.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	"H. Peter Anvin" <hpa@zytor.com>,
	x86@kernel.org,
	Arnd Bergmann <arnd@arndb.de>,
	Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Martin KaFai Lau <kafai@fb.com>,
	Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>,
	"Naveen N. Rao" <naveen.n.rao@linux.vnet.ibm.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linuxppc-dev@lists.ozlabs.org,
	linux-arch@vger.kernel.org,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Masami Hiramatsu <mhiramat@kernel.org>
Cc: Leo Yan <leo.yan@linaro.org>
Subject: [PATCH v2 0/3] arm/arm64: Add support for function error injection
Date: Tue,  6 Aug 2019 18:00:12 +0800
Message-Id: <20190806100015.11256-1-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: leo.yan@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=llzpCKvf;       spf=pass
 (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::b42
 as permitted sender) smtp.mailfrom=leo.yan@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

This small patch set is to add support for function error injection;
this can be used to eanble more advanced debugging feature, e.g.
CONFIG_BPF_KPROBE_OVERRIDE.

The patch 01/03 is to consolidate the function definition which can be
suared cross architectures, patches 02,03/03 are used for enabling
function error injection on arm64 and arm architecture respectively.

I tested on arm64 platform Juno-r2 and one of my laptop with x86
architecture with below steps; I don't test for Arm architecture so
only pass compilation.

- Enable kernel configuration:
  CONFIG_BPF_KPROBE_OVERRIDE
  CONFIG_BTRFS_FS
  CONFIG_BPF_EVENTS=y
  CONFIG_KPROBES=y
  CONFIG_KPROBE_EVENTS=y
  CONFIG_BPF_KPROBE_OVERRIDE=y

- Build samples/bpf on with Debian rootFS:
  # cd $kernel
  # make headers_install
  # make samples/bpf/ LLC=llc-7 CLANG=clang-7

- Run the sample tracex7:
  # dd if=/dev/zero of=testfile.img bs=1M seek=1000 count=1
  # DEVICE=$(losetup --show -f testfile.img)
  # mkfs.btrfs -f $DEVICE
  # ./tracex7 testfile.img
  [ 1975.211781] BTRFS error (device (efault)): open_ctree failed
  mount: /mnt/linux-kernel/linux-cs-dev/samples/bpf/tmpmnt: mount(2) system call failed: Cannot allocate memory.

Changes from v1:
* Consolidated the function definition into asm-generic header (Will);
* Used APIs to access pt_regs elements (Will);
* Fixed typos in the comments (Will).


Leo Yan (3):
  error-injection: Consolidate override function definition
  arm64: Add support for function error injection
  arm: Add support for function error injection

 arch/arm/Kconfig                           |  1 +
 arch/arm/include/asm/ptrace.h              |  5 +++++
 arch/arm/lib/Makefile                      |  2 ++
 arch/arm/lib/error-inject.c                | 19 +++++++++++++++++++
 arch/arm64/Kconfig                         |  1 +
 arch/arm64/include/asm/ptrace.h            |  5 +++++
 arch/arm64/lib/Makefile                    |  2 ++
 arch/arm64/lib/error-inject.c              | 18 ++++++++++++++++++
 arch/powerpc/include/asm/error-injection.h | 13 -------------
 arch/x86/include/asm/error-injection.h     | 13 -------------
 include/asm-generic/error-injection.h      |  6 ++++++
 include/linux/error-injection.h            |  6 +++---
 12 files changed, 62 insertions(+), 29 deletions(-)
 create mode 100644 arch/arm/lib/error-inject.c
 create mode 100644 arch/arm64/lib/error-inject.c
 delete mode 100644 arch/powerpc/include/asm/error-injection.h
 delete mode 100644 arch/x86/include/asm/error-injection.h

-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190806100015.11256-1-leo.yan%40linaro.org.
