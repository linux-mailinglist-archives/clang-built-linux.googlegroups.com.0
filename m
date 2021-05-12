Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBO5Q6CCAMGQE5AVIKSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id F1CE837D193
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 20:02:36 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id l3-20020a17090aa4c3b029015634c426b5sf187960pjw.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 11:02:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620842555; cv=pass;
        d=google.com; s=arc-20160816;
        b=eVleReXlaKv4c1F0Fo3bVleqVqwUUj/hx3s6lIFsC4fB1vqnW6kmWZRWY/J6rtmVZZ
         uqs9ApUocUdiXDuHraSWJyReEyW7B0TZ3kNiIOM6nJ//1T5WblvLAQdArXqq7OiD8g5/
         wIeeRPWMo9nm8fDnq1ELHQgV5+fe5oTz4EW68BqfPMOdhA2PJNW4mTKpB3TsKMHKfslX
         APJaPFphwJ7KrCTvnK4YOZ9ou7CaaY6PsYkmE2jsT45kUkeyxswyXNWrbecEA5ctNUHG
         jRkmAIzPFteIfZKmltAvvVXphY1CMxBpYhBwPSr+xjvs7TT5SXFzEQ3/2N/ABiYheAcc
         SIbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=b34t2upvjWI+hsmj9xd0LVHwDrq6LStzIlfGhBAOQhE=;
        b=iYd4LDrVNeUPVJGhe6NwFijbN46kYpY2iwUJTof82qAyyq029AmaWsSHs/Q4gHP6zc
         ISiBcrpG5ZO8AmZyMVrup/ueXTMyZ3cY55mvg385etNPxaWFPq8UlkxiwLWyDAHJMeb0
         gXNhswCqkCKTsu3FsZlbeRJeagGqon+FauW9f3sYjjhGMof6txJhnOr+Ubjv03eKot0l
         IeJA2iYfZzFUYA3q85Vi30NtitzBiB3Ap1dH4UXPPUNka9YSiuWgIkfemI8csZvRvU54
         1yQpE+5xu65A92cojjOEPhECsujbbJ5fouAzYoFXpZG/o3PhXLr475di67vIqtopCs4Y
         Sxvg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=I+OEpsxe;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=b34t2upvjWI+hsmj9xd0LVHwDrq6LStzIlfGhBAOQhE=;
        b=etJd+Mgt56x2AGdME6OMdd0lE0Ap1cvcoJ1uhEHkNrOdUOtVL7Agc61oqvBN1j4lwZ
         PrBHWqVyLXBx8djfI/EN7dpKwhhWnDWKKDKnZahcs1fGNY9vXeoAhxp75E1ETZ69yWdV
         kPNXxdRFyIuFolep+c1JsEiq+WJIqJh9jiketPJ3CIcoQHUqP2IOMnhik9IDbQjafgM/
         id/RgFJR5gJ703CWsQSzxyiO/71WH20YL3p25FGpN/tt6qa3XJE31c8IO7KOVY6ftp9B
         XmDLUuIryVr60vRsJxQkizi+JxYcozWUTCKsN57yszRXcwICvuguqtbZ6LTWHmLKQMFI
         i8aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=b34t2upvjWI+hsmj9xd0LVHwDrq6LStzIlfGhBAOQhE=;
        b=CxqAVs0CQQqYByG4Pkpy4k7IIEsB+j+ojehI2ABLe7ZmpjXzBT/MWKqaHBsqfj6Cnq
         lVwXHSib9ib4V7QfS8fQQpHs71mE9pOT//TuVIScBK0CfCrpt7iLsNyRJSbwHUrqGpIa
         auPeYF5AMR87c0QAiEjYrHAEnSUt0SzEXRrM15Pk30o8nx1mFUUSh6gHnUQ1W78Vr4kn
         bECj9G1ZlnO4Xw26W3Py0arEi6cQ3eS1i4elSKUPRfyXJPhRVOlIMeQeme0N/btX3tI0
         aqdWiYaJy5lBxZyVt88hAUc2NC8EswYNlPzMtAlj1mQR+IPDeegTdKRvrxF4Bx11xvZY
         tZdg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53326hsrv2EM9c88PMRVuy09X543bpx37dtMtIVAujsApfPdPp5O
	ovU7e7uQs8eYbR+DKyFNr60=
X-Google-Smtp-Source: ABdhPJyYs4Z+nA1o5YPtWdXQEFsgg9jSpfFi+DJDmbP3u4KKE8dsI5o7JqryokDjuy3BnMzz10lu0w==
X-Received: by 2002:a63:d014:: with SMTP id z20mr36359319pgf.428.1620842555556;
        Wed, 12 May 2021 11:02:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:e142:: with SMTP id h2ls1490078pgk.10.gmail; Wed, 12 May
 2021 11:02:35 -0700 (PDT)
X-Received: by 2002:a62:7c54:0:b029:2a7:ff7a:71d5 with SMTP id x81-20020a627c540000b02902a7ff7a71d5mr28484259pfc.45.1620842554961;
        Wed, 12 May 2021 11:02:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620842554; cv=none;
        d=google.com; s=arc-20160816;
        b=f11Sv42nk9ONCzX56McR4aJLDBwnhhTuuQVVwXgcbkWnVCNVL7+bP4WrCFh499tcXK
         A/s4hu9f0akP1uXjNOAut6oNbo+HaRdAkJfWHgXcyVcNEmroSwHhOBLeLm0TifdkmFKS
         w6hySpp1b+cQ/wkhME1SdvmkWjk6gfO1Kevcb5PP+jHf2gIP58LtW5pnOHJew8mVdThW
         C3wz+9vYwdn4pb6yxib9XXGUDudlxY78LggZ/fBuKh7S8K9odWT11vdLNMLhru2V1G0R
         mRsQpfkc13Nr2Q/lFG2O/xGAs/98k4JDY+JbPd3majU3TbRADttt5dwXxmn/DDzFA3sZ
         RjWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Fvg7oqfnfE00mpyHDERE8rztmCEMMbIM70TGIE6OnNc=;
        b=HWh5PLJ4rC0sYDLa+oHjT8TnoSRV0ghLDjkYJ+lgZqWxJbwsJp7/q8kOyE+nefPSQ0
         OxpB6DEneV+Gw4RmvaQtSnBZZAw4XNoVNQHN6xJ6Q4HWp+bizPotAQRfSmPlHEUBkKMD
         BFFNMVypq9U87ztbsG+n5RZKRBellhepJDfHy4/qEhyWceuaWbJCB9o4Ly4Nn7fucxcs
         6k/pJG9MM1Q9OXor3IflL44ks/wP5jmRo227fQvG2P6PRIBPhDZMIhULquIsziuBv8Nj
         ls0jPtLvRYxPNycPnQYevp03INO1p2b6sep+aUrzKAXkwn05a8GBq7ijqOW0TnsUF2sy
         Om3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=I+OEpsxe;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p8si76772pls.1.2021.05.12.11.02.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 May 2021 11:02:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 64C556142D;
	Wed, 12 May 2021 18:02:33 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <nathan@kernel.org>,
	Fangrui Song <maskray@google.com>,
	Palmer Dabbelt <palmerdabbelt@google.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-riscv@lists.infradead.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.11 17/35] riscv: Use $(LD) instead of $(CC) to link vDSO
Date: Wed, 12 May 2021 14:01:47 -0400
Message-Id: <20210512180206.664536-17-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210512180206.664536-1-sashal@kernel.org>
References: <20210512180206.664536-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=I+OEpsxe;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210512180206.664536-17-sashal%40kernel.org.
