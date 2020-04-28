Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBUWVUL2QKGQEMXBT2UA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EC641BCF93
	for <lists+clang-built-linux@lfdr.de>; Wed, 29 Apr 2020 00:14:43 +0200 (CEST)
Received: by mail-vk1-xa40.google.com with SMTP id c14sf306021vkn.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 28 Apr 2020 15:14:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588112082; cv=pass;
        d=google.com; s=arc-20160816;
        b=0s00QBN36VSm+r316JXZsS0Pn6CiCZjeDl5CS4PUgib/Wl9HYgK1RVTXSg0RlvP5Ru
         kAClf/K/bF+j2B6MXNmEhq1x4Oi77wYxJTmJakHSqmyrvBs/um007l/3AkqiX9QwLRNj
         8caWAFI5gPf/wm4V1UWYNta/B9Bwb8gMyhBD/jcZBWM875lpIow+nv7BG0nJ/z/v6u2R
         bHWsiuPsN8dDXtf2PsL86fIGeJydgU9OfHuPonVim/6qyk5ukBIcGud6cKfiDzm/TzvS
         XvkzHil95MOVRoY7JSA9Qcsl1EkPWHubY3neYLCuJEduPoIuGDf17E9XPi5S7CPF4xwm
         ec5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=HVVujxUSbT5zR8QFSKunHtZGd4BtAH85jTgZWEZ3pW0=;
        b=uzD7BNGEu3qxQXVCGFdDaXENowXUmJCVUXdm+5nxnknt/LmUzCuJArMTh8sC2DG1QQ
         938W4uHwlb93F/hazpeKRQFkc7JIvciUGOmM98aFXoBYkats38maUHdWKDjG8QV7mrZ6
         5fmWR9+cJ4536Rz4kqhMPSPpLFXCuRHuSyb8YOgWsH3VGmJR4YUgApnm0VzZOrlMTExR
         8ZpmwDQsg0r90S54Pf7lWKr6f3ZMF/qhRQ2XcFNnbxKYHBytoeTDDO54WXyAoO4EfiAP
         Hr3kQ/Pt9tdp62yq0XdKI3FRqeumY0+WKEBMhMc746UW6lyYmgpcbmgQuhYMl1Igifrh
         59TA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BdArs0mr;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HVVujxUSbT5zR8QFSKunHtZGd4BtAH85jTgZWEZ3pW0=;
        b=Uj3cbfVmD2NPoqbg93of9yJR6x5AskZAMpqYND8qh7rP02IM30Rk5cLD8g31cUGAau
         YC+4jSmAeiVpNKY0Ztdt5AgMPkZafca51LE4p+DuE8BtqVdfWcKEDv7w0FRAN8bPbYq+
         ANHpqDCfJV24p+sQTfmLkn5i8Vbelb+/JuXGYabUdtwPCd6ZiIz090yRwdkOuFke1wRB
         ye0wG7hIx7zL27/37FEv/DZUGgZ5E33aUszEFeJFRO2C+zfOCayGsXhVUcqZh0g6A7Ho
         kuqzn1E//IQaw5gj4X8oQFR66/Jnt4Wv6a+WfwnJCJMMFHU/7nCvUu2Yt1dP+kG1DQkE
         v74A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HVVujxUSbT5zR8QFSKunHtZGd4BtAH85jTgZWEZ3pW0=;
        b=qQpUNKjAJPQK41WB7Og0KOAe4xzSB97S4kTSZSPVjmWk36AfuqvDq7j8dxCoQSZFGr
         jRenld8cjZS3IvVPoTN9NwZlYfCxWcej1Fy4+q5GoJGetnW06UuTBB++ewRLsYG+wDnX
         ij84jVy5ArR5j2AERUa7rFBqhX8UFnM45Cg6t5kKjjGP6nFlKT61dzsAwG8A1Mutt3Ge
         0upCoic/HhGJ9kR2hTpPy5jaDC/+wXcOiSTSEIMLG242g3xNoe1BazeMUrBcEfSy0s5r
         CoAwEXwF2HKwkYrDinxgXw6dPCm51bg1iWTP+h8aR0+AS7jHC21F86SwH28szsJss8P6
         ZZpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HVVujxUSbT5zR8QFSKunHtZGd4BtAH85jTgZWEZ3pW0=;
        b=iBAjbLUfBmYsT429L7yI413qWGpHuFFBJOY5kFda0snTMYs79krIhEkn4+9DPmFtQK
         CQMjMT0MgXs81wk7U2OXP7EI4in5cRNDqkRYk3nGiw++29QojteJ5BIBYP7It1plhN+d
         bmmUw0cgU3SZoRbrLHVnhtCSczX2GSvN2jJWLX+MJ0fK9L2Ss6QAjqqGzSopP/ndNQxe
         D4arnKSFplPQ2DbUUnur2/E5vTiTwwLQJYOXK3hOjI38h4WNh1i4UOVBRs59ZqB838IR
         11x+AqaSkvy2SHb7x9HCVskjOSnE1TB6qfYcIAYV5brVbrQaZWPGSJicTRjgCSweM6ju
         ky1g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZPQ8KJY752RGebZMJJgfegle3oQJJmhC8EQ9jZQCMmdTMGna8j
	zdr60KD3PXogj1JPMiO4WoM=
X-Google-Smtp-Source: APiQypLnwceAudZUz4R2xzeOxvskGs6MZFpaJihA1FLDKTi04ww3lmSo6AKSfRyazjHs8U5cp1yuSw==
X-Received: by 2002:a1f:7cc7:: with SMTP id x190mr1560681vkc.39.1588112082440;
        Tue, 28 Apr 2020 15:14:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fb99:: with SMTP id n25ls997069vsr.5.gmail; Tue, 28 Apr
 2020 15:14:42 -0700 (PDT)
X-Received: by 2002:a67:ea93:: with SMTP id f19mr24455792vso.216.1588112082056;
        Tue, 28 Apr 2020 15:14:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588112082; cv=none;
        d=google.com; s=arc-20160816;
        b=Sg7kS/IvwKi95gGkY9w3LqdWJER+dBklkzGejEEw5gt6iK7+y47w2fejrhRpnakuVc
         Tq9ccWGcYwwvHpQ4VlHZ7D5nHpvn3tOdmxUB8fMvUJE9tmY3HJEwvZJu3Y86xU7d9wrm
         Gb8+BPyZHnZhJE70vOlFnw32FKg1VEXzRKVT2M6xSj7KO2nMpJiTNP2DszkP7lg4/e1G
         Gkt0zuDhHW8v+kb29SpCaOmN3cEdrv4EYd34wWr1Rt0yrmCYvyMquABZf/T1NkYbvtOi
         sDxzQapNWEOX0b+Xv9sW5CQPjkS1+ozBwLjo8VzvnRPuFHERRNZ/usyHAnRsIg/wjhmS
         oDMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=7XOJVk+5A6GR6NFBTWs7oO+THtl1yOH5oBnsh7etyh4=;
        b=Aq3PIYLJucxjZ03D+DE/Uiu9fW6RmModeWnyuBmXagOEYObOoBaAfojUa4K9k2z1xH
         p5lj9zNux9Go53QzvAKWlNee0XCsLBfpxg0d43g82D3Se8FE65OLAofBACEz30SZ0Lsi
         vw+8ECXsnStBF868hw+tTrr2L/yZDVowdC73IgPKHnd7sOn8xQqvwOXXJf1nUzhLTGIG
         1BANa8grw9j+7uIXHTmTtTuM8sRMYEkSw4hIC31pGWugOMFkjsSdGMvIf0c06i5jfdVs
         N3pbqWSvqdYkTwrGvYlx0Yd+eYP1GIl/KCqe9RvfN7smt2iRTj3at1OHguJtXyFuAaTg
         LbQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BdArs0mr;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id l3si65814uap.0.2020.04.28.15.14.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Apr 2020 15:14:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Received: by mail-oi1-x244.google.com with SMTP id o7so4603358oif.2
        for <clang-built-linux@googlegroups.com>; Tue, 28 Apr 2020 15:14:42 -0700 (PDT)
X-Received: by 2002:aca:d06:: with SMTP id 6mr4352574oin.78.1588112081485;
        Tue, 28 Apr 2020 15:14:41 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id 186sm5267476ooi.30.2020.04.28.15.14.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Apr 2020 15:14:40 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-kbuild@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Dmitry Golovin <dima@golovin.in>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH v4 1/5] kbuild: add CONFIG_LD_IS_LLD
Date: Tue, 28 Apr 2020 15:14:15 -0700
Message-Id: <20200428221419.2530697-2-natechancellor@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200428221419.2530697-1-natechancellor@gmail.com>
References: <20200423171807.29713-1-natechancellor@gmail.com>
 <20200428221419.2530697-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=BdArs0mr;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

From: Sami Tolvanen <samitolvanen@google.com>

Similarly to the CC_IS_CLANG config, add LD_IS_LLD to avoid GNU ld
specific logic such as ld-version or ld-ifversion and gain the
ability to select potential features that depend on the linker at
configuration time such as LTO.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Acked-by: Masahiro Yamada <masahiroy@kernel.org>
[nc: Reword commit message]
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

v3 -> v4:

* No changes.

v2 -> v3:

* Add Masahiro's ack.

v1 -> v2:

* No changes.

Sami, please scream if you are unhappy with how I worded this commit.

 init/Kconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/init/Kconfig b/init/Kconfig
index 9e22ee8fbd75e..c15ee42b82726 100644
--- a/init/Kconfig
+++ b/init/Kconfig
@@ -23,6 +23,9 @@ config LD_VERSION
 config CC_IS_CLANG
 	def_bool $(success,$(CC) --version | head -n 1 | grep -q clang)
 
+config LD_IS_LLD
+	def_bool $(success,$(LD) -v | head -n 1 | grep -q LLD)
+
 config CLANG_VERSION
 	int
 	default $(shell,$(srctree)/scripts/clang-version.sh $(CC))

base-commit: 96c9a7802af7d500a582d89a8b864584fe878c1b
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200428221419.2530697-2-natechancellor%40gmail.com.
