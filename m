Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBM7N2D2QKGQEVO3SDRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AB1E1C9673
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 May 2020 18:26:28 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id j16sf3727110wrw.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 May 2020 09:26:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588868788; cv=pass;
        d=google.com; s=arc-20160816;
        b=PuewGLUNlYgeniPJ1NqPLenzASh+Tr1zkLURifH4j2CbA2s/+HkHWWKWcqJdk/+rQd
         +5MwEf9FAQS8WYScQ2VTV4b2vtfw9IM68L0pdf/9VFLpLhQKTxu5ll7pmN1E4ts7P93b
         qnQqsZVm91J2JI8DO6inSLIPKa/nX85ZpR54e+ewbAc7MXHKSET14mDJWZUZbVoOUUB/
         FOjfVI7WEY9qp6/oA+m51lJyObBowjElJVJALPz3jgw8eX9rYU/CBqnXGl5gWS4BN7no
         c2V9pemouq/TkRx34kyEjB6boSFLgkcZreyExJyot7hjh3aUg5NYhygnkoJTpcuScu2Y
         795w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=SxpsT0K78IMrcetmjYgXP40DtYNpe6E4PgJkyxsRK3g=;
        b=fxUCNHE022JL2Hnh+ZE8Z9MHqYgeKtnp87RQyFuWvtjUAqATmiXeDCl1P2WYCjj1+z
         2fDf36fbyXswEcru3FFSksnXRvMH7VNcwd7VLM7yyfo9RPkCyZtE/YemXu1qnhiUQAZJ
         HeqdAQ19yStheFeR3co5afBWtHo4kzJBnMZaGLJg4EXVR+ci1Fe+lk5d0U+ljPM+oyDu
         n9h96nDGGLw506QyEuGqHmbm427IG8ukQ48Ag+v+TflxDMpdK+wXy7B6MHtXZ2bAF7dv
         mcrO2GlvV5ZUzTV/VMzSgwoiwo9Unw4l6KeWKmXrdW+p6bGrkVHWDHKTSQEi3yPMf7Qb
         tlWw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.74 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SxpsT0K78IMrcetmjYgXP40DtYNpe6E4PgJkyxsRK3g=;
        b=cai1n8Fbctdu0vnW3pmQHefvAGdk6lr9hAkuM5Zngrip9R4v3GfJ5qxw1GkYSmDzTx
         ydofId7TUHgio6N1LwBI71RxFx14QDsU+SPrXA4wJy1IDTwAonrfe1TdLA3P8sDwL36H
         5HhqpDC3dTjW+BTPCheP2lGDCcNHtLu/4qJjb+Weh6CUzuQkxwnmWi972ewoMEhp7raY
         mY8vXiEpVYGkVXBAd3/zee2l37uuiOJN7FnCJ6Kr6XpG0+ywrWOxwKyUlxbPpkYizrIg
         nEhhCLlUfQ7heTJzQ6edoF4eUCn3+t2XXPTLbCRG4bx2rtr+RaYbCw0+sqUt3+fJ3cah
         x1Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SxpsT0K78IMrcetmjYgXP40DtYNpe6E4PgJkyxsRK3g=;
        b=DNS2RgB+KIGPe+ZiReC+0E2taJs25D+sWh6L9p6x1jqkZnMY+UKdeRK81g+xDAIOqQ
         sfgLnaQqAlI1jRcOVjVsAKldylwtUp5wkAuAq25W16435XFUgvswZxhdgdC3QSKugItX
         xSQOWtFLixJHHQIsQMF6T95kwHTL3QuCBkFlLJwweECqW0h6YyYILSXn4ybOaz7fFFx6
         DtMSKk63Irrh8qHYCVjyryXO4FTUE1yd9rtYDTcCUZEprHltrZ4aNbNQi6RLLlgIt2Xd
         ab9s7d3bDc4x3EtiQx9Xkail3yrgj4TGbASmQEYhERQuWDLdGUau9iPt1JJSHcREUZxz
         ruog==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYi42/o00OVb1ajVvvW9vj34ek/EyMdmgu6gn5gx+v/PuyCNk96
	08TMYr5fqz8sbOSVrzzBFVQ=
X-Google-Smtp-Source: APiQypKbJ12lUODcm2OXiZzwPrRtJLe2W6D3B927hkzuLZaNGpnPtQjkXLarpfG92tlKznAzb5zD9Q==
X-Received: by 2002:adf:e8c2:: with SMTP id k2mr16235482wrn.396.1588868788002;
        Thu, 07 May 2020 09:26:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:db47:: with SMTP id f7ls7585829wrj.8.gmail; Thu, 07 May
 2020 09:26:27 -0700 (PDT)
X-Received: by 2002:a5d:4112:: with SMTP id l18mr5103963wrp.230.1588868787540;
        Thu, 07 May 2020 09:26:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588868787; cv=none;
        d=google.com; s=arc-20160816;
        b=AGiJNYVZtLAsq0eGHpUsSP3mmVeLOr28SlMI1jJHAqwc6pnvDeg2L8rheNZ0VxdG8o
         BTK5gBAVUs7TO8Kcm+EdIXJQSuh2Z3Y0ywEPzWacjXlrzNMS/Jvch9pb2ex6XnzoMpY9
         jhsnquMagbZeiCXLw1kUk34nDtlnhfHTUa0ccxLXhQtg6vmczwcOC//A/14IcaoiuqXi
         /xxx6i2BTjAgOmN2PEszK08Fc13FlMN/WYBV9a22rxC6aOtmdbvjiUTbVviEE4JcAqwT
         VzE9qau0IUa09Ee3xj7ZpYxuCQQlqhCm3MQBjTvqc8vQqzTlNwZZoiEwIhmBEonQ8Uus
         h4iA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=Xe++zp+Hh05Jlb+pK4WuxmZYz2xBi5Dm+GojoZZXueA=;
        b=oNYlMNdpQADz6Shh1fpnMH57F2mY2CsqWKsWHAc5aIeV/eEUR3eaRIYtRSVLlCIgYd
         6eKmwnG+2DatoJ2eI4ShfRFSFziAOLw/6lytKp43na56AwkBeu0rBrZlAG9JlMcBQp+M
         yK+z6FkYwf+9zSHhbr3YpkOdalt3ps6efkGX18t/1PyUG2VcEhYu+eq9fyc2fSXgkfbv
         VYY0hrC2U/8l6/tV0NsmVtMoQDJweiMoDL63SFufDE59hNNAfLsIUvZEHAbdsOSbV5Hl
         uH2kgGP7JnagiJFtuYiTB+XKvHz5P7hnHjOqIy0guUxuoMFhHvuSDK0gXbubi6O4NzO5
         CF5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.74 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [217.72.192.74])
        by gmr-mx.google.com with ESMTPS id m4si389756wrn.5.2020.05.07.09.26.27
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 May 2020 09:26:27 -0700 (PDT)
Received-SPF: neutral (google.com: 217.72.192.74 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=217.72.192.74;
Received: from localhost.localdomain ([149.172.19.189]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MWRe1-1jeBD910tn-00Xufr; Thu, 07 May 2020 18:26:24 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Marco Elver <elver@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Dmitry Vyukov <dvyukov@google.com>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Ingo Molnar <mingo@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	kasan-dev@googlegroups.com,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] [v2] ubsan, kcsan: don't combine sanitizer with kcov on clang
Date: Thu,  7 May 2020 18:25:31 +0200
Message-Id: <20200507162617.2472578-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <CANpmjNPCZ2r9V7t50_yy+F_-roBWJdiQWgmvvcqTFxzdzOwKhg@mail.gmail.com>
References: <CANpmjNPCZ2r9V7t50_yy+F_-roBWJdiQWgmvvcqTFxzdzOwKhg@mail.gmail.com>
MIME-Version: 1.0
X-Provags-ID: V03:K1:Wu355d2keiT+DomNoCv1+GG6rk5RbqLzx+vkGjzDKtS+V3yIyQG
 6ihXPPX397wJmWAjP409EOBm8Lb7F4b5kdcec4kIwwwPQ3FN9b+jjt07gItE5RG+npOFhnF
 AtoA281a5IOmWhWqiiCkA8G/24I7wTZjfyMeqvC3+U5TxLO3coNrS27G7XjimIPp7D7H7O0
 AYIUgrAAEr4H3ddktCgrA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:bhWFnq9NWHo=:5tJlgXF+2Bv3nOEYTE0p9j
 NPqVpsQ/jxgKgi/vuEMU/q0I1znfnkbRj0TaJf7uMzprYNs6Z8WavH+Z0aIicQn7Qd1FAwuFA
 Xu3bmkkHmAjseqOjycwICf00icuCxzQFsCLKadIjQnpkZHLArutNStKOOg/rD/m9Zj7WEdEVs
 w1EWLd8ATnolfxyZfLfwGsaGV6zrpcSgy+wmQwCmKaa+7pQKxMzCvINVssmZxTaARcZJGb4kV
 UzfQ0DYqOigKSL8pC1Xt+piE5vr0Iwu0xfZzgiuzHUMnhQ37ra6wWPVkX2rPjuAHG+K1mPzfW
 aXC+84ux4k7hrjI5CmAQbb6VO8aTQE8k0fHTYoTTDMD+6Uo/XhkjQxe80wJWNBOomNtJ3nkD+
 3Z2MlGwgb892a/RLG/q9E3dDrsaAaRm0YarN0ljlJMhmeNA3oNMJDfK/1j2KI05P8Z6ynWsjr
 FFGd4tEXMOQHYZyp658iTwKGTpNtUDIz+NPtj3gFUd+OaBAU8t03wupeM5cUzyCsKwU92jGvr
 UEMvAhCl0mfH/Jh0wgfYydHKyJ6Gu2EV3cEjvf+J4TlKdE4sQvDDxcqoHXYvd3+lRPFNMOXBJ
 8Rxayg6e5/Upae+M7PwLfv89k1XL2VTeyz6Th/E30Dq71RUqt1rsPVmWg7nFnQ1Vyq1TTYauU
 6csJmqx1idVdulaXD70scaCmRvzLsI2pXDKhifXGNCEbJxeZGVpNRjdps2bdmpunI2PA57K5g
 fZ90kS53ULz00soz5VfAUg4LcH85CoZwE8YJWrYr9o0M8BgD0emMo8PmqGMyQIICOAvs/dXKF
 QJZfjlEvR8vhPJaFCyjkQX+mXRROG0zX7xkjfNm1qVeAM12amA=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 217.72.192.74 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Content-Type: text/plain; charset="UTF-8"
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

Clang does not allow -fsanitize-coverage=trace-{pc,cmp} together
with -fsanitize=bounds or with ubsan:

clang: error: argument unused during compilation: '-fsanitize-coverage=trace-pc' [-Werror,-Wunused-command-line-argument]
clang: error: argument unused during compilation: '-fsanitize-coverage=trace-cmp' [-Werror,-Wunused-command-line-argument]

To avoid the warning, check whether clang can handle this correctly
or disallow ubsan and kcsan when kcov is enabled.

Link: https://bugs.llvm.org/show_bug.cgi?id=45831
Link: https://lore.kernel.org/lkml/20200505142341.1096942-1-arnd@arndb.de
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
v2: this implements Marco's suggestion to check what the compiler
actually supports, and references the bug report I now opened.

Let's wait for replies on that bug report before this gets applied,
in case the feedback there changes the conclusion.
---
 lib/Kconfig.kcsan | 11 +++++++++++
 lib/Kconfig.ubsan | 11 +++++++++++
 2 files changed, 22 insertions(+)

diff --git a/lib/Kconfig.kcsan b/lib/Kconfig.kcsan
index ea28245c6c1d..a7276035ca0d 100644
--- a/lib/Kconfig.kcsan
+++ b/lib/Kconfig.kcsan
@@ -3,9 +3,20 @@
 config HAVE_ARCH_KCSAN
 	bool
 
+config KCSAN_KCOV_BROKEN
+	def_bool KCOV && CC_HAS_SANCOV_TRACE_PC
+	depends on CC_IS_CLANG
+	depends on !$(cc-option,-Werror=unused-command-line-argument -fsanitize=thread -fsanitize-coverage=trace-pc)
+	help
+	  Some versions of clang support either KCSAN and KCOV but not the
+	  combination of the two.
+	  See https://bugs.llvm.org/show_bug.cgi?id=45831 for the status
+	  in newer releases.
+
 menuconfig KCSAN
 	bool "KCSAN: dynamic data race detector"
 	depends on HAVE_ARCH_KCSAN && DEBUG_KERNEL && !KASAN
+	depends on !KCSAN_KCOV_BROKEN
 	select STACKTRACE
 	help
 	  The Kernel Concurrency Sanitizer (KCSAN) is a dynamic
diff --git a/lib/Kconfig.ubsan b/lib/Kconfig.ubsan
index 929211039bac..a5ba2fd51823 100644
--- a/lib/Kconfig.ubsan
+++ b/lib/Kconfig.ubsan
@@ -26,9 +26,20 @@ config UBSAN_TRAP
 	  the system. For some system builders this is an acceptable
 	  trade-off.
 
+config UBSAN_KCOV_BROKEN
+	def_bool KCOV && CC_HAS_SANCOV_TRACE_PC
+	depends on CC_IS_CLANG
+	depends on !$(cc-option,-Werror=unused-command-line-argument -fsanitize=bounds -fsanitize-coverage=trace-pc)
+	help
+	  Some versions of clang support either UBSAN or KCOV but not the
+	  combination of the two.
+	  See https://bugs.llvm.org/show_bug.cgi?id=45831 for the status
+	  in newer releases.
+
 config UBSAN_BOUNDS
 	bool "Perform array index bounds checking"
 	default UBSAN
+	depends on !UBSAN_KCOV_BROKEN
 	help
 	  This option enables detection of directly indexed out of bounds
 	  array accesses, where the array size is known at compile time.
-- 
2.26.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200507162617.2472578-1-arnd%40arndb.de.
