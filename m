Return-Path: <clang-built-linux+bncBC2ORX645YPRBB7RZ33QKGQEVVPQTNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3f.google.com (mail-vs1-xe3f.google.com [IPv6:2607:f8b0:4864:20::e3f])
	by mail.lfdr.de (Postfix) with ESMTPS id A9A90207D0D
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 22:33:12 +0200 (CEST)
Received: by mail-vs1-xe3f.google.com with SMTP id f63sf1494678vsc.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 13:33:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593030791; cv=pass;
        d=google.com; s=arc-20160816;
        b=Xk5ea9/QGjTFDLDq0HXNix+enMYpA2xD0e+HX5i4BJnoujfHKvRuy51rwhgXGAArLA
         CBlH6mSTmBWGCiHsjmZzKX3Z9aBJ7cd2+djNIjOtymvHuPY9G7crJk/oEAF/fWyOZHbG
         4Tzx2saST7YryQ2QtPyf+Zlr2T7Q6Q1n8yH2FdSFTMpIfxZ1LvKibmp6YHAAeo7Nj3cT
         hO9RvjvEuIL17RAGT8zwcUTLRxyEO5WqfcBxxhzYNpx8gZkgBfEexJd7RHHPbT5//6Y0
         vxdvgp4OjkokN8ypzyRReRS58D5cgrbi0evtNke8W5qtq1ueSYxTLSfYhEv0a8GgJ13H
         3cXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=TNtYxq4lnkn2gtah6fow/CjPvPRlfUO9Z3134dpyWHE=;
        b=XR2F17XHvgzrtXyyLlEMFHSluAlyViEr7/25qw++kSPFTW6OP1j1EzWLe06r+DZ9TP
         zKvZWybOSF10C+WLh13BPTyPNddmqELJAsMCXTHSJ9xH2Esh0yxKegQlov1lJMiD32D+
         Qc+GTXwlHKbz/lJgZX9YsuOE5n2BXPMmh3z7D0Ux0KgkbLS1jxR4t440U6igTDt8yF87
         dRX6RQGpdEuIYEZ/zaZ+N9crryAJYXS/FPrnErpHDV7BkDyNnlFIWxSvleSwilQWjefg
         deU3ARNI1DH7FRPLq63MR4m3+4LxloBkcBpRseFC+yHcmpNh337KOsVtRVC3NupjQ+Di
         GolQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VR9flySj;
       spf=pass (google.com: domain of 3hrjzxgwkamm1jvr2xu4jwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3hrjzXgwKAMM1jvr2xu4jwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TNtYxq4lnkn2gtah6fow/CjPvPRlfUO9Z3134dpyWHE=;
        b=WaWVyjsWmLNHd8uDNq5w3LGTeXGwE20o/xBQKCK+fN08NbcHPgp1TRsbC/3S7OmVaH
         3yTJxspCOcpfdn2qVRChIWLcJJOONMYOJ3jNgJMx5WXYCS5TT3cecCzexodwa+ZwcXZ3
         LM1Wcu6QsXSLNmNt9hx64WCg5g8O9gIJYxqEK520QkWK15NoovwXTQEkXygHaDKZ5FGH
         8/XqIvVRlGScaBDYRRZ6KJ64EHKXHxWZ6b4owy/r5uDraeGnYuRXWvdGfiA0ymrztZoY
         oN9hOJSEPYlD4f8RgDApq8mRc1TqX/gz2G+MK3d5wckV0MLHXchRX31Xca6aXME1IB7B
         q9Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TNtYxq4lnkn2gtah6fow/CjPvPRlfUO9Z3134dpyWHE=;
        b=XhWzuQQStHTGzhEgD7aQZHTHiCp9+lqnvKmFXUvFq+W2/i6u+cA5JUowLv3qYyXgkl
         hbAQwME7KqQsgtrh+DzQRKD6Vnn2x7EZ3Zbm7uu0BAh21k6jyqq2q37DESXYirCPd8VP
         aA4YiVVIlri6rCsaSnBgaCllFq5H7g9mNTVgqRE4WjcL50N2EUY65EXZhApGKx1Usygi
         iEvjTR1Prful3ctIHQh+hKu6WlPlc4UKh+GGUdQBN50yHyPHay0+hXKFCqIR9nfoTjPh
         Xh+ytg05Y7Op3qaCTaYj+uJeo+2p6cYiAY54swSzvi8eKbFkUiP+X6EKtXShx3Wy7MfA
         P3WA==
X-Gm-Message-State: AOAM531oZJUtOSqJjBdhP8G2x4NQH/3mKaAkfm0fYfONmIO8zJJ8fRfC
	I9vAb/jUx0VViNlP//eb4EQ=
X-Google-Smtp-Source: ABdhPJx4/MJfTlb9kKe30CMTuSAHlVn2uzDy5EGy23Qngxr0sEiqYVtyvRLsRrt1G4cRMq6VBQjaxQ==
X-Received: by 2002:a05:6102:405:: with SMTP id d5mr25982831vsq.203.1593030791710;
        Wed, 24 Jun 2020 13:33:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:15eb:: with SMTP id j40ls224549uae.9.gmail; Wed, 24 Jun
 2020 13:33:11 -0700 (PDT)
X-Received: by 2002:ab0:5cd7:: with SMTP id z23mr20597509uaf.137.1593030791313;
        Wed, 24 Jun 2020 13:33:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593030791; cv=none;
        d=google.com; s=arc-20160816;
        b=xZYsAomrqzwBPluvMAZh0JSqHA5eRX7XYREDwahLtLaA4MReBjeQIsTQ/CRtcDOnwR
         AwiL8Z5DsICjwaJ82xhzTttQmyTMqBFoO+vGDNHgccpmAcYZOKofP8nrdM1YcO7xCX0y
         QG8I1WON96F9NNqjnQuq2We4weTPpseMLA4dFUCcMU89RpZtHNDuSYPif5htXHwqUDT0
         PbTdcOxwbN0Zig+UtteEiiJwFI37QYjlydLB1mYd1j/0v+7sxRxuxlplgCu/XJVllscF
         TPLqSwG3E2mrZH8LAv7MwOt9qaHOdhw6RX4Viu4ie5FLXazcrlt5Xltry7q9gtbyFtmP
         BO4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=BYARsb6kk5gBajh2Z9y53LZQA7+hhrma13n1XSCdmOU=;
        b=pEvwNTjxJoH95urlZUsJeAqwoWhYzXxnZ5SPylsfp292ed2Es1AAsu8jGB5qRHg6D3
         u2q9lCFf/ww9wf5JPYECbHhmOqIgx71EgK4e+XhhE9F4HQCCoPYkBFmhRfHdLH+LECDo
         83P39vdJzWJpjSYv+lDSSNUjB5emNKoSbgAikUwge3iZLbCjE7paw8F3N3Nf78+eYaBI
         9xbqGd4saJZYN9USqY43d3DUsArUOY6CoAot29cGd62AIPS8xAqRS8eKWhVPtPjrxlts
         AlA/V0dg7XdFKRUc/64+zL66lLEP+rlFV2mbzRfVVqpRFmPW3Y+wO3xaD26Ig4kLskXt
         3MzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VR9flySj;
       spf=pass (google.com: domain of 3hrjzxgwkamm1jvr2xu4jwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3hrjzXgwKAMM1jvr2xu4jwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id f12si1108201vsr.0.2020.06.24.13.33.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2020 13:33:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3hrjzxgwkamm1jvr2xu4jwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id r25so2429310qtj.11
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jun 2020 13:33:11 -0700 (PDT)
X-Received: by 2002:a0c:9d44:: with SMTP id n4mr20638647qvf.35.1593030790865;
 Wed, 24 Jun 2020 13:33:10 -0700 (PDT)
Date: Wed, 24 Jun 2020 13:31:45 -0700
In-Reply-To: <20200624203200.78870-1-samitolvanen@google.com>
Message-Id: <20200624203200.78870-8-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.27.0.212.ge8ba1cc988-goog
Subject: [PATCH 07/22] kbuild: lto: merge module sections
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=VR9flySj;       spf=pass
 (google.com: domain of 3hrjzxgwkamm1jvr2xu4jwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3hrjzXgwKAMM1jvr2xu4jwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

LLD always splits sections with LTO, which increases module sizes. This
change adds a linker script that merges the split sections in the final
module and discards the .eh_frame section that LLD may generate.

Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 Makefile               |  2 ++
 scripts/module-lto.lds | 26 ++++++++++++++++++++++++++
 2 files changed, 28 insertions(+)
 create mode 100644 scripts/module-lto.lds

diff --git a/Makefile b/Makefile
index ee66513a5b66..9ffec5fe1737 100644
--- a/Makefile
+++ b/Makefile
@@ -898,6 +898,8 @@ CC_FLAGS_LTO_CLANG += -fvisibility=default
 # Limit inlining across translation units to reduce binary size
 LD_FLAGS_LTO_CLANG := -mllvm -import-instr-limit=5
 KBUILD_LDFLAGS += $(LD_FLAGS_LTO_CLANG)
+
+KBUILD_LDS_MODULE += $(srctree)/scripts/module-lto.lds
 endif
 
 ifdef CONFIG_LTO
diff --git a/scripts/module-lto.lds b/scripts/module-lto.lds
new file mode 100644
index 000000000000..65884c652bf2
--- /dev/null
+++ b/scripts/module-lto.lds
@@ -0,0 +1,26 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * With CONFIG_LTO_CLANG, LLD always enables -fdata-sections and
+ * -ffunction-sections, which increases the size of the final module.
+ * Merge the split sections in the final binary.
+ */
+SECTIONS {
+	__patchable_function_entries : { *(__patchable_function_entries) }
+
+	.bss : {
+		*(.bss .bss.[0-9a-zA-Z_]*)
+		*(.bss..L* .bss..compoundliteral*)
+	}
+
+	.data : {
+		*(.data .data.[0-9a-zA-Z_]*)
+		*(.data..L* .data..compoundliteral*)
+	}
+
+	.rodata : {
+		*(.rodata .rodata.[0-9a-zA-Z_]*)
+		*(.rodata..L* .rodata..compoundliteral*)
+	}
+
+	.text : { *(.text .text.[0-9a-zA-Z_]*) }
+}
-- 
2.27.0.212.ge8ba1cc988-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200624203200.78870-8-samitolvanen%40google.com.
