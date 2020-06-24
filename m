Return-Path: <clang-built-linux+bncBC2ORX645YPRBCPRZ33QKGQEIGV2FOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 53D65207D0F
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 22:33:14 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id m63sf3470167ybc.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 13:33:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593030793; cv=pass;
        d=google.com; s=arc-20160816;
        b=evnFhAewCTzQzcyjScq2Kl2c0CBgvtQGhUMMa1YkRoz/YUnW8s11HS6b8e67tNBoVm
         w8foqBVTlXH+5ST+0vOLGCmMm+qtwUJGV4Aw0gAZU51iEErcaPnSPmae0Q3euMEtZzYg
         Kyf889F4FPfT9fUFIib8YkWSUw0LPiODKhNt27JrNXNg9vkcCXVMxTYA+/3Eqqq6Y6DD
         TPVs+Q3DuZTiufHaFTvdiQ7iGT+CbSeKuD6fOnTv3cZAT0WrAVq8OyeItSnoKKox9BOj
         a3lC+ZoeqHk9w9QPDx17+rLx78ah3mX9rDnaijSiuWXoJFaTpaGNO9Wdw+j0fII7Fpc/
         rMnQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=LR1ondYAJZQQIw5Z4rDf+OfqJcNayCIGUByjqjZHnOA=;
        b=ceC3KcddUssVtWZWvtb8MoWtvr4mzul0htVZCvI/fB3lKAVumxWj7VAZEIpaUab8c7
         7CP1IfF2Fk9B/CmY/huTDuJJyVGI5oqjyrz9pK5W85X00rDvi11MmS/0k7nmk/yM1gX3
         3kiIQGQmJy7+MSHuCdNyJcsb7GKbHETNW6Xc5QNiohPTCUHeLys+73MWqX3eYcmV97hG
         C3hVNFQp7ibmcSaltYILQ+qPFvCdU/o3LBAJ4eWD1MQp16s5GS+2vJUtHJOYr795qWwt
         fUgn1QgHhcRs9ca+tSgEwRgWashl+5CstusfBeW4d6dtMyUc0NE4HlBM39G2CMfS3svZ
         u+8Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EWRzLy7u;
       spf=pass (google.com: domain of 3iljzxgwkamu3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3iLjzXgwKAMU3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LR1ondYAJZQQIw5Z4rDf+OfqJcNayCIGUByjqjZHnOA=;
        b=EvJ4Vcn03d2sG8T+VtD8P3BaXBP06YkNFpmcMdaBLmjEk8Jmx2lV4RvMvtxrjZp6ns
         FJ7maAx3elurSIZfPHcTSLMrE+J0BQ4OEOpH11+BjsFBGf+70dRpeW+6T2ycDlkVP+Y+
         2wLob1NnZKLDc2/zII7w6NCTAVYaOfm4bK2eboxZul+Urml7T6+K0JX86l5F32utA66J
         N2IHm+rBd8lPqPqm/2rbs3PkWx8ReUz8D99ecgpX7xkCcsO+f6Du5S2c7qf1AhLaTlHa
         TaVfAXtj7jgx4WPeawtmXn+wL52c7dQh4d+uNYrIUb9gHpUoA9rgT+DYUT3Z3QV4qjIe
         vrYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LR1ondYAJZQQIw5Z4rDf+OfqJcNayCIGUByjqjZHnOA=;
        b=L/bfwIQQZUWuj9+Tv3Ql0BaxHScSFTlyrqPWrPCtUB4ObTF1F58+99m1iqyEjf2NS1
         tc77/GtJV3nLTaCpL+ZAVgIi/tqjadKXKI/dkscFexz0oz6mFr0q7Bb8ZPBwLCmU1aSm
         uSnxAuHIm/0d0tx6DXdVENrcalwk5xIH5DAIGihMV/+2yZ4WS3UGM0YN3ZLAoAsb1aAV
         iNYUH5ZVZD/2NHwjprdlY656inX3TJsG2ag1F6kanE/C8SIphLXxOCPNy1PZ5Ed2WBPx
         MRVN0oJt708Ql9nMZzzXgdihLMIXGq5eCC/JPHYWW3htEX+JBTShhuspt1ocJqINXAh1
         ZWvQ==
X-Gm-Message-State: AOAM530OBdBgguRUpAEeh74IIVaMWCSdyyc+fVb5gA9rK8hvZ2Mt3Uer
	4VrE1Df+reON4pUmi1KZ1T8=
X-Google-Smtp-Source: ABdhPJypho1CYRvlkBzB1CGjrJ5L1v+wydgGXAty31UxhtkTI8ub+tnTfpKBkegVxcHK75Od6uN0qQ==
X-Received: by 2002:a25:7003:: with SMTP id l3mr46204819ybc.380.1593030793362;
        Wed, 24 Jun 2020 13:33:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:3412:: with SMTP id b18ls1215518yba.8.gmail; Wed, 24 Jun
 2020 13:33:13 -0700 (PDT)
X-Received: by 2002:a25:50cc:: with SMTP id e195mr48660443ybb.483.1593030793031;
        Wed, 24 Jun 2020 13:33:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593030793; cv=none;
        d=google.com; s=arc-20160816;
        b=otfzCJCPlOnlcrHL66NT8YX2omSpG43s3KnHJdt4xtuvgSpwDtSmLEsABB8e6OAPCR
         JHkbAyva717RUjv+OSn+hbbeaoEIcE4B/XI+VXkRCQkXluRoEZ+ohOtcZZz6U6LRfToA
         lZHaU+AddpaX1jvAGnlmuLOk6kSIBN5EIs9ngMjDk9dLQlkqgSmbVYBKGHL0hvHN9hXC
         H+im0k16PmG9IWbPNidu8mtVbJoBn9uK47Bu/pa3B04uAOs7WexXBvFxijclmd5fzIIc
         8m2T/7uMKH8/Dg3/9XJl2uNlmWHlLXycZYW6RLdqv9UnK05yXJkqng1wT6h2SCbcYUL+
         2XXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=RZTReFFMdjgTHNlONDHd9zt1v7eMyKbgxXLu5A5pzj0=;
        b=He37yc5Rothf2fQbEcjz9rXhWdQP+kXXKaf0WEnlhFmHHlncjErUbalhb/ncl0sWGO
         Dsdh7gD7uCCtYYAWGj8feQhr5UBxvZjujtOTtL7u1Qix8sNa9vEOvQcyCkSaHrEg+7hq
         73c8r9ImrovpsaQmhm+a/B2HFgYAM9yU0Q9nUo5MtWvXDg1PLMhIPouhVrKv29MD7+9K
         apOhZU4qnJ+2Gw4o2YHeSiw5bERUuyhApQ58ijiO4LdTj6a/wNaE5hWFMCBUPZursUIB
         TInhw8EFXTaNETI8+sJWQ32ZXjp7XHiEdjbPWkx4xLWl9hK36z8yS+ggiCfAafIkT3H7
         37JA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EWRzLy7u;
       spf=pass (google.com: domain of 3iljzxgwkamu3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3iLjzXgwKAMU3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id v16si1760006ybe.2.2020.06.24.13.33.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2020 13:33:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3iljzxgwkamu3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id e20so3465723ybc.23
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jun 2020 13:33:13 -0700 (PDT)
X-Received: by 2002:a25:4e0a:: with SMTP id c10mr44794280ybb.346.1593030792698;
 Wed, 24 Jun 2020 13:33:12 -0700 (PDT)
Date: Wed, 24 Jun 2020 13:31:46 -0700
In-Reply-To: <20200624203200.78870-1-samitolvanen@google.com>
Message-Id: <20200624203200.78870-9-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.27.0.212.ge8ba1cc988-goog
Subject: [PATCH 08/22] kbuild: lto: remove duplicate dependencies from .mod files
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
 header.i=@google.com header.s=20161025 header.b=EWRzLy7u;       spf=pass
 (google.com: domain of 3iljzxgwkamu3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3iLjzXgwKAMU3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com;
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

With LTO, llvm-nm prints out symbols for each archive member
separately, which results in a lot of duplicate dependencies in the
.mod file when CONFIG_TRIM_UNUSED_SYMS is enabled. When a module
consists of several compilation units, the output can exceed the
default xargs command size limit and split the dependency list to
multiple lines, which results in used symbols getting trimmed.

This change removes duplicate dependencies, which will reduce the
probability of this happening and makes .mod files smaller and
easier to read.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 scripts/Makefile.build | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index 82977350f5a6..82b465ce3ca0 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -291,7 +291,7 @@ endef
 
 # List module undefined symbols (or empty line if not enabled)
 ifdef CONFIG_TRIM_UNUSED_KSYMS
-cmd_undef_syms = $(NM) $< | sed -n 's/^  *U //p' | xargs echo
+cmd_undef_syms = $(NM) $< | sed -n 's/^  *U //p' | sort -u | xargs echo
 else
 cmd_undef_syms = echo
 endif
-- 
2.27.0.212.ge8ba1cc988-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200624203200.78870-9-samitolvanen%40google.com.
