Return-Path: <clang-built-linux+bncBAABB6EY337QKGQETNEL4IA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id A7B1B2EE8C7
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Jan 2021 23:34:33 +0100 (CET)
Received: by mail-qk1-x73c.google.com with SMTP id u17sf7491781qku.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Jan 2021 14:34:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610058872; cv=pass;
        d=google.com; s=arc-20160816;
        b=lNOq9PzJlXvT/0PQO6QuNRwmFU4lsOhh7nVCs1jKjPuXNKArRg8UL1a6AG8XrkCpTT
         QZc13UjLo5yHXUaysvQ40u7MTM0kdLNvQTR7oUP/7mmEOmBXFl+fEdkVNTkgwbIuYErV
         w2CL2ZU53HjEdP9sK8Nu1aO6YuFHK4yi0UR8TfFmogR3Nyz94P7bcQDkWVkQqOi757N4
         uHd2LzpTD0bnDRg04JJwtzDXysqj1383hO9rHDYulaNx3CYsvRo/XCzceH825becDv9e
         mW5ZbV71qBPrdj6LCGMg3CrOXxhhgXRJFEgbG6+Upo6zxrN6KdNqGLFyKFjr5CDi7tpg
         9Chg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=C2Js0EVOyWjqOcsLdhpQM7+j7nkYQb5IymJ9MYsIYnA=;
        b=d5KCi4a45Wiy8H4Z1Tozcsh5Jh/eFgTFywduA3GANqiofzilY8KBQD+nP8XG6eC7JB
         gMez6STy5S8Flko9dU1JWfzQWWCVoaPvY+OSThbEuujwCAgE6cfA9b+V/tSWa9kuIOS9
         3561WjYGOynciH7q6a1mDRRA+OEyQ29lg77unxGBaxbPx6JRgbwkHboJoqWsZ4Xk6Oim
         s5e4H6yObtdd+m2DlxUjLg788PDi6kxwT79LcM7Rv5vjFtlpBTl6S0y+g0NsxVKpfCKR
         v22tNyqyJXJYRG9z3AM2UfZ09LNJf3OguAQFJJ7fcxnKh0NHkXCFJvqpacVQAuC/0qdF
         W4Lg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=nMU3CXGi;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=C2Js0EVOyWjqOcsLdhpQM7+j7nkYQb5IymJ9MYsIYnA=;
        b=naIJmJJCLnGsr1YxUQo6RASt7wE5OewhdqMhGd3pmrzVYtCHGL7LFoIiF+t1MTHK8F
         oyFWuXSz/gWWH5B0cB4MuXCtSugmumwJEXjYIRp/jTWhUMm1BPQ/OMYv65nI0EvdGFYP
         tqqocDx/0grpPill+itzJpji/byckn+dSXJsW5fCz7DClAA5JapaiF44GW3pFAYC6CCs
         bmddUsDM/W2d8MOQ3maxZnyYq60JyIXGL7zgew1RF01TXrslsZSMGrzj52U8uvL2ApYH
         HSBNqSeCzcsvzH/0b+FF6RNMTqdXsEKBNAqAWEj9GRgAXwrJvmj9XhTUGBT2yibTYGZJ
         Eu2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=C2Js0EVOyWjqOcsLdhpQM7+j7nkYQb5IymJ9MYsIYnA=;
        b=ibV4oR61hXA4VmpCmYkXokjuLDIQ/mwGc3hmQXcBVCVtZUMkyye4+Q8Z2hA3DhIYfr
         bKyo8f2yxEQaBgXc8q7lDMjwkuh3PoIhDMPkntF/TG7o0W2MSQpeiF5CsEqpLLp8/Pld
         e0p5lpLzdaJF5iCIHxUpcUN8++gIEGvr7N4D+YMXI5zwMLO46092VuYX5NHnzFj9AaUu
         n/7j4uQOeaOkPRu20dbUpiaFd7Y0o+BGabyy9LvRO1AnklPDGMfcgS10jmqvEw1RnIrw
         iwCi3eIfFVnHm1Mk7ibBeNOdkAi4/2ZiiflZcQdETCLqwiZ2+90p3ehcPPtQbBZ6tv19
         zQZA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531QwOXRzC0/xqUQFwm8vVEw7lS4ZYboZBgrl+f5dGax4LjZGEXq
	w8Q9B4BMLJ+GK59GpZbDQ+c=
X-Google-Smtp-Source: ABdhPJyG54eLxt1BqHlKWDObKgZHoMxyPNyoEsRozcfKN3ZHZQ914oC0P0QxusEFjeuIYZZLUNdmGA==
X-Received: by 2002:a37:a9ca:: with SMTP id s193mr1150933qke.379.1610058872775;
        Thu, 07 Jan 2021 14:34:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:434d:: with SMTP id q13ls2071393qvs.8.gmail; Thu, 07 Jan
 2021 14:34:32 -0800 (PST)
X-Received: by 2002:a0c:fd68:: with SMTP id k8mr4139200qvs.56.1610058872405;
        Thu, 07 Jan 2021 14:34:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610058872; cv=none;
        d=google.com; s=arc-20160816;
        b=ApR164IUI7ulG5wUjweoVV3An2mQVbm1T22qEjTuRzCe964USalzsffZzjdmc3ZIOp
         QrNywr8f+idodW3l8NMxCFw4h5o9rjtvPRBWWWveIlVcftCRwm6/D9kJiDk72Tix/vmV
         Jm+a2lkQxR87AzmMkHlkGi/gIWFBKxO/jPqC4m7X1w2xCNBKg2kKVgR0MLCz0yj5Czcr
         50DUVe+AORDBkDsozkjfBXaaqy3BMfz2G4l/KekjJDPj/gF1HxChNx0JS/tDk8ZbaKeI
         Od0qRDUIf/ukqoQqSTP8X+JybnY8f2SrDcyr6T+u2k88D1l74v2BLN3QkczP2hexuIGN
         elhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=GamxpJN2/2YX+msSTFjV4FulV2IKvKAkrBOKwEcZDoI=;
        b=iumdu5e/y0LasdBQAZ4d/CdWC8ms40avFtHqrvq5mdCBCM6FzDQbJw50xy7VxSCs5O
         aS2wjSvcpDIkdI8YQEexBnLEoqCN4j6HJK2FPlYWV2bDxnhE9rVir1sXu58Job4v30Tt
         EsRi4znsMz4eIhLitY/9i0mJvSw7ZikfyREc1G4lAmKcOllr8eBfhmqSe+sO7yQkqDg/
         RdRMv1b+due5jJbmEI+vQu+V4I3GD7HkRgqdCesZrnHr60Ovk/uH8VHjH+AyD+jnxgLI
         7ZukOZrq5wSWkjmBKbahW0/RqSgru9PMeo9hHboMKiZdcEC/FdahMVNppsXOv0oDUtK1
         LVFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=nMU3CXGi;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z94si1113507qtc.0.2021.01.07.14.34.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Jan 2021 14:34:32 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id AE003233FB;
	Thu,  7 Jan 2021 22:34:28 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Ard Biesheuvel <ardb@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	x86@kernel.org,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Darren Hart <dvhart@infradead.org>,
	Andy Shevchenko <andy@infradead.org>,
	"H. Peter Anvin" <hpa@zytor.com>,
	linux-efi@vger.kernel.org,
	platform-driver-x86@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] x86: efi: avoid BUILD_BUG_ON() for non-constant p4d_index
Date: Thu,  7 Jan 2021 23:34:15 +0100
Message-Id: <20210107223424.4135538-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=nMU3CXGi;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

From: Arnd Bergmann <arnd@arndb.de>

When 5-level page tables are enabled, clang triggers a BUILD_BUG_ON():

x86_64-linux-ld: arch/x86/platform/efi/efi_64.o: in function `efi_sync_low_kernel_mappings':
efi_64.c:(.text+0x22c): undefined reference to `__compiletime_assert_354'

Use the same method as in commit c65e774fb3f6 ("x86/mm: Make PGDIR_SHIFT
and PTRS_PER_P4D variable") and change it to MAYBE_BUILD_BUG_ON(),
so it only triggers for constant input.

Link: https://github.com/ClangBuiltLinux/linux/issues/256
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/x86/platform/efi/efi_64.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/x86/platform/efi/efi_64.c b/arch/x86/platform/efi/efi_64.c
index e1e8d4e3a213..62bb1616b4a5 100644
--- a/arch/x86/platform/efi/efi_64.c
+++ b/arch/x86/platform/efi/efi_64.c
@@ -137,8 +137,8 @@ void efi_sync_low_kernel_mappings(void)
 	 * As with PGDs, we share all P4D entries apart from the one entry
 	 * that covers the EFI runtime mapping space.
 	 */
-	BUILD_BUG_ON(p4d_index(EFI_VA_END) != p4d_index(MODULES_END));
-	BUILD_BUG_ON((EFI_VA_START & P4D_MASK) != (EFI_VA_END & P4D_MASK));
+	MAYBE_BUILD_BUG_ON(p4d_index(EFI_VA_END) != p4d_index(MODULES_END));
+	MAYBE_BUILD_BUG_ON((EFI_VA_START & P4D_MASK) != (EFI_VA_END & P4D_MASK));
 
 	pgd_efi = efi_pgd + pgd_index(EFI_VA_END);
 	pgd_k = pgd_offset_k(EFI_VA_END);
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210107223424.4135538-1-arnd%40kernel.org.
