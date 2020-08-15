Return-Path: <clang-built-linux+bncBDYJPJO25UGBBPOW3T4QKGQEMQNHUNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id C5223245041
	for <lists+clang-built-linux@lfdr.de>; Sat, 15 Aug 2020 02:24:30 +0200 (CEST)
Received: by mail-pl1-x63e.google.com with SMTP id k12sf6484023pls.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Aug 2020 17:24:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597451069; cv=pass;
        d=google.com; s=arc-20160816;
        b=OhDXOuEkBAMSFtUrkowoow+THmwwUI4rOtlyrGA9UQ5Y4NaGDViYaVL68F4TRY6IZ1
         HZYi+fj6jfPz+eoW1rg5kcOD6afWBi1edCAc8a5nnMGwWj1770aHnFwDfb3AjDNYaaNu
         74hbkcNTxhujOmtGq4iUairGGcvTf56RKmhFyV+Nlf20yQR4lEk3xxUUtuLzdQEeIpPv
         JX5cVIm76I+cHLZU80Zq+TYTRhTvEDvPZEyBuvEhYMaeVNRMW17VLxpqlxFKea4e0BHB
         BihRgIAZA938/0JORKA3wNIwH9VcMEU25A0X3ABMBD6I8kvVcGMXv/5DKz+EXzZ9LATv
         Lr7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=gl4NpruUYxQZZkRN+cKi2sh2suFEisB5aX4pSjvopBU=;
        b=x3A1bASmqGYbXfUXmWinoqWS0ALT8MQw+ZImBUdHc6P+hGmVWGxNUwhXh4z2uEYQUS
         8n/Cs6tSP0mYiTPY944NKkHp3uCXHtuGwKYy0NYSZVmPGA6iNzVb3yqh6msjXAb+aVSm
         Wx8pRrJqNULc7ow2KrtA7OW1hnywgw3JSdx21gEUJIsv5912+N2DNhvkBebjWhBr5er2
         sVAcjAJow97crt2ktBhAeenG9xEmHsaa0QK0xQMgDPHjow8HRrAiJQEVAfxzFche3Gcu
         DxNO6FuQQAhzzaEZlVkea1x2ukHQA/uEuhPSUQN1HEz5kt/qLmSBerCOHjdTETaFZuNI
         KBPw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=L3cjo58S;
       spf=pass (google.com: domain of 3oys3xwwkag4zpqemgxzuqdesaasxq.oay@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3Oys3XwwKAG4ZPQeMgXZUQdeSaaSXQ.OaY@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=gl4NpruUYxQZZkRN+cKi2sh2suFEisB5aX4pSjvopBU=;
        b=LCMeFO/2Vhf1X6ROUizdDAVG8131dLjL8q9jhftdmOl4bqpsSGo4MgmTay8bz5G2jo
         RAPF78r3Y+4OzR/zPURFV+wuOqTrful2rjtVUfiCOKGPP6qQyXH4x16rYeAv540lBLd7
         5GkxdaLAV9Fy7Adu9o1iX4LPITXm05TVopWhOGcRzUzASEqCftDBx5+8lg2d95b5Zj+p
         79ZHpby6UtBLOdE5jILK21tHn55m2T/3BKQggHSeWek25wBOxoQkyILAvzJubVsiBNmw
         8muuPB+7bV7UMr4yblgDgH3vN31IfU0sptWkVRkxkaIiZhJezSIp3SPwpKRFhrd/BDdO
         5NMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gl4NpruUYxQZZkRN+cKi2sh2suFEisB5aX4pSjvopBU=;
        b=S082JIEUsS0ZBfhpXT9T7iNfzHsW/w4Jhuezy2zqRLLw6r2rHf6jtJHtp8fPCZgw8H
         TKJmOEl02FbVW/kib0smuOJtD5KlwjaKnhLG5xVMbE5Xfnn0kqypdxmRyMUGhw47hdZ1
         KTWXICsIh+uqYDwDuUyKKsF+nRs1cPZYHygFZi/2VmNnanQTXClgg4PSsDRNTMLcKumV
         rgXkAgpsHUSqmkCeCtWk+Fk0AsfZ0igSIHpjrtzjowq0u1d8628fOhsfns3x5qHJ0a4B
         EwzIjM0ghK0uD9/Oq3ObuUen+zS7fDqoIlzpG9ND1eMbEB3SyEBlJnLbPPhCzluWByN6
         4w9w==
X-Gm-Message-State: AOAM532MygQiS3a45niPoxHzJA/8E7ORciWMNwUIlBehqa3fdSJgSvkV
	YDQYt6WUTwK77sKgI1qn+go=
X-Google-Smtp-Source: ABdhPJyaLGzUrDmJ0PlLuaMs31PAzmg3bpByi2/vZ6pxQal4CJtCoffADQACtky6A+LW1KbJjt6PMw==
X-Received: by 2002:a17:90a:2208:: with SMTP id c8mr4142266pje.123.1597451069271;
        Fri, 14 Aug 2020 17:24:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:76c8:: with SMTP id j8ls4278540plt.8.gmail; Fri, 14
 Aug 2020 17:24:28 -0700 (PDT)
X-Received: by 2002:a17:90a:2525:: with SMTP id j34mr4532435pje.208.1597451068803;
        Fri, 14 Aug 2020 17:24:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597451068; cv=none;
        d=google.com; s=arc-20160816;
        b=hW7rOsVmDk1rfzXBFcxVg4okrjYk0sI2H4XlMlCvspe8PDWvVlgF4Pxkpfc6tdkJpa
         cZdcyvNujkgdzr3xZ1vx2cBBXtcqE81NdqMnEo8q4lxFwIjSfJRIatjFjZSmlJamlFgi
         A5OSnlM8AM42VqDf813i+pdk1v0GdWQJHqJHos54C25fIxrbGhbrAsNWk8J2EGckwYrp
         KuPnDAl7JzxEDohjGxfTHQQOsQxVcIiy449pqRKLdcqAJqjy4MgZYraDmLh8xsLb9tHf
         o56cF6QG8g2m8wK0oAWIpnr+CJb7hZVL85NMLA0Tzt1ohX5Vd0/lN5RP57wXwEcmCqTY
         u/dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=XRzGQ7xGX/sFN7c8Gj9tV2IiOtNpdC4f2YfZedk7h2c=;
        b=iHyMCgfvRskC2zcNinxsKGHZIF1yQbeD8aKWsb4Ezz/BeshGNowhmnLgkbcDH8O9LZ
         Znv8npCoqsaKvHL6q0eIYGFIWf1bfeHfF/uNUOjX8GLi1HMc1EP6ibquX58seKBrKVpu
         /+hcFCL+JhufjEwKjNwnhObNYZPuRqQLpw1vo5wn87UL0bBnYlrr3fpHno12bs/PqOKP
         7hSO9+9c850l9WhgaO7lbsoVG7YF4sS3syBEC1UlJj7pxTvc66tp+IhRqFjs2Vu7O8wE
         Vly/XTHGCbU1NRYLNhX/Wi11nvKv+Rvj+gfDaB+pqulAzpBms5z+1yTCHbiylIX5AGxs
         HZkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=L3cjo58S;
       spf=pass (google.com: domain of 3oys3xwwkag4zpqemgxzuqdesaasxq.oay@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3Oys3XwwKAG4ZPQeMgXZUQdeSaaSXQ.OaY@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com. [2607:f8b0:4864:20::f49])
        by gmr-mx.google.com with ESMTPS id j4si668488pjd.0.2020.08.14.17.24.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Aug 2020 17:24:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3oys3xwwkag4zpqemgxzuqdesaasxq.oay@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) client-ip=2607:f8b0:4864:20::f49;
Received: by mail-qv1-xf49.google.com with SMTP id d19so7055290qvm.23
        for <clang-built-linux@googlegroups.com>; Fri, 14 Aug 2020 17:24:28 -0700 (PDT)
X-Received: by 2002:a0c:fbd1:: with SMTP id n17mr5138941qvp.4.1597451067876;
 Fri, 14 Aug 2020 17:24:27 -0700 (PDT)
Date: Fri, 14 Aug 2020 17:24:15 -0700
Message-Id: <20200815002417.1512973-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.28.0.220.ged08abb693-goog
Subject: [PATCH] lib/string.c: implement stpcpy
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: "=?UTF-8?q?D=C3=A1vid=20Bolvansk=C3=BD?=" <david.bolvansky@gmail.com>, Eli Friedman <efriedma@quicinc.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, stable@vger.kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>, Joe Perches <joe@perches.com>, 
	Tony Luck <tony.luck@intel.com>, Yury Norov <yury.norov@gmail.com>, 
	Daniel Axtens <dja@axtens.net>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Dan Williams <dan.j.williams@intel.com>, 
	"Joel Fernandes (Google)" <joel@joelfernandes.org>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Kees Cook <keescook@chromium.org>, 
	Alexandru Ardelean <alexandru.ardelean@analog.com>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=L3cjo58S;       spf=pass
 (google.com: domain of 3oys3xwwkag4zpqemgxzuqdesaasxq.oay@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3Oys3XwwKAG4ZPQeMgXZUQdeSaaSXQ.OaY@flex--ndesaulniers.bounces.google.com;
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
in parsing format strings.

`stpcpy` is just like `strcpy` except:
1. it returns the pointer to the new tail of `dest`. This allows you to
   chain multiple calls to `stpcpy` in one statement.
2. it requires the parameters not to overlap.  Calling `sprintf` with
   overlapping arguments was clarified in ISO C99 and POSIX.1-2001 to be
   undefined behavior.

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
Reported-by: Sami Tolvanen <samitolvanen@google.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 include/linux/string.h |  3 +++
 lib/string.c           | 23 +++++++++++++++++++++++
 2 files changed, 26 insertions(+)

diff --git a/include/linux/string.h b/include/linux/string.h
index b1f3894a0a3e..e570b9b10f50 100644
--- a/include/linux/string.h
+++ b/include/linux/string.h
@@ -31,6 +31,9 @@ size_t strlcpy(char *, const char *, size_t);
 #ifndef __HAVE_ARCH_STRSCPY
 ssize_t strscpy(char *, const char *, size_t);
 #endif
+#ifndef __HAVE_ARCH_STPCPY
+extern char *stpcpy(char *__restrict, const char *__restrict__);
+#endif
 
 /* Wraps calls to strscpy()/memset(), no arch specific code required */
 ssize_t strscpy_pad(char *dest, const char *src, size_t count);
diff --git a/lib/string.c b/lib/string.c
index 6012c385fb31..81bc4d62c256 100644
--- a/lib/string.c
+++ b/lib/string.c
@@ -272,6 +272,29 @@ ssize_t strscpy_pad(char *dest, const char *src, size_t count)
 }
 EXPORT_SYMBOL(strscpy_pad);
 
+#ifndef __HAVE_ARCH_STPCPY
+/**
+ * stpcpy - copy a string from src to dest returning a pointer to the new end
+ *          of dest, including src's NULL terminator. May overrun dest.
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
+	return dest;
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200815002417.1512973-1-ndesaulniers%40google.com.
