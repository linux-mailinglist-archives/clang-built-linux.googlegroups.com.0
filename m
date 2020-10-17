Return-Path: <clang-built-linux+bncBCP7VQF36ABBBB75VD6AKGQERAH4QJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3f.google.com (mail-vs1-xe3f.google.com [IPv6:2607:f8b0:4864:20::e3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EF28290E61
	for <lists+clang-built-linux@lfdr.de>; Sat, 17 Oct 2020 02:44:56 +0200 (CEST)
Received: by mail-vs1-xe3f.google.com with SMTP id r10sf921794vsq.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Oct 2020 17:44:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602895495; cv=pass;
        d=google.com; s=arc-20160816;
        b=RcWjhtFq4xVwqfGyErGqsY5m5qKUXVAbFitt+zjhrAU8fQXZkqbXjimArW+YmtTrak
         fCRaX/WuNCRk7LaKSLdQqs6wJV1eNHClb99Ph4sulO2YhlSVyXuf/x9xsfLc6mXBQ9oT
         J7VV9ArmeqHxZkT/jemWsl5wSVafuZCpjzXnXx65eLy0NmbEpHG1v/+ep5y6Mp5O2PHY
         jBOTtq2o8omzKDOoLSmvTg1KZwiH447dGu1EEFa2fmGVaESWtKn1yz35ga6G989zog1I
         BxUTtcjDE9m+bmREI2yergxdKtYXrXmLXUO2jSkrrJ7boakH5ADCTlhCdK8K8YBozJWn
         yhiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:from:cc:mime-version
         :message-id:date:subject:dkim-signature;
        bh=IvZ/8it4HbfcnwMnID7o8xLteXi8xaIj2Qhc11+SdEE=;
        b=qqtNP2I2kvgWVl73pCp3GYygsxMRFGiKEfUb28fMfJp6lP1jd4VF6YmFhODEcL1OI2
         Hp10B5oYC/wnlhI6zVw88Cnqx3csU5UAoxsuFUX1C4ZGlfAXxQNffMltVPJuJkAsrnf4
         pxIMSD0HFOTmwKLOXlRcW/M5ygtmhuU3pneGFSvLC7MNzih1uJW8lmSC57UUOUQFfFMl
         seRw4WnhD2fd3VS2ZJXQKVmpwJt4SScCENYOfIVN7nQLuHo6bFbIlH8oG1bi7t4GUgCS
         5eOS17zqr0qsQFlgUf0MJKi2n7Ierdtyv/4+TukXQ7bSpibkMoN6oHf6qY9jwW7klseA
         l/BA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=wHQ2iNs1;
       spf=pass (google.com: domain of palmerdabbelt@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=palmerdabbelt@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:date:message-id:mime-version:cc:from:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=IvZ/8it4HbfcnwMnID7o8xLteXi8xaIj2Qhc11+SdEE=;
        b=s19rBpjEo9RDOdcbf2TyRfT2xsQyLW0lJeZvQskk42R2ZI1bfJKwq3MOJRSHBQPhcS
         Sn/vQ7nZBUEZq0zHyO2oKg1D7t41YV6p97xNnVdLhOI2e6Zw9/gaATVXWSwsdiAxa1ZZ
         B8OUi6u3ND5YIuF9DrDUh+4+CAp+vW7YCdL3ELOnrhSt6QAIHeT6zbSYOHuLYzbuTYtt
         yBppdSYaDi7LSt1hV3h42zDhLX0BjCceDlrUH1ujWVO+WBLPSSuTjx15PoQMWsKdKZal
         HJ8YURE7t0bbQDP4iuki8mwRWPKRLeFmD15By8e8YbLplY4mxb+ila83lJppe6rqZDgY
         dMow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:date:message-id:mime-version:cc:from:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IvZ/8it4HbfcnwMnID7o8xLteXi8xaIj2Qhc11+SdEE=;
        b=NyJgDmVcQDj3Y9OGET6qC7JN42BRjX1OlbY65nd5TLNFQfe0eNZ9LHMva/um9A18Bn
         xNjIH6sImjjca2r0N5iim5Turqk/Md6qsHc0VrN+bI/IObZsVvOK1mIFGbcYKxUZ+NTU
         kg3HpsANRbsL8f0VZfKN7FQq4y72Bgw6cQ+S9gpckB9opNtcUmWU96gzLZcx1hmhTLZ3
         ceS14NEHHd9ADUNqH99psSy0yb/8pEA7IMcC3OMRwc0G8f3XkQhCzwMpiuiM7bqX3Rvk
         emQX4EgYQvT1duHw/jW8zii/7psLlMd6bLUIJeZT9+8daYJuRqc99Q60tTM9Obas871g
         qjRg==
X-Gm-Message-State: AOAM533/6gkL4txCgfgGR8q4NtB3+ou6EXyO61CDQrmhQWaHd7kAmIuw
	wCfdjeJYqQzMUF+7KM2OrhU=
X-Google-Smtp-Source: ABdhPJwbXtzIs74CdPKHYa6XHxf83FtipA7mmzfAm/8kymgYG1dwTRpq4a/PblyiecsHpRO4j7R9JQ==
X-Received: by 2002:ab0:a94:: with SMTP id d20mr3399683uak.86.1602895495389;
        Fri, 16 Oct 2020 17:44:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:e29a:: with SMTP id g26ls579510vsf.6.gmail; Fri, 16 Oct
 2020 17:44:54 -0700 (PDT)
X-Received: by 2002:a67:68c9:: with SMTP id d192mr4028710vsc.5.1602895494766;
        Fri, 16 Oct 2020 17:44:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602895494; cv=none;
        d=google.com; s=arc-20160816;
        b=l5Df27Mp43PuwZ4rgiJV1hoU+E+C8FqkPtKoBRvCBD21OWG+NLJ3Y3kwi88jkdCiiQ
         yuen46g+CGW7jt8JS5g5h/oI+yR5Yrm8J7SAgGMT8WSUn3iJqOjpXW+X3SC5jgRehNkq
         UN4Ch7jrDTiw/Cb+qm2tfsqHd0n/Nfai6kVu5PGEPMdXa3u1oxpLz5AlrTgbQ9lMGR7C
         Cgz8cMeF5yOc88Zglnk+1CYfQFrEY20YDWzXWrmioNvejlXEdbq2KoH+WRD2v5+ui6J3
         SN2RlkrLyEu9pNsM6bkp59WoR1WjynL0EtwBac08I8D3dwc8oxFVEqoR8tpOrhdxq2Pw
         XyDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:cc:content-transfer-encoding:mime-version:message-id:date
         :subject:dkim-signature;
        bh=BpVjr56bc2eZQztVfeg5TISaF4L8R2aKn65CiAfaVf8=;
        b=1KJBfbaPR/mkO0WeVbQNeJiM8XWhH37JJPQKAhgEFrOixn3ibLiF6Ug9uvxYzgUwxH
         nNQ8mHRgR+7SAnIuEQlwFxO/KVuZJ7NvSpImDQjp3w+MkDuSr2vgHT5S4a4t1C050Lkq
         9eHpcpdZ7oC0Lv+C4i5ZVgHqBs/l/bbMJyF9vAOXzq7uOPC/iqr77G00fIIAf8G8RboJ
         j4QtJmfrsTocTxMIuG698VJvJfe4i/jDcLZEZHZE3mF/4FWy+gr5B4E0JCMUUJMZOUHc
         9C2euG6aVPnQCxOwREYkYBXM3y/dACTksVSMGvF5jv1RD9xoTYAOCznz9am9mOK8zTgB
         4Ftg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=wHQ2iNs1;
       spf=pass (google.com: domain of palmerdabbelt@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=palmerdabbelt@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id e21si276788vsj.2.2020.10.16.17.44.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Oct 2020 17:44:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of palmerdabbelt@google.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id 1so2145828ple.2
        for <clang-built-linux@googlegroups.com>; Fri, 16 Oct 2020 17:44:54 -0700 (PDT)
X-Received: by 2002:a17:90b:383:: with SMTP id ga3mr6919579pjb.2.1602895493712;
        Fri, 16 Oct 2020 17:44:53 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net. [76.210.143.223])
        by smtp.gmail.com with ESMTPSA id b21sm3816739pfb.97.2020.10.16.17.44.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Oct 2020 17:44:53 -0700 (PDT)
Subject: [PATCH] RISC-V: Fix the VDSO symbol generaton for binutils-2.34+
Date: Fri, 16 Oct 2020 17:25:00 -0700
Message-Id: <20201017002500.503011-1-palmerdabbelt@google.com>
X-Mailer: git-send-email 2.29.0.rc1.297.gfa9743e501-goog
MIME-Version: 1.0
Cc: kernel-team@android.com, Palmer Dabbelt <palmerdabbelt@google.com>,
  stable@vger.kernel.org, clang-built-linux@googlegroups.com
From: "'Palmer Dabbelt' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: linux-riscv@lists.infradead.org
X-Original-Sender: palmerdabbelt@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=wHQ2iNs1;       spf=pass
 (google.com: domain of palmerdabbelt@google.com designates
 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=palmerdabbelt@google.com;
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
binutils-2.34 (specifically the binutils-gdb commit a87e1817a4 ("Have
the linker fail if any attempt to link in an executable is made."),
which IIUC landed in 2.34), which recently installed itself on my build
setup.

The previous version of this was a bit of a mess: we were linking a
static executable version of the VDSO, containing only a subset of the
input symbols, which we then linked into the kernel.  This worked, but
certainly wasn't a supported path through the toolchain.  Instead this
new version parses the textual output of nm to produce a symbol table.
Both rely on near-zero addresses being linkable, but as we rely on weak
undefined symbols being linkable elsewhere I don't view this as a major
issue.

Fixes: e2c0cdfba7f6 ("RISC-V: User-facing API")
Cc: stable@vger.kernel.org
Cc: clang-built-linux@googlegroups.com
Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
---
 arch/riscv/kernel/vdso/.gitignore |  1 +
 arch/riscv/kernel/vdso/Makefile   | 19 +++++++++----------
 arch/riscv/kernel/vdso/so2s.sh    |  7 +++++++
 3 files changed, 17 insertions(+), 10 deletions(-)
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
index 478e7338ddc1..2e02958f6224 100644
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
@@ -68,11 +63,15 @@ $(obj)/%.so: $(obj)/%.so.dbg FORCE
 # Make sure only to export the intended __vdso_xxx symbol offsets.
 quiet_cmd_vdsold = VDSOLD  $@
       cmd_vdsold = $(CC) $(KBUILD_CFLAGS) $(call cc-option, -no-pie) -nostdlib -nostartfiles $(SYSCFLAGS_$(@F)) \
-                           -Wl,-T,$(filter-out FORCE,$^) -o $@.tmp && \
+                           -Wl,-T,$(filter-out FORCE,$^) -o $@.tmp -Wl,-Map,$@.map && \
                    $(CROSS_COMPILE)objcopy \
                            $(patsubst %, -G __vdso_%, $(vdso-syms)) $@.tmp $@ && \
                    rm $@.tmp
 
+# Extracts
+quiet_cmd_so2s = SO2S    $@
+      cmd_so2s = $(CROSS_COMPILE)nm -D $< | $(src)/so2s.sh > $@
+
 # install commands for the unstripped file
 quiet_cmd_vdso_install = INSTALL $@
       cmd_vdso_install = cp $(obj)/$@.dbg $(MODLIB)/vdso/$@
diff --git a/arch/riscv/kernel/vdso/so2s.sh b/arch/riscv/kernel/vdso/so2s.sh
new file mode 100755
index 000000000000..7862866b5ebb
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201017002500.503011-1-palmerdabbelt%40google.com.
