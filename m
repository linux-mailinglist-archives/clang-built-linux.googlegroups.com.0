Return-Path: <clang-built-linux+bncBDYJPJO25UGBBTNKS3VQKGQE56IACJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 543859F446
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 22:40:47 +0200 (CEST)
Received: by mail-ot1-x338.google.com with SMTP id o21sf94017otj.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 13:40:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566938446; cv=pass;
        d=google.com; s=arc-20160816;
        b=KXJ4TDE7b+LnAiSQnp4AXGE++u+g1cXNzcgoZ6XYdFJiG5rjzOPFbVSdf5meJDI6Wm
         Diig2EL66NwK8hjAVTwk1rMszxoJywV0Nlx5jCgnHJcR39rk7pJFvTWZKD7YgywOViMe
         z5BAyCCNNZSW0jYr3dnA/zy4YMN/h+bjRL0X52WeLqKjoe4r2GEd48SfdWdgtMyyZCB3
         tPcBYSHWL883VsdfdQnpaptbBRUChbRXhnIckG1jIzqGieRYx3jwxuPDFnhaORozSJRX
         c6TLZhBGaao9YxSg+fchzy8XptqRuEF7ICuyr2MqIP6CXJUXYQzIGsOD832UZIr98ilo
         rGCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=tvmzZF2LstWHW/IcQ40bAypZXWEvt0fSsSD+2oycRFk=;
        b=LbFXugqcsQnmh5WbgCymsJ2QuMtlPpFQRO+urRRLCgOhnZU1neHoDlgtl/A/cl0jGn
         cgowv3w+MFCNZg4ePlHVzrdgd99swj9dAKXTjlYwJ8zYtnDf7iVhGjuTjg/8T1a9DNzF
         L0ES6ECiE6kq4ENRJjqdmm/AsXuo9VriifbP2dF0v9b2VWtZmkXu5IdQEbX378vxUqTG
         9xxQjcBVi5j1cchvIogwedsta5IbPWOW7bYvCvcYI+AiiSctDEEw5qKoZJawQELHgdl6
         zayZit6q/W70FW7oMIgh2aXsYt5AQBj1AAEDIKpvfVgVbqX8JIqQ17sif5LqV+puLpZq
         erxg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aIlVMPtE;
       spf=pass (google.com: domain of 3tjvlxqwkap0sijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3TJVlXQwKAP0sijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tvmzZF2LstWHW/IcQ40bAypZXWEvt0fSsSD+2oycRFk=;
        b=Ao6/S7EHzhg1VqKHzmEA/MHPKNbjf6ESEzMcvmQoRjlZPRVTqTrEFFUYcaRuk1tUZg
         eTNnRPeQQcjB4mTci0e13P0B1CeImAq38n3wt/lVlhqAyhiyfW3HNoIYELPIbKPcln6J
         bpKatlLfBqhABQnk0godBr6dWBOxIkqAk3GmRZls/PW2WJ0bL+lQbaF9lUMxDiv4VVBI
         LmeWPFMwAitCjLMXkppKqfqBEYMI6A1nLWe3sa959+7XseVC8/PmbqjdjgB4AWGlLLIo
         1NZy7gmDVH04dfGdkHHufOMiBzRGmJM7NeZ27kBgK7VlEVec5Yc5STm5x+6I764Vq8RH
         RY4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tvmzZF2LstWHW/IcQ40bAypZXWEvt0fSsSD+2oycRFk=;
        b=OXgcs22ni/0bz2HeDb9j65UujrIuUNlL9K2MK6HdmPoVwt+twlQf9VyYCfi04MeQ51
         dmI5wWtAHiisOZUOE0Y173SDPbAEE3HXlUYUe38L3ljRK9jDNna+u7YQtmxD2tgRL9Tf
         YXIgxY7UjHb/zTcKSS8TdbWqK0KENyy06n2QYgQfCCfNVwLkyNV9Yf5xrvSfYHfAksSb
         DmCj32lr9iRCRPfQ031BB9HFCQYwrN+qomuuBX7H6JQZB3tTffCw4yGyEgwgHzqD9IC+
         ArqDUiA8zsPe2x+o8TVl0t5s5u02Goj09oLHZtlg7ehB3R2+wnZCtYlmH0ZOUTc9Pvld
         7eRg==
X-Gm-Message-State: APjAAAXmaRRn6VV1uiwL8xGPS2BtCZcBVw216EdsoS7GsyfBVtehN9J+
	Uk0wjQkTSSQhGm1WqcgVmfA=
X-Google-Smtp-Source: APXvYqzTDd9IwctKv3sUNdLxeQA5Vr609G9nQJ+ER+LQP8NgBP94BbggqvZLr4L4SZjxHR/bfJ6rXA==
X-Received: by 2002:a05:6830:1e96:: with SMTP id n22mr415355otr.368.1566938445980;
        Tue, 27 Aug 2019 13:40:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:2489:: with SMTP id z9ls106796ota.9.gmail; Tue, 27 Aug
 2019 13:40:45 -0700 (PDT)
X-Received: by 2002:a05:6830:15c5:: with SMTP id j5mr453782otr.296.1566938445762;
        Tue, 27 Aug 2019 13:40:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566938445; cv=none;
        d=google.com; s=arc-20160816;
        b=tuSTP8X7G5q3LiOYnj686m4XJBaG/e963jYFHZ/ss8o3Zc+Ff7iGQpGc2K331S6QOo
         WphztBp0wgKwzXsQ36XLg6XPazjU5IWIDwsJMHs3r7aggXY7BjyxCS9B85er2ak8wudu
         JZeVKspdMEOq2paJja+SjkItY3exS2FsnAJFjgOeg6+qyZATdqztgOX0+BBYJ1Njo524
         gTFIIUSCAncDkikwKtIAh27yOW4I+34+UwypAG4E8uLk5RdRHdGaIfXqSodNAPDVqiDH
         B7S6Esk9Y+4pqIzgNlEBAuY00qIJCD0CEfmpfbbUFL69JY6K0GJd4bPY4LQaMk3Zw+ho
         dp7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=6yNuMZ+qRtYF0Z0S5bbj5Vin0heyTc8hHeZYmojDlCY=;
        b=PKQOm5n1NAhmicFKhH/2mXsgegmjH7rvGAIkkFKEZWDICNWmv3U0dyJgSbmFTJq7pH
         1qudiRQo/49rLCCLzR+QXl0XxWzoyXTaU5d8A4veoazZRLrSOcfYowJX+xTEFq1LYvrg
         YTDY7FPM9/1eqRkHowKKqJCVnPwiwxbi2gtCrai5M5b1sRpxJDl6yYl08OwCRk9JbZ/O
         7W/q3aNySJG1OE6KXK5gJa9p3kgvVNoGAzKBpsMJVXmJy/YzpbfgEbn01AvSu7bJzOmj
         C0z6imqc2N660Lak837dlGwuNrc38GtsqhfgEfrt9krj6v+Qe5yhYE9lDxCBuhj7Gm8c
         x4iw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aIlVMPtE;
       spf=pass (google.com: domain of 3tjvlxqwkap0sijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3TJVlXQwKAP0sijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id f16si29625oib.0.2019.08.27.13.40.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Aug 2019 13:40:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3tjvlxqwkap0sijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id p16so238679pfn.3
        for <clang-built-linux@googlegroups.com>; Tue, 27 Aug 2019 13:40:45 -0700 (PDT)
X-Received: by 2002:a63:4e60:: with SMTP id o32mr323110pgl.68.1566938444719;
 Tue, 27 Aug 2019 13:40:44 -0700 (PDT)
Date: Tue, 27 Aug 2019 13:39:59 -0700
In-Reply-To: <20190827204007.201890-1-ndesaulniers@google.com>
Message-Id: <20190827204007.201890-7-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20190827204007.201890-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [PATCH v2 06/14] arm: prefer __section from compiler_attributes.h
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: miguel.ojeda.sandonis@gmail.com
Cc: sedat.dilek@gmail.com, will@kernel.org, jpoimboe@redhat.com, 
	naveen.n.rao@linux.vnet.ibm.com, davem@davemloft.net, paul.burton@mips.com, 
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=aIlVMPtE;       spf=pass
 (google.com: domain of 3tjvlxqwkap0sijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3TJVlXQwKAP0sijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com;
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
 arch/arm/include/asm/cache.h     | 2 +-
 arch/arm/include/asm/mach/arch.h | 4 ++--
 arch/arm/include/asm/setup.h     | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/include/asm/cache.h b/arch/arm/include/asm/cache.h
index 1d65ed3a2755..cc06079600e0 100644
--- a/arch/arm/include/asm/cache.h
+++ b/arch/arm/include/asm/cache.h
@@ -24,6 +24,6 @@
 #define ARCH_SLAB_MINALIGN 8
 #endif
 
-#define __read_mostly __attribute__((__section__(".data..read_mostly")))
+#define __read_mostly __section(.data..read_mostly)
 
 #endif
diff --git a/arch/arm/include/asm/mach/arch.h b/arch/arm/include/asm/mach/arch.h
index e7df5a822cab..2986f6b4862d 100644
--- a/arch/arm/include/asm/mach/arch.h
+++ b/arch/arm/include/asm/mach/arch.h
@@ -81,7 +81,7 @@ extern const struct machine_desc __arch_info_begin[], __arch_info_end[];
 #define MACHINE_START(_type,_name)			\
 static const struct machine_desc __mach_desc_##_type	\
  __used							\
- __attribute__((__section__(".arch.info.init"))) = {	\
+ __section(.arch.info.init) = {	\
 	.nr		= MACH_TYPE_##_type,		\
 	.name		= _name,
 
@@ -91,7 +91,7 @@ static const struct machine_desc __mach_desc_##_type	\
 #define DT_MACHINE_START(_name, _namestr)		\
 static const struct machine_desc __mach_desc_##_name	\
  __used							\
- __attribute__((__section__(".arch.info.init"))) = {	\
+ __section(.arch.info.init) = {	\
 	.nr		= ~0,				\
 	.name		= _namestr,
 
diff --git a/arch/arm/include/asm/setup.h b/arch/arm/include/asm/setup.h
index 67d20712cb48..00190f1f0574 100644
--- a/arch/arm/include/asm/setup.h
+++ b/arch/arm/include/asm/setup.h
@@ -14,7 +14,7 @@
 #include <uapi/asm/setup.h>
 
 
-#define __tag __used __attribute__((__section__(".taglist.init")))
+#define __tag __used __section(.taglist.init)
 #define __tagtable(tag, fn) \
 static const struct tagtable __tagtable_##fn __tag = { tag, fn }
 
-- 
2.23.0.187.g17f5b7556c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190827204007.201890-7-ndesaulniers%40google.com.
