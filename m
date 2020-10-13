Return-Path: <clang-built-linux+bncBC2ORX645YPRBMHLSP6AKGQEN62T5AY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id AED7928C5E9
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Oct 2020 02:32:49 +0200 (CEST)
Received: by mail-ot1-x339.google.com with SMTP id x12sf7036474otq.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 17:32:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602549168; cv=pass;
        d=google.com; s=arc-20160816;
        b=mU5vKNv9EIQ0mI1bR7A2EFGvbu0bNhdNoldCnVuS7FE3weBjodEyjnapJkNLwXu606
         2AtiMAEAfS7ZVNSnIe3XR032NAX0MwRy9gAzBifaDvz18y6cvBzc1ENjUp/3D/mfPSz5
         e6UvoNAxbF0hdEkWGrULdMbAZRo566LKnMN8W9r3QzTqkQgyVBaae+7Em46WYlgGZcF7
         e+9BSXs0DkYuYQPiqX7cOyxlgoT/f7U4caBGqRZcq6s0i5+h4XgLL60Xi60gYAQ29gDM
         SeUpyn60QCRWk36BgkE1Yy9Qvkdg43nYwUp/0An0a+/rVqGZpRnZCBfFtwzOtMrBV6kp
         hO6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=suiNIWR4L2hbp88FRvJmk+2N8ZLBnb2AmsLmeOtH5dY=;
        b=QOcbxLvfgjqXNHclro3rl5mYga5PSFhuin3rVBDe4RmusBP0PSt3IXcDsPY/JPipG3
         XliukuMgndpOvdjVZvgAjlL3Zxv1ma6wXTDsoGou0FbPP+qo+bRFRIhQDfzqCSi/8S23
         zHZC55LFRWESz4HjnXrc3+rfXR4mVlCiviGH3WRWPPyn03jSnz8HhxAyJoL7ajZeMR4r
         fMVyjEMQ/FeUNJBYhpaP+ZX1s9b7rXRncPd9i2Ewn4TPr0sjh96HNfu5zKaSvq5C+m5c
         DpzOzxpSrhCZTDmlVhNK3U2eg4bXdpVH91JTx2UzUKpYyjkaI9QTnbqJqE7ALPdTOOlx
         jlkw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bb3nDFzI;
       spf=pass (google.com: domain of 3r_wexwwkalaiqcyjeblqdudweewbu.sec@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3r_WEXwwKALAiQcYjeblQdUdWeeWbU.Sec@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=suiNIWR4L2hbp88FRvJmk+2N8ZLBnb2AmsLmeOtH5dY=;
        b=YAJRtCtuvwFi02Xfu/8EE3eo7NKFJFoK2qru5i5b0XoB+FPspUvL2uHRei3nZubXze
         IfQ3rsHpfvflAteP9HqYH+QxwA1PPbz0qVJwC3AipaEu0SUH5yUIW8C8CwJYf8r8IuwY
         WdvMzmTMkEM1aEzmmIATxrwHsTH7AArC5NpRay5U+Za3m0UKectcYzB1xetSIgr8pxBT
         ChFZ8wPNhx9KIflWy97xvVD+vXDADgCI7IXADRnkHZ/s1KpT1EhCFsVWKTI5KMIo3IY9
         fCDxSetgIAkwZOZF3HY9rqUz9tAjmuJ1AXGap/6nSpqivHjz06+0nH2ZnuYhYpbpQLrB
         kuew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=suiNIWR4L2hbp88FRvJmk+2N8ZLBnb2AmsLmeOtH5dY=;
        b=LYtf5P/ibWJSFrkB/dYhRt/T5pEApQutoDlsH+4xCa6X3Xc262NfR4dFufDcSO3pbZ
         FosUKoeApzGFIQmh9rr/y7j1e2pT/KaTc+HKLE+j+fZIhr7idurJZMATOx3hhW//zb0Z
         LIWYU5n5BAGy3dByc1BlFSEjynwQZSoFb4Zpgc4Pcl7SyllqS9iN992Nhw/iEh+A5WKq
         EFHyDzPP87/anY2x+hU9bpvVMQwGLppDX6G8f0ClPMRdxPTOXbnJaLv8owD1c2pXNiU6
         4CKUOMaV/EbGHQYBzsIQ5dGYAz/ik3UyUzuWGF6tOVrt6wOYPsq7kzXHJHWKbsOx3F+u
         HHGw==
X-Gm-Message-State: AOAM531o9aIpbIbbVzK/zSCrhoYanWHTb3eKcqK2k415dYgjgyWdg2L7
	NnPH9FH0Lum15JNvgNrYy40=
X-Google-Smtp-Source: ABdhPJyJPVTY07RUdrSYI0YUlVV7H1x+VQhTEBK6F5YIZIitoUWUuO1/7zYO90XpZE5zdw6PgHsqHg==
X-Received: by 2002:a9d:3d06:: with SMTP id a6mr19167648otc.368.1602549168599;
        Mon, 12 Oct 2020 17:32:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:e154:: with SMTP id y81ls21582oig.9.gmail; Mon, 12 Oct
 2020 17:32:48 -0700 (PDT)
X-Received: by 2002:aca:6702:: with SMTP id z2mr10664765oix.140.1602549168250;
        Mon, 12 Oct 2020 17:32:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602549168; cv=none;
        d=google.com; s=arc-20160816;
        b=LUC0H+8dp10Ut2nKV1fvB+E+gBUA8BFEcUgWz8u7Yk92/kRaw0Pn9jJsD51bhFuWHT
         tDwkd3d4DX0JjwV3bbcoxWjiCe15i/bscXK8W0F5xiaotGv0Vkb63PGdUeKWIcuKyh08
         zjtw4rj53coiiqPbaEy6TMKpdDkmb79V5AxlyusVXSq+24Y7ciFOGsqD5ZioQKgM3gx2
         VuHgMufznWDl7RoNw1OIQoNpmjlnUdWy3cBPxnaKhtjIRNB3KsofC7F5RtHNuGA8otXp
         kTdnh980emQFK0SrVqPntWFqD2pqZNRit/t5nuhS1QL9Tk/NXu3wR0YFQbxJEm9cDoE8
         t6+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=KGusc3+RBCNZzwrkW+3708RrOouUa5FTnw8PnBTY3Ig=;
        b=BiLOxuxdKW7UGhSpTRX0L8iZJro2LMXog/d1RCOhQa3xRU9/1Qsvg58uXss8j9yjpW
         gJO7YmfglBXGsoLUuiDLSfVo535CA0zhKM3ZC9mQV45nG2bIvswjXYYivDKMmwkQVvJ2
         2pPpun5HRvLGmvcnOhrWWLwJgEQ/68W9x/4TGpQJWUWwES8c9UXMyyf+uj8qnxrppcXx
         2b2mv12izLOiBh6UcsgT15XnuJbOplzg7uvJqO213CgTVat+q+IfRNoXEUH0bgvlbCL9
         TamgkE38O+X+SOvbimEQA/a3is3pR67OlOi24gKgrBc5+w4wE5M4S1D4RCukB/y0THT6
         NfSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bb3nDFzI;
       spf=pass (google.com: domain of 3r_wexwwkalaiqcyjeblqdudweewbu.sec@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3r_WEXwwKALAiQcYjeblQdUdWeeWbU.Sec@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id e189si1067895oif.5.2020.10.12.17.32.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Oct 2020 17:32:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3r_wexwwkalaiqcyjeblqdudweewbu.sec@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id z27so9379814ybi.17
        for <clang-built-linux@googlegroups.com>; Mon, 12 Oct 2020 17:32:48 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a25:2689:: with SMTP id
 m131mr35046414ybm.506.1602549167733; Mon, 12 Oct 2020 17:32:47 -0700 (PDT)
Date: Mon, 12 Oct 2020 17:31:57 -0700
In-Reply-To: <20201013003203.4168817-1-samitolvanen@google.com>
Message-Id: <20201013003203.4168817-20-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201013003203.4168817-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.1011.ga647a8990f-goog
Subject: [PATCH v6 19/25] scripts/mod: disable LTO for empty.c
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>
Cc: Will Deacon <will@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
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
 header.i=@google.com header.s=20161025 header.b=bb3nDFzI;       spf=pass
 (google.com: domain of 3r_wexwwkalaiqcyjeblqdudweewbu.sec@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3r_WEXwwKALAiQcYjeblQdUdWeeWbU.Sec@flex--samitolvanen.bounces.google.com;
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

With CONFIG_LTO_CLANG, clang generates LLVM IR instead of ELF object
files. As empty.o is used for probing target properties, disable LTO
for it to produce an object file instead.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 scripts/mod/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/scripts/mod/Makefile b/scripts/mod/Makefile
index 78071681d924..c9e38ad937fd 100644
--- a/scripts/mod/Makefile
+++ b/scripts/mod/Makefile
@@ -1,5 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0
 OBJECT_FILES_NON_STANDARD := y
+CFLAGS_REMOVE_empty.o += $(CC_FLAGS_LTO)
 
 hostprogs-always-y	+= modpost mk_elfconfig
 always-y		+= empty.o
-- 
2.28.0.1011.ga647a8990f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201013003203.4168817-20-samitolvanen%40google.com.
