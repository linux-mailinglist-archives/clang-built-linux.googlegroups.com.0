Return-Path: <clang-built-linux+bncBDYJPJO25UGBBFXW3XUQKGQE2QN4W5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id E49F57216F
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jul 2019 23:24:39 +0200 (CEST)
Received: by mail-pl1-x63b.google.com with SMTP id y22sf22727249plr.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jul 2019 14:24:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563917078; cv=pass;
        d=google.com; s=arc-20160816;
        b=QTNlhrzkVxJQm3MerIbBsmqePG5gyi1+i9mXyIKdA9g8PlKd4qm8qYI9+kzTUpDXoe
         4rJbDXUWxM6aC3CI7iElt8EJMaZ35ONC68Rk8o0I2MtHDFbY8Y1fBy9azkVYgc87vHqC
         q/dAWVmxujVo8DJC6xGyi5UOl+81fC2Gd86iMzVJ8q0uhHdYIQEZDoutfhA/TUMnURHP
         8BXhtUQ85Dvlerm4UCF2vElmbVBV2Zapkq0JjKz3nc4mBC+Ps7N4NLNP0WMbjBI+fTSD
         kNMXBebw9+sp5TodrPQoBqntj4XRiugbweToqzVouH+f2z2nb+k5G+sXaIB7V69jvJjQ
         Kc2w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=Ku6Ad2X4c3P+3LKkyZaS+HFFuYGlxhR5HAhoz+i4dxI=;
        b=sD7j67KfBShcDUnV3zGuACAD64xEiadmA0/EQCR6D4baf+DVnTl+mcmPShICDT1QYJ
         znAd3V4dVxNcv/j9l49KgjFnrwSarwtUkSpHZW9L2DnkSBoht1kkGJR/rq+5PCFbtP+z
         z2wVBVdd9hHXXIWZYYr+qLmv097VrAAt7rmJY0co3Ky45nCkbZzGqwU+pVB+0ZPaEJnh
         kC1OdmkvGcw8ROnzX4mTj3qxWxVNxlpLRq49jIghpkfI3qpZlHOP2voPdJa1e9vcYHWR
         HFTZ+MFAgNtWlMBewAl7jUKE3EQ9/1haKE7E7GQkuwD1HQtVp+i+aZPJyVn/aIq7J98u
         wx4g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QEi55mfO;
       spf=pass (google.com: domain of 3fxs3xqwkangh78m4ofhc8lmaiiaf8.6ig@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3FXs3XQwKANgH78M4OFHC8LMAIIAF8.6IG@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ku6Ad2X4c3P+3LKkyZaS+HFFuYGlxhR5HAhoz+i4dxI=;
        b=Ld9I4t0yVROVhxtwwivQe3z+pNWA36jNDkVLPgCAMJEVuz6BQEXrsMM2JK5r53PApU
         J32Ulvyz/qJkSDiHIe0uoXURxFgLNckNpKBCUR9gsamot+FinbbkJfTxjevbrqjr74Mo
         AIGauI6kDpXuDf8Q2GGWYZIAxW2Stxk4YrToaCJVsEwksXDMSfeK0G0W0CtB7LD2WZma
         hJgjh/Y547deY9QzEXrUq1WX2fs/TfhQeFx73x73PTDyORPxQl27RpFiluRuna3LT/8I
         v3FqMYRwJNudGzOmHG2n1w+ZPFdzBDyQfD6CSfYNgHiflmm3uLEqY7UG//nrgE9qKrvd
         G0cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ku6Ad2X4c3P+3LKkyZaS+HFFuYGlxhR5HAhoz+i4dxI=;
        b=d064N2OKJpSDEX17JGZS5el0PerHIpNsjO4dtyvdAjfhYjpapO4IEsuCZYEtPbudu2
         4OrKBZEN2jzl4xANTOCaXKwg9xjGZbxJ384w7IltIbskR+eaM+8G+5CX0MwbWXJjjdX6
         tKhKIjeWh7TjQff9gXSLlRS1Ad78q5uBnrPRzXZBrH36dEMViga21MJGsfScI9KZa/pJ
         Ytk4jypg+a3c89Hbm5qeOJ6X/U9svCPTeHKe4rf+2uSlgFCdMdmHEXNy0kfmY0ZkW6eW
         gPEpEp7IFtSwGCIuTCoRav2byZUEBMh0Np/cPibtKAzTYF7p+KpMw+Y1dvl+zbKxrTbE
         ZvqQ==
X-Gm-Message-State: APjAAAXZDana4vDl8f8sZIE1PK/sqswa7srpDdtfBtM/eBGigoRD6Yvk
	oaztcS6Oqu3e2Zw2NzKb07M=
X-Google-Smtp-Source: APXvYqx6CzYYHc1sMRamqXswg9cKQktYI0K/Ny6ATGVuwJNOioY4VZuOpJoLNcNbZmPG0RwWSnZhug==
X-Received: by 2002:a17:902:2929:: with SMTP id g38mr62609187plb.163.1563917078679;
        Tue, 23 Jul 2019 14:24:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:90:: with SMTP id 138ls2639789pga.1.gmail; Tue, 23 Jul
 2019 14:24:38 -0700 (PDT)
X-Received: by 2002:a63:ee08:: with SMTP id e8mr24118084pgi.70.1563917078332;
        Tue, 23 Jul 2019 14:24:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563917078; cv=none;
        d=google.com; s=arc-20160816;
        b=aFRnUa5uVmJdv0wKGHMv+P96ymxuBuinjZ5ZGHSGfYxvtgnYCLgWElOU+0kAHTQLl4
         03IhM2n5xdYU/hweA0I7ISS3CKgIPIrCVXGW9DyyPGGTUiAt/KmurTOUttKI4fJTnB6I
         ThPlaTq9QRdf6k3nlVIk837ds+o+VonhCeq+P0Oh6pjgT3gOnlIbPF9WH7zhmFECJqzS
         a/FWtW5mvaACXxj22ogB3uvL/MOYMKMrA0L4avwlvCKpzCkUJTCVWBQ5jgBOMfxVXlow
         aTrLJmuXObH2m5X+WXCwhGBJTJrWT7QanmKNNBcn7O1xOWgE8AloXRNhP/JUddqdmFrF
         96Sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=4zjV4XfUufy/ohN9fql/K25fvrQNe19KfVusxa+S+OU=;
        b=UrHlwufA75hTKqOo6oBNQ8a9qogpqi6n5+aV4djnUl5eLAvEIiYQXzl9fgTwd9Y9Kz
         0HedbKjQ26yOTzpmw5Fvqu+wfuorx9tXH14baSyZotdwe8xSeq70qQ/X9mahUBI5m/3A
         jHKudmMDKfs2BwiJa8bKAu7vBNb6V4ZZBZLz2vYXm9vcqEr6FiTpJlI9DUs502tSkc9h
         hzqbHGyaauFiNcNZpM4o7Tye34CdSFln4eTKxXJ1/OisNcqVufYLQcRi7OOKlyWKuNz8
         HTKXb0OyTyJ2XPw2RKOJais6eWlin7hSXHlYtuzCBlUGvftyjZN8Aj47L6DmPqt4QC85
         UnIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QEi55mfO;
       spf=pass (google.com: domain of 3fxs3xqwkangh78m4ofhc8lmaiiaf8.6ig@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3FXs3XQwKANgH78M4OFHC8LMAIIAF8.6IG@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id b24si1747550pjq.1.2019.07.23.14.24.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Jul 2019 14:24:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3fxs3xqwkangh78m4ofhc8lmaiiaf8.6ig@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id 199so37605260qkj.9
        for <clang-built-linux@googlegroups.com>; Tue, 23 Jul 2019 14:24:38 -0700 (PDT)
X-Received: by 2002:a05:620a:10bc:: with SMTP id h28mr51387214qkk.289.1563917077378;
 Tue, 23 Jul 2019 14:24:37 -0700 (PDT)
Date: Tue, 23 Jul 2019 14:24:11 -0700
In-Reply-To: <20190723212418.36379-1-ndesaulniers@google.com>
Message-Id: <20190723212418.36379-2-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20190723212418.36379-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.22.0.709.g102302147b-goog
Subject: [PATCH v3 2/2] x86/purgatory: use CFLAGS_REMOVE rather than reset KBUILD_CFLAGS
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: tglx@linutronix.de, mingo@redhat.com, bp@alien8.de
Cc: peterz@infradead.org, clang-built-linux@googlegroups.com, 
	linux-kernel@vger.kernel.org, yamada.masahiro@socionext.com, 
	Nick Desaulniers <ndesaulniers@google.com>, stable@vger.kernel.org, 
	Vaibhav Rustagi <vaibhavrustagi@google.com>, "H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=QEi55mfO;       spf=pass
 (google.com: domain of 3fxs3xqwkangh78m4ofhc8lmaiiaf8.6ig@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3FXs3XQwKANgH78M4OFHC8LMAIIAF8.6IG@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

KBUILD_CFLAGS is very carefully built up in the top level Makefile,
particularly when cross compiling or using different build tools.
Resetting KBUILD_CFLAGS via := assignment is an antipattern.

The comment above the reset mentions that -pg is problematic.  Other
Makefiles use `CFLAGS_REMOVE_file.o = $(CC_FLAGS_FTRACE)` when
CONFIG_FUNCTION_TRACER is set. Prefer that pattern to wiping out all of
the important KBUILD_CFLAGS then manually having to re-add them. Seems
also that __stack_chk_fail references are generated when using
CONFIG_STACKPROTECTOR or CONFIG_STACKPROTECTOR_STRONG.

Cc: stable@vger.kernel.org
Fixes: 8fc5b4d4121c ("purgatory: core purgatory functionality")
Reported-by: Vaibhav Rustagi <vaibhavrustagi@google.com>
Suggested-by: Peter Zijlstra <peterz@infradead.org>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
Alternatively, we could put these in all in one variable and remove it
without any conditional checks (I think that's ok to do so with
CFLAGS_REMOVE).

Changes v2 -> v3:
* Prefer $(CC_FLAGS_FTRACE) which is exported to -pg.
* Also check CONFIG_STACKPROTECTOR and CONFIG_STACKPROTECTOR_STRONG.
* Cc stable.
Changes v1 -> v2:
Rather than manually add -mno-sse, -mno-mmx, -mno-sse2, prefer to filter
-pg flags.

 arch/x86/purgatory/Makefile | 26 +++++++++++++++++++++-----
 1 file changed, 21 insertions(+), 5 deletions(-)

diff --git a/arch/x86/purgatory/Makefile b/arch/x86/purgatory/Makefile
index 91ef244026d2..6ef0ced59b9c 100644
--- a/arch/x86/purgatory/Makefile
+++ b/arch/x86/purgatory/Makefile
@@ -20,11 +20,27 @@ KCOV_INSTRUMENT := n
 
 # Default KBUILD_CFLAGS can have -pg option set when FTRACE is enabled. That
 # in turn leaves some undefined symbols like __fentry__ in purgatory and not
-# sure how to relocate those. Like kexec-tools, use custom flags.
-
-KBUILD_CFLAGS := -fno-strict-aliasing -Wall -Wstrict-prototypes -fno-zero-initialized-in-bss -fno-builtin -ffreestanding -c -Os -mcmodel=large
-KBUILD_CFLAGS += -m$(BITS)
-KBUILD_CFLAGS += $(call cc-option,-fno-PIE)
+# sure how to relocate those.
+ifdef CONFIG_FUNCTION_TRACER
+CFLAGS_REMOVE_sha256.o += $(CC_FLAGS_FTRACE)
+CFLAGS_REMOVE_purgatory.o += $(CC_FLAGS_FTRACE)
+CFLAGS_REMOVE_string.o += $(CC_FLAGS_FTRACE)
+CFLAGS_REMOVE_kexec-purgatory.o += $(CC_FLAGS_FTRACE)
+endif
+
+ifdef CONFIG_STACKPROTECTOR
+CFLAGS_REMOVE_sha256.o += -fstack-protector
+CFLAGS_REMOVE_purgatory.o += -fstack-protector
+CFLAGS_REMOVE_string.o += -fstack-protector
+CFLAGS_REMOVE_kexec-purgatory.o += -fstack-protector
+endif
+
+ifdef CONFIG_STACKPROTECTOR_STRONG
+CFLAGS_REMOVE_sha256.o += -fstack-protector-strong
+CFLAGS_REMOVE_purgatory.o += -fstack-protector-strong
+CFLAGS_REMOVE_string.o += -fstack-protector-strong
+CFLAGS_REMOVE_kexec-purgatory.o += -fstack-protector-strong
+endif
 
 $(obj)/purgatory.ro: $(PURGATORY_OBJS) FORCE
 		$(call if_changed,ld)
-- 
2.22.0.709.g102302147b-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190723212418.36379-2-ndesaulniers%40google.com.
