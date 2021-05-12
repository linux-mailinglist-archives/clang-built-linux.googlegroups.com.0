Return-Path: <clang-built-linux+bncBC5JXFXXVEGRB55Q6CCAMGQE4PFOJ5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 75B8D37D1AE
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 20:03:36 +0200 (CEST)
Received: by mail-oi1-x240.google.com with SMTP id t84-20020acaaa570000b02901e59db6f161sf13260331oie.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 11:03:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620842615; cv=pass;
        d=google.com; s=arc-20160816;
        b=GtdF7rCfsbBJ3HqDoVNYJVJ1+kxQsdO6K2PW95TiXG0Fta6P5aJWfbJOIo94OVJpC9
         VZgCeU648KNTN2ZcCKoq9aiwedKJBFeQmNRX5bKjG+RcaKj4Xg5nj0GXluqstrEQzTvP
         Dw0z+jTVGUF558x5AXdPC3Iwp+LDh2SjEFjysP01ViSu29D+snuP2EAs7BoKL3E3Tlks
         z9J7GY+k3G4/MJ6MJIX0FQaCIFwmXwv5373uMbu6FW+wQu7ci3MRTRQ1Zk3K9wp1jpOy
         xt2KITk+IovSVyQwIMULGwpqQGmjSqKY1BQgnYRcCxScwaNr4zzfYtChHrufIOWeYeNk
         UMpw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ba7Uv5AwZ841crW8gHDTFnnz2v+4QYjidORX/xLIF+Y=;
        b=h9+yMUyNp1krbRrtLqy89moTxV6IUbNNfgW4jV4v2r03pCOMR4RqGlyzcwt4nBf9ci
         7sAMTf4vv9qAO0gV2MSy9rUNAchDXBHzCMRGIBrKDc8mRIrINQWKUfHRAfc/Yh9derWC
         3eFQa4MGa3u7tFvr4dB31skLd/BMhFm6flX7HDn9xNMHbWsRZwmsblNJij+h34q0Ltsj
         qVAWvhLuAeTqqRj0L3f1lJAbSN9T9l2akVr8HkEU7RxXxJ/djuDh5h5D6ncVQ4cHRSV4
         uJgAzhXkd+uktMiGLtWgt5O003S/4vhjX+KiU4y87go7nEtzo/1CpKlAw+6wUiy2qAHu
         YugA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=msSzf96v;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ba7Uv5AwZ841crW8gHDTFnnz2v+4QYjidORX/xLIF+Y=;
        b=Tq5F2ZHQZqcXvMc25UfHwU7skz/CUFThBtv36VBX3J77FhiCvL5r5O97fTmmUYtahH
         F+F/pyj1w2VrX7064KuTwWj0V6fE+rUjHEuqhUioMx3W60qEbl87fsgRPqh8a+cNJDDU
         2QDidjF0QSsnGfb5b4wzykoGjiBw55J8EjgFsQ7OiDZKgle5j6gvVL993PpyYnIVsAc1
         n/oQF9nUV1pKTEEOq8TPyqrXc62Mag+1dPP9FmwctNgabvvr94wu0rsVgOdPOmOkRzaO
         CWPhtPivcsmTAdP5Cco2E7zGdpBoFj/v5oa6ZLHcEIaMoOldVPCcYeoUxcKoR97YbX7W
         W9CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ba7Uv5AwZ841crW8gHDTFnnz2v+4QYjidORX/xLIF+Y=;
        b=UOaS+YCQgZ41tqT6JvKfjZbIfeNtbDn0qwQW+zHxqWYSv2HaiGq1wCiH7zRSAjY5VV
         s81CKKfwlpjydnTK1yYhGX/a6xnwdY9KUzxWkzbZFJoN0eMpBthJ/j1tR2S4NuF+jaMD
         SIRbNkPu6nXOEaiMq2RDt1MVC4J2l5ubq1kv6ygGzOZl9FfbT5RbcuwrFIxVd7eM30dn
         gwNuRqHTmST4wEBra8GN0uDln3sxEnMrU6RcYBrIrU9c1DURejQM8cZDwaFyL8hynD7V
         IlNNpk2h2FS52jZ9uGgaS5gNQOkUqG86R7rRvA+V8m1TWrFakH1uEFfmGI/5QyAFxcsu
         6F4w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531XeMZaMRvc7CiVmITJzVgCWndq/o7XhIY/7YAKjM5a8yHA9b3B
	WdS6t7cztZEvaUnPeCnR/Fs=
X-Google-Smtp-Source: ABdhPJzHb2M6nCDCl6mH48FuS0LYgBhqXbrrgMAg8LX4oGw8Lun3wmkqJyU4rpnRZfnFLlqsVSoxGQ==
X-Received: by 2002:a05:6830:308a:: with SMTP id f10mr31869344ots.147.1620842615418;
        Wed, 12 May 2021 11:03:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7858:: with SMTP id c24ls974971otm.6.gmail; Wed, 12 May
 2021 11:03:35 -0700 (PDT)
X-Received: by 2002:a05:6830:1196:: with SMTP id u22mr12612203otq.247.1620842615031;
        Wed, 12 May 2021 11:03:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620842615; cv=none;
        d=google.com; s=arc-20160816;
        b=fGKKffTYxpjP01A15MKfNMGT8jTV4MOfnpyjfB+CRuysq82WF3HnCkQ+HRhGrOBXJF
         Vd4Fd5sjcq26p0PO1ttUr1wE6vBMPknU749wYQ2OCSkN2l2wjoul5kt5tMHt2QzHPHOL
         ubYTuWQr8RvsIKYOcmlwQ81KKKuY+Feb7Y0hTryfuJEHbEE0iXcy4Sohlox/K+YzocrM
         LzV0JUoMctyaP7oR+UScu3zsqc27AuvcV3+pqEvmSPcWUTBSIqXc+x7ZHLuUrs3cyuvG
         x/NDhH/LWcEbcTRf8TQg1O68GLFp/eJsFz1i9zsR7QRxvCvGyJIhlvNEM/tr7EA5FctB
         hNDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Fvg7oqfnfE00mpyHDERE8rztmCEMMbIM70TGIE6OnNc=;
        b=dJqsf8uE3qSmqulqQYEfdse0rhqwe9gPsMsTxb7xwecY/ZrH4UjY2xhJacKEoVwQd5
         mrEuu+lbPUizIW2GLbJfsz9CW+BDCxEZ/KZBTu7xjo9eMYTcLInL1wKebptBEmVXzHhu
         HAcTnK2MsfZy/2VUtf6E0qULoEyuDTe2Y/uXjFqlQW0YFxvef3tdliZ5afzJ49V1V+Ou
         O4Xxl9PoA4zQ5uGVcXPNAeFkmf6IqIEphrIPoOZnyc2DCChwPlSq4r4aWhvDQdzijqvJ
         DZb20tGVmvsYEhFzUpRByZaCG4pqQRKq0KbqTieQHchwqS0Dy7CFdO3K9PRAmj/i77NT
         5P9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=msSzf96v;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f4si124679otc.2.2021.05.12.11.03.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 May 2021 11:03:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0D08661490;
	Wed, 12 May 2021 18:03:32 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <nathan@kernel.org>,
	Fangrui Song <maskray@google.com>,
	Palmer Dabbelt <palmerdabbelt@google.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-riscv@lists.infradead.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.10 16/34] riscv: Use $(LD) instead of $(CC) to link vDSO
Date: Wed, 12 May 2021 14:02:47 -0400
Message-Id: <20210512180306.664925-16-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210512180306.664925-1-sashal@kernel.org>
References: <20210512180306.664925-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=msSzf96v;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
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

From: Nathan Chancellor <nathan@kernel.org>

[ Upstream commit 7f3d349065d0c643f7f7013fbf9bc9f2c90b675f ]

Currently, the VDSO is being linked through $(CC). This does not match
how the rest of the kernel links objects, which is through the $(LD)
variable.

When linking with clang, there are a couple of warnings about flags that
will not be used during the link:

clang-12: warning: argument unused during compilation: '-no-pie' [-Wunused-command-line-argument]
clang-12: warning: argument unused during compilation: '-pg' [-Wunused-command-line-argument]

'-no-pie' was added in commit 85602bea297f ("RISC-V: build vdso-dummy.o
with -no-pie") to override '-pie' getting added to the ld command from
distribution versions of GCC that enable PIE by default. It is
technically no longer needed after commit c2c81bb2f691 ("RISC-V: Fix the
VDSO symbol generaton for binutils-2.35+"), which removed vdso-dummy.o
in favor of generating vdso-syms.S from vdso.so with $(NM) but this also
resolves the issue in case it ever comes back due to having full control
over the $(LD) command. '-pg' is for function tracing, it is not used
during linking as clang states.

These flags could be removed/filtered to fix the warnings but it is
easier to just match the rest of the kernel and use $(LD) directly for
linking. See commits

  fe00e50b2db8 ("ARM: 8858/1: vdso: use $(LD) instead of $(CC) to link VDSO")
  691efbedc60d ("arm64: vdso: use $(LD) instead of $(CC) to link VDSO")
  2ff906994b6c ("MIPS: VDSO: Use $(LD) instead of $(CC) to link VDSO")
  2b2a25845d53 ("s390/vdso: Use $(LD) instead of $(CC) to link vDSO")

for more information.

The flags are converted to linker flags and '--eh-frame-hdr' is added to
match what is added by GCC implicitly, which can be seen by adding '-v'
to GCC's invocation.

Additionally, since this area is being modified, use the $(OBJCOPY)
variable instead of an open coded $(CROSS_COMPILE)objcopy so that the
user's choice of objcopy binary is respected.

Link: https://github.com/ClangBuiltLinux/linux/issues/803
Link: https://github.com/ClangBuiltLinux/linux/issues/970
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
Reviewed-by: Fangrui Song <maskray@google.com>
Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/riscv/kernel/vdso/Makefile | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/arch/riscv/kernel/vdso/Makefile b/arch/riscv/kernel/vdso/Makefile
index 71a315e73cbe..ca2b40dfd24b 100644
--- a/arch/riscv/kernel/vdso/Makefile
+++ b/arch/riscv/kernel/vdso/Makefile
@@ -41,11 +41,10 @@ KASAN_SANITIZE := n
 $(obj)/vdso.o: $(obj)/vdso.so
 
 # link rule for the .so file, .lds has to be first
-SYSCFLAGS_vdso.so.dbg = $(c_flags)
 $(obj)/vdso.so.dbg: $(src)/vdso.lds $(obj-vdso) FORCE
 	$(call if_changed,vdsold)
-SYSCFLAGS_vdso.so.dbg = -shared -s -Wl,-soname=linux-vdso.so.1 \
-	-Wl,--build-id=sha1 -Wl,--hash-style=both
+LDFLAGS_vdso.so.dbg = -shared -s -soname=linux-vdso.so.1 \
+	--build-id=sha1 --hash-style=both --eh-frame-hdr
 
 # We also create a special relocatable object that should mirror the symbol
 # table and layout of the linked DSO. With ld --just-symbols we can then
@@ -60,13 +59,10 @@ $(obj)/%.so: $(obj)/%.so.dbg FORCE
 
 # actual build commands
 # The DSO images are built using a special linker script
-# Add -lgcc so rv32 gets static muldi3 and lshrdi3 definitions.
 # Make sure only to export the intended __vdso_xxx symbol offsets.
 quiet_cmd_vdsold = VDSOLD  $@
-      cmd_vdsold = $(CC) $(KBUILD_CFLAGS) $(call cc-option, -no-pie) -nostdlib -nostartfiles $(SYSCFLAGS_$(@F)) \
-                           -Wl,-T,$(filter-out FORCE,$^) -o $@.tmp && \
-                   $(CROSS_COMPILE)objcopy \
-                           $(patsubst %, -G __vdso_%, $(vdso-syms)) $@.tmp $@ && \
+      cmd_vdsold = $(LD) $(ld_flags) -T $(filter-out FORCE,$^) -o $@.tmp && \
+                   $(OBJCOPY) $(patsubst %, -G __vdso_%, $(vdso-syms)) $@.tmp $@ && \
                    rm $@.tmp
 
 # Extracts symbol offsets from the VDSO, converting them into an assembly file
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210512180306.664925-16-sashal%40kernel.org.
