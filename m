Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBCVK5X3QKGQEQ5R5JVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id C948220F7E3
	for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jun 2020 17:06:52 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id a6sf5383838pjd.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jun 2020 08:06:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593529611; cv=pass;
        d=google.com; s=arc-20160816;
        b=hRgLp2mHiqfMF8RgJlHAicYioGSBy9VbBlNo6vHFa/lRBBxQnMeIYsSox4T6GgIWFx
         bK96t2Krq2dvLK9GeB2B427noApvmrR909k7pgrWNuaXUtYjgNsQmqtwldbmx82eE69w
         0O2s2nsHHmH5Fag2lQJf6XJAMDMe1UUZVU+6XXFN8A+Fe6yvASmrES4/4555RMTu5ouo
         brQd2RlwFjC/8vAYp6gn8npx/NC9ehQQtTpz8kPef+6iE+0B+Hw4g3Ihv3r7si49Y8LA
         WQU4rHTq/rTaY+QbApx5Cx5R3vnDbDcq3/M8wdqEDuHdCmc0Rj+GCtkHuJV9pHVWFDKf
         BSOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:dkim-filter:sender:dkim-signature;
        bh=jzOomQVW2pFGqgYVr/gqC9842wfv7UY5zWe2oJZzmas=;
        b=O4NO/Pf8EvO3sAQODTZEcKHUZFLtKZkA8H1UcqFSVYR6SX/0vCFB1j3+mErw2eRicB
         WURnJJfQ29+ef1uJmm0wOSb+s/K3EMrn0JQRu80auqBgbs7jhSbVgBswB1mxUrnpzCMR
         5jBU1PSkWjhCr4856mbqzLLb4d8hDG8SY/07zu66SrQmbFVvgD/1TpBUgWLX9vmZaZAd
         XlZOG+yZjZkHGxrNywZRVyBzyznVJgZakwYNdYsoedbjv5uF/xnEtJtmQcfxg2MfPZKN
         +p9Xc8Wu++d11cD9B62voiKY/YlboHDvgKF8YGM4QoFukzRaICqWFsKpFyLgkZROtwmP
         gdOg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="D8wEor/Y";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.75 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jzOomQVW2pFGqgYVr/gqC9842wfv7UY5zWe2oJZzmas=;
        b=bIpPqssm6x8hhus0GCiaW1xLoEy1DNgLXRPUonkauDcWj0EQQWfwz5bar3vszFRVwG
         EWb3/oaEez4YvdjK6YudasNuEMyeOIt5jH05UszoeYrCkS5ZG7Ah/Y+JAuj/dHfm1rol
         L6mPCZc8TZ/9RUNCdYxV6EjIldZ8XgGRCk72eRYMWOH2qyzO0nZkjLfN5Ffx8BfEESir
         r1eSM57+2O1lAylmt1AQgMN4w3iXFprfZe2IlcoaQUyB7Gaf/t9sXdXJy8dg79iz+Lft
         mEELXJYY07lewXDUdX5GNMfyhpVuN8Px4c8uVPV3r/UrlskFl/ceezSltusFjie647/e
         sI+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jzOomQVW2pFGqgYVr/gqC9842wfv7UY5zWe2oJZzmas=;
        b=kyCVy4Gv2Uvd4zpIXJCuIo/zbrhSsCuWXjaQd1Yv7YnuEAYIcS7hGYeKaaPgDdTx1Q
         Xx2yR6ocbJyk9HvL42GJHTs1ZPH7dL5RZVZ30zDrJx1R/+lV7nGkENhTqmeLJzX1hlQd
         llucOHj1t+SDAMZvmdbxOpgw46V0qwRiTgu58758zyJFNcQ0l+jkPh63Y/bev1deuk+w
         Sjh/z2CY4fxbOjAYiU+8DxdnKwEZPz+eSkoZy+1HBl4Lql+pevHT4pqRdIdU5mmZ198D
         3d3LxrKBNmLE53pqpGzvbBHkrbo6cWR46KMASkAQo/+5L5O+LkNhk0eaRet7q6HKd8eX
         TTYg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531QwyvrwFbB+WICW81QRPbNzj+jzk2Lmq/kLEbiWi2tjbPAdNdl
	zbVknOXbuY5rR+/gg9qXPIE=
X-Google-Smtp-Source: ABdhPJzV8D+c57Q4wEcSFFbIAd9epMIHYP7oRTNiczQKcghYAYCAld5SQzP1GH9BREsk8iPpYp1aVQ==
X-Received: by 2002:a17:902:d685:: with SMTP id v5mr9084617ply.117.1593529610400;
        Tue, 30 Jun 2020 08:06:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:718c:: with SMTP id i12ls1412147pjk.1.canary-gmail;
 Tue, 30 Jun 2020 08:06:50 -0700 (PDT)
X-Received: by 2002:a17:90b:f16:: with SMTP id br22mr6951224pjb.170.1593529609970;
        Tue, 30 Jun 2020 08:06:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593529609; cv=none;
        d=google.com; s=arc-20160816;
        b=gAn69Smu8tn7X2zYuwK5B2Xe+YTnsjIKFwUR55zjIwBXd9K9kpttRJjFmbM1rFTGTj
         yyVQsFbe9J18Ysi8Ahz2t+/8/DNpANgmhaGpCMzQoXUcrxfFhnCwsmxZnqwVR/RJg5KG
         JsL+MQ6We0q/9hR7vFjgiVkgMz9Qq2/IvhZw+BurY+HAUOr8j4aiI58tAzMYiLVzULN3
         JA8MOXrQqOxNfTSvoq66LgzGvC+O0OlHRR7K20qCbX/IDY3ejT7dhhEVuixXHBClH2aN
         85U+fHKc1da4r04vP7Bh1Qov10Hy+TQcp4IxI2QZR3hY+8ab1OuYUgZZpdRTz0Id/fKY
         VBUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:dkim-filter;
        bh=ex39KmxT7SPfAvJbb0E3RhcbX8PtVqkNn9BxsYalfbs=;
        b=PmZZ88SPRsYT65J3teUo0cV5qw9B6jjV2Pa5D/tE8evoHG6XTwh/mD8D8iIvdWdB8M
         shsxCvlGpC5dntyYLKF8gZ+Gui7KJzP2ncJ0pwDa2CiKmwZff3jIj/z1rNjF4j1/eL+j
         /KXiOK6uN620vFn6dOkt/OdyjqSkML+oVQl/38SRYY/4+78F2M68WDhV9+kuH4qTsemy
         akaGskf8dH/Ki7u3hBtDDJF9sv+1aGoMr0+rtv7vMmzs7Y81o8IvBLS+RsfL2hrJB90O
         o4/A4T0j/AF6gM/E+BwELrJkTpSFW6RMcriOfpBomp3gmxj5qzj4bVpzcOHhm6UaHVKi
         VrSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="D8wEor/Y";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.75 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-08.nifty.com (conuserg-08.nifty.com. [210.131.2.75])
        by gmr-mx.google.com with ESMTPS id g22si119692plq.1.2020.06.30.08.06.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Jun 2020 08:06:49 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.75 as permitted sender) client-ip=210.131.2.75;
Received: from oscar.flets-west.jp (softbank126090202047.bbtec.net [126.90.202.47]) (authenticated)
	by conuserg-08.nifty.com with ESMTP id 05UF6SbT008591;
	Wed, 1 Jul 2020 00:06:28 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-08.nifty.com 05UF6SbT008591
X-Nifty-SrcIP: [126.90.202.47]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, Masahiro Yamada <masahiroy@kernel.org>,
        clang-built-linux@googlegroups.com
Subject: [PATCH v2 1/2] kbuild: fix CONFIG_CC_CAN_LINK(_STATIC) for cross-compilation with Clang
Date: Wed,  1 Jul 2020 00:06:24 +0900
Message-Id: <20200630150625.12056-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b="D8wEor/Y";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org
 does not designate 210.131.2.75 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Content-Type: text/plain; charset="UTF-8"
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

scripts/cc-can-link.sh tests if the compiler can link userspace
programs.

When $(CC) is GCC, it is checked against the target architecture
because the toolchain prefix is specified as a part of $(CC).

When $(CC) is Clang, it is checked against the host architecture
because --target option is missing.

Pass $(CLANG_FLAGS) to scripts/cc-can-link.sh to evaluate the link
capability for the target architecture.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

Changes in v2:
  - New patch

 init/Kconfig | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/init/Kconfig b/init/Kconfig
index a46aa8f3174d..d0313e7725fa 100644
--- a/init/Kconfig
+++ b/init/Kconfig
@@ -49,13 +49,13 @@ config CLANG_VERSION
 
 config CC_CAN_LINK
 	bool
-	default $(success,$(srctree)/scripts/cc-can-link.sh $(CC) $(m64-flag)) if 64BIT
-	default $(success,$(srctree)/scripts/cc-can-link.sh $(CC) $(m32-flag))
+	default $(success,$(srctree)/scripts/cc-can-link.sh $(CC) $(CLANG_FLAGS) $(m64-flag)) if 64BIT
+	default $(success,$(srctree)/scripts/cc-can-link.sh $(CC) $(CLANG_FLAGS) $(m32-flag))
 
 config CC_CAN_LINK_STATIC
 	bool
-	default $(success,$(srctree)/scripts/cc-can-link.sh $(CC) -static $(m64-flag)) if 64BIT
-	default $(success,$(srctree)/scripts/cc-can-link.sh $(CC) -static $(m32-flag))
+	default $(success,$(srctree)/scripts/cc-can-link.sh $(CC) $(CLANG_FLAGS) -static $(m64-flag)) if 64BIT
+	default $(success,$(srctree)/scripts/cc-can-link.sh $(CC) $(CLANG_FLAGS) -static $(m32-flag))
 
 config CC_HAS_ASM_GOTO
 	def_bool $(success,$(srctree)/scripts/gcc-goto.sh $(CC))
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200630150625.12056-1-masahiroy%40kernel.org.
