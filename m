Return-Path: <clang-built-linux+bncBC5JXFXXVEGRB7NP6CCAMGQE5QDI6JQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 931A437D188
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 20:01:38 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id n46-20020a056a000d6eb029028e9efbc4a7sf15456415pfv.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 11:01:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620842495; cv=pass;
        d=google.com; s=arc-20160816;
        b=iUyxHFgSV2KtgYDBHXXs9OdCDsnvWIyX0X+UU/eU3u3Tz/pVN8+ccXPLwaePb05Bo4
         80WeYdCHXcelngV08of2ma0W/2gkTn/x/M16ltdCFFNrc8iUFDkJhOhUMtSKPjH+DqGX
         g0PRbez4zFvKAHRqEc7US5K3RbhbgPwAz2osFhvJivt6jrvMY4CkBCOB5vY3CIei/3A0
         SEdD5aNOjc+2IcKsJh5/u9iSuePWKMg2jqhdw1nrJ7iyeAmvramh4YkpFxMVI6w26tM9
         OFdyPUsDDN5AaxrKqfyNMOJbiSQoprsO62kgI+5/l4j7W5Pa376bWhggZ56dqFuMH/qy
         dAqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=5gerC4XPwCwjlKS+NXrBFcFd4efn08AgFo7FozkuO4c=;
        b=fMnzfium4bJm2xqeWb06tEdIsnJMAc8kj2yK/vDSsI2ZIhsEKUAFro8jrbg54rlD/K
         RdEbjrRy7PFxurqmjNQ0xmVuoVoh7hxH/+N27Q5yvBdOuUgd0Z7l9WM1koJjn3l/fTYk
         8kIRhTSHduNLR3Bl0bZHB+pfAs/ATUs6b5w4eJIU6eVSsxBuPD1Se9qGph2c1DdUIamQ
         A+yPzPzfj6nRpQ5HgEwUZ7ul8tXauA8fluYvzyL04fjSm+1dztRaF3WFNW2X/UIfpPYI
         C1VBk8kU4R0or480GxaRJhAsQVW2nSyKhbSHr9Q4684IbM2VbJcTetPS9h5VvXRdKlM6
         /Juw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Y0+JrZ5v;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5gerC4XPwCwjlKS+NXrBFcFd4efn08AgFo7FozkuO4c=;
        b=A9Zg1t3pX9lNJKv9SZ/a1ABZkCvUoubv98hQtVqCnRvc+eacSUu3kdLf5cZ955r6Se
         iqesJdcHErOTsWEqBoCCq9pjBwqLeeVJTciynFUdsgFHgptT3iPNfTMWB6na+ShK7Tid
         0eGNEsgz4tLHPG9Bu8q1ESCUJ5dsg2EzEZ9a50RvPz4q9oSJ6tah4fsNOdDCAHWfOKgW
         AHauciyo5sxQlj+2uU/cIyuBjBa5lsfbqptH76ZXDW1bWmVC/4F8fId7gAOyOka7pG7y
         i/yVoJVOZa+5Fr1IphkmHIwxr8219YSMKDGtmr709Ambwbm7xJTViiS0Tk6pqWuXBh54
         N8LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5gerC4XPwCwjlKS+NXrBFcFd4efn08AgFo7FozkuO4c=;
        b=l+YaVK8BEbAOTR2Uy2pCrDke0VX+nUbh8og8gbwKXU+F70DEIvCS89vTO8K+ssVlup
         ZMrjj2Ax8Jv+YBL5EEVY1L0p2o58OJhIwkNxiLCgApQWIM8gUq42eF+/e+mexNOTZf0T
         hzczDxqbJhx4YhKf/vZ7S3okKTU4q6pd/AHBL8XbAWDsfY74J48jdgoQrMSVa20BDT6Z
         CU31SV262ldn4zro+nDvwL2CoE324cqNiZKENixdNOuYXojS1bqRTTqYKlMfVL0TS6ro
         aZ55NwZ4onfq5oOzjVahxIb8yO7TnfKeGNxagrNusnL5Vr5ClhuTEY5qmHV/epsRZz1G
         7FMw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531O6pJ0vtZrSW78SPcqxnpgf/AAu7LrltKl91eqdGCMfeQF6RC/
	0M3nCApUkqNUjFaH8u/ZOTE=
X-Google-Smtp-Source: ABdhPJwP7U1QyU4m2aBQhdx1FhRybhyaiP0H9/+XpXzsyQCzJzFC/7HU82OdpsWSbNBnQ3Ux/z8Irg==
X-Received: by 2002:a17:90a:d512:: with SMTP id t18mr12008921pju.108.1620842493929;
        Wed, 12 May 2021 11:01:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:89:: with SMTP id o9ls1739115pld.8.gmail; Wed, 12
 May 2021 11:01:33 -0700 (PDT)
X-Received: by 2002:a17:90b:e98:: with SMTP id fv24mr12274838pjb.216.1620842493157;
        Wed, 12 May 2021 11:01:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620842493; cv=none;
        d=google.com; s=arc-20160816;
        b=FS5O/8PnKOO32U0E0sYJyYHcoz0Hw/tHZ8yXKzSL+P5GltknR3CyknJn3vgaSe2Bas
         yVRhlPncbnjcGKdMLOwI9fCHKLcPEvYx9CDoLPu2tcaFojZRA8ZiSUBxasYZdsiklWDY
         o7xEdPL7rYQMYA5mhOT193ZhvhQUTnq1ZlMFOOOzMmHerLyumD7MJAtECkSvp6D6wlzr
         c0q5J3f5JMJrOgrzGt275GeMdl7tEmgjHSfdDaDu06tZj+byOhdswzP9KkU8i4wmxFzb
         yy5/i35CG8FFnwyZN4iykuNU8mWYM4ysnMhgGt9yOsRhYoIaZzCsYcRpw8pTDytHrgW3
         Is4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Fvg7oqfnfE00mpyHDERE8rztmCEMMbIM70TGIE6OnNc=;
        b=ziaBThohJeNHaPL8yWcyCVKQLgPfRQJ9i7I4xN/eW2lz4aqsGU76oSNlvDttJYvMAX
         ORVefTu2PRueL1fAgvN5yQRPq1eqS1lMHvfZxtHI2gfnstlIM+XWxraqqS3mCVp8xRb5
         WoD8z9CuCm+ftFZ3v9dUDy367cMWxA5d4N+TyLZWtzHNkoCB1WuEtBKJCYVBnzbmdu+d
         HCUsJ/CpicHeZ8MPK28zldVi8m9IudyunYvHMEg6JPDoKrea2ibH9NMatMLbGj30NH/B
         u4g+tXJDTlo+FIxZV3mWck9xTI36A6c3xangeVTWAUF/xiZ4Kdpz/wdTbMZP7x7yDevc
         SPKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Y0+JrZ5v;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n21si83553pjq.1.2021.05.12.11.01.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 May 2021 11:01:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 993F96142F;
	Wed, 12 May 2021 18:01:31 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <nathan@kernel.org>,
	Fangrui Song <maskray@google.com>,
	Palmer Dabbelt <palmerdabbelt@google.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-riscv@lists.infradead.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.12 19/37] riscv: Use $(LD) instead of $(CC) to link vDSO
Date: Wed, 12 May 2021 14:00:46 -0400
Message-Id: <20210512180104.664121-19-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210512180104.664121-1-sashal@kernel.org>
References: <20210512180104.664121-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Y0+JrZ5v;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210512180104.664121-19-sashal%40kernel.org.
