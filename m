Return-Path: <clang-built-linux+bncBC2ORX645YPRBK5FYX5AKGQE5532Z7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 94EE825CA61
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Sep 2020 22:31:40 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id t11sf2923718qtn.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 13:31:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599165099; cv=pass;
        d=google.com; s=arc-20160816;
        b=bDHuQOIYtwMEPr8Yn4koWIyOG/i7iVeP9Kvu/1KBcT9qEiAv/15K5fZ72nRc5X2ljs
         PLZolv9LcZDXnIItD7oLKZ/VQU2lNeXENaw+PE/8hDEJ8XpvwsHc66Nnt1VSrorflwy/
         zkGmWvkmqZlHosAFqkN8igSF3HG7vLFEdbX3DOPxez0SXnpW0U8d1hmpYnv+ANqOcbiO
         HfXd7tWVjeTY0EQZxD31Hyvktr3gRBgzPXGuHfl+wCrT/T4HW20OMHYKibmgR2NTG2a4
         QE/ICjgHjkXjvylw1zIEmSunpOPF0SaI7ZKDfVAtFLRAjDwHILzC+2nEeShiGzmewCdE
         Dt2w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=P2OgZjHFcf6erEOQW2oJad7c2uueSGQA33+u2OTow40=;
        b=RQrHiNCAbOIYDicSNoXvrMSzy0NcedP1oieDifKGywMx0hTuOHvQh3knQPlFcYtEtn
         Vxr+jiv2NSJM7J64IGSf0txuG6Yqn/oYbc15Rl/bT6PQoawG5GIWLGLR5f0Ea9KQa/qo
         q5h8mv99y6Vb2baM6ndkCr4v5OI4nnL+Xq9ApymSmGAhna0zo0pEA7m6+kD/yKjEwmkD
         ufRlP7EKLHjJPjlc1wrKxYWp8iNqowmf9AG7Ynk/roiyIT++bEaQqhFDQxJWn37ANLyy
         +mmJqczv+vPfK4J9I9B31NFyJQP5FUYTyFRC5oPFEOETvoPJWr5cEYsoUoRRaJQX7g16
         MR3w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ufRzOZtY;
       spf=pass (google.com: domain of 3qljrxwwkajuhzb7idakzc3c5dd5a3.1db@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3qlJRXwwKAJUHzB7IDAKzC3C5DD5A3.1DB@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=P2OgZjHFcf6erEOQW2oJad7c2uueSGQA33+u2OTow40=;
        b=iJBGYiCheZjnh4gxq4p+nFbBDOWRrdWa4gLnxQkYMah1mZv0VsOt6/YjEmdWGBNgeF
         rPJ8doGy185gfjmTubhA74JMwRq2HUYbIylRak7b3++WofaFhJP76GxmTV0DaJAVGVIE
         5Vp1tdzadjUwHObswuftS7lKLa0rtZB69Frn2Fl4Qrt/HWAw8quupbvbBtR/eyr+xodw
         W+wM5eCdEK8pK/3RIlOkrS91jE4zAjcenNrTvu5oo64ElilvItAyE8x0BJwdfcPkpupg
         UlCiCQcmeZt69MpZMqCU40I6KvdSF25JAkjerQC50AniYmU9t9HtBkmj+OmXjlcHWSY4
         XuVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=P2OgZjHFcf6erEOQW2oJad7c2uueSGQA33+u2OTow40=;
        b=jN81w8NEuGQpyrhftjZ97q5E9EAXUWWrT9aOSmjriHyqXenqa2ydqMtnmLio5bbCFo
         hrakbjJs8lJbxjcMQCeraXs94B7P6D/s0WsRzMhuU1m5371cvpB+u50fWLFJd57EY6Pw
         ATa08knFIv2BJuQ41FG5ozEBrpiBOGOdvNCmS5dHDq39PbhR5b9NjynxD/bnTdeuFnRe
         DLUsTwDKqcBaqZLBo3ts5EVYlGaVnng1O7KOFXKXBSDA1vWh+mbfAt2Ydzk97lPT1MtC
         fXA0SnGWYt0QvTCe9LxSrg4DvyDsIOU9LedXSf6Rw1CIOWTfUtA83JhqBVs2Zo4BlONw
         lYPw==
X-Gm-Message-State: AOAM531rnenNVWdMeFFWNkdi4dgorIKKUNKSomsOZ5dnb4EKnJrf4GWz
	Uxrkib58U4gYj5C4jef+C+c=
X-Google-Smtp-Source: ABdhPJzUFie60tqH9tL0I1SUidOOfIP/vepvITlwgw7cMw3V96uBnd66a2nsjmKwEcWEGZcej3gIJA==
X-Received: by 2002:a0c:bd03:: with SMTP id m3mr4466253qvg.33.1599165099663;
        Thu, 03 Sep 2020 13:31:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:4ea4:: with SMTP id ed4ls1632899qvb.11.gmail; Thu, 03
 Sep 2020 13:31:39 -0700 (PDT)
X-Received: by 2002:a0c:f491:: with SMTP id i17mr4801077qvm.85.1599165099121;
        Thu, 03 Sep 2020 13:31:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599165099; cv=none;
        d=google.com; s=arc-20160816;
        b=fCMVbB+DH7/eURgjs4sJHKfs/Uq8j2hM5R/KEozROg9Een4TW3EgIjAHNg26wRUADV
         H7lwvVRy3+NuSOc4o5PeoCxAQmt6eh7IWO5bYtPH/qfuGzC5vX+ofh34XT2ZfnAL6zk7
         bQKYr0nPnysGXM4Jdx1qlDrcJqjM9dL/TkjDQOJfccINfKqRr12py2huq3xmxycdHnny
         iEB+qNTmAPM2mYApNQQR79tpqYHzB3Zc25Bqjauzfk83ML+Z5N/nUT9dNOPvDH0bgoYe
         k4nUx9hGmvg9TrnqfdelS3YEywJDV9aAtaUE+seG86d9X5qVyfyk7b5PSigVPhQz0O0x
         XjQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=3q7TZ5J5xqKWdUS4X8SiQHdlDi3K3u69bSPkIoNlqR8=;
        b=ejDLziGW8QJyZfbHzCGH3Bs/8fvGIt7u6JwQQYjN6oZOjeGwcIDDSWGLGaTKNJDTwl
         AwxLwpiBcYHRjlz2ROMyqNr2K+3OMZ8QSQRSslCe5wnHMMxiQB/GbXPitg2sMntmRiA7
         lS61GEOVjJqeh5i8T1KI+FcnN+BskQa7DdfGTEynSfCAJZn9bizT2TJUdxO0VjMAduv5
         LvHPyKYGEdix/j7gYKI7cXCFacgFffRCnh8GFULep+cOM26tH0AevGwgtsvpb5NOaySp
         7CREykVhHvcF5hdNUqCJQNCYKI0WqZWkGYqlZ+Gx0hleda/wBSsh2Pa3PDo9K9xbmH4z
         0UhA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ufRzOZtY;
       spf=pass (google.com: domain of 3qljrxwwkajuhzb7idakzc3c5dd5a3.1db@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3qlJRXwwKAJUHzB7IDAKzC3C5DD5A3.1DB@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id q5si262880qkc.2.2020.09.03.13.31.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 13:31:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3qljrxwwkajuhzb7idakzc3c5dd5a3.1db@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id l67so4030734ybb.7
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 13:31:39 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a25:6555:: with SMTP id
 z82mr6003281ybb.472.1599165098726; Thu, 03 Sep 2020 13:31:38 -0700 (PDT)
Date: Thu,  3 Sep 2020 13:30:46 -0700
In-Reply-To: <20200903203053.3411268-1-samitolvanen@google.com>
Message-Id: <20200903203053.3411268-22-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com> <20200903203053.3411268-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.526.ge36021eeef-goog
Subject: [PATCH v2 21/28] drivers/misc/lkdtm: disable LTO for rodata.o
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
 header.i=@google.com header.s=20161025 header.b=ufRzOZtY;       spf=pass
 (google.com: domain of 3qljrxwwkajuhzb7idakzc3c5dd5a3.1db@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3qlJRXwwKAJUHzB7IDAKzC3C5DD5A3.1DB@flex--samitolvanen.bounces.google.com;
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

Disable LTO for rodata.o to allow objcopy to be used to
manipulate sections.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Acked-by: Kees Cook <keescook@chromium.org>
---
 drivers/misc/lkdtm/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/misc/lkdtm/Makefile b/drivers/misc/lkdtm/Makefile
index c70b3822013f..dd4c936d4d73 100644
--- a/drivers/misc/lkdtm/Makefile
+++ b/drivers/misc/lkdtm/Makefile
@@ -13,6 +13,7 @@ lkdtm-$(CONFIG_LKDTM)		+= cfi.o
 
 KASAN_SANITIZE_stackleak.o	:= n
 KCOV_INSTRUMENT_rodata.o	:= n
+CFLAGS_REMOVE_rodata.o		+= $(CC_FLAGS_LTO)
 
 OBJCOPYFLAGS :=
 OBJCOPYFLAGS_rodata_objcopy.o	:= \
-- 
2.28.0.402.g5ffc5be6b7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200903203053.3411268-22-samitolvanen%40google.com.
