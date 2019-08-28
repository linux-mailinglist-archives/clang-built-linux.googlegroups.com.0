Return-Path: <clang-built-linux+bncBDYJPJO25UGBBJENTTVQKGQEGZYRCAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 9002BA0DE6
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 00:56:37 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id p16sf872460pfn.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 15:56:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567032996; cv=pass;
        d=google.com; s=arc-20160816;
        b=lMn1WEJTggsJWK//FnocnqaDqZwC7HufjatPX4CEtls0TP8fFCFXe7z3YSYPjjTESP
         4ckiO2OV6RlfhIsSZy4uRXlqN1T1eTu2ReYTQtvoeH66Gm4ygy/xJ3jPjbqowvVwcXjv
         IgsIltcG8aJk1cxDAKyjD4kPGf9y0YKcnftM3hLkoZ8zIUI0mKP/jPwP8POTjRQle+am
         xBv0w/aPpNut7OHpgMMwVpYVC8KPHvHB0do6rjk4zSsMygbYj4c0Oypjm5x20ql4Imuc
         BDnjxL9H3wVjO2cPGurC8rHx7qicWq6b0ACfA5n6sGtd1BA54K3sJBpj31Gd3XCRbZsl
         XsJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=eoeud5kZ38Y/Dc1mex/fnkbE+VfLaCCGwKdsQ71sAS8=;
        b=rv/52nL80C+QDgEHs+hDy0Foi9dT2AdT2fIyYZfB2OrD57lv8RbJLo7Zuwv3eFo0Ht
         Y6oWMcPv3zhYkYT76IbdDcE1+Cq7ehT8F+b0q+EQMvdL8m+/kpSlrMPbkVrR4RYlnLR1
         ROQSXGtJL7kWq0XSN3qK7d5LavDrEG350gUPirWbGGDlDWUSuWBQ+SUVu+qtI/cjAOI0
         31pe0qLCfsD0O1vNc5TSLQeaXQ1/NBwf5aVNB+5A9HxcdmQDmNHbHcJNKgTN1gju4gaY
         FocrA8j/PyXgrqhUHpzcOO2OAMMQqNK3u90SU9aEHyXGlxACUC/brqw4DD4fOCm31YeF
         uNcQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=K8RHoPgM;
       spf=pass (google.com: domain of 3oqznxqwkadwlbcqysjlgcpqemmejc.amk@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3oQZnXQwKADwlbcqYsjlgcpqemmejc.amk@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eoeud5kZ38Y/Dc1mex/fnkbE+VfLaCCGwKdsQ71sAS8=;
        b=Z/mnd+KgKy6ZlikR+e8h1uflG9L6VqYgZoFycH1bQHRUo87wBGjggb1Ym+TjlyOLxf
         E+sWz3J1itCc5czsOaRFSBqeSEi//tK92KOQTvJbS4/0CcIA64ZQvBaFA/TaH5VHMLrS
         x2jOoYDanwfcBrE2bdzCAx0mOx3m/HVUMc8TSyvC/OTJckWhyzjA4FefgkgatJKkVtgd
         H9iJ4DfuxV691iwrWFX/kWQ2P9L543pZnpIintpKkXh+RP72yigl5t9jFDX2ad67/xLv
         J52P/rIYHPyh5BwcL2fdBl8aogBztriphSJwU7cz5tB3gWDH1pJDzmRSBhrJlqv6UJks
         y9Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eoeud5kZ38Y/Dc1mex/fnkbE+VfLaCCGwKdsQ71sAS8=;
        b=CUYY6MNx3CcfgGe9v00L9iBFhakFpVJO3bYp6qNmqtMiVFzjTQj9qR2xMQlhqnzYIk
         bHafl3B68qD+Xjkq/81wFyna0DyUW71zUFcRaIBeZyP7TkbK0DV/UdYgwHd/oF/aFx9U
         Uj/Wh6i3kKUOEnymA+tnOi6cvadzvdj876SoXSTHDiEhoJIgtzx/Pr7/Db9LKEfUGBqk
         DzJ2zAJh7yJ6s2DdPZRtwy9ogrvHh1AvkiW3qc1SiX+YUGupZ2MmkLKVzFNoUxsuRisN
         Lkc1XgsveTEXEVjge5nljywUKtFTHzOLF5/YhUc8uvey97LE0Kfs0ZKvuTd+D90rbPOy
         jZcg==
X-Gm-Message-State: APjAAAUjxT2iRqG1pVQgk0shHeY4nF9fNTLnbVPbdHpZ+BZomuqo/vBz
	QuJWFroPb6SxdvP54BIlYqc=
X-Google-Smtp-Source: APXvYqxmjMzxMey5EQxzWc7GC1ExGgXlCw5o3B22wNggmK3+TerCTDqJ8I1awZsR1pPpGRF+PEyydA==
X-Received: by 2002:aa7:9e9a:: with SMTP id p26mr7723759pfq.25.1567032996254;
        Wed, 28 Aug 2019 15:56:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:90:: with SMTP id 138ls81583pga.1.gmail; Wed, 28 Aug
 2019 15:56:36 -0700 (PDT)
X-Received: by 2002:a65:62cd:: with SMTP id m13mr5474781pgv.437.1567032995888;
        Wed, 28 Aug 2019 15:56:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567032995; cv=none;
        d=google.com; s=arc-20160816;
        b=kgJsF24XuaIl4hAH8fga+sGoLknAveMl5Ob6au5AJ+5WtjjnKDDXlgYCNv2T+LsTc8
         cLxaN96SJkoyInQC3hPfmKZBJtfD0HekrR7jlH7D4WVkWYu/7N99YXHNMfGQkKUtJBx/
         p8Aq05KvTQesBY52R+/WngFql509Q6kNI+ZhhX0PUqzrgGQlJajr7CS7TEqZcY3DcKdF
         Q7W4rT7UbtwQs7lVbV6TntNc9/+vUhtfLaz6ExBOqwYzkNw/+jkK5NeODlNKFISohorG
         I2Z5F3M53pc7Bz9VDXhZBlOnxDjFVd4gY/KHwyyBp2FykVrCX7ohFFJeHPn+WrdPed03
         P5Eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=LzcRbLdLn8n10++XwDQc5vyYA3PF12gHibA7BtY6a0Q=;
        b=HhUaaawO0aXHR1crCJWJyi9LJx6ZNUPHJPqaZmKJvcGX1UXzNEWotz+o8tm9gAajZc
         3eEnrAYzTiooZCwuKFhvhIAS4zAbt6KUp38V20NVby2TthLBfLxFrdzjGSCiZ5K5KSVV
         idcpDKAN1GGEyf8fyQPbclR/mtXVkRziDzGmoS7jhXQJeQr3oux/gB/W1FPWn3I4HyQF
         U0ajNMCNg1qdhiG7iFWAFWG1/GLR5C7H0BvnRCIkXR3SemQjSmrfFHyvBkmMkPmT8yD/
         1jV5YNMPXcWRSTkwPqbZyuTZ9dTeDAoDo83BVZjjb2zggeRV9vWd0on9KpT96EQRq4pJ
         2jsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=K8RHoPgM;
       spf=pass (google.com: domain of 3oqznxqwkadwlbcqysjlgcpqemmejc.amk@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3oQZnXQwKADwlbcqYsjlgcpqemmejc.amk@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id m12si306132pjs.2.2019.08.28.15.56.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Aug 2019 15:56:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3oqznxqwkadwlbcqysjlgcpqemmejc.amk@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id o4so1625606qkg.11
        for <clang-built-linux@googlegroups.com>; Wed, 28 Aug 2019 15:56:35 -0700 (PDT)
X-Received: by 2002:a05:620a:130d:: with SMTP id o13mr6782091qkj.285.1567032993987;
 Wed, 28 Aug 2019 15:56:33 -0700 (PDT)
Date: Wed, 28 Aug 2019 15:55:35 -0700
In-Reply-To: <20190828225535.49592-1-ndesaulniers@google.com>
Message-Id: <20190828225535.49592-15-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20190828225535.49592-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [PATCH v3 14/14] compiler_attributes.h: add note about __section
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: miguel.ojeda.sandonis@gmail.com
Cc: sedat.dilek@gmail.com, will@kernel.org, jpoimboe@redhat.com, 
	naveen.n.rao@linux.vnet.ibm.com, davem@davemloft.net, paul.burton@mips.com, 
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=K8RHoPgM;       spf=pass
 (google.com: domain of 3oqznxqwkadwlbcqysjlgcpqemmejc.amk@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3oQZnXQwKADwlbcqYsjlgcpqemmejc.amk@flex--ndesaulniers.bounces.google.com;
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
2. Only use __attribute__((__section__(".section"))) when creating the
section name via C preprocessor (see the definition of __define_initcall
in arch/um/include/shared/init.h).

This antipattern was found with:
$ grep -e __section\(\" -e __section__\(\" -r

See the discussions in:
Link: https://bugs.llvm.org/show_bug.cgi?id=42950
Link: https://marc.info/?l=linux-netdev&m=156412960619946&w=2
Link: https://github.com/ClangBuiltLinux/linux/issues/619
Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 include/linux/compiler_attributes.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/include/linux/compiler_attributes.h b/include/linux/compiler_attributes.h
index 6b318efd8a74..f8c008d7f616 100644
--- a/include/linux/compiler_attributes.h
+++ b/include/linux/compiler_attributes.h
@@ -225,6 +225,16 @@
 #define __pure                          __attribute__((__pure__))
 
 /*
+ *  Note: Since this macro makes use of the "stringification operator" `#`, a
+ *        quoted string literal should not be passed to it. eg.
+ *        prefer:
+ *        __section(.foo)
+ *        to:
+ *        __section(".foo")
+ *        unless the section name is dynamically built up, in which case the
+ *        verbose __attribute__((__section__(".foo" x))) should be preferred.
+ *        See also: https://bugs.llvm.org/show_bug.cgi?id=42950
+ *
  *   gcc: https://gcc.gnu.org/onlinedocs/gcc/Common-Function-Attributes.html#index-section-function-attribute
  *   gcc: https://gcc.gnu.org/onlinedocs/gcc/Common-Variable-Attributes.html#index-section-variable-attribute
  * clang: https://clang.llvm.org/docs/AttributeReference.html#section-declspec-allocate
-- 
2.23.0.187.g17f5b7556c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190828225535.49592-15-ndesaulniers%40google.com.
