Return-Path: <clang-built-linux+bncBDYJPJO25UGBBIFSST5AKGQE7KXCDKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BFD3251A4D
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Aug 2020 15:58:58 +0200 (CEST)
Received: by mail-vk1-xa3f.google.com with SMTP id i185sf3727027vki.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 Aug 2020 06:58:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598363937; cv=pass;
        d=google.com; s=arc-20160816;
        b=iRQ99YP2v/hZ1kW0vgH2lK2d55P5PuDjesZjsqtaO/sLyxiljIAfeq3HQ/YdpEo2XL
         X8eGrz9DxuAncFaHwCsdpw0fP08e/497+BqU9AY7OoMBWNNoyBJqjt6WBqUk3NqjxPSc
         oH3EWvjLC3aDcvxdifbZ0nOlluq9uc2mFYQJv9JbWSE6/UCLtZbqNjAqN8YIhJ1SX1Yx
         aIK4SQBOUpUruvsvyy5KHfdeO4h1sVYw6gvpDTKV1hXwWNZswZUEFVQ+neX849fLUF8A
         A5eHEZK4cTPNL/p2h1944/LwCpKmD9FEOCMvt2HbeIw5O8YM1jiYfo2dk4z6unxGwtcI
         L4Ig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=aDa0q3G4qiARvnCh+YGGoUFR1zp79NzLADxadgqZrqQ=;
        b=n1zGbiGZgtxRyBDA1DljrKSNKf+k/1T4FkzVd45uZFKloR8s2c6/sVkNajLzGKBg/u
         diqmKdWnqHuOT03hkg5NLb435HHw2i7PCVCndeO0fUki2J8erYSYPTBd51GtWYHcwW6S
         yeJsLY3jpn9g09TQYxvywkXCJO4sc8c8HksUCv6iN1fwMRuvrwQs6VpPegTv7SU40cim
         B9Cj6SYbWsIohLEZHtKK1mAkC2JgIMNpVWW5IFNNE7shTo0+NySgrpTZ7MtkfjHy+Kni
         dpnPiQWXaoj8aYrITUa+ruMqA4AF3OylcP8v5O1Pzek6kAuVcdRi2jZnTswxbXTmdDWt
         5jiQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kChPl54d;
       spf=pass (google.com: domain of 3hxlfxwwkagyrhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::1049 as permitted sender) smtp.mailfrom=3HxlFXwwKAGYRHIWEYPRMIVWKSSKPI.GSQ@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aDa0q3G4qiARvnCh+YGGoUFR1zp79NzLADxadgqZrqQ=;
        b=WFPjmkMoYvujEvveTc8/CVc4S7q7If4FsBDsprRQ9Bc25xdN4YqFMiz2tjFEIBWHYc
         8JvVcNbpRyFYK/217t14e+d4m8vi+PqLxHxRTpmBZPpCfOECinhTbZ7yU16Jkv41HYJF
         0z++c3OuWj+VOBMqlMTsMougfpRAeiQEJr4ep35HVHrxDFNlvWJ+wXp/eMI+FkgHrwOj
         Mml2JxwIplfivjROGL5G1Fr+Adn9iBIzwzgfeer1E0nlccJnJTh7Ucgg3ZAfAi7C+B7A
         xtKIW0J+k7x+IbbdJzmzyGnOXpKRUTP5JWyKB73HT5kGB1VjoPbeykXz1z5QBPwCVUf4
         mqrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aDa0q3G4qiARvnCh+YGGoUFR1zp79NzLADxadgqZrqQ=;
        b=StHHMOz1MRsVzsIdAFActT2k7cYnJzhOjSdqd6B+2wRBgf3WPHORUsD+IiRqYSDUOZ
         83x3Fs3lzp46EBoNMviKsAp5+p9C9JlHkVFec0X3FUE7R5Wgmbg5YkauooFf/X0FbhAG
         UpCgiriReXcPNwKhBxX+0L07tbR5Zs8HBLvdy3S++jPx7eHYq8YihMPRmlU1AzBDCGDM
         5pknqGn1cOeiVpWVcktUX31y0CYQ/NKNzgLahR6MKvk9If8Lu6h3kx0edw7pCM52e3wc
         zLlqodxe0vvG6L3kw9dngo1t5NULtNBk0COegpxvdu8DQk8RN6gaqnz0hi69qVfd4elU
         f07Q==
X-Gm-Message-State: AOAM532PCa45TQWzc6za/b3ePRLM625uYhpRu+ZYeRM1wrqM5SI4IxUd
	JqgOc0TRH9nDkxcEZMgxoRw=
X-Google-Smtp-Source: ABdhPJzXMeSmtjM6XozD2ioJuZonhEFeTglWvv0aNcyNx3ntXorpBIL4C61X4pTTmxOfwNg4u9U2gQ==
X-Received: by 2002:ac5:cbfc:: with SMTP id i28mr5814820vkn.16.1598363937061;
        Tue, 25 Aug 2020 06:58:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:16c2:: with SMTP id 185ls662751vkw.4.gmail; Tue, 25 Aug
 2020 06:58:56 -0700 (PDT)
X-Received: by 2002:a1f:2a48:: with SMTP id q69mr5682287vkq.69.1598363936696;
        Tue, 25 Aug 2020 06:58:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598363936; cv=none;
        d=google.com; s=arc-20160816;
        b=MwjQDzHBywiwXjuwEyWWDxSv21Ok864k2HK+2WDap7z+ocV+nvtZfQ6X3+x4S10N/A
         bFxfGlAlebG3+0rrBpLOLbSVWuxyCFeBfoCIcn56peUTZVIE0JXq7jG33AissdmsJDzD
         y1h1WF62BpievAbo1VjnGRrDznf+a7PjILQCm7YZHUXmNZkLnAoZHZVODrwqB5rtLbxS
         Iwh/HuvPVLmxsT/rURq/Hd//oYlicx6Gnq0m6a4QvM/wIu/1W5QQrQ2P/qFrR+YAmV9S
         z9gaSrFg+6Jd8FiqR3N10uj7QjFic243wxf36QbpgQksZZ1gG/laRvkn53RXtGRaVPGW
         eZ/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=Us+zKhWOc0nF2Stw/sjqwIYhi1P3cVkrUO+fKBNUwt4=;
        b=OHsU8Lxwzi2qpz2qyXI/Tt7bTFdZJPYU8LAHXy57NpCOA2orEsSGC8f07AUbS73640
         VUKQVQ99ErJFRKBCPkKHO0IkD8uw6o/F1IEvApSXMqW2RgzUYblf7c4scFqPQdNjfTa0
         rGCXLdMdGgnHazIsk0P330buxcNCiOwvej5DQQpAaYWDdFJujTRgm4mZaPFspZpmczas
         dtAEwF5P0/mZydyckF+MEIjWBnotrbjwLehFWhJUq0gbKbAoYTyFeIeAo9rS9RLQ69FB
         CD6QdcQ5qtWH81iDtsIYFfd0IlCm9BIiaYQhugboBGclRArGjoBEXPKTwkbNYVnrgcWb
         iZAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kChPl54d;
       spf=pass (google.com: domain of 3hxlfxwwkagyrhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::1049 as permitted sender) smtp.mailfrom=3HxlFXwwKAGYRHIWEYPRMIVWKSSKPI.GSQ@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1049.google.com (mail-pj1-x1049.google.com. [2607:f8b0:4864:20::1049])
        by gmr-mx.google.com with ESMTPS id i3si612444vsm.1.2020.08.25.06.58.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Aug 2020 06:58:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3hxlfxwwkagyrhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::1049 as permitted sender) client-ip=2607:f8b0:4864:20::1049;
Received: by mail-pj1-x1049.google.com with SMTP id gl22so1880420pjb.3
        for <clang-built-linux@googlegroups.com>; Tue, 25 Aug 2020 06:58:56 -0700 (PDT)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a62:7c97:: with SMTP id
 x145mr8231879pfc.155.1598363935586; Tue, 25 Aug 2020 06:58:55 -0700 (PDT)
Date: Tue, 25 Aug 2020 06:58:36 -0700
Message-Id: <20200825135838.2938771-1-ndesaulniers@google.com>
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
	Kees Cook <keescook@chromium.org>, Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
	Alexandru Ardelean <alexandru.ardelean@analog.com>, Yury Norov <yury.norov@gmail.com>, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=kChPl54d;       spf=pass
 (google.com: domain of 3hxlfxwwkagyrhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::1049 as permitted sender) smtp.mailfrom=3HxlFXwwKAGYRHIWEYPRMIVWKSSKPI.GSQ@flex--ndesaulniers.bounces.google.com;
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200825135838.2938771-1-ndesaulniers%40google.com.
