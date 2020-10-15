Return-Path: <clang-built-linux+bncBCIO53XE7YHBBVVCUL6AKGQE2UMBQLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BE7328F83A
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Oct 2020 20:13:44 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id v4sf75676ybp.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Oct 2020 11:13:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602785623; cv=pass;
        d=google.com; s=arc-20160816;
        b=s5x93e1i/Us46aU1GXa3beK68u19/owLbXnegE9s3MugmAr5T3s8xjY2I8AAOAPsmr
         k1sDXQFVkVdADdkIYfZB6lut03QLT5Wtxy642unNRwoxB1OKJuwCtqbq23FIiHrc4U1g
         XaN74tMHc3XPEW6mbrzGCF3tWFfW0dA3S+0tvGrlsDldmkuZVFNn0og9b0B5KekCHWYK
         +94JOEtVMXnIMXM6/1wHEDC0mSmWVEw1kPUiCAYA8DCfo6XV4p694rN2+PloUbC/Xhrs
         d1m6F4DqrjKXwJAdl49wifRteU6PgzuYvVJ+/92AhLpMmUrdwF0gEgKTmrSwLL+8Sx8V
         8B2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=JgmcDwtsyF8TwaFQ2qy2UKVp6sdxP2CaTHaGGrRqGu8=;
        b=tzko39fYIkp71LIiGsrsMxljqEfOiPHVDyR1JG84oqswzX/Z4x04p2p3cKRDGXUhb5
         ZzTFDLXyN3tTIzN3Oo1kZxedYY5A5WfuAFIholctJYJAbRezuzKmgSMWJDtnQfavk6Lz
         gcZitb4GjnXShQxlxzRmkMzub0HR43NCfSyOUMNAlbKDAxJZYtA7E+gWdQeCf7jlHhah
         TX4xqWaE4L2j2q3qk061/t6hCiBBQaglFBKUFHwAz8M+XM2Q5z23p1uZnqn9SYLBiVuI
         e16iNW5yU6PMzh0V4UypQFUR1oIUiE2loNcuuGoEl311crcoAbYLFEaxvZLkW/jIJ2dc
         sO1w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.194 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JgmcDwtsyF8TwaFQ2qy2UKVp6sdxP2CaTHaGGrRqGu8=;
        b=TZSPY+7wpVkpNr0ZOc2By352Mf3+XSt/gekF8kWyP/rFh5VW3to+vbnxoJpaCIaSh+
         gqrymIm6uo4pCrYQkjcVMwUYbgKwSXKTITcXhDD+NLc1hMh7ICZjotGjfrIdCuPthRc3
         1pXrgsn6iojILqJ8MIVlEXvwYhCsMkTndsGpqAXSAaj/QAbUsLtDKmrXJSOgnn9G8W+/
         9DUmqjRtrgsquUqc9GUvIkSjiJn7BroDYSW7rLdupUTwlMdhOIkO+I5n7MUmm1g6RZKk
         kTxv4a/SEFMAzQm2KWmkx7vXi+mSw6OZuIT1GUYmgS7L+Iz5EAOV89ZfDtbqSvcIwKIM
         HJDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JgmcDwtsyF8TwaFQ2qy2UKVp6sdxP2CaTHaGGrRqGu8=;
        b=V8+zXl0VImQFrbgsx1cvDzfTmCfbQWDA7r6nkldFdtFdGtT/+Qx1492N+VeUnBLocq
         2Pt6bZfOBl5usPWFeaqe1YWhdYnlgiBn9HOEc1PWsaQAz9+C6i5JwWJNcdJ/CGVl3aVD
         GRxlhszEehaIzudmrq0Y2/5eIooq/IigpaR90oiBe+qxj3HVLJacpHOcMRUCqklqssri
         39u8db+o6DNremQU6B0LzElIGNMs2vdL2ojY2RsFak9OvpQKUnN7xzHSV3HdaIQMr5DE
         05KiMg6gkAfgLLnLuPLwWxR6bewmDE+LBxFtVj9xrvhUsG8U/0VobrfDoff9/LaKNR/R
         9CYQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531TDpl+MXLzjeM+haNjQvsBXQy0w76OLXiW5fNLrt9EyZYOgpYa
	QGv6f40rVrn861VboYkZNh8=
X-Google-Smtp-Source: ABdhPJw6eP1ejYnN5h/ADbQhAl7eRJfUk0HtDf8i9dOZsKuSG5X+0xwJ7cCtqWS5lTOBDw6nvSamEw==
X-Received: by 2002:a25:a1e6:: with SMTP id a93mr7419085ybi.42.1602785623109;
        Thu, 15 Oct 2020 11:13:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6902:511:: with SMTP id x17ls2004904ybs.11.gmail; Thu,
 15 Oct 2020 11:13:42 -0700 (PDT)
X-Received: by 2002:a25:24b:: with SMTP id 72mr7471062ybc.138.1602785622571;
        Thu, 15 Oct 2020 11:13:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602785622; cv=none;
        d=google.com; s=arc-20160816;
        b=h0TdYngQ5JELDKSOMCig3sDlhBu9SgQV7GM39P7KOXBXQwT/UcUX0EhRmPxIcPOvg4
         PrGrFI7stfQ+MpMdc+ZOzhEG/fKIsRMDDRrRDsZngmJHzRUXkIoD8rutTJ+LyySLhNGC
         oWSFLFMkmhQBtalccx6oeuR3N/0SSV4PnQPy+bmauEn+VN8y/ExDUFZaaGqC6H1bf2RZ
         88EZzFSpzojxmqpXFbwfEbwQK3cdb6jBIC5BSFgxeojBeLT23HDfGfXtc0hEIrmHWJcS
         wA6Md/93zlPz6DUsDT6yko90WK1nrTq1GZqQhGzfeKZVo5UK88Y146pm1nlEAtrfEoCN
         Zv+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=4cJuATedXYgpSJ1YqRltFNQY8ajjuWuhu8ViNrBTmls=;
        b=Jqi4Y5iTMptRbsW5hYdLqBQnuprZW65uNbIlsIbxl+dF44H32r8Ro3lSJ4f7RAjvdM
         NBezMQkhMLcoZGeFk9YHDOtRJE50RfnbB+kfFISQ8Y+TxCXWjo8+sTxAev4nTT9/h7Nv
         tB7Kco24Xa+fMbhr+dzwVfTS+V9eC3INxN1iTqb28VfZwtarZ8M/WQUn3guhMgOkyXNT
         LsKqX+nOW8MvgGArCGh7ShSBBzHzmOwbX7SKeG3j92w9Ed4gb4Co9C79PHwnmqcpEyBF
         M24pWbWyleVJ5+jLSxgunWdXM+adpLE5erCnY+OcOKcbQ4zNkIKB5CQPcE6lMz4Sl+n+
         TuXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.194 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com. [209.85.222.194])
        by gmr-mx.google.com with ESMTPS id f128si2733ybg.5.2020.10.15.11.13.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Oct 2020 11:13:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.194 as permitted sender) client-ip=209.85.222.194;
Received: by mail-qk1-f194.google.com with SMTP id y198so3106828qka.0
        for <clang-built-linux@googlegroups.com>; Thu, 15 Oct 2020 11:13:42 -0700 (PDT)
X-Received: by 2002:a37:2d06:: with SMTP id t6mr42492qkh.308.1602785621933;
        Thu, 15 Oct 2020 11:13:41 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id t13sm26319qtw.23.2020.10.15.11.13.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Oct 2020 11:13:41 -0700 (PDT)
From: Arvind Sankar <nivedita@alum.mit.edu>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	Kees Cook <keescook@chromium.org>,
	David Laight <David.Laight@aculab.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH] compiler.h: Clarify comment about the need for barrier_data()
Date: Thu, 15 Oct 2020 14:13:40 -0400
Message-Id: <20201015181340.653004-1-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <CAKwvOdkLvxeYeBh7Kx0gw7JPktPH8A4DomJTidUqA0jRQTR0FA@mail.gmail.com>
References: <CAKwvOdkLvxeYeBh7Kx0gw7JPktPH8A4DomJTidUqA0jRQTR0FA@mail.gmail.com>
MIME-Version: 1.0
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 209.85.222.194 as
 permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

Be clear about @ptr vs the variable that @ptr points to, and add some
more details as to why the special barrier_data() macro is required.

Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
---
 include/linux/compiler.h | 33 ++++++++++++++++++++++-----------
 1 file changed, 22 insertions(+), 11 deletions(-)

diff --git a/include/linux/compiler.h b/include/linux/compiler.h
index 93035d7fee0d..d8cee7c8968d 100644
--- a/include/linux/compiler.h
+++ b/include/linux/compiler.h
@@ -86,17 +86,28 @@ void ftrace_likely_update(struct ftrace_likely_data *f, int val,
 
 #ifndef barrier_data
 /*
- * This version is i.e. to prevent dead stores elimination on @ptr
- * where gcc and llvm may behave differently when otherwise using
- * normal barrier(): while gcc behavior gets along with a normal
- * barrier(), llvm needs an explicit input variable to be assumed
- * clobbered. The issue is as follows: while the inline asm might
- * access any memory it wants, the compiler could have fit all of
- * @ptr into memory registers instead, and since @ptr never escaped
- * from that, it proved that the inline asm wasn't touching any of
- * it. This version works well with both compilers, i.e. we're telling
- * the compiler that the inline asm absolutely may see the contents
- * of @ptr. See also: https://llvm.org/bugs/show_bug.cgi?id=15495
+ * This version is to prevent dead stores elimination on @ptr where gcc and
+ * llvm may behave differently when otherwise using normal barrier(): while gcc
+ * behavior gets along with a normal barrier(), llvm needs an explicit input
+ * variable to be assumed clobbered.
+ *
+ * Its primary use is in implementing memzero_explicit(), which is used for
+ * clearing temporary data that may contain secrets.
+ *
+ * The issue is as follows: while the inline asm might access any memory it
+ * wants, the compiler could have fit all of the variable that @ptr points to
+ * into registers instead, and if @ptr never escaped from the function, it
+ * proved that the inline asm wasn't touching any of it. gcc only eliminates
+ * dead stores if the variable was actually allocated in registers, but llvm
+ * reasons that the variable _could_ have been in registers, so the inline asm
+ * can't reliably access it anyway, and eliminates dead stores even if the
+ * variable is actually in memory.
+ *
+ * This version works well with both compilers, i.e. we're telling the compiler
+ * that the inline asm absolutely may see the contents of the variable pointed
+ * to by @ptr.
+ *
+ * See also: https://llvm.org/bugs/show_bug.cgi?id=15495#c5
  */
 # define barrier_data(ptr) __asm__ __volatile__("": :"r"(ptr) :"memory")
 #endif
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201015181340.653004-1-nivedita%40alum.mit.edu.
