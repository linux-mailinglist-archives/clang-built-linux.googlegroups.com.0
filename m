Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBAGJSL4QKGQEYM7OFCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id A53D4234DFB
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 Aug 2020 01:08:49 +0200 (CEST)
Received: by mail-io1-xd37.google.com with SMTP id n1sf8671764ion.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 16:08:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596236928; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y9SPJEKXzBPFap9e4Vcxysr3hBDdk/OCnM7dmMKYPO0VuPQHrygXUR9bQ9kI+0/LRq
         +273s75i4ik/AVvq8ipY2WPawmFrCcZIfaJjsXDlPOFuYFbbbyWA1ANJydiC4Vw1PzAC
         zafPGM2kKAMeihHAl7ovoN3wzoPDS1P3YuknEWOn0eF8HIRJFuxmoWOrWPaOZwR5q/ye
         9cPb49vNndrem/QGMKw6bdptHS8CzYz4g9YvxSk+Q4p9H6eD2idJ9zvTZFn2rPLS2oRf
         btHOxuzthvmpd8xq3Jt4DNT6nMtipi/dDZmuQ5TEKtzlnpBAGCrdldV4qtUcVu+Wp/rw
         NxCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=MWokVqEzoMIogxeETSNKfj6Bo2YjdC+FV/dNxCAw2SE=;
        b=sewMgCTcQddb7rQ6aKRNnRwzhrqMP+Gm1/k1h2TlL3w8c9WcdqM+b1s8WEebDgVI8a
         4pvyv4UScquor2GlqUbG8uUIqajSo2Lo7OwXl0CCVzTJDpHM6erBLUaM4JcFezVkz4A3
         CPoaF3vpB2MkF+LCGYMMrYtmM2wVK5LB87MwHDpDWJsO+w63DUOf74BhDRUHdFQwRc1K
         FanyRt+3cxyd2Z0PRI+7Q8ZmJjCtIVzLbVGGtANiZZIncPasb+eijcLqta1RZnwskzQY
         HDqJ0ZNX/arcP5nXrle29Iw6XTMSQjmHuGSTTu4tbQgI3IK/Z9a7Pm2Nj2Om+aMOiSro
         mVyw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=kXpcLutZ;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MWokVqEzoMIogxeETSNKfj6Bo2YjdC+FV/dNxCAw2SE=;
        b=NHfkY1JYzlQR043f3Q7GILIrUoZQzy3GwlSf8JfBdoXJF0NgiqxN/3FaIKPFmmFZLQ
         yusOLYtsBRy05kha0bCxh8H+EatibkApaVrRZGrJEjZvY8lolYJyYy4U47mVaBO/IS5E
         LHNN/SjV4plebKwnDrfL48XZT6gbJz1O2IyDCBg796+GPk3pB7QP8aiEfx7gqIbyZphY
         mYFiDv1ASICr/w4rKFUdmIBEBT7gIqx9brOA96b7mSxiKTQZoucaJoiGXLG/OnlrDq9f
         nSHi7ghazAUiRKNPXAmiGmcUdGW6mpGaHvpU575FvzToup1nf6FtrCez0BQBzx6b9n1F
         nOpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MWokVqEzoMIogxeETSNKfj6Bo2YjdC+FV/dNxCAw2SE=;
        b=qOiYJBDI5aLKmyrxXcfwJb/GymB1wsBrHBlr8+QDvZ/yxbJnDoJdCaoVaD4djGds+r
         cCTMxR4R8vnuY5fLkqCMii6s4iGdNIPAps1fNv0x+E2/877Hf1KqWThpQjPvXHyMYsdL
         /OiKVY0Z/6YrReucbPvtIz+suGvUH2CAAej0+im+nmq3wFdwIfdnWORUCJCk5/p26t3L
         ErLFEYaIA/uXBQtxo93DL6SBDtKjE+CnvdZXjAq9qPltU+pkbwXPQGwZhvggNOjagnhJ
         3w6NCHfYEyFCgWZaQStpeo2cjrxhA5IliA0WTDhg3XL9Fk9QlYP8Pu+Sja6eUr61cQ78
         vGUA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532bivjBd5J4AFpICy83a1Se8lgKenFTEO3g9QQ4uySUUSYDrpYO
	zAnkT+OL2k9QN6eMXW/PjDw=
X-Google-Smtp-Source: ABdhPJwN8MJKppl1NW69as1sfR24CaDUYV/2AHTR6lOzHC39mm5XeKyTU6SwFaEnka2aUGC8h1+BTQ==
X-Received: by 2002:a02:84ac:: with SMTP id f41mr3265046jai.56.1596236928508;
        Fri, 31 Jul 2020 16:08:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:5e4c:: with SMTP id s73ls2890169ilb.3.gmail; Fri, 31 Jul
 2020 16:08:48 -0700 (PDT)
X-Received: by 2002:a92:d4cf:: with SMTP id o15mr6263892ilm.25.1596236928259;
        Fri, 31 Jul 2020 16:08:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596236928; cv=none;
        d=google.com; s=arc-20160816;
        b=DkPRZQuP/w5emLW+Yg0GQ3KWSnuQL6ctXHhTNQrKXoNZOebTThhRY7XGyVhYAFhYFA
         zg9Rh6k2UIS2RwikLEP+kubY4AMFBt993CS/yva3D4W/sCrwhZEfOCYOoBmicnwnXKkG
         mNZDI3YvSof6j+z7bmRibWYO1H6KoOccPe0wrNnoYeebJTYIG8gFzCSCrnb7GimrvKmu
         wbEdIi74WtsU0ci/makf2pUTw3BdxMhdjRaOa0CuXAvRBN5EUIEC7v0RTU75EdrhGA2R
         /vwZgMHkvXV6vHvA5epGafID5V/PTavQombYIcURt7QlvtGMt66wgNbomwUExuaUcBwO
         7SXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=0GUjcxjsZxZ8lM3nHzNDLygJ5FIXra6/aspJ0PfOUm4=;
        b=yt3G7HhHsIqIwoT+RiD1Wzd7r1hEOC4aHr6Ds5CQ0b4a9gdfJlkxL+NtNun7/gspwV
         fbxGLkOs0NANiPy34Prc4y2+dpDYS5BNage8PyS2wY6n2EIW6AhBsuugTno85GPww7K9
         t4UrGv1JPtdFb3S+wR5HJ2vmJg16HgWLxorcy5hhrqAAh1agZOG/PP0W7KJaOGbHjVtZ
         fypdundlav3mHhR4236bz8QaTvGxhADs0Qiqe0nmy32d0zx2bi+Ng64++xRaYlqKHpE8
         66/MA3j/9D8QJGU8L+p9c5d7YJIzDXTqwTOkYTK+xSMn32q0W7eU5mvVHsSJQ79+p9T7
         6SCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=kXpcLutZ;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id t6si508930ioi.1.2020.07.31.16.08.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jul 2020 16:08:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id z188so7333739pfc.6
        for <clang-built-linux@googlegroups.com>; Fri, 31 Jul 2020 16:08:48 -0700 (PDT)
X-Received: by 2002:a63:4f1b:: with SMTP id d27mr5466462pgb.389.1596236927556;
        Fri, 31 Jul 2020 16:08:47 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id 75sm649022pfx.187.2020.07.31.16.08.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jul 2020 16:08:44 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Thomas Gleixner <tglx@linutronix.de>,
	Will Deacon <will@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>,
	Borislav Petkov <bp@suse.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	x86@kernel.org,
	clang-built-linux@googlegroups.com,
	linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 31/36] x86/build: Warn on orphan section placement
Date: Fri, 31 Jul 2020 16:08:15 -0700
Message-Id: <20200731230820.1742553-32-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200731230820.1742553-1-keescook@chromium.org>
References: <20200731230820.1742553-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=kXpcLutZ;       spf=pass
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

We don't want to depend on the linker's orphan section placement
heuristics as these can vary between linkers, and may change between
versions. All sections need to be explicitly handled in the linker script.

Now that all sections are explicitly handled, enable orphan section
warnings.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/x86/Makefile | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/x86/Makefile b/arch/x86/Makefile
index 00e378de8bc0..f8a5b2333729 100644
--- a/arch/x86/Makefile
+++ b/arch/x86/Makefile
@@ -51,6 +51,10 @@ ifdef CONFIG_X86_NEED_RELOCS
         LDFLAGS_vmlinux := --emit-relocs --discard-none
 endif
 
+# We never want expected sections to be placed heuristically by the
+# linker. All sections should be explicitly named in the linker script.
+LDFLAGS_vmlinux += --orphan-handling=warn
+
 #
 # Prevent GCC from generating any FP code by mistake.
 #
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200731230820.1742553-32-keescook%40chromium.org.
