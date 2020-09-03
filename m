Return-Path: <clang-built-linux+bncBC2ORX645YPRBKNFYX5AKGQESYXKWAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id 81AB725CA5F
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Sep 2020 22:31:38 +0200 (CEST)
Received: by mail-qv1-xf40.google.com with SMTP id k17sf2496834qvj.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 13:31:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599165097; cv=pass;
        d=google.com; s=arc-20160816;
        b=wmuPBi3h+eHEs8NhrBf5gncd6nmg27Yb5Sn3Vg+PABXlniDZbEx5UlFUcrbr1dCusQ
         N6//tbpWijXLPQEwnQa+Ey+wZ8jMnWmBAhXDyX4msQ+KjnlRFqoJNKOgBJmc6ZDqDACG
         Ga2ol+qAB3ARw4rSHPW2mebL/aMBeEp1/8TKRlDyQ0wlWvMMccP0BgHUj6kkoy1HXyTs
         lZLf2czd+B7RcrfpTWuEg0YNK7cEv/+kGZIZD29kqEg19jXipcsIGdsnkvlwcgs8UMia
         Wul6kb5DwzMAD6LrbfsXDkHxkXOZkm1EAlmylovZMyULXQ18oynhJ6R3enrXvYQnPoO3
         +J3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=NV0aHfVqzJWDGWrpQIxxfO0Yw6ZXNWjpyLBiwHgvKnA=;
        b=0KqHTiAvM8J8Pt4kJYWa0V8dUYlWc48s08o224DzoNf+Hqf3JmWcUUtSPhLwYk8WeO
         QQSLsmcqWxfqXODFHdIxs4GFBEY+fEZ0kG2I3Hp6jys5UUocnsamI34ZnC/U4n3I+11x
         WLa+jM1AsPo7+dSjcz+6pfLKChomimZxaeYSoz8v50dqMFgw7KwDHyahC1pPSGjpTNXL
         PpUPxy8aHeDN2e6bUSuCkdKeB2DyWV9Qu90a8IKjc8xSuFsVivXnbNemXtgtZwwtq7Rm
         mKVEMk0z5gSvd2UxjxPLpzvlmYPMQikRt8Dg/xqshdiYryj5M/7WFuNFsuV3bDJdtMA0
         0gAw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=npSffdai;
       spf=pass (google.com: domain of 3qfjrxwwkajmfx95gb8ixa1a3bb381.zb9@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3qFJRXwwKAJMFx95GB8IxA1A3BB381.zB9@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=NV0aHfVqzJWDGWrpQIxxfO0Yw6ZXNWjpyLBiwHgvKnA=;
        b=BpIhIZ79Fmm9m1Tfb6AFzJAqVryRuq5/D5HBcVnjteFInvvtC5g5hQn66pMuLFKdtM
         c4zfN6CDSHe2BSvG9sVCcaCSt/bGpzOVElqUIqNnvo3LPwSW774yst8rUasj6/23Hy4/
         4/Se8tHjcPyIBCBSO+szayhqMitc3h/rWPa77UFobDjTxP7tKmkHAw3PLevCO8DYCGtR
         FuL3GxwCSB2hj/GDFi5l61jZZUyGYK0QRV16rJE9MeexQqN7iLum+tNj84OdivAIRj2T
         fzarwYgynGZAPrhyk8M2GNFFKIgv1Qsb2B/JQLjUMYOriOSlGaIMYmWCN1XCDIsE1Bwy
         yzww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NV0aHfVqzJWDGWrpQIxxfO0Yw6ZXNWjpyLBiwHgvKnA=;
        b=Uygd63RKK/cWRZ7vrmDfkD+HWMZkDz4+hsPtR8V7uS7cGhdlcTkrt9R7FPVR38U/Lz
         cfMC7aUG/o0afu4FfOLgSpQC47Qnz7aOOboTS3FM/9F25l5K58elGDSj/oPgi548x3rC
         xrHtSn3dE+LkX6tIE8McTZsN6OMeakUQozc5pFB4vfc6m2MsBlsLTCqxscJ71UHFE63O
         wAMwcZ7hoL0v8VOosDIeOuu+2/4jhDBE2UHrcRF0BfUAJeVt13/SDDZTjmjI3I3qjbqV
         5kZeo2g1yDLZjY6Kha+lEQhoFJOhf4Cl2ZGhayfn+7JSA1OhYapFDMkRu849MaF97Huw
         2w0g==
X-Gm-Message-State: AOAM533GL2Jc5eGly2/Txco33t7U60MjyHP1UskjLOc0MGHlmFh1gcUN
	UpxZgE88jyn7bBoYBywxmFM=
X-Google-Smtp-Source: ABdhPJzFLGBWUnu6mFFUN/cRzM58+J8SSnzMsUjcETZ+YY/UmDJnBNVeGOdABenftuM6uMh0TuWTdw==
X-Received: by 2002:ac8:660a:: with SMTP id c10mr5293539qtp.217.1599165097610;
        Thu, 03 Sep 2020 13:31:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:346:: with SMTP id t6ls3557069qkm.1.gmail; Thu, 03
 Sep 2020 13:31:37 -0700 (PDT)
X-Received: by 2002:a37:9346:: with SMTP id v67mr4991532qkd.482.1599165097215;
        Thu, 03 Sep 2020 13:31:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599165097; cv=none;
        d=google.com; s=arc-20160816;
        b=lOeKMOzZCYR0WSv32gVrMWkxD9V/rSEt9Oo5tKFRfn83hPe65juwE/RkUkN5Ogbhbz
         23t0KQ3K9w/P4GFVapv+Wuj4ZiDSWrDAYObGimLlh5Ti+LS5D+Q/Uj7IEpTxc78iKna3
         EWn28v8nF5Hc2XjQGL9SARl5HgrZwRyDXvIcK576vWBZ6ISRRw7B1FDaivGGvtk8fgyg
         wBXE0G/MrpkQ4UtNjrIERcbj+fHY3G30HnMTXGCh1iXpGsYsGsS+SLhtnID3ye21H1V6
         GRuiCE3pJvaRqP8C5Zo5MSWmRFDhQC8hqfuVFmx34KVPgXtmYMCNcRpihEH5nhYTRicl
         Cz1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=iN3GbBjTX25viV6xW68a9oo3MkQJYWkKKPfs1TkAluY=;
        b=AG+uaNyWTbGZSsZSpnKiJ631UHOWT7vxtLNABnACMnM5GcNL3lPIJSqOguhrmOwaxF
         9whS0XHzCU5u6jWB2dcvU3fFqgBM0La2WQzbeeA2OxgO7ABA9PhL0JICbzdPXydrq1AP
         VYWYRhJmCsunt4xo6k2eH2o695q/ecJ7SgoGQAfhMlUdD7iUSsLiYXhOKVhaDTyeum9w
         fcyx+DbHEtJwQ8bcPWKTgMukp+8lz/2Ko26OwTNrBQbQDGX2duR8p3skCWtUlIA0QMvC
         4o8FMzYYbctWwdzwuz25qxBTTy7zcBdsrLd+U2kLy7dSrANkc0UFzFeXrsOeHMjBMwDO
         Qzvw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=npSffdai;
       spf=pass (google.com: domain of 3qfjrxwwkajmfx95gb8ixa1a3bb381.zb9@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3qFJRXwwKAJMFx95GB8IxA1A3BB381.zB9@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id n26si280237qkg.5.2020.09.03.13.31.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 13:31:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3qfjrxwwkajmfx95gb8ixa1a3bb381.zb9@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id 207so3969048ybd.13
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 13:31:37 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a25:1455:: with SMTP id
 82mr5771395ybu.274.1599165096721; Thu, 03 Sep 2020 13:31:36 -0700 (PDT)
Date: Thu,  3 Sep 2020 13:30:45 -0700
In-Reply-To: <20200903203053.3411268-1-samitolvanen@google.com>
Message-Id: <20200903203053.3411268-21-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com> <20200903203053.3411268-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.526.ge36021eeef-goog
Subject: [PATCH v2 20/28] efi/libstub: disable LTO
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
 header.i=@google.com header.s=20161025 header.b=npSffdai;       spf=pass
 (google.com: domain of 3qfjrxwwkajmfx95gb8ixa1a3bb381.zb9@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3qFJRXwwKAJMFx95GB8IxA1A3BB381.zB9@flex--samitolvanen.bounces.google.com;
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

With CONFIG_LTO_CLANG, we produce LLVM bitcode instead of ELF object
files. Since LTO is not really needed here and the Makefile assumes we
produce an object file, disable LTO for libstub.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 drivers/firmware/efi/libstub/Makefile | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
index 296b18fbd7a2..0ea5aa52c7fa 100644
--- a/drivers/firmware/efi/libstub/Makefile
+++ b/drivers/firmware/efi/libstub/Makefile
@@ -35,6 +35,8 @@ KBUILD_CFLAGS			:= $(cflags-y) -Os -DDISABLE_BRANCH_PROFILING \
 
 # remove SCS flags from all objects in this directory
 KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))
+# disable LTO
+KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_LTO), $(KBUILD_CFLAGS))
 
 GCOV_PROFILE			:= n
 # Sanitizer runtimes are unavailable and cannot be linked here.
-- 
2.28.0.402.g5ffc5be6b7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200903203053.3411268-21-samitolvanen%40google.com.
