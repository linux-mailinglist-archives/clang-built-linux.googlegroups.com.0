Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBYW67L2QKGQEYOLMAJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id AECBE1D52F7
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 May 2020 17:04:03 +0200 (CEST)
Received: by mail-oo1-xc3d.google.com with SMTP id t23sf1509640oor.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 May 2020 08:04:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589555042; cv=pass;
        d=google.com; s=arc-20160816;
        b=aVmQA5PWGOxhSiSoHux/a+jN0DrilIlfuyDjptc1uV8Xq5zAnDLMWyLDkDuUAXtH5d
         Pq6UyxMLs/wf3NgYb+EJlorYKNFJRFtz2zDzNHeEcF1mUDrj3IrYmk8VtkLS8SNQ9pJP
         lnjp4qDkT7LunDblDzz/egCVrRodsturGDvOcb5o2iAgbiX4nkEd/gAMkgZYYTfjrreK
         UEMdTyZTxHfUoy1YUfbla+BH8JMmR9XBp+b8AYvqb9WvaaAo4MA6GaCCUh3B4usAXTkH
         1XQCBlgJR7QcgvK5FRjHrg0/9LoPCiueCZEloCQbLDAVFXD8NKKlATFTmg7XZKrTu8Ys
         Azww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=JVljZls966RkJWVGbznIr3zaVsFcCgytuKNYKvDoB5s=;
        b=czMHXYp7Oar6vzWlH1MwnYSpi98khU6MnGIHiJJTd0O3+Q8NbqFa9NiNB65KTwudp/
         aFlXW1JIBbSYx+WTOORsujBVL9InYNk5iNciWbybT0C0IoPacle4qskVayAa/rW3E9ZJ
         qCRrLdpSYXuiQC8HiWt1azu96L2nTX58euJPW7xa4tGt8BbKAQYozzNkMa6delmUNPIb
         dg+bSvJU6Rz09RT2kOvqeN6B/FxTdbRzAfiSonWqT2P6nXVnktt6ej29+umcwzWJDMLJ
         y+XHkAKQTSrPvvwTI8THC89Y/JEQXlwSWIyJrNxuIPtPTup4oeSSX4/4q69GKUt9XBD5
         uPVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Z0GnEbiU;
       spf=pass (google.com: domain of 3yk--xgukebuzgqzmbjjbgz.xjhxgvib-wpdgo-gdipsbjjbgzbmjpkn.xjh@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3YK--XgUKEbUZgqZmbjjbgZ.XjhXgVib-Wpdgo-gdipsbjjbgZbmjpkn.Xjh@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JVljZls966RkJWVGbznIr3zaVsFcCgytuKNYKvDoB5s=;
        b=QeWMupCUHjyXnLbzO9r7v1+JL0Sp5dUBHH+81vmYgiod+Yp8266d/hD8rPxee00Pvi
         UIPGUDSwiczW5myL3hKQAPyhGFFFtA7dGRQ9dcGDKH+rEIpAiIJEDrjnChoElfVJl16v
         dXfY6Sj/oeWS6tkh7kDU+EjKYvRvKv3UYAUlTNz9kZqcvPoJ/Uj1mPRvh7seC/ReSunC
         UEdiw1x9xujsWW7tcUrWrq3gccovyIpqTPYBTWkqS3Um2dVp7s8ZrNrH3hekqiQPfHDG
         FRmhbIlxAy7fGSU8mRGhBU0r1feS9AP4nIPBqaDfRzTk5tSUnPz2Zz68w83alarU+LZ3
         xmww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JVljZls966RkJWVGbznIr3zaVsFcCgytuKNYKvDoB5s=;
        b=VCZ4TxppMhR6BviuBpxyc3BNpFV2JXs+OGQV+x3oFrreUZQPibsS7mn1NZ8cdgmYw3
         LsJ7hZ6Z7mdB9jW9kbNzK/0gQ1SDSyJXTfsQRm8HLa42a32L0V4hB0/q53k4q+9Tcdwp
         5YNtV5rKJe7bthCbQ7CKY64+XmSFFq5t/racWXMDfZa3V1RBPyybOaN+Rq0qZAAb6I+r
         0SkbXxXQdEeM28utTnx+vLj+pqSslWaWp+X6xc7+qg1Op4sUX+4fprz3xX6u+0NbcAmf
         yaxHk2cT6URNYmRWlCYnoMCEnjFKFlq4wKGhPEtgVWQMJE7jtmicLN5IGVc4eLsBTdJj
         eZ+A==
X-Gm-Message-State: AOAM530NDYWv/b5FblxfP015uANu6EDQcf7K+MEghAc88NDc9dRE28LL
	n3oKfYkPeSCG3bQttbkgMpY=
X-Google-Smtp-Source: ABdhPJw8OA3uzmJAAqi/hmirgl7r25EA80lZ81VHRGkPqGiTxEcBTwJlidk9PeH64Igf0QjLa1rc3A==
X-Received: by 2002:aca:4f02:: with SMTP id d2mr2444209oib.88.1589555042492;
        Fri, 15 May 2020 08:04:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:8a5:: with SMTP id 34ls580586otf.4.gmail; Fri, 15 May
 2020 08:04:00 -0700 (PDT)
X-Received: by 2002:a05:6830:1241:: with SMTP id s1mr2646899otp.119.1589555040387;
        Fri, 15 May 2020 08:04:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589555040; cv=none;
        d=google.com; s=arc-20160816;
        b=ZatijZivzH3fabYdxxNj8uZC4ByrL1Bs6a2FlTFyOuMIf701zaQTsfRZnSGmH3Br54
         eUiorsqintP4BrFrt3zJOiDs6g9LBIPzF1/rXjX8Gqp6/jqO1zPQYVNFp5Hxh7oELqdd
         JoxXO2+CeOzmyIZSjIF9JRNLmRmUthQ6zx0drPehVpwxhAdgXapB8oo08DhfMPRZK0BN
         Gu6Qn1xGVvomw/BMeGYHne/TuvxapSNueCqj1d1S5vS34kAWq6zrNw9+gRZvRBFypdYI
         iRKtnd5Ito/qyq5HnThHj6tiLqmRAdb1lwCzQJkrrd6iM9BZESQsrwbbfRl33oautFs/
         xw0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=H/UmEzoy3I9ShhHc8I+RGwc8p1HVxWjO5wJlJG19fNM=;
        b=iidAVT9He+AH38jNLymts7RBDZeagEgaaMjNtoDoNpQw8FqjJwxfNRDAIah2ZWpXOF
         lsF/NL4+RM681oHA9gaDqFBy1KkHLsjoO+TxwTnG6V9bZHO4oQGTK/NIAAC8uoaGhn4d
         y/PTwHCCYCtRtT0sCfxziTtAsRm3ucDbeiq63Bba/4r7t2yEpcKaZlhx/oJyidwWYAfY
         eCYH017J7v1UavjBft0OHrrzNfN/q0343rYTq9t1UVLBxvW1Y10WPI7l46PyMw0MoIZ+
         IHMHfadcNPsVdcOwNpm0ReWwzJ3VLlI6amg6jq7U5NNRBPKcNFIAgqzuV8ET5MMnLUN2
         sulw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Z0GnEbiU;
       spf=pass (google.com: domain of 3yk--xgukebuzgqzmbjjbgz.xjhxgvib-wpdgo-gdipsbjjbgzbmjpkn.xjh@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3YK--XgUKEbUZgqZmbjjbgZ.XjhXgVib-Wpdgo-gdipsbjjbgZbmjpkn.Xjh@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id n140si200687oig.0.2020.05.15.08.04.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 May 2020 08:04:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3yk--xgukebuzgqzmbjjbgz.xjhxgvib-wpdgo-gdipsbjjbgzbmjpkn.xjh@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id x10so2863804ybx.8
        for <clang-built-linux@googlegroups.com>; Fri, 15 May 2020 08:04:00 -0700 (PDT)
X-Received: by 2002:a25:b10a:: with SMTP id g10mr6214488ybj.220.1589555040007;
 Fri, 15 May 2020 08:04:00 -0700 (PDT)
Date: Fri, 15 May 2020 17:03:34 +0200
In-Reply-To: <20200515150338.190344-1-elver@google.com>
Message-Id: <20200515150338.190344-7-elver@google.com>
Mime-Version: 1.0
References: <20200515150338.190344-1-elver@google.com>
X-Mailer: git-send-email 2.26.2.761.g0e0b3e54be-goog
Subject: [PATCH -tip 06/10] kcsan: Restrict supported compilers
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: elver@google.com
Cc: paulmck@kernel.org, dvyukov@google.com, glider@google.com, 
	andreyknvl@google.com, kasan-dev@googlegroups.com, 
	linux-kernel@vger.kernel.org, tglx@linutronix.de, mingo@kernel.org, 
	peterz@infradead.org, will@kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Z0GnEbiU;       spf=pass
 (google.com: domain of 3yk--xgukebuzgqzmbjjbgz.xjhxgvib-wpdgo-gdipsbjjbgzbmjpkn.xjh@flex--elver.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3YK--XgUKEbUZgqZmbjjbgZ.XjhXgVib-Wpdgo-gdipsbjjbgZbmjpkn.Xjh@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

The first version of Clang that supports -tsan-distinguish-volatile will
be able to support KCSAN. The first Clang release to do so, will be
Clang 11. This is due to satisfying all the following requirements:

1. Never emit calls to __tsan_func_{entry,exit}.

2. __no_kcsan functions should not call anything, not even
   kcsan_{enable,disable}_current(), when using __{READ,WRITE}_ONCE => Requires
   leaving them plain!

3. Support atomic_{read,set}*() with KCSAN, which rely on
   arch_atomic_{read,set}*() using __{READ,WRITE}_ONCE() => Because of
   #2, rely on Clang 11's -tsan-distinguish-volatile support. We will
   double-instrument atomic_{read,set}*(), but that's reasonable given
   it's still lower cost than the data_race() variant due to avoiding 2
   extra calls (kcsan_{en,dis}able_current() calls).

4. __always_inline functions inlined into __no_kcsan functions are never
   instrumented.

5. __always_inline functions inlined into instrumented functions are
   instrumented.

6. __no_kcsan_or_inline functions may be inlined into __no_kcsan functions =>
   Implies leaving 'noinline' off of __no_kcsan_or_inline.

7. Because of #6, __no_kcsan and __no_kcsan_or_inline functions should never be
   spuriously inlined into instrumented functions, causing the accesses of the
   __no_kcsan function to be instrumented.

Older versions of Clang do not satisfy #3. The latest GCC currently doesn't
support at least #1, #3, and #7.

Link: https://lkml.kernel.org/r/CANpmjNMTsY_8241bS7=XAfqvZHFLrVEkv_uM4aDUWE_kh3Rvbw@mail.gmail.com
Signed-off-by: Marco Elver <elver@google.com>
---
 lib/Kconfig.kcsan | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/lib/Kconfig.kcsan b/lib/Kconfig.kcsan
index a7276035ca0d..3f3b5bca7a8f 100644
--- a/lib/Kconfig.kcsan
+++ b/lib/Kconfig.kcsan
@@ -3,6 +3,12 @@
 config HAVE_ARCH_KCSAN
 	bool
 
+config HAVE_KCSAN_COMPILER
+	def_bool CC_IS_CLANG && $(cc-option,-fsanitize=thread -mllvm -tsan-distinguish-volatile=1)
+	help
+	  For the list of compilers that support KCSAN, please see
+	  <file:Documentation/dev-tools/kcsan.rst>.
+
 config KCSAN_KCOV_BROKEN
 	def_bool KCOV && CC_HAS_SANCOV_TRACE_PC
 	depends on CC_IS_CLANG
@@ -15,7 +21,8 @@ config KCSAN_KCOV_BROKEN
 
 menuconfig KCSAN
 	bool "KCSAN: dynamic data race detector"
-	depends on HAVE_ARCH_KCSAN && DEBUG_KERNEL && !KASAN
+	depends on HAVE_ARCH_KCSAN && HAVE_KCSAN_COMPILER
+	depends on DEBUG_KERNEL && !KASAN
 	depends on !KCSAN_KCOV_BROKEN
 	select STACKTRACE
 	help
-- 
2.26.2.761.g0e0b3e54be-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200515150338.190344-7-elver%40google.com.
