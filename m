Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBNWK6KEAMGQE5TYEJIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id ACAE63EFB85
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:14:15 +0200 (CEST)
Received: by mail-pl1-x63a.google.com with SMTP id s3-20020a1709029883b029012b41197000sf442719plp.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:14:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629267254; cv=pass;
        d=google.com; s=arc-20160816;
        b=IsS3hMhZriW9meAJI9l4EA05GEkuqhEaSRsN9b5MSCBIjXhaqQCTj8CO4kYSijJSW3
         Ealrmh7YCzkVKP2ExQNMUiSk10wRXGjBOfOe4l3sy9/2lpuHLkzFvj3MBc2SEkgOFPtr
         yiug21ZXmxDCTBWcCqsSY609RSELw8IXzkKsDqSIh1uAIBpTBH6gJF9cdgE/CzUKrQ8y
         GyJzMnlql4AtQfgsP9jxDcpDyQxjD1JXBwH5ZrNejQ6FbrZZsOf2DScX7dPHkujo9Rvx
         bStjluF5qX1Je1WtAHz4xMTxNF9gNn2DOnuTDrl7uWJQ62Q0O4OIJp81aHKmmoF9/5B/
         sNlA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=UckbKCeeEpOmue6K4zVJnxGy1Uu9dSViAapVgdR8WU0=;
        b=LQrslGZ+YfYl76T8R7A7yO55SxQWxWpvIvdiWKT6uOP9+mIc8q2db0xQ+XNhrUqsPP
         Bf9+CquwizxBpy90n61b1Obp5OC8EvBScBjO1ehIOtXrnqDqC/Rk8bIl1GRg1lVJRqIG
         nv/0y+32dCHx69vEepgVm0iJpro1XfIY57Ww1MuxDfzgkaJUgZmlF+F9DvHM7uNVHrtk
         45G4AQIhRlHEvzOAXidtkQCn/SRGmDcScs7gqCb9VL2ILJu5lLy2TOEul8rLV1jLy6b+
         o1Eu4p+qUnjAr6I11kOAUVDfNB2qJPStMH1coYes2EDjUZAWymfdoQlV7tQ9jaiJrebj
         xk8g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=AqV5GrGQ;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42f as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UckbKCeeEpOmue6K4zVJnxGy1Uu9dSViAapVgdR8WU0=;
        b=lc3u/+jYV3hVA8ngJdWjmlKHCEs6/KieNb/9HLABuwZzq3mDYXuu4bYM/4XQYCrK9/
         nERIW6vgsLP8POKqIqmLyKQWoRUp+a6xx1nXsSsU4ASxRW4W52LSMVuyGaeRzDKiXo1T
         S7g0aVzNjDH80mj6Mqwvzl0MVn2PEAjkq7bm710o0KUU7vPMRMNkrDPfNXFFtCkROgcW
         WaYedKtSeJOPOXTgH6WAAQIsngTmXkyIFn8sis7tC7NAPWg9MMsW6H6X8LpNzQ4THtAd
         PoL2kbTP+vHKBg47/yMrwe+Gr4kgAi9K2TM1gEaeoq31wrjhL1ZlmtebPVC5CQRYSrC/
         QGCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UckbKCeeEpOmue6K4zVJnxGy1Uu9dSViAapVgdR8WU0=;
        b=uSLYX6uvzZtFZLVvBByQSdryTetqUeoU/CnDVR+IQiO06e8wjmw10jQtNEVWpm9d8g
         dGE4yidxNQvL0aG+sQA5Kkw551lz/ZInUFW87barVB1pdofHisTOXO3sOIkIkVdm0XUG
         xPzevA2+/h9wLGAftOWqGO9V75Axt9kjDyl3OmTqdhyqnt2Wa3xuSzUhYaQN+bIh6nuj
         5HbYfePyphoaxXWutAnIM0iX/Q1h9hlsJkVpoJV6mKC4gTdbwum1/++SNp2vyuLPPEhu
         Tgo2XljvlttfpTxFBY1JIzTyHeWQ2TEq6Xa8qW7WaC8DHMs0VDuPJvWW5hON2t0Yv+AT
         9P6g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Aw3TXGR+uOFbITXwTENtm18ibwOeVmOq4kfdhJ8Nx0XXLFBJ8
	O5IpItnoEmgvBKSXPtPl3Jo=
X-Google-Smtp-Source: ABdhPJz7RB2IEGnx9VzFpRgkqqZ1xXA/e7gswImIFXKmt67t90QrfTDfw/xxGDM0CDKn+HYl4vyiLg==
X-Received: by 2002:a17:902:d343:b029:12d:3624:d997 with SMTP id l3-20020a170902d343b029012d3624d997mr6067120plk.79.1629267254409;
        Tue, 17 Aug 2021 23:14:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:d2c9:: with SMTP id n9ls678175plc.0.gmail; Tue, 17
 Aug 2021 23:14:13 -0700 (PDT)
X-Received: by 2002:a17:90a:db44:: with SMTP id u4mr7688097pjx.180.1629267253776;
        Tue, 17 Aug 2021 23:14:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629267253; cv=none;
        d=google.com; s=arc-20160816;
        b=yI7TUc9ZpR8NteDz6bsS/kMVGQfeZHCnYW/IkmMyrvmFoM3vrex9LoatAOKUI9ghsG
         FKYAlTK4NP9EAltQaTWWsITv7avopiMOmCcpMzCfUjPrHbSshoxy2u2b2na7CWcYHnVK
         PfiUkx5ZvOZYrfCVGgIk55Z7TWjfkEjo/DU5dS1LsUIDmTYwk6gqBAky3Lp2ARwaG+F7
         F/+44fmHXRZwGymVqgxhshfp5lzw1zP0hJIt0rAL/b5ueMs/x9WPempvMujXRMbExPhR
         IS++Tr20qDGUWtAmcZiZMnE2vCJt/KdQwlf8diXXgRHAM+10zgPjDS7eABjuzvNMtPgh
         r/1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=YsZhptKgT8RdO2UT2M60Q/NccyUdJGsE7yDhN1K90D8=;
        b=zHdFaFbDyD7aixVIs7gG2jMraLdEtuvrSOgI/0EtPijqQ/A3zZkDR1Kpp2H9/F2WAH
         /kXrxbgbAdj2/oReo5CpzWGmQRCaJouTpcM1lIJNzWDmnpFf8KWnpEXXuTujayEJ3MeH
         95ikhZfFHGD8aygAdOa6UikPaTuSIpEAd4Z9HnuLzyB/oP7d21x632fmubM5LUvgAEUR
         QjVSDfhrJmJdhzjFw3AwXTTjoVLanUYItajcr/vJPUJ5NeNjkD85/qQtzO6dU8XYjicL
         XXvwCX1MU4AUjmWE2w86BWj/k0CuWc52Uzg9qnrqmcpWR/KwmVbWoi1DKkl6RwZ5vamX
         vtkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=AqV5GrGQ;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42f as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com. [2607:f8b0:4864:20::42f])
        by gmr-mx.google.com with ESMTPS id j12si336350pgk.2.2021.08.17.23.14.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 23:14:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42f as permitted sender) client-ip=2607:f8b0:4864:20::42f;
Received: by mail-pf1-x42f.google.com with SMTP id 7so1077358pfl.10
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 23:14:13 -0700 (PDT)
X-Received: by 2002:a63:2242:: with SMTP id t2mr7083803pgm.111.1629267253551;
        Tue, 17 Aug 2021 23:14:13 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id u20sm5380627pgm.4.2021.08.17.23.14.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:14:12 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Paolo Bonzini <pbonzini@redhat.com>,
	Sean Christopherson <seanjc@google.com>,
	Vitaly Kuznetsov <vkuznets@redhat.com>,
	Wanpeng Li <wanpengli@tencent.com>,
	Jim Mattson <jmattson@google.com>,
	Joerg Roedel <joro@8bytes.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	x86@kernel.org,
	"H. Peter Anvin" <hpa@zytor.com>,
	kvm@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-hardening@vger.kernel.org
Subject: [PATCH v2 53/63] KVM: x86: Use struct_group() to zero decode cache
Date: Tue, 17 Aug 2021 23:05:23 -0700
Message-Id: <20210818060533.3569517-54-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818060533.3569517-1-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2338; h=from:subject; bh=Ox8odXNGawRcDoEtGWzS1ckYpMUjtDsTTZYtgzhZK3w=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHKMqj0+1jVnOnluvpSmjVC4NV24/mrWjdCYNGFB9 jwBTeKuJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyjKgAKCRCJcvTf3G3AJvAxD/ 9iMuZIH7PHSmcbrF42uGoRIdS+nUfoKIZhbDR6xmtYDi0vxGbsdnyFZjSwy/XynEIH0Vdlrjpr81jC i9bK6rBJ6rF+TFv4HczlsySW3y3N1xIFaafTX6oJZJQC4gwj1WFe3QmoGDtyXKzIY3V9LTS+crmZ19 PKzynOfjnFyeQ88B1mbEeWil4T6EpIx+uc0Ly+QDT6NMxAjAahBFGnwpD01G5vsMAaUmvcocZEMyl7 7YIHmOz/j/dYDz4RvvjZx/Tcs75qRmaGJF5mD4G1uKSyBTSMrXFMz+xPji8ym/CQJOmxlJncwK1ZeJ 0q5RhAcBUU40d3SC6gNEwZxhqKp/+y9g5sTKSmizT6qqLhtju9XaLkFreo8BocUmC87/U8XumMROux H7hTx08E0OLINGfNct+Ilqcl/d8BtuufZvpRurcgDGLCiLVLOmp2EUpSW3/7zdBVa5/XtPcJMzTFjA lNxvtKUV7fsVvqiI/nL2V5pRPIqiN0Z49mX6zaB2ugX7c6zSuVN8n/lv7Vp7R7Z9ej1ZhByTkOtJJP THc7Uk079v0yMLps1P5flkXnDnRV6bEq0RtAKVLAUn5d/wqA8wB7KtIGzZ6iai9BxNsS1Z4r3pqD7h bI8Pa7iryL+NoaVDaYWVnzlhrUa4TSXPjODvqjZoZfkoykTseBzmuBsI+cpg==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=AqV5GrGQ;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42f
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

In preparation for FORTIFY_SOURCE performing compile-time and run-time
field bounds checking for memset(), avoid intentionally writing across
neighboring fields.

Add struct_group() to mark region of struct x86_emulate_ctxt that should
be initialized to zero.

Cc: Paolo Bonzini <pbonzini@redhat.com>
Cc: Sean Christopherson <seanjc@google.com>
Cc: Vitaly Kuznetsov <vkuznets@redhat.com>
Cc: Wanpeng Li <wanpengli@tencent.com>
Cc: Jim Mattson <jmattson@google.com>
Cc: Joerg Roedel <joro@8bytes.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Borislav Petkov <bp@alien8.de>
Cc: x86@kernel.org
Cc: "H. Peter Anvin" <hpa@zytor.com>
Cc: kvm@vger.kernel.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/x86/kvm/emulate.c     |  3 +--
 arch/x86/kvm/kvm_emulate.h | 19 +++++++++++--------
 2 files changed, 12 insertions(+), 10 deletions(-)

diff --git a/arch/x86/kvm/emulate.c b/arch/x86/kvm/emulate.c
index 2837110e66ed..2608a047e769 100644
--- a/arch/x86/kvm/emulate.c
+++ b/arch/x86/kvm/emulate.c
@@ -5377,8 +5377,7 @@ static int fastop(struct x86_emulate_ctxt *ctxt, fastop_t fop)
 
 void init_decode_cache(struct x86_emulate_ctxt *ctxt)
 {
-	memset(&ctxt->rip_relative, 0,
-	       (void *)&ctxt->modrm - (void *)&ctxt->rip_relative);
+	memset(&ctxt->decode_cache, 0, sizeof(ctxt->decode_cache));
 
 	ctxt->io_read.pos = 0;
 	ctxt->io_read.end = 0;
diff --git a/arch/x86/kvm/kvm_emulate.h b/arch/x86/kvm/kvm_emulate.h
index 68b420289d7e..9b8afcb8ad39 100644
--- a/arch/x86/kvm/kvm_emulate.h
+++ b/arch/x86/kvm/kvm_emulate.h
@@ -341,14 +341,17 @@ struct x86_emulate_ctxt {
 	 * the rest are initialized unconditionally in x86_decode_insn
 	 * or elsewhere
 	 */
-	bool rip_relative;
-	u8 rex_prefix;
-	u8 lock_prefix;
-	u8 rep_prefix;
-	/* bitmaps of registers in _regs[] that can be read */
-	u32 regs_valid;
-	/* bitmaps of registers in _regs[] that have been written */
-	u32 regs_dirty;
+	struct_group(decode_cache,
+		bool rip_relative;
+		u8 rex_prefix;
+		u8 lock_prefix;
+		u8 rep_prefix;
+		/* bitmaps of registers in _regs[] that can be read */
+		u32 regs_valid;
+		/* bitmaps of registers in _regs[] that have been written */
+		u32 regs_dirty;
+	);
+
 	/* modrm */
 	u8 modrm;
 	u8 modrm_mod;
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818060533.3569517-54-keescook%40chromium.org.
