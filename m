Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBCP7WLZAKGQEUMPX7QY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id 67DF7163C29
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 05:54:34 +0100 (CET)
Received: by mail-qk1-x740.google.com with SMTP id w126sf10338978qkb.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Feb 2020 20:54:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582088073; cv=pass;
        d=google.com; s=arc-20160816;
        b=WMWir1r4wa+jSGcbunlnLwYruHgXQZxoEg7TyH1JFBSc4JDxnwEtWUnlvds86uN1rB
         e0Tlkm3WkpOKVVxLv8SEkJT5llTwO/shgmdL0QXMBo9aBkHYCVMTKjUVLS8P2R6hzzTU
         S+xzn+e7OhVImFwngv8EAaB72jkA7OdDI/P5FziWJWG/oyyD+uvFUZ1lveFxLZnHBhXB
         O/Lel5Q+KLUv+KTMYJDA4WRFe32teiMWIQqSJj8awTULLlIlS0aFX6poz6R8IC/xGSPF
         saXvwPHtk7F6BNWTcVc/rkUSUkYOOy/e6ci6KJZIpb0F+SlNyNqW/6sSPVntZ1afsI2f
         cqHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=VxO9Nez2lsCkGUbEXSvT+FJlVIxpA+jghGZOmin85NY=;
        b=XtK2CKq7s4xheSMPgv6rykiyXYw4v1mVZO1ekd8M5AxaPWAz8w0EYDMnmAzBCN9FrW
         JyzB0w7kTUsGTKskvAVWiQqKYVSm3OP8bl2IgBlKe2GPCtleB+e0g2jbDVO/bRWnPewP
         mf5tfjmplDUp5U3w2tHOQ0G1XXJiscar/xTAUENAX6Gm8uhFDtPSJzL/62m2+P/bPtCR
         N8pFk4PXpv987WrjqU5b8sY456Fvqypze1B873Mbtle8hL7mXIchUXsT5YEH0vn9UteV
         KBFGoSI4wPC+TTUz5DgiD8GsQeYM9g1SDSmjgXRm1U8CIiU6TvrhUSd3ph8QLyAFvaLS
         MWcQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GxU8H+8w;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VxO9Nez2lsCkGUbEXSvT+FJlVIxpA+jghGZOmin85NY=;
        b=ooTqzyXEuEhPcM3iUaQRRZCOAfviLktwe9x30n7ZNKgSv3OVv4LNeWFXNHGSfx8ttu
         2UZXCnRo4078sIS37I0L5Fr2k2nvWBvSQZlyUXdA1n+k81u/hhp6U7QwK2yIzZPZXDu2
         QE4etcSf/gs+aEqGSYl0FsV73zrdzz/z0LUXJxIz1fxGboP/O75fURxJNvbPL5oZOhrE
         8t4ukxsnqYZTD3EwJ8ZkEHnd0Z4+/nJSegjp9zUTDj1s1BHhKXjbGsvmynma3XbAfn26
         txdY2TNxF2n+SDalNN0J3oZktTL59Z4t56ZoVeOcqcBzGI7gJ848YeZhMkC+37CMVJ4p
         QKtA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VxO9Nez2lsCkGUbEXSvT+FJlVIxpA+jghGZOmin85NY=;
        b=cM1L55DKgm6KMJ5PJ7/K0pKTYaN6MWV7VIWcTsRZWYva7H9WJvtw1oyPRr89kdRX8k
         Q2ovbJ0by7Og5hKdQljYQieRWTCMTJlb8p1Gou3O2cLpiaE6rcyHvlIj2gsNQiyvvqvt
         cNTljprQbI+PTMj4hjLrOOEoyUZo+P/cUf8742R9FTc9iOgK5binpCSw7HhrFr2fVwt3
         t1/uysV6M2GagcMTFDHq11t6huLAC7uoPDvC/JmtPfZ9KhXNhHNWD3ASSJ5KPANdYg7W
         EaCbxCZPz5hjm81/gGejLxYaiFyQHbQLvBTCLaZM9UWnNGWRyqXRrX3d/7U6pnaAMvTF
         9YEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VxO9Nez2lsCkGUbEXSvT+FJlVIxpA+jghGZOmin85NY=;
        b=gxvVTJgcq+JC5idPJc/nftucDR6O+DNAtCBbGoBk5/+p5lJ5Wb4CSZw+xxbMNOmiZc
         Aht34CrZaZ/NGm4tfdqIamd29IJTMgnb1ChH9G9EghdL2AerDo2E6bRXoMDiNeGl5K7M
         oxHIXvu/theuiItF/xVanIAp0AjOZSVbxC1hKKrFWfD85pvrjtPfvDLpaxo4CJfl8i0y
         aR5HplNqPD2AKNWdqeWcXM/zBLfCUdNg7mXJGYPrqlVGwGKuLqC52vcF5DQKAu6Qr01j
         KZQjfBtZvoQoY1RQKcGH8SypDRLF3cSkd3sYSDOS5alrxOeyoev29/yBgnP7PGCwsVoN
         qfjw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXBzWstTpncYf6o6J1p/XxEtchHmeQi8DURnNJYl7UWCutTyA4e
	9yO7129BJPBHi+ftyJYUqhs=
X-Google-Smtp-Source: APXvYqyFVqEEGVhVoY/Af0ETjxzuX9GKDoCiOJ6hLPp4h4ufHI5MZm8s41aXLT8pP/qvz15AVHlfmw==
X-Received: by 2002:ac8:721a:: with SMTP id a26mr19913271qtp.31.1582088073463;
        Tue, 18 Feb 2020 20:54:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:6550:: with SMTP id z77ls2779378qkb.10.gmail; Tue, 18
 Feb 2020 20:54:33 -0800 (PST)
X-Received: by 2002:a05:620a:412:: with SMTP id 18mr21996338qkp.213.1582088073143;
        Tue, 18 Feb 2020 20:54:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582088073; cv=none;
        d=google.com; s=arc-20160816;
        b=Hhme3abb8n1h6FI85RJ3eOxsAjdUYZnUXgsKeMzYXYMsrWuwjvgWide45YPkYGMmST
         XxyLX5BCGdgfztl2KzkQffGHovBAFKx7PH8FSoWT4b2udQ6Y7KtSnK7cdryU1JmPQ1bn
         fnFpiLSIaNmoN33j1Hj61uyGUZHMC+3HB1Kg5azT+pW5h35ijtJ3Z0264Ebtglrlh4CV
         NGUemqFq0lbm8FD4D1Ksg60BtLcdGCk5ggOywlZEoqK/nSbcu/3yR4uuaiTIrA+nyQaI
         yWsn6BH6JUjTwTaXNDM2z1F4P6eTvsRMVtDrQOxRgF7I8t1RkTbDkEKyJKPoJBVZ+vUi
         b5tQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=z4GEXAYyqQWsp025ogzeKnxOXkjpBM0jeh4Jkb1AQ/E=;
        b=Wq+V7ZnLHi9rJVSCcbX6Q8y1bhGq+w+WfM3SeHr7kA1DK+pY/zhmmOQmbhUySWi0t8
         mV+mn6KPvP49FQPJmEKOn6wrUUiQ0gYI9Xh1i3oJ3rMuBwEbcshqDxEewz6cNnXAgUPp
         LMb7maG5ZfPT50QERu5amKKzIZ+i3QTT2+l0ct1nbao+ZbBjyJptk8Da/f3DPaBuPU2H
         cxRldcNQ0DRDJcJsA52m+B2uMq5xHyQTLYKCOg+Aem0Dkc+FRHqCHk+ZCcUNgbzZ+NQS
         ePgNidTpFK4zi9tOz38+FHMrH45YkK3TGh4t4HGu1Eip6nq3IDrpsAW06JagYTrXV5z4
         +Rxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GxU8H+8w;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id e26si49370qka.2.2020.02.18.20.54.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Feb 2020 20:54:33 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Received: by mail-oi1-x244.google.com with SMTP id q81so22632731oig.0
        for <clang-built-linux@googlegroups.com>; Tue, 18 Feb 2020 20:54:33 -0800 (PST)
X-Received: by 2002:aca:c7ca:: with SMTP id x193mr3514163oif.70.1582088072470;
        Tue, 18 Feb 2020 20:54:32 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id c7sm288894otn.81.2020.02.18.20.54.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Feb 2020 20:54:32 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Arnd Bergmann <arnd@arndb.de>,
	Steven Rostedt <rostedt@goodmis.org>,
	Ingo Molnar <mingo@redhat.com>,
	Jason Baron <jbaron@akamai.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Andrew Morton <akpm@linux-foundation.org>
Cc: linux-kernel@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	linux-arch@vger.kernel.org,
	linux-mm@kvack.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH 1/6] asm/sections: Add COMPARE_SECTIONS macro
Date: Tue, 18 Feb 2020 21:54:18 -0700
Message-Id: <20200219045423.54190-2-natechancellor@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200219045423.54190-1-natechancellor@gmail.com>
References: <20200219045423.54190-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=GxU8H+8w;       spf=pass
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

When building with clang's -Wtautological-compare, there are a few
warnings around the comparison of section boundaries, which are linker
defined symbols and just contain an address. Clang says that these
comparisons always evaluate to a constant because it thinks they are
regular arrays. This result is expected and reasonable since we just
care about its boolean value. The kernel does this to figure out how
exactly it was laid out during link time so that it can make certain
run time decisions without hard coding them via preprocessor macros.

These comparisons always evaluate the way that the kernel wants (done by
comparing a Clang built kernel to a GCC built kernel). As a result, this
warning should be silenced in these particular instances so that
-Wtautological-compare can be enabled for the kernel globally since it
brings several useful warnings within its group. In other words, by
disabling -Wtautological-compare, the kernel misses out on several
useful subwarnings that are found with existing static checkers;
catching things with the compiler at build time will make it easier to
catch issues, especially as clang starts to be integrated into CI
systems.

The warnings can be silenced by casting the linked defined symbols to
unsigned long (normally uintptr_t but the kernel typedef's uintptr_t to
unsigned long and some kernel developers prefer unsigned long) to make
them purely numeric comparisons, which will be converted to a boolean
without any warning from Clang. The casting is done within a macro so
that it can be documented why this casting happens, rather than
sprinkling random casts in the few places that this happens within the
kernel.

Link: https://github.com/ClangBuiltLinux/linux/issues/765
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 include/asm-generic/sections.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/include/asm-generic/sections.h b/include/asm-generic/sections.h
index d1779d442aa5..e1f3095a50c1 100644
--- a/include/asm-generic/sections.h
+++ b/include/asm-generic/sections.h
@@ -169,4 +169,11 @@ static inline bool is_kernel_rodata(unsigned long addr)
 	       addr < (unsigned long)__end_rodata;
 }
 
+/*
+ * Comparing section boundaries trips clang's -Wtautological-compare
+ * This silences that warning by making the comparisons purely numeric
+ */
+#define COMPARE_SECTIONS(section_one, op, section_two) \
+	((unsigned long)(section_one) op (unsigned long)(section_two))
+
 #endif /* _ASM_GENERIC_SECTIONS_H_ */
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200219045423.54190-2-natechancellor%40gmail.com.
