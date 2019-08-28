Return-Path: <clang-built-linux+bncBDYJPJO25UGBBE4NTTVQKGQE4QGALLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id 62038A0DDE
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 00:56:21 +0200 (CEST)
Received: by mail-io1-xd39.google.com with SMTP id 18sf1575487iof.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 15:56:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567032980; cv=pass;
        d=google.com; s=arc-20160816;
        b=XUPhx2K9+18F4yeQP9hEMrTRJk3R5z5c7lW9g/jk0JySzk3Yqzs676uvC3PGVlHd13
         +qOGDXbjlbPC1zSl4bqhUX9kOn90BwnMCpyOwHg3muZukNXlHKNVW094CMuDzDDpFL4Q
         PMqUYBQ5HXs6KHdNFC9jf5LcWd+oYDyrQirqy5pYdUj3itWLmYiRMNxKGVePodGsZz+7
         vR8DqSAE+fcBeIvPyT4P4QXjqi8dq7jq6jDpeyOKLU1REuvpw0gnbqieKDxCax5dSlL3
         8NF8epcA600Rg+Mkr1DmDE2ja+sNEBuGpMoFstKQsbdbbrbP6xt5ulS7c03LCimjS3Ke
         Vb8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=9WZ9cD933cW+IKGHyox30Mzvouky7vfdYKBh4Uyc+OI=;
        b=ORXvsIHnSUQVoACw1Bn2dKU+J5FthVdh8Yh7INrCI+woR7/GcGQak8Akd1kB7MbYW0
         pN9nwrGFeQup2SCC6G7IEwjGbH5SJtG8nFZSwzFWAn5seizVa7KNJjQO2qtq0NC9Xyfp
         YwXfJUjR0AFe2pr5YwwoyF5tpFRDtkkopxisldGdjZTLE4SFNGGGpMSIsj9pta1/2lIe
         l+1TXGK0rkMmTtqksyyaWAdoFQB4AlErm5RKMGPKyoAb4p6wO2bd/QeClZHJZjarGdJy
         zXVXWOnrP8/5vScZoxOv3ZdmkuCnunDp+ZgO9Vcp7gqcaynwQ8OvYkzEIPETltYTz1Kq
         eCmQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="JzT8/LLb";
       spf=pass (google.com: domain of 3kgznxqwkac0wmnbjduwrnabpxxpun.lxv@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3kgZnXQwKAC0WMNbJdUWRNabPXXPUN.LXV@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9WZ9cD933cW+IKGHyox30Mzvouky7vfdYKBh4Uyc+OI=;
        b=kdOsmchbtcNxD7lvjP1MSWmuGtdx62QVG5/v4cZESRjZMS+dx8qtQ0lPLv39iV26Am
         EyYGLyx99vOUjIYhspDv1OiLUIzp6RW+1LT2QkPSMGBYFegBqpuW8Xl1kS4mv/R9zmIm
         3WyO0ycA8x4Q+k+9+T7S/q9mtPOgtirwT0EbOxdn9FRdH2O8+YpYsD9zdwvXVlBTzE88
         iIi6CY/H1nt0FdvesCgVgaPp3iQYfs+qCQUGFAcKnwPfPGHcbkx4KneiLs0ws1s92SXq
         u/l4rAnDBTCN9wjDMGXaf7VOooLK7z0Ei8/qZjwlzm2+T3BZ/IDk1jZSC07z8pNwr8dG
         qyQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9WZ9cD933cW+IKGHyox30Mzvouky7vfdYKBh4Uyc+OI=;
        b=Y5gO4xwmgi0a2o3Y0ILDQT/9FGOz+A6gJdKgsL2NvIMlNbwk8BBM+S9bJN+T8YyYSx
         MwcDipRIJs6X6AVerFka87OASXVTz9Nnh1U8Mvm+xUGKb8YRJ7f3pVVqtPVw8oRZqmJ/
         Tvy+49IBpU89LtrHhfNnPZcs+RkRyMKGqSXBsJa0LAl26ToCQ4FDnC6JcIZnNCImRVGk
         qs4wfJ9s1BjtvRgYp+Mc7roDvr58UiUU91uJk8imUbthAYm+9EXoFrI2WfZDIG+ndsaK
         d/QfrhgByMnioPXbFKn9LAtiHbxEFzFKGlTdnauPieRBki0z7AtguT+CuHg0LhRVqVNJ
         qHdw==
X-Gm-Message-State: APjAAAUOgejo18rU51hdzRUFbam4U1MXBJXQTPb3NyH0pxS4DEv7+GAx
	4KQEIXkD3pPl0mBjIk1qSZw=
X-Google-Smtp-Source: APXvYqwpmOSsBrahcRqaGqX3HtLQaiSVILvmwaLYmgQ6gIaQCL3xqM1IZyDMxr2sZz7H+RRevjZI+Q==
X-Received: by 2002:a02:a1c7:: with SMTP id o7mr7429802jah.26.1567032979686;
        Wed, 28 Aug 2019 15:56:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:cb05:: with SMTP id j5ls93825jap.6.gmail; Wed, 28 Aug
 2019 15:56:19 -0700 (PDT)
X-Received: by 2002:a02:cd82:: with SMTP id l2mr6885764jap.97.1567032979352;
        Wed, 28 Aug 2019 15:56:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567032979; cv=none;
        d=google.com; s=arc-20160816;
        b=EP2CPXevLPcWDkr+42lt4pprA2wvRFU2spOTCzmTjKHyjb0rfxBGQSU9wvdA5uhC5X
         tOTGPHI9zRG1qDfIrskM8jNBTp+9sSzvqJmP4mFAP3CuXycV7cXcb/xpImWglg9NSQ0Z
         ZoX5bNXnDNgZbYEg3F/nwLjpK3jA/l9w0Et7NANPtl3dt4DLvJZFs4mdPuk3PX+RvSdj
         VOuJ07mv/gK+EOxLW7Z0b0+jxrCZvt5KCOdLWEefsBaFvHkrlOPf5KNJUrifJ/SVByLJ
         yAPDmil6kkZG5IiRvQMgaKdkK0xn1nz3cyThEFejrdHYGvFaxqMbceFnlnok28N4vU0v
         oEig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=b7ld9YNlx/ctaSkEdtcO3fpX7aUy1ofd0MxWpfkF/rA=;
        b=an5srDQQzCyuSd4iwfkJFcsozGjyOdT87pts3jsnJBKS+yAZDTA7slW3hb1o+8vTbf
         Uv9RNv3HcKpMoLJKMt3cg52AmoEgYlWlN7M4iIoX9Td6FzBM6n4VfRl65hFs1mmaVD4C
         M/9jCG80SwGACUZAmshyTXtqA+wkqSebSGCpJOLCwn/i4kr4/JWp/uQUK4WGIpNwu2Bb
         x6VMe3+CSBo8gnGPYPSTwQ5ld2tDE8KlqpDqasqf+FaY11/nPHWU5M2HYcvi0w9NrHI8
         hLSesz78aZT5pUQPxOY/fCf14slOf7f8ATmJvwpaoFcgnLBP58sciV/eWWQ+C/hWpNVh
         6mSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="JzT8/LLb";
       spf=pass (google.com: domain of 3kgznxqwkac0wmnbjduwrnabpxxpun.lxv@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3kgZnXQwKAC0WMNbJdUWRNabPXXPUN.LXV@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x649.google.com (mail-pl1-x649.google.com. [2607:f8b0:4864:20::649])
        by gmr-mx.google.com with ESMTPS id s24si27008ioj.4.2019.08.28.15.56.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Aug 2019 15:56:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3kgznxqwkac0wmnbjduwrnabpxxpun.lxv@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) client-ip=2607:f8b0:4864:20::649;
Received: by mail-pl1-x649.google.com with SMTP id g9so801085plo.21
        for <clang-built-linux@googlegroups.com>; Wed, 28 Aug 2019 15:56:19 -0700 (PDT)
X-Received: by 2002:a63:6686:: with SMTP id a128mr5422005pgc.361.1567032978096;
 Wed, 28 Aug 2019 15:56:18 -0700 (PDT)
Date: Wed, 28 Aug 2019 15:55:29 -0700
In-Reply-To: <20190828225535.49592-1-ndesaulniers@google.com>
Message-Id: <20190828225535.49592-9-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20190828225535.49592-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [PATCH v3 08/14] sparc: prefer __section from compiler_attributes.h
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: miguel.ojeda.sandonis@gmail.com
Cc: sedat.dilek@gmail.com, will@kernel.org, jpoimboe@redhat.com, 
	naveen.n.rao@linux.vnet.ibm.com, davem@davemloft.net, paul.burton@mips.com, 
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="JzT8/LLb";       spf=pass
 (google.com: domain of 3kgznxqwkac0wmnbjduwrnabpxxpun.lxv@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3kgZnXQwKAC0WMNbJdUWRNabPXXPUN.LXV@flex--ndesaulniers.bounces.google.com;
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
Acked-by: David S. Miller <davem@davemloft.net>
Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/sparc/include/asm/cache.h | 2 +-
 arch/sparc/kernel/btext.c      | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/sparc/include/asm/cache.h b/arch/sparc/include/asm/cache.h
index dcfd58118c11..9a9effdd01e2 100644
--- a/arch/sparc/include/asm/cache.h
+++ b/arch/sparc/include/asm/cache.h
@@ -21,6 +21,6 @@
 
 #define SMP_CACHE_BYTES (1 << SMP_CACHE_BYTES_SHIFT)
 
-#define __read_mostly __attribute__((__section__(".data..read_mostly")))
+#define __read_mostly __section(.data..read_mostly)
 
 #endif /* !(_SPARC_CACHE_H) */
diff --git a/arch/sparc/kernel/btext.c b/arch/sparc/kernel/btext.c
index 5869773f3dc4..b2eff8f8f27b 100644
--- a/arch/sparc/kernel/btext.c
+++ b/arch/sparc/kernel/btext.c
@@ -24,7 +24,7 @@ static void draw_byte_32(unsigned char *bits, unsigned int *base, int rb);
 static void draw_byte_16(unsigned char *bits, unsigned int *base, int rb);
 static void draw_byte_8(unsigned char *bits, unsigned int *base, int rb);
 
-#define __force_data __attribute__((__section__(".data")))
+#define __force_data __section(.data)
 
 static int g_loc_X __force_data;
 static int g_loc_Y __force_data;
-- 
2.23.0.187.g17f5b7556c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190828225535.49592-9-ndesaulniers%40google.com.
