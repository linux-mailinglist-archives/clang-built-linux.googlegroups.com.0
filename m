Return-Path: <clang-built-linux+bncBAABBEWX5P7QKGQE3CA2NXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 51BCD2F06CF
	for <lists+clang-built-linux@lfdr.de>; Sun, 10 Jan 2021 12:57:07 +0100 (CET)
Received: by mail-wr1-x438.google.com with SMTP id n11sf6357052wro.7
        for <lists+clang-built-linux@lfdr.de>; Sun, 10 Jan 2021 03:57:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610279827; cv=pass;
        d=google.com; s=arc-20160816;
        b=qn7rKWIkrV51tqI5lZJeMk4BJKYq4kySagRESNBl7TWetzUbF8ug/ZKhlm0Ij+kjx2
         OCh3hn60DRVzKQ9f4NQVBLqftASDaDOY3i5pKAWqIIHYgU4lwEwxh5NUkppVh1up1Ybd
         2kErf/hpMKHJDPsvW6f6OFh+jycIfbPwtGp6V8VzqIfmf1COsIoj6EUsxJtWJ9y3VCBZ
         ZrI7dxe3t51xN8MeAu/wL/m96mEq6h9S3NHeeWQQrAXgC82VsgeVuMd+b/4v4hRq1Ny/
         8xXwKHqWcwVSED/9Y5y75ULa8X5JffZu7EXbVsSOdomov7Sq3DnaOGVrVMGgxU9/5AsO
         o4Sw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:date:dkim-signature;
        bh=u1DTUs0xFKsggyNOTvFK//ENuo5WzYAceZbyGXyw5L0=;
        b=HR/zjKrINCLx4q02fGZXhVW4S+h4B/E7G3CTDs9lqgDXftBfWMXXIY75s1bHaVm5i+
         +a/AuLyANFNHnxEEw4TRiENJkfSt0NqcnoA10ievPxGXd813MCTgU+W3ELyHnjAbpHpM
         WXxhIeUWWWGePprQwV8wrEtZnS/+DT/tn4eYlWvNtClTEVY3A5YIf5NqmedW/sW55LI2
         roIhkuFxmiAuBOlXLi1eAH3GF9guhXBYswpO3V0dLY+Nj24h28dqjY3qAZI79QcuElDC
         q0iKfUNrMK8AcUB7XX7SQlBmounmPX6FqZP+vr1iSOg3o2hfCwIYpNiJRRO/DGTvPs4j
         ElwQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=VWdf7Pv7;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.131 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:to:from:cc:reply-to:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u1DTUs0xFKsggyNOTvFK//ENuo5WzYAceZbyGXyw5L0=;
        b=CxuQSxW0FJzH0y3fda3ff0AvSx21nq7m1i+H2tFcWdaLXAgLTa9jEkw61rtIZcT4Xv
         e5nii6bE455lok/jQuyEf3BaTY4qlWmUbP78OctCbrR5LtoqX5ihhAxJGlekwUUa2WnN
         IwPIr1KpwgJU4dVyIYoYIYutaQo95vusKZBpopAwvF9fd5FxD6Exu3JjsgTGwXTks8XQ
         /8nXYZJ6mtlIzTQJDRFWC6xB7tKaHmKUsUyLwTKkHVUGWe+rOUGPfkxESx0YSSgDMEy7
         R9LLKHm7bNWZ8bk6g33qqMUjfagwYYqGP/h9/SqhRsSj0FCQzznoyBvL+A2g1uhAcY22
         owNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:to:from:cc:reply-to:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u1DTUs0xFKsggyNOTvFK//ENuo5WzYAceZbyGXyw5L0=;
        b=aMTxAMCB2X7NLfE6KasS4xE2PsmGKRSwbc9eITldmhfml66dft9oQK9GMhvhB+1E0O
         cHUlKO9a6Ql+YPGtgFRp5ushSpdeuHYtlpk3fTH2GGB821nHN4bcaOmWm+SiiIBPCzi6
         zlfLcZO14XQmBTV1/FrEyvxg5qv/v6qdDXq4TD4tcyKBaR1uPWWWQnRKawDHlYkvuG6C
         KwafO8t7BOj2g4c01VD7eyXENR/DsDqSfSPoRoQpRWdmOOrU1pIdvfypugskQJY26Amu
         A2u81xLOBe4TYmujkFVikdnEkFY84rmtcEs5QEr+9AHQibuWvW6KkIhtucDPZJ/YA0Qa
         WwmA==
X-Gm-Message-State: AOAM5306sf1xGJYw+TVhFSWHcFgjaUlaB5QqZ4S4IDkSEV4eUZQfp9U1
	VKZ2qBzgNGtJbLEKH490Hi4=
X-Google-Smtp-Source: ABdhPJxD0iUxBFyuBM2Q+lWBBUP+/RD7CEshFmXRmEujsXnWJzs6vOfRb1N4IeNS9x5k3N4vg+sv9Q==
X-Received: by 2002:a1c:9d8b:: with SMTP id g133mr10706934wme.189.1610279827075;
        Sun, 10 Jan 2021 03:57:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:cbd5:: with SMTP id n21ls6882713wmi.3.gmail; Sun, 10 Jan
 2021 03:57:06 -0800 (PST)
X-Received: by 2002:a1c:4c07:: with SMTP id z7mr10605061wmf.142.1610279826583;
        Sun, 10 Jan 2021 03:57:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610279826; cv=none;
        d=google.com; s=arc-20160816;
        b=Bj//oG3gh9WRkvNZgvdn5WHXErS4Xik4kkUHoz4EDHnL2j05zlHT9GET+LwGohK88B
         OKxedn8TscrD9tdvuk7NZfBzJe1tGuaYBf5N+mSgyvJpKldQizOP91jy7bkhWKNtx15x
         xsvdfH9Q1Wr29j6GVhZ+3zmgbae+OkXTj8JmzKwJjXBbCvq4rz+QfhpBQEMvtDOLwetp
         DLh26j1Vd34vaAfvl0pzLAZpFq5DFNx+2Uz9Z2NPLEDec+BuC/yLGZXWAIb/Yw7/O2dS
         UTFegatJYMm/d5m1MweGxoOHAcO6lPYKSm3Z7LAgBBEp6ZdF7H2gtVJBRMCbj9OLVZUH
         feBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:dkim-signature:date;
        bh=9X9TtaxhK4MsjM77KJSI8oMJqQq5vrXLNYznXkmw+KE=;
        b=ALFjSQ05ld4RMr7OPzEOHhPkbTSFyIIkcG63Ye5ZEaGtC6wMTHauQCIoNjsjsgGxwk
         uy+yoiaDePQItj/wLVNIxdj8mGK9fLGO6US0/XjApFaIccUfPCe00NEkhoZzHLi07C3v
         gDrXx7K8zoW0LWaz2BP2Kr03XVuYxaum43Qut6VmqL2x5d5oi5ZLHEtIB8ebWxP9JcBY
         lalzrTp7E0uyUEFAo4xSgQ+INx+BsNeYUBNbSlEYJgq8S6nv+hkb+FpM6w5WvxqdIOVV
         Ifp+e6+xvGihA3oqQtAppj1QB1zr8qeW2NRz5byW1tQmfgC70nTB7o5xfiDy+2U26XM1
         RTIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=VWdf7Pv7;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.131 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
Received: from mail-40131.protonmail.ch (mail-40131.protonmail.ch. [185.70.40.131])
        by gmr-mx.google.com with ESMTPS id d2si438627wrc.2.2021.01.10.03.57.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Jan 2021 03:57:06 -0800 (PST)
Received-SPF: pass (google.com: domain of alobakin@pm.me designates 185.70.40.131 as permitted sender) client-ip=185.70.40.131;
Date: Sun, 10 Jan 2021 11:57:01 +0000
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
From: "'Alexander Lobakin' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, Huacai Chen <chenhuacai@kernel.org>, Pei Huang <huangpei@loongson.cn>, Kees Cook <keescook@chromium.org>, Alexander Lobakin <alobakin@pm.me>, Fangrui Song <maskray@google.com>, Jiaxun Yang <jiaxun.yang@flygoat.com>, Ralf Baechle <ralf@linux-mips.org>, Corey Minyard <cminyard@mvista.com>, linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org, stable@vger.kernel.org, clang-built-linux@googlegroups.com
Reply-To: Alexander Lobakin <alobakin@pm.me>
Subject: [PATCH v5 mips-next 9/9] MIPS: select ARCH_WANT_LD_ORPHAN_WARN
Message-ID: <20210110115546.30970-9-alobakin@pm.me>
In-Reply-To: <20210110115546.30970-1-alobakin@pm.me>
References: <20210110115245.30762-1-alobakin@pm.me> <20210110115546.30970-1-alobakin@pm.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF shortcircuit=no
	autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
	mailout.protonmail.ch
X-Original-Sender: alobakin@pm.me
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@pm.me header.s=protonmail header.b=VWdf7Pv7;       spf=pass
 (google.com: domain of alobakin@pm.me designates 185.70.40.131 as permitted
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

Now, after that all the sections are explicitly described and
declared in vmlinux.lds.S, we can enable ld orphan warnings to
prevent from missing any new sections in future.

Signed-off-by: Alexander Lobakin <alobakin@pm.me>
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
---
 arch/mips/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index d68df1febd25..d3e64cc0932b 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -18,6 +18,7 @@ config MIPS
 	select ARCH_USE_QUEUED_SPINLOCKS
 	select ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT if MMU
 	select ARCH_WANT_IPC_PARSE_VERSION
+	select ARCH_WANT_LD_ORPHAN_WARN
 	select BUILDTIME_TABLE_SORT
 	select CLONE_BACKWARDS
 	select CPU_NO_EFFICIENT_FFS if (TARGET_ISA_REV < 1)
-- 
2.30.0


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210110115546.30970-9-alobakin%40pm.me.
