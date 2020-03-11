Return-Path: <clang-built-linux+bncBAABBXOQUXZQKGQEJ5XDRTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 07C44182509
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Mar 2020 23:38:23 +0100 (CET)
Received: by mail-pg1-x538.google.com with SMTP id e2sf2170906pgb.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Mar 2020 15:38:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583966301; cv=pass;
        d=google.com; s=arc-20160816;
        b=c8CcQ8f/zWBXbx1iRk9vaPGuEYFQWe8uM+V64ZCX5Vk2WzXUjVaRIqJa2MOJ1Y/Ehh
         iiWgayh3Pd22P1erSxCYdEmc09N/QMhLlU3NtSPjnWO+ftnG/W+kWxcyztnWOZrRDrwv
         SoLpse7emAcLYF13B1dRyo2G2+nrjhO6w+iUkgvlg0UuCSn8rOBy3+zjAJKMV2XB7zjI
         UUj9+Njh1NkTT+wbAgXkExgbeSFRYifPaC6tyQv/xJK22ZWj4SV+VKJa7HVf2N2Tnp4f
         8zU0hBUrwcDYK6mSHE/j+3Bd5fCDjxEFoRmhFapRII7agSx/yx0nsOZVjYqunFPuhm8U
         EdWw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :dkim-filter:mime-version:sender:dkim-signature;
        bh=yEo6/uNwAlkqDPLWMed7TTkPCmhXfuvBLrlRuZFyxpU=;
        b=MHfRxlGP4B/dTfbRcqmgtD0gBrNGGr3okf+FyqHs5NbsiW791YN5nrEWLCmk+jb2B6
         osX8ZQ8Bpl86/TZ6l9uGKkQndh/zWDIHD4750cXYBda4p4EabQRSImEFKdEGNibn/QWb
         5b8kZ8JhFvIGiOHhDk2736vreizdBp7VGhRrVP5K4C83NXrbDo8xFcVNVWwrFPo0WX8y
         qiPuMgWAg8WA5DvSpxdJqXf0R/+jwUWvivhsQCb8KOktCqb38DWiAPMb7kZISpKXsOHf
         5MAkZtrfYUiVE3W3HzbzRfqVVB00Ccy2YWKo3Te87afjgVfGZwsNPI5E0ziF6f9Uw4Lq
         bq/g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="MV/GMLbm";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yEo6/uNwAlkqDPLWMed7TTkPCmhXfuvBLrlRuZFyxpU=;
        b=DYttzMpsBTKdbRLFUgD/LPzdvTlHuu6gS45vkI62630nOJPEyzpm1mdfENlwc1nbV6
         AibXXJPSk5IQXcd1F3IbI8Fx9JW8iE1ZNiimpTvmodCcIuxCLo7t1MsaxlIQ6xTiPeiP
         nDz/R5Op9cIJduPb/iaerngwsNx1wNBK0N1EwyJSxO1UIcgM15TKlndAmMWHauLT/+uq
         0Z+GLsH4hVztERi/f8HGlE8lGBXf80lF9U0v1WONTugIduQvZV2tT+0VElGSPucnARO+
         Iskf2zG9s1qcQB2Iw7QZevF2ycTfCSGx1IRU6LtS8OYsgHJYtGCeNIPUNFFt9R4OlIv9
         +Dqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yEo6/uNwAlkqDPLWMed7TTkPCmhXfuvBLrlRuZFyxpU=;
        b=QuKO/beWxRh9OjUjuNmT6Ql/XNQrtdDCKFHLF6kUXZCUOp1A+YNvU4Q+JX0VMqXKSX
         xyBW47mCa+zKpjNzL8tRsYWyDEGLWq2ROIcqrhTLBGcUliRiYUNB6jsP7sVxINBmMPD3
         okjAHJDcaCB4cO/I++dYODisdvVQEoWodRXX/74ap8+MkpfMBxumEU/CNDhBkcv7gf7t
         pgAChIHvmJo1O9t62CMedK65gDYbOpaw1Z07WZr/a5gOOjguaSMzqvccguGh8JbWuoRa
         CqpxktnkpHH/IoItx9zkqu9/xVvW+EMRz28tXCJp5i5Ilt7Wg2yQrcm9oUNrI0gSHqFf
         MzkA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2jHhH7M+9X1D0wEjoBEweUyysXJXmb3yqRk1OX1B8xGqHzWEhO
	akQ+t9ma4qWJObScTo/rmxo=
X-Google-Smtp-Source: ADFU+vsr4fYDxjCU+38ZaywnegwCNZVxeWtjSBeRnCMrtMphy899tif8dtkP88lcpqwl+6P2a/r14w==
X-Received: by 2002:a17:90b:3d8:: with SMTP id go24mr997092pjb.48.1583966301563;
        Wed, 11 Mar 2020 15:38:21 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:cdc7:: with SMTP id o190ls1545169pfg.1.gmail; Wed, 11
 Mar 2020 15:38:21 -0700 (PDT)
X-Received: by 2002:a63:3193:: with SMTP id x141mr4841361pgx.311.1583966301205;
        Wed, 11 Mar 2020 15:38:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583966301; cv=none;
        d=google.com; s=arc-20160816;
        b=0E9RVO4BIPiBPbwjQq+O+3c9VZf9bwXqqGfbIrcDYMig5U9XD0KRp17woS1BdFiIW6
         FGTqKLLVCrisfoSTcA4wXJm1ExfrEOEF1B+oKDFmgioUsqbbf76C//Cf57sAfcpkYoO1
         Cr7JB0CzeoTgFonJB7m54wJIQGOzRDEAAyKIaI+TimcDcdpqazDO+0D3L+TNNlplD8j5
         QGB5lqt/HMF24y5u8FdKG5TPipGhBI9f4Kir6f8Bl9CJQtXWT6EQdTEm/BzdgqKg9PgP
         E6AknXfhWUH6mvF5Pr9HePQr67QUwbnP3YGyrAKlU1CsvGRBgUz5GIT1WwltNz6o0XLO
         G/2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=tiAHJid7/WA3U3683+xwU6rGIWKb4aM8B2wj4c+paIQ=;
        b=HgD6/a2yOenurO4ApG4zFwsFeQGhyXTu7qq5LqZedlVp3vRj8fzPC5Hn9gS1boJN3h
         2CviYvOCQkzSL0RzXgKkTXe4F1ILVl/bAfvD+gbFEXHMoiYANAe8JgJ9nV4J9AvJrajj
         yqKuRBQm7N2z2MPSGKBG/yxa4Vq8XK6ehz8/8eChbYlA1fkBxc/XKILkrcA7R3mmoN5x
         L56AvYPytqBUpj1/gtunlcRAqQh4twx+D4z46SUNiyz/pJesAiBxZPftbIEos+29N8DP
         teCdLxU/M3k6IoUzlbg576uNy1Tswk1iLtA6cC8sHwM2CiarRongOe3sF+nqcQ/fRgIL
         baNw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="MV/GMLbm";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-12.nifty.com (conuserg-12.nifty.com. [210.131.2.79])
        by gmr-mx.google.com with ESMTPS id c10si393962pjo.2.2020.03.11.15.38.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2020 15:38:21 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) client-ip=210.131.2.79;
Received: from grover.flets-west.jp (softbank126093102113.bbtec.net [126.93.102.113]) (authenticated)
	by conuserg-12.nifty.com with ESMTP id 02BMbYqf019805;
	Thu, 12 Mar 2020 07:37:35 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-12.nifty.com 02BMbYqf019805
X-Nifty-SrcIP: [126.93.102.113]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: sparclinux@vger.kernel.org, "David S . Miller" <davem@davemloft.net>,
        clang-built-linux@googlegroups.com, Al Viro <viro@zeniv.linux.org.uk>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Ilie Halip <ilie.halip@gmail.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        linux-kernel@vger.kernel.org, Masahiro Yamada <masahiroy@kernel.org>
Subject: [PATCH v2 1/2] sparc: revive __HAVE_ARCH_STRLEN for 32bit sparc
Date: Thu, 12 Mar 2020 07:37:24 +0900
Message-Id: <20200311223725.27662-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b="MV/GMLbm";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org
 does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

Prior to commit 70a6fcf3283a ("[sparc] unify 32bit and 64bit string.h"),
__HAVE_ARCH_STRLEN was defined in both of string_32.h and string_64.h

It did not unify __HAVE_ARCH_STRLEN, but deleted it from string_32.h

This issue was reported by the kbuild test robot in the trial of
forcible linking of $(lib-y) to vmlinux.

Fixes: 70a6fcf3283a ("[sparc] unify 32bit and 64bit string.h")
Reported-by: kbuild test robot <lkp@intel.com>
Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

Changes in v2:
  - Insert a new patch to avoid sparc32 build error

 arch/sparc/include/asm/string.h    | 4 ++++
 arch/sparc/include/asm/string_64.h | 4 ----
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/sparc/include/asm/string.h b/arch/sparc/include/asm/string.h
index 3d9cd082716b..001a17baf2d5 100644
--- a/arch/sparc/include/asm/string.h
+++ b/arch/sparc/include/asm/string.h
@@ -37,6 +37,10 @@ void *memmove(void *, const void *, __kernel_size_t);
 #define __HAVE_ARCH_MEMCMP
 int memcmp(const void *,const void *,__kernel_size_t);
 
+/* Now the str*() stuff... */
+#define __HAVE_ARCH_STRLEN
+__kernel_size_t strlen(const char *);
+
 #define __HAVE_ARCH_STRNCMP
 int strncmp(const char *, const char *, __kernel_size_t);
 
diff --git a/arch/sparc/include/asm/string_64.h b/arch/sparc/include/asm/string_64.h
index ee9ba67321bd..d5c563058a5b 100644
--- a/arch/sparc/include/asm/string_64.h
+++ b/arch/sparc/include/asm/string_64.h
@@ -12,8 +12,4 @@
 
 #include <asm/asi.h>
 
-/* Now the str*() stuff... */
-#define __HAVE_ARCH_STRLEN
-__kernel_size_t strlen(const char *);
-
 #endif /* !(__SPARC64_STRING_H__) */
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200311223725.27662-1-masahiroy%40kernel.org.
