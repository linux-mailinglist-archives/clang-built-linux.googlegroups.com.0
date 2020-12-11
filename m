Return-Path: <clang-built-linux+bncBC2ORX645YPRBJH5Z37AKGQE52YODNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 749E72D7E5C
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 19:47:01 +0100 (CET)
Received: by mail-oo1-xc40.google.com with SMTP id x191sf4873365ooa.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 10:47:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607712420; cv=pass;
        d=google.com; s=arc-20160816;
        b=O+JsgIe+hfea/rI+/S/VzTbiEeGf4BGFEW0UPtB5hkLFKsTSQ19shDkH3J6PDz7hmZ
         U1z8otHecjsliLGTZlfz7byF3RwN9vrz1oRgh5UOa6LWa49OL9+pGeoISpLUWBJMba3I
         mYT/4xSDY2SxG4xnTuVYM6tZrXh/mht4JjUGpLfGRIr7jtpCNS3Wfoa3+SNveWavmebg
         FPsgSvWky0xRNjuSciZFSMOT7esKcUtaYMwOEekLbbfbnkg/ElWmt+9MqIl8MDexL8bC
         UrgYitzhoeDOuUsiLvJum5IUgtBINysbgkWgDH8cXAN+0FEsK/+oMR/zoGQl/5t/0aEK
         bAWQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=wSHoBvkZaqJ1ytGX/u4DZsNp3J7bxmsne+UbQcnoPso=;
        b=JJLj+3cKsRuXCFXUO6MRxlWeQ/BMpBxshs0v4V32A766KasiNbnamHghJ2kEfOzbSw
         fQ2dA4u9mdy+KHg8vlofl9dCJTfIT1mQ0D+Yh1dwLbCSCtx36lA/pQ0Ny4tjOS1eaJl0
         z5y3eoxyqodUAN7uNNTssxWpH+7zLqplGporJZHlr0oHEaG7P4a/cWCc2GgOua6aznoZ
         sReTyfIVL3yIrdADFXDLKrIaOdreostiB4bqvYlRCJVwXZ+sIn+QsgODR2NtxKl0s2Ua
         LZNi62hIQeDjUJ/Gff3nTIeAWhA9K/sMN2BROxMYDLCXfXTOReeOK+LwGtRKuttoUPqh
         AsUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sVh7pgdY;
       spf=pass (google.com: domain of 3o77txwwkahqksealgdnsfwfyggydw.uge@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3o77TXwwKAHQkSealgdnSfWfYggYdW.Uge@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wSHoBvkZaqJ1ytGX/u4DZsNp3J7bxmsne+UbQcnoPso=;
        b=GdUbkTon4WD+HK18YtV8H+KYj4ZsZWYQlHp3NpkRvBfRhmeP2FaSyUavhKeVpVOi/y
         KsDQaSuclaC5FNSR0qeYTralY3EgM0ryxu7QHu53z4nqfvU1Xg0mT8XI+ScgIofse7L6
         5K8J9ZMkfviunLyqjffm15m/BbTbMlXefyb/MHy/OPFP9QnsWUPjO05twLIwK5VLKEZg
         raKgx7vu/y43uRacWDpS54Po3Oj83IBEw0gTFsIljS/yi5dYR8BegfxvD2/0Lcz4cWTZ
         GrLZVq8P9EO2D7NrIoljdBCfXetjs3bfxw3r1sKpN7CxKU1FbkV21kdlTqXCvt3GUJPK
         ehCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wSHoBvkZaqJ1ytGX/u4DZsNp3J7bxmsne+UbQcnoPso=;
        b=Rhx6EFyR1MqTWG2MsPCyHLUFwNiL3DVc73LEE91fHuJE46dP5fWhHo116FMWmd2lQR
         PrAXJq9ITZS0K4UQJCT/1eL+zQGLZ+G6F43MXCoPrdMN5EjK9Fcm3bkzwoepGEJU0FRg
         mRL/xrEh6sqmBJCSxteZtI8MBcZzVZmc/xrnVu1rRZFkXcTRbY68ivnLbYRxuqODNC1O
         FNoJ/3cePB8ZZf6y9zog1agcqPkAzwmTsIaFDUUavrcTRbKDJ2+RbUw562j+f+x2XVm0
         nqFWR/r7Pm2Eg/mxIw5vkLqx6X2FeGy66JzcmL3Mq72mBMSLMnFRoIGXYQ8GLz4Lx5gn
         lXQg==
X-Gm-Message-State: AOAM531LPHHKN9maSgjiM8PxkUSihPzbihWIjCUyUXiMgzX0+KQzagO8
	rfpInDWLieVBMoVQ8eHq59A=
X-Google-Smtp-Source: ABdhPJxFEPQSsfqM9VVvc26ziMc4NUsWSSEtvN/RHgQPfux+t3zf+h06dhQg2NuqtUk3gI0/9u6qpQ==
X-Received: by 2002:aca:d841:: with SMTP id p62mr10071996oig.38.1607712420425;
        Fri, 11 Dec 2020 10:47:00 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:bb89:: with SMTP id l131ls407532oif.8.gmail; Fri, 11 Dec
 2020 10:47:00 -0800 (PST)
X-Received: by 2002:aca:fd84:: with SMTP id b126mr9920250oii.85.1607712419901;
        Fri, 11 Dec 2020 10:46:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607712419; cv=none;
        d=google.com; s=arc-20160816;
        b=zk0AHJKDitW6EEyWYHqLj3QrT642XeezAcBTHev+pDlrzFf7ZN3w2Fm6AGgtJWizi+
         yQXVEODH1svJGfZnOoxutJhD4JhN8tpXzM1Gk8bxpls4WLWmPD7a6Qt3ISMTnPaaPC2z
         d2uzlw4xtqf/F3B+nUveiuHPjJgL0jkCGyBBKlevCPIW/kZGCX/sSeqziMR+vtyIOj72
         lF5V1DRgua+YQbPXwP4m1Q2K5IYtwmwOM7lg8vDwJn9HiyX1qp2UkVWPOgaOZySzYlg3
         sOLE0T/b0tvHL0ygEavG/yR4rMe6HzdUROgDo5wWRLRX/O6eJQogqUfNkUWU5sUVKALY
         8cxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=2x/zjVn7tqzzMwlgW94lOF/53GHge2qEfxVssZKSVKU=;
        b=DVbyEz6nsf7cuSwjpifqfeQgGos1LwOr4ZuMLnwGubUw2AbCqMLttvqYOcAL+33aU6
         uY0kwzUlh5oezbXnesK6+b8sRFbQkkzpx6eFl3WjS97JzwMDf248EB7WGNSuNk78HgWf
         Cc4alxHxyXHEA0WLOiNeRik5PmCZWBmd4lLYpqJI2iEt7En9l+RhYZALlesNFEp0Eax5
         DlBJyA8R9SvgH69LNjFYzu/q4byzQa4m1L7Fuv2UTaz0iGCoNA33sGmil+mP/Mn87QUj
         LL8dIywj26GlGiD+LV+Va/ChQHHtRN0p/GFALc4rDmX3/XDfy/RGQqJXKDhKdjG91qBp
         pFNw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sVh7pgdY;
       spf=pass (google.com: domain of 3o77txwwkahqksealgdnsfwfyggydw.uge@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3o77TXwwKAHQkSealgdnSfWfYggYdW.Uge@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x84a.google.com (mail-qt1-x84a.google.com. [2607:f8b0:4864:20::84a])
        by gmr-mx.google.com with ESMTPS id c18si580690oib.5.2020.12.11.10.46.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Dec 2020 10:46:59 -0800 (PST)
Received-SPF: pass (google.com: domain of 3o77txwwkahqksealgdnsfwfyggydw.uge@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) client-ip=2607:f8b0:4864:20::84a;
Received: by mail-qt1-x84a.google.com with SMTP id v18so7134153qta.22
        for <clang-built-linux@googlegroups.com>; Fri, 11 Dec 2020 10:46:59 -0800 (PST)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a05:6214:a94:: with SMTP id
 ev20mr17352143qvb.56.1607712419531; Fri, 11 Dec 2020 10:46:59 -0800 (PST)
Date: Fri, 11 Dec 2020 10:46:29 -0800
In-Reply-To: <20201211184633.3213045-1-samitolvanen@google.com>
Message-Id: <20201211184633.3213045-13-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201211184633.3213045-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.29.2.576.ga3fc446d84-goog
Subject: [PATCH v9 12/16] efi/libstub: disable LTO
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
 header.i=@google.com header.s=20161025 header.b=sVh7pgdY;       spf=pass
 (google.com: domain of 3o77txwwkahqksealgdnsfwfyggydw.uge@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3o77TXwwKAHQkSealgdnSfWfYggYdW.Uge@flex--samitolvanen.bounces.google.com;
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
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 drivers/firmware/efi/libstub/Makefile | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
index 8a94388e38b3..c23466e05e60 100644
--- a/drivers/firmware/efi/libstub/Makefile
+++ b/drivers/firmware/efi/libstub/Makefile
@@ -38,6 +38,8 @@ KBUILD_CFLAGS			:= $(cflags-y) -Os -DDISABLE_BRANCH_PROFILING \
 
 # remove SCS flags from all objects in this directory
 KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))
+# disable LTO
+KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_LTO), $(KBUILD_CFLAGS))
 
 GCOV_PROFILE			:= n
 # Sanitizer runtimes are unavailable and cannot be linked here.
-- 
2.29.2.576.ga3fc446d84-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201211184633.3213045-13-samitolvanen%40google.com.
