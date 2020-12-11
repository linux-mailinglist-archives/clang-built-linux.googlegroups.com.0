Return-Path: <clang-built-linux+bncBC2ORX645YPRBE75Z37AKGQEKE4GY3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id EC9A62D7E53
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 19:46:44 +0100 (CET)
Received: by mail-ot1-x33e.google.com with SMTP id x20sf4297915otk.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 10:46:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607712404; cv=pass;
        d=google.com; s=arc-20160816;
        b=e4mdkECm7a7O5uKg8UJD1uPcOOws5n8/xUqkw5TXwHyA2EGO15R43AvGRLAlYc5tU9
         S85VcfXYimFKnLxzQscNAsWNPlJix14R2RuDJWgsKYAPz23nXqgO5zrzv2D3G/MurzMK
         YJTnpIPkvI1eTLy0eY2hheD4TRBHpeUVJ1F7zG/ixHpYkrbzu9NOqrWrg4bS0h7kSXLO
         wmSUm+b15rZrHsbhsd1W/5NK06aHY0cj6EeTmFnPGf485GPX+zrjsnbmHzCo23URgO1p
         f5Hg0uDNDUYFvl7GO+fQuoAOSTYgglTHb4J++CNrmaCtKrLqYwOCygQIpDJK7dKWXxZR
         C7NA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=x6kmbylo6CKtRLdGZ8t6pGruFwNm5hsRjaLeIxUk4VE=;
        b=aNesE4+tl5AjIv+C9MgIeObiljvfpo+QhqaKOsi+4VBMQ/4BPV5Bw/5xRI4uIUVuvN
         sgy8fPi82EJsSJH00/CoiiucNuC0N9j58J0W3marvNwx9qhD4+nsvqKlHprtwJ+7UrNl
         QnO2jpnfYkAiPc9GCpXJQWwNK1Xek2nZsikVX4uCZvgQzygJ5rOW2U7G67gcMKUMgHcW
         6BzbcY48QrGIIy2tcrK3/f5slT2cFq2245Wp6XgbVqYkFEzp1RAIuMHECDdlgi4j82Vu
         6lQQ31nbE+i+poGsPR2AOhgPJw0rPaxDULRcF6dJRGa9E9eeiIy7syq1UbFiVDgf9PKL
         vE+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=F3+ZlsJ4;
       spf=pass (google.com: domain of 3k77txwwkagqucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3k77TXwwKAGQUCOKVQNXCPGPIQQING.EQO@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=x6kmbylo6CKtRLdGZ8t6pGruFwNm5hsRjaLeIxUk4VE=;
        b=O5G8v3xxOAb+AnxwVobNZEw6ZIbxMZGNZ/Gj0YIRf+5nBK3/edPLGoPjdqpEqxE59B
         TI2pDWpMe+VwDaZrLBBy5hdlFuGyRNnzqxiqXgViwSKSUpzQQNSpZwKIdyv4pgmgFCWm
         BAJI9S6dzXdaz+l8UsC+piLL4Vz72R9F3LVX4uKQmdMBYgUkhV+/0FoxpCTJd5/Exn1q
         koOwfIggE7h9e6kupajmcu15pAySOT71+n3QMo46bkLO8pFd/kcPYRfO6FlHNsC3qDOI
         WpnZXo2l89mpt+jFx0J6WHj+R+UAfmn7DMXQ7hPXn8JTgIgA7ibuMsJX7PZfp0juP3JP
         DMDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x6kmbylo6CKtRLdGZ8t6pGruFwNm5hsRjaLeIxUk4VE=;
        b=p1Bj5OSEuamL0WJCa9fbs3T8+SCNjsCLYroIH2GtYyemaNSqV99Cu+B7CfR1CUv4FT
         42DP6iBIN3HwHPQlbTGAZQYaj+bxkWhjbNEOyw/uiuCHQXGI88I3D+4OZuvTc145uIfH
         sJSYvjwTDbp2eADHLsJkm1kNpIqq2jCyJF1xyPDkL11uzZF6yHFdKpz7GaRkKZ2jeWFj
         qwkP8pT/FuiDKEFQVPHux0JZGZBQ3+7eeJNnkAnJdMep/gvCn9RVEyRrkaFKJyaJWdWw
         S5kcZqHVnFotjlbYx6yv2HDR0LNQgdEhi3mvXO/2gEbMngT7kTdY0NB3VCe7xAYzj5Jo
         0VSA==
X-Gm-Message-State: AOAM530qjimrV0P0j5BkbHQ5KmJf16nWhvctFdcU7srvUs+hhGxWdRU+
	cqAQx5ZpDRd64/DONt1faPQ=
X-Google-Smtp-Source: ABdhPJww4GxCEhzslTAaEu2mLbi7qEKGJebrt6LAOuhj3i/iMCFSY/5emJdY7iK49LQPFrjhCXTtXg==
X-Received: by 2002:a9d:506:: with SMTP id 6mr10305138otw.95.1607712403962;
        Fri, 11 Dec 2020 10:46:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6841:: with SMTP id c1ls2654152oto.8.gmail; Fri, 11 Dec
 2020 10:46:43 -0800 (PST)
X-Received: by 2002:a9d:620d:: with SMTP id g13mr10793218otj.56.1607712403535;
        Fri, 11 Dec 2020 10:46:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607712403; cv=none;
        d=google.com; s=arc-20160816;
        b=AAaCU3zsESpC3pd81uUcbd7+QgGY+WCCofI3gbfUZvxTbujiqfuEXOpIRgiCCzwY2J
         WpYI1E7Qnw6DoYlR7RnQVelacHqmyr3qYkQvEDHmajD1WLYy3FyvkkaQ+1Wp+p/AXn01
         fBFJIiRPL72HoQQCW9arPsrx5g0mkfoZeGUCIPzAWcUhRP+/kFZ/2HCd6qI7YkrBnk1d
         ZT4aI5PGvW4pa7XrLnGUw0GwWIZ4Jaoi0FvtZ1EyjTxWO9Ks2ZT9TPrjkM04g6DzhBA/
         pHiAExnW7Sax3dWTIY6oThtHW3jKdOzJhFTl67fqRnNmL8Ax/8v77DvANAY2GfPkGbcw
         3Vrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=6mEKvNeY3wq0rs7jAFLZaZQm6yt6Fm86WJ405HnCM0w=;
        b=j2+yA19eyhYXGl466e+erw7y2ZIkQajHn0W+Fdrkc4EquhW8WLWEsPZPIj/YlK+nhn
         zZaEh2eQr9MXY2iBwI7FrnybC77KEa5eg0bOQrxN6E9yG3SH3cS2zIyuuIEQ5AqD2OJJ
         vJR1LSPalPyKcyPD4iXucAVXn3A0QkxZQZiorlyQu9Dwg3VNubbalXthL2yR/z1mI6uN
         FWHqROe9KfOdQDAezJzv+weosXuEzhl9cel/f6i2B5N3XhvDwwV/IGjMlnoRVUY1NhW6
         zz/rDnb0aZf80W4z7NE4SXh+3vDgA9vIFb/NwZVrfjOzos4vbqFKAZA1v+zEyoLS05fW
         2ObQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=F3+ZlsJ4;
       spf=pass (google.com: domain of 3k77txwwkagqucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3k77TXwwKAGQUCOKVQNXCPGPIQQING.EQO@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id j1si633438ooe.2.2020.12.11.10.46.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Dec 2020 10:46:43 -0800 (PST)
Received-SPF: pass (google.com: domain of 3k77txwwkagqucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id j1so11808100ybj.11
        for <clang-built-linux@googlegroups.com>; Fri, 11 Dec 2020 10:46:43 -0800 (PST)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a25:7d04:: with SMTP id
 y4mr20471824ybc.110.1607712403064; Fri, 11 Dec 2020 10:46:43 -0800 (PST)
Date: Fri, 11 Dec 2020 10:46:21 -0800
In-Reply-To: <20201211184633.3213045-1-samitolvanen@google.com>
Message-Id: <20201211184633.3213045-5-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201211184633.3213045-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.29.2.576.ga3fc446d84-goog
Subject: [PATCH v9 04/16] kbuild: lto: limit inlining
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
 header.i=@google.com header.s=20161025 header.b=F3+ZlsJ4;       spf=pass
 (google.com: domain of 3k77txwwkagqucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3k77TXwwKAGQUCOKVQNXCPGPIQQING.EQO@flex--samitolvanen.bounces.google.com;
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

This change limits function inlining across translation unit boundaries
in order to reduce the binary size with LTO. The -import-instr-limit
flag defines a size limit, as the number of LLVM IR instructions, for
importing functions from other TUs, defaulting to 100.

Based on testing with arm64 defconfig, we found that a limit of 5 is a
reasonable compromise between performance and binary size, reducing the
size of a stripped vmlinux by 11%.

Suggested-by: George Burgess IV <gbiv@google.com>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 Makefile | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Makefile b/Makefile
index a07e3909e5d0..84c60f38ee3e 100644
--- a/Makefile
+++ b/Makefile
@@ -901,6 +901,9 @@ else
 CC_FLAGS_LTO	+= -flto
 endif
 CC_FLAGS_LTO	+= -fvisibility=hidden
+
+# Limit inlining across translation units to reduce binary size
+KBUILD_LDFLAGS += -mllvm -import-instr-limit=5
 endif
 
 ifdef CONFIG_LTO
-- 
2.29.2.576.ga3fc446d84-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201211184633.3213045-5-samitolvanen%40google.com.
