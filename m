Return-Path: <clang-built-linux+bncBCP7VQF36ABBBJ7LZ36AKGQER7ZDZMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id DD30D297ADC
	for <lists+clang-built-linux@lfdr.de>; Sat, 24 Oct 2020 07:03:36 +0200 (CEST)
Received: by mail-qt1-x83a.google.com with SMTP id n7sf2985634qta.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 23 Oct 2020 22:03:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603515815; cv=pass;
        d=google.com; s=arc-20160816;
        b=RFKUXQvG7yPb1oOghudfcdXajlw5xYabQSwZFAFUXfYPu6bR1j/oNTB0CmpR04d5Gc
         76IMRM9hQAMY37muziFHBSNabhCT46Fd24vvxFrO+2hmqVbNeFCzLb7Nmm1WVEToyoIp
         WrDQ3seD+aI3faQZiHPD8+epeuRM7hdVnEigVkSy5a4CxDXlI6h8HN2/hW9PKFw/oLQC
         drk1owHOLn3SA3QTeJXzDSXaRL6u5Hnq5wdYL2y7Pl1sV9T2NruDVMmtyZZESw/GIW0K
         eLizf4N/gPJlUJw6J9H/b0uFjXgeMigMkcjHm7JceYrz12F/ULy6TJlUeHrPe8rE4wBg
         8W2A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:from:cc:mime-version
         :message-id:date:subject:dkim-signature;
        bh=B8ctloxbY7CKncbbsgVABKrtNxHRmFjKn3zbZq6BfV8=;
        b=GKbeyfTAsSf3+UY3ptce4Vh0mbWvhdS70bznfmia4VEW28nEQlKWeesP48T2BW44AF
         AAOM1D5emDtkyZmBKOLQw2fIksTNnBg17kTgg/qgDIWKkNiSg/SNzsEzbX5rGVM9TWLT
         oX9v5InAKZRcB/wnGIBQEVAgWOTRbU9ZRDjnCcr/MTWLkGobsgWmZQ0IodX38EvqPVWs
         TvmFUJKKtuVw9oxCQ3ZwrOWZG6W1lTolHHUkNN5gI7QKjFGHmQP5fNXAJS9W4fpwhgg7
         upXm6NfoJp0ZZqoKJPeClXy8Iyt0Ob/zJV+p+48HfwSXMAgmPO1q2q78k6VuWTZnsT49
         KShg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ck8l79uK;
       spf=pass (google.com: domain of palmerdabbelt@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=palmerdabbelt@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:date:message-id:mime-version:cc:from:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=B8ctloxbY7CKncbbsgVABKrtNxHRmFjKn3zbZq6BfV8=;
        b=c7mBT3WqYNHHJcp2U9v2ZKmxyxPLrXeT7qCAYkZm7AM1AgvfNBKGp/eubNyajlRB66
         gl0v6A65nNZwy1NL6nZLIXdnhw3//Pgjz+ShQuL95P1M5nG3ea5JpSX9jJXBxqEpSJdQ
         QSKpf2fW6RSi5nGZDQFJkwBBAN4QzkYoqDHqar+RwXkz/Tg0oKUkOxPqOoz5fEN84L2n
         EW55r45xADTdq3bvhZZHjB7ZLeeUIpAvpMaz1eRifjKRnjw1/K2ZeOMW/te7dCF7OqMB
         g+uRPsYCYt+qPiRWEwlAXsJPgoFL/ATqRkVfD9hmNwKgv8N/DcUFwf6/p7xCtIJLOMCP
         yuYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:date:message-id:mime-version:cc:from:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=B8ctloxbY7CKncbbsgVABKrtNxHRmFjKn3zbZq6BfV8=;
        b=nVXLaUfX93e5ljYkVPVhyhS8K/YRdSm3PCHl4S6MitkQVHwEzY7wKCqsPhne+E7Gnk
         EiNTtmSic+BMdYlc0F505Bexx1omGNwcc8b9QbHWqvn4RJYMWgPn+QI7xKRvVBU6LiBk
         3E2pwokSS4+luwtTeZPbDeJitVSDSRp8xzSVEXIEGUC1Pvt1U7tpVm+/E5mWovLHkM++
         jCc93+LgwqottrVEzH/gpEcPM9vAaiQk4OJtPBKF2FN1QyNoblOu2ZJ9qTRHbrievDfC
         b8Vw0uSp87rJNTZZO9KxncPBo2ON+Kt+F4MLUc72MNaSQf6UEjT3EH6GKEJoo7ftIJKs
         MZdQ==
X-Gm-Message-State: AOAM533J5KZ0SvakDgAITebOvV3JKLNONVeohpzAjhFVtO73UK8BnVHC
	7ryiM+oF7L8UoPtMeBmbWkg=
X-Google-Smtp-Source: ABdhPJyROONAbxBHzi+HspxsI7kUcM+sgIixmvLdqhm9hanwuV3tlfVdy7df0HGOolWTYB8pmrGMiQ==
X-Received: by 2002:ad4:4512:: with SMTP id k18mr6167137qvu.5.1603515815689;
        Fri, 23 Oct 2020 22:03:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:4d0c:: with SMTP id l12ls896669qvl.4.gmail; Fri, 23 Oct
 2020 22:03:35 -0700 (PDT)
X-Received: by 2002:a0c:8644:: with SMTP id p62mr2525395qva.13.1603515815227;
        Fri, 23 Oct 2020 22:03:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603515815; cv=none;
        d=google.com; s=arc-20160816;
        b=EONSrA8eZWWu4O6Yddtp6xWV4dg1WTkIHfSNeWsSd3XwJG85ivBqBvOmC/qG65sGqD
         JGT+cbKgDfCMOv1nvvI+uDwjBXiWIP/W9X8jvJpk5XkTMysdsfe7gbVaKGe9KNguIuI/
         Dcw+Ay51/bc2eMF8LVmEtRHI7vTOWOmWrk9VxR9oXxwTass+i8zk5DaxuKj7dZe2Mk0o
         wAMEY6rpChrcCgtc9y+amfgtoA4uKJvqYTDK/Q+phiKpUAZMUP5LP+MvopSfFMFHbXWx
         HHMmmb9E5MCk/OmSonrOXmk1cTVM4ZoJSjE8c/dAAresIiTXs8HKm4Of/vFN55KTGQ7L
         OtaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:cc:content-transfer-encoding:mime-version:message-id:date
         :subject:dkim-signature;
        bh=fSG6cPQ/PyomxWc/r6YhnXh3q/R6HLUA/aYpEpKSBuo=;
        b=j0QRhtHw0WeGHiqG8uQLVDkV3sjdldbZOeQ82cscUfIvPHv1vu7b3aHqzWlXNAN/Vw
         TgRpTaFsYqTqV4LPE1Z1bO1O6qDMM/xT4gstkMFl9Eil6IRKmBLruOGH/dUZQWw7M2AN
         wSiwRMfdgqt98jrt/JObZ7TH4emwXml2pL8Rw1Z9PpiJzPlfztqM8+V0qPTAdxfAaGg1
         gXXBoodrsEylSd8esrFtT3o1io+uO5G9uZ6ZVLUri3aMJ4QjC5aKKuglCL7PvnkKfG5o
         EQqa0EILuYlw3yXKHcUHvYHBX2KUCK5DO2QPPS+rG24u2799eIP+zT1mCT2jQI216+Ol
         r8HQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ck8l79uK;
       spf=pass (google.com: domain of palmerdabbelt@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=palmerdabbelt@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id x13si126313qka.3.2020.10.23.22.03.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Oct 2020 22:03:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of palmerdabbelt@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id y1so2089815plp.6
        for <clang-built-linux@googlegroups.com>; Fri, 23 Oct 2020 22:03:35 -0700 (PDT)
X-Received: by 2002:a17:90a:f187:: with SMTP id bv7mr6886050pjb.198.1603515814166;
        Fri, 23 Oct 2020 22:03:34 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net. [76.210.143.223])
        by smtp.gmail.com with ESMTPSA id w19sm3899261pfn.174.2020.10.23.22.03.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Oct 2020 22:03:33 -0700 (PDT)
Subject: [PATCH v3] RISC-V: Fix the VDSO symbol generaton for binutils-2.35+
Date: Fri, 23 Oct 2020 21:50:47 -0700
Message-Id: <20201024045046.3018271-1-palmerdabbelt@google.com>
X-Mailer: git-send-email 2.29.0.rc1.297.gfa9743e501-goog
MIME-Version: 1.0
Cc: kernel-team@android.com, Palmer Dabbelt <palmerdabbelt@google.com>,
  clang-built-linux@googlegroups.com, stable@vger.kernel.org
From: "'Palmer Dabbelt' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: linux-riscv@lists.infradead.org
X-Original-Sender: palmerdabbelt@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Ck8l79uK;       spf=pass
 (google.com: domain of palmerdabbelt@google.com designates
 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=palmerdabbelt@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Palmer Dabbelt <palmerdabbelt@google.com>
Reply-To: Palmer Dabbelt <palmerdabbelt@google.com>
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

We were relying on GNU ld's ability to re-link executable files in order
to extract our VDSO symbols.  This behavior was deemed a bug as of
binutils-2.35 (specifically the binutils-gdb commit a87e1817a4 ("Have
the linker fail if any attempt to link in an executable is made."), but as that
has been backported to at least Debian's binutils-2.34 in may manifest in other
places.

The previous version of this was a bit of a mess: we were linking a
static executable version of the VDSO, containing only a subset of the
input symbols, which we then linked into the kernel.  This worked, but
certainly wasn't a supported path through the toolchain.  Instead this
new version parses the textual output of nm to produce a symbol table.
Both rely on near-zero addresses being linkable, but as we rely on weak
undefined symbols being linkable elsewhere I don't view this as a major
issue.

Fixes: e2c0cdfba7f6 ("RISC-V: User-facing API")
Cc: clang-built-linux@googlegroups.com
Cc: stable@vger.kernel.org
Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>

---

Changes since v2 <20201019235630.762886-1-palmerdabbelt@google.com>:

* Uses $(srctree)/$(src) to allow for out-of-tree builds.

Changes since v1 <20201017002500.503011-1-palmerdabbelt@google.com>:

* Uses $(NM) instead of $(CROSS_COMPILE)nm.  We use the $(CROSS_COMPILE) form
  elsewhere in this file, but we'll fix that later.
* Removed the unnecesary .map file creation.

---
 arch/riscv/kernel/vdso/.gitignore |  1 +
 arch/riscv/kernel/vdso/Makefile   | 17 ++++++++---------
 arch/riscv/kernel/vdso/so2s.sh    |  6 ++++++
 3 files changed, 15 insertions(+), 9 deletions(-)
 create mode 100755 arch/riscv/kernel/vdso/so2s.sh

diff --git a/arch/riscv/kernel/vdso/.gitignore b/arch/riscv/kernel/vdso/.gitignore
index 11ebee9e4c1d..3a19def868ec 100644
--- a/arch/riscv/kernel/vdso/.gitignore
+++ b/arch/riscv/kernel/vdso/.gitignore
@@ -1,3 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0-only
 vdso.lds
 *.tmp
+vdso-syms.S
diff --git a/arch/riscv/kernel/vdso/Makefile b/arch/riscv/kernel/vdso/Makefile
index 478e7338ddc1..a8ecf102e09b 100644
--- a/arch/riscv/kernel/vdso/Makefile
+++ b/arch/riscv/kernel/vdso/Makefile
@@ -43,19 +43,14 @@ $(obj)/vdso.o: $(obj)/vdso.so
 SYSCFLAGS_vdso.so.dbg = $(c_flags)
 $(obj)/vdso.so.dbg: $(src)/vdso.lds $(obj-vdso) FORCE
 	$(call if_changed,vdsold)
+SYSCFLAGS_vdso.so.dbg = -shared -s -Wl,-soname=linux-vdso.so.1 \
+	-Wl,--build-id -Wl,--hash-style=both
 
 # We also create a special relocatable object that should mirror the symbol
 # table and layout of the linked DSO. With ld --just-symbols we can then
 # refer to these symbols in the kernel code rather than hand-coded addresses.
-
-SYSCFLAGS_vdso.so.dbg = -shared -s -Wl,-soname=linux-vdso.so.1 \
-	-Wl,--build-id -Wl,--hash-style=both
-$(obj)/vdso-dummy.o: $(src)/vdso.lds $(obj)/rt_sigreturn.o FORCE
-	$(call if_changed,vdsold)
-
-LDFLAGS_vdso-syms.o := -r --just-symbols
-$(obj)/vdso-syms.o: $(obj)/vdso-dummy.o FORCE
-	$(call if_changed,ld)
+$(obj)/vdso-syms.S: $(obj)/vdso.so FORCE
+	$(call if_changed,so2s)
 
 # strip rule for the .so file
 $(obj)/%.so: OBJCOPYFLAGS := -S
@@ -73,6 +68,10 @@ quiet_cmd_vdsold = VDSOLD  $@
                            $(patsubst %, -G __vdso_%, $(vdso-syms)) $@.tmp $@ && \
                    rm $@.tmp
 
+# Extracts
+quiet_cmd_so2s = SO2S    $@
+      cmd_so2s = $(NM) -D $< | $(srctree)/$(src)/so2s.sh > $@
+
 # install commands for the unstripped file
 quiet_cmd_vdso_install = INSTALL $@
       cmd_vdso_install = cp $(obj)/$@.dbg $(MODLIB)/vdso/$@
diff --git a/arch/riscv/kernel/vdso/so2s.sh b/arch/riscv/kernel/vdso/so2s.sh
new file mode 100755
index 000000000000..3c5b43207658
--- /dev/null
+++ b/arch/riscv/kernel/vdso/so2s.sh
@@ -0,0 +1,6 @@
+#!/bin/sh
+# SPDX-License-Identifier: GPL-2.0+
+# Copyright 2020 Palmer Dabbelt <palmerdabbelt@google.com>
+
+sed 's!\([0-9a-f]*\) T \([a-z0-9_]*\)@@LINUX_4.15!.global \2\n.set \2,0x\1!' \
+| grep '^\.'
-- 
2.29.0.rc1.297.gfa9743e501-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201024045046.3018271-1-palmerdabbelt%40google.com.
