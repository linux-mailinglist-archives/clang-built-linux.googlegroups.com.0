Return-Path: <clang-built-linux+bncBC2ORX645YPRBBNFYX5AKGQEBA5MY4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 7723025CA42
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Sep 2020 22:31:03 +0200 (CEST)
Received: by mail-oi1-x23a.google.com with SMTP id a17sf1351303oia.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 13:31:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599165062; cv=pass;
        d=google.com; s=arc-20160816;
        b=e8VKcQeVy7ZuZT9B0qIOjQ35imvq6iPKF7WuggLcCpx/wq2mgcN0yZvQBT5i3BjWtU
         kO2zKlz+jLtJ20omExtUyh5KtmgKXnyqvnnZAtERLWvwzyQEp3dqe5z+iQT/J26HKh4J
         A6TRv92pBe6I4fHEGjeRAUG+YQy+kmEsYuZg/OfEbbmEruOAe6LOwK2nklWzu8PGNVeq
         rZjwFuCzsfvDH51Kdb/iN12hJpai/DyXFuvPgC0jI8r/9xbNsbpfdfFQ+/aE6uhNj8R6
         v0IzuBK2slQyCLvSoxSahOwkhaWdjQMzeljd1KCUQsbc64mij0GmhyNzwMTB3PSs6dC6
         cr/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=9qlgMmHhgmaxaupUVAMFXGR99QT7obsEqXtmWDZBLSY=;
        b=fpvxQseIqm5iu9Uxl7XMg9GPtUqANFxPNFbgFAFV0PEgTcJFDlaAqUEoCmYoswWehc
         2fuEKUWHTcB/a+jvrRULykFIAGXH0DRjveCubrX/rocfZSjppiERdi0u0eJxUa4cXvOt
         8wNVI0sewKKANycW955VtnPoJeIPB/nQsn1oWO0uzUGMNDkFr4nm0uhI13OwM3J6NztC
         qa2pE8x3Apxd60HCimyM+pQAKhpCr5t0ofyvGIPq4BYNC7p/QMz5t5k0z2j34CnkWVgu
         rxeOHbV94fcVPH1plPIXTFHzQ2A1F5Wg0SbQtvPULEhY8F7gx6MBxWoTWOZGLLqAjhTV
         YobQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="BNgE/Ex9";
       spf=pass (google.com: domain of 3hfjrxwwkag8fnzvgbyinaratbbtyr.pbz@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3hFJRXwwKAG8fNZVgbYiNaRaTbbTYR.PbZ@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9qlgMmHhgmaxaupUVAMFXGR99QT7obsEqXtmWDZBLSY=;
        b=HeigGJoRDAAO9znPIS2Es3BpnEX49U/Pgr+sNgjfkgiAdFQmgpj7EovYxZPwrZiq6S
         Mgf5cd94RcGNMVlNXF680qDBN/0nJIR5orVNFRJeLttkPQ2Q8NIj5BvxZq0IVASVDyR7
         Kw16EYPU+SExT6mte4VsvU5s7fPTmi4uVRPOC52FsDCxhVlKOvDbXXDmpGujv9CKGTQd
         WKqBbDh6i4RBuv4vfRBhrWJTsiyCx2Je3DdJmjoXw+yJSeyDDPpLGQmfeSFG8rOctKmJ
         YMXSpgJGDDNvxxCGH6kdtk3E+cqltn5CGGKHsFos6IUQwE90EgepS7dT9tncdsFXfDgc
         IpXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9qlgMmHhgmaxaupUVAMFXGR99QT7obsEqXtmWDZBLSY=;
        b=qlnvcpkl11nq4fIzIIKU5fpnNG9PNawU+4ckjbSZ/7teH5OOYu3foLOHEl/rkn4Nwm
         lH/fYjFn26ZUvecMs4D7WDYgUivfvw1chsPyYgjldWruuzlZw0k9g44pYq/VqDlWKVll
         GpSoq0QWsrPNNI77JYAbwAlEXCg0r3yFF+dhuI1VKawn3cZ7jOjLUKm0001TZrBJU7O0
         MqfCzVfXtx+CkjXiOX2O9qwmmQK0EoSo5DpOWYVoBM2sl15Y7X8MBcSESFhSf2NuoE8n
         w0eMUqkL6mP6XJWV9oaVdkdC4Urh0FrMpCP0M4xTmrZZMcNc6X0CM7D6UE4WxQ2MZO6k
         8UZQ==
X-Gm-Message-State: AOAM530sitcKMQjMH+/EYZrmIN0cfetbNfyjWIQB6/XsNFYamwCYkWRy
	GKn7lHMZbuEQFzkmn87r2MA=
X-Google-Smtp-Source: ABdhPJwjcwTcc7VBceDTXYjmX6tkx99l0FED91KfiIeXKnZaldfRA29sGLquUr3/NK93eTRG27jKUQ==
X-Received: by 2002:a05:6830:1d96:: with SMTP id y22mr2950168oti.243.1599165061910;
        Thu, 03 Sep 2020 13:31:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4816:: with SMTP id v22ls1539284oia.6.gmail; Thu, 03 Sep
 2020 13:31:01 -0700 (PDT)
X-Received: by 2002:aca:ab10:: with SMTP id u16mr3236045oie.127.1599165061553;
        Thu, 03 Sep 2020 13:31:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599165061; cv=none;
        d=google.com; s=arc-20160816;
        b=ITJmqIwNVfL9k5xoDgZOD70sS8zOZRpPpe0joH0X4WKeHWfg2GsTduQ/bpX8s9QshI
         6QjNuqgfZVII6t85JVFNVpWwC0djhb33n4/exOkMSI3Ad2PAooqxTEGz3QfZ7ZXkBdCW
         4pjaxz3ld1zys5Gjmhuz2t8McYolwjwU4KQNyBGlhe/W512MiSICz3Z5YwRKa2UVdaeY
         Au4PQj8JACfXE/q/7Dj/RB2pOX73YJfUk8shKOlOIoufwkWvZHfiRJ5TQajbZz9vCPnE
         T3vWxj9rohTi/RJ0y1hEEw1aoTqGtV/a+7GT1QzcxSMzWACPgFMzxF+P4h6bal8yOa4Z
         XnvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=Zc5fOwGj6FL/BwQcVTQqN8jM5Y1jCC9q7imUTY2UKoE=;
        b=XDOHcNxxpGjyx4G1bggIDlM73TyGgcQOdt/7GzhX5T3Hzx6ZD1iiJmlv8vq5GyZxxU
         bVYMpnaIjjd80iVBSmoHtTgOMUpsoDsW+68kyFeUk3gleBlF5mGtuN/r8JDbiZM1yu/v
         6WePlml3w87fcllK79lmqyIJASo5+VBoxIchFcDo0Xtp3odChbbiwqxCgvX4rLcJ0JnG
         zuQM3aHRaT6lRHxA9ytx3B8RpP7HDzJPH2wxdOooROBcrpGD4R5uVDN+XLGJ9dylNgi4
         pPPzUTppnYPZw0XPiDZ35AOg8k/KWk1XPYX2GO8rX8+iBoXZI5kQQW0f2mPeQjzxv/Mn
         ZGFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="BNgE/Ex9";
       spf=pass (google.com: domain of 3hfjrxwwkag8fnzvgbyinaratbbtyr.pbz@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3hFJRXwwKAG8fNZVgbYiNaRaTbbTYR.PbZ@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id u27si218201otg.5.2020.09.03.13.31.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 13:31:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3hfjrxwwkag8fnzvgbyinaratbbtyr.pbz@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id a84so3979218ybb.9
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 13:31:01 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a5b:30b:: with SMTP id
 j11mr5537716ybp.483.1599165060985; Thu, 03 Sep 2020 13:31:00 -0700 (PDT)
Date: Thu,  3 Sep 2020 13:30:28 -0700
In-Reply-To: <20200903203053.3411268-1-samitolvanen@google.com>
Message-Id: <20200903203053.3411268-4-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com> <20200903203053.3411268-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.526.ge36021eeef-goog
Subject: [PATCH v2 03/28] lib/string.c: implement stpcpy
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
 header.i=@google.com header.s=20161025 header.b="BNgE/Ex9";       spf=pass
 (google.com: domain of 3hfjrxwwkag8fnzvgbyinaratbbtyr.pbz@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3hFJRXwwKAG8fNZVgbYiNaRaTbbTYR.PbZ@flex--samitolvanen.bounces.google.com;
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
Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
Suggested-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
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
index 6012c385fb31..6bd0cf0fb009 100644
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
+ * stpcpy differs from strcpy in a key way: the return value is the new
+ * %NUL-terminated character. (for strcpy, the return value is a pointer to
+ * src. This interface is considered unsafe as it doesn't perform bounds
+ * checking of the inputs. As such it's not recommended for usage. Instead,
+ * its definition is provided in case the compiler lowers other libcalls to
+ * stpcpy.
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
2.28.0.402.g5ffc5be6b7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200903203053.3411268-4-samitolvanen%40google.com.
