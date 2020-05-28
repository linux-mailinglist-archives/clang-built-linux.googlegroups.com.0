Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBXVJXX3AKGQEJRZUBTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EEEC1E573F
	for <lists+clang-built-linux@lfdr.de>; Thu, 28 May 2020 08:06:23 +0200 (CEST)
Received: by mail-oo1-xc3a.google.com with SMTP id 187sf14804584oor.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 23:06:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590645982; cv=pass;
        d=google.com; s=arc-20160816;
        b=PlJkS7EQxMgnWbYsg2MMQUnZZo6LhzDxNn9c8n9hm4Q57B6b8gIkPQ5RLL+sTX0rBv
         3vEI7OKO28GqMS4nnpBugqzzmDiM7dK3yhD2zFb/Otb/otAEvvOZy2nZ7392PwzFL0RV
         0KrFIs8MDj1IKmgGrSJ9FBYH0Fnq26lXh9IgGZMasWpTtECMu6SRVuXut/dSrfxNVN/S
         z1wQUIlvoBSXgedeimVv1VlCi5ONsu+EyUY8CXN/gPGV5Z1Z0Fq4hF7MVCa2ifW3JwBE
         iYK2w2n94gKbFceGUibsvDnwCNAYy9sbaHAQIFDSAOoOsHUY6RcVDa9wqBuYCPhlcCjV
         RTIQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=WzmYtfL85s3FbOKqDgITqZ2M4U7xBA4aeWstEczItc4=;
        b=vX70xyn4JilkUqy8B9DqIcf72KT69jYaBaH7FvI2liYHI/HaPhjUJTDLfHrz6qUH9x
         uYzrMv9LWzcisx3Sp82vViBW89+NJOD2owid38hRFjaDHDkMaqG2up40SvVAMhc9nhXk
         LbBvgAmPDUFadxTTmOwgd2Khn8OnrymrHV2ZxUPCt+gCE9ha8sTKMBGbZw0YbmMmCSNo
         4mApXZk0GY1fuNQguOM7FldXSWIV2RzFIOhIV5WhxCD5Kl80cXDVLTAY181997ANE0Fl
         vOk7Kf5nRbOJvLHnJnUEIx2KxgDwAOSVVEoXVMBV7LATdIuwUZQSiiZoaB/MK8ZZ5/KC
         3uZw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qzQNmOjJ;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WzmYtfL85s3FbOKqDgITqZ2M4U7xBA4aeWstEczItc4=;
        b=K9N4TA4+JPwK9hIP/7/x+oN7rFaMvCsNv4JdlOGw0qhftKBmsjVGq8Ml4LjqsqT/It
         g++9b5kMUYWPLPyNVGQqyv0PIzVn8P+OYuSWCtrTKxPpaCqa3ggFitp3VMCteYxWLNie
         QQBDqJ6ljSNMJj/tubA7PrqAiPilqb8R8hjJKDuXBEMdI21Uk02X0p4A8HmnlINHzbFw
         Ss09uYQQqnJZ4zmovqeCN2Ec7yC6Z6/lRuDQl9knPNhb+jqMe3RXUqGyxaVjifcmS0ti
         ylo+5zv4cyUD4maZ9fh+eI1WM6eLgxhr5NLOALro1eWgRb3PNlAj6u9/YnbwUFOSc7WH
         wZJg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WzmYtfL85s3FbOKqDgITqZ2M4U7xBA4aeWstEczItc4=;
        b=InH8fg4EmDLYtvFrZ6bl/70zCUDxC6eYQBo+lENS5PHmK2r//XIq6CMavkNN4c2Eie
         RVupjXkIOp79upwRoVeo3AZbUZMtEtHrEFMpxv10PQLPXSxOK/+6LQif80Jmb3yR+bk/
         x3lYSSZ7MHS81fQCXs/4Lhk1PNY4RNTcDsFLKaKnkrhAPIZB0bQ1kOU+eWaaHMZZ7Y/5
         7Xn5/Wcq0K7ZmJusyyWH/ABO2oiampKsi9BlAcpcKzkT7PvwGPZkSbDIfGEj8nELoXDt
         d09tQR72W6pZvTrSckbRvhXhgQtb8C3UKzN8LWNHWpr19LJYRswt/OIr20YuG8LsbJES
         GwCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WzmYtfL85s3FbOKqDgITqZ2M4U7xBA4aeWstEczItc4=;
        b=EN1O7bdtMT55AimpXm1C5e1uwji6LFlO/bf2v8DRLTudb81+vKsHN1kW0Z0KNQZb5l
         DbFJ0HoW607LE1Tu8W5a8jOy4FVdPK8N9S8+DDKfJDS4ZfUw+dpy7fZQlOgkHe20FGb5
         p6e+pGUzpDBAJoSMjXkUexPAVN2FmjTeqQqU7sEwOPHCct2Xqf0fd5JML4hkdY5M3b53
         uiCXnJIi3BJLTOCwt6WS6r4drIOfVphsxGIJl+S7v+lBQVTX6vpYHTHXgl9hWOBXNj+9
         NYkqzSVKje/ErfjDxp3vGP/Tsax0EkLU8hwrKTIEmR7mvVao7VmRbpcM6+nAsBXR/Qvm
         3Nkw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532WLTzFKj9egwnHOr4baLvqMCy5aajV02N3tDZelKg1IAxvMu68
	BAyCYmh8/jsUCT/0G/6K/kw=
X-Google-Smtp-Source: ABdhPJzQsgAIWUGE6goYnKPA6JwZwHw0vR4m5cWWQHkDjL+V7Rw58nlD9gn9A6gleXrC+7ZX6TmIhw==
X-Received: by 2002:aca:da55:: with SMTP id r82mr1192861oig.100.1590645982072;
        Wed, 27 May 2020 23:06:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:494b:: with SMTP id w72ls21690oia.4.gmail; Wed, 27 May
 2020 23:06:21 -0700 (PDT)
X-Received: by 2002:aca:4182:: with SMTP id o124mr383078oia.24.1590645981742;
        Wed, 27 May 2020 23:06:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590645981; cv=none;
        d=google.com; s=arc-20160816;
        b=0VTYdFYFcwuPcHEJwjrcUadqUGjIwRTLLoDwQLFfFYoArxBY2HxvhGSU73nGDQPKQj
         wTIpze32FpuCADGjN7lFwcmrWJaYN5YIWMpOzxFZGWuCeGYtt7Szi5aAqj7rY0vgLuWA
         O0CCDI/CjmS27JUw0t5OUEvB5Lux3eCrhG/m4dVNNKvhznJHd6FWmPH/jwF7l5IWXO2V
         khAZT/kYJCgluuKKSHBscSq8nDiHayH/eOQg1ljhO+UHutfWLztgMJfq31D4zjxIv+ZH
         yGs0r8Fz7yrN6muW62/NeYP9n0BUj0f/u7ukvV67UM36KVM10HVbZnN8JWPIVCymLcH5
         fNrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=QRjmGZLeTYEO4i6MoF3PtMzQtXAOSemrWcRExVPUhU0=;
        b=lmGGhOpyWkggmkyS1fMUJNW4svUTruePzkL/6WgE1ZzvyN278ViaOUUTACV7GuJghq
         iqtH0OFaAWGM7pCTY7e6Un0C6dXcE9gyOPBMnieBRtstCen91l2c5VHwMsrkKi4GCsiQ
         419rZ8Fg505VOExD+YdPlTf+gs/nA+a8Hv5Cf6KJyEes+tZ9j0VtQdD5IEvWB3Rwbe77
         CT6n4uGnpH7NI6YPC2nRIfhcfhQnGEQc6gqcIdvwRg9JIBEJJuu9makWmUfp+hdeVF1u
         kWMBcSFzxgZi9ewvmdoeC0kekCDeA9IXxtsfbC9DRiTvSSbSvs9DSTNeJ/6kQS7XNIEt
         UU0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qzQNmOjJ;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id e20si432687oie.4.2020.05.27.23.06.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 May 2020 23:06:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id 5so2560628pjd.0
        for <clang-built-linux@googlegroups.com>; Wed, 27 May 2020 23:06:21 -0700 (PDT)
X-Received: by 2002:a17:902:7d89:: with SMTP id a9mr1924897plm.309.1590645980888;
        Wed, 27 May 2020 23:06:20 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id w73sm3698863pfd.113.2020.05.27.23.06.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 May 2020 23:06:20 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Heiko Carstens <heiko.carstens@de.ibm.com>,
	Vasily Gorbik <gor@linux.ibm.com>,
	Christian Borntraeger <borntraeger@de.ibm.com>
Cc: linux-s390@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Fangrui Song <maskray@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] s390: vdso: Use $(LD) instead of $(CC) to link vDSO
Date: Wed, 27 May 2020 23:06:01 -0700
Message-Id: <20200528060600.2732012-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.27.0.rc0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=qzQNmOjJ;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Currently, the VDSO is being linked through $(CC). This does not match
how the rest of the kernel links objects, which is through the $(LD)
variable.

When clang is built in a default configuration, it first attempts to use
the target triple's default linker, which is just ld. However, the user
can override this through the CLANG_DEFAULT_LINKER cmake define so that
clang uses another linker by default, such as LLVM's own linker, ld.lld.
This can be useful to get more optimized links across various different
projects.

However, this is problematic for the s390 vDSO because ld.lld does not
have any s390 emulatiom support:

https://github.com/llvm/llvm-project/blob/llvmorg-10.0.1-rc1/lld/ELF/Driver.cpp#L132-L150

Thus, if a user is using a toolchain with ld.lld as the default, they
will see an error, even if they have specified ld.bfd through the LD
make variable:

$ make -j"$(nproc)" -s ARCH=s390 CROSS_COMPILE=s390x-linux-gnu- LLVM=1 \
                       LD=s390x-linux-gnu-ld \
                       defconfig arch/s390/kernel/vdso64/
ld.lld: error: unknown emulation: elf64_s390
clang-11: error: linker command failed with exit code 1 (use -v to see invocation)

Normally, '-fuse-ld=bfd' could be used to get around this; however, this
can be fragile, depending on paths and variable naming. The cleaner
solution for the kernel is to take advantage of the fact that $(LD) can
be invoked directly, which bypasses the heuristics of $(CC) and respects
the user's choice. Similar changes have been done for ARM, ARM64, and
MIPS.

Link: https://github.com/ClangBuiltLinux/linux/issues/1041
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 arch/s390/kernel/vdso64/Makefile | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/arch/s390/kernel/vdso64/Makefile b/arch/s390/kernel/vdso64/Makefile
index bec19e7e6e1c..b8db1ffbc2b9 100644
--- a/arch/s390/kernel/vdso64/Makefile
+++ b/arch/s390/kernel/vdso64/Makefile
@@ -18,8 +18,8 @@ KBUILD_AFLAGS_64 += -m64 -s
 
 KBUILD_CFLAGS_64 := $(filter-out -m64,$(KBUILD_CFLAGS))
 KBUILD_CFLAGS_64 += -m64 -fPIC -shared -fno-common -fno-builtin
-KBUILD_CFLAGS_64 += -nostdlib -Wl,-soname=linux-vdso64.so.1 \
-		    -Wl,--hash-style=both
+ldflags-y := -shared -nostdlib -soname=linux-vdso64.so.1 \
+	     --hash-style=both -T
 
 $(targets:%=$(obj)/%.dbg): KBUILD_CFLAGS = $(KBUILD_CFLAGS_64)
 $(targets:%=$(obj)/%.dbg): KBUILD_AFLAGS = $(KBUILD_AFLAGS_64)
@@ -37,8 +37,8 @@ KASAN_SANITIZE := n
 $(obj)/vdso64_wrapper.o : $(obj)/vdso64.so
 
 # link rule for the .so file, .lds has to be first
-$(obj)/vdso64.so.dbg: $(src)/vdso64.lds $(obj-vdso64) FORCE
-	$(call if_changed,vdso64ld)
+$(obj)/vdso64.so.dbg: $(obj)/vdso64.lds $(obj-vdso64) FORCE
+	$(call if_changed,ld)
 
 # strip rule for the .so file
 $(obj)/%.so: OBJCOPYFLAGS := -S
@@ -50,8 +50,6 @@ $(obj-vdso64): %.o: %.S FORCE
 	$(call if_changed_dep,vdso64as)
 
 # actual build commands
-quiet_cmd_vdso64ld = VDSO64L $@
-      cmd_vdso64ld = $(CC) $(c_flags) -Wl,-T $(filter %.lds %.o,$^) -o $@
 quiet_cmd_vdso64as = VDSO64A $@
       cmd_vdso64as = $(CC) $(a_flags) -c -o $@ $<
 

base-commit: 9cb1fd0efd195590b828b9b865421ad345a4a145
-- 
2.27.0.rc0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200528060600.2732012-1-natechancellor%40gmail.com.
