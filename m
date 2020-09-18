Return-Path: <clang-built-linux+bncBC2ORX645YPRBMVKST5QKGQEV3BODHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CD91270619
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 22:14:44 +0200 (CEST)
Received: by mail-pf1-x439.google.com with SMTP id e12sf4405339pfm.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 13:14:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600460082; cv=pass;
        d=google.com; s=arc-20160816;
        b=AxxWaC4QU3CwV5vIOSVUpf9cwtAWlu1V/E6sqasxKoy+ud9fi/nFYQujs4A2XOBzEu
         JHL/rW8A5GWYX68kv/6xvVDHTQKH6Ym3tN4C/ereiiiYCYHjYh5fGPqCQwHK7ePyAU7K
         PXD7yWnX7N/Ho/tT6I05Sw4eAxNCfMI2ReQS7SDfZZi8Jc32j1Ia2XvhkeDqZ1osvpmL
         TotJhxnz+NH/FTBriI76Dkp5yAzuBCCjbm7+WIC9W+qLoiZN6OT9SvbmMhhs20eoTKpE
         D9YsHQwT2YvxFkkei4P4Ag+V8s+vXWHAC+MYre5N4tOldzahxRdsje6/F5IF9fa8K6M0
         a9Zw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=v9XgB6TxHFlWR/XtoUlXCba1tEXJq+2haTMu2+c5mtg=;
        b=gDC2aRG/PTJdsV6VAGaa9N70rN/r4y6FDNZd/ER2r9G5BXoYRtqo9vrpA3bPNbaOTK
         AnjLjqswEWx8q2hFqsq3u5bwRYSl9zDr0aac/pD1kWKjsBqGKfQk8kzXiT0nFNl6yar4
         Wt29CObIw5p1uTC6DHnE75ELAxqWQ7BLWcckn0ov/xu9AzdNhrGMKfnDJgR8JQyxWyws
         0cPyQEX6ifhUwNG6NZwVH/1XVTKHUXkQTiiYqOD5UZlWFNJYHEc5Z7C/6s0pLITjjEO9
         rPioB+xkpnbH6WvwWAftQ5ujC2P4rw0fVYjPxCt2sIR4+0RiIQpL0KL4GdnxujEPXogS
         nyxQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VAY1d+BK;
       spf=pass (google.com: domain of 3mrvlxwwkapaksealgdnsfwfyggydw.uge@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3MRVlXwwKAPAkSealgdnSfWfYggYdW.Uge@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=v9XgB6TxHFlWR/XtoUlXCba1tEXJq+2haTMu2+c5mtg=;
        b=NwPXCHQqwB+nFOtDcOhf/rrCwWFCegggYrKJceY2dbsyDPgulNKlwTYZBJkIgGj/Sl
         0cDJEVhF2IDaOKz9h4k6ro6EIgZuUnay8zfegRDrZHw99YavbCe+rM9/vM6CIyHD5vK+
         YwVnPcNNH0FCtmi+XxPgOyixRdFEQ1q2jcIp7qBsPS82Yl/DOvLMZ/TpLodKXLi4JlOA
         Arz6te2Y41Lq52+z8MGLAhih7s45hKEs09iHqM9Bzqa2IeSkSnPMtsZ4L1WZwO7bKTZe
         BifbOrqF9n2pJZsFKSTnmDj+uu28TtoL8ahimTyHFN1OmN8f/A/PzcXWx6DKwXwD2wDD
         Aalw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=v9XgB6TxHFlWR/XtoUlXCba1tEXJq+2haTMu2+c5mtg=;
        b=hHFnXuAUlop3UGrGMozFp1CeqGJWDUzgZ4ycSCJOZOz90UARncg1f975hYYctgmBya
         igyHitmVubyzDojXDIO/p2KSFAEBFS7psXbP+EAXOdiqq74tL/ItiUuCzEQ4DjifgA7N
         GjK8WQSp2DEy8CX/m6mApcH1Urlw/L43fyTQsirhz089mcNBk+xlQKgFgTQkooOkZuFZ
         sPivGZhukNaM8k7e7dXK/YVotfqQfrrhX0y2dxn7DkYitAUuj51SwNZNU+teFw/S9+rN
         jpNG/fkV7AixYMhR/lSnYJF2w6yqc/uJOQew2oIA/qX/C9I2qWumE66C5/jMSgOP+AYN
         SqsA==
X-Gm-Message-State: AOAM533nBwSK1nK2Z8chO9xnUfeeQ3ScwkJT4MtBjRqSbsSt0SUVjYj0
	Yf8OYyWA1Az82pX51opHCoE=
X-Google-Smtp-Source: ABdhPJwxxKz5gDGfQERWopw4YJnOX9OUw+WHWctu2a9xuFfrvJenEFboJ44rZTZjySil+xcWxkpJ4g==
X-Received: by 2002:a17:90b:d90:: with SMTP id bg16mr14391612pjb.199.1600460082661;
        Fri, 18 Sep 2020 13:14:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8c8b:: with SMTP id t11ls3176252plo.3.gmail; Fri, 18
 Sep 2020 13:14:42 -0700 (PDT)
X-Received: by 2002:a17:90b:fc4:: with SMTP id gd4mr14845243pjb.129.1600460081966;
        Fri, 18 Sep 2020 13:14:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600460081; cv=none;
        d=google.com; s=arc-20160816;
        b=NSx5UtTnjYDuC0ceCuGPsk3WezUm7V6LO0066HqjZO4KVHVmVqv7SVBxzA/fuPVFSV
         3gfih4NN4ylsmtZxY6gL9WVP+C5c19U86VbWG5/OQXA5MPLTsFNDKN0xi5mh/tQaTGrN
         fcPGWUSqsAAzMSBJNPPeJr6gymhcOBpxPD/lbHZaKnhVPpEHRZ6TtqLbAIb5wRU2Ozi/
         gaN+2orFVvrTIMsVAbHrqU8zXs2j9iF1SyeUhjzOHW2U3QpFrF6Wqse1qvrqLlThRHfD
         9BZXyR4EZgtmrxpUROZhgrGRqtjhMVKt1TP1zcVlk0O4Dp1NTWyOdNRGFUKtCDfWdOLN
         mvMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=skSGpFbYMPCYyMt3xD2UXrEbXnhCXJcxNWr+Xyy+zNQ=;
        b=ATsKu32dgtUE3jhhXNugmkCEba50eCyZ1yn2Ff2r5fjS490Z+QqnP1t77yDzxeit0o
         FjwEldhzgzYfq+Ubqrb3HaRdJ0Ly0jdrx81wKCUzgdp84VRC1J/bdUe2fTZa7AQe1gF5
         cKDFqDZGgNUqf22qoMT3bYh5LVVgO+EBy6a04NdJ6mUaGaSmbD7f8FTfKtiwx/wuvyqg
         yIcnz5f3qMnuwbUnJt4HiDaVTpqPxpzAtDzC/bZZAygdblF9wtFaJtTBrZIazNrHcStO
         gMcI5k4NTGRAlNNaimIum+mvPbohwIKpN4kKbO/cE47Jht6iVbozN75n708FowMKj6xA
         S8MQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VAY1d+BK;
       spf=pass (google.com: domain of 3mrvlxwwkapaksealgdnsfwfyggydw.uge@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3MRVlXwwKAPAkSealgdnSfWfYggYdW.Uge@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id y1si271184pjv.0.2020.09.18.13.14.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 13:14:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3mrvlxwwkapaksealgdnsfwfyggydw.uge@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id g189so6600182ybg.9
        for <clang-built-linux@googlegroups.com>; Fri, 18 Sep 2020 13:14:41 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a25:6f89:: with SMTP id
 k131mr40244617ybc.214.1600460081050; Fri, 18 Sep 2020 13:14:41 -0700 (PDT)
Date: Fri, 18 Sep 2020 13:14:07 -0700
In-Reply-To: <20200918201436.2932360-1-samitolvanen@google.com>
Message-Id: <20200918201436.2932360-2-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200918201436.2932360-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.681.g6f77f65b4e-goog
Subject: [PATCH v3 01/30] lib/string.c: implement stpcpy
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=VAY1d+BK;       spf=pass
 (google.com: domain of 3mrvlxwwkapaksealgdnsfwfyggydw.uge@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3MRVlXwwKAPAkSealgdnSfWfYggYdW.Uge@flex--samitolvanen.bounces.google.com;
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

From: Nick Desaulniers <ndesaulniers@google.com>

LLVM implemented a recent "libcall optimization" that lowers calls to
`sprintf(dest, "%s", str)` where the return value is used to
`stpcpy(dest, str) - dest`. This generally avoids the machinery involved
in parsing format strings.  `stpcpy` is just like `strcpy` except it
returns the pointer to the new tail of `dest`.  This optimization was
introduced into clang-12.

Implement this so that we don't observe linkage failures due to missing
symbol definitions for `stpcpy`.

Similar to last year's fire drill with:
commit 5f074f3e192f ("lib/string.c: implement a basic bcmp")

The kernel is somewhere between a "freestanding" environment (no full libc)
and "hosted" environment (many symbols from libc exist with the same
type, function signature, and semantics).

As H. Peter Anvin notes, there's not really a great way to inform the
compiler that you're targeting a freestanding environment but would like
to opt-in to some libcall optimizations (see pr/47280 below), rather than
opt-out.

Arvind notes, -fno-builtin-* behaves slightly differently between GCC
and Clang, and Clang is missing many __builtin_* definitions, which I
consider a bug in Clang and am working on fixing.

Masahiro summarizes the subtle distinction between compilers justly:
  To prevent transformation from foo() into bar(), there are two ways in
  Clang to do that; -fno-builtin-foo, and -fno-builtin-bar.  There is
  only one in GCC; -fno-buitin-foo.

(Any difference in that behavior in Clang is likely a bug from a missing
__builtin_* definition.)

Masahiro also notes:
  We want to disable optimization from foo() to bar(),
  but we may still benefit from the optimization from
  foo() into something else. If GCC implements the same transform, we
  would run into a problem because it is not -fno-builtin-bar, but
  -fno-builtin-foo that disables that optimization.

  In this regard, -fno-builtin-foo would be more future-proof than
  -fno-built-bar, but -fno-builtin-foo is still potentially overkill. We
  may want to prevent calls from foo() being optimized into calls to
  bar(), but we still may want other optimization on calls to foo().

It seems that compilers today don't quite provide the fine grain control
over which libcall optimizations pseudo-freestanding environments would
prefer.

Finally, Kees notes that this interface is unsafe, so we should not
encourage its use.  As such, I've removed the declaration from any
header, but it still needs to be exported to avoid linkage errors in
modules.

Reported-by: Sami Tolvanen <samitolvanen@google.com>
Suggested-by: Andy Lavr <andy.lavr@gmail.com>
Suggested-by: Arvind Sankar <nivedita@alum.mit.edu>
Suggested-by: Joe Perches <joe@perches.com>
Suggested-by: Kees Cook <keescook@chromium.org>
Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
Suggested-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>
Cc: stable@vger.kernel.org
Link: https://bugs.llvm.org/show_bug.cgi?id=47162
Link: https://bugs.llvm.org/show_bug.cgi?id=47280
Link: https://github.com/ClangBuiltLinux/linux/issues/1126
Link: https://man7.org/linux/man-pages/man3/stpcpy.3.html
Link: https://pubs.opengroup.org/onlinepubs/9699919799/functions/stpcpy.html
Link: https://reviews.llvm.org/D85963
---
 lib/string.c | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/lib/string.c b/lib/string.c
index 6012c385fb31..4288e0158d47 100644
--- a/lib/string.c
+++ b/lib/string.c
@@ -272,6 +272,30 @@ ssize_t strscpy_pad(char *dest, const char *src, size_t count)
 }
 EXPORT_SYMBOL(strscpy_pad);
 
+/**
+ * stpcpy - copy a string from src to dest returning a pointer to the new end
+ *          of dest, including src's %NUL-terminator. May overrun dest.
+ * @dest: pointer to end of string being copied into. Must be large enough
+ *        to receive copy.
+ * @src: pointer to the beginning of string being copied from. Must not overlap
+ *       dest.
+ *
+ * stpcpy differs from strcpy in a key way: the return value is a pointer
+ * to the new %NUL-terminating character in @dest. (For strcpy, the return
+ * value is a pointer to the start of @dest). This interface is considered
+ * unsafe as it doesn't perform bounds checking of the inputs. As such it's
+ * not recommended for usage. Instead, its definition is provided in case
+ * the compiler lowers other libcalls to stpcpy.
+ */
+char *stpcpy(char *__restrict__ dest, const char *__restrict__ src);
+char *stpcpy(char *__restrict__ dest, const char *__restrict__ src)
+{
+	while ((*dest++ = *src++) != '\0')
+		/* nothing */;
+	return --dest;
+}
+EXPORT_SYMBOL(stpcpy);
+
 #ifndef __HAVE_ARCH_STRCAT
 /**
  * strcat - Append one %NUL-terminated string to another
-- 
2.28.0.681.g6f77f65b4e-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200918201436.2932360-2-samitolvanen%40google.com.
