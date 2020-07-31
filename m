Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB7WISL4QKGQEQSOYPHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AE00234DF8
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 Aug 2020 01:08:48 +0200 (CEST)
Received: by mail-oo1-xc3d.google.com with SMTP id x16sf1339156ooc.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 16:08:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596236927; cv=pass;
        d=google.com; s=arc-20160816;
        b=UJcz6q5/VX79KBer4HVlNJKKlJKksYVA5rT9/0JmPPaRhEMUaMKApuQmDWqcWs5WRd
         FJT/x8BCfn8t0bCTYWTr/D6ov40YLvAjiJb7D0/+4179GHSliWJi0sHNzIYVcoR7As1E
         aDBHjuUSXI84SouoI6m5QnCCWEST10iYw70wHy/uf6O41OkVlBFPgsUJsS8SteEj1sMe
         fLXNoftSUPZET7ISuGSr5idb1bhT9jaokXCAY6jdxq5d19tP61v/fIX2X4mQJV9xKmME
         31IidYxxGp0nh36CT3cQETTWNnsWpsV4c7lspVNnT5aI6dChCg6kw6UZ3pK1qAuzboWi
         ZEHw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=SO/SSfW/BHl4jQB4YFKYfp8XzYqXXTDU3EdWA04sHEg=;
        b=kWDI61Gfya75fbu0whQRQ3Xpc3M4ET0U9rNoydxhLtk35PsNswryDpJldMGT9/ZbSJ
         kJiwmnaozra1pFhlt+MzjcxgVuAVwbuMO5N+XSgUFPf+S8G3tjzRu9JpZXdUHjcQs2iQ
         KyXJwW3hiNGnFev0hFt/pT7awacrq20jPQ16kXBnU4terK68W76osqR/pu+sFuy1kx46
         a8IY8UURrT1zC/v3ag5LIPluJHdlToA5BaBEhf3tnEeA0OqGgwhWbb2fnurW6xPw2lYV
         gECzoVwxYL3A8IPKMxevwRovZkxhOPQ115zMV3X6R4Su9131HlEdzMgiiJszauUzU+Yw
         g9nw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=JOAqMVCW;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SO/SSfW/BHl4jQB4YFKYfp8XzYqXXTDU3EdWA04sHEg=;
        b=HsqR8fG9hYxzcCi80evuMkAGqeXHOeVdong/mWlAzbqsAXdaQGyfalffIcS/5tYDyj
         fU/TMUVx7ziWo/to4oxz6Rp++jRj+B+ypVEMZOEI4B4xjnv+ONe6RumdysZsfT1kdgjg
         l2qqimTBUYzfTYUOLzBOQi7rdCfkwXTaEOREf/UB3Po7j1SGm0iKBnxZsOt/iX7QdDWJ
         mhrfhyP6IknL4TqISC0251JFMRosWOYKq3zPDA+Lktnm4A3KCpP2xa+rXrGRKEelY4Ac
         6Q1rVQQV1ZWhkMNsTrU+TJXWaOLXWbvtRtJnmZB/iPQ6XDNnymGtSpYB+qYR1s3bV7bY
         VoIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SO/SSfW/BHl4jQB4YFKYfp8XzYqXXTDU3EdWA04sHEg=;
        b=mNCwiX6Asx8lVHo98SV3G15lH+OlDL5pkXegQ0otLKCMmcuGg7DiGmio0wuE7qpswk
         B87Tdi1SZRNFX1RpWwk5aZiOkdxj+k1K68fUhYC422dkrt197mrv9ksWwugM1jn+UT8K
         8C3vLRj/RjXdNqd/btyFUv0618jN4/up1x/Vi8BtD/EktMX2PUlKgqYxF+jPqUcwEUfv
         KbWLg4vxAt/6p4T8QkGBJeCnjz+VzYljrf0rCkNCfSObjIm+CwpAknaMltBosnjdJrF6
         ULX/ggXaWMpRF4CcY0I3Zjp4KmcpWnTamZqt9WtXg0l8moZdHAi7nvC2tKuo9O++DtjF
         7Lpw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5330xoAgF4HYNOhGT+t4TEMEdig2bveBqZex6SDaZAxtxCt767Ok
	mkJL+9w7hnS0LLHmv1LFnZI=
X-Google-Smtp-Source: ABdhPJwSLBxNvdGc2FxgXG+JLQ8aNyQD+rMxiukrUejJfbqHmaBMw+nF1wbouc1naV/7+h/aXgR47A==
X-Received: by 2002:a9d:2624:: with SMTP id a33mr4904569otb.85.1596236926931;
        Fri, 31 Jul 2020 16:08:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:5911:: with SMTP id t17ls628172oth.4.gmail; Fri, 31 Jul
 2020 16:08:46 -0700 (PDT)
X-Received: by 2002:a9d:3b61:: with SMTP id z88mr5070873otb.135.1596236926642;
        Fri, 31 Jul 2020 16:08:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596236926; cv=none;
        d=google.com; s=arc-20160816;
        b=BSeDbMe+k4oU02XT2PxphuhAzm0dyOX1sUYUKbAP0WQPlUJGYLnLOjzr0CQRhPTOQe
         PwEhVUHiGgLP1lW1TTJgoXbWa/fTkqDJK2+tXIN9Lt3qp3ePZjAG2N9WfrFpyopsxOLl
         Vob3EL6+ytyfEVJIPksdz/Rprzyn4o5UOAdWGaDA1+JB87ODKMYD2mLFg+ga9cfdfPVL
         HauhJT6QH/H7DP+pvdtBD41bdUWe04mgDNl0J7RfNkkVrEdy0iFy34+kWYekaHbMJDCA
         tlAvsqb0FdPPy27pNOXh0IZ47i8lWBox5AaZM0oTtlB3mBNgqOYQF2DsVR2nSsvYkGKs
         2qGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=nwDvJc+EBCTytPh4qqWJPqBQ1Pj/7rvDlMkI2+6l3fI=;
        b=EfKDEfc0WXet6PuAgq0iXPcXvUW8TQ++mKNitnd3w65oLxDwxID5eiF43MkWbtfNmS
         j62GU4hMQ7Jt/Fn2qNelkBxb+Zt+PPxD5uCJKf2g9mJYf73LBLU3zz/+/8mek4/vuy6g
         /1ehRFC+iTpFKYuUF/sMz87pgpb6M3gh7PvQm2NVmP2n9ilWjLLGKgbvmdA+qTQBHSIq
         IQNxsOFP34FaIRxbghUTtNGyThp6J5+2eeEgmLyPvvFnfIFJ2AE2Dem9xykJVtS3ye1I
         uQ3OKF5/iv8yQQBHRReoryRG1h0CHvtPAsfKqGtr/n2CsGnX7zqB7p6qbpf5zQVguL3b
         n5nw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=JOAqMVCW;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id l16si614220oie.1.2020.07.31.16.08.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jul 2020 16:08:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id p1so18101218pls.4
        for <clang-built-linux@googlegroups.com>; Fri, 31 Jul 2020 16:08:46 -0700 (PDT)
X-Received: by 2002:a17:90b:514:: with SMTP id r20mr6354230pjz.82.1596236926030;
        Fri, 31 Jul 2020 16:08:46 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id h12sm7292673pfr.143.2020.07.31.16.08.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jul 2020 16:08:44 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Thomas Gleixner <tglx@linutronix.de>,
	Will Deacon <will@kernel.org>
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
Subject: [PATCH v5 30/36] x86/build: Assert for unwanted sections
Date: Fri, 31 Jul 2020 16:08:14 -0700
Message-Id: <20200731230820.1742553-31-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200731230820.1742553-1-keescook@chromium.org>
References: <20200731230820.1742553-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=JOAqMVCW;       spf=pass
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

In preparation for warning on orphan sections, enforce other
expected-to-be-zero-sized sections (since discarding them might hide
problems with them suddenly gaining unexpected entries).

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/x86/kernel/vmlinux.lds.S | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/x86/kernel/vmlinux.lds.S b/arch/x86/kernel/vmlinux.lds.S
index 7faffe7414d6..d8792f9c536f 100644
--- a/arch/x86/kernel/vmlinux.lds.S
+++ b/arch/x86/kernel/vmlinux.lds.S
@@ -415,6 +415,15 @@ SECTIONS
 
 	DISCARDS
 
+	/*
+	 * Sections that should stay zero sized, which is safer to
+	 * explicitly check instead of blindly discarding.
+	 */
+	.got (NOLOAD) : {
+		*(.got) *(.igot.*)
+	}
+	ASSERT(SIZEOF(.got) == 0, "Unexpected GOT entries detected!")
+
 	/*
 	 * Make sure that the .got.plt is either completely empty or it
 	 * contains only the lazy dispatch entries.
@@ -427,6 +436,21 @@ SECTIONS
 	       SIZEOF(.got.plt) == 0xc,
 #endif
 	       "Unexpected GOT/PLT entries detected!")
+
+	.plt (NOLOAD) : {
+		*(.plt) *(.plt.*) *(.iplt)
+	}
+	ASSERT(SIZEOF(.plt) == 0, "Unexpected run-time procedure linkages detected!")
+
+	/* ld.lld does not like .rel* sections being made "NOLOAD". */
+	.rel.dyn : {
+		*(.rel.*) *(.rel_*)
+	}
+	ASSERT(SIZEOF(.rel.dyn) == 0, "Unexpected run-time relocations (.rel) detected!")
+	.rela.dyn : {
+		*(.rela.*) *(.rela_*)
+	}
+	ASSERT(SIZEOF(.rela.dyn) == 0, "Unexpected run-time relocations (.rela) detected!")
 }
 
 #ifdef CONFIG_X86_32
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200731230820.1742553-31-keescook%40chromium.org.
