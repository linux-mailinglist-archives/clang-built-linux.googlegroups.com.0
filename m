Return-Path: <clang-built-linux+bncBAABBJUV3T7QKGQENIHKTZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 8286E2ED088
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Jan 2021 14:20:39 +0100 (CET)
Received: by mail-lf1-x140.google.com with SMTP id i23sf6320808lfl.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Jan 2021 05:20:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610025639; cv=pass;
        d=google.com; s=arc-20160816;
        b=BZao6E7VRbd6y2HmWGagMJKK3L1T/cfFXI4ryv6qToHV+fPgnB0kneST06oRCO4COq
         I9hcEGs6T7eoQV49dA3OMEfm/4CuzFKc2kTeuoZMKmtXN2jSGE0n/eFixmaM+nan4R/U
         yTr9gZT88PMG9RvUcFrPGUNQLnA6uUnTtZxaxupiCniFsiSfNGdp6UxoHiKWtoJe66t+
         R1CfWrkDv0UJbF4YSYxlNhxuGKaJrGwMdYLBRC2hjKfBeSm1dmQX4bhDikOC80FnM4jO
         pBw/GxHOKiI1Bg28kfZngJNqx9uKrdokFXWEokKH1QFNrXGwYYXl928UbBqiKzL7J2+u
         rGHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:date:dkim-signature;
        bh=TC/oGc5eRdvnc86GYpc1OmBVF42eHFB2xcMJTCpFuVo=;
        b=HaDS+65QyMAokEQaiOCnRnavvFxeDYzaabStgcn2yF2kXXCyuXkca4togmI/BgPJDn
         Ly50nazvrq8aBplgvw4mCuUL5hKRstofKE9Y3jdNuWwDEmOGhZExhulfz1g4/Z5B0nQM
         rXfyw9zS5MS9L6HPuXqcitwZ/sIdh87vP1M6qp3TuLwkdjnABOMP4e4togaOU+LbMpYW
         N9r0bVlhcWav2XAQlcHxq2jBsHL17am3HUyj8B8vePos467rjoB/CITXWEji5trPelBD
         ZuQQDWf8xpWtYfsgxwbVxdp4ndITYiEjELUgQ/TwwTkUyN6qRLS0i8uVpKlAs7Nwf4g1
         Vhcg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=Awz+ntc9;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.133 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:to:from:cc:reply-to:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TC/oGc5eRdvnc86GYpc1OmBVF42eHFB2xcMJTCpFuVo=;
        b=eF7JfTRjOfZ3EQy5I//UJA2ry+tN2j6Pra1/TYaSkhh/cBaNW2GhYidNNg9zY7nDYR
         O/PZ3uulE8PHcvDX13XlM2CxgRlPgY3jDHwg4LpNZj9hRJ74TWgPLyH7y87Rd1aZW4EY
         RPQSflYXI4pQOOZCV6+sC9Voo4EYAEgK7yojYwr0aUe+l7W592ZHYXNR48PCrXNK7Mvd
         dqeRRzah5NXDdFXVr5ZAxZ4WL0lbWVIPjJf9uxCvRFjKGWw9Zty1L0awIeceLY9V3fBj
         Kfivzt2tCNyPNeofqWhxRbFOZHX55stN1SADq+ttrgVUqyPKoujOFNk12MboZYm7fO8t
         5CfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:to:from:cc:reply-to:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TC/oGc5eRdvnc86GYpc1OmBVF42eHFB2xcMJTCpFuVo=;
        b=ssijRdEBjCP/sGjAbw9N9aqfpYr8eP7BcNvbSsZRIKPUCGdmya4x8yKp0q/BYxzwI0
         /Tsm9oIN9TCgiRITK+5WJju/OW+WjVg0kg4vJKu/YRjQjxrxmUakOM4eCmEyfhMmzibR
         gCV3Krr+oaGCWJQOWfIsqpez8djvbO4Ak45NOdKwt4OrflTqc+W09iVJPwbBqOd3RT8U
         eI2uD0TEbbUNjM0OyEHOJ2IfxtvNFXkEYiGKMlu1wv8RbLsA9UnBRxPzoDue3XlUk+ux
         btyUaFbGVYM3MKzHqYYm015h7p6opckei1llBHAFPfUC75NnGtZGufU+vYqj7a3kofaD
         LXZw==
X-Gm-Message-State: AOAM532sVEv+rZQkhwFLmuXc8S2ocV4nJiTyASl90gOQGUxrA2nmTPFg
	62H/gwkHaKCTSCIFW3TBB6Y=
X-Google-Smtp-Source: ABdhPJzDihZ5J/fnRDW0b+UicmYsWoQy2fFJMmMnEf+ipbpY34WZuwoUkoTUvopWuibxiDhLTq6TBg==
X-Received: by 2002:a2e:5844:: with SMTP id x4mr4044852ljd.336.1610025639074;
        Thu, 07 Jan 2021 05:20:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:980e:: with SMTP id a14ls1171948ljj.7.gmail; Thu, 07 Jan
 2021 05:20:38 -0800 (PST)
X-Received: by 2002:a2e:a58b:: with SMTP id m11mr4007470ljp.329.1610025638292;
        Thu, 07 Jan 2021 05:20:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610025638; cv=none;
        d=google.com; s=arc-20160816;
        b=cCDn8R6vJ85V37g3PnyWVlnotzqnDBtW5ZX13Yqjp92c2GxcV+knmBzxOZCeeZ826s
         TcyNGIWqvGWE4AfgIsQOO2Z4tAaUMpD+oiVgvs/BJ5S1XBlkyV9sVVgEbzpRYKq3K3iR
         OvDCBM7j9auRw9gzE9iLvKvKH17HYApRDSLQjBntXHJ2sXgPntcqtXC1b/o0OUlNIGYz
         +TO/FLhE2EQSYpeKzC1zbm34wWKSS/tHo1sAolStdG9o1rdX4FEI0urQNSXpjG2HCHzB
         PjtcaBR1te+Ur9BAxJ/H2Si8OSMGqaKo4lX4njjYxL0EolMcdr1Lc5ac/7iaIxOm77fF
         ZNYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:dkim-signature:date;
        bh=1iHiRQzHqAO/hOdIJm7931oVSjvi8g99iSxotTA/NNE=;
        b=V6Pf4Q78oRa2dgwyf7MedTDsK6neQiney07gb3DjiJwsrMUbmhvDDIVYjXJQF9NN7R
         MQVR6H4dGnJtu/kLgEZ2N5DQ8cIGOqL+gDc5AzoPSxYIPXOoCcYusa5deAtF+RjoxwDS
         VMbk/jllPiH7F0EoGXeFeLz35AObdo6alTDo2Vvn4LtKvMAfd35kNfCc1vxiSFewgyPv
         xbvEAePEszqKLFrse4LyEU4VbRlXrgVSBcy5m4+musCX3LB3w9pj5eOIgSivlsVTwp2m
         yMNWSX0IsrrlAShREnGUtlWADY13ta9DoMVc8CEYBAO4kYAvMTUkC5Tmp4j8uGdWV8ho
         LURw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=Awz+ntc9;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.133 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
Received: from mail-40133.protonmail.ch (mail-40133.protonmail.ch. [185.70.40.133])
        by gmr-mx.google.com with ESMTPS id f21si353645lfe.9.2021.01.07.05.20.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Jan 2021 05:20:38 -0800 (PST)
Received-SPF: pass (google.com: domain of alobakin@pm.me designates 185.70.40.133 as permitted sender) client-ip=185.70.40.133;
Date: Thu, 07 Jan 2021 13:20:33 +0000
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
From: "'Alexander Lobakin' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Kees Cook <keescook@chromium.org>, Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, Fangrui Song <maskray@google.com>, Huacai Chen <chenhuacai@kernel.org>, Pei Huang <huangpei@loongson.cn>, Jiaxun Yang <jiaxun.yang@flygoat.com>, Alexander Lobakin <alobakin@pm.me>, Sami Tolvanen <samitolvanen@google.com>, Ingo Molnar <mingo@kernel.org>, Ralf Baechle <ralf@linux-mips.org>, Corey Minyard <cminyard@mvista.com>, linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org, stable@vger.kernel.org, clang-built-linux@googlegroups.com
Reply-To: Alexander Lobakin <alobakin@pm.me>
Subject: [PATCH v4 mips-next 4/7] MIPS: vmlinux.lds.S: catch bad .rel.dyn at link time
Message-ID: <20210107132010.463129-1-alobakin@pm.me>
In-Reply-To: <20210107123331.354075-1-alobakin@pm.me>
References: <20210107123331.354075-1-alobakin@pm.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF shortcircuit=no
	autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
	mailout.protonmail.ch
X-Original-Sender: alobakin@pm.me
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@pm.me header.s=protonmail header.b=Awz+ntc9;       spf=pass
 (google.com: domain of alobakin@pm.me designates 185.70.40.133 as permitted
 sender) smtp.mailfrom=alobakin@pm.me;       dmarc=pass (p=QUARANTINE
 sp=QUARANTINE dis=NONE) header.from=pm.me
X-Original-From: Alexander Lobakin <alobakin@pm.me>
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

Catch any symbols placed in .rel.dyn and check for these sections
to be zero-sized at link time.
Eliminates following ld warning:

mips-alpine-linux-musl-ld: warning: orphan section `.rel.dyn'
from `init/main.o' being placed in section `.rel.dyn'

Adopted from x86/kernel/vmlinux.lds.S.

Suggested-by: Fangrui Song <maskray@google.com>
Signed-off-by: Alexander Lobakin <alobakin@pm.me>
---
 arch/mips/kernel/vmlinux.lds.S | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/mips/kernel/vmlinux.lds.S b/arch/mips/kernel/vmlinux.lds.S
index 0f4e46ea4458..0f736d60d43e 100644
--- a/arch/mips/kernel/vmlinux.lds.S
+++ b/arch/mips/kernel/vmlinux.lds.S
@@ -226,4 +226,15 @@ SECTIONS
 		*(.pdr)
 		*(.reginfo)
 	}
+
+	/*
+	 * Sections that should stay zero sized, which is safer to
+	 * explicitly check instead of blindly discarding.
+	 */
+
+	.rel.dyn : {
+		*(.rel.*)
+		*(.rel_*)
+	}
+	ASSERT(SIZEOF(.rel.dyn) == 0, "Unexpected run-time relocations (.rel) detected!")
 }
-- 
2.30.0


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210107132010.463129-1-alobakin%40pm.me.
