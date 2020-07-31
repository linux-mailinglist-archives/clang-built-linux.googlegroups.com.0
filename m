Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB46ISL4QKGQEOUMKZ5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id C902D234DE4
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 Aug 2020 01:08:36 +0200 (CEST)
Received: by mail-oi1-x240.google.com with SMTP id s82sf10407353oih.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 16:08:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596236915; cv=pass;
        d=google.com; s=arc-20160816;
        b=SKrxpJi4cNhT7ujzmimfH3/Bm8PtF56wfneJlYyZlT/BkWz6mgSmMmBCdly4VXdQYy
         G38v9oo0ixHJMMLLImr/m3+Q673YETspEQX0Qle7JGU17dmMOSgM6to+4P883yYUfGA8
         yFoaU1MCkABqy/Cp5kcwLehI04uUYfoo+/EWUXgyUFVthgBf1wm1wNigTb9XNiDJb35A
         ZUQe5ebH6gSfdNuZJsC1llZdGExDmxtiIbm44tCVEYgw8P1T+N+3VHUWNulW8s8YjLpp
         CvAYsUhK4XKUlUsSFFHf5AR53bkSYvsIoniy0Glmbs/UsMVkp97+aqHW1Bc1cMQLovs2
         9PuA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=CcKO6j5ysDfwgEjUmVhyQYcBdQX9hPQmcJE52AwsfTI=;
        b=aLT8R2nzYjpUr/rKBu8bossiTtLhXDUypSJNaAhNl28xcpLvm/Nc0uXLwjEBXbuUTG
         xRPGsVFw3crcpTeZ1u9cx3/QJVf/a8ON1E2Z/WNMFuCGlBCVSt58ocyre4EeYItwAcYt
         qHS4cO9CJFggnvZQQKuDmL3vspjORrYwpLfotDxPCBSrqIxrnsekNHjVKHEtsDdFSiFG
         VMbLO4Ak9NU0buecbU9sUk5Nt5jSiZi3UpLfoI8gMiEia6ENl6Nh1IR/GybdOXTvCgKL
         7LxWJAIqo2N/c24oR9Yq/BfqE76IY3oiD/4PmSiIi/MjQH2AlSmMnKEZm+3EmLNLcKN9
         +isQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=ChTbXvzs;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CcKO6j5ysDfwgEjUmVhyQYcBdQX9hPQmcJE52AwsfTI=;
        b=WQ7JHNUZB+7fXSNvg4d241R+hq+ed2VGXTZN/ZHOKmMZH8o2DMFxhxiBpnWNzMVlWR
         E0OMtvgg2lca2MsFlK/UnERVpmtc3L6mbjvyscJG5a7jytrwlfOMqU9NUG/e1zwvUIRH
         l6xsdsYwYDX4n24VNdZ+l9IOW/dM/iqBo3hgX+9TIiFVE+b5epr3P1ZugWZRlljUkGvp
         IMCsm969L4kpHsAL4h6muQb/K2jY4/xNuMEMuIKRhIjcLyXy29e6y6i1Ccd8Xqa0Ld42
         ZaaGNpa/76SSEcopyJ24rkPhm0ihW3IJmMRqDbOPDVjwtWCcEn68DKt4gVIBe07MnJgl
         2gjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CcKO6j5ysDfwgEjUmVhyQYcBdQX9hPQmcJE52AwsfTI=;
        b=qiJol3Zp80kfE6gbimpaq1TeFADJrhPwdoY3ONNe9m9NO/LNEyxwZDjWGIE2ZcfTtu
         SkUTSnabrZ9ldYtIXLzho8OL0B5/ir1asqUmWIknH76w3ek6VRpFCfs27hlD7zy2PxdI
         j4BvJDJqaRDx7/2jQ2NiVmDjF9ncG5eT1jKZ95FH39NvWlX5Q+jd4q3HZe+BTkkNLOif
         8IGkOSm6wk0xNpytzyU6HFJEefRiDGNb8HQl3pI1DJ5vTo0RZAhdV3pLhQzBm1xyu2J8
         OF6NLP58Kx3Y5E7sPATrjMzD104y6ARiy2wMwlOlGiAadwoIEJETRYT7sHu0ZCcJqEIi
         BFMQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531/dJzfopNM0+h/L0+XS4v51cxhJKyS8CWGStosc+pG296Fdbhm
	SBqV6MT6fkIYqZP+8qf+D1Q=
X-Google-Smtp-Source: ABdhPJzAKYyoMW5On0sjTJbX5ttIeZDnmuR5MwRZ9SOP1c3d21mzsiy6g1da3QQouPpiDHlsL+3N1Q==
X-Received: by 2002:a9d:340a:: with SMTP id v10mr4783925otb.271.1596236915632;
        Fri, 31 Jul 2020 16:08:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6052:: with SMTP id v18ls2228099otj.6.gmail; Fri, 31 Jul
 2020 16:08:35 -0700 (PDT)
X-Received: by 2002:a9d:3f66:: with SMTP id m93mr5145233otc.49.1596236915298;
        Fri, 31 Jul 2020 16:08:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596236915; cv=none;
        d=google.com; s=arc-20160816;
        b=Nk0YlnDSCjwcEHmcDwJzvz+fINsc8uGpJH8/LJJ2pEj3oj8bnKZY0Rf/vqjlOSUDxA
         64qFXGSblLnrRJNJVJCBaScVGrthO4HaD5bpg/1NCsXO2NfuJVo9FAavvJusO2wwIb8s
         PZtPDiCudFNrHkZAcrZkDxnQ5DNbZGgphUGLMZLrW83tFSXl0TAnYehe2XfU0B9nFlyt
         ND0Dkx9uN7id0figXWDRqpJDZiJMXnkTij8WXIwrqWrhfUmy7MtBaWMpjiXeEVTvq/Hn
         DXjQGrGj2BYhVryu55CCWmZTiHQXX4Mju97Hk1X9gp5syJdu9AKxgC9wrMiaTmTMpDu1
         GHOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=/YhwjFJ10iSnqHVnH+E/18OCqFOxfL3O8briALHREkQ=;
        b=tcESYanBj/RcEA9b1OHMqdDDM73sPBlf13v7oanuPRHRQUz1a411xo0CNZXp2EHiMo
         dR+/b3JGwZ4xiND2wlRNYrv2AGNWyk8OiqDFOCQsyJeYVPUUyv3ZvpVSg1aaSmrra5nC
         NN/txEK/8kf59amnLaAXcP5oCf7CcRZGY3uZTcrGM5cTq8peSC78cJDFivqDdunqdftn
         YBjebUeNEk2ATZ2jAkYouga8DCPVp2v7Btm7+IFKG7AfebBxd8+Clb6C75/YM9QfAnhU
         eWRI8jwfsUZshemdBDDIceV8VXCVsUGtqKaISsuIIWJQFNaxOHtRtSM6UADns364HCZY
         Brzg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=ChTbXvzs;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id x2si357813oto.3.2020.07.31.16.08.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jul 2020 16:08:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id o1so18116848plk.1
        for <clang-built-linux@googlegroups.com>; Fri, 31 Jul 2020 16:08:35 -0700 (PDT)
X-Received: by 2002:a17:90a:1aee:: with SMTP id p101mr2914247pjp.138.1596236914544;
        Fri, 31 Jul 2020 16:08:34 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id b22sm9843692pju.26.2020.07.31.16.08.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jul 2020 16:08:30 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Thomas Gleixner <tglx@linutronix.de>,
	Will Deacon <will@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Ard Biesheuvel <ardb@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Sedat Dilek <sedat.dilek@gmail.com>,
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
	linux-efi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 01/36] x86/boot/compressed: Move .got.plt entries out of the .got section
Date: Fri, 31 Jul 2020 16:07:45 -0700
Message-Id: <20200731230820.1742553-2-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200731230820.1742553-1-keescook@chromium.org>
References: <20200731230820.1742553-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=ChTbXvzs;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642
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

From: Ard Biesheuvel <ardb@kernel.org>

The .got.plt section contains the part of the GOT which is used by PLT
entries, and which gets updated lazily by the dynamic loader when
function calls are dispatched through those PLT entries.

On fully linked binaries such as the kernel proper or the decompressor,
this never happens, and so in practice, the .got.plt section consists
only of the first 3 magic entries that are meant to point at the _DYNAMIC
section and at the fixup routine in the loader. However, since we don't
use a dynamic loader, those entries are never populated or used.

This means that treating those entries like ordinary GOT entries, and
updating their values based on the actual placement of the executable in
memory is completely pointless, and we can just ignore the .got.plt
section entirely, provided that it has no additional entries beyond
the first 3 ones.

So add an assertion in the linker script to ensure that this assumption
holds, and move the contents out of the [_got, _egot) memory range that
is modified by the GOT fixup routines.

While at it, drop the KEEP(), since it has no effect on the contents
of output sections that are created by the linker itself.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Acked-by: Arvind Sankar <nivedita@alum.mit.edu>
Link: https://lore.kernel.org/r/20200523120021.34996-2-ardb@kernel.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/x86/boot/compressed/vmlinux.lds.S | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
index 8f1025d1f681..b17d218ccdf9 100644
--- a/arch/x86/boot/compressed/vmlinux.lds.S
+++ b/arch/x86/boot/compressed/vmlinux.lds.S
@@ -44,10 +44,13 @@ SECTIONS
 	}
 	.got : {
 		_got = .;
-		KEEP(*(.got.plt))
 		KEEP(*(.got))
 		_egot = .;
 	}
+	.got.plt : {
+		*(.got.plt)
+	}
+
 	.data :	{
 		_data = . ;
 		*(.data)
@@ -77,3 +80,9 @@ SECTIONS
 
 	DISCARDS
 }
+
+#ifdef CONFIG_X86_64
+ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0x18, "Unexpected GOT/PLT entries detected!")
+#else
+ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0xc, "Unexpected GOT/PLT entries detected!")
+#endif
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200731230820.1742553-2-keescook%40chromium.org.
