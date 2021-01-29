Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB5GX2GAAMGQEZN3FNAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F4BF308E1B
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 21:11:33 +0100 (CET)
Received: by mail-pl1-x63c.google.com with SMTP id h8sf5923711pls.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 12:11:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611951092; cv=pass;
        d=google.com; s=arc-20160816;
        b=pUcMe+hPG6wtGS+A5PgojJDU5Fom75oBWThqE4OFZZEu6F5BfJiFXEvWF1OwSlwm7v
         6ej5U8/3Uein0JyUT/ydiBkQZ/fZfRnoNwpuI6y8bwMebu2s43axkjq4FDYEZfOwZssx
         9xnxKFcJZSJkcwHaVQuF7X8yOYiyHBNHn85P6IdFJ24Fw9Ed2Hkrvz2xekksTrOkToWK
         WuIIeR6YjD5ftY4X4+KCcZvVlexDwy5aEG+k93RZEcY+uYiEKX1Pdhwt6gt6IgCmxKw9
         Zm9BBtRqwAVOUnVgSAlipeMBXR5LVxFoAB89N14zS1clYEu0SCfx4pZX9/Af7A2NOBq3
         xsqw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=zE2JW7tpZ+c3ZuFxc4KS8J/O3E6JiPU7yTGGO9pAmwo=;
        b=rFlmL1FIVwgOh/A4wlJqdVo8dPpL6SVxIbBICSSdM1dGigXLeCxH+z2gj4VgqVjYMA
         uSVIM97a9HVMGbbroPW+f+d64IGjhVDTJREX5b9pI3mGuUOpwWS8fNKiGoKWx3kqU4bf
         mVe/Tsv3QlDGjFRwFx5zSAhQWZSG4X7YP0WuVJf1Dmd2G1LByWRSH54BoQsH+OUkf+8+
         ysB+1n3WaNEaLkfmutP31IccucnJyr5yH9oVVjrmqyXDi/9VchgUq40WR7hjQOYN020c
         tc+bNT+mgdQAdaOrvi0RfyAHBXOxCP2fF7CANJofCEANC6xR5PA+w1bgKvhj8DO6zcv/
         CM0A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=qTsQEjnm;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zE2JW7tpZ+c3ZuFxc4KS8J/O3E6JiPU7yTGGO9pAmwo=;
        b=JG8OqIcq9298rTbkF3eb5kSykSQmOARY2X+9BZujGxhk6HKSQ3EC4495/E/gkB4E47
         z6NARcroLN6Y/rr8Q43dLqqipbv/Xfpb+q4tss9aigYghqCIGuihOdHRaceCJm7DTHRS
         JLhJhyv67sHqGt3yvYLy0SZgtM+1GEIlVzYrB2UzaX//auHOiqRfFoOEMK/7nDSke3Y3
         btPf0nmhgatBBMKOX4PRvlmGL7za4EwidIJV6jS7v+zn/uGpjEtnG9hg0l8m0HMo5e0R
         UUp9+ZaF6/68nm4BODevV/R0xq8DdwzeezIzRQmCOUBWB5JfbB5lGvGtt1hC3c27lzyQ
         fl/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zE2JW7tpZ+c3ZuFxc4KS8J/O3E6JiPU7yTGGO9pAmwo=;
        b=UDqGhDAC780lwfAszOD9IcLOgpsNlZ3Haxep3/B/NxuzuNNB9xCiAM/E6y0wdltYDt
         8805yQ4IhZrSDzzlYF3i7rKT7r7ZfSMY56ZgdYBj8pfxD3yImChrh8ZntosAIsOEc4at
         ACZH31MtwQ/7atZ3Om14fYAXZb6oWhhIveX2iDDWhyMG2I9epsshpJvzftvyMHoIfURj
         K/wuWIcQz/9JcAQBn0weiQV6Pdp0QGoXBsZMG0YlWSW2dRwPRTsCSxpIRD2FJ2fhWDtW
         qc26hv1BJgL1xnG2i4bH0Ai6xrXaIp7UATlKlvq8G+atCa6pbo9qsJ1l927F4z52fK6G
         IRuw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531KrPpGFwjieH8AgS+dO2jmqeDZ4RZjk8ZwqE76jK8H7jANuPwG
	fSs3xxG5/bCaIqIEMxLf/4Q=
X-Google-Smtp-Source: ABdhPJzab6W6d4YjoRue4olfr/1TU1tFGXHnrLN2v540wQ2+Y5AvUX3CqJgGskVaa4MadvYnlYLOLw==
X-Received: by 2002:a17:90b:309:: with SMTP id ay9mr6211857pjb.145.1611951092178;
        Fri, 29 Jan 2021 12:11:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8d53:: with SMTP id s19ls4035285pfe.7.gmail; Fri, 29 Jan
 2021 12:11:31 -0800 (PST)
X-Received: by 2002:a63:4346:: with SMTP id q67mr6258167pga.223.1611951091468;
        Fri, 29 Jan 2021 12:11:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611951091; cv=none;
        d=google.com; s=arc-20160816;
        b=jD0XlXoVDyokghmrxLxu0TQxzou88kkNj0eJRsJuVfz/CLG9/KVxem1lLIjMVkyjbF
         UF1XrGqYUADCdtElF5MUDLhUGCfNjW1fZM33X83+5OS5FJloTfDHtCk8vCRifC7geB4u
         d3Ob73oURdILNc9cxbGncwJ/yfTmyneyLj/RyNMJu07nU+F+OCJ2Fsheoa86DGoXrzR8
         JTDE+gaMj/XiHirJcHIH/lENDHA9MGuUqdYGT3SM5yIF8zSw1Arlpxc1Uqyn+YPC+BpA
         eV5G4NnNHyopF+9mqdlfxxQPLUcXeEzL4mIOz98vzQGo3G4L+nbKC70dTjOECCBtK7Mp
         hBCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=cOHVCuuXd64K3xO7iqfB9yqSowanIc8ZR34uD0KaQQg=;
        b=DX/xXVI0/nfD92yJxK4eroNwBJFI2mwjJRzfnNE5pmzDKNJzRPFh0JRMixDKb/UgPP
         /Nr9nEOuDK4NizUhdpl2/WYji9XCRaJ8EtWSJsG5TnEopsqQJPIrbIN7Ovn03eLYUfrK
         JjS1+bZEzRMpWuhXMJwwYfS2nP20ZAjdfyXCx8O4tTLr+3HwmN5bIvS5cHbAHPRWph8U
         +fVvcOp9ENKtOYNyhvMSe0Qv+C5I4LBav9rq+be7clXi7TDjJRjl1ooMrGk16H9h2kYa
         NZYHzngY1KpTFigO2OK9yETTgz6hfgPM0s9ozOlQDZSCNASUYd458ZCtemEzid+VHJwv
         H67w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=qTsQEjnm;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r142si572728pfr.0.2021.01.29.12.11.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Jan 2021 12:11:31 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6C9B361492;
	Fri, 29 Jan 2021 20:11:30 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>
Cc: linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>,
	kernel test robot <lkp@intel.com>
Subject: [PATCH] vmlinux.lds.h: Define SANTIZER_DISCARDS with CONFIG_GCOV_KERNEL=y
Date: Fri, 29 Jan 2021 13:11:16 -0700
Message-Id: <20210129201116.2658179-1-nathan@kernel.org>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=qTsQEjnm;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

clang produces .eh_frame sections when CONFIG_GCOV_KERNEL is enabled,
even when -fno-asynchronous-unwind-tables is in KBUILD_CFLAGS:

$ make CC=clang vmlinux
...
ld: warning: orphan section `.eh_frame' from `init/main.o' being placed in section `.eh_frame'
ld: warning: orphan section `.eh_frame' from `init/version.o' being placed in section `.eh_frame'
ld: warning: orphan section `.eh_frame' from `init/do_mounts.o' being placed in section `.eh_frame'
ld: warning: orphan section `.eh_frame' from `init/do_mounts_initrd.o' being placed in section `.eh_frame'
ld: warning: orphan section `.eh_frame' from `init/initramfs.o' being placed in section `.eh_frame'
ld: warning: orphan section `.eh_frame' from `init/calibrate.o' being placed in section `.eh_frame'
ld: warning: orphan section `.eh_frame' from `init/init_task.o' being placed in section `.eh_frame'
...

$ rg "GCOV_KERNEL|GCOV_PROFILE_ALL" .config
CONFIG_GCOV_KERNEL=y
CONFIG_ARCH_HAS_GCOV_PROFILE_ALL=y
CONFIG_GCOV_PROFILE_ALL=y

This was already handled for a couple of other options in
commit d812db78288d ("vmlinux.lds.h: Avoid KASAN and KCSAN's unwanted
sections") and there is an open LLVM bug for this issue. Take advantage
of that section for this config as well so that there are no more orphan
warnings.

Link: https://bugs.llvm.org/show_bug.cgi?id=46478
Link: https://github.com/ClangBuiltLinux/linux/issues/1069
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 include/asm-generic/vmlinux.lds.h | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index b2b3d81b1535..f753fd449436 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -988,12 +988,13 @@
 #endif
 
 /*
- * Clang's -fsanitize=kernel-address and -fsanitize=thread produce
+ * Clang's -fsanitize=kernel-address, -fsanitize=thread,
+ * and -fprofile-arcs -ftest-coverage produce unwanted
  * unwanted sections (.eh_frame and .init_array.*), but
  * CONFIG_CONSTRUCTORS wants to keep any .init_array.* sections.
  * https://bugs.llvm.org/show_bug.cgi?id=46478
  */
-#if defined(CONFIG_KASAN_GENERIC) || defined(CONFIG_KCSAN)
+#if defined(CONFIG_KASAN_GENERIC) || defined(CONFIG_KCSAN) || defined(CONFIG_GCOV_KERNEL)
 # ifdef CONFIG_CONSTRUCTORS
 #  define SANITIZER_DISCARDS						\
 	*(.eh_frame)

base-commit: bec4c2968fce2f44ce62d05288a633cd99a722eb
-- 
2.30.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210129201116.2658179-1-nathan%40kernel.org.
