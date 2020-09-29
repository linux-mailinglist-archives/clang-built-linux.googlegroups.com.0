Return-Path: <clang-built-linux+bncBC2ORX645YPRBZOWZ35QKGQEINMGOEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id F0A5127DA8F
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 23:47:18 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id n19sf4330470pjt.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 14:47:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601416037; cv=pass;
        d=google.com; s=arc-20160816;
        b=OFKnHd5JwIGCImC9CxqD26SwOGFAEQdjojsHzykXt4KctybpVu1WUTcuGgIQxkeGkL
         kb7fo3xcoRrXguw3wVJ97FWXx1r0KObocOBPRumAnhtXtioqm9crZRnRfXKXsXjXNK6Q
         1op2+pxU8+f/zeLqOMZow1rNOAk0u59c+VkDL9MB71XxfHEUaR4gVDDYR7k1qScoTPer
         H0bV0suDaLiPCzrL4FSIFPOr5nzyl0PZ8nKwngr1sFbEXlK8s1M2VnOQ8+961gbnIAT/
         k27FbDGQTiuzWXg5rTYDFNN3DPcajT0lgzkXGHYq2EVIJQm1IvdT8H/sAUIxiBQK6MPC
         iYiw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=J2NO56Go9oAr+zmJYZrYTPo+kpTv1rKNUlbMfKaT7tg=;
        b=w4kkHOSwRGkDoJcdAN4UUAi0igAAvtP7GQNjWzOglvZtGTZ7qcaRQsb1QQDOeVHWRC
         PLpT1SxYtBH3y3fDPtF2q9U2Il3egPJ2Oc1O1UhBRe5Rb1WnGjjvWIKvqa8zmANTbTwB
         RLWY9vQhPVNSJydFsB/4wY9t6WnfURib40+6ObT32PqMSoqIL/5emU2lShyJqX3eyv0f
         k9KEC3A6TK1K2OcJj7VXeV7peL+syJZig4D8PZDfOARYgfCIPHtARtsOb37O8TjYkdfo
         JrAVc1oSh30lWNJlWOIYwP2IWjslzsJxjxqjIMPHzCiTKNl4Pf0qbR5SIUnSYuOEWYCY
         I28Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MekhgGdQ;
       spf=pass (google.com: domain of 3zktzxwwkais7p1x830ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3ZKtzXwwKAIs7p1x830Ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=J2NO56Go9oAr+zmJYZrYTPo+kpTv1rKNUlbMfKaT7tg=;
        b=Ui/3iyPgH5dUqyPmwZo6CxDDVJVlikzxq8H0z5Irgpr+AWrzkwNGQnAy4JUNE/o7Gl
         YXNDKQgnxMrJuzCk2gxcWvbI61D30BzLQLU2mftvgPrPk05AXAGvGiD8VNeNPmB34Fjh
         Q+tNXWEMeZyMChe7TRkMiliMRFmnq/Sr9jGpsTGC6rATuyjfu/iT1ICMYOpUoQocvc+0
         saUP+2v24Q35eFLuzOfGOQgyIyYwNhDidghwy1/KMqn4dx89BJb66m55t6QboBzmHfiM
         qsha7FNCQ5h4FD6ynAizmKUQi7D6+D7m3sTd3m21EXw2Tjz6yAWcuf/NbOes3KKufa2e
         G8AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=J2NO56Go9oAr+zmJYZrYTPo+kpTv1rKNUlbMfKaT7tg=;
        b=k637E0psIjXcVQTJHYc9dSbXR0uRpKSBU8sr4MUVOegPEAHdeo2mDcvX/vOvfKK6Pg
         RX9fPsbwH5ZjeQMrw+HjXyQkh6bnzitaAlMqyQyCNo5mEbYTGCFavKiiVPITA6SU3Pdg
         7VSzO+YH3r6FRpkc6cmhVoIbZHpTMotmIBNNfUEsUSIL5Unj/v2dkTQ0tOeGyAmJa+Gw
         UYlf7PFPFQ7APOPGcnk3OHi4+nWgVyCwq6ZyY3jWV+wMYUFTYHss6Qh15Zo5mFEPeSNJ
         +XMhiQcOZdTLXkaUtpZ6IMjcm3nLc4GmRm9uL2kIGivVcLgPOBqOrJsbO3OonBHURCOv
         qk/w==
X-Gm-Message-State: AOAM532XRfw4PqjNce6bMIXgqxVUrpapd3z29nFrhX+Tz5hI86FzN/ee
	5Xa9UKGPPUv6liA6MEr1FJs=
X-Google-Smtp-Source: ABdhPJwM8Bl+S0VbuyBV7bsgiC8I639pCqLeFx01wdVW9yKcAu0UsqWYk15YOnBN9ZXNXCQd5zLJPw==
X-Received: by 2002:a17:902:8493:b029:d2:42a6:238 with SMTP id c19-20020a1709028493b02900d242a60238mr6428486plo.4.1601416037688;
        Tue, 29 Sep 2020 14:47:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:174a:: with SMTP id j10ls66811pfc.7.gmail; Tue, 29
 Sep 2020 14:47:17 -0700 (PDT)
X-Received: by 2002:aa7:82ce:0:b029:142:2501:35cb with SMTP id f14-20020aa782ce0000b0290142250135cbmr984322pfn.43.1601416036949;
        Tue, 29 Sep 2020 14:47:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601416036; cv=none;
        d=google.com; s=arc-20160816;
        b=AaCb1yHXs5YeT+0FE7Io0FsZKIfrVWGz2BM6GwofINL2lMwopdY7ag5z00W7CL/6P+
         pmrpabRM0I4ff7JfW12Mqx4GCQGWjt1rlzA1bO+kFOozaf7/AJIpOoskc5w8i8XWK9sx
         40CCOyK313cmrQVfiRKKxxdznzYqtph8tJEBtPNDUuZ758JTce9JaCfEA3c4fV1W9u4r
         rTX9CN2QCmudwhSKzQtnsDJ9BBgfqcyCnp46PNkJiyF47yqppXV/mfge8/va+GbdtSto
         pEvfMreLI3q34XrRnUPX9CWmFR8JwS6lU8E0zR0+xisyULOod90eJB/qOzAcSp/PhE4I
         SKZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=5ADrbIYYdkQ2THetWVdXFRMGM/F7dNAyZUNR6Ura+J8=;
        b=OEPrV6/oMr+dL1cpnMk+myJTsBL/8Ri0JoxTm9LXborfYz66a9d+baqSc3mF/yH6nv
         7zI8zloRSMObxIU2j+FaHgN3MQrIiHxjKfNP5O96ObzZzOe5bPyYOhXQpl9huRRmQcxE
         TPSCuQTn0fq2l4JczxMO147xCkkvJTfZNyETplIwMgH2mTDPFzwtR/WTMx7vacBHVX1X
         J6OB35epEX+O9y8xQUAdN68COp0dJYb3HJoB17qSZubYpyUJ3Bljtm/KchzrNn7XcV2J
         Rr7UVbi77dI1KEtoU4ZhkCyS3bvyRqgnaITJx0qzVbdTKTexvK5XXHaBWQe+xCA5dzf3
         uT8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MekhgGdQ;
       spf=pass (google.com: domain of 3zktzxwwkais7p1x830ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3ZKtzXwwKAIs7p1x830Ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com. [2607:f8b0:4864:20::549])
        by gmr-mx.google.com with ESMTPS id n8si512441pfd.4.2020.09.29.14.47.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 14:47:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3zktzxwwkais7p1x830ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) client-ip=2607:f8b0:4864:20::549;
Received: by mail-pg1-x549.google.com with SMTP id c3so4105370pgj.5
        for <clang-built-linux@googlegroups.com>; Tue, 29 Sep 2020 14:47:16 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a63:ff63:: with SMTP id
 s35mr4883241pgk.14.1601416036594; Tue, 29 Sep 2020 14:47:16 -0700 (PDT)
Date: Tue, 29 Sep 2020 14:46:21 -0700
In-Reply-To: <20200929214631.3516445-1-samitolvanen@google.com>
Message-Id: <20200929214631.3516445-20-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200929214631.3516445-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.709.gb0816b6eb0-goog
Subject: [PATCH v4 19/29] PCI: Fix PREL32 relocations for LTO
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=MekhgGdQ;       spf=pass
 (google.com: domain of 3zktzxwwkais7p1x830ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3ZKtzXwwKAIs7p1x830Ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

With Clang's Link Time Optimization (LTO), the compiler can rename
static functions to avoid global naming collisions. As PCI fixup
functions are typically static, renaming can break references
to them in inline assembly. This change adds a global stub to
DECLARE_PCI_FIXUP_SECTION to fix the issue when PREL32 relocations
are used.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Acked-by: Bjorn Helgaas <bhelgaas@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 include/linux/pci.h | 19 ++++++++++++++-----
 1 file changed, 14 insertions(+), 5 deletions(-)

diff --git a/include/linux/pci.h b/include/linux/pci.h
index 835530605c0d..4e64421981c7 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -1909,19 +1909,28 @@ enum pci_fixup_pass {
 };
 
 #ifdef CONFIG_HAVE_ARCH_PREL32_RELOCATIONS
-#define __DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class,	\
-				    class_shift, hook)			\
-	__ADDRESSABLE(hook)						\
+#define ___DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class,	\
+				    class_shift, hook, stub)		\
+	void stub(struct pci_dev *dev);					\
+	void stub(struct pci_dev *dev)					\
+	{ 								\
+		hook(dev); 						\
+	}								\
 	asm(".section "	#sec ", \"a\"				\n"	\
 	    ".balign	16					\n"	\
 	    ".short "	#vendor ", " #device "			\n"	\
 	    ".long "	#class ", " #class_shift "		\n"	\
-	    ".long "	#hook " - .				\n"	\
+	    ".long "	#stub " - .				\n"	\
 	    ".previous						\n");
+
+#define __DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class,	\
+				  class_shift, hook, stub)		\
+	___DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class,	\
+				  class_shift, hook, stub)
 #define DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class,	\
 				  class_shift, hook)			\
 	__DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class,	\
-				  class_shift, hook)
+				  class_shift, hook, __UNIQUE_ID(hook))
 #else
 /* Anonymous variables would be nice... */
 #define DECLARE_PCI_FIXUP_SECTION(section, name, vendor, device, class,	\
-- 
2.28.0.709.gb0816b6eb0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200929214631.3516445-20-samitolvanen%40google.com.
