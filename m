Return-Path: <clang-built-linux+bncBC2ORX645YPRBBXRZ33QKGQEZC6S4XA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B5E0207D0C
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 22:33:11 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id u128sf2202529pfu.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 13:33:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593030790; cv=pass;
        d=google.com; s=arc-20160816;
        b=F7sSqeQQIxQDwnRzQjhBtIzzAykwcIAmmJuFPYF6ptWo2/mhCAmtsf5wL7Qu9H1/Lu
         ANevRfJoWuqXOGYvCGPgGmCXRn6cJmvGk0gdGKebdIkuipthF4JSA80JDsIcA7N/G+jW
         v9H1sC/ovIe2df4mpXMbWuiP/rqkYw3P/op7YTR5EDQ/Xxkp5fjKiPiznPFRgLRziGkM
         O+ja04VQQ7J/ha8nS6tpWiYYZplNIlHjZuQ0t0jpGbtR95Nuc2XCHOm2hSEWbHtQuQH9
         SHJuOU0taF3pW8S52Th1PW/Du3Zajf5V4vTH/ieJxA+Emw2KYZdEg0h5++8xhzILEDe2
         eYHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=07VMIqiwEgRzaVp1N3hRA4gnLBbWc6dMTjr5mBeUmhw=;
        b=s7Hf+3ReNyniyd5Wp61XQh20Y6bjqlzAhZOJ5uKXQxCuHPjv9RlwQkxRC/COxbObqC
         mk5KBUZ9GzOa1bu1NGAE6Y9tTFQv4wCLe/Nl3c52DcECOCzslfHTDjA+QVJdrTYah54K
         KRVZYqhSrk6rCVUtWx2ecBenEWZca3t55A3Lvh93y6U5HN7ddMsmFVr5zYZJamsh2M/9
         fk0gY3aJxsdqrHZlXfoQMHCOPGHAleb/deHor83DhHFYaufZO9dE3IcSReMPRevykB3A
         eiZO+pdKomTyk3VVI45kutwJH0KNs6eGH7oYpZLZWjtMfrU2mb1Y6K5ny5KmGECgfUCH
         ccQA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ri578dhL;
       spf=pass (google.com: domain of 3hbjzxgwkami0iuq1wt3ivmvowwotm.kwu@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3hbjzXgwKAMI0iuq1wt3ivmvowwotm.kwu@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=07VMIqiwEgRzaVp1N3hRA4gnLBbWc6dMTjr5mBeUmhw=;
        b=Zz1LdarX5jdxEZIwHVzm8bCXRSIfCe4FyJ9jpJQy6mRpgMoqZHMj4KraphY5KZ4yNx
         GqzPuYWcMvZ0rBwYmOSm4hRQovODe/GD/41btc/q/ndWhCxYeBNciTZKmRYFrWV51SCH
         MK1HYyWGu9t/uPLgC1wi+Tg2lP/sH0uFSyTuzrnSyhJAjZHPK2d+JNio7oC2phJMDt2r
         kihgPSiXqZgr7p7V/m5voiqHa47uNGwEsYk+PBnmgzJ2pOop62KpYRPCvPDlArqyuuo0
         /JzEXIF5XfOgWUQFUbMNngI/8h1OeB4FOyHdjb72mltAGvtgTD5M9tDbNFV/p9tbwZZf
         XW4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=07VMIqiwEgRzaVp1N3hRA4gnLBbWc6dMTjr5mBeUmhw=;
        b=drWOaNMkH2kVEYRw5f11J3tSQH2IZzZUm/Bv15zf2J9MSLE6Zef3QprlqndrEVWNaR
         52cqvwVKanCgY3/IgdX5P2eVQk0JuDV9/56Z0oLvMXDlbEcnf6djv8fj+d7HZRg6ZGpN
         d9QKbPyVE318p4Lx9AL2r9hiDJ6W/Wcq8L4MAoSOe3KZRB0LZ4cg39LorKyQElTF7RnX
         e5KN1xye/CSA6wa31IBksdUK0JTQOevpZAWnj+v7OoRbm80sxvo0LYUcpTHjJLTjsof1
         ambbHnpjzbzHQ8JcFYvUzcqozfb7DOknqiEdySP68r7h1hZRbCPjeOuaCXSCbg0r2/6K
         nY6A==
X-Gm-Message-State: AOAM530nOOPuKkhxO49ocggzglYKVBD+72t9+Jpzi8HzmGFrZoCLyu+M
	Z+EfbLMaH5Avqj10mmlFc5I=
X-Google-Smtp-Source: ABdhPJyKjoe+ApcQ12vyNdFUkYBuIe4vAafQ8aTskngpMKFqJgaoz+9rwrGtKYtihqmgrc5yuloMuw==
X-Received: by 2002:a17:902:728c:: with SMTP id d12mr8781147pll.155.1593030790346;
        Wed, 24 Jun 2020 13:33:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:565:: with SMTP id 92ls1333785plf.2.gmail; Wed, 24
 Jun 2020 13:33:09 -0700 (PDT)
X-Received: by 2002:a17:90a:65c9:: with SMTP id i9mr30715517pjs.201.1593030789882;
        Wed, 24 Jun 2020 13:33:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593030789; cv=none;
        d=google.com; s=arc-20160816;
        b=v/IgLqdE7pOaj9bI0oJfkirXeEd3L179XWYrvvhrhkD+YvyqI+ANSAC+606stFHZC8
         W+cUFAse+trrNuFyh+h77hqWoSisp/TNrx9IsAarO9JjN+QweTqKgwR1yWyJWbtWbOTT
         IGeYbfvuY4iBN4ikcTU+5dniY+o/dOk51aBFDQkwjIMXd6feOoLa0s6TL98Sv35/JpCv
         5xX9RZL7Kjw1z6s5CPMILXNoWjkob6+kHBL7WLLQOSxwY1j+chT30aiSKa/Uy1fQX28i
         0fskO5LNp1HAoTH30scoSsDRF18lD20p+Ps75s1IwRc5a1A0ga65e0PV0OlKOK/GMQAP
         dZhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=7CIu5VjUyqeUAWF5g9yThD8i7PrniBSkPgVIeHI/Dgw=;
        b=HudykyqCZczWkmPr397Go2lwD1s7zdvu0xYTPYeCB0jpvCUXCTKB08YO9032za8UAH
         QQ0+2CWpcKMmpKanu00+JjiV/pNyB1zMnwXgUKu4E2cgVCgVdqTxe2GpCDq1c/Sbi7pR
         jrYfdGyEMylZvqGtDTmiPAxWl4pQ8vOpGeW6/hE41a2EYS5OVz4Os+P1CZqtUflfpiRP
         qom7omRkocrUiUS0Ojv5xAGT2pC4zSMuICmmvJTqUaDcFE4Eo4E53yvH+node/NO7gxc
         M7aJWZikOWt0dxhvVurGktCovC7v1/tgQLOaVHqt8pp6y2AVb81AfXX+zyP7QtUUpc9a
         FoIA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ri578dhL;
       spf=pass (google.com: domain of 3hbjzxgwkami0iuq1wt3ivmvowwotm.kwu@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3hbjzXgwKAMI0iuq1wt3ivmvowwotm.kwu@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x84a.google.com (mail-qt1-x84a.google.com. [2607:f8b0:4864:20::84a])
        by gmr-mx.google.com with ESMTPS id w15si216790pjn.0.2020.06.24.13.33.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2020 13:33:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3hbjzxgwkami0iuq1wt3ivmvowwotm.kwu@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) client-ip=2607:f8b0:4864:20::84a;
Received: by mail-qt1-x84a.google.com with SMTP id o11so2406306qti.23
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jun 2020 13:33:09 -0700 (PDT)
X-Received: by 2002:ad4:47b2:: with SMTP id a18mr33619619qvz.121.1593030789019;
 Wed, 24 Jun 2020 13:33:09 -0700 (PDT)
Date: Wed, 24 Jun 2020 13:31:44 -0700
In-Reply-To: <20200624203200.78870-1-samitolvanen@google.com>
Message-Id: <20200624203200.78870-7-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.27.0.212.ge8ba1cc988-goog
Subject: [PATCH 06/22] kbuild: lto: limit inlining
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>, George Burgess IV <gbiv@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ri578dhL;       spf=pass
 (google.com: domain of 3hbjzxgwkami0iuq1wt3ivmvowwotm.kwu@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3hbjzXgwKAMI0iuq1wt3ivmvowwotm.kwu@flex--samitolvanen.bounces.google.com;
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

This change limits function inlining across translation unit
boundaries in order to reduce the binary size with LTO.

The -import-instr-limit flag defines a size limit, as the number
of LLVM IR instructions, for importing functions from other TUs.
The default value is 100, and decreasing it to 5 reduces the size
of a stripped arm64 defconfig vmlinux by 11%.

Suggested-by: George Burgess IV <gbiv@google.com>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 Makefile | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Makefile b/Makefile
index 3a7e5e5c17b9..ee66513a5b66 100644
--- a/Makefile
+++ b/Makefile
@@ -894,6 +894,10 @@ else
 CC_FLAGS_LTO_CLANG := -flto
 endif
 CC_FLAGS_LTO_CLANG += -fvisibility=default
+
+# Limit inlining across translation units to reduce binary size
+LD_FLAGS_LTO_CLANG := -mllvm -import-instr-limit=5
+KBUILD_LDFLAGS += $(LD_FLAGS_LTO_CLANG)
 endif
 
 ifdef CONFIG_LTO
-- 
2.27.0.212.ge8ba1cc988-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200624203200.78870-7-samitolvanen%40google.com.
