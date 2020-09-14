Return-Path: <clang-built-linux+bncBDYJPJO25UGBB4VO735AKGQEIK2CE7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 5726826913B
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Sep 2020 18:16:52 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id s12sf20819pfu.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Sep 2020 09:16:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600100211; cv=pass;
        d=google.com; s=arc-20160816;
        b=G09eHc7bHiwxHYjSiwF7KX6KBlygv1fKm6HmtSKBP/9BeBAfzY5npcWE0/4h4Q86BF
         dQ9UQqONHzBsZa0VTEGiXPpov6ypG5tWO9lLH65NpPbgRvO3ZZ+u6qJyXY/mpW2bC1Hw
         vY4/2bq1RDHLcbzxglZo3ywIkBooaqOX9OtKDe/ffdM308lP7jNTDqtOgQF23RrVEesD
         PMlJzoMfnmV2j1nw8DojK0Bmjj8GVeEt+P6dXn5Bzm7Nl25FVOwrmpV9wyVo35VRX9yQ
         92jGANBsiRHZoULo7/+lGUJS+QwrDnNDfSKyxlzjwx/zT9hjQ22Onq8x39hPD2cGd+9z
         aKrA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=itn/M95QUCcFSHRtUjpIiLb1ok4xy2pdW/o5FOulPOg=;
        b=QYqPElkXv+z2xuCtm41wvh2ObrULs8nqsBKmFUyh2LIv5NUwsQPZwbkIR8KEuOQom4
         wofunlfJe68FQcVp5ELXrXij5sYtLM+Ys+SkWHh5UEz2o7NAIV+B+NgeU/mpQoUDVj8T
         w1lMcy1lzSwaiF8lAWsAPKsl9Ca1ZSXQr4T/4LZBCZjf9N6Dq13v1EzUvg95Pg4Rikiq
         ryX4SwF9zvi8rKl/p14Wle27FbEos0vz5W60s1Xr7JAuunihOi/broEiofbfxiaD2HF9
         7m77CX3rGtISArzZ3fyA0x/9oKUO3IDe3qzIALzMLMVEaaBgmTgAUrTncUWSbCJeAUJI
         w4ow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="vXMRc/pN";
       spf=pass (google.com: domain of 3czdfxwwkacaj9ao6qhjeanockkcha.8ki@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3cZdfXwwKACAJ9AO6QHJEANOCKKCHA.8KI@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=itn/M95QUCcFSHRtUjpIiLb1ok4xy2pdW/o5FOulPOg=;
        b=IWXt77PIX0PsJcztFd9jWdjMMRCEl9Qdf9AS+4dDewxmAX+AkgiEmTe3q8EZMEYzVm
         f3pAePdto/l0UoWwvRRPpRiIVXke3buRXuiOQTTqD6UnJF0AKdgQMX0YbPwNBLT975lP
         XjJU/S8s0zU6OYDsGgpvQl02qwah5U5yQKz40rb/SZNC4wwxNH9vzgqVje+A7aeCPnIH
         s+Nx7ledqTxFiWPv5oyc+WSiAzoHLmlnuf6+zuEpmZhaMnMobnAkkEafrMTr/stf28Vf
         tYqy+44pJW/bQ4ylUrEGkKPPal0R3zGG/6C9+CwVhX2lTQkfBHWrrPeRUMUVZbb4EdGb
         co5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=itn/M95QUCcFSHRtUjpIiLb1ok4xy2pdW/o5FOulPOg=;
        b=mnAUCl3zNjYcFt7KwpuIvyiM4ulBJ/aodY4e/H6r9NApMns0sFBtqYZBaPhTp2Zioj
         Enk0g4QydedyXFGX99EXZCsuCuIMRyNVdQg27SAjbTLL/uEFngVhkOVHbGQ7NzAj7frh
         y82rE3WWWO+n4IF3QnWMlQrASXcbU6kOXSxxwdF5aFJH03CnYMDNMMQhYof2dfXp5Zdc
         UXI2eTUMy6Nva84lM2b8G4Fd1vKx4yGyS2cqUXJ6qWXru3+mnHNqs6X0VJ4LvyZTg7k4
         Fp7MeZyooVpSXvd0gvMZmm8PQVK4Q9A2HhVPMdFf3yNbAaimYu/u3w4ye9TuSpjln571
         pbYw==
X-Gm-Message-State: AOAM5334tqpt4g3bW9nv0qlMztpcZW5iiK0qcPAXCTnP3/M6izFktYZi
	M2chWGcBV9tDKBEcejzJyKg=
X-Google-Smtp-Source: ABdhPJxrzsfaOATsQ+DMX45b4J+KurqRpcvRJnvedjbDqvTOO8PZ28ZWp0Gz97zCJ5F7Ml65UVC6mg==
X-Received: by 2002:aa7:8190:: with SMTP id g16mr13741018pfi.22.1600100210892;
        Mon, 14 Sep 2020 09:16:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:2292:: with SMTP id f18ls1362028pfe.6.gmail; Mon,
 14 Sep 2020 09:16:50 -0700 (PDT)
X-Received: by 2002:a63:521c:: with SMTP id g28mr4343350pgb.43.1600100210254;
        Mon, 14 Sep 2020 09:16:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600100210; cv=none;
        d=google.com; s=arc-20160816;
        b=gP7jjn1JpF68ETsuYwioScvS7xTVROguSZXmTLYbPK0jAhLeVMK46UqXmVz7aJJEAJ
         mgNeLYPvmxR8b+eiYB9A6mfkmthevAlAPg7vqIWAYuV/pZ1GLIlUVlbAmjXjN5gs/VyQ
         6cPXV5/e4lOzGUi1KRSg/de37i0xL2bEV+CUShLaoyBSXu0jtbzWrZAoD/kbCoZLDvT8
         Ty5Ybt2bKrt0Lo8mH3yGFyaVzKHhgyWlNMz0ok//X/usHxXFs1LKRsYkz3pnl3bCLmT+
         JRw1k+CYhOyyrSa1cRV3c4FIRJNHg6v6J8NJawdUCFOyJ05L7dXW5hgQWoJylWZt9UQr
         Mx0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=YI5TFjrZrW6iX6wLKYhaDvA2UAvnRhVpfjmVtoFV008=;
        b=0/6rFI32BiGWlK0/t9tWq6kX3AHvyTKJ1JPEWG48bLwlbLF21T9CnFq/291b0xoDmE
         RoiHc2AKd92XuSjMM0nmBIfnyhd4fprMusiFEibpSD0SR2o5z6m/yld9A28URituATpN
         Lq7JzYmmA7jRZrLT1tpTrsxX81lPBLTb+XhwQwhHO5+JQjyv+zNNDUKi5noHezeWY5OR
         qIu+tbPkYHP+dMnWqutCzUDklcjYXXzEG4HTufRorqreCb+1+EkwAVdI/UMdbbH/0qam
         i9HK1aqmTaf6gXdJMrzGvWmiznmjaQiUO634Syyt36XG47mh2UftvPd8gr3w+ZB/r3/4
         oTNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="vXMRc/pN";
       spf=pass (google.com: domain of 3czdfxwwkacaj9ao6qhjeanockkcha.8ki@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3cZdfXwwKACAJ9AO6QHJEANOCKKCHA.8KI@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id b9si518268pge.4.2020.09.14.09.16.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Sep 2020 09:16:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3czdfxwwkacaj9ao6qhjeanockkcha.8ki@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id c78so279966ybf.6
        for <clang-built-linux@googlegroups.com>; Mon, 14 Sep 2020 09:16:50 -0700 (PDT)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a25:ce90:: with SMTP id
 x138mr2809847ybe.95.1600100209393; Mon, 14 Sep 2020 09:16:49 -0700 (PDT)
Date: Mon, 14 Sep 2020 09:16:43 -0700
In-Reply-To: <20200914160958.889694-1-ndesaulniers@google.com>
Message-Id: <20200914161643.938408-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20200914160958.889694-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.28.0.618.gf4bc123cb7-goog
Subject: [PATCH v5] lib/string.c: implement stpcpy
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Kees Cook <keescook@chromium.org>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Masahiro Yamada <masahiroy@kernel.org>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, 
	Nick Desaulniers <ndesaulniers@google.com>, Sami Tolvanen <samitolvanen@google.com>, 
	Andy Lavr <andy.lavr@gmail.com>, Joe Perches <joe@perches.com>, 
	Rasmus Villemoes <linux@rasmusvillemoes.dk>, Nathan Chancellor <natechancellor@gmail.com>, 
	stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="vXMRc/pN";       spf=pass
 (google.com: domain of 3czdfxwwkacaj9ao6qhjeanockkcha.8ki@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3cZdfXwwKACAJ9AO6QHJEANOCKKCHA.8KI@flex--ndesaulniers.bounces.google.com;
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
Changes V5:
* fix missing parens in comment.

Changes V4:
* Roll up Kees' comment fixup from
  https://lore.kernel.org/lkml/202009060302.4574D8D0E0@keescook/#t.
* Keep Nathan's tested by tag.
* Add Kees' reviewed by tag from
  https://lore.kernel.org/lkml/202009031446.3865FE82B@keescook/.

Changes V3:
* Drop Sami's Tested by tag; newer patch.
* Add EXPORT_SYMBOL as per Andy.
* Rewrite commit message, rewrote part of what Masahiro said to be
  generic in terms of foo() and bar().
* Prefer %NUL-terminated to NULL terminated. NUL is the ASCII character
  '\0', as per Arvind and Rasmus.

Changes V2:
* Added Sami's Tested by; though the patch changed implementation, the
  missing symbol at link time was the problem Sami was observing.
* Fix __restrict -> __restrict__ typo as per Joe.
* Drop note about restrict from commit message as per Arvind.
* Fix NULL -> NUL as per Arvind; NUL is ASCII '\0'. TIL
* Fix off by one error as per Arvind; I had another off by one error in
  my test program that was masking this.

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
2.28.0.618.gf4bc123cb7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200914161643.938408-1-ndesaulniers%40google.com.
