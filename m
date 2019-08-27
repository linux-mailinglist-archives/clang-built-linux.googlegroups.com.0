Return-Path: <clang-built-linux+bncBDYJPJO25UGBBRFKS3VQKGQEASK75BQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 654949F443
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 22:40:37 +0200 (CEST)
Received: by mail-qk1-x737.google.com with SMTP id e18sf285477qkl.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 13:40:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566938436; cv=pass;
        d=google.com; s=arc-20160816;
        b=cdTYITEMhFaCwfsHtRPhcca2dqwvQX5vlHlZs/R9beaN56OhGZ5TwkYqJOLR2OH5rV
         bmf13of3leOIKikl/etMbQiTsB/Ra3smrwvhreg2xjVbNfHV9b3ZOSjlV6yjcaP4mpcT
         /QJJ8273B5SwFHjLSOE5Sy72SEOjXxnU++d0mSBhIVmRB3LATqt6uQzIAPOJ/dJj30Ai
         LtqMwjaL7wjtmrDre9aLiYVyS+ODfyBkZENsnUMf41ugx0t3kaSyavTO0R+Rw1goKw/8
         AxPyqwFrOsaUmsX5jq8yLJR7yDmCJjDp7xaHj2/bNIVpxMv3/d5tiB19duwieXvyXGlZ
         UtQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=BuB02bKoRDgnWKSFORgYRmV5G3ABuWRiQZF1SdFJDHg=;
        b=EUiJ+u9Yl/wv+bYjoilDRY1nTFiCK6C0MOArIY6n00YAdcSi1USDTyGXyOPo2BqXn6
         9+ANBCwDfftZJYyZrKEPzUDEYToMBMwbLVh7zTBsAoO/aDPbYDRLeGKUcQwpyB6w7UAT
         85Y9J+VWT4lgTsTRYKhkCeuXjaF2x0LgRa1VbpfJkMl4ddgV+z3aOvY7LbVzEcWuG1T9
         iT4LIxksq+CKkHUNNe9DrE56eMaMwMakbxUilycs3zJMQDIKGMNrblHiwta6v3X89O4F
         sh6PyMnwQbxjTHihVVO9j+r15rFMFuuDAVZWLvlTX2JswfGFhz4EtBqUxC33BgA7j3Fa
         o8Mg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=udtjEyCD;
       spf=pass (google.com: domain of 3q5vlxqwkapqjzaowqhjeanockkcha.yki@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3Q5VlXQwKAPQjZaoWqhjeanockkcha.Yki@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BuB02bKoRDgnWKSFORgYRmV5G3ABuWRiQZF1SdFJDHg=;
        b=nEFde8qUbuSDNad0x7GhswBlNmwxQFmQMqPOJzS1U+cWAk/zCk/7XzKAjaKsfK7an+
         9xFKfj2cMrcMEH+ggG49+EFrFdUB9feFXAhJAjNWNawUjLFi1CewqO5i3yl6+3ix1WSA
         ztH+8kBBWiDrsXxZHqkm770aLSouG7ezMtC3tGsB8e9QnI9mZ1R81zqmCuJ+e/8nYbuH
         9smac19ElTb69c6xS0i1M2RGgPt8+pjAdugmV7OVvIfP04QKmv6q+gq7sNbcESQhZZ02
         8CfRUPPtFR2iJyi1d9hNnztrYAhcJqvIVVWng0XktjpBYKyJoEB5JVREIDxTuHNiY6ZK
         U7bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BuB02bKoRDgnWKSFORgYRmV5G3ABuWRiQZF1SdFJDHg=;
        b=NsoQKyM88Btb1QkrxIfDj/12nE9KybfInwF6vTjibheadwsBbm9HbaZHOwHGTTiDeA
         gWY8MehKZ3BauN//DQZOyDWYoKJtMJ9Q7oHPZhLRMTzmFTsWJYoAvmP/F5iZZx+6vkRw
         wzQfTbkqWwakkhV0yZXCmLfEqCZIRuAcGHRXQN0jfb+RYPGbUb2Y8QxmH8vwe0hlXqPU
         jOLTIpM5jKEdmeYkxTaAqtppJP/hAieLSSe3esFmkMUFNp8Urmt4TACnbJ8OzZ5iBL8F
         hne8rWnJqNvLxp/vJBVC8ufVEFDcnQ/bW6GfVzP1DeSJOdQH2wJGNPCXgDcLuSJ2dNrz
         fuLA==
X-Gm-Message-State: APjAAAW3dVOnkNGuC/1PVSJRKvb8ruGSFnyWIkt/nJYEl4TBB3I0IIZD
	/1+aTk8Y48fyJAF/Z8UcD9Y=
X-Google-Smtp-Source: APXvYqysOwgysYqay0kUePqgA6cDUmWq37sRe93d805ugDWmp7nlnvx8E5esZA5snVNOGWElV02BPA==
X-Received: by 2002:ae9:edc1:: with SMTP id c184mr479873qkg.418.1566938436512;
        Tue, 27 Aug 2019 13:40:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:6441:: with SMTP id y62ls214405qkb.11.gmail; Tue, 27 Aug
 2019 13:40:36 -0700 (PDT)
X-Received: by 2002:a37:7404:: with SMTP id p4mr495720qkc.476.1566938436270;
        Tue, 27 Aug 2019 13:40:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566938436; cv=none;
        d=google.com; s=arc-20160816;
        b=fkm6rYNh2HDsCDpxD14L72rEWktZF22wAtG/ew03GEw0Wa1Pc12zgfhW2dnq7qyOGl
         d2CHoDUU9KDyBOquEyC/sUC371QpCQwQSJM9jidKP2D421EKXaCEiq9kBTvQfloZTS/p
         LbOI10NX1KiISO+JP/+QPUWgMizjv4P9toYANtef4QqmbLYiqv6ZElwv/49A65FOq6tD
         M07f4vvNWmS3ECsW/KJB9V8noB90iR4kj59LL9vr1tbpw/sl/TuK7T6+pIszrrNSmiLH
         psmjhsVt4Km0e9Mo+iaeMxcGbxpBbnbbU/tXGvyaQHOe1TjqsaZMyazkzRIrBLb+kTmM
         9qIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=pMRR3udv7zUt55udgy/JnJSChNtnGj7LBE8r938k6XI=;
        b=T+7RBnG3X65tQdpEvSmlyny/DEJzg/Gdd1rg+nFaHzoc68MSgl1EEfB2orcvfk1m6h
         t+VUTnuEiU7riE6VjEqsVxq0FbbEBOklgasy8MD7ekRarRKoqk4xz+qmg60As9Zb3Woe
         EDmqImmXVYv3nYlN8zDOIEyGlcK3FegCFlaSW/zxKQso8ZeAJMxiEY7rQ49oDhoIwFry
         QrzRAYfbJ7axUgy7DL6S1VBcxiqGY/6cRXuOUUBEMFyKKSXAdACkaHy6hWDA/0HfzR1W
         heQbKlM00vioct6TseeBc4lmLV/3SYtbt4fi+ktC1xdplMOB9U3Csq2qxTL/xVD4nQf7
         Ncqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=udtjEyCD;
       spf=pass (google.com: domain of 3q5vlxqwkapqjzaowqhjeanockkcha.yki@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3Q5VlXQwKAPQjZaoWqhjeanockkcha.Yki@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id k8si21542qkg.7.2019.08.27.13.40.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Aug 2019 13:40:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3q5vlxqwkapqjzaowqhjeanockkcha.yki@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id x1so238905pfq.2
        for <clang-built-linux@googlegroups.com>; Tue, 27 Aug 2019 13:40:36 -0700 (PDT)
X-Received: by 2002:a65:6152:: with SMTP id o18mr255957pgv.279.1566938435091;
 Tue, 27 Aug 2019 13:40:35 -0700 (PDT)
Date: Tue, 27 Aug 2019 13:39:56 -0700
In-Reply-To: <20190827204007.201890-1-ndesaulniers@google.com>
Message-Id: <20190827204007.201890-4-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20190827204007.201890-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [PATCH v2 03/14] parisc: prefer __section from compiler_attributes.h
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: miguel.ojeda.sandonis@gmail.com
Cc: sedat.dilek@gmail.com, will@kernel.org, jpoimboe@redhat.com, 
	naveen.n.rao@linux.vnet.ibm.com, davem@davemloft.net, paul.burton@mips.com, 
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=udtjEyCD;       spf=pass
 (google.com: domain of 3q5vlxqwkapqjzaowqhjeanockkcha.yki@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3Q5VlXQwKAPQjZaoWqhjeanockkcha.Yki@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

GCC unescapes escaped string section names while Clang does not. Because
__section uses the `#` stringification operator for the section name, it
doesn't need to be escaped.

Instead, we should:
1. Prefer __section(.section_name_no_quotes).
2. Only use __attribute__((__section(".section"))) when creating the
section name via C preprocessor (see the definition of __define_initcall
in arch/um/include/shared/init.h).

This antipattern was found with:
$ grep -e __section\(\" -e __section__\(\" -r

See the discussions in:
Link: https://bugs.llvm.org/show_bug.cgi?id=42950
Link: https://marc.info/?l=linux-netdev&m=156412960619946&w=2
Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/parisc/include/asm/cache.h | 2 +-
 arch/parisc/include/asm/ldcw.h  | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/parisc/include/asm/cache.h b/arch/parisc/include/asm/cache.h
index 73ca89a47f49..e5de3f897633 100644
--- a/arch/parisc/include/asm/cache.h
+++ b/arch/parisc/include/asm/cache.h
@@ -22,7 +22,7 @@
 
 #define ARCH_DMA_MINALIGN	L1_CACHE_BYTES
 
-#define __read_mostly __attribute__((__section__(".data..read_mostly")))
+#define __read_mostly __section(.data..read_mostly)
 
 void parisc_cache_init(void);	/* initializes cache-flushing */
 void disable_sr_hashing_asm(int); /* low level support for above */
diff --git a/arch/parisc/include/asm/ldcw.h b/arch/parisc/include/asm/ldcw.h
index 3eb4bfc1fb36..e080143e79a3 100644
--- a/arch/parisc/include/asm/ldcw.h
+++ b/arch/parisc/include/asm/ldcw.h
@@ -52,7 +52,7 @@
 })
 
 #ifdef CONFIG_SMP
-# define __lock_aligned __attribute__((__section__(".data..lock_aligned")))
+# define __lock_aligned __section(.data..lock_aligned)
 #endif
 
 #endif /* __PARISC_LDCW_H */
-- 
2.23.0.187.g17f5b7556c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190827204007.201890-4-ndesaulniers%40google.com.
