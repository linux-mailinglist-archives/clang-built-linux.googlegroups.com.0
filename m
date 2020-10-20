Return-Path: <clang-built-linux+bncBDYJPJO25UGBBN4LXX6AKGQEU76KMEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ECF12943C3
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Oct 2020 22:16:57 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id x77sf1997495pgx.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Oct 2020 13:16:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603225016; cv=pass;
        d=google.com; s=arc-20160816;
        b=nQT0Zl0SLh/hpjtvnZkgNeKI7C+b5LN9H8h36+MUIE0L9Fx6fEB9WQAtbbl7/4GBdy
         oVZmA2cpxR2ZbLdRYCot4mTLF0xTjSNiD/+ukQq1n7SszpGnQf7F/ZfYTpoISzhwIQ6+
         V8MVARW+6L5LzV9NnTu+ySUtPpHKcESsy3bRf07RDu0ZT/ZvO/FFjaIF8Ti4dl/zMA6B
         kFETKVYhLARFmwKA068y9WnWLJhbKjcgO87XYUH1z+Zznms2ROlb9BMIz7hVWAFjcjQ7
         AzegEEZpL/b7NFuNPkqrWwDdh34rJJ/Fu9wFsI4rBBuNV9kg1cQgpDQha281rpib1OFv
         7hCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=X9F7gNPsRTQ+2PHJmCpQ5e0tJYZpzWsevXziTYT85uE=;
        b=BqhOUM2Z32zxXTQIlDLnZPQkUz+n6QwPHihs+vONidBkuUxkVk00fsKzRnFpK6nHJY
         TfD5G7UecUET7IGDY3S3+hECwMx0SY9JVM3YJvbRlgKSu6Bv2DDTjdA1GyGdvMXcTFV5
         deJJAQiV8LAUlzqU33nfVLGSy+eZ4SAs9o/DzxYdW5H7P0ZS7tOcT9wXBIlE0DO9Gpm0
         0Ro8ogALQnFSzFAvQBMpDeYF79kDCyr8yovJD3pb3Lkd8fngRUppd19tnCU9mUV/QdFC
         uouEUc0/yMJW3gcGZMgPizQuchDmsQk5osTf9nwu9UqMF9Ab8uF47e02gXAeYCoIMN1L
         g/3g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GCHVRghA;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X9F7gNPsRTQ+2PHJmCpQ5e0tJYZpzWsevXziTYT85uE=;
        b=YphQCZFEGQYZILFtVQJbnek4TpaKY0MSXA5pmMBeEib+e60FqLn2TSn2E4V3/OIbZi
         ZzmTtqzuImRaivuEqbvuO7X97r0XtF7HDGUjlsvJDKZZYpTzP7cGGIXQEahvNB/SKQst
         w64up/8Za3xOJG4lB02RQ8SKREAQfjcuwkD5qFf0hOr83FQ1tZahaSlkgwC+tk7R7It5
         h5QI7VRmuxIZFkWmIQMkzFg3rI9RQSKh+oGXEqkhfANw22zMf2mnV59N/k9K/HGYSro1
         ArWkYVVjj/mv27X+X9/xmRd0mphYuYpAmncyV4mGa+/uRT6KDwJRXZX9wbyChhMUSHOP
         d2tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X9F7gNPsRTQ+2PHJmCpQ5e0tJYZpzWsevXziTYT85uE=;
        b=lsjkSVGhViDgVC9hUVWtVUEp7XCM/m2YMpcB+/HIaFBdwRs7hlw3cN9lWwBmvIcdPU
         IKwIcGjlQghnqw2bdlDay5DyySHKf/p/WTzKT2STm66b5hbCQTmheTm81xzphFEpQNzX
         Mh9m+mX3P2kZNAE2kuUhYsmeMf8mps9qQ3QeHSOSRQFTLQvgDO7caJB8tVINlFcv+SqS
         j45jmyews2HLK3QRQC0wwWjP4UJkWr6G8qOqfVCiJczIaOCHnlv9yOyHsqJDMUu4bRqi
         tAhC/rcA67EgZYH+e++5yjniR/cQxMMtYikLr778xNEAvBBCHeJ8IB9qh06WXWCiKgK3
         JPkA==
X-Gm-Message-State: AOAM531K6xANu1x6f5kglTVr6dJXyveoEs9GHdQrjQb5ndzszrUE2W5e
	0R0PASk0jjxAlw8f+98tNI0=
X-Google-Smtp-Source: ABdhPJw2dt6od8N7Mtrrw2u0PJA5lmGFxh+RN6ffftzWrKvr1r2wdtFIrA9iyRG2GoiBFw9PqngWeA==
X-Received: by 2002:a63:24c2:: with SMTP id k185mr24231pgk.421.1603225015964;
        Tue, 20 Oct 2020 13:16:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:5d88:: with SMTP id t8ls1338014pji.2.canary-gmail;
 Tue, 20 Oct 2020 13:16:55 -0700 (PDT)
X-Received: by 2002:a17:90a:6901:: with SMTP id r1mr4363761pjj.178.1603225015361;
        Tue, 20 Oct 2020 13:16:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603225015; cv=none;
        d=google.com; s=arc-20160816;
        b=YNeovcungWbJZBQ+ZVAG3CYiBxmrnynsIl6AQbVHg4JzwDW+LhIX42ESU4eoHR+g0M
         oMu5Lfns/9Jn0zLImz62hCRMvk7TR7kI6RIAa5V6HE9upGKEgBbZjUwV64Jip/FEsQNz
         tWwfC27k0Aune6+N6+x/io1hME9Ku3f1ZkRLbZoQIgIIUN2qzXOLnM8Y8psUT6Zvxtna
         199EejfOAA/a4dPXG098J34KdBM5+6Uz99UWwC8TvGP5/rVbKfIbzPeGczQVyptGz1Ct
         6HkZVjnVAjSKuOvHac5FmrZfxS5rcTOu4VTR0StGBL9cfaTewPmNn2FfeVQRCHWEpKt8
         BW8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=46RFYozjOUrCT47DTNQygaXDa0U+oyBU4TtGuU6XNI4=;
        b=glaLX76A3SlYF+JPmD4NFHktJh910EGjHD3Q/SElFtTnayNGbrjXN1j634potspx+k
         N6SQeLd02dCMfWdSXgGWaq6C9LQnERxB2ZRPz0WAzHdQFzTiKA7UkXh0EtNA7JgOIcMw
         3DvpezOfekjxpfelkaOs9ef+eYz7vxSH1qgD9NYyA6gn6yW0Z3RT4FMmBLk8w1AvbV7w
         NydHRUMltAREknwUVzjAN6zfPJ5sebolCe2+4xzg8ZKtT8KnzZnYJ2uwYups290eotdL
         A+VYJ1BQBJ1ZqswV//a8E5q9mEf7z2VXv9Id09qZV7K5L2LcDeO9Pl/ASw549uSgW+Hz
         y/AQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GCHVRghA;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id 100si2372pjo.3.2020.10.20.13.16.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Oct 2020 13:16:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id o7so27329pgv.6
        for <clang-built-linux@googlegroups.com>; Tue, 20 Oct 2020 13:16:55 -0700 (PDT)
X-Received: by 2002:a63:70d:: with SMTP id 13mr35019pgh.263.1603225014754;
 Tue, 20 Oct 2020 13:16:54 -0700 (PDT)
MIME-Version: 1.0
References: <20201016175339.2429280-1-ndesaulniers@google.com> <160319373854.2175971.17968938488121846972.b4-ty@kernel.org>
In-Reply-To: <160319373854.2175971.17968938488121846972.b4-ty@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 20 Oct 2020 13:16:43 -0700
Message-ID: <CAKwvOd=ZJjYOVubjHN6DFuopMP7jg9PAxGHhOPVu6KefPMNfkg@mail.gmail.com>
Subject: Re: [PATCH] arm64: link with -z norelro regardless of CONFIG_RELOCATABLE
To: Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>, 
	=?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>, 
	Kees Cook <keescook@chromium.org>, Dmitry Vyukov <dvyukov@google.com>, 
	Peter Oberparleiter <oberpar@linux.ibm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>, kernel-team <kernel-team@android.com>, 
	LKML <linux-kernel@vger.kernel.org>, Peter Smith <Peter.Smith@arm.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, "# 3.4.x" <stable@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=GCHVRghA;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
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

On Tue, Oct 20, 2020 at 10:57 AM Will Deacon <will@kernel.org> wrote:
>
> On Fri, 16 Oct 2020 10:53:39 -0700, Nick Desaulniers wrote:
> > With CONFIG_EXPERT=y, CONFIG_KASAN=y, CONFIG_RANDOMIZE_BASE=n,
> > CONFIG_RELOCATABLE=n, we observe the following failure when trying to
> > link the kernel image with LD=ld.lld:
> >
> > error: section: .exit.data is not contiguous with other relro sections
> >
> > ld.lld defaults to -z relro while ld.bfd defaults to -z norelro. This
> > was previously fixed, but only for CONFIG_RELOCATABLE=y.
>
> Applied to arm64 (for-next/core), thanks!
>
> [1/1] arm64: link with -z norelro regardless of CONFIG_RELOCATABLE
>       https://git.kernel.org/arm64/c/3b92fa7485eb

IF we wanted to go further and remove `-z norelro`, or even enable `-z
relro` for aarch64, then we would have to detangle some KASAN/GCOV
generated section discard spaghetti.  Fangrui did some more digging
and found that .fini_array.* sections were relro (read only after
relocations, IIUC), so adding them to EXIT_DATA
(include/asm-generic/vmlinux.lds.h) was causing them to get included
in .exit.data (arch/arm64/kernel/vmlinux.lds.S) making that relro.
There's some history here with commits:

- e41f501d39126 ("vmlinux.lds: account for destructor sections")
- 8dcf86caa1e3da ("vmlinux.lds.h: Fix incomplete .text.exit discards")
- d812db78288d7 ("vmlinux.lds.h: Avoid KASAN and KCSAN's unwanted sections")

It seems the following works for quite a few different
configs/toolchains I played with, but the big IF is whether enabling
`-z relro` is worthwhile?  If the kernel does respect that mapping,
then I assume that's a yes, but I haven't checked yet whether relro is
respected within the kernel (`grep -rn RELRO` turns up nothing
interesting).  I also haven't checked yet whether all supported
versions of GNU ld.bfd support -z relro (guessing not, since a quick
test warns: `aarch64-linux-gnu-ld: warning: -z relro ignored` for
v2.34.90.20200706, may be holding it wrong).

(Fangrui also filed https://gcc.gnu.org/bugzilla/show_bug.cgi?id=97507
in regards to GCOV+GCC)

diff --git a/include/asm-generic/vmlinux.lds.h
b/include/asm-generic/vmlinux.lds.h
index cd14444bf600..64578c998e53 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -744,7 +744,6 @@

 #define EXIT_DATA                                                      \
        *(.exit.data .exit.data.*)                                      \
-       *(.fini_array .fini_array.*)                                    \
        *(.dtors .dtors.*)                                              \
        MEM_DISCARD(exit.data*)                                         \
        MEM_DISCARD(exit.rodata*)
@@ -995,6 +994,7 @@
 #if defined(CONFIG_KASAN_GENERIC) || defined(CONFIG_KCSAN)
 # ifdef CONFIG_CONSTRUCTORS
 #  define SANITIZER_DISCARDS                                           \
+       *(.fini_array .fini_array.*)                                    \
        *(.eh_frame)
 # else
 #  define SANITIZER_DISCARDS                                           \
@@ -1005,8 +1005,16 @@
 # define SANITIZER_DISCARDS
 #endif

+#if defined(CONFIG_GCOV_KERNEL) && defined(CONFIG_CC_IS_GCC)
+# define GCOV_DISCARDS                                                 \
+       *(.fini_array .fini_array.*)
+#else
+# define GCOV_DISCARDS
+#endif
+
 #define COMMON_DISCARDS
         \
        SANITIZER_DISCARDS                                              \
+       GCOV_DISCARDS                                                   \
        *(.discard)                                                     \
        *(.discard.*)                                                   \
        *(.modinfo)                                                     \
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DZJjYOVubjHN6DFuopMP7jg9PAxGHhOPVu6KefPMNfkg%40mail.gmail.com.
