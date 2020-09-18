Return-Path: <clang-built-linux+bncBC2ORX645YPRBXNKST5QKGQEYBHASKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id B4BB1270648
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 22:15:26 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id q2sf4352738pfc.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 13:15:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600460125; cv=pass;
        d=google.com; s=arc-20160816;
        b=lTAR55B0nJts/MkzvTr1u9uhIPKOCSk0ntuYwJyyGrx4k4dARbsbj7yyyOi+FusWl+
         ChJ7NCSFkw/Yi8RBeaerrEtln5c9gmXXtkUsxV4Y5ulasy0K2iN+7ylMFpXCPBkZ0s8f
         B/DsQF3tQ3q3t8iiMuMGLgAT5A2R2xS92QSseZr1rN/oLA9Fg/5mk2edSTXi2ZjzOTdZ
         QGSoX4o0FRvzrVs3ueoa8gVRlV1AkcLv8QG2eOn572d1dgzXi0WFbj3ffKmXgcuVmz3m
         40vqo4Qa2vIBtsnJAqGiO0wjlbs2Y5G75xrZ+Xi+nPIMmvL5Hy0MkTnIHtY7qFLAhqbT
         4Q3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=wghPYN4ERvrZt6YjTXjTD+e+yffH0V++NNObqytwIww=;
        b=GzKt62z20cc4MExcwtCVssPvq45FNWJ2JdZSYBnhb822h75eNIzzfIEpwJFg5hd/TR
         GR/gXLbo5C41O8HZdByrZwh9qOlqGpZorCe5Dgx59tE5/pP0qbi0T8LL5XkYECkOqgPk
         VDFdcLbTOxEr/i0yfFX8fqQkyaQb0VNBBM4r3pmjy6ePUKy/HEbTybktEn5zUpscZ64Q
         sx99wPpWGo+DfZWTGYo6xQOv+HyQKCjgmCdPtURyDrMDHsc0xG7kVfTFBj1U9Tbx4Mfr
         DrhIT5bdmR5RyPqvks23R7yzK/OUTpKsiAnn7K7o0KN6nWYk/3xkBbRG63LIWjqSehQq
         YG/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Qgpy+pbz;
       spf=pass (google.com: domain of 3wxvlxwwkabwk2ealgdn2f6f8gg8d6.4ge@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3WxVlXwwKABwK2EALGDN2F6F8GG8D6.4GE@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wghPYN4ERvrZt6YjTXjTD+e+yffH0V++NNObqytwIww=;
        b=lYl2zBnhWsaYzTb9a97f1EmR7sxi6ssUuN5vGFMT+5KozQ9egmVb81KOxS62eRE51X
         1YujQsOFsIRzkFPhVy4vDNOnnEY9s8fRJecaLF+BZqpdBUEL4UeWddUoKOEoph0fqn4s
         9AeQyKoLLVolJ1oYnNXnbYoluQIYh3ufo8P5dRtkoJ+z0k5pE9sQJtRk77eGPjRNAqMP
         EM1FwrGThVTHVBwmp+cLgk8MGHn5dg0HHvHIqDqstTrb+U+ZFnBnUPruv5vyV4mJaXUs
         wHbuhtfJsSn5DLcnU44fX4GgrBT/Arw00CpnxtejeBwPYXopKTo/huDh3ivTD9+q9QPT
         +RFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wghPYN4ERvrZt6YjTXjTD+e+yffH0V++NNObqytwIww=;
        b=rwXPfgq2pU508uP9G7haVonsdNpI0djKV8jlvr44dSr1Y4MekLdfvcyDDWo+szf/ea
         N7vmracpep1hG466SO6maR8168zCohwl2Ersvt0w7FM/XQ2pEy+CPnVcL1u+DUm0douA
         WORVQGgxM+BjKw7aa5Z6uD+OGCoOaBmiJwuU+fZ7ALobkSavLpp98ltyKY56Df1rGPir
         1v5MDidFod++fIQK5DCggxZe2Bjlblktjyt+ZfAdtdPxCHoFvZUegoigwlgFoiony/h1
         /pY3F7sfgpYC/VK2qL64KU34Eq91yqOqwZRjHcgSPrvr07xk7RfGyTp9schhEFbu+PU1
         Mr1Q==
X-Gm-Message-State: AOAM531BcmNRsvHEWGER/6t454WFBAXhguouS09vjqBWdSlQCcnuPBPG
	9wtH1e8mIm2lbLSVyhXmIHc=
X-Google-Smtp-Source: ABdhPJzppm9e1O0oMO3aqPizVggse8FnZm2m/8Y+hwA4KXzHrPTxVKg0TS6l59bK9iE49cdkImJvdg==
X-Received: by 2002:a63:d14b:: with SMTP id c11mr29023249pgj.64.1600460125462;
        Fri, 18 Sep 2020 13:15:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:c7d3:: with SMTP id gf19ls2970650pjb.0.canary-gmail;
 Fri, 18 Sep 2020 13:15:24 -0700 (PDT)
X-Received: by 2002:a17:902:c14d:b029:d2:11a5:4769 with SMTP id 13-20020a170902c14db02900d211a54769mr529442plj.63.1600460124859;
        Fri, 18 Sep 2020 13:15:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600460124; cv=none;
        d=google.com; s=arc-20160816;
        b=cffjF2xUhwN+AYJJD2q5n0OcUX4W0SjOYUoNMmbjECf1uXX+NSlLr7A6Duca0zRs+T
         iktRrReYv0G2GKpY1EZ2XsFuScnAb4C/7tVgMD30b/oBLKQYUBiRYU8aCEtUErFpS9mX
         eZDG3kSctgIkfH5kDECcb3Rl9tc/nK+7drysPzGGg6i3+2F1ynabBfZxkgg8Z0l7IxiJ
         IdHENQ3nrHsaPZsiRf57CQDtMyeKjnJKV4sJrAvA0xp73cUIO9cKY1PcOZqWHTdhE1O3
         hvd/1xuDprJvG+hh+1ThP3OFNeDABXv+qn1GUBYihrbT8klj6AtXtyFrZ3NfUttl9SCV
         N21g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=iG8c4IVmV6SAigaVNA/2Da1zni30786ipLEHlcLZdp4=;
        b=YupW//8b2qIn0WXD6UWvq+yLMUuJs+uKsmS0Q9i6k8zBATT3NZZYBP21HfGlR5e5Wy
         p0/9yR5pcpciUpOnqfEV0jOdaASFEjNs6kCVxbOKIUyc/Sav8gGzsvTNtHZjrzmErEeB
         BXDBUEHmXsCZbdlJfw9AOrDZ8+X5+9EWsS0KH3fi3FwQeWrN1QzPbKASva5WWkpVyMh+
         ZVTDmgnU6l7y8ePI2TXRVhDEYkgcz/IHi5a3obS7MJ4gWlN/6TzWutOVb39MLfyqyUpv
         a5dEM/sHjGUJwgUhbs/Jw5GNWXprcpwo0WPwmbTJUHDgiVts9ldfiW609nz4GJgQ9alR
         E3Jw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Qgpy+pbz;
       spf=pass (google.com: domain of 3wxvlxwwkabwk2ealgdn2f6f8gg8d6.4ge@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3WxVlXwwKABwK2EALGDN2F6F8GG8D6.4GE@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id w136si373654pff.3.2020.09.18.13.15.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 13:15:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3wxvlxwwkabwk2ealgdn2f6f8gg8d6.4ge@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id w126so5597595qka.5
        for <clang-built-linux@googlegroups.com>; Fri, 18 Sep 2020 13:15:24 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:ad4:58c7:: with SMTP id
 dh7mr8337663qvb.20.1600460123968; Fri, 18 Sep 2020 13:15:23 -0700 (PDT)
Date: Fri, 18 Sep 2020 13:14:25 -0700
In-Reply-To: <20200918201436.2932360-1-samitolvanen@google.com>
Message-Id: <20200918201436.2932360-20-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200918201436.2932360-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.681.g6f77f65b4e-goog
Subject: [PATCH v3 19/30] PCI: Fix PREL32 relocations for LTO
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Qgpy+pbz;       spf=pass
 (google.com: domain of 3wxvlxwwkabwk2ealgdn2f6f8gg8d6.4ge@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3WxVlXwwKABwK2EALGDN2F6F8GG8D6.4GE@flex--samitolvanen.bounces.google.com;
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
2.28.0.681.g6f77f65b4e-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200918201436.2932360-20-samitolvanen%40google.com.
