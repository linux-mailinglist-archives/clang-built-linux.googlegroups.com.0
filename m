Return-Path: <clang-built-linux+bncBDYJPJO25UGBB4NSST5AKGQE4PJNTBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 412FF251A55
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Aug 2020 16:00:19 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id b189sf4336366pfa.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 Aug 2020 07:00:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598364018; cv=pass;
        d=google.com; s=arc-20160816;
        b=0C2RrgxCG3omQt0+qQtjqqNuRSPw/KRPhcHT38s32RJoq5NA+O7E53JE7Or4SPxYkU
         xThTuIy10rjALiAcZnsoEJbkliWkfbvV2vkOFyE4ZY9ed3poA74hxA8y+pNBOrTIk/qK
         M+j2vgt536dbOmszKE6O3c/EkcCE8t2rjjjU+8xifExSA3ERRlha+tfRuIWA1W/VGX50
         y2dBEi5rCaoAVmvVJW+lNR/GPWaCKgKmrwBWZM0FlW1YFDvejUNIoOq5ok8KYpS3IhK4
         YRtmhY1GtiXW1rOfWZjcFw38zeBmZ5u4e1G3kg6GdF2sV/d4IkDD6yDPQsJAm5CVjfg8
         Mt9Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=GS+i30K7Az+vaE0dv1DI+g3Zboruit8EzsVVaHA7flU=;
        b=vmm9h8ZEhq+X+aDFncwcqhcRvyQ/D5z6g4PYjfdPIlZ5moPvj+jtIWLbPk0Wt6twMc
         PWAVvnYgHjzOiBhYytC452rShsA4aPMQriPHdzwfDa21B7yXUATvEbn0sGa0AyQJHTAw
         EfrtGBQWLkpi0+5j6lmtgaiXOrmNGDD09/WpV4RoAQbXZuuyQrUyzBWvh++2lDFZd/qn
         4vB8lL3eK8d3mJLXw994HOD3C2lsZ6XdoLIjnOur6D1RPmi3oKutvl3fAXVx68mtjNZP
         x3cmOdW4x4LOVuNvEV+2imxbyPy8zyFel01y5+14XrEXCFbKMSAJAHgQO/CQ4t9biHu7
         qHvA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aKhnLnCz;
       spf=pass (google.com: domain of 3cblfxwwkalckabpxrikfbopdlldib.zlj@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::104a as permitted sender) smtp.mailfrom=3cBlFXwwKALckabpXrikfbopdlldib.Zlj@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GS+i30K7Az+vaE0dv1DI+g3Zboruit8EzsVVaHA7flU=;
        b=BKoc5GQW0lKlQvzqy0fb1tIP66980jqkYSF8KifgdoFsbVIEn+q2Hd0QgQaA6Qu2jV
         lQBbWdr4KsBAe59ILfC+ct6BelbaQSLWJ8PkJAUXiCNkY3+CZwgDnM4PCAh9sS4nfiiP
         gprsawkoE0+IqJzj7n3QS/K3UXCruaSDpZB5pYUAc1i17ZCBBMY/wtS1AcvyCOhKTP1a
         aceGNvUlMg1o3Qz7AwzLfyNNDcXA0YvnmXs6VvzhV+RIvaGq/Eiwal2uRdk5S4f9fGOA
         UZipegSSpICNxL9Nh5uRxmKsFZEHzAfruEfziesocY0l+yZhZzs9mBw+AX3OWaUdGGpg
         MHuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GS+i30K7Az+vaE0dv1DI+g3Zboruit8EzsVVaHA7flU=;
        b=UgmHtuuv6/J9DdCDvJzqk9XY95fm2JhIe9rRigBQwLUc+lYwhQy1S6UiLbQSI4MoDe
         aPSdd+zsNnpukUwj/YXgPswUXUHBY8Q4QCI5pWNnw0iq5z2J18LlrLZ665LTlkRJnHlr
         Ck69lEuhhXFUP54xMOxXDq1sl7V4AdPu+6E+Cw8r5VHEvkgumNh+QK6qAXJCadzs6mwi
         yDnyPfUEFg6hkSYFxzHkMlvCSBgugUwGTjCATIYOsZGXgXBwHMt/IIK+8tTWyI/XnfrO
         o4UZ/a+BkeXiZBSW9RkwOoDVlPLUAX0QZhKbMI2tEVae+Hu9tfygpyHSbMXUOrodoWMv
         Fjmg==
X-Gm-Message-State: AOAM5315Zx4Rg5jBbUItbsz0uS6FE1WUmJN8cIezH8Lf4LoGSatZdcdI
	GrElDaxbdFIFPKQ2VnhG4dA=
X-Google-Smtp-Source: ABdhPJx3DrIQgh3bbDmN8VMIu3E1SYGsdWP6N1NcX4CKzCMOBfyLYAJ6drujMWv6g7BzSG+U7Ywf1Q==
X-Received: by 2002:a17:90a:890b:: with SMTP id u11mr1713405pjn.114.1598364017906;
        Tue, 25 Aug 2020 07:00:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:88c4:: with SMTP id l187ls2982321pfd.6.gmail; Tue, 25
 Aug 2020 07:00:17 -0700 (PDT)
X-Received: by 2002:a62:ea01:: with SMTP id t1mr8097393pfh.125.1598364017350;
        Tue, 25 Aug 2020 07:00:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598364017; cv=none;
        d=google.com; s=arc-20160816;
        b=bU5ObGbAVTHyHtyUZOqTNUx2hGSwrp09LxlyF0mpnGgnZRXw3vmr5GO7MAqTyEGLZ1
         T5yqiNs5pHP7r+0lX4tX25p2puyRBbrXtUDTFjWga94/757F55uC0/QtmyMQPnngVD1M
         7Q0p9TFiM/UsRFyZfL90J/0bB43CFogIdStVpyB/AfbInmf5bnBwpkufJ99TG+I/0/6M
         2j64KLveNQaAgp4KeQ1kCbW5+pLHMdGnH7eZrPOJr6B4yg1KfL5Kus6+8Dw/Wef8d8xr
         RzSsd+MqpS6iSvmjdnrwtCUoiprk8LRGJuesEw3JSXw+Fvbe9q/xF71JADwc7ekTKD9A
         HqwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=Us+zKhWOc0nF2Stw/sjqwIYhi1P3cVkrUO+fKBNUwt4=;
        b=gMH6T+0RYvQ4CUJBA730q2EvZhHUVxYk82jhmmZklx+gO2tpAtkVfC5mzVOPbpv6pt
         iqayDl9HcCA8r48fgfBB3UsQVRdZxCaA5I3FXSMxILwf1FGMrfG0gQs0eOL/eJILzQ9g
         vJHpJJYRFwqRIBVHiWvCxbEBvCZUshnyPHzPb65EQyIbmvtWf7COykFn2SwbRXLtOvuB
         gjI85iZldxpPNED2z1iuhbOVW253UZ23olWRf+g8h4svtryp0rQLuYOrocFlt72ivWGr
         g81zfigqdcHPeeqHRydfISenol5ojkWKufag8vzrEKLXCqWWmrQAiyCIVDI+Vk56Nm/1
         46Hw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aKhnLnCz;
       spf=pass (google.com: domain of 3cblfxwwkalckabpxrikfbopdlldib.zlj@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::104a as permitted sender) smtp.mailfrom=3cBlFXwwKALckabpXrikfbopdlldib.Zlj@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x104a.google.com (mail-pj1-x104a.google.com. [2607:f8b0:4864:20::104a])
        by gmr-mx.google.com with ESMTPS id na12si108205pjb.3.2020.08.25.07.00.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Aug 2020 07:00:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3cblfxwwkalckabpxrikfbopdlldib.zlj@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::104a as permitted sender) client-ip=2607:f8b0:4864:20::104a;
Received: by mail-pj1-x104a.google.com with SMTP id a20so1906452pjo.4
        for <clang-built-linux@googlegroups.com>; Tue, 25 Aug 2020 07:00:17 -0700 (PDT)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a17:902:8f82:: with SMTP id
 z2mr7778537plo.177.1598364016898; Tue, 25 Aug 2020 07:00:16 -0700 (PDT)
Date: Tue, 25 Aug 2020 07:00:00 -0700
Message-Id: <20200825140001.2941001-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.28.0.297.g1956fa8f8d-goog
Subject: [PATCH v3] lib/string.c: implement stpcpy
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: clang-built-linux@googlegroups.com, 
	Nick Desaulniers <ndesaulniers@google.com>, stable@vger.kernel.org, 
	Andy Lavr <andy.lavr@gmail.com>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Joe Perches <joe@perches.com>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
	Sami Tolvanen <samitolvanen@google.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Kees Cook <keescook@chromium.org>, 
	Yury Norov <yury.norov@gmail.com>, Alexandru Ardelean <alexandru.ardelean@analog.com>, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=aKhnLnCz;       spf=pass
 (google.com: domain of 3cblfxwwkalckabpxrikfbopdlldib.zlj@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::104a as permitted sender) smtp.mailfrom=3cBlFXwwKALckabpXrikfbopdlldib.Zlj@flex--ndesaulniers.bounces.google.com;
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

Cc: stable@vger.kernel.org
Link: https://bugs.llvm.org/show_bug.cgi?id=47162
Link: https://bugs.llvm.org/show_bug.cgi?id=47280
Link: https://github.com/ClangBuiltLinux/linux/issues/1126
Link: https://man7.org/linux/man-pages/man3/stpcpy.3.html
Link: https://pubs.opengroup.org/onlinepubs/9699919799/functions/stpcpy.html
Link: https://reviews.llvm.org/D85963
Suggested-by: Andy Lavr <andy.lavr@gmail.com>
Suggested-by: Arvind Sankar <nivedita@alum.mit.edu>
Suggested-by: Joe Perches <joe@perches.com>
Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
Suggested-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Reported-by: Sami Tolvanen <samitolvanen@google.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
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
2.28.0.297.g1956fa8f8d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200825140001.2941001-1-ndesaulniers%40google.com.
