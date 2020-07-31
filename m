Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB7GISL4QKGQEQ5TYCBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A3DC234DF5
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 Aug 2020 01:08:46 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id k103sf413622pje.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 16:08:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596236924; cv=pass;
        d=google.com; s=arc-20160816;
        b=mLcwtJ3z1S3ttenC4pxRsLo5FMz8TdTcWd93oUiN8CLAxudfX8tstYNKC10jkZXofZ
         QOeyYYl9ffKUaXs4I3QTUO1Xb9l8ODhEjyWeSG9V6TKxsOuuQeQmARR4DWyZM7o0zBof
         QJcgGiPemrPEffrWz+fi2bx4Dk+QrO8dikMmzz5RUzj8KfjWWvlTuuJEYK6EnynH6SJ2
         fY+lgoS1AkTz1aZlZELCl/ufB1DeihTOycVSMmiPv9Kga7M1vkhZY6AzVHOC9JuW32g6
         aVhDaj3u2hIQdI/NptvV6YaTOgwB5ZMCXLTl985hiOsgmc7FbRz3SoXwxOEUmrWhrdxH
         2yVg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=PmUF/XTeTbiqa15qeJck1aWe+41dusPyzwHcSil61oE=;
        b=Y53tqfduRhRYycUS7/t7q12b7K1rv92QhbUzTM9mI7JiQhHcuCW8WV8QCuoQXc1jCJ
         m/jCZ9oZaESS6D0sUzeVMppnFGXkyrEN6MuTZ1+A+XCEXwgKpEOGMtxN3s5Vfmp2Me3k
         1IP6t9r0geqfjmnIJOuFfYF1Bypm28fN7SwmsT8untMSE20T9vDlJZTU3PtkEJKOTonj
         1RTGEjoU8lCMEsv63WgZ1FHdv01/rI22o+Vv1X12iBpMm/tOQMdYHps9ehOt0lIbtoDR
         ypDAZqv7QiDp+k7m5/RuIDlJcwGvh9iodsrfUX/UzwP4wiqVrvsT1iQ8Eo2ra3XgmdCM
         JqDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=eXzbc1BP;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PmUF/XTeTbiqa15qeJck1aWe+41dusPyzwHcSil61oE=;
        b=YEfviIaBxcqXrfabybpb2DpjWColmbpyNz24znmzZdGFFptMFj+iQYNmt1KGLNrmy3
         hmC1O0IsdLeVyexARinrCbRDBQovI8q0Sn8i9TYjSM6AuQqOopuy2W0yiVQoY1rez5NZ
         V2XRDCYXCFBj/4DOl7sh2jLr5R0+LUHZhzKaiEcyR9bpqeHOhkS7EBj8AFPFwMsyTKty
         J+Az4Tbx8vFWpNhOgfqzuiSSqkGPnP9KDDgI47LvS4Au4v558/HlEN/gGtqmpPNcspcV
         H9vhvo+lbjzQIiB7+7QYyvpiyY39+XBYpjb+3vpn0iz9d8OMdrgdDUaWoPwzxE153CbS
         ZtIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PmUF/XTeTbiqa15qeJck1aWe+41dusPyzwHcSil61oE=;
        b=nDyJSi8GIucimrBSmD8t/T4bnYM+aEqntGfdlWxEqRq9pPmk6fxjm5YPB8r0229h1H
         5Xt7qjroJyMC4de+wYzg2YXCwltrbr3yZ6KHqggAe+/+38i2W5Et16mxusRjMxQ8BsAv
         xcHcGDMeAWNb8QeZdWvtihddMfVc2KfMk3u+KNvCcw3Kn8x0nvJBdJ4HNI2uhPeLqFie
         KJujzVyJccmFL7mE0CGPOpOS+790xG/Lno5Wtl64WbgQW5qfWUWX36n/B6jzFfpIWSjl
         SxEMGDTJJOx4c5vIeDQTLAznKwdkBvErhwgQD5Dq2CjF/3wgupUKc2q7DngNEJevFVw8
         qDjQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533cOzpkOW2x8BpOAah0h1Kams03l5W3vp92zArbWrTXZRJQ0Qqb
	MNxSDen8E7N/5Vcxaq7eipk=
X-Google-Smtp-Source: ABdhPJxTautV0qsmQcz0kUW1Ncwn2QyTC+qV0jIfXSR677wNMhuC2LHd5ZihqxwLfYuNiv7cUb2FlQ==
X-Received: by 2002:a17:902:8d98:: with SMTP id v24mr5515602plo.301.1596236924787;
        Fri, 31 Jul 2020 16:08:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:4ec4:: with SMTP id c187ls3458606pfb.7.gmail; Fri, 31
 Jul 2020 16:08:44 -0700 (PDT)
X-Received: by 2002:a62:52d6:: with SMTP id g205mr5868528pfb.144.1596236924299;
        Fri, 31 Jul 2020 16:08:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596236924; cv=none;
        d=google.com; s=arc-20160816;
        b=AzlZLb0LW+62msz8Tqhw7Rbur20DdqzIzUZbOWUE0ahcCRkVV5Ub3VXkmPhl9DEuR1
         hbWOKu2RHlWa3AUbEFSXtfilwZwHMHdIATBtrw9PVW6GWkFs+aMOjhQnBD7jS2hA5Aiu
         +JtuK41jTgcETaA5LZosP3qWlP6UbmPTogZ5XWfkqIrZ/syUalKOEGdu3B9l58/YrMXI
         z54oVCpFNBf8oxF0LkT6k7Lm42PYYhoJKu07441dt3r2uzy/EgK5yMsLvj4ZVbaAMAGp
         OJi2pu5bxJP3TiRrT8C2IYAAzddTJMDhR5KqZqW4il57ocwG/vGOsRNQG6rCAZVt2cNt
         ZzBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=GiVQAgnHSmh3I5R0gtbyLBJa4hDaxzbWftSOld1BSI0=;
        b=Q5x954v51qFbHGRYnP1tpes7HzTPl80saFSPh0Vl82bZuJR+SdKgJw3HYGgsn2wxM7
         84mxnEG+1Ot0yqBObTUhc91/95Bw8+Gbf6IiZOzKF7wsgmr1OgQJPKPCnQ2qwmeQXkx3
         aF7pX9iIdRRtBJU9a4rUv7+94yGI6tHMPsn7Lnemz5fKhcZe41+woOamIZTDoON7zrYK
         hW0swLDT7+PVNybZqM4pUklCd2aQ+6TnTxK33MmGzKqjWvvW9w5Y/Okczc2eKHmqZlFW
         H8SY8BpoIqN+9Smoal9JPk2s2j82Vbyi6qQtHV49VXRzEh2qCzTCD71rNBvDelQeBDq7
         pmJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=eXzbc1BP;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id i18si468416pju.2.2020.07.31.16.08.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jul 2020 16:08:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id w126so15008415pfw.8
        for <clang-built-linux@googlegroups.com>; Fri, 31 Jul 2020 16:08:44 -0700 (PDT)
X-Received: by 2002:a63:6ca:: with SMTP id 193mr5786021pgg.269.1596236924037;
        Fri, 31 Jul 2020 16:08:44 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id o23sm12166552pfd.126.2020.07.31.16.08.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jul 2020 16:08:39 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Thomas Gleixner <tglx@linutronix.de>,
	Will Deacon <will@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Atish Patra <atish.patra@wdc.com>,
	linux-efi@vger.kernel.org,
	Ard Biesheuvel <ardb@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>,
	Borislav Petkov <bp@suse.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	x86@kernel.org,
	clang-built-linux@googlegroups.com,
	linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 14/36] efi/libstub: Disable -mbranch-protection
Date: Fri, 31 Jul 2020 16:07:58 -0700
Message-Id: <20200731230820.1742553-15-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200731230820.1742553-1-keescook@chromium.org>
References: <20200731230820.1742553-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=eXzbc1BP;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

In preparation for adding --orphan-handling=warn to more architectures,
disable -mbranch-protection, as EFI does not yet support it[1].  This was
noticed due to it producing unwanted .note.gnu.property sections (prefixed
with .init due to the objcopy build step).

However, we must also work around a bug in Clang where the section is
still emitted for code-less object files[2], so also remove the section
during the objcopy.

[1] https://lore.kernel.org/lkml/CAMj1kXHck12juGi=E=P4hWP_8vQhQ+-x3vBMc3TGeRWdQ-XkxQ@mail.gmail.com
[2] https://bugs.llvm.org/show_bug.cgi?id=46480

Cc: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Atish Patra <atish.patra@wdc.com>
Cc: linux-efi@vger.kernel.org
Acked-by: Ard Biesheuvel <ardb@kernel.org>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/firmware/efi/libstub/Makefile | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
index b4f8c80cc591..d7d395ede89f 100644
--- a/drivers/firmware/efi/libstub/Makefile
+++ b/drivers/firmware/efi/libstub/Makefile
@@ -18,7 +18,8 @@ cflags-$(CONFIG_X86)		+= -m$(BITS) -D__KERNEL__ \
 # arm64 uses the full KBUILD_CFLAGS so it's necessary to explicitly
 # disable the stackleak plugin
 cflags-$(CONFIG_ARM64)		:= $(subst $(CC_FLAGS_FTRACE),,$(KBUILD_CFLAGS)) \
-				   -fpie $(DISABLE_STACKLEAK_PLUGIN)
+				   -fpie $(DISABLE_STACKLEAK_PLUGIN) \
+				   $(call cc-option,-mbranch-protection=none)
 cflags-$(CONFIG_ARM)		:= $(subst $(CC_FLAGS_FTRACE),,$(KBUILD_CFLAGS)) \
 				   -fno-builtin -fpic \
 				   $(call cc-option,-mno-single-pic-base)
@@ -66,6 +67,12 @@ lib-$(CONFIG_X86)		+= x86-stub.o
 CFLAGS_arm32-stub.o		:= -DTEXT_OFFSET=$(TEXT_OFFSET)
 CFLAGS_arm64-stub.o		:= -DTEXT_OFFSET=$(TEXT_OFFSET)
 
+# Even when -mbranch-protection=none is set, Clang will generate a
+# .note.gnu.property for code-less object files (like lib/ctype.c),
+# so work around this by explicitly removing the unwanted section.
+# https://bugs.llvm.org/show_bug.cgi?id=46480
+STUBCOPY_FLAGS-y		+= --remove-section=.note.gnu.property
+
 #
 # For x86, bootloaders like systemd-boot or grub-efi do not zero-initialize the
 # .bss section, so the .bss section of the EFI stub needs to be included in the
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200731230820.1742553-15-keescook%40chromium.org.
