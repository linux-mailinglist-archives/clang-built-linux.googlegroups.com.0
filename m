Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBT4P433QKGQE7YTCM4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id C60A720CCBA
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 08:18:56 +0200 (CEST)
Received: by mail-qv1-xf39.google.com with SMTP id t12sf899342qvw.5
        for <lists+clang-built-linux@lfdr.de>; Sun, 28 Jun 2020 23:18:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593411536; cv=pass;
        d=google.com; s=arc-20160816;
        b=MuKaE5JUUXB6opyO95Z9D7NF3ZFrBuraHXbjxVRZJ38HwGPZDTR5Eo45HFlZtqTnIs
         rZuj0lPHvX7oZ5ArJT+d0e2AOgqWVe+mbCPkNpDgdx8olPWxOgKnyuv9uRN183Z4T+eL
         /dL8xwNH7kyX5/MwxwBogy3ZPRhj00hbh6mc3otwoccI5fufBRzaG3YbP8F12M4dt+J8
         WHxx47SYwo3Vswz+jnf8pK+a70IOq6SXlwoUF2H/FqX0pvQQRCZX0uYl4Yg+FvzxKvxc
         bU6Uj3i3sHIfkf6Kt5j0KOal/qTV6f7MUz/tnbcCzT+PMGn3/OkO8hPICB8GXg6F0ogm
         1NLQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=3q86rPgiyB4U+uZMWYM+Aa9VR0mk35QlHyIybDFMqWY=;
        b=j/AVc3GRu6ldyfXSXJ5xpTsoLFFEnd0lmB4hVTcCWrYMhYgMp41d6Naio5t04XnoEz
         G54otp0LkKDUMxliD8GJX5MMT72j73vs5bMrD9NQV0gLOSqrfIxZf63hSqGmgoSi0qbS
         j/haeAdinhh0eFyBOzYhYWHEH+KM1dD7lDL/LmeDjIICa+Xs4son0VzyDzkrjC2uJDKm
         VcKxB49x1TuzgyZk3Z0Ku34w5ToIGfoQBnh0VLIJJYk0TgCsnrIh6lbp5dheKNTOle/c
         XE3sizqT4Y6+KSuQJADHosP+YVQNkeKIXFrKCkH0G70nQpDxOVg2aXPzJIS3BaI4yMEd
         JTww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=T04fL7iR;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3q86rPgiyB4U+uZMWYM+Aa9VR0mk35QlHyIybDFMqWY=;
        b=iZi1o4+e6M7LO1OkcVMV1IffZJ//BnniVMpAYEp04y2Vco27SKPIJ/dj86pOZ/SFPy
         hVqkyRaegFUaj5lL3xr6Ss2J4+2bm8/yXeh39GVksJ/IH6LOp8T6w0hVm409CyODkBUI
         /c4qWZpsiX6CTvr1AQAP1K+q5QP7Zf/E0TaEvMqc2ABdEZZ9fDcYsHGXFyzFB5kM3YnM
         UeNVEppyhkL5lvkMPLiOjIApMYpOPyTczjhvZrg2ZYyfE7Qn5JvbpraS/bPKeexhYtAh
         ThRJxRWkFjkczaE3GAGslrxT05UGsdfW17YVZSTLGas/C4frnNl8vFNdz+EyNKIOZup2
         UA+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3q86rPgiyB4U+uZMWYM+Aa9VR0mk35QlHyIybDFMqWY=;
        b=f4aZhePm1EP+al4BugksS5IM84rLgvg8Q8dckR6HsD90sLQiPllpiN2cAmZIedUsg/
         k8piWDvtfo3an2I1hfuFt8p8Q2UcoVNhmXP8OsQY+G7N1wAMQI5tWIaJQhbFiKdqDm+B
         gYCoaglnZXp2CRzAsNSMepm83rd/maQP3g8+2bPs0JNSowJYhYzBJJ/RCLCkYy4GVtzB
         j3YHm9unl+BAx95cvQVfETjN8ex2wf5usGRDAQ8I60/TovCyZfLr5pA01pE77uXLTU5N
         JayaQkMqd2vgSBZ2Pg1bgpYxc+yuCEOVZSKOHOLA3LrHYpM7xNSs06HmKqsEgnJUYPTc
         Mhrg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530XN7rJ1iG6xmxuLqRcDjsDdqHnsk/Q1eBysR76dcJLsNvjv5Ra
	CmdXRCOjddbC8repk3xxnvw=
X-Google-Smtp-Source: ABdhPJx7mKa+WdnXnGcueAjDR051SmRX1phrYfAAqQLEO/psGz0wrqdBVpDBNVSUMMa7JdIr6vJwxg==
X-Received: by 2002:a37:a68a:: with SMTP id p132mr3463281qke.184.1593411535880;
        Sun, 28 Jun 2020 23:18:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:3287:: with SMTP id z7ls6355695qtd.0.gmail; Sun, 28 Jun
 2020 23:18:55 -0700 (PDT)
X-Received: by 2002:ac8:1baf:: with SMTP id z44mr14513653qtj.129.1593411535608;
        Sun, 28 Jun 2020 23:18:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593411535; cv=none;
        d=google.com; s=arc-20160816;
        b=Hb71KN2z3xlBonGyyW/P4HXtZp1kXOINr8sK+yIxoK6+Ft2ESCavSzFzKEy3+2VEBj
         HGZF9E+MAAmOLCDfNZJphzgvYeA98cpScQPb19P1o9EBymU/VmZ1QwJAiFMktmI9Giu3
         4vwPQUUYMvs3l3Gdr6qXaHt7oJnDr027dQQ/x8V8eXUxPDtWJUZMMBWNE/ikrX2ml31v
         2TBr1Dfp8zJ1euu1DqHvz7jpv0XynDFNczH84aCXWTNbDHfcanELsnQ/YdbbXRtAxh0z
         qJ+0d2y009Ka0STAC4mraQ+9bPjc7ZvBgyMxhVKxSFFedBnRCVYdzN4P6QAnQDwxLlG9
         aE+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=HLLAJpxJCKF6GpXYjiXBbb2388G9eZDwIJVZRHrbyec=;
        b=IMyP5gbGq+q8REPBGsDkhz2V6ywIIUmBIQm/eGuTjVdwLhmGXgEi3NpUZKse1WeYq7
         HXTgDX4uP+7S0bi5dD79fBzJS64vfacNp296mxHe7tTknwS7md4sHOH75wmTfKOBHwy2
         lArOf326gXLz4I5ezV2zQskjH2M6sGVthl9GLlmDiDbh9kTHy1urMzb+28+t3TQq7DP/
         ycCry3Gzythc6/ADN36L9he68NXCxFw4ysHBAmXewRfFqz+ZlRw0lFZRUEaMay1iSO+J
         ipZPPVZ+oMmGwS+V5ZO8e8ecg0Qr/Hjti4/Jn2FzI3Qssrn42Gh9uIxW+eFkbjxYFPMi
         3nUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=T04fL7iR;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id v27si407544qtk.2.2020.06.28.23.18.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Jun 2020 23:18:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id cv18so2797199pjb.1
        for <clang-built-linux@googlegroups.com>; Sun, 28 Jun 2020 23:18:55 -0700 (PDT)
X-Received: by 2002:a17:90a:ed87:: with SMTP id k7mr5586555pjy.31.1593411534865;
        Sun, 28 Jun 2020 23:18:54 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id g12sm4460965pfb.190.2020.06.28.23.18.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Jun 2020 23:18:53 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Will Deacon <will@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>,
	Borislav Petkov <bp@suse.de>,
	Thomas Gleixner <tglx@linutronix.de>,
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
Subject: [PATCH v4 14/17] arm/build: Warn on orphan section placement
Date: Sun, 28 Jun 2020 23:18:37 -0700
Message-Id: <20200629061840.4065483-15-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200629061840.4065483-1-keescook@chromium.org>
References: <20200629061840.4065483-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=T04fL7iR;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042
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
versions. All sections need to be explicitly named in the linker
script.

Specifically, this would have made a recently fixed bug very obvious:

ld: warning: orphan section `.fixup' from `arch/arm/lib/copy_from_user.o' being placed in section `.fixup'

Discard unneeded sections .iplt, .rel.iplt, .igot.plt, and .modinfo.

Add missing text stub sections .vfp11_veneer and .v4_bx.

Add debug sections explicitly.

Finally enable orphan section warning.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/arm/include/asm/vmlinux.lds.h | 6 +++++-
 arch/arm/kernel/vmlinux-xip.lds.S  | 1 +
 arch/arm/kernel/vmlinux.lds.S      | 1 +
 3 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/arch/arm/include/asm/vmlinux.lds.h b/arch/arm/include/asm/vmlinux.lds.h
index c66b16cd8837..d44fae722e7a 100644
--- a/arch/arm/include/asm/vmlinux.lds.h
+++ b/arch/arm/include/asm/vmlinux.lds.h
@@ -39,6 +39,8 @@
 		__idmap_text_end = .;					\
 
 #define ARM_COMMON_DISCARD						\
+		*(.iplt) *(.rel.iplt) *(.igot.plt)                      \
+		*(.modinfo)                                             \
 		*(.discard)						\
 		*(.discard.*)
 
@@ -63,7 +65,9 @@
 #define ARM_STUBS_TEXT							\
 		*(.gnu.warning)						\
 		*(.glue_7)						\
-		*(.glue_7t)
+		*(.glue_7t)						\
+		*(.vfp11_veneer)                                        \
+		*(.v4_bx)
 
 #define ARM_TEXT							\
 		IDMAP_TEXT						\
diff --git a/arch/arm/kernel/vmlinux-xip.lds.S b/arch/arm/kernel/vmlinux-xip.lds.S
index 57fcbf55f913..11ffa79751da 100644
--- a/arch/arm/kernel/vmlinux-xip.lds.S
+++ b/arch/arm/kernel/vmlinux-xip.lds.S
@@ -150,6 +150,7 @@ SECTIONS
 	_end = .;
 
 	STABS_DEBUG
+	DWARF_DEBUG
 	ARM_DETAILS
 }
 
diff --git a/arch/arm/kernel/vmlinux.lds.S b/arch/arm/kernel/vmlinux.lds.S
index 1d3d3b599635..dc672fe35de3 100644
--- a/arch/arm/kernel/vmlinux.lds.S
+++ b/arch/arm/kernel/vmlinux.lds.S
@@ -149,6 +149,7 @@ SECTIONS
 	_end = .;
 
 	STABS_DEBUG
+	DWARF_DEBUG
 	ARM_DETAILS
 }
 
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200629061840.4065483-15-keescook%40chromium.org.
