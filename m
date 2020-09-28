Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBZWQZH5QKGQEJ7CD3HA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CD5A27B775
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 00:49:12 +0200 (CEST)
Received: by mail-ot1-x33a.google.com with SMTP id a3sf2818525oti.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Sep 2020 15:49:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601333351; cv=pass;
        d=google.com; s=arc-20160816;
        b=gHq1ejUC/pO5KfBuXacjQDsagDScq5crRtx7lmtoWTXZfz+cQivkcJYIKyaNCgxvSr
         x9ZaCWMOJ7uW1d9dfPntkopYEoo+o6NQ6l7mZpUA6uD+/PyA2hUaJB0EScNDj3fIBtPO
         f+cYBNW+Nl6vjsZ4XSKJlpnymDUNeVe/Ue3wtSYFZOc7twbNMMrU7QCHktieGyFf1qjU
         pwYthtDCBWdUot7LDDSqyZfPYJ9ywuOI8oSapQCBYQX6GKdOylxScYMfYmsUeAgbqReD
         RFoKGduozVAiQ11+a2a0+0fduY2l6u8/FF2ufZutuvA+nIbSLtwB0Wa7JQjFGLGFRY9t
         lIBA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=IUXs0Sib3qHdZEbUPyYV0hGx3VPXbffPWU21z2+DAHQ=;
        b=jdQymMINFgx8K8vj2KZ1A5Ip1pWRe9vzIz1KEA2ttnnqPEUQcRp+jgSCMsgc4anMMC
         EUtQGtUFZwQEhpzAEiKKkMslW8GHhRRQ+EqWrR1o8gMXetckCWyR+U4PnadmAl1j51GA
         HnLLNjAHGfttWzuopOrQWcXcAJUi/9DPT9teoaen7rOsE0afcSZtinDk2GgNSixjqxfJ
         Mds1kMHUWeZBb4jIAzr/L9pg/wQ4bLq3WSFt3ChyyRUny/TTvcEKET5ZMf7SOjm5Le8M
         DMaE86CYFYIFtR/6oknaX7jfjEK/OqIUIwPm/4fcnk0qQecY1gowLrNIRGwkvB+qRJ80
         b38g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=o5hwB45B;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IUXs0Sib3qHdZEbUPyYV0hGx3VPXbffPWU21z2+DAHQ=;
        b=XGRfLMUColY3J7PL8gtYOVOaEcKlAPSQRk4jFw+n+8wm+Ja6QBkpMgjba8JiU5OB27
         1b1jMeC2/CxYhD0B1KeOf2vxQFLfTdh9c0L/lNTkeu+EvBHU4wUcZsDNzTIiFerPjvG1
         IIyb4fmUedVqYT9tDDYUYszRR20YTTtR37V2Jx+a7RV1YyUyBTimh2+bshIuLLcIJ0oQ
         NaC4kbcxZfIB3GM3UzcLm8JpN3M/9x9m2mEpiZWeQgTAXLjUK+MvqXd+jj7BR5usxd2J
         uZmYHcOaiuzHibr+7ONJMDUJngzIxiInEDbKCJtxMhHkxDKe0XvEjCDZL8lO7QkMv2++
         yKlA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IUXs0Sib3qHdZEbUPyYV0hGx3VPXbffPWU21z2+DAHQ=;
        b=LqMpZhE2tSIARew4Xj9LqxXQDrDs1VxwCYQaOlkDi0NXO+crrvFL8YMCheKF4lHAKw
         t1qfB81a7lJJDw4lMMcg/pZewHCNlDpr5ub+wrD0obLxtFrVt9/TnU4qYusFPTcju6IE
         XpMlwkO4LIqvX/zHaWqNbhZipDDsXVNvrfvkRb+0l5grRK4nALK3yorTaiGBKaksi5n1
         TJgrbpCXUFwv/0BTnDhs9sVfg0QFDq0tBWAG2xPB0IFLxmRfh8CleQLiBrAY5QUywaAQ
         1ByUZkxdZrcE1Q7gPSIZL9y3835SV1whwpyQW0Lv+AHYv3Dk9YSrRnF1kyqALveALYxc
         KRsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IUXs0Sib3qHdZEbUPyYV0hGx3VPXbffPWU21z2+DAHQ=;
        b=JzKhd69d/1ztaKpu55j2D5bEUCv5wzIr1tqbLfb4CeizCSIQi/m0RbyQ9gv0JetN2D
         9u3JGV3J0CZ6ZhWFVc24exldGJf23RhHrLYm1NKaTvLAmHeas6r69SJ85j1MaGHBC1xC
         5U+/bojUgyD6dC6fmv7OW68Mg9+VZr8AbW4i9wwpW+BHFMvoJIUCXyOEcybpZ1yRX/Kr
         EdLQnkVW31qQnAsqBTCYlCOxF6ERmq2F13/JUGqbfI/Rk8fbaq5q9fqc8kgQZ35+BFHN
         hkjQIqwsk43rYcxsTE1LzcOy7Yjmqu/uAPtTAekkfz85wXpFY22CeczEmcHxpV74soZP
         FsKw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531UOYApdEsnhaHxGtxs5/UXw96d5GB/zisSNGfY5S9j1ETmp3KC
	hogIG3HEWkchg98h3FGnANs=
X-Google-Smtp-Source: ABdhPJy0OO8EVj512mVbIXyIcyXxoI1vGy34OEGdk0qaDy4i/DW5m8i8F5YtIUFMvkdjT1wWnxlVew==
X-Received: by 2002:aca:f05:: with SMTP id 5mr675689oip.173.1601333350935;
        Mon, 28 Sep 2020 15:49:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6a86:: with SMTP id l6ls639756otq.11.gmail; Mon, 28 Sep
 2020 15:49:10 -0700 (PDT)
X-Received: by 2002:a9d:4704:: with SMTP id a4mr871463otf.238.1601333350555;
        Mon, 28 Sep 2020 15:49:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601333350; cv=none;
        d=google.com; s=arc-20160816;
        b=q0N6ZLrE7ESFgnOeCDSKLbpRANSaH+vo9Fm31rqKURlE9HkLogtcBg/V7kevD+FF4Y
         s4QVEYJxmWNACTCzNjdLeL2NkggdqiDu3bXBiHW9Nr41bcxaszSB9r1hRs2uzAYjEYxk
         Bal0TaNGUkEc4i9ygimeupNPJa9IgwPp2GogBPMoSmCc1AEzzbRptwjm4we4erDUZ+UU
         vPdsYgDy7xMfZ+/63GF2GQkMmGhen92kFtle6E4Av97CR/oH2vYLrmj+K5LkG2gjTN0z
         XgFuTpOVRrfKtvo+nPLcO84H6Fnni4gu/z1+OlrEgqUBdTDppbUfO974EZ+W+IyOzGjS
         oUYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=4y6sLld/wj75bLQXPRA2CM02Tu/AhXKlM+xG5SZVcBI=;
        b=NUNHohThsNGWHLedKk5/5CIFqSD1iqlJGDTmSGreLpCHBB9pEmrCbO6Gx5VbcxV6OT
         xZ6n9Mg54eITRXngaEzDxLM1XHWCWwPB4dv5/vYLB43skfk69vYAbwpJUSSD27IIMJlW
         OJkQj4ckADYW1bRCTPStO2EnmWrViU4uBqb6gYO3I6tt5IGjcweFTc3kZuE0/exmglHZ
         IrKTZ71ozhPkBjlY0tsfa9/FD/gLI7vCicRxN7VFPEwy4VMEzn1WcGDf0ZOBCSkjNLo6
         YxtiR5i68dHZlQglcKQdHYMI+eyQVwC2GTPBRuFYEhHJ629Bw+9J0dJh0PcCuXrDEh3G
         PNMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=o5hwB45B;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com. [2607:f8b0:4864:20::842])
        by gmr-mx.google.com with ESMTPS id i66si162764oih.4.2020.09.28.15.49.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Sep 2020 15:49:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) client-ip=2607:f8b0:4864:20::842;
Received: by mail-qt1-x842.google.com with SMTP id r8so2117279qtp.13
        for <clang-built-linux@googlegroups.com>; Mon, 28 Sep 2020 15:49:10 -0700 (PDT)
X-Received: by 2002:ac8:4e31:: with SMTP id d17mr396331qtw.43.1601333349929;
        Mon, 28 Sep 2020 15:49:09 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id g5sm2528959qtx.43.2020.09.28.15.49.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Sep 2020 15:49:09 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Kees Cook <keescook@chromium.org>,
	Ingo Molnar <mingo@kernel.org>
Cc: Russell King <linux@armlinux.org.uk>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	kernel test robot <lkp@intel.com>
Subject: [PATCH] arm/build: Always handle .ARM.exidx and .ARM.extab sections
Date: Mon, 28 Sep 2020 15:48:54 -0700
Message-Id: <20200928224854.3224862-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=o5hwB45B;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

After turning on warnings for orphan section placement, enabling
CONFIG_UNWINDER_FRAME_POINTER instead of CONFIG_UNWINDER_ARM causes
thousands of warnings when clang + ld.lld are used:

$ scripts/config --file arch/arm/configs/multi_v7_defconfig \
                 -d CONFIG_UNWINDER_ARM \
                 -e CONFIG_UNWINDER_FRAME_POINTER
$ make -skj"$(nproc)" ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- LLVM=1 defconfig zImage
ld.lld: warning: init/built-in.a(main.o):(.ARM.extab) is being placed in '.ARM.extab'
ld.lld: warning: init/built-in.a(main.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
ld.lld: warning: init/built-in.a(main.o):(.ARM.extab.ref.text) is being placed in '.ARM.extab.ref.text'
ld.lld: warning: init/built-in.a(do_mounts.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
ld.lld: warning: init/built-in.a(do_mounts.o):(.ARM.extab) is being placed in '.ARM.extab'
ld.lld: warning: init/built-in.a(do_mounts_rd.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
ld.lld: warning: init/built-in.a(do_mounts_rd.o):(.ARM.extab) is being placed in '.ARM.extab'
ld.lld: warning: init/built-in.a(do_mounts_initrd.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
ld.lld: warning: init/built-in.a(initramfs.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
ld.lld: warning: init/built-in.a(initramfs.o):(.ARM.extab) is being placed in '.ARM.extab'
ld.lld: warning: init/built-in.a(calibrate.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
ld.lld: warning: init/built-in.a(calibrate.o):(.ARM.extab) is being placed in '.ARM.extab'

These sections are handled by the ARM_UNWIND_SECTIONS define, which is
only added to the list of sections when CONFIG_ARM_UNWIND is set.
CONFIG_ARM_UNWIND is a hidden symbol that is only selected when
CONFIG_UNWINDER_ARM is set so CONFIG_UNWINDER_FRAME_POINTER never
handles these sections. According to the help text of
CONFIG_UNWINDER_ARM, these sections should be discarded so that the
kernel image size is not affected.

Fixes: 5a17850e251a ("arm/build: Warn on orphan section placement")
Link: https://github.com/ClangBuiltLinux/linux/issues/1152
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 arch/arm/kernel/vmlinux.lds.S | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/kernel/vmlinux.lds.S b/arch/arm/kernel/vmlinux.lds.S
index 5f4922e858d0..a2c0d96b0580 100644
--- a/arch/arm/kernel/vmlinux.lds.S
+++ b/arch/arm/kernel/vmlinux.lds.S
@@ -40,6 +40,10 @@ SECTIONS
 		ARM_DISCARD
 #ifndef CONFIG_SMP_ON_UP
 		*(.alt.smp.init)
+#endif
+#ifndef CONFIG_ARM_UNWIND
+		*(.ARM.exidx*)
+		*(.ARM.extab*)
 #endif
 	}
 

base-commit: 6e0bf0e0e55000742a53c5f3b58f8669e0091a11
-- 
2.28.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200928224854.3224862-1-natechancellor%40gmail.com.
