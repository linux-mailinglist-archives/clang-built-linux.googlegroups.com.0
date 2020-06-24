Return-Path: <clang-built-linux+bncBC2ORX645YPRBEXRZ33QKGQEFNHMS7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FB06207D15
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 22:33:23 +0200 (CEST)
Received: by mail-oi1-x238.google.com with SMTP id l76sf1468952oib.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 13:33:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593030802; cv=pass;
        d=google.com; s=arc-20160816;
        b=ndGNBsJb6isbbh4S6O1Cey6a5FR8rFW8qZK+HcUkp7Qz13N5ULn/0aytgsbQLVsdkA
         VU6MAG4QKUSh5/dFhh7R7P0Emld0lf7h2E/VcfCmPKZNqLBgIbpQUy47ceOFiO5LL+3y
         NhLuR8kLTq7/dqyxFfeZF7IPEWYY1rC/t4GYdexZe5r0L6IBvFKBcfW8iFefRatDziY2
         jkyahPnfM6DiINrj6iXwgJ4UgJ9oQF60+pn5vnxlqEQNpXZaUVfBneyaohx2foXyYzN3
         wgkTqwwx8LVfk7DTo9gjxP1irygH8miBPmXuTfXVCqary4v2EYCDM7WwQSb+YwILB9oP
         nAKg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=Dg5d0M5cT333cNxWtwuBMKzpRlD3Fp+mmEt/BOhNhxE=;
        b=ZaXHQCa4okA0MM+GyF1orrAxvoAl4VuOUVcWLevui5+3J5QkgX4UIf02XpMI80Sam1
         isfghqtImLhoGAzoJzkZE1j4XJZFIwcTDd1yhGYcHfFDNpXgiVcmDclFOKJ5T1YN2k+n
         IvFLh9oOY4Jvwgbp0h8oVe9TxwffVZRh4mwNhhs4NEskPMbWJQ+5LtVkXl7Mwa5MPJlp
         xDFtCRIXKxhyRmQVUaXCh5s0NDCM0pWCB+0IzLbg1PAcv+S0Qpj7N1aBle4yWMrSDhex
         bRjEXPCiFHy9d4aUm7loFoKSg0iwpqwu6jkXwC0J91bH0m++/F+wysHZTq+bvCA5Ltmu
         AaQA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hwKULFJx;
       spf=pass (google.com: domain of 3kbjzxgwkam4cu62d85fu7y708805y.w86@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3kbjzXgwKAM4Cu62D85Fu7y708805y.w86@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Dg5d0M5cT333cNxWtwuBMKzpRlD3Fp+mmEt/BOhNhxE=;
        b=NMEjqTi4omk1TDQ8da005HmVx38noLyrKdA7M3tzOS4aon4tVclafi20UsHAs2Y41C
         V+d+UqfJDaqxIx9WaopVlsy58My2Yg5uxTlrUebFTWvIx0gYhe+4z2MyEq+9qoUcQFxO
         Mf+z08uJKWsoR4ONVgTtJiNHoiYtD5g7MIAcTBcml7rEKb0G6ckCUt4loMMANulbU6WZ
         r2g1JfjCtbtyt9dq3FaJxE1rRQ35agY02+wFzWjzaAaCHMLLr28E8Cwfgjx5fSMCbbMS
         Y2MgTgun6nOcf8te5f0j+yeA1LM9K1NbJh1azUMhfUJO/mr8sJwTWpW0D5neGPoIJdBK
         2NKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Dg5d0M5cT333cNxWtwuBMKzpRlD3Fp+mmEt/BOhNhxE=;
        b=aEnvPuNayuygTTOlIdpxL9BKzLkYjRVbjNAG0g2HWZC77hrmlBs0YYZPU8rUjDrR+I
         v7O/x87u2Zi27RrSG3wbu1NOfYaJ7uUVcxtZrKdkpCj637Nyse4vIQBcexum2W4Y9+1P
         fqOs4n10tOnKwZRh1rPYGYBnhoQlySCiTPSOw0gEMN4bdoK8Y/aB3aWBhk5Weqy89zY0
         JK6Jgn7av0BfvNMzceRZI6ca7M5b+sB5/CxC7MRYVQpGqEdDGbsvz3S6T2CiDZNN9Y2h
         AJ2m8kByyzrj6Gf3KbGgPns771y30E90kEO0PrEL3VZ0JBk/pOx5LOwluZgHlODSEwSq
         mufA==
X-Gm-Message-State: AOAM531Y71qUlYzsxsUdr0t3PjpzvGiqemH4ueaQlwvZyAT7FHUOboqY
	bM2uiTRONYSigeIDDF/EDHc=
X-Google-Smtp-Source: ABdhPJzlhwYlBvIY2Q3aIbEYOcij80bZLZZZdtWEveHqVbc9Z9PFAJphZ8SOpdYm8e5L5VUTxjxHMg==
X-Received: by 2002:a9d:6250:: with SMTP id i16mr11064715otk.307.1593030802317;
        Wed, 24 Jun 2020 13:33:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:4549:: with SMTP id p9ls729983oti.11.gmail; Wed, 24 Jun
 2020 13:33:22 -0700 (PDT)
X-Received: by 2002:a9d:e88:: with SMTP id 8mr25251281otj.40.1593030801977;
        Wed, 24 Jun 2020 13:33:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593030801; cv=none;
        d=google.com; s=arc-20160816;
        b=Lk6wLZHx/vaK3pKq3+h2AvMAMUc7feILVVD05GTGmsbJLsc6xSpnUglWCY9VqQy7uB
         Met+mZpqCYKzASvq0Izd/0ZNGICiS5DB10IIVTTNOSt+40kyBlJrP+5y+GPJh2OtCaBn
         oNpOyBHC4YYBUpFPQdg47qJB/pS/bw6qNYcOwf9UI3Rt9ypqEoU99EiUXE7hx80GS1vR
         hIpvGcJzxiX3WNQOoVaxHoednqwETPm1woVxPJWLX7lt65Bsfl1uPYIA6es6mL2bY24o
         OqUwJtCbEA68WmIWo/DEbipjecSJUjH9ZyQneqmMyEhijLau7a+c7+841Iu2iy/nNLDH
         h5uA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=AKMu7RfRr5zvA7HsB83o+xQyox7udGa4dX0knD98vpQ=;
        b=PTADHjCsnCpTHI6uSuUwPSbnQG2CHeyg8vMqpN6sr2d7InAFwTsFeKa6Ib79sIQBeo
         wuabqCfczbLUQpvbBd8eNXRfI8CjyD6tHblzK+I4kloGVNbYNuGB1eAgta5CflFmUpIf
         dvOzUeBKLl9zh4OuyL8bH+0bl3KTlH3/U1mV2/MZd52IwOZSnn5PHzv791nAhchGK185
         IGCtjQJYSZO3l1mWREkgndiN9K5CPlXoFIi63GaKbAxuMcYiG3mTbLBjY7YvJ72WaTrX
         JfkNGygSlWQmhk3y9pYqpZrehUFcb5EAcpZuwpF9d4ZNlvqj03iDikUTQ4v/Xj8glqqu
         Hj3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hwKULFJx;
       spf=pass (google.com: domain of 3kbjzxgwkam4cu62d85fu7y708805y.w86@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3kbjzXgwKAM4Cu62D85Fu7y708805y.w86@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id c22si1765137oto.3.2020.06.24.13.33.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2020 13:33:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3kbjzxgwkam4cu62d85fu7y708805y.w86@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id z7so3556611ybz.1
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jun 2020 13:33:21 -0700 (PDT)
X-Received: by 2002:a25:dcb:: with SMTP id 194mr50401188ybn.226.1593030801479;
 Wed, 24 Jun 2020 13:33:21 -0700 (PDT)
Date: Wed, 24 Jun 2020 13:31:51 -0700
In-Reply-To: <20200624203200.78870-1-samitolvanen@google.com>
Message-Id: <20200624203200.78870-14-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.27.0.212.ge8ba1cc988-goog
Subject: [PATCH 13/22] scripts/mod: disable LTO for empty.c
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=hwKULFJx;       spf=pass
 (google.com: domain of 3kbjzxgwkam4cu62d85fu7y708805y.w86@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3kbjzXgwKAM4Cu62D85Fu7y708805y.w86@flex--samitolvanen.bounces.google.com;
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
---
 scripts/mod/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/scripts/mod/Makefile b/scripts/mod/Makefile
index 296b6a3878b2..b6e3b40c6eeb 100644
--- a/scripts/mod/Makefile
+++ b/scripts/mod/Makefile
@@ -1,5 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0
 OBJECT_FILES_NON_STANDARD := y
+CFLAGS_REMOVE_empty.o += $(CC_FLAGS_LTO)
 
 hostprogs	:= modpost mk_elfconfig
 always-y	:= $(hostprogs) empty.o
-- 
2.27.0.212.ge8ba1cc988-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200624203200.78870-14-samitolvanen%40google.com.
