Return-Path: <clang-built-linux+bncBDYJPJO25UGBB4UH3X4QKGQEBDKJQWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3e.google.com (mail-vk1-xa3e.google.com [IPv6:2607:f8b0:4864:20::a3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C957245060
	for <lists+clang-built-linux@lfdr.de>; Sat, 15 Aug 2020 04:09:55 +0200 (CEST)
Received: by mail-vk1-xa3e.google.com with SMTP id m3sf1745364vkl.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Aug 2020 19:09:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597457394; cv=pass;
        d=google.com; s=arc-20160816;
        b=QDvJ9GfAdsS5voMNXthBwcimjq7BBMAuEXlQghD6R/ZQ1TG3Z1x00JLXaNtdwlujpZ
         0Kj4DdjfBzfeTwHSsHaRxJFET2E0nUdLuglYONLuVqNDYn9jwrEZrdxAmKRDCB8AqDDA
         GuCDOgy8sOaF+H886Hdg0dgTbqOimEyD4st20IxeqFIhPrdOOCJrr6SoSvY6MX/i8rz+
         kyhPxwMTmXGhSlMw574uXoxvFmhNR5TyUjB/dGJD2WqiMrg5sRGMIzkRcVkdca2906+l
         zOmQurKbbN/raY5fFmv7kCIRAreLBUYtfUVYz+Uz51Jr474JYAzxVFVxOR975fUsi7tq
         lF7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=eHWSF7bAwAoV0uzxNjNt2DnHVl+jCx8zkNZrURmvBtY=;
        b=0rPQtYw5SWP1q/3PEaA6NH2jE4zHTfCuAFlWieKE507AMJEKtt+DghujvWx2R2UpNM
         Na2WovadchB2Pj0XyZWyWHmWPYQ6al8sKxqmxPmqaLf+HU5rXAmBBUsPhYAItr9DAYOb
         u0j+rY2o+wTIiQsl9aXnA8PlSAo2at1ILXIOmtQcNU/4H1L62sOsAnR3h/osA22/96jK
         8Te2tS9gc4sNi7zp7FwE32cKUV+/AHcN7AQGzQbyYFghn3b7q6+ImcF7Vn47LlgklT7X
         GD6GYlVPUkvziBxas4njrHOz53CQFSxjhKbchq2XTyjzrojEtbXO5Ks4YIcjlrpPwQ5H
         46cQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fPvq6U6A;
       spf=pass (google.com: domain of 38um3xwwkafyb12gyi9b62fg4cc492.0ca@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::104a as permitted sender) smtp.mailfrom=38UM3XwwKAFYB12GyI9B62FG4CC492.0CA@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eHWSF7bAwAoV0uzxNjNt2DnHVl+jCx8zkNZrURmvBtY=;
        b=NkDjgjHbhNbQnWq8pL3SRoUjTWwi9WqnBimSzorXPfzcRqJBHh5gVlHQOGJcPuVjRl
         XVGPeHAWWhU0UtJwlJC+fuZts190RS8FFxy1UaufqXfxUcGgW/tpAoarH+7JWUeKVMyz
         3LPLrnfXavrw1f4E9UEc8xFrtY5Ze0kk7KSUG/jqttv+OXo4PfRsawRWxz+5RQapQ5ts
         TJzpVL9Bu5EG2zJmK2qQfag67u0rIlMLak2864Nl2CIXrM+rRYzkZwAScw7pcEpumRQE
         3YopsK/D02ZgafDtB1dQgX1ie8h5ACrtHb4zHm01IOzBulVRHmUcj8ZlXPLXh9eJ5ChF
         3gJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eHWSF7bAwAoV0uzxNjNt2DnHVl+jCx8zkNZrURmvBtY=;
        b=VvhysnxrQFYZrbRVFEGjxetTVGvSjpJHT0DdtcMeMvJ1TmgLHI/huwbMU7OGdohZy4
         M0p6bryUv513xMCu2LPZhPRWsSVpgpdl2w950Z5wbbrJUF0f8OY7DtrLLbrYxiMgOvmd
         xw6dg1L+tHHW+P2hFjvnM7Vu/Wv74RCmd2wGaogTyIzNsOGeULcl5ycIjIZtHpOJI2vN
         9WA189J0LpNoZR8fLAtV6AEtyoRZW+OJrjC0bm7KrC6uL8c+YqyZq0uCr4KSIwkks8LF
         1Z3vaMQx67M4n5ZEq98gw+nv/BbMC2+PxcMYjwlroFQv3jOeYv2T/nxhiEv6xTupr5Yn
         zhDQ==
X-Gm-Message-State: AOAM531rk2VHAST5lyjULQL8y466f1DgBO/e/zfew4SeT2x1M7TgTgEB
	1ylfyzSFwD9IGybEB7J14dQ=
X-Google-Smtp-Source: ABdhPJwA0jk7eGUmpCfCwZjBwu1EAw579tbIi26HRbU63MUhfzXR+VyngpvWHUtntcxLgajxCw5rTg==
X-Received: by 2002:ab0:2eaa:: with SMTP id y10mr3040678uay.57.1597457394647;
        Fri, 14 Aug 2020 19:09:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:4d6c:: with SMTP id k44ls762071uag.2.gmail; Fri, 14 Aug
 2020 19:09:54 -0700 (PDT)
X-Received: by 2002:ab0:624d:: with SMTP id p13mr2982944uao.136.1597457394332;
        Fri, 14 Aug 2020 19:09:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597457394; cv=none;
        d=google.com; s=arc-20160816;
        b=sOT8+qkdFiOcK9MIRmYC26AxgLGlGSr0Jy605SVJ0g5faj2oo7xu/5h2Jl7++V+wgW
         zZTR3qATCAt9iNkv+APYoOfKZN750RkmtwK+FKBXsDnp0wVKSuqoq3q4g8YzSuIVIzuG
         H49KTRmc5kAl2MawbAiK08ZKZtUPulF2t8YS4cjUI52s6Mxb360TbtdoDgr3hD/NIMVp
         bFBCnlJ3DS6tEq+joGLNiv77ogC9gAgF/MoylI1zXPvWMKwV8WF8x7O2WXv7GnQ+9sq1
         xRyWDH4SCoDxN4dFhB9vQklIgr5qWQZ4pY5x3+rkZ+qhetbCRieDMKXqKy5h79lSmoEw
         komA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=54FL2fi4838KNUxBDYGwUIbd4eC5LfouQots9gMJMF0=;
        b=JUhsCF7eAKyOyXpLOeLt000N/J4WMWAOm6aS2ZvUL5YYE8S/l3BuBne6QQlPsuNIYI
         2Ld2w4HOVvBDCvGsJ7rJQHcj393a0SjFcQqv8I6NTPOZj3qaPWNFw3nlxXpBPSmzY7IH
         VBc5KP9LNmZN2Hgf1HkydUoG4mn/iURxZ33MmwqgSKUSoWK4yqR42jSW8ULyjM41Om1X
         OqSJRU8Xq5OrDs+xhR49I+80yehXawS4tZw+ZnDos1R1h8zCoziVpOx+gnT6uBcdSgRs
         RJ30raukdio2K/H+zMLthRz6wBMLGUEMv2aAybsbjJjRe4h2ipOjXLLMroPnldMwFxok
         NsGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fPvq6U6A;
       spf=pass (google.com: domain of 38um3xwwkafyb12gyi9b62fg4cc492.0ca@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::104a as permitted sender) smtp.mailfrom=38UM3XwwKAFYB12GyI9B62FG4CC492.0CA@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x104a.google.com (mail-pj1-x104a.google.com. [2607:f8b0:4864:20::104a])
        by gmr-mx.google.com with ESMTPS id k201si582832vka.4.2020.08.14.19.09.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Aug 2020 19:09:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of 38um3xwwkafyb12gyi9b62fg4cc492.0ca@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::104a as permitted sender) client-ip=2607:f8b0:4864:20::104a;
Received: by mail-pj1-x104a.google.com with SMTP id hi12so6966394pjb.6
        for <clang-built-linux@googlegroups.com>; Fri, 14 Aug 2020 19:09:54 -0700 (PDT)
X-Received: by 2002:a63:df54:: with SMTP id h20mr3416349pgj.319.1597457393328;
 Fri, 14 Aug 2020 19:09:53 -0700 (PDT)
Date: Fri, 14 Aug 2020 19:09:44 -0700
In-Reply-To: <20200815014006.GB99152@rani.riverdale.lan>
Message-Id: <20200815020946.1538085-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20200815014006.GB99152@rani.riverdale.lan>
X-Mailer: git-send-email 2.28.0.220.ged08abb693-goog
Subject: [PATCH v2] lib/string.c: implement stpcpy
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: "=?UTF-8?q?D=C3=A1vid=20Bolvansk=C3=BD?=" <david.bolvansky@gmail.com>, Eli Friedman <efriedma@quicinc.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, stable@vger.kernel.org, 
	Arvind Sankar <nivedita@alum.mit.edu>, Joe Perches <joe@perches.com>, 
	Sami Tolvanen <samitolvanen@google.com>, Vishal Verma <vishal.l.verma@intel.com>, 
	Dan Williams <dan.j.williams@intel.com>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
	"Joel Fernandes (Google)" <joel@joelfernandes.org>, Daniel Axtens <dja@axtens.net>, 
	Kees Cook <keescook@chromium.org>, Ingo Molnar <mingo@kernel.org>, 
	Yury Norov <yury.norov@gmail.com>, Alexandru Ardelean <alexandru.ardelean@analog.com>, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=fPvq6U6A;       spf=pass
 (google.com: domain of 38um3xwwkafyb12gyi9b62fg4cc492.0ca@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::104a as permitted sender) smtp.mailfrom=38UM3XwwKAFYB12GyI9B62FG4CC492.0CA@flex--ndesaulniers.bounces.google.com;
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
in parsing format strings.  Calling `sprintf` with overlapping arguments
was clarified in ISO C99 and POSIX.1-2001 to be undefined behavior.

`stpcpy` is just like `strcpy` except it returns the pointer to the new
tail of `dest`. This allows you to chain multiple calls to `stpcpy` in
one statement.

`stpcpy` was first standardized in POSIX.1-2008.

Implement this so that we don't observe linkage failures due to missing
symbol definitions for `stpcpy`.

Similar to last year's fire drill with:
commit 5f074f3e192f ("lib/string.c: implement a basic bcmp")

This optimization was introduced into clang-12.

Cc: stable@vger.kernel.org
Link: https://bugs.llvm.org/show_bug.cgi?id=47162
Link: https://github.com/ClangBuiltLinux/linux/issues/1126
Link: https://man7.org/linux/man-pages/man3/stpcpy.3.html
Link: https://pubs.opengroup.org/onlinepubs/9699919799/functions/stpcpy.html
Link: https://reviews.llvm.org/D85963
Suggested-by: Arvind Sankar <nivedita@alum.mit.edu>
Suggested-by: Joe Perches <joe@perches.com>
Reported-by: Sami Tolvanen <samitolvanen@google.com>
Tested-by: Sami Tolvanen <samitolvanen@google.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
Changes V2:
* Added Sami's Tested by; though the patch changed implementation, the
  missing symbol at link time was the problem Sami was observing.
* Fix __restrict -> __restrict__ typo as per Joe.
* Drop note about restrict from commit message as per Arvind.
* Fix NULL -> NUL as per Arvind; NUL is ASCII '\0'. TIL
* Fix off by one error as per Arvind; I had another off by one error in
  my test program that was masking this.

 include/linux/string.h |  3 +++
 lib/string.c           | 23 +++++++++++++++++++++++
 2 files changed, 26 insertions(+)

diff --git a/include/linux/string.h b/include/linux/string.h
index b1f3894a0a3e..7686dbca8582 100644
--- a/include/linux/string.h
+++ b/include/linux/string.h
@@ -31,6 +31,9 @@ size_t strlcpy(char *, const char *, size_t);
 #ifndef __HAVE_ARCH_STRSCPY
 ssize_t strscpy(char *, const char *, size_t);
 #endif
+#ifndef __HAVE_ARCH_STPCPY
+extern char *stpcpy(char *__restrict__, const char *__restrict__);
+#endif
 
 /* Wraps calls to strscpy()/memset(), no arch specific code required */
 ssize_t strscpy_pad(char *dest, const char *src, size_t count);
diff --git a/lib/string.c b/lib/string.c
index 6012c385fb31..68ddbffbbd58 100644
--- a/lib/string.c
+++ b/lib/string.c
@@ -272,6 +272,29 @@ ssize_t strscpy_pad(char *dest, const char *src, size_t count)
 }
 EXPORT_SYMBOL(strscpy_pad);
 
+#ifndef __HAVE_ARCH_STPCPY
+/**
+ * stpcpy - copy a string from src to dest returning a pointer to the new end
+ *          of dest, including src's NUL terminator. May overrun dest.
+ * @dest: pointer to end of string being copied into. Must be large enough
+ *        to receive copy.
+ * @src: pointer to the beginning of string being copied from. Must not overlap
+ *       dest.
+ *
+ * stpcpy differs from strcpy in two key ways:
+ * 1. inputs must not overlap.
+ * 2. return value is the new NULL terminated character. (for strcpy, the
+ *    return value is a pointer to src.
+ */
+#undef stpcpy
+char *stpcpy(char *__restrict__ dest, const char *__restrict__ src)
+{
+	while ((*dest++ = *src++) != '\0')
+		/* nothing */;
+	return --dest;
+}
+#endif
+
 #ifndef __HAVE_ARCH_STRCAT
 /**
  * strcat - Append one %NUL-terminated string to another
-- 
2.28.0.220.ged08abb693-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200815020946.1538085-1-ndesaulniers%40google.com.
