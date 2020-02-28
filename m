Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBXV24HZAKGQEBQHZ76I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 093E3172D09
	for <lists+clang-built-linux@lfdr.de>; Fri, 28 Feb 2020 01:22:56 +0100 (CET)
Received: by mail-pg1-x539.google.com with SMTP id h2sf636448pgr.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Feb 2020 16:22:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582849374; cv=pass;
        d=google.com; s=arc-20160816;
        b=NuRllbsZKBtFcxjVWhPiEmO7lWM3AOBRGVIDxYfGgS+jiJAb9y+2mKzKqpUi9PWuYn
         BCdoG3hMj6d69wR3UQYuV0RUPyL2eOK++2LMhTIQf4vGU2N7UIJRai1bkRKqjHQHT5VZ
         W0j/bUydy9fo7FMdC9/Vx/SgNEIGqs5MGsJdiaRbfBY9yYjVrjBywS/5ZywORKlECRHS
         rVDR/ktXGuSFnhO4Zo7Kc3w6NpMVhbc6oCXJHGxANl8dnaachFzOTeODn23mWkGNuY+i
         q4mYm7he4DykXnLNa2LoYlZoblSDAf+AtFINKfgnVPl2R024vZXv436E20BLB9PrpnKT
         aWgA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=VqLhMrJGM5gvUoNBeOLD1jPhGwsOeNl1Y0j6aq3bm1c=;
        b=aiQ0cgs4u4ry3/C+h+kpgK8sv161gCFFrcCYcangcHF1+QtXk+Bj8lF4XxUsfGSVHD
         BWasL2Xqf/oC6SDEZs3AS9g/yqFc2ldEQAK9IyVPADgQ9evGBgSs0rHO+x+GwQNL91NU
         4zRRgQaziUufE2QT8pOiNYU7Hd1dX0oeX9lV7X/Nt3SLHrAzrbJ1OObBkRqhKLoIVwww
         lVU9LOYbGs0ONe0ZVNNao+vXWEjGzz5QUAKlwrvsxJ74U3MuVUigNvoOLcTNGAtDHCHz
         XTBVbZtptzRPyreeMTAsg39X3s0U80Kfn4wsM655CFOrFpjdz5lFKaJTyPr/f+Crr8Uy
         Xq1A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=V36B51rI;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VqLhMrJGM5gvUoNBeOLD1jPhGwsOeNl1Y0j6aq3bm1c=;
        b=PVLKZODzJh8OIfDB4lU390Xd5WQYBnyguRiJJN/9NZkgR8xslhkwowgUk98nl4GyYb
         j9rOUDYyxywKK3umLSqqfytT8c5YB2LTVTlf6ltIhhv/K5R4pUk0EOdLO2CI2iTZzFQ0
         VgzWK4x1DAlKieVQHl2/YSRFEJowMtbh/IrmBiEqOqnuH2h6OgIxVVhLtNWV42Xh9GoQ
         nJr879Z/SMn24UPZc8DHnFh7mbBlZB2tqWvodxDKdegXI7367ffU+nKjOwG2oAwfNphA
         1oXRbbceGYNWAoONHvtnAX1fpB3FbUDNtDAt4hZyVSRXpR5WkvJ8hkgkAb7HSJyLnQfS
         TPMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VqLhMrJGM5gvUoNBeOLD1jPhGwsOeNl1Y0j6aq3bm1c=;
        b=JYIhiiBDNj3WGe1ElT6ClNEkaFPH6PsUP2fk0aCpYgd8oWd1XYJwAb08sTtX0L2fuR
         TM79sLBjjd3RUCl6vXNozz84viiCun+DaKScuSvxxlPm19im9/22aDokb5O8p9b+e5ZS
         8ERQQWvUdNJEoocDTQMjL9FrQqX/7qh/oYMWvKCkkWBfb8Ux0KBbay/kDsd0hImPnN3/
         r5ymZnS506EzOSPgotJ/YPcNDuW7uo6Gj09HxXjwYh5y9CV8Mc+G1l14W3ip6etKCCER
         rWhtYKZM+CHZ0oqlwzvVVhmaaqJsGxflvu/jn0ZnBLZtfiuPesBxVw8JvJ1KeT1FTRV2
         cB/g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVPqeiKJyeXz05vLZNBg5u/qAqO5YqOARL3V6ZBR4Ty/uQUlS8q
	hktxCh0JhxTGcqPtAU/vr3E=
X-Google-Smtp-Source: APXvYqwGqSmmaTAGr8Q5/ZC8xcoJAZVFY0cg7hCk4H+VVlQuBNFtyzCRcBOLa7cxdP7RMxYNKH44nQ==
X-Received: by 2002:a62:7681:: with SMTP id r123mr1626470pfc.169.1582849374589;
        Thu, 27 Feb 2020 16:22:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:7744:: with SMTP id s65ls343679pgc.3.gmail; Thu, 27 Feb
 2020 16:22:54 -0800 (PST)
X-Received: by 2002:a63:c304:: with SMTP id c4mr1927832pgd.85.1582849374193;
        Thu, 27 Feb 2020 16:22:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582849374; cv=none;
        d=google.com; s=arc-20160816;
        b=pOz5uXXIuIo68FpmUKHyBLzvgHsBJA2WMQJsN/vsJalqNKv7LNrMF+4bOqGIZFbwOQ
         s9w3NApGz6SB45mSd6QcN6KJmPRbCBuvJX101LDP7bBb0x2viatEbA5ZGCyt67rFoThn
         riUI63L5HzFY5fwEot5+3yT9x76mssZk+Sp0ddQ5ailBEZnz0euzYKfHg0kks7Dw1IHG
         3aTL2r/uwhkrv+NhPD56EGc6k6FklgJp0idbDCILYlIHxsdx17Df90WR+/N4TgsQB18o
         9N/3s3hzFVxoAJiGaR+vaCsrNe49LsGMYv9djsEMDBlz8LUTd/6Cevuo25GNArYbSHlv
         Dmog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=njo/Fx4CsF+NQ0G1u7AY1RWSg6ZNLRJXLnHS1KzoDiw=;
        b=VWWlerJ2dLPFMckIe73YIruejxFLZmaR5hM0s1r89LmnALcTjc36u2IkiPlBkgKIof
         aZtmLxZneSGLwSXZ3R23NnY8vXfIOrKEcIhR6KQ/+XZ3j2myAMn8mDxVvqHq15RItsly
         puLjNYFq8RwNlpL7lOSPjzm6HhqIjzyD8c3lmu5AjIvSiXLC+kWbfmtxfFIDX598tYeR
         spboeQbO7uuCzWiQmXd0IceAkoLKWGxcko7QJsdCNFe11GRtKB+bWIHr63RruMx192dT
         Nlf2Rh2zr5BDwToxlcNGiJ2+8HyVpi1yQa9Kp83g+H7snD4pHRbWTeLg1DmrYJNxtDuw
         0lwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=V36B51rI;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id o9si75678pfp.0.2020.02.27.16.22.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Feb 2020 16:22:54 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id 15so721682pfo.9
        for <clang-built-linux@googlegroups.com>; Thu, 27 Feb 2020 16:22:54 -0800 (PST)
X-Received: by 2002:a63:f403:: with SMTP id g3mr1948825pgi.62.1582849373921;
        Thu, 27 Feb 2020 16:22:53 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id g14sm4184582pfo.154.2020.02.27.16.22.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Feb 2020 16:22:52 -0800 (PST)
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@suse.de>
Cc: Kees Cook <keescook@chromium.org>,
	"H.J. Lu" <hjl.tools@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Masahiro Yamada <masahiroy@kernel.org>,
	x86@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-arch@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: [PATCH 6/9] arm64/build: Use common DISCARDS in linker script
Date: Thu, 27 Feb 2020 16:22:41 -0800
Message-Id: <20200228002244.15240-7-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200228002244.15240-1-keescook@chromium.org>
References: <20200228002244.15240-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=V36B51rI;       spf=pass
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

Use the common DISCARDS rule for the linker script in an effort to
regularize the linker script to prepare for warning on orphaned
sections.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/kernel/vmlinux.lds.S | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/kernel/vmlinux.lds.S b/arch/arm64/kernel/vmlinux.lds.S
index 497f9675071d..c61d9ab3211c 100644
--- a/arch/arm64/kernel/vmlinux.lds.S
+++ b/arch/arm64/kernel/vmlinux.lds.S
@@ -6,6 +6,7 @@
  */
 
 #define RO_EXCEPTION_TABLE_ALIGN	8
+#define RUNTIME_DISCARD_EXIT
 
 #include <asm-generic/vmlinux.lds.h>
 #include <asm/cache.h>
@@ -19,7 +20,6 @@
 
 /* .exit.text needed in case of alternative patching */
 #define ARM_EXIT_KEEP(x)	x
-#define ARM_EXIT_DISCARD(x)
 
 OUTPUT_ARCH(aarch64)
 ENTRY(_text)
@@ -94,12 +94,8 @@ SECTIONS
 	 * matching the same input section name.  There is no documented
 	 * order of matching.
 	 */
+	DISCARDS
 	/DISCARD/ : {
-		ARM_EXIT_DISCARD(EXIT_TEXT)
-		ARM_EXIT_DISCARD(EXIT_DATA)
-		EXIT_CALL
-		*(.discard)
-		*(.discard.*)
 		*(.interp .dynamic)
 		*(.dynsym .dynstr .hash .gnu.hash)
 		*(.eh_frame)
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200228002244.15240-7-keescook%40chromium.org.
