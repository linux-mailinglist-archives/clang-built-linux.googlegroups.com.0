Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBPGNSL4QKGQEGRSOMTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 94CB5234E5C
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 Aug 2020 01:18:21 +0200 (CEST)
Received: by mail-yb1-xb37.google.com with SMTP id u189sf39621900ybg.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 16:18:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596237500; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ki7K3VEAKf/tVRRqEVsXspdonsJSS4VB3ygDA/N9E1tP6CZyTBCjgPNtvfR7hvTtdq
         fX+svwSIw2IrKBqGeaXnaHKt85KMD3AlIzCxviFFI1/0R+6Z7/0YzUGZgw1OztQqJZuf
         YyaeVg/gtQkb7+jP62FD5bvw3eT+RjX4YlePS9rXMVs5dMv4MFgtnsJv8O1Z6t46Km48
         GW94mG8FMSEKBGfsgq0Z5AaaLLUW2z27TTJMOAihNW74aNK0X9i2FQoLm0D6is5IijiP
         d+XaNNySs93HvH5+OM4Jm8gMza3B7Kr+64zuz7yMJpOtGFppGh3xmaIFQaoieGDDS9cM
         I7sw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=hcfZ5ys+W4GNznqyeGZSjzn2QyDnfNEh/3p8HN5cPy4=;
        b=l7siyPiBYK7Y90Ok0jaJHCapU1gvbvSvJ9JKom0Zcw1kejis+Ma6+5bhXGXUb/rN0r
         y5TVAMSmObve+BOnsWjRjCW3kqLyr1N9Xl1oe8TMbFpmJ/exRiO0ZnTpyoK0vvPKXUVf
         Wekrwtq11CZuj5DajR8tfwkNnv9Mqtt9FwGlSu+Z0pwqJxL/LQWYazyJP9omfmHK83l2
         tYrLhszLEzTo8/nnGNJVS/pOdU7f0IaAN/STPwH6rjldrOtuWN1CR3qmiIra14E0AXxC
         KfSky2++GmC03B9lM+6UWsacp6GvDjwloCQo5CU/aNnfx07upyw0cwSIHJR5FUvdFIYp
         SPkg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=d1nsCRiV;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hcfZ5ys+W4GNznqyeGZSjzn2QyDnfNEh/3p8HN5cPy4=;
        b=fwHGuMxbiAb9wLGJgy65PuFaYnbiC5INnxOG8+hGD2jKwh7GtGPf2lhf/IHp7SciQ7
         U5jx/Qjpz1sl1x9jsuP95IJkBdRMplrMGjHoBYqfSlsf1LsjJAVGxwEEsdwzMxzNQFOx
         zuQ2xdk7nAL8512HMiAMKb0i1vSo6bTmTw43NvXQEkDot5uhtHLNQ8iXf31r5J6gO7Ho
         Alkip1F+p7gAgZGbw2TPHOteJ7oVs6Q1mgzJoLWlifL4XDkgJPOhJeNA9Amsy09hkoqH
         fqqCrgisUXsGWZebSQALRfL/LexoTRkIAShrWHNv6vpFzXXRRgHruKKZ8EHDGb4rnC7a
         DdKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hcfZ5ys+W4GNznqyeGZSjzn2QyDnfNEh/3p8HN5cPy4=;
        b=oUm7effMHUuhxFx5Jj3Bz42zxqYPFyRX7oTWLX7eK7t1IsUqO7m0KgXsOHA7TdMWUd
         kqvv9SNBOg4Uv90EZKeb1By4KErZvKcqJn/m0J0FOObdW9j9/9V79LnNJYs19BTvoXYq
         tIX9EmDUJcGSqu6hqEqWWhNxhQoWPeBmZz0JCeGPbPc3ATThUC3VWCkShvEqliAQOggQ
         JIQxtEMkcWeOTZJNW0XLLDsCZNurEOopN4sd5g6vtwyFt4IzFOLCanW6yurnIwkAAfOF
         sFwEgLkDTDWBFxT+aeibmeVwL7Jhv662AiqkuIkuN1qIBEZC+iKOrI9mmCq7PvnJLsrv
         rYYw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532oAH5pUEMIjKHMf946D0LMc5Kg5U4FuG3SrH1yyXJ3BhCL4eAr
	8oFotXGYYt69xCB88Gw7F7s=
X-Google-Smtp-Source: ABdhPJxxoJZQi+etqj8TitjQpNASi20ks9u0rJNGb5csauevfAAIqck7wA9hvrdVkDmPT1ZfT/GCTg==
X-Received: by 2002:a25:ab74:: with SMTP id u107mr10276196ybi.344.1596237500351;
        Fri, 31 Jul 2020 16:18:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:cb48:: with SMTP id b69ls3554586ybg.4.gmail; Fri, 31 Jul
 2020 16:18:20 -0700 (PDT)
X-Received: by 2002:a5b:445:: with SMTP id s5mr10062183ybp.26.1596237499988;
        Fri, 31 Jul 2020 16:18:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596237499; cv=none;
        d=google.com; s=arc-20160816;
        b=BD7aTDkrtYJELpnw03nir9Ty9D9FZ+2JykRyjiiP71BQaAptUZ9hz9nPCv7xAQNRaM
         gZ87iAaOTVNjiE/PxnXLIsY6ZQD2VACzA6w7eolCod77F8QA1ltrpBtUtapy5t0va8fH
         CXSwL/FTRwTZOPKE7h9W1V9FXGZCBwnn43cfBP9/bnPFMgypTO4gMfKQKnZGTl5J8ByN
         V1RgPjJoE3fm6L/ISOyftvN0f7/i+7KqkMX4zJ69Am3wukn8dCcShWP4WKCYlVv9yl1z
         7QushRWO34iXQtzG/lL/SY8lqVK6Yrw7P3fjqY9r9tnIYmJq7uRGL7DgksIc+LszMxHt
         O4hA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=j7Lys61YjFpfMX3OTBjlFH6rsXYj3ZGDYGY4DwTK5Rs=;
        b=gr1RCEmIJkxHlPjFWZWAuzHx67UCyK5i7oeN7s0KHkhuwJUWasdV6a5iCCHCiK9MB6
         INbLZhAmxqY6hjTEWxqrDVrRf7CAunIBamFJcMIBFcdpSVnuBLjpCqM+NAftVggYi1B/
         uE4wOg6E8TrmWPa89knOnHx1W+EsRXdxxfe0RghEXrcXjU67sFFAI7gHE2ifdMwnDFb9
         r8qqn4J6wEAdJOs3k0KrOaDllawJSPTfzuv6KTKvzFI8EPi0mUE5/dwamq9Jmb/V6gBv
         /nXkvtsjNnZ31NVbSIM82W4CGK7whg9405T66PIDfh9CZi2AjRtojWUJMMpdH/s40b9g
         2YOg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=d1nsCRiV;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id n82si634011ybc.3.2020.07.31.16.18.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jul 2020 16:18:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id r11so7287878pfl.11
        for <clang-built-linux@googlegroups.com>; Fri, 31 Jul 2020 16:18:19 -0700 (PDT)
X-Received: by 2002:a62:2546:: with SMTP id l67mr5959404pfl.154.1596237499260;
        Fri, 31 Jul 2020 16:18:19 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id c2sm11380501pgb.52.2020.07.31.16.18.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jul 2020 16:18:15 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Thomas Gleixner <tglx@linutronix.de>,
	Will Deacon <will@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
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
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	x86@kernel.org,
	clang-built-linux@googlegroups.com,
	linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 24/36] arm/build: Add missing sections
Date: Fri, 31 Jul 2020 16:08:08 -0700
Message-Id: <20200731230820.1742553-25-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200731230820.1742553-1-keescook@chromium.org>
References: <20200731230820.1742553-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=d1nsCRiV;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444
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

Add missing text stub sections .vfp11_veneer and .v4_bx, as well as
missing DWARF sections, when present in the build.

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/arm/include/asm/vmlinux.lds.h | 4 +++-
 arch/arm/kernel/vmlinux-xip.lds.S  | 1 +
 arch/arm/kernel/vmlinux.lds.S      | 1 +
 3 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm/include/asm/vmlinux.lds.h b/arch/arm/include/asm/vmlinux.lds.h
index c4af5182ab48..6624dd97475c 100644
--- a/arch/arm/include/asm/vmlinux.lds.h
+++ b/arch/arm/include/asm/vmlinux.lds.h
@@ -59,7 +59,9 @@
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200731230820.1742553-25-keescook%40chromium.org.
