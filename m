Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBQ7CZL3QKGQEQI4BG4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 561872069BA
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 03:49:56 +0200 (CEST)
Received: by mail-il1-x139.google.com with SMTP id o4sf417750ilc.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 18:49:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592963395; cv=pass;
        d=google.com; s=arc-20160816;
        b=IW7vqPqPUeKkwOXPrYZc/fcWalCsrRHikYGiDw5ETdz6Xx/bVHnd0g5eBSgqwhjHty
         e59KvhiLYndWbAnmiGoW49VhjsHyBgaqrFdVeWMz4DvX0W2H84OPm1BNGgpIzMGkZ2Ba
         wrbavho3bMhVEWLoUXqqyc7SLFB98U+EEO3bttS23NDulUSlJ3KEl2xXakEFpc3LA6QP
         /BKadusauDMz9jqg1aEaXpvQsUl1GF+P5kcOGlTK65pmuJrOYMDp/7FP/2E5TBTNyvQw
         VJSsIXaLHyeSKR4R/DZiSEMCOvigs1bDKNJlItpkZdnAh1Cyz+LcHpBF6gRQloOStNni
         u4xg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=G2snUg+lcZvJ0FplZrng8HT9+y2fnYyFAy81nMCTBGg=;
        b=T+96IUwOjVGOKGyf31yIX50cKyxvhJDpYJjntPaXOkIhnFT6FmVh0Q/wuCe1fDKeQZ
         0WY/TxapNbxkJOmLuGdwQK39Gmq8Kf6GnwnHy6yeW1V5EzdlTodYDnp2hmNcn25dENPC
         ClYgw8sPbYrpL6WnoeoDPKFmLfygAjX3mWr1WoBQk4OQIzIolsumE1fn10Q8p7K3BsIO
         kJE3WsJOjr55L6jSiyCcayutNLKzRp3QzscAHlFOIFurPtvpmzVKv3Vf1myhxvzstj3P
         m/USIOqQtrH452nytIo5rrSRRc6xDVDCzjztrvOVNGPDuHjtxXAFHmjg1Zg5hBUjZkOM
         LZIw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=j28MIPdY;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=G2snUg+lcZvJ0FplZrng8HT9+y2fnYyFAy81nMCTBGg=;
        b=oq4np6uSFIBG5/abaWFPPCN71TPGdxla+tMiItLB6h04PdcRZMNMkEBReIWYK1ZCmZ
         GAEZL5+hRWVNcFU2WGNzzRkq+ao713FUiKPkVHlqb9zMMdbLR4DZr736LgKivCPtvGLj
         5t7qkoMuADIr51jB4+XTGHlNvNEW2UdsB/PtIWZWVhiMOaor3EkFkcB9EDpL156ITG2U
         IqBzqFk0B8frHCEm7pSwHq2d2eWJA2+5LH1WZvY4jSKx9UGi3gfyGtZfyqA8fyUEW1FS
         wtLze5VpyMpQsbxeR2lbi5EMN0o+n92xf+I3WAjV0DZZIFbmOHNOzlY2Wd+Pwwqzopuo
         4hPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=G2snUg+lcZvJ0FplZrng8HT9+y2fnYyFAy81nMCTBGg=;
        b=ju/i6SWXb84p2VQjZtPwh27Uu7FiWvB9qezYWSHlp34jJII0JVlNvniip+5fW0uHsR
         SCL1p8/1rKvlOL6XG0Rhv8o5zwTIIxTtlcptpWQRGue8RgILd2gmUgeThO37ebc3c6y4
         jJucFl6aKYhNoMoxLC35q1K+3s5VRLOTRL1RkSKHhIAnrLEI8vJwegxiVzQMU1uwd5i9
         V2XqXmbmWxsSngWloWsZ6txytNZYvKOCUtZFHSPGZ2vO7DYy8mJ0EBoiakEfw/aihLrI
         OcnNCfdeJ4WD9fUQ+U6tB1M2r9FMZh6778+FVxJaxeZvhOpRgXYpPIorRFvn6mOvdA+M
         yy4w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5309j6MiVni46pD0pl+VSVQHcaaN5YKraikVpyENxAMFxJd8TFnv
	bpC7RZZ8+z425AMHhA4hzjs=
X-Google-Smtp-Source: ABdhPJzsqHOpaifJw53+PLkFbaNfHFYJTjHod8AwL++ajAxIuJYt4SFMUE5tYPYWrm96mUL4hRJRBg==
X-Received: by 2002:a05:6602:146:: with SMTP id v6mr28381100iot.170.1592963395366;
        Tue, 23 Jun 2020 18:49:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:d28a:: with SMTP id p10ls168026ilp.5.gmail; Tue, 23 Jun
 2020 18:49:55 -0700 (PDT)
X-Received: by 2002:a92:c509:: with SMTP id r9mr24981044ilg.189.1592963395115;
        Tue, 23 Jun 2020 18:49:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592963395; cv=none;
        d=google.com; s=arc-20160816;
        b=xaREr6Wnl7E8+p5GM65eQ6EXH3qk1jOoXqHqFNe5VtmpZpXtonBIpOPsFW6K1E7OVk
         8VIbV0mD9bgm1K0csQqJ/a5ALn4XoKzrze86rt6XqqDqChkBVgIyJHFNW/NXIARnvuw4
         Lm92coFJDM76LA+I+afycR0kY5FvWHfVexIhN+AfFwNLlUGzzc9DAoDrosq1VmoAK6py
         WXscKVdoPZuSxwqYXcWnMJB0mVAauC6HU3yB3Jv21Ra66vgan/p0V6LyfZ7NFpx1kNJR
         bhQHrfp/hNXPmVsNa5e+nwlA6Wet1O5Yq2fDVKxsUrhq8MNPsm4PerlY2Q/aY7iRt14i
         Dvig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=NMAZshRZgRqtOcF48FwBwSDWqy/EeeOlwf50Pbmu5Nk=;
        b=aGGqYkl6S+8mWcSmgG19Z8BgeiXk61U9RGl4cTl0/Avx7eGhSyCk7rATiE2UdndRV9
         u2h9TsXFJb9zbW5g5xqpiKXufrRIYjylLTqcA3u7jsMNGQoLty+Og2emkJOMCsX64F3x
         D+99sekIxzXMA1RpsiD0fh7EW+ioDXt7zc6LNCKccclI6CD0+NarZtnfaVxFNxByhSn6
         sT3Fz90zz2MujoPcw7tVOOZmAPCl5fyd1Ck/VKuLDXvyNM+lYaBVANnCSdPkjAKjwB0O
         cxj8jwz7+PCliC8WLqHefcXKPpjR1zIhnwNRsuc9Xk2tCc+mSNqU7uCuOMSL99wdz4Ns
         PGSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=j28MIPdY;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id g12si1019080iow.3.2020.06.23.18.49.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jun 2020 18:49:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id d10so336847pls.5
        for <clang-built-linux@googlegroups.com>; Tue, 23 Jun 2020 18:49:55 -0700 (PDT)
X-Received: by 2002:a17:90a:2843:: with SMTP id p3mr24514257pjf.187.1592963394576;
        Tue, 23 Jun 2020 18:49:54 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id cv3sm3283177pjb.45.2020.06.23.18.49.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jun 2020 18:49:50 -0700 (PDT)
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
Subject: [PATCH v3 8/9] arm64/build: Use common DISCARDS in linker script
Date: Tue, 23 Jun 2020 18:49:39 -0700
Message-Id: <20200624014940.1204448-9-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200624014940.1204448-1-keescook@chromium.org>
References: <20200624014940.1204448-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=j28MIPdY;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641
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

Use the common DISCARDS rule for the linker script in an effort to
regularize the linker script to prepare for warning on orphaned
sections. Additionally clean up left-over no-op macros.

Signed-off-by: Kees Cook <keescook@chromium.org>
Acked-by: Will Deacon <will@kernel.org>
---
 arch/arm64/kernel/vmlinux.lds.S | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/kernel/vmlinux.lds.S b/arch/arm64/kernel/vmlinux.lds.S
index 6827da7f3aa5..5427f502c3a6 100644
--- a/arch/arm64/kernel/vmlinux.lds.S
+++ b/arch/arm64/kernel/vmlinux.lds.S
@@ -6,6 +6,7 @@
  */
 
 #define RO_EXCEPTION_TABLE_ALIGN	8
+#define RUNTIME_DISCARD_EXIT
 
 #include <asm-generic/vmlinux.lds.h>
 #include <asm/cache.h>
@@ -89,10 +90,8 @@ SECTIONS
 	 * matching the same input section name.  There is no documented
 	 * order of matching.
 	 */
+	DISCARDS
 	/DISCARD/ : {
-		EXIT_CALL
-		*(.discard)
-		*(.discard.*)
 		*(.interp .dynamic)
 		*(.dynsym .dynstr .hash .gnu.hash)
 		*(.eh_frame)
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200624014940.1204448-9-keescook%40chromium.org.
