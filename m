Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBXOMQD5AKGQEXW65ASA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id E508124E136
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 21:54:06 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id z16sf1553939pgh.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 12:54:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598039645; cv=pass;
        d=google.com; s=arc-20160816;
        b=Lm+pK6XZXxCLNZK5yxnGUETq7Fcs4opqDZfdLLlEmjVwzFmIhPEcQatfP6OmZmmWW3
         wPFenylVQgwDbdoeN6dlzvJZl3qkOhNpkaFz6wvkUTHn5tL+lySsfS+/oN6wwEYO9OO8
         2I0VmvwMJJXZLWFg3fWHfHxPwUOD5IxXqKok6gmvQl4IDh5L2nXrOz2OZvZaz+LxK6Df
         pLsLxYwhEZ+daKe6+FA5m2nLDxM4lNokhE6RVfWvukHRjnit2DKCTs6ZQ7drKXS8Futi
         dIY8sfYaThL+ppXkos9zQdFPZfdEilb43iSR9YVwniofnEEVWRPCzeAmQhPjsMIAhHhb
         2yxQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ttlWf59UnatQhW30QFA3p2RZQo6cu8AnVqr4ZlNT1TY=;
        b=SMNVYVX3NyyOne49C4KxXGWJKHvHfxJd52t0ATpxsqaq+TcGpy3SqKherenNmCHf6n
         Df0wOR7SZQQ3BTGLVPZhx90k7jGhu//3MmL+kfRlYy+nrJbwqoYTGjWSvkfvnAU0FrCZ
         hN793ZZQPJlQGFSDHu2mUCX1F4IOwM7vFezPOISdY02H4sYM7JEySkoaTq9YGnfXg8fK
         PECLdnb4tF2MIgl7vcK+dB9CiWVFLgu2nrDCyy6q2O5YYD8yyZCjx8u6Ne4uJ6tf7k2f
         /0WD8xOHKjPwHK9cbMh1ZF8PS+JOFHuUeIM7NQtKRsvlS0tctiothxyNoS38NwJM0Win
         KwWg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="Sh9vRY/S";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ttlWf59UnatQhW30QFA3p2RZQo6cu8AnVqr4ZlNT1TY=;
        b=Gd0+qsb7zKOKEmqdk2ERF8IdUCOPmZU5SPkU1wypuTNvKLhkTCYVScfzENBCSZmvsR
         RQ512sM+88ZUB6mXpSYF38KX8No15RpCM+yY+rPgoaQ8fMQuCTOaRcW10E3jwKEQecds
         kz4IK4bRYnhrXDpJYKUBa/S4gaAasU6QMN5yia+8s/jyoe3UW/fie1d5UG/SkrkmkqcX
         eoK77zwxSfJCgO7lB3izVu338xW9q3124BDFKq83VJLrIWhHfMpL+4Nk6u9ltK8v9+uz
         XjF6Z+ndzIvFjp8Kwd7uIqE4jvP+yUtJNc/vDwJXhMZhj4hXbaKjhFhSyGoyTtpzty0p
         2hJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ttlWf59UnatQhW30QFA3p2RZQo6cu8AnVqr4ZlNT1TY=;
        b=aLfNQyW+4FVMTvpBi1ePgc+pX/wXNd26zND7kS6tORSiCRibCgoxah44XQmSEvxMRq
         R3S9i+V0LNhl0lN+YwsPzQofW8Z3L+sFcUWaMS+fGXWtdYRbKEhgKoYL45TFTWEXuioS
         GzkwH0WnhFdC5CcDMTok9hASWBszIqCETW7Qr0x8qTXhZ0yRmr/s8DUzqx7t4Qu69gCr
         4wQvX2h6QR5N3ivpU8Zq2yUMDpBPfpsWH3Yv4cwrqqk1FFVQGHpnxitVzuxJpB4Dk3e1
         vP7KrxsZIz9+9ZgYJLt6EscDoQkXJZKiu0oMMDV2Z/gXYjzj6xI+VOh/nV5kP0qpyywO
         LkIA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533t1Oqbm+Njy4LpQgfefohDbiXfBzoaf8W3QcN3Cx8jvre4us+m
	qRT8l2yYVcQTFWgJD6zH1Ds=
X-Google-Smtp-Source: ABdhPJzNa5xzu/ZvvlrQeHrcGWl8n/WhdcUlArHLeItHj7mwHZugu+un28yboKEY4Mgq+kg8BOTMog==
X-Received: by 2002:a17:90a:e60d:: with SMTP id j13mr3851469pjy.216.1598039645606;
        Fri, 21 Aug 2020 12:54:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:d303:: with SMTP id b3ls1512483plc.2.gmail; Fri, 21
 Aug 2020 12:54:05 -0700 (PDT)
X-Received: by 2002:a17:90a:1d0f:: with SMTP id c15mr3854392pjd.180.1598039645075;
        Fri, 21 Aug 2020 12:54:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598039645; cv=none;
        d=google.com; s=arc-20160816;
        b=N5KkjVNz+sgn26P+6XHFcXUbTQSXx3CxqoTCzzPB4V8dqBNzG20/cE3P5gkVGRrFuf
         bSH2b+odHzxundZ7UQPy431CGY+UmF7AQXJzcLJSeyaIJ6g/u2dk4PISuLt0Wm74URcz
         Bj+4icOy55d74nzM1ZgGjqM0U12fwu/DWFPHiuYKWwc0lGf+6PuoBbPr+r7W0Pprv78S
         K7fpf5rLmZMGQ66HIC+8wWk41w3y+6pVjk9rEuv/wExqdYZ7IaT/8WV3BxLShvHCn/Ve
         ciE73isyuKMgNwdRVEoni0tdYVg2cm0fodBS7ZNvc6IIqdwGraBeI1+f187GpzFb9AxH
         EshQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=0UnndhLoIUPQilO6J2hBojAKmFC4OCA3zcUIp6ZOMro=;
        b=WmHl0vz1QTSggcS7vbZZT0T/49Vd0L50bClXiyiruNt1GvKnKb8E9dF/o5xVZ15Osa
         lrQnih2gzMucUP7vJtCrAewb9z9X0g5nzJ95v9lYS9UhVOyni6qRSTu5nO0eKM6X2zBd
         JLpUxow5JV7W/2ERi7puBIdIHTYRD9HSDv2z7Q04QvwsTEvwnKGwfDHcFF1qL6rdQrFZ
         FmyFrRF7tf1osLL8zHrJGebVznLzZFawjozYojlJjTYfGLtCY8HESaRtbbwz1Lq9TthE
         arXm4TwxSak3fl/wUC8FoP965/xQA4A6nf98okXF1PyN1veQTae7xyxLDcEd+EuQe9Vx
         QSCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="Sh9vRY/S";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id y9si164626pgv.0.2020.08.21.12.54.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Aug 2020 12:54:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id bh1so1340480plb.12
        for <clang-built-linux@googlegroups.com>; Fri, 21 Aug 2020 12:54:05 -0700 (PDT)
X-Received: by 2002:a17:90a:6787:: with SMTP id o7mr3611282pjj.76.1598039644813;
        Fri, 21 Aug 2020 12:54:04 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id e2sm3424685pfm.37.2020.08.21.12.54.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Aug 2020 12:54:02 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Ingo Molnar <mingo@kernel.org>
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
Subject: [PATCH v6 26/29] x86/boot/compressed: Reorganize zero-size section asserts
Date: Fri, 21 Aug 2020 12:43:07 -0700
Message-Id: <20200821194310.3089815-27-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200821194310.3089815-1-keescook@chromium.org>
References: <20200821194310.3089815-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="Sh9vRY/S";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644
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

For readability, move the zero-sized sections to the end after DISCARDS.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/x86/boot/compressed/vmlinux.lds.S | 44 +++++++++++++++-----------
 1 file changed, 26 insertions(+), 18 deletions(-)

diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
index 3c2ee9a5bf43..ca544a16724b 100644
--- a/arch/x86/boot/compressed/vmlinux.lds.S
+++ b/arch/x86/boot/compressed/vmlinux.lds.S
@@ -42,19 +42,6 @@ SECTIONS
 		*(.rodata.*)
 		_erodata = . ;
 	}
-	.rel.dyn : {
-		*(.rel.*)
-	}
-	.rela.dyn : {
-		*(.rela.*)
-	}
-	.got : {
-		*(.got)
-	}
-	.got.plt : {
-		*(.got.plt)
-	}
-
 	.data :	{
 		_data = . ;
 		*(.data)
@@ -85,13 +72,34 @@ SECTIONS
 	ELF_DETAILS
 
 	DISCARDS
-}
 
-ASSERT(SIZEOF(.got) == 0, "Unexpected GOT entries detected!")
+	.got.plt (INFO) : {
+		*(.got.plt)
+	}
+	ASSERT(SIZEOF(.got.plt) == 0 ||
 #ifdef CONFIG_X86_64
-ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0x18, "Unexpected GOT/PLT entries detected!")
+	       SIZEOF(.got.plt) == 0x18,
 #else
-ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0xc, "Unexpected GOT/PLT entries detected!")
+	       SIZEOF(.got.plt) == 0xc,
 #endif
+	       "Unexpected GOT/PLT entries detected!")
+
+	/*
+	 * Sections that should stay zero sized, which is safer to
+	 * explicitly check instead of blindly discarding.
+	 */
+	.got : {
+		*(.got)
+	}
+	ASSERT(SIZEOF(.got) == 0, "Unexpected GOT entries detected!")
+
+	.rel.dyn : {
+		*(.rel.*)
+	}
+	ASSERT(SIZEOF(.rel.dyn) == 0, "Unexpected run-time relocations (.rel) detected!")
 
-ASSERT(SIZEOF(.rel.dyn) == 0 && SIZEOF(.rela.dyn) == 0, "Unexpected run-time relocations detected!")
+	.rela.dyn : {
+		*(.rela.*)
+	}
+	ASSERT(SIZEOF(.rela.dyn) == 0, "Unexpected run-time relocations (.rela) detected!")
+}
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200821194310.3089815-27-keescook%40chromium.org.
