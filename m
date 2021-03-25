Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBEEM6SBAMGQEBUZ64NQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F3AB349BFA
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Mar 2021 22:52:18 +0100 (CET)
Received: by mail-oi1-x23d.google.com with SMTP id o125sf2415331oif.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Mar 2021 14:52:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616709137; cv=pass;
        d=google.com; s=arc-20160816;
        b=XyLbt/pzR1W9ZuTDL7n+Wvy3xp6eFtU2OXFO9Gghj+ykCUTvSqlZQTgXensBvZ6sn+
         gQmTtBb6o/wS5G+9jQP9k0qctpOduSKGPgjHtTb0iFoT3uxJZ8Sg4yAC+T+aoFpbGEsF
         boBOmMHeINUHaeIj2Q5izEfnBewBuCEkBPcmfYVECDKaOaVwfhWa7ul69izY1GRsdi4Y
         kERtry5m1K5gkCcMD9jZ+kRiyD+tXw5SfnbQdiQmA7U4il1sLXAftP6+6IfD8WZE5g1X
         n/KqSFfdB78dh8bQF1emLGzq+Cj2eW5OBvgVofUpMQwD6Tc1pk6Zeqjob1xryGx8Ycvf
         hF5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=Q/ssqm33+sQiSGKx16aFbmsR7SKKEnn8BpPL3erQwdY=;
        b=SjcekP/GwF/5ErkWgJMAYAUaBNyh5BXuO5p8qkerB9VmRFzYjBKs//cK0kBUrSZ6SA
         /BjMM3m9pA3r+7tmaCdXBXsoHEnV9FcjURgsuujnH07dJpibk6EvmxqJrDae+26H1JyI
         BecHjhm32XohHnuZMiAs7qe0k3Oftcmr61pQuN3O6uybpm/pqK+xclFPVgdBH1mT6Ro/
         0WONnWMS+2gzY+mPLGjSpaJZA1SYbgJ7hzxqsJ/xizZ5aQYaQnf7m8xnLfQhGwI+3JNh
         aeP0m/tjVgAj9vjupXEZLBjntmHZqXqdPo1JpDKAbUZxGIyh8N5WTCZjoJ4ZduheTAQY
         8TWw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=c4O6fgS9;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q/ssqm33+sQiSGKx16aFbmsR7SKKEnn8BpPL3erQwdY=;
        b=Di8XzDAkOq/5ZXgwXs8Pl7tvn2mRhgzc6T9tEHvH2+YLAOoR4W26EoARTIkYibz57d
         08p6JLuN8JfaIUH8iUkwYwEohwmW3YtZ2YPvnB7mteGOawqqcgR3qJzQhwTYlVEfacc3
         e2Bvw1NTpu18JYOFgIFhTxnSRehCdwA1Jkyl+qjzX0OuPkDN0zp+0eCBWfeMiW8+aNTM
         pt1USJamcsj39L58CEUGx/NyjgY7gl7yYGHqRJFQl6yOtWiXvO8ozIiapNPTzgeBe6ql
         fnod4dVkGJL7TgafGSGaDYbVufMBptAcZLmdRZeDwZ6W7gvZ23PceTlzCOZvy3qYE7WU
         anyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Q/ssqm33+sQiSGKx16aFbmsR7SKKEnn8BpPL3erQwdY=;
        b=DF0u9tarknKfUHg0oEi+o0D3g73g7GmJHvSEdBupLuLWqQinSufrOPniHlPnybPEDt
         rbNXxfEoN+op9B3QpQFq5rUo6hk6RSQkzwUyPW2Ra9Px/LAeggqEbv/tfWuBTyQ5x2ML
         wX4ojcqpd26nzKXzRi0k508Ak3V7M5j+5oYIx0hmBAt0ZJHFT0f6yv3s6mQIF2PXF+T3
         aPb6v0Dzc/oHQqSfhOMcIYQ2k9it+IzSRpEyYyrvvfYvj5sW9jETul4shbKFwKdWeidX
         V0j//6l+4sK/rtMpY/SeOYHDbAeNR+q/uRdpqyN7f5pi5/GjbQZVvHyIffrMx3o0PPma
         Wo8Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530QE0Ampw/btlmlz4iutupVprgNv0uNp6IR3vtdvS40I7+ucKUm
	+t0dJKrQlbi4VUGnshYYkFU=
X-Google-Smtp-Source: ABdhPJzCo38BJhPCMeBxGaGaRUDaocCuLPGDBB4yYIQ4XNLQGOBmOefxhkSzwLY+Hk124NHJ2IVqhQ==
X-Received: by 2002:aca:1a19:: with SMTP id a25mr7627054oia.167.1616709136894;
        Thu, 25 Mar 2021 14:52:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:3794:: with SMTP id r142ls451946oor.2.gmail; Thu, 25 Mar
 2021 14:52:16 -0700 (PDT)
X-Received: by 2002:a4a:9533:: with SMTP id m48mr8730052ooi.34.1616709136490;
        Thu, 25 Mar 2021 14:52:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616709136; cv=none;
        d=google.com; s=arc-20160816;
        b=dIBMUslu60yTIXSNqYXr+4q48UjreYX81lWwY4CsAC6u34U1WlD+U39MwvzsMnv6NI
         4TFtX2O5NWkdJNp6MWGFQEwol/gEoT/cHgQrF6kfg/Vo6R79H23o8XNKtoDlo6gY10F9
         WMoj1ifCWYaEETmh79EHVfC3069Qq/5WJE46cAW0iuKkSRFVq1hzcyTP/a5Eb18Zdkur
         Ee3ipB1PSDpU35Xdh1kLSRJ2996Q6JjNeN29cjRBN/Qay/J7mvzpITBzrv9nGCntF0Cz
         vMLyE9/TcPdumRRshJImh70osmYipfxaHWpgoL6CrekkBcbXo4uPWQCSxQflW06lirem
         4fJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=BCtG47frM2KZ5TS5cn5ecZV2baxTHH+HmXoc14Qe0mI=;
        b=0O0wTqZ1VeLo0ygqsehkQrDdfNCE4Hw7r8G3OxKe0gSV+EgYNRmVfgS0o7cDmqW9vS
         +hnuPXD0o/FVcvKhyU+0RtjAsFwPG+qMJ6uq0dqpYaD+tjVO526fM3Bvta+DA+V4RzSu
         oZtKFAxgfztqlxWgDR0vB+RHOMSXCVE/xBVhEFqqMI23jVDwJMzW+QL/0sBJPDHPR3N/
         yOLX9yhabUz2Pb+oERaPMKqjnHeg7mLQmaq4f9UseUMbEmQUa2ZxqLOeq7WSU1T8TK/t
         Dj3aavf74jiH6cdh8HsIwBxte31RWwHsd+Vt9hFivPuNSIE9dNmQbmW7wrUEGiB1s2uK
         T2IA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=c4O6fgS9;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a4si261531oiw.5.2021.03.25.14.52.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Mar 2021 14:52:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 37C0C61A27;
	Thu, 25 Mar 2021 21:52:14 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Albert Ou <aou@eecs.berkeley.edu>
Cc: linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH] riscv: Use $(LD) instead of $(CC) to link vDSO
Date: Thu, 25 Mar 2021 14:51:56 -0700
Message-Id: <20210325215156.1986901-1-nathan@kernel.org>
X-Mailer: git-send-email 2.31.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=c4O6fgS9;       spf=pass
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
2.31.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210325215156.1986901-1-nathan%40kernel.org.
