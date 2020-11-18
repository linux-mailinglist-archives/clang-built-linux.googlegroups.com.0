Return-Path: <clang-built-linux+bncBC2ORX645YPRBOVW236QKGQE3VPQ2SQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 9831B2B872D
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 23:07:55 +0100 (CET)
Received: by mail-pg1-x538.google.com with SMTP id b35sf2216463pgl.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 14:07:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605737274; cv=pass;
        d=google.com; s=arc-20160816;
        b=FoK/ACiXdanCu8F1JDwNqJUzYf5NJ3IOMQIKX7/aFz74sIh4/X9MCmKY4T0e2MEF9v
         RizrSkxTKn6bCJfGr3AYUcGEsOcaSXNxB9qxDcuiTnkY5JPjDIa/EZdplAr0sO60dMQE
         diu9RHMeoUmaupyIy7ByDS9YYmiQOYg8NDvwE0JtbjQPUAOrBbQaja9lVYnwzCE9zoKH
         R4Wm1E4no+EJmEeoLekd822rtMitYEnu2yijcSVS4LU56bpHl0BiIXQuWazgHBsvm4mH
         AUo5GkHfbuZIS0GmtcRcnrn9tdJ/NUyDb6VxyjKcWr0sG50xlHFZD1cl+iApVbBTQwPg
         fWpg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=SnbuWAt2RlnkOw+irXnwIz17h9kAofnGfOv5wkrfZ5o=;
        b=zOFx6TNlnI6YrOqHwWnd7JJFj9+4Zw9VyNBo/j67afE1JI35VU/+fdX3JSqbsKOraV
         fnRuFor5jnCw57qO7nuA4UvrNjvmwdpFSXrMJ8ZVHsa6Pr28w1pK8BApoFijrfJedmdE
         9evJjGAi9e7NluM7Y6kxXQAGO/UpyVRJUTnHwiwnIa+gG4LIV9mwWcNWV3G6qZkUP720
         ok5lRlYTTc6gs9Cr1VHLwI2wAULCjlwM8TtoMlrPjHc2XIg0VW3g4AjJ99mSpg0v9OjP
         tqulHrNGertDANzn8E7n4S+3Xvagc3BxKiQrgXaOoxyPx8nJ+MxeY1aDbqs94xgZEzTv
         FCvw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Nd7GPjj0;
       spf=pass (google.com: domain of 3oju1xwwkaek3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3OJu1XwwKAEk3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=SnbuWAt2RlnkOw+irXnwIz17h9kAofnGfOv5wkrfZ5o=;
        b=MALy3mEtQqR4YLHCIFe8xQiik1FbCLq3DxSAi+bupLxIeNYoEpvvoB37AYIJkHKoe8
         m5khCl38w80EwhxfHVQXe4TiipaeLbecClGfu/cATV+getDxiX0s3SXI3NKJiulpV2Xr
         wkmPt01K0lPHO/i09rZnTVT14cV3Rn04p2ZnSsWlvthK3A0MU7rh/fSt23eKqPkn8LcQ
         7o63MYGrdqo5L4WW2Qt0EzUJrXG0Nbup2dG87YXxFLSTTURgemVJyuKNjSCL3UJ58w05
         V1qg90tlK4DNGwROTCh8d5GsxLypHlHvnDXtaff32W9f/8cm11xbRXmkzj70wVb27eNl
         zFOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SnbuWAt2RlnkOw+irXnwIz17h9kAofnGfOv5wkrfZ5o=;
        b=TV9pYyK8vb6loIQOGnYEcP1Z31QW/qBmRx8nZ3gMgHi1bH14O9LSBfYO0QJoQUqEbr
         4JwTy5KjDx3F94o36IkKc4Fe38D0/ai7EcwMPY/T3ypBUce48mvGIkVo/xeIY/g3d/Dg
         o8NeEaX2QwXqtyb8nAjD7560oAa4am3yeP4w+uoHef5jpTzj/C2BwQ22IBqpU9cKHG3Z
         R8dsdZ5sqnx7xT6IPUQyyR1B5tR8VFij7n/bM9VzLQvckM+Y/KMRwPn8/hrKmPPNreTh
         QydLSADG1fkUxYqZXSuANx6kJJhYEy3Emu+sK5TD2YCExvWRBY2nBSUICk2Orz9BXGVv
         gW7w==
X-Gm-Message-State: AOAM53381rdba/FpW7bzSwOByW084SLpZ53P2Kf5y++xgBWwpSW++La8
	MP6sRh+C9JUk72e6CBdCWQo=
X-Google-Smtp-Source: ABdhPJz+K0WJD7706U6u01rW04HMOml8zovSnNezkh7kO6lCbXNLjQs6JtrvEPZcNyVchG/CJAM+Hw==
X-Received: by 2002:a17:90b:3583:: with SMTP id mm3mr1134343pjb.118.1605737274343;
        Wed, 18 Nov 2020 14:07:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:5621:: with SMTP id k33ls265345pgb.2.gmail; Wed, 18 Nov
 2020 14:07:53 -0800 (PST)
X-Received: by 2002:a63:1845:: with SMTP id 5mr9986374pgy.393.1605737273567;
        Wed, 18 Nov 2020 14:07:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605737273; cv=none;
        d=google.com; s=arc-20160816;
        b=eq9gikBf9GcACEnM4Trd7lo5CN939PcfoR8elzv/Qw5ULSo+rcXrK96zDRMYYKUFmW
         D/XYHzQY3mwOosnAbxU2cT9QR127fKMG6B893K7Qf+/bjEV1ZWZ5ibamKHO3GTkiWogI
         0ivC/4KOmc5Mi0lmd4iOhNfE5qilGuw6UC6IaPbSP0LePxAFVjzQHjKAz6ljrmVJr+f7
         g5n0RukzgcP9JDg4fwRjsUSZQKperR8FNsmebzGo0OOS+FEQuru5XMPf+pKI63MmHBRc
         Uh5KD1rD2ZaQpY+LsfCQGXtsFh3FN13O1U1FKZnLkc5X/FOg+xOjyncQdY4SqSJaQgnC
         D7EA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=bMl2xGwOyye8qFQQO5LhDpDmrDsCMs58eGZcnuWlmjA=;
        b=yMIu83PC1eseKYy6ncygXadbQkaB2SCCQkD4hwzUaIrZAtDOVtj2zvRen1y2k54Kb6
         M7OTVBClrK4nbwH7DdGFegOmzqGM+zPz53WZ7tOHsatlGKdVvpp5Glq6sAZGlbtLGYD+
         3ZdQfALrIuVk02Wsd38nWJlUVbhbHtKtFPsC2ZOcYMvNWIRN6toQypPK0MJc15lb8LxL
         SyTwAca9Chi5BAaMILgB73F9wWl0xhjJca1yPuE3r1bJTm9e1h5mh6Zi4yi0R605Q5Kl
         C/4EsdxYhuUG43gcfgOb4BAlN+FB1A9DI8I7CZAXQkrdUGZ2GjXuu1JPZn1+AVCfV3lx
         aSlg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Nd7GPjj0;
       spf=pass (google.com: domain of 3oju1xwwkaek3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3OJu1XwwKAEk3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id x6si1291901plv.3.2020.11.18.14.07.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Nov 2020 14:07:53 -0800 (PST)
Received-SPF: pass (google.com: domain of 3oju1xwwkaek3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id 202so2821679qkl.9
        for <clang-built-linux@googlegroups.com>; Wed, 18 Nov 2020 14:07:53 -0800 (PST)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a0c:a94b:: with SMTP id
 z11mr3035952qva.24.1605737272927; Wed, 18 Nov 2020 14:07:52 -0800 (PST)
Date: Wed, 18 Nov 2020 14:07:23 -0800
In-Reply-To: <20201118220731.925424-1-samitolvanen@google.com>
Message-Id: <20201118220731.925424-10-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201118220731.925424-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.29.2.454.gaff20da3a2-goog
Subject: [PATCH v7 09/17] PCI: Fix PREL32 relocations for LTO
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Will Deacon <will@kernel.org>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Nd7GPjj0;       spf=pass
 (google.com: domain of 3oju1xwwkaek3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3OJu1XwwKAEk3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com;
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
index 22207a79762c..5b8505a5ca5f 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -1912,19 +1912,28 @@ enum pci_fixup_pass {
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
2.29.2.299.gdc1121823c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201118220731.925424-10-samitolvanen%40google.com.
