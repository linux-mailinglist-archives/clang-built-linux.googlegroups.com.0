Return-Path: <clang-built-linux+bncBDYJPJO25UGBBWGX2KAAMGQETAV3S6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc38.google.com (mail-oo1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 9159A30910A
	for <lists+clang-built-linux@lfdr.de>; Sat, 30 Jan 2021 01:44:09 +0100 (CET)
Received: by mail-oo1-xc38.google.com with SMTP id u1sf5132837ooi.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 16:44:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611967448; cv=pass;
        d=google.com; s=arc-20160816;
        b=M0gALOXsC/cqkABKtgBgZmlJz65C1oh563CKFVndilrYsW5AZvgk+mAhGLtMAbL0uU
         3PZss4soT/EKnyjYIhaLM+0reiNKf4jYNUp4QcpCl4PLXvCXGaZyCyUR0MzrCZG++kgi
         NvxW2JgdLnJmOiyxKLjV+3PztTIP1JJvytVF/P7Tmn0QcTQjkWlVxMvBJ4t84fqribxE
         tsSQnBdha7oLDk/txdTr4G3tA/IY3ex3pCLyQYHRSWNQxQJTegdeysgEaVEArkO9M05r
         m3Ir2AoxHB4sAy0EBWKFAqzm+HPBEHJxDRMtFhrwUEgw849OyXQGHhthVbXB7pHlx1+R
         23Pw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=VY2gp0ZhNM32PjOjZkjkcvduefor4cVlw8nmSf315jE=;
        b=UwFtS0cJ91Eydo9AK0639P1/BkwKebosNz570E5ZXBcLFlgviZLA+zy8GFaA5+Juf6
         le4kTXTVHNc1+3rvnlldBGuBduaOBsE3zZFpk/kgXfdiXEntx6XQ2jZIJx/eKdjqbV+t
         msgagYb4Cf5qLjd4QRT3BPebt5hKjRmg1YbjThHK2ue5VDkxYJepa1OU89akz5lLQxow
         b27leq+Sd/M5JVR1LtQmt8jRuiSfPnDFFhRsc7HwBPBfmH1mZty8MLJmkrve6C73vRpY
         VcCUQIDTWZpEhRDuixHnLnLWLgknODXmgDmm0xLfg4PoAlKlby9M7EFYEqqh0UXAzcCj
         A7ow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fEyFzt3K;
       spf=pass (google.com: domain of 316suyawkaigzpq4m6xzuq34s00sxq.o0y@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=316sUYAwKAIgzpq4m6xzuq34s00sxq.o0y@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=VY2gp0ZhNM32PjOjZkjkcvduefor4cVlw8nmSf315jE=;
        b=hYBZzE7V704Hl10cACCKNpjmtVRYGUx9Xc2es9sOUNbFc48DYdMKlqZ7z2+6xlUCSk
         dxZuSQAIJNzgmtkapRLXZsMdtSl1AI4nRt8v+UPZV5e4wo3fziwiVV3DvGVZVNdFmLQm
         LRIelSDoeUcGjPUq1Hygx/MBzZbEHYy70rkWngLSSW3V9tJ9Zs8uqimr33pqh074+2JP
         CPQB5aTzS7Jznd6tIo/7RjPLQFRRuO2mipSo/k5wLzZzKeDxjbfTTIU2BMNbUCF2lPXc
         X07S1VFJDV9sSZNv4avxQgMDhVFj/MJ8X+qY74RrEg/8EpMiXTT+ntJNqVvJ61HyzzcA
         w7rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VY2gp0ZhNM32PjOjZkjkcvduefor4cVlw8nmSf315jE=;
        b=cA6lsDhJU9TXCKz9hQI7ZlSen8tiXfPv49FqMlZMIrGkyokB9zqigXrsEEVGZvXg7m
         QHPm0T8rutazhkSFFkJIAmw/C9RtuhTORzQMYRJiwNJkMFWD6B5DQBhGYRW3ehN09rtJ
         iiwasH7nGClBn9Jm3JsASHepaBnRmwXBGpClYix6cgZXKivjk/K8p0TnSJyTfDC8OWyb
         +6nAjVYPMxXXC2LpYY2SlemKIRGK/2Qr4Hj7vGQDPd6jDdHSk0BaJWYCsKCIl5NYUR5a
         vAkD/X9aUjGY4vSB4ISJGG6gv499nOXIDE7o2Bfy78+Faaz1Lq9r4q6ES4nG3GYPlgtv
         buoA==
X-Gm-Message-State: AOAM530EA1ZSg6VnUcp8nXQ1+njXvBfCK0qfVaAJEa5iGRvPlic2W4Dq
	dUnao5mNH70/VWUnV6LzpeM=
X-Google-Smtp-Source: ABdhPJxvqIi/mnhmd19dSIqvkEk7MEwAL8cDmHhDklZQkUOe6vm0kJsfeJTBuzrDoqhgJ7sFcZAPYw==
X-Received: by 2002:aca:f14:: with SMTP id 20mr4172714oip.31.1611967448617;
        Fri, 29 Jan 2021 16:44:08 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:ad50:: with SMTP id w77ls2511091oie.11.gmail; Fri, 29
 Jan 2021 16:44:08 -0800 (PST)
X-Received: by 2002:aca:3f07:: with SMTP id m7mr4039991oia.104.1611967448218;
        Fri, 29 Jan 2021 16:44:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611967448; cv=none;
        d=google.com; s=arc-20160816;
        b=XOsFuOvwfDbtKUQp8sWCOnZYNd6nGLBoe8Mm23KNCLXtps5ZtR6XFAgR83ijZMPntj
         0MXSp1JrUHSEvqjo+R3xe0r9mnay5HFgCibIfAGurKh1pXtCzsPxT1YB/r3jAifsDf+H
         jdsxbfgdZI/dVdAz1kCGdEp9hF1bjh0G9nKEhlMk/1jDqcU2K/Q+MIczkJy/DCcWx3Qf
         5RJRbRjK/cMEdjTrq1R9ep2ag7kuk9za+kXtnjTl63UUAJVPMO1Bkd+hhV1dGbS4rTVJ
         CK33O75+T97+JdBoqtDE8ggiOMnkah2Fj4MhJc5WWOvEzsG5YOWlLexDU7p07eglXFQF
         lVag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=e8ediMGbRKukecpLwO0eR0sbXZYBrlkFjlLmuC8GnoE=;
        b=OU0bVgIIfOYAESneyLrLQhL3h1LqMKtutVa0weD8wjFnayRbjrYuSz4x3aW92GnQa1
         fnAUtLCy7nj0Y2DeWm7kPiScRw3Y/tgxS4RlMtofrjsLSiAyNK8dzLm1HQLtjXB3rbbU
         CbPPvWEDToW++Z4wBMrZNdxYEWyZBANONjslE5GAXeiGQwBLwB5dH2ZUgO/Ak/lkj/id
         YwVDGmihG/8kJxIn+dhcswSMM8WEE9ofq+Rj5gRdGQONfVS6EakwNt4o5Rs+SzTTWMp6
         hZwdHaNUqgOue/meFqH+TKtWduR56+1ZidvCK7XYpcif2o6ZgkkE5McOGIfbfwTCGb1A
         40SA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fEyFzt3K;
       spf=pass (google.com: domain of 316suyawkaigzpq4m6xzuq34s00sxq.o0y@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=316sUYAwKAIgzpq4m6xzuq34s00sxq.o0y@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id g62si535669oif.2.2021.01.29.16.44.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Jan 2021 16:44:08 -0800 (PST)
Received-SPF: pass (google.com: domain of 316suyawkaigzpq4m6xzuq34s00sxq.o0y@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id 203so12106044ybz.2
        for <clang-built-linux@googlegroups.com>; Fri, 29 Jan 2021 16:44:08 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a25:d293:: with SMTP id
 j141mr9709920ybg.56.1611967447754; Fri, 29 Jan 2021 16:44:07 -0800 (PST)
Date: Fri, 29 Jan 2021 16:44:00 -0800
In-Reply-To: <20210130004401.2528717-1-ndesaulniers@google.com>
Message-Id: <20210130004401.2528717-2-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20210130004401.2528717-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.30.0.365.g02bc693789-goog
Subject: [PATCH v7 1/2] Kbuild: make DWARF version a choice
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org, 
	linux-arch@vger.kernel.org, Jakub Jelinek <jakub@redhat.com>, 
	Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, Nick Clifton <nickc@redhat.com>, 
	Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>, Andrii Nakryiko <andrii@kernel.org>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=fEyFzt3K;       spf=pass
 (google.com: domain of 316suyawkaigzpq4m6xzuq34s00sxq.o0y@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=316sUYAwKAIgzpq4m6xzuq34s00sxq.o0y@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

Modifies CONFIG_DEBUG_INFO_DWARF4 to be a member of a choice which is
the default. Does so in a way that's forward compatible with existing
configs, and makes adding future versions more straightforward.

GCC since ~4.8 has defaulted to this DWARF version implicitly.

Suggested-by: Arvind Sankar <nivedita@alum.mit.edu>
Suggested-by: Fangrui Song <maskray@google.com>
Suggested-by: Nathan Chancellor <nathan@kernel.org>
Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 Makefile          |  5 ++---
 lib/Kconfig.debug | 16 +++++++++++-----
 2 files changed, 13 insertions(+), 8 deletions(-)

diff --git a/Makefile b/Makefile
index 95ab9856f357..d2b4980807e0 100644
--- a/Makefile
+++ b/Makefile
@@ -830,9 +830,8 @@ ifneq ($(LLVM_IAS),1)
 KBUILD_AFLAGS	+= -Wa,-gdwarf-2
 endif
 
-ifdef CONFIG_DEBUG_INFO_DWARF4
-DEBUG_CFLAGS	+= -gdwarf-4
-endif
+dwarf-version-$(CONFIG_DEBUG_INFO_DWARF4) := 4
+DEBUG_CFLAGS	+= -gdwarf-$(dwarf-version-y)
 
 ifdef CONFIG_DEBUG_INFO_REDUCED
 DEBUG_CFLAGS	+= $(call cc-option, -femit-struct-debug-baseonly) \
diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
index e906ea906cb7..94c1a7ed6306 100644
--- a/lib/Kconfig.debug
+++ b/lib/Kconfig.debug
@@ -256,13 +256,19 @@ config DEBUG_INFO_SPLIT
 	  to know about the .dwo files and include them.
 	  Incompatible with older versions of ccache.
 
+choice
+	prompt "DWARF version"
+	help
+	  Which version of DWARF debug info to emit.
+
 config DEBUG_INFO_DWARF4
-	bool "Generate dwarf4 debuginfo"
+	bool "Generate DWARF Version 4 debuginfo"
 	help
-	  Generate dwarf4 debug info. This requires recent versions
-	  of gcc and gdb. It makes the debug information larger.
-	  But it significantly improves the success of resolving
-	  variables in gdb on optimized code.
+	  Generate DWARF v4 debug info. This requires gcc 4.5+ and gdb 7.0+.
+	  It makes the debug information larger, but it significantly
+	  improves the success of resolving variables in gdb on optimized code.
+
+endchoice # "DWARF version"
 
 config DEBUG_INFO_BTF
 	bool "Generate BTF typeinfo"
-- 
2.30.0.365.g02bc693789-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210130004401.2528717-2-ndesaulniers%40google.com.
