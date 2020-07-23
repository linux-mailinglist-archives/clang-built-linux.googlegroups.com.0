Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBYE54T4AKGQEFUMT4BA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id AE4AC22A665
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jul 2020 06:15:29 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id f4sf2817637plo.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Jul 2020 21:15:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595477728; cv=pass;
        d=google.com; s=arc-20160816;
        b=zQpc1B/Rjuf3jFK8p5Q9sJIYC8MIsfT9CGoYPW0EhmpCyNDPjBrwn0keHc8a4FW12V
         zU+6PxHWhjT6gNAmEU9WXTLP9W68GpG4XHZ95/ngI6KdpqomVL+8DtUZQOOMQrRfT8f6
         Yhlm9JTE49Qsz8pOhVHWpOY2peAGciNuU05QaZrguGaLfZ4PbWvUAli5s/Zo02oQrVZ1
         EInXT9ypM/cO1eLO3wzxtG2gzBY22Bzav8fokurqD+xNIOudAHxHBBDQzocwq5Do4aDt
         Rh7+eoLzVCq7ai0JmC4nfP34l5Qv4vSPcwwh0RRPxf/6fthGIuxb1WozqizcRDAuclq1
         yQHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=iE8V3/oL1tytxxHcqlDCo0amgQYS3o58Q0ON0scVv9w=;
        b=LUmqitCJaS7HNhPz0hfuaIFhXDAsYJmazg9UcsP5+UwjilrHUSPGhXfapoisbQ7KMZ
         XFG8vHkZP9S5Bu4xXhfuRahgtQWXT5fOGEnqUYV4e5Q8TLsbOOKSGwr5duFI2TYRxcWz
         xR9CRWw1hAT9EsWfNG2jHmXVPCYRjn/250i08Hq17RgsyfYJmTHtEmxAzbx45FsLawrM
         2zQdsBphAh28KBtH1jEA90h8hg1oOIZlykCRP4w+UjMupiehNwcgXDV4OeIP4BeJULvZ
         2cMVfisUaokUOmUsNXAEPc0ivuxLpcWQNCeR2O0uESWEcTOkjrwY6wLZ3KvLAKe+BfGd
         amAQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=P5Atn+Wl;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iE8V3/oL1tytxxHcqlDCo0amgQYS3o58Q0ON0scVv9w=;
        b=FKg8F6g+8l7zTJodtexi/0LD2Ozkb3PbNBLHTkFD39gMmmNB55qoTcumiV6FybGCBQ
         4bt0U8CP162/VucZ41aecsBCIUuny1tU0SZElfNCn0P/etD99d7b5IKTvGyhzVW/ztY3
         z0fqHevigXh4TE7sC9vCVPCH0vQgJPAbPyW+e3AZvxXvYVR4AE9Ye057ChXEKxShyTNs
         Kfk5z3e8Q+2FfvJRjsqusR1s2aJuDFpc+m+PyyZPcgT15plXRdVdGhmJGlnvP0UCaGFV
         pDOG97GG277C80/9EK354cvs6qTNaf5mRsO6PVfpuX10+P6X/fad6zk1fQgCZs5XBQLS
         g8+A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iE8V3/oL1tytxxHcqlDCo0amgQYS3o58Q0ON0scVv9w=;
        b=FYCpQhAtBA10obYCWHrFjtV5B445u6dcQvCpkRB7Oy9QXI/MCHy+UnWlpvGwUb8klC
         Murz93EjJa0B7J/lwRKAK97hz88hEVVWre+eytswcwoxd6/aSXSQcUupTDjtf9xjkS1+
         ckOHad0P83Y8L+KnG6ob7PvMGtgbDcHJ6EvQjIfhTFsuqQT7OE6xnpIFpevKFTRv8iKg
         bE2nClxzlNDq7YoNQD3aIEGNAfqcnc2Ux8ZVLnQ/hQqtDcegc07FBk4dJuJdgk0jGvlq
         4Dpk78FhbNJ1wQ4Q5pu9ssdenH95zdaf7jw6RvYF/hQ9nTT9YTbexdx2THPewA3GZaA+
         fP8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iE8V3/oL1tytxxHcqlDCo0amgQYS3o58Q0ON0scVv9w=;
        b=Kgup5hQnu2SFZt4rWXiAP8ehOrpG9iiPY13xKeiNSVX+ELmAhsHYZviK4V1zgCr1mc
         OCp6YmNnuICS3sQjqniNWRyuF6z6iz8Wu5EwDP4ntFPlBXb//ararqKwYgtZ2XOMrn0e
         RKPCp/UAkFrd/pm7688cB9R4KyZzWbUwH4phXZFNKOgdf+IigXdNRfLBXJMCIAKDQDsy
         q8Gb5+YEA59fcUSql5gImIgYP9bWkKzdTH7wjxe++kNmt82DzzdFEWjiZcwhqm2uil/0
         9i/gf2a6jyONVglLRmklmW7Hn1zRln9LLad2UKLNwff4ypkDfThGm+ppAMLVMfxFYz+3
         i/qA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533m+VD2YmQ4D3teVQUPBGyJEDPKenbyrNZ1n6hTy5cZmUQJ6gmM
	zmS6DjEcrGcljbugGvvVoIY=
X-Google-Smtp-Source: ABdhPJw1Nvha93kYjb3dyvBUL2xenGCa7IRPyG1yTLB5qvHIJxZyZxgmNEQXe6LC3w+srCJrlfXPCw==
X-Received: by 2002:a63:fe42:: with SMTP id x2mr2626005pgj.207.1595477728263;
        Wed, 22 Jul 2020 21:15:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:ce4d:: with SMTP id y74ls1385089pfg.3.gmail; Wed, 22 Jul
 2020 21:15:27 -0700 (PDT)
X-Received: by 2002:a63:fd03:: with SMTP id d3mr2655047pgh.76.1595477727866;
        Wed, 22 Jul 2020 21:15:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595477727; cv=none;
        d=google.com; s=arc-20160816;
        b=tuc7k9H0pWkx0k6/12m40GlJPVXkZ2dc+B/pkCaJNnn4jqc2KNrddijaHUVgr+YLSS
         qaHAbvNi8NfDE1upzQUZ23s0+C2azZxB1mJ+tJ9g1xdIoO3AEmXTTYA5MDy4NBAAfSpG
         QiVuaoMUeq3DITZmlwTKV7lRAwjVmY0MDHz/pLppunh1qXDuJ6RJAYQdLDnTfCxu/LbG
         rq1AqtjhrPn9IvawcjKUt+Wb51MnajhQI7U5tdN22oYwfKIWjIdBrbkV4FZ3ortUNAAR
         3MVXr1JbmTBaUshH4lD9elTuqov+C+2ACRBvTGILK74/7oSGI88qMtKFwsqIQ5wvm5vy
         a+uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=KW20rhBVBSG/GA3kSdVk0F7HWn+qvQaEdDjsOp4a1J0=;
        b=rWbcYYWFb3yUDm9dZyPfovgzlEOFzc/i29lBQuqp77A8Ob6tjkg5paSgdOqvUFrZ7k
         dQTC9ghsI4k2DxIrIybJluZtvhj4OWbGh2u2YTJUa8PX22QWA2EaTCQVkyF2bS4SYS3s
         iSyqY6QNDCUKNblLo5XktkrwPI3uaDmnMOvHXA74XMpjsBBX+pqLL2BtyShne8Do5s8z
         cgssnYj8uHqZ4iTA+En261zCjfslUBONcV38mzsi/xAVqVRhn0bQeZhe/BV3Cto3DdYP
         +i+D+5rpsDh1hGThSQ4QqUgMXXFxhXUCsT3qkhCe/WrsxkRgxp+wlkYryvAM9DG4AVdE
         2TzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=P5Atn+Wl;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com. [2607:f8b0:4864:20::742])
        by gmr-mx.google.com with ESMTPS id v5si36258plo.4.2020.07.22.21.15.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Jul 2020 21:15:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) client-ip=2607:f8b0:4864:20::742;
Received: by mail-qk1-x742.google.com with SMTP id x69so4248891qkb.1
        for <clang-built-linux@googlegroups.com>; Wed, 22 Jul 2020 21:15:27 -0700 (PDT)
X-Received: by 2002:a05:620a:1315:: with SMTP id o21mr3400085qkj.227.1595477727009;
        Wed, 22 Jul 2020 21:15:27 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id o4sm1662852qkm.25.2020.07.22.21.15.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jul 2020 21:15:26 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	stable@vger.kernel.org
Subject: [PATCH] arm64: vdso32: Fix '--prefix=' value for newer versions of clang
Date: Wed, 22 Jul 2020 21:15:10 -0700
Message-Id: <20200723041509.400450-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.28.0.rc1
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=P5Atn+Wl;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Newer versions of clang only look for $(COMPAT_GCC_TOOLCHAIN_DIR)as [1],
rather than $(COMPAT_GCC_TOOLCHAIN_DIR)$(CROSS_COMPILE_COMPAT)as,
resulting in the following build error:

$ make -skj"$(nproc)" ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- \
CROSS_COMPILE_COMPAT=arm-linux-gnueabi- LLVM=1 O=out/aarch64 distclean \
defconfig arch/arm64/kernel/vdso32/
...
/home/nathan/cbl/toolchains/llvm-binutils/bin/as: unrecognized option '-EL'
clang-12: error: assembler command failed with exit code 1 (use -v to see invocation)
make[3]: *** [arch/arm64/kernel/vdso32/Makefile:181: arch/arm64/kernel/vdso32/note.o] Error 1
...

Adding the value of CROSS_COMPILE_COMPAT (adding notdir to account for a
full path for CROSS_COMPILE_COMPAT) fixes this issue, which matches the
solution done for the main Makefile [2].

[1]: https://github.com/llvm/llvm-project/commit/3452a0d8c17f7166f479706b293caf6ac76ffd90
[2]: https://lore.kernel.org/lkml/20200721173125.1273884-1-maskray@google.com/

Cc: stable@vger.kernel.org
Link: https://github.com/ClangBuiltLinux/linux/issues/1099
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 arch/arm64/kernel/vdso32/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/vdso32/Makefile b/arch/arm64/kernel/vdso32/Makefile
index d88148bef6b0..5139a5f19256 100644
--- a/arch/arm64/kernel/vdso32/Makefile
+++ b/arch/arm64/kernel/vdso32/Makefile
@@ -14,7 +14,7 @@ COMPAT_GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE_COMPAT)elfedit))
 COMPAT_GCC_TOOLCHAIN := $(realpath $(COMPAT_GCC_TOOLCHAIN_DIR)/..)
 
 CC_COMPAT_CLANG_FLAGS := --target=$(notdir $(CROSS_COMPILE_COMPAT:%-=%))
-CC_COMPAT_CLANG_FLAGS += --prefix=$(COMPAT_GCC_TOOLCHAIN_DIR)
+CC_COMPAT_CLANG_FLAGS += --prefix=$(COMPAT_GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE_COMPAT))
 CC_COMPAT_CLANG_FLAGS += -no-integrated-as -Qunused-arguments
 ifneq ($(COMPAT_GCC_TOOLCHAIN),)
 CC_COMPAT_CLANG_FLAGS += --gcc-toolchain=$(COMPAT_GCC_TOOLCHAIN)

base-commit: d15be546031cf65a0fc34879beca02fd90fe7ac7
-- 
2.28.0.rc1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200723041509.400450-1-natechancellor%40gmail.com.
