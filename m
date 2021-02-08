Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBY7XQWAQMGQEIHBOPPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C3BC313BDA
	for <lists+clang-built-linux@lfdr.de>; Mon,  8 Feb 2021 18:59:00 +0100 (CET)
Received: by mail-vk1-xa3f.google.com with SMTP id a65sf480735vke.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Feb 2021 09:59:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612807139; cv=pass;
        d=google.com; s=arc-20160816;
        b=end1DLgfHeP4vMUwcJl/JHuc9HznFq/Wl0kjlWHYSk/KNjVN6U0ccrXsW18mtnFRok
         pnjNvSs5DNTYAPogZ8/hTejOj8aQezXAdwEMyc8CupY34bacztK2JXCazxtBuZGpW6yq
         UFlrvZ7LzdsQedQeRmQSVi2g6plMwhPzypClyK5BGEKFma+UKhXetJG1NZKrm+coUktq
         yQk5KaGHaLokD474Rb0f96045UAQoKY29ziNtv7eZqitPr3YoYjncmwlnZ77raI7Jfsa
         d1ARwqNonb6FgDOoprtr6h+YbZ2xI5quROxNMq95BHW5pW30ZArgXHPRZzj2meiHQhwt
         XOvQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=382RX6j+gZgO/RwxBr2+oSJJ0l02x11qXfpF9A8jcUY=;
        b=EFfppb5Be6tgQNADwg8D/tyiRR/K5QDfGb38DC6zqZlT5VO8Ybpgn3h2gOy3wj2a9/
         zd2TCa3kHOXp0jzeE6BijE4X1KBY3wDJiELKbpqf9SIYjSISJ0fBgo5BRZqMcZ20Vvcb
         HaPBDloy3OmmSMAGzhLJNUop1VsayKtf9LRYtUZWsUw9MCZzftOA35yvoYlYvAWGWjRr
         Sd/H7EWs+CKBCAnI9ZQzP2q+0fd9hH2XUUhN/FWskWU1KZ3NRI2IjXVVC3Wei8b1m9pv
         G7KGlVRuTH7qSYFdpCcd80hOkhkXMzLE8lQum5d5EVzexdMAmwKnx1WccRaneFmb5LwI
         JrWw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=XabMr1Qw;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=382RX6j+gZgO/RwxBr2+oSJJ0l02x11qXfpF9A8jcUY=;
        b=rdxw9BeRDTtrijcIFvB1QV2Gj3u3KGyEfCD8qJEHUTfVLWG319F2jUMoQvlLndmE1m
         tkWv46nCxVuxVNV/jtUVmQu/xSV8YBi8TBe4UQKfVVU+IkXCTU0S4X5XpuMswWZ8v2qO
         nKU0K7Jg2FGV3dcF7jl8NuEM4iooJ3p255tZiSnEkQwVJXebeWjvSXdp/1aPdTMsIzFG
         DWSXtt/6Fk4i5x0SpL5ZAFyZBIdZdqo6rVX3d8D8eXZeYbGBkLKNTVTmgf/qh0YoKgUP
         /H31eF11wv7gpMiVdmKuVsfbfOL+om2Cnc/mX8z08OI+dnG9Wc0LWvy/cGNKW23gACTu
         oj6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=382RX6j+gZgO/RwxBr2+oSJJ0l02x11qXfpF9A8jcUY=;
        b=rILBI3avuAlUg1REpJo32Zl1blRhpI6IdbpQsR/jjVM1HnLYSylq00u0WMYCs6QlHY
         guqWJEiAlnGiS70CFBgUImKXRpmv0+3zUMyaQy9TMr/dSvwOedZE7MTk5LH1fknXf4Pf
         VY8C4/6iOXwvKLsGxH9sRpxvKj5jPcTAfl5TJCcdHxCSRjkDkzxDZCpntjgT3ywmSSgB
         0DLKkORk890F2s9RKWMKhNMrf+mdy/fYOFl/9wTChVcRC6q1Fm1Ov0sf2H4fBMYPVbD1
         XzyxWIemcnLM94RQfIQ19zj4atFCwgWvgiQTxE+nzQcn5ogcK+cHr2Y/3W/PQrtEgRKl
         n9Gg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532fAs51OhR1ZbBZZzaEr4WcVCDfTeMGmbhTb/bP0v4reDrjjNGm
	ettZI5sGVqk+L+zJ4vN+4fU=
X-Google-Smtp-Source: ABdhPJxCPyRzus5U5wUz7qE3n2E2kdY1tW2gi0Rn7JQB+6PMLDEvQNUqvywo77v549wJPG+9cJvEOQ==
X-Received: by 2002:ab0:5fd0:: with SMTP id g16mr10913661uaj.92.1612807139157;
        Mon, 08 Feb 2021 09:58:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:c0c:: with SMTP id a12ls1375038uak.0.gmail; Mon, 08 Feb
 2021 09:58:58 -0800 (PST)
X-Received: by 2002:ab0:3a87:: with SMTP id r7mr2453685uaw.37.1612807138628;
        Mon, 08 Feb 2021 09:58:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612807138; cv=none;
        d=google.com; s=arc-20160816;
        b=HMPAYy0nIru9+5+Modq0xIM3YXWArLaoeaUqGpNkxRJz3jpFBtl0FulNje2Zre85EV
         0ylcoixr9EPEzso4WUwNnMfgMw/eYMJDHkcYztGby6vN5KVQchEA2rPIfcOMIgAT4INp
         n0BqO5C9o3XBOrI43Vx1SXeZ/2+/uExYRfHb9Uy9vTZA7DNseFJynnMao1UBHUD7asBO
         n7bG6EJlFQFkC2/eA8lBDTR4UtEDqVd3vqRUPNM7+XyBg7YbmeSFJ2uZYYRz8WMY8dyL
         0HoVQbMKQ/uaZyo/+4X8kES9MCRSKPM3RsrhvCAq6fp/n7sjXKCeKMXq849bRgG0UVa4
         gDJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=dVB/fBMrYHMcF59buCHcH/EMK/nqkYZ16Y9xBu+5rXE=;
        b=de2f2QaHwYbOTFQsjZ1tQhHEQ0SjGEBFffj06pKwNfaIm7B5k4nUzMmcIXWuhgF52s
         lwsl+xJ9kBdjC3gBib400A3/+gUcHYtdPR4SC8grPWhwYvd6/AhItVxHjGCSr5ECCoGC
         86jWIAMmIsTBxvlMIxKHCQLrm4B0HBONOBzlV+QSa3sFtP36DSd9N5OdzUD6oAjY5qv2
         dm8f1HGLHz4QWWPdHD3VMT9XvVeJ0al5tnFBBEC49QdDYbd2lPO4aiEVTZqyon/TyyEk
         Ngs8yLC0N+tSclX6iHtpm7IYqVvudHX5yopPNoKPJqDCdXr+zJNGM8j6Lsyiocf4isfV
         iNKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=XabMr1Qw;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j25si1097939vsq.2.2021.02.08.09.58.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Feb 2021 09:58:58 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3983864ECB;
	Mon,  8 Feb 2021 17:58:56 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Borislav Petkov <bp@suse.de>,
	Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <nathan@kernel.org>,
	Ard Biesheuvel <ardb@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-efi@vger.kernel.org,
	platform-driver-x86@vger.kernel.org,
	x86@kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.10 36/36] x86/efi: Remove EFI PGD build time checks
Date: Mon,  8 Feb 2021 12:58:06 -0500
Message-Id: <20210208175806.2091668-36-sashal@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210208175806.2091668-1-sashal@kernel.org>
References: <20210208175806.2091668-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=XabMr1Qw;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Borislav Petkov <bp@suse.de>

[ Upstream commit 816ef8d7a2c4182e19bc06ab65751cb9e3951e94 ]

With CONFIG_X86_5LEVEL, CONFIG_UBSAN and CONFIG_UBSAN_UNSIGNED_OVERFLOW
enabled, clang fails the build with

  x86_64-linux-ld: arch/x86/platform/efi/efi_64.o: in function `efi_sync_low_kernel_mappings':
  efi_64.c:(.text+0x22c): undefined reference to `__compiletime_assert_354'

which happens due to -fsanitize=unsigned-integer-overflow being enabled:

  -fsanitize=unsigned-integer-overflow: Unsigned integer overflow, where
  the result of an unsigned integer computation cannot be represented
  in its type. Unlike signed integer overflow, this is not undefined
  behavior, but it is often unintentional. This sanitizer does not check
  for lossy implicit conversions performed before such a computation
  (see -fsanitize=implicit-conversion).

and that fires when the (intentional) EFI_VA_START/END defines overflow
an unsigned long, leading to the assertion expressions not getting
optimized away (on GCC they do)...

However, those checks are superfluous: the runtime services mapping
code already makes sure the ranges don't overshoot EFI_VA_END as the
EFI mapping range is hardcoded. On each runtime services call, it is
switched to the EFI-specific PGD and even if mappings manage to escape
that last PGD, this won't remain unnoticed for long.

So rip them out.

See https://github.com/ClangBuiltLinux/linux/issues/256 for more info.

Reported-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Borislav Petkov <bp@suse.de>
Reviewed-by: Nathan Chancellor <nathan@kernel.org>
Acked-by: Ard Biesheuvel <ardb@kernel.org>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nathan Chancellor <nathan@kernel.org>
Link: http://lkml.kernel.org/r/20210107223424.4135538-1-arnd@kernel.org
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/x86/platform/efi/efi_64.c | 19 -------------------
 1 file changed, 19 deletions(-)

diff --git a/arch/x86/platform/efi/efi_64.c b/arch/x86/platform/efi/efi_64.c
index e1e8d4e3a2139..8efd003540cae 100644
--- a/arch/x86/platform/efi/efi_64.c
+++ b/arch/x86/platform/efi/efi_64.c
@@ -115,31 +115,12 @@ void efi_sync_low_kernel_mappings(void)
 	pud_t *pud_k, *pud_efi;
 	pgd_t *efi_pgd = efi_mm.pgd;
 
-	/*
-	 * We can share all PGD entries apart from the one entry that
-	 * covers the EFI runtime mapping space.
-	 *
-	 * Make sure the EFI runtime region mappings are guaranteed to
-	 * only span a single PGD entry and that the entry also maps
-	 * other important kernel regions.
-	 */
-	MAYBE_BUILD_BUG_ON(pgd_index(EFI_VA_END) != pgd_index(MODULES_END));
-	MAYBE_BUILD_BUG_ON((EFI_VA_START & PGDIR_MASK) !=
-			(EFI_VA_END & PGDIR_MASK));
-
 	pgd_efi = efi_pgd + pgd_index(PAGE_OFFSET);
 	pgd_k = pgd_offset_k(PAGE_OFFSET);
 
 	num_entries = pgd_index(EFI_VA_END) - pgd_index(PAGE_OFFSET);
 	memcpy(pgd_efi, pgd_k, sizeof(pgd_t) * num_entries);
 
-	/*
-	 * As with PGDs, we share all P4D entries apart from the one entry
-	 * that covers the EFI runtime mapping space.
-	 */
-	BUILD_BUG_ON(p4d_index(EFI_VA_END) != p4d_index(MODULES_END));
-	BUILD_BUG_ON((EFI_VA_START & P4D_MASK) != (EFI_VA_END & P4D_MASK));
-
 	pgd_efi = efi_pgd + pgd_index(EFI_VA_END);
 	pgd_k = pgd_offset_k(EFI_VA_END);
 	p4d_efi = p4d_offset(pgd_efi, 0);
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210208175806.2091668-36-sashal%40kernel.org.
