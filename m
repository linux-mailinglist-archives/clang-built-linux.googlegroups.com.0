Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZFL735AKGQEVN46PSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A54E26911D
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Sep 2020 18:10:14 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id s204sf12460890pfs.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Sep 2020 09:10:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600099813; cv=pass;
        d=google.com; s=arc-20160816;
        b=cNCrUILwwVvyPMLks0vDXhifr4RBEyGYsWTRa5FrxHet4tHzmgib6T9sq1NiyKmnRc
         Msw3Zn1oQsrPy0+Zsrrd1663ppk7Q7sS5jtOopkPbEnZEuZJUKx0BP25ZnFOY165XwLF
         5fxjFuRC4QkuyXzIt7tA3taaK86vIGisfNb4uHKdZ6Laz1najLdVLu32hzQTJRR26Hyn
         jaxIOeWSRHbd6BjxkZZw98pRjAIQOEid/How9Sw05iAqfYIlwa75usgWJPdR2qAUa5d7
         TqcMit3jOHva2M8Posde7h/4G4seJYwF9DA/lws2/PDJYEZjPYMCIPoVUIWzE+xljBX6
         /ZQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=0BEixcrLYKBU7LNYYCGdJiA8TWhpPMms+otOAC7uibU=;
        b=Snmsww4KtNz+t6B14VBi3D1bfAT9UIDp22TaW6cOAmwG7/IRCzYVcoIbAX3sF9p5oZ
         RQOOV04g+AWCSmYA75CPAL6LXHoejpHapD2SuikPLFNM8NJ3og05r7/K39OpiIhYOlW8
         GfSV6sGXCBwFrRKmOueSYiaZniAyDDI2+Jac6CeEcXBeyfnTayjEly5aLjVsmYHAoGcM
         zuc5q4mPybvSe9yAYe1dXwGLxkPS4tkhUAdehNmIJLKFJFpVwncCoMkp9PDDJeDDQn3u
         rq37q0Ou08K/DrRp50JIQNxyF5MwSIXHMdjC13K1IVzvRTxSbQxkBBaxDGhfB38xyeQd
         isLQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fDeporrs;
       spf=pass (google.com: domain of 345vfxwwkai45vwasc350w9ay66y3w.u64@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=345VfXwwKAI45vwAsC350w9Ay66y3w.u64@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0BEixcrLYKBU7LNYYCGdJiA8TWhpPMms+otOAC7uibU=;
        b=A/Z9fNCWSHRJYO6oQkrkp9EnI5nLbiASd0RsK56rQ4zKL4NT1kQdqg9CImitDroSM1
         S7Qs7ww1XpZ1idpu0QvqPajsl3RNZNhyG0tie+ErbEwpbPuaPXzOFlO07y9MZdchbln5
         K5gx1N/I9411FTo5CzXuuy+y+Y6shkmmq4QZ8Imj1EzlVcKAMoDoOauwNzrY6Qj5FqQM
         sZUi05gfUbttQ8t65a83RnQIsC0htZ+7Z5FMCWS58Ce98dL08vF+GiA0EARdy3L6dfO1
         GBkg4r5V6MDuKOBLNl/bwhSBzCoMCSg6Mwsj+EWTRovTSNd2tcgxcG80yUUfWHEP9XSl
         lHzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0BEixcrLYKBU7LNYYCGdJiA8TWhpPMms+otOAC7uibU=;
        b=TyJeRO2wsege9yaDiCW0EaAhFMTPUfELTGhFGT//9yU6MlpXNRJzj5SAKhnMWIvWgH
         NcU4r5qaORhrUngBpxt6QrmLeQm9CAFGlWLG45jibV+hriHIt+Mk09sAnlagobYnHBKz
         3ct9NxYhbb5NEg8GkRYC7ht9t3yPj/RrTMsKtFTmhhbcmSi1fP24ekYpr8PyfxY1XhXQ
         m4bapN+HcF3Zus7y5HjhraY95X37Vs00JKgYcJ7/xtexCdqzSzAjt2JhqU7bzAkvmM3F
         TxC0Ggi/3DS9dLojXf2p36AzmRRd6tDtJ/LmlW3Y6NE9U5OlHG5c16guxPTg+YcpFNpZ
         o1UA==
X-Gm-Message-State: AOAM5321Sotg7hL4O8qplPDW5CtfUWmQ7ehHMX59G+tWydhiiOKaIXZY
	kidaonEOV6iT1MYt8MNCRY0=
X-Google-Smtp-Source: ABdhPJxie+jq7Hwqs+Yq8ja8stXdGLkfZrZzy9CtJOt/WyEMgXbOSShZIeTW3M3Lw9SMJQUOxu6fTA==
X-Received: by 2002:a17:90a:9317:: with SMTP id p23mr105022pjo.160.1600099812812;
        Mon, 14 Sep 2020 09:10:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7e90:: with SMTP id z138ls3929913pfc.8.gmail; Mon, 14
 Sep 2020 09:10:12 -0700 (PDT)
X-Received: by 2002:a65:64cc:: with SMTP id t12mr11712275pgv.106.1600099812218;
        Mon, 14 Sep 2020 09:10:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600099812; cv=none;
        d=google.com; s=arc-20160816;
        b=bS0uSJqHF/r0iS9Nyxkz4CsRrJjQx+GeQT4nONb+C3zYLbs/jWXfPa44ZoaG17duC9
         9pJcps4ftOV1jQmiukp8KOUFV4m7V2wYEbqdTlUtQAufD8LynTXjTXFIWcztnklOtJ0X
         TQavw1m6WdVRtPjsN62Ym3AzObzd47G1ztDJjwtDT1DIT39UV/CgCfC4XDNrm8c5YNtG
         tetI4Ng7hzxQLL+ojE5ZFx0QCSfTnw/f/Kh5CO6PyPOzBBJRL4n8wIBoaW66HuwqL+ke
         aepHIvr+9rMnNtolxNhvF8vtnG4p7CwOX0VAZe2KE7oMpsRSzWvyEJlHrvWSNK4dKtk8
         xV1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=C2H9/eVSssk9N9c19TNJ2NvJt1R7mxUsxPzXQi2K3kk=;
        b=C13y49rGBsnzaG+GAxNqPNiRneGTNkl9Fp5iw22ivxsalYy7CejkgjhlMelrc3A1Dn
         gQkZgrSjvPkCKYmcfRMigJ/FQfViHYGwtYrepkI0yvoTfudub6o5MmT3z2y8QFhUZlNA
         yErmSYhuWd+F287qz0u5rcssJA/zozEi1mRjHckEaJsqJ0/1WOWpMOEGHgodbi8oaBgt
         iDrXqCl4gsAeOQ8lGuEZW4GQxz86D7i8XQrtMQPf/yEImxUydKRcC7RLkTdS3qXz4cpc
         zIiJlHUWLmETQ3LawWIExgU7tYMsSbxfAjA4w6npKsjO3Ty0C9z4h3TRhfu8vkT2iHBB
         Xj/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fDeporrs;
       spf=pass (google.com: domain of 345vfxwwkai45vwasc350w9ay66y3w.u64@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=345VfXwwKAI45vwAsC350w9Ay66y3w.u64@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id x63si422577pgx.1.2020.09.14.09.10.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Sep 2020 09:10:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of 345vfxwwkai45vwasc350w9ay66y3w.u64@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id k3so240596ybk.16
        for <clang-built-linux@googlegroups.com>; Mon, 14 Sep 2020 09:10:12 -0700 (PDT)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a5b:f03:: with SMTP id
 x3mr8451188ybr.137.1600099811376; Mon, 14 Sep 2020 09:10:11 -0700 (PDT)
Date: Mon, 14 Sep 2020 09:09:58 -0700
Message-Id: <20200914160958.889694-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.28.0.618.gf4bc123cb7-goog
Subject: [PATCH v4] lib/string.c: implement stpcpy
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
 header.i=@google.com header.s=20161025 header.b=fDeporrs;       spf=pass
 (google.com: domain of 345vfxwwkai45vwasc350w9ay66y3w.u64@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=345VfXwwKAI45vwAsC350w9Ay66y3w.u64@flex--ndesaulniers.bounces.google.com;
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
Reviewed-by: Kees Cook <keescook@chromium.org>
Cc: stable@vger.kernel.org
Link: https://bugs.llvm.org/show_bug.cgi?id=47162
Link: https://bugs.llvm.org/show_bug.cgi?id=47280
Link: https://github.com/ClangBuiltLinux/linux/issues/1126
Link: https://man7.org/linux/man-pages/man3/stpcpy.3.html
Link: https://pubs.opengroup.org/onlinepubs/9699919799/functions/stpcpy.html
Link: https://reviews.llvm.org/D85963
---
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
index 6012c385fb31..b6b8847218b5 100644
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
+ * value is a pointer to the start of @dest. This interface is considered
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200914160958.889694-1-ndesaulniers%40google.com.
