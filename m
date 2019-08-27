Return-Path: <clang-built-linux+bncBDYJPJO25UGBBUFKS3VQKGQESRRC7EQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 39E2B9F447
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 22:40:49 +0200 (CEST)
Received: by mail-qk1-x737.google.com with SMTP id a197sf297036qkg.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 13:40:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566938448; cv=pass;
        d=google.com; s=arc-20160816;
        b=JQecDx4n5mE2IC0eXB+HOg89iWyb1Bqt97vfOmscBsfb6AI6no1cqGJSRKxoLLb4s2
         R8kVdoCjzRESp8pI2DBbiTo5wmtXp3tdejoK6FyjZ1ERTgb3FrCFjvmQI4VTeQx96KvL
         W/txAhODI10B+q+B7RwpjzdNpmTW40RqaKnBKm4rSgRVfqbdxcIYA5mZRb633+RZ8dUr
         RvMAm800kg2AZW4j06ivgCSbNaMrbFpZQgcJ9FTdFTd0tHpPtbL0JAJZeiRR2nN8xFTg
         GYWUqDKdxc79BptD1qrvj3q+6775NNJ00yx3mh5RF+66xl/DedRv25qdRxDxtJ0LRdB9
         6FhA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=CtTDqB1kkgPi8GUd9IJ/itEmdmBDIR5yal3jME+RW+M=;
        b=syjuh+AEqQfCxZ3Yfvo2ZwAoBAhGar84FtI4xJOpeHbQW9S+0TB/T5M9/C0KrRWN6l
         /iWaUP6Gr79jAHuazDx8T1q+TFp3y2yaEm4IsNSwZ3dOIGA6iXKI8kU1P8CQTwblVDSr
         s10crau66PCcdNrUV2GKmuADzAFUaDxZodbCNfHNtvVfvlfHgg6jwIIBECAZVEK/xvg7
         moTlTaBh8wIEBZ0uBUR+BnETrm1satz87foBXFl+l1vztOm7P3IPWdxfUvjD6pspeWe6
         jZiOn51ANFInxahv2OeZdmcSkni0rxCtsX+W3l73qoT8brxa3jx0JPZhTZAHmUBvhjgZ
         N5aA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hReFQ8hC;
       spf=pass (google.com: domain of 3t5vlxqwkaaipfgucwnpkgtuiqqing.eqo@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3T5VlXQwKAAIpfgucwnpkgtuiqqing.eqo@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CtTDqB1kkgPi8GUd9IJ/itEmdmBDIR5yal3jME+RW+M=;
        b=NJBMNsvWhlyBK5qTkHxYEzo++yK7LhAbGWwdwVeaxYH+5w96SGRJXdgBYBBzZV9EdT
         BqBA0Kcr+YDcn5v1Oke4e+TX/ud/1GHJFrBBEG9uaE2+fZQYgCrv22sLbGTDxmV/yQ91
         Lv3BM8JTLKeRrngWC/hxeVqU/yPemxC0wXa/UQhulMBdIo1TRP9J38Bs1QpCyJb5QvEO
         BuQUmx0ZHCc8EZjN34wQYbVNr3DvhB0Lj79bMevQRp6/7dI2ceKI/RByTRBiqhaPZSGv
         El7VY+Ilxj/imSd/fQMCgFbXt6BJB9k2IydRWXww/N03nDaC/D8wDeB0I37csgZjxiNr
         1cGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CtTDqB1kkgPi8GUd9IJ/itEmdmBDIR5yal3jME+RW+M=;
        b=bKef8r9m0a+YLlwEofkoIEPE01dx9E+cT1RB6cloT8eMp5R7idUwycp64JDRdbcYXR
         epTt5m/KV1AE2WA/zFUIlK0U2VHNKc4WNbdp098mdXOAmD6R0kDTql7dWbmXn/PCG+gH
         SwbqDY8QrJ3nkjbcQcWIxkh24HYCtj8njXDtwnrVaof5LAs8NoU1IKAErJaLrhAV8fmi
         dMFQalf3N1NKaYcI5VmfIloqqywJrpDcDzGetd14qFv4OwSAvzBaUZmMLnmgumB0jdW0
         20FZH9risO9ZsfPlmN542jWy/JV2J6cBcXXatxUD2XRyd4SzvqhNGFm8AaF1EeSMX39p
         gnVQ==
X-Gm-Message-State: APjAAAWSCj5i9Qc4bYELBfekg2K2LLuoS4QNAxRcTlmn0pm+5DEzL5uV
	XXhj8gLbdfCUFrSBXGnaOys=
X-Google-Smtp-Source: APXvYqxJHVKmqFfopvO/OPp362P5a5fvrFHMl1OswD0VufJHeVeA1iOJzESV1p7v7qcDgOl5Nyf6sg==
X-Received: by 2002:aed:3768:: with SMTP id i95mr850481qtb.346.1566938448324;
        Tue, 27 Aug 2019 13:40:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:81f6:: with SMTP id 51ls54786qve.2.gmail; Tue, 27 Aug
 2019 13:40:48 -0700 (PDT)
X-Received: by 2002:a0c:8d02:: with SMTP id r2mr468822qvb.70.1566938448058;
        Tue, 27 Aug 2019 13:40:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566938448; cv=none;
        d=google.com; s=arc-20160816;
        b=T0/9sKiZTK0Fd5Db8PAkwPJ3f+KNK6uzYgTKdht9lbPmkJHlInHs6Dcx1Xof2fZbsh
         XtKr8Mb1nv6KMRTmetUadoM80/VQysMitSuQGskruVFJ8WhJUmegLN3IGW7Caol2d0nV
         zXwnyErkJ9XDFIQD1IQphUr9ddCx2KxIbLoEaiCat3GfuO33Nuz4pJ4YsTlfbySUGt5T
         EtMdo+lcWqbjRg9RF0tPLqgcmemeITZAxkWZdLjjIjC6Asp5NY+yKICZg84N+jhoo8Q3
         qZj+bqOH0MAj8IrWeW03OTqXdN6TJP1MgqS6dwjA6C2gt2oXHGK2BU7I+A9s77acuE6I
         DK0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=69o5Grxjv62QvQRHvmQYsH04Y/pWfPSVibkBDTUpZck=;
        b=gJJ8jkSilXDrRXKTvuMgL5UW0hg5ol7o3yPwujibITXJ2TOEZmg87tdHSt8yDj3S4t
         ResZl3qec7VYLQO5iGw0tkuXcwia07kyUtcat/5FylTwERehNmhyRi3ETvuUfbwRmGIo
         9pgU7iCA9wbQ8T82efvlTUcvgfuqvniZDQYcgfxAwgXmpdYJgB+TyWO/ksyYQcR3OtWd
         +kKLznwgL9+BAN+Hevk1c3zP6/Ku6yHh4MV3xSp+odDq+eQQf1jRqWyLxAcfG9DIReOQ
         BdCEVUbku8LsCevgXRyKUzKic41tAUgLQkTEhF2RtPDOpcYgK30bvnT9QpZpE93pY4oZ
         shGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hReFQ8hC;
       spf=pass (google.com: domain of 3t5vlxqwkaaipfgucwnpkgtuiqqing.eqo@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3T5VlXQwKAAIpfgucwnpkgtuiqqing.eqo@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id k8si21542qkg.7.2019.08.27.13.40.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Aug 2019 13:40:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3t5vlxqwkaaipfgucwnpkgtuiqqing.eqo@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id x1so238905pfq.2
        for <clang-built-linux@googlegroups.com>; Tue, 27 Aug 2019 13:40:48 -0700 (PDT)
X-Received: by 2002:a63:24a:: with SMTP id 71mr260306pgc.273.1566938447325;
 Tue, 27 Aug 2019 13:40:47 -0700 (PDT)
Date: Tue, 27 Aug 2019 13:40:00 -0700
In-Reply-To: <20190827204007.201890-1-ndesaulniers@google.com>
Message-Id: <20190827204007.201890-8-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20190827204007.201890-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [PATCH v2 07/14] mips: prefer __section from compiler_attributes.h
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: miguel.ojeda.sandonis@gmail.com
Cc: sedat.dilek@gmail.com, will@kernel.org, jpoimboe@redhat.com, 
	naveen.n.rao@linux.vnet.ibm.com, davem@davemloft.net, paul.burton@mips.com, 
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=hReFQ8hC;       spf=pass
 (google.com: domain of 3t5vlxqwkaaipfgucwnpkgtuiqqing.eqo@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3T5VlXQwKAAIpfgucwnpkgtuiqqing.eqo@flex--ndesaulniers.bounces.google.com;
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
Acked-by: Paul Burton <paul.burton@mips.com>
Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/mips/include/asm/cache.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/mips/include/asm/cache.h b/arch/mips/include/asm/cache.h
index 8b14c2706aa5..af2d943580ee 100644
--- a/arch/mips/include/asm/cache.h
+++ b/arch/mips/include/asm/cache.h
@@ -14,6 +14,6 @@
 #define L1_CACHE_SHIFT		CONFIG_MIPS_L1_CACHE_SHIFT
 #define L1_CACHE_BYTES		(1 << L1_CACHE_SHIFT)
 
-#define __read_mostly __attribute__((__section__(".data..read_mostly")))
+#define __read_mostly __section(.data..read_mostly)
 
 #endif /* _ASM_CACHE_H */
-- 
2.23.0.187.g17f5b7556c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190827204007.201890-8-ndesaulniers%40google.com.
