Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBTUP433QKGQENBHGPKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A7E120CCB9
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 08:18:56 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id h5sf8083929pgq.4
        for <lists+clang-built-linux@lfdr.de>; Sun, 28 Jun 2020 23:18:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593411535; cv=pass;
        d=google.com; s=arc-20160816;
        b=0jIK6TCDYCLhY9hmVgiUIdjcCOZmxgY9gAWAL7psuiI4EojfM+AOluWaWZJf9gmAVV
         WZnsyd/x8h+eeX0lepopKo3KXNiWRpCagmY5OjW7MgxeUmVNbNjIvDxM/rgSUhvdClJy
         sRhBRlDASn0e8LfHGc6F340Dcc5rPlfWtRV0xlfXWVWxt7F6+UB0IwT4aIwRnk1HA8mC
         kNxqemRljExyeVV5Lxpms/PyCVnN+pX7pUAKRgeUmuxv/w6Ea1PwOcBKaq3R+PmunnP6
         Aa16XnMXN+9xj4IS0Pco2yG3DXfltVGXMv0RuCMELEXouaH/K3yzqaTrfKr56luxW8WU
         U9aw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=fmwu8EuaY19zZDVRRM/lkHiQFHMapGOe8srHnmJhr1s=;
        b=KmSrF4jnxOuyYSYKe3afu0cf1YQAZFTtIr6W6lZ8YBbGKCEst9H6QgLtOq8wGSvjwW
         2Vb6WZxb0/4fgleVSurdRq2FNFATtmK8a8gkBjuTooAVBfTFX73ukVZoonhwQLZ6uZLP
         oCucEsWA5Y25mExdNVvMsiNm36TRGO/7WKsOv3Vr6nIdhvb9omM2KyTfKLwqvVQwCQys
         u6T+wf/Y9Qn6Gu5oFN91wND/nbZfJihcant6DYcMqZaCzcdEn+1nVCjc3Xe8JhvnEtHj
         Czy6nmzJWWim3nbudgCrPv2oRSB8Gwn7rudbS5ks538OH3sV5v6qc6nOVtBijnQd8Ksn
         RqYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=OngKzCoB;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fmwu8EuaY19zZDVRRM/lkHiQFHMapGOe8srHnmJhr1s=;
        b=a8p7U4mXFfWKLVDf4l8ejhEVCZGiOZl0N3WcObQJDIo4BQ3H91Rj01pfv/JW2t92zy
         ap66FSZcGwnrmCkQbwgJ1bSKI6sE0OgR2gJuOxogA+Z/AR9ekWlLKX0qxk73ylCUFAIo
         u9/GeDjHavCGBau4jSVJehP3YO/wwKdXMeqgQdxh+DQ1tr+W369ePDHRl/2QQ2S18kYa
         CmTrPKEtlrVS0e+cMHiwkxRFs5nk9NtVoW9mZrjQkKk8SIan8G947DCPtVTK340aUWlH
         JLTNvrFaumHQaS8X99JxbCljXDXSh2iPfowSgzRomf6O3jr9DUJeShulwoQ1l//ycfp7
         x7qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fmwu8EuaY19zZDVRRM/lkHiQFHMapGOe8srHnmJhr1s=;
        b=AY9HzBZ/l0MVALW5ML19DWndyATNVtwJug+rG8IIj8qTLW0vGfZO0jYMTrWRMmxQjW
         PdCW/cv7Gi8rflcwqxl9F2fOzcvk4vTkqb5S2/np+VNK8OmISOujOIKjwkt9p3Q8Wvgx
         aL3bZ3nVytNBbeCHkappH50eSoyPJ4sO6wq7j2Eb+RroNXY/NqLIP9KGVYDwqdb7RPQj
         e6MMYQi1CDBhBNstvSk7rSYhKICs5bjWoTA7KLlIPpaLylcQE5qpv4/g10U4X2a+8WA5
         fU9lMVNHAtQ/4yOX4zXc5KDYf1f26/Ke/dGT9X11GbvzPogDtHTgOE38ccB/busY5Zmg
         Q7sw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531EUzoJXeAFAbbkbyUaa2l4ODrAjJgNKnGXxCD2+/lbe2cW2EkA
	0YwL0CV4YMUDczRjlnp5Haw=
X-Google-Smtp-Source: ABdhPJzI3qd6ZKSTMDAKQmHhQ/jY3FZB+dKc/0iv/itHS3z6bE2DzJPSPu0LdAn6s6gxCkJ1wLEm/Q==
X-Received: by 2002:aa7:8388:: with SMTP id u8mr13490467pfm.253.1593411534938;
        Sun, 28 Jun 2020 23:18:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:6b02:: with SMTP id o2ls5883319plk.7.gmail; Sun, 28
 Jun 2020 23:18:54 -0700 (PDT)
X-Received: by 2002:a17:90a:3e02:: with SMTP id j2mr6550127pjc.47.1593411534541;
        Sun, 28 Jun 2020 23:18:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593411534; cv=none;
        d=google.com; s=arc-20160816;
        b=BhXc1tSRZJqeVa3iJJKO5lP3jRFaSXnl29dH7yy6TpwjZFq0kLlXPX9GbGCZKv5BiV
         jBJE2qBxObtBtqBjpRaOPlkdL4I7UeVpMkix27UkGUOJbfRuFglvwzCQrunjf16qKHF8
         Dj3GKPhAv/ssTEvnonvklIEjSaWXDHQcmWtzXLG4yzJDImh16DGwDhKJaaLm5zaDSfn+
         j7eOZmyXRvA9d0gVeoY5t60Rk+UGYYH/lwJJO6ejmP1VP5v9aG/3GUJs16ZQOT7HBgsl
         WPYqCaxhFc5xmuk+mQfQJiARcqVZBTFhOg/7QjtjP8X/q4DfvIOKjh6SKdV7t46lYcAM
         Zmvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=BRDUZAq4KUcmg3RU1pc/3G6TWWMMmiH07CaNiCk63dA=;
        b=Dk37vPUe41aZNwfAWr7QrBGOI4twGrymJapxQLD64BIa+oTnoe9/z/v9ceYpuqyqRQ
         uzpqIq8KRo3xZlTJcde+uE2kUmOnitpErBt+inO4fSkirjwi0/YWB77JCzdLyzD++Z94
         4ri4eSCZHMPIT9DjvzOc9fsEmtLeMACWO5BicWhrzDVZU6H2BDhZgQb5ltRmmT3bjliy
         WxIhOdaLlu+U5yHWHFh7hBA9YjIo5PY0uJs8dN9OA4AShFQER1bfw4RMKlwPe+AqIqhG
         vJmVq1HbzF60Q3IWWS282Z3keT1JRnXCbs0qRI16WOFuFi5C9qk9hh0u77WC3s29hNx5
         6w4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=OngKzCoB;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id j3si986098pjy.1.2020.06.28.23.18.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Jun 2020 23:18:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id i4so7574549pjd.0
        for <clang-built-linux@googlegroups.com>; Sun, 28 Jun 2020 23:18:54 -0700 (PDT)
X-Received: by 2002:a17:90a:d809:: with SMTP id a9mr676907pjv.74.1593411534348;
        Sun, 28 Jun 2020 23:18:54 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id 9sm16588148pfh.160.2020.06.28.23.18.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Jun 2020 23:18:53 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Will Deacon <will@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
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
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	x86@kernel.org,
	clang-built-linux@googlegroups.com,
	linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 13/17] arm/build: Explicitly keep .ARM.attributes sections
Date: Sun, 28 Jun 2020 23:18:36 -0700
Message-Id: <20200629061840.4065483-14-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200629061840.4065483-1-keescook@chromium.org>
References: <20200629061840.4065483-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=OngKzCoB;       spf=pass
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

In preparation for adding --orphan-handling=warn, explicitly keep the
.ARM.attributes section by expanding the existing ELF_DETAILS macro into
ARM_DETAILS.

Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
Link: https://lore.kernel.org/lkml/CAKwvOdk-racgq5pxsoGS6Vtifbtrk5fmkmnoLxrQMaOvV0nPWw@mail.gmail.com/
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/arm/include/asm/vmlinux.lds.h | 4 ++++
 arch/arm/kernel/vmlinux-xip.lds.S  | 2 +-
 arch/arm/kernel/vmlinux.lds.S      | 2 +-
 3 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/arch/arm/include/asm/vmlinux.lds.h b/arch/arm/include/asm/vmlinux.lds.h
index 142c038b2e97..c66b16cd8837 100644
--- a/arch/arm/include/asm/vmlinux.lds.h
+++ b/arch/arm/include/asm/vmlinux.lds.h
@@ -56,6 +56,10 @@
 		ARM_MMU_DISCARD(*(__ex_table))				\
 		ARM_COMMON_DISCARD
 
+#define ARM_DETAILS							\
+		ELF_DETAILS						\
+		.ARM.attributes 0 : { *(.ARM.attributes) }
+
 #define ARM_STUBS_TEXT							\
 		*(.gnu.warning)						\
 		*(.glue_7)						\
diff --git a/arch/arm/kernel/vmlinux-xip.lds.S b/arch/arm/kernel/vmlinux-xip.lds.S
index 904c31fa20ed..57fcbf55f913 100644
--- a/arch/arm/kernel/vmlinux-xip.lds.S
+++ b/arch/arm/kernel/vmlinux-xip.lds.S
@@ -150,7 +150,7 @@ SECTIONS
 	_end = .;
 
 	STABS_DEBUG
-	ELF_DETAILS
+	ARM_DETAILS
 }
 
 /*
diff --git a/arch/arm/kernel/vmlinux.lds.S b/arch/arm/kernel/vmlinux.lds.S
index bb950c896a67..1d3d3b599635 100644
--- a/arch/arm/kernel/vmlinux.lds.S
+++ b/arch/arm/kernel/vmlinux.lds.S
@@ -149,7 +149,7 @@ SECTIONS
 	_end = .;
 
 	STABS_DEBUG
-	ELF_DETAILS
+	ARM_DETAILS
 }
 
 #ifdef CONFIG_STRICT_KERNEL_RWX
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200629061840.4065483-14-keescook%40chromium.org.
