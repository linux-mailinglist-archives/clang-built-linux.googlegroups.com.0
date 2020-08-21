Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBIOIQD5AKGQEBBEKUXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id A9DA024E0DC
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 21:44:34 +0200 (CEST)
Received: by mail-yb1-xb40.google.com with SMTP id e12sf3166784ybc.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 12:44:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598039073; cv=pass;
        d=google.com; s=arc-20160816;
        b=w13pBBU3H4VHRqwsnY9q0O+iKd4Odx9fdEWyc2dqB0rEczF9a/RqXFmK3TA252yy0f
         HqoO2iq6Xcstrp0KAEbCWO+g9bAo+OWrhYzO6HYyVCh2J7gxVGH7IGjw6T0WBKecaA57
         7l+iHsKqemU8i5q7xcM2+1IEfmSawjeARzLmik6oCjLEgUcve0UuUgklA/KTkdxd32B5
         +IPpSlMabjTdg2FxY4HcZDF8BsB4QEnXzG8mwq53MzwWSC0rFoZxa43HVpHRRDLLGCgx
         2gNAyff8fhwJcy9rFsfNQYbX4scwMwRNqS635+aMzBNLNNziMsdn4LN5I15D8FjJjEdQ
         pYvg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=WHjwANfI/m6hrTNWD/ZWwf36T0VjnL5PsDSufszvwmA=;
        b=Euhzji3kAEDqwZAjIk9USP6DVUe8YbRpxTcunVL5s9XPzOolLMewHWDwaki4uhbt/6
         rfD1voJnawemUvY8A9JFpymySpwjeaVh66jWJT1qTh3Qby2fAvOQs3HbJj3efan/S4v/
         X+AjJgcnYKqgfY4tzIomuT2HXMkXHuSdHxtX4r1ukJEZTBxtZkFfw/qzFHOrnZMuK3qK
         X5HpQ77D+Zv/vybxAYtriB53k16lbKSGDK3GIQ2yjGp+Vax3fNTTimnAmgL1f0Up3IFI
         G2Kpq6W9N6UW9/De1tRFIlK1AIn5kYRd8eGzfL7UrR7y53yklsDsI12TCcGo8BxtzJ5G
         x6dQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=hSwetOEX;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WHjwANfI/m6hrTNWD/ZWwf36T0VjnL5PsDSufszvwmA=;
        b=E3UzyCGsmDfa0Yh3lv6wSjLz7xix4JVhyisSKc2cMv0sLF0+55rF/ycw7bDAkxzppk
         pL8r3y2gTAlsH/CL8kYxLMztMRr9l9VknAxVsWUYCAefLYWe10ncaEhcmMf3KDFIIKGa
         T0tkO4r1wRO2qwkH9m0pg892lGkvmjZCumf2ZmNjZ1Bt7tUCHPIkuGpzwn4Lxsa4zizy
         ho6BnxuVW5gY6PxG+eYztyaxuGu0Yi71atAf8WYDdNWJUSIy9eY9AS0RVt3g11yah96x
         r/y+ATWxVE7W/LgkKgaHBS/1gLCC7lJFd6vzwh3+txrO2CQ7xlNd50+rLvo1bXjhuFEw
         wrSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WHjwANfI/m6hrTNWD/ZWwf36T0VjnL5PsDSufszvwmA=;
        b=PzTGDzmvr6TgNi15pkg2b9GyxoV4RzPy9B8izuP0EdR5DbOmTsIUhbodEzUP/lQXX3
         fF24HMl/CxW/Vm1t3lqNh3Aup4XyCzcy1eWV1KW3JXJjctcmTni9Dh0TxknWgGuIYLSf
         rYL4nipolop7FvpFqEAVoe2mza1JokI6N4nGMRh6upJizTQFGvW0EMf4gEBsGNAhgxsA
         USVsJPjqngMKQ1+hkaoxUqREHCZD8r0LhE3371CC7jwsZkBSYbuRCrCRMOvF7O+sM1H5
         RHq9A+kbq54DZW8fUnpjpEIixI2ET9sJfFZm6Jnf/7GUKf+8VMWf44ARNoUBf49RakO7
         81sg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531e7CRrGu69cGkGmYKzFHvZsd8J3F0dzP5P7tYy9lbeSxcpan/O
	6TY/ZjYSn+QS4vw+HcncqZc=
X-Google-Smtp-Source: ABdhPJzA9xIQydYkauK6Ztm6dCQkLdQimtUmmTXzwSBqPgYnaaDUKq61jmo8bLSd8bHo/WB+T3bA0A==
X-Received: by 2002:a25:ca0f:: with SMTP id a15mr5911800ybg.256.1598039073749;
        Fri, 21 Aug 2020 12:44:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:40c:: with SMTP id 12ls1222379ybe.7.gmail; Fri, 21 Aug
 2020 12:44:33 -0700 (PDT)
X-Received: by 2002:a05:6902:1026:: with SMTP id x6mr6584486ybt.349.1598039073411;
        Fri, 21 Aug 2020 12:44:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598039073; cv=none;
        d=google.com; s=arc-20160816;
        b=yAEa/EKA4H3fR12WPFkAB7hr+O7b668K1qI91+HmNcl1E7RHFRtjD9NKfLeem/zhvk
         pvrTZSFNxXCdJQhsyOVhT5p+ZJtgq/crJOnQwceS88JAREFt9xQLFju6oE7nBavC3dpY
         sgGxOn1m4TUL/ScRItKTXzRMGQENkfov+QGiCg8ez9yEWex/Ndd7yNqsz2rNn5sbTOuh
         hUiQXBHsPbyG649zAFywR2RuoYmxBksoIzrBdZG+DjZkutlGtDro+7iZ5qtVYyp0PX06
         pf2tASuflh+W97bBSw3FuN6x8CwR5r2UrCg0nrs+8LjTNij3q7nb6HziVZ032VaT+maz
         z02Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=j7Lys61YjFpfMX3OTBjlFH6rsXYj3ZGDYGY4DwTK5Rs=;
        b=m1qzPBO0laTDL7nNrN49We830Q8YdU1Pw0d/+X+zWZwuvEazLgY0vEXyA08eFZzB8f
         0Hi+1zZjRc9nQ8Dm6QSKuE5dCTphkXxWlJXFxJrEzAtSrjQTOrCCTP+FGPYP7/NbsQol
         q2GPiSUOH0Vfy0UcvyuCvvDurx0uPDWg0uiwN8eEOZ3U5gqlsDuWoaEdwiQMF82wHpYR
         b5NVcoFW1jl/2XUq4r/gJVZZWqnFVibOV+cZxZOIcOib7gPNMOutHMztH4ddYKimR3K8
         CG03jaaIoaKf9lWzFVaZY+qlnjJkOH2phfWWhIk8C+abh80Z8oL6oLvct+DHcYIySiR1
         Ovdg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=hSwetOEX;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id 7si202911ybc.0.2020.08.21.12.44.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Aug 2020 12:44:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id t6so1254945pjr.0
        for <clang-built-linux@googlegroups.com>; Fri, 21 Aug 2020 12:44:33 -0700 (PDT)
X-Received: by 2002:a17:902:8d89:: with SMTP id v9mr3489157plo.289.1598039072600;
        Fri, 21 Aug 2020 12:44:32 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id 207sm3467672pfz.203.2020.08.21.12.44.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Aug 2020 12:44:30 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Ingo Molnar <mingo@kernel.org>
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
Subject: [PATCH v6 17/29] arm/build: Add missing sections
Date: Fri, 21 Aug 2020 12:42:58 -0700
Message-Id: <20200821194310.3089815-18-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200821194310.3089815-1-keescook@chromium.org>
References: <20200821194310.3089815-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=hSwetOEX;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200821194310.3089815-18-keescook%40chromium.org.
