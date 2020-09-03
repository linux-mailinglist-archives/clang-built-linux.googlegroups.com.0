Return-Path: <clang-built-linux+bncBC2ORX645YPRBJ5FYX5AKGQEISZB6GQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3b.google.com (mail-qv1-xf3b.google.com [IPv6:2607:f8b0:4864:20::f3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6171225CA5E
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Sep 2020 22:31:37 +0200 (CEST)
Received: by mail-qv1-xf3b.google.com with SMTP id k20sf2499393qvf.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 13:31:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599165096; cv=pass;
        d=google.com; s=arc-20160816;
        b=nCblVKOde5aPSbtOcP8HXaPmzffmXQ6pq72PdPauGyEVE7zNPd77Ao65XA0nvJi41M
         s5VubYrxLqsNqfbehCVfvzBEff6M6aghNaFIjiv/vJu0dDmEoxI/+OhPCw+aZ3Nio6kb
         rafto/o27lcM81rodqMaY54GxNm6GELGQKjJ89rcKk+GKUwlj4zJVBBRirtzxLyy+C/m
         6+5M4bnqWxFbQ2/terfYufwrsB1SKcwcpDp1Gu9LV5gFFHUIi1P31CYg/zfeVlmrtdvi
         vqjlOG0ibo8r5rpD63V/WMFTr2TTlhtmisn03X092egfjnV/BZui0sCOvcNIPkNlnToA
         FxkQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=09GkhrNmblgRW99Mm0hBlgGURKaHtmGr1kpka+L9zb0=;
        b=iCfBf74PYCXwoVNo5I4WHMNd3x8TOSuqd8430BfVV8JkXiEQHTCUJGS8ReLiCob1mu
         j0pD9yAARbc0hTfR00j8TnFphN8r7FDgcSjx/kxa5OhaTPMVgow5Iyp7a3odBb44yS4j
         5ze4OrDCZ6u358rRwLdMo2kyylWzKsOXqjSBHa7WfFbP49ArY/yRx50YHiW66hXUmlT8
         s+2Fs0wVyc2tYxyH9wt2KIkYUlizHx02Ep7S88Zi3kKaqpgiLUCDnjy+0ceKBcJA2VgC
         3h5nzE3hTSdyb/GIv+6W62wrjI60ANDWcLhupADqMPCnm7rlcTLSjc1qDFLfhTi5zDhe
         qCTw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jsA0R90V;
       spf=pass (google.com: domain of 3pljrxwwkajedv73e96gv8z819916z.x97@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3plJRXwwKAJEDv73E96Gv8z819916z.x97@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=09GkhrNmblgRW99Mm0hBlgGURKaHtmGr1kpka+L9zb0=;
        b=jw0nn+Ujl008m0t3FQqERda7wa/ZaDYbX4no98WHY6fsIRw5wUjJqSlrCewYCbzYvT
         cz5+eK5qdqzK+AIGTjFdYq7wdXUNM4orIPFWPJcWGwIJQS8i915vXKRozMj/N4DgOzBw
         l3oTot2hrCj2rCvdExlNpU8Ava1RQf3PqbU/W95MCjCcZidWT60mj5dfC+/mdSK7HNpD
         Odm8P1su14xi2yFynNTh7s2fGlh9jx8TCpt+57Rs7zdoMYUp8EpHMM1gsadi6W3/CP26
         UI+BZ1CspSphq5gnHoS6QIPRjIASI1xOz02gkzCY8GI8NfGC05KJxrE5CCsuCiqg8vJI
         oVVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=09GkhrNmblgRW99Mm0hBlgGURKaHtmGr1kpka+L9zb0=;
        b=orih/0sbkX2xv4f4VMxV06ArJLYlecDHy502RvdLVwOO4cNC6mI43vcQLl7fpaPbdp
         TFl0+mwPaBn6BTHm6eUA/fQByLOscoJWWVLD6diy8xprPA18gQp0UwQmFQGplb3qNrUj
         yXsML00GWmwXwEV3BnBThhDOdTFL2zSPvgx+vCedpbt2ypdVool4uz6GrF1KXpXDAFz/
         XIChglxv1l191LTgLGkfiqm5UhcJTssj8PTwTIt7ie/FeCvUmW1Oxr3P8k8ETkjC7BYX
         ejNtVlmCR4vyBThnKKzGe89EQq4rSWnAilPd6Vop8Hx4HPRQEn+j6g5JjJevo23wKdD+
         Oy1g==
X-Gm-Message-State: AOAM533ScSRUxU0F+GzspTXhiLbn1LB5JdWS0sbfuhWSvYJ6yvaztmN4
	GWNsyDtGZCktXFR/0ooGdaU=
X-Google-Smtp-Source: ABdhPJyIgl6xQJX1KLY6vo7gwjCmS3J3ourIh08w2tpUgTkl+fZIRb9GY4X/bWnDPonJmtVZIcDwjQ==
X-Received: by 2002:aed:2a59:: with SMTP id k25mr5260673qtf.8.1599165095919;
        Thu, 03 Sep 2020 13:31:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:f50b:: with SMTP id l11ls3535404qkk.6.gmail; Thu, 03 Sep
 2020 13:31:35 -0700 (PDT)
X-Received: by 2002:a05:620a:22ea:: with SMTP id p10mr5151115qki.408.1599165095522;
        Thu, 03 Sep 2020 13:31:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599165095; cv=none;
        d=google.com; s=arc-20160816;
        b=Qx+dFAH0B1Lvk0uuNbhL/eLfOF/1oC9OESLHLOt+SLuJlZ3UJFj4KfNw9x0RDXjaii
         cPCmhZrwfiurbwcdNC0TlHYjGq/X3lCd/5IK+wbil+FyuoR6Yav0ydPqo38fWbGNHnac
         dZelnIanBuTSLVRute4Dfj3v3SsTnGV9K8q5I3yZmUoy48qq51+MxSoTiq54lMlZ99GE
         3fIMG40t1FLo6h+XCeX2Oldn68yLXhfzKb3eoVMEFZt1ZNmKVuhCm4uR1Vamm5GZs3FE
         6EuoWs5BFtsjjy5+Zd5MbKW971/bWQ7RcDLb98SHEsOdc6uKmd3JfNcBjiyg4niH8R4m
         8eBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=1wwsKOGiECV1D1KgEHVbv0B/BweA4F/I9dw72JmCR3Y=;
        b=NibFitstZ1iaVzYI0HXB6IojuZc8aJN8nCOm+kgKZjDPMBnTsXuxfzzRtG+9nguavJ
         KbHikYL/ZtSe6g3LAtWBYYGxrHkh/AueASm+eMT38xFhft5YSkn82+qKCbMesmbSQ9IQ
         cu1R7disLX5PNvOrZO0a80Cess6hqdYCp1Ou0dZ5bmY7T5ogqY5zUr6uyYcSohgn0LgB
         6TyDZ6pbnSo3B4w1cgNeX6mjyX9J8yHdcX91NjqfOL+txk4xMDXY4rb8deroRFcH49oH
         QuQn64JB5uq6A9vHvDetBGmZ/Rp5Ol5HuQmNBh2MRWmf6Ow22WsGsdNxsuDWkoevlvoG
         Tr/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jsA0R90V;
       spf=pass (google.com: domain of 3pljrxwwkajedv73e96gv8z819916z.x97@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3plJRXwwKAJEDv73E96Gv8z819916z.x97@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com. [2607:f8b0:4864:20::549])
        by gmr-mx.google.com with ESMTPS id i9si237008qkg.0.2020.09.03.13.31.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 13:31:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3pljrxwwkajedv73e96gv8z819916z.x97@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) client-ip=2607:f8b0:4864:20::549;
Received: by mail-pg1-x549.google.com with SMTP id x3so2487438pga.4
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 13:31:35 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a17:90b:384c:: with SMTP id
 nl12mr4502047pjb.205.1599165094662; Thu, 03 Sep 2020 13:31:34 -0700 (PDT)
Date: Thu,  3 Sep 2020 13:30:44 -0700
In-Reply-To: <20200903203053.3411268-1-samitolvanen@google.com>
Message-Id: <20200903203053.3411268-20-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com> <20200903203053.3411268-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.526.ge36021eeef-goog
Subject: [PATCH v2 19/28] scripts/mod: disable LTO for empty.c
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
 header.i=@google.com header.s=20161025 header.b=jsA0R90V;       spf=pass
 (google.com: domain of 3pljrxwwkajedv73e96gv8z819916z.x97@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3plJRXwwKAJEDv73E96Gv8z819916z.x97@flex--samitolvanen.bounces.google.com;
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
2.28.0.402.g5ffc5be6b7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200903203053.3411268-20-samitolvanen%40google.com.
