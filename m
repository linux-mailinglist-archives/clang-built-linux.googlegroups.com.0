Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBTMGRCEQMGQE46YUGMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x939.google.com (mail-ua1-x939.google.com [IPv6:2607:f8b0:4864:20::939])
	by mail.lfdr.de (Postfix) with ESMTPS id 848133F3E83
	for <lists+clang-built-linux@lfdr.de>; Sun, 22 Aug 2021 09:57:07 +0200 (CEST)
Received: by mail-ua1-x939.google.com with SMTP id z5-20020ab06805000000b002acefa3a57csf1435175uar.22
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Aug 2021 00:57:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629619021; cv=pass;
        d=google.com; s=arc-20160816;
        b=MhTOzOoU/bulAWoMTp2oECTi8ATtWUKMbErN09lFNd9DLPIdF7yIqH1+tZ3kB1ac1y
         uKyYxoM0Wlw8vyWFsTB5VPLPKmhUG8mH4xsePoVIFqRYK/QWZ+66E2e2md2Tf8Gni4Or
         8Ej4OUM2puMJJynO0gmtxjM1hhH8j9Aiu/8Hk2SO3xBvOYLwXFaQxWZk/OTGGFyGNp9O
         NxDOydLsQWjkmTmfXgOFo2LGdMKBpYAJV1X180mGHcQYdxeuo7vqfRLx22n80wvC2slA
         qDl/GzPDlTzgI+VweGnPfjVd1M38Xi4hHkdR/7k/hzts3tm45JNOxObJcuZ0LjR4jtQ7
         xb8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=WS5lR7zJIHYet5RwunAZ6GkD22c88gzU+Ks3eSrfDpw=;
        b=YXjkTbc6uvDq8K9q7FVL46uIs/D9/CrnoavmOxksUSC6a5cYvjqPg2j48Jotwaobel
         5nn3G2LAm5nggSJpAtWVQVzB+QDE0dEZUJiX1BpsC9KwnRP5jJSGAqY5mRFor/+CODvM
         w4iGnslCnOK/jZeXu2zJ+N+3NXO3yqoTL5fssKj1vF3soQ5pzo7E6kyeh5ISLLd1xUR4
         hPFL5gJlVd9izcIO02sh1uZzMH253f6Lp+xNTPbCwDheSkFlILQGViy7RK6sfBT/07z9
         mnwT4btKKor3RuM3gSdAWiUSV1eVf2d3LY5YDlmtP3F43/hwBsKEYAJFtLRCchm1WaW/
         K5Mg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=hmArB39k;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WS5lR7zJIHYet5RwunAZ6GkD22c88gzU+Ks3eSrfDpw=;
        b=PvVoQoZpE6g82MtP9d4VwjjA+NB0tqThFwYgwGq1d+pqa3zPYC1yw/Ezx24pmVRqoP
         V/vqHICjVZyP2HSfzmHQIx1x3fslNZQd5efq/tjmMVGl8WoUHtPGHAKAQc7//h20OX6D
         zr/Qv1rAK2LROwJlMnjhhgQLUpJA9eevHi/zLPzg7hI1zk4AOUkBE+BAdKHcb4z9s8pz
         g3uZfBt4rLocZfWVDKEoSBF23l1r6e/Wy6LCjAJTqqinmXQJpm03szB9dKs3H4/XxOvU
         1MWi6fLK+DOV65SYCMld5WmGIVpjU//2PhZ3V8UIIa/NQT2lEuxttRn6ei5Ga9l98bvO
         VaLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WS5lR7zJIHYet5RwunAZ6GkD22c88gzU+Ks3eSrfDpw=;
        b=OEDrgAi7JMy0lqq2GjOZpH+2j1uG1jIrd8GlRkqOmZWnuf3Wo37QbmVeRh4fLMhSQ5
         VgW89GAChow32Cx173wo32yVx50Vx6hkn9rrQcL1p4ER0PTGkiDVu1+GzyXR//+sX1R1
         dzzdEE2ZEBEOPF9j2qBFfH6AHVnOF+ndqIZOpSUpd2dnTAjMaqr1cj3tImmf3tFHtWOh
         58Eg3qLOQq7Gs1yVl5oXumsfrLmBflT8MFDSJXcWahMBJ6kqDrzol7jpGX1qsllDI/UF
         TO/LOihHsmIBNHVM2xtZZbP+iDNSTTYtYPKnZMTzpwZuQse9GyCA4rs9/s/BXUR3SpwL
         bn3A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533T5nisavCSDe7w9YdWZiVTjkC4YRF60VB7/kL1OrlgZkDLGfkq
	KB74jlRgqD2R286fRp4x4t4=
X-Google-Smtp-Source: ABdhPJzLRrIw7nmdu0WicR5W2LtVvK1vN4AqCkFFYjJpaCvqmHzL4i3U2NwnUGto3GnDUNqHkko3Qw==
X-Received: by 2002:a05:6102:c06:: with SMTP id x6mr21052054vss.2.1629619021541;
        Sun, 22 Aug 2021 00:57:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fa57:: with SMTP id j23ls11837vsq.3.gmail; Sun, 22 Aug
 2021 00:57:01 -0700 (PDT)
X-Received: by 2002:a05:6102:3ec8:: with SMTP id n8mr21447099vsv.39.1629619021080;
        Sun, 22 Aug 2021 00:57:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629619021; cv=none;
        d=google.com; s=arc-20160816;
        b=hfff/NLrPsQEd6TYw6122SChT5tI7nEstjaL6PWRe49S9FJ647I0feFoC+t65gJc2Z
         dwaGZJeOPSMbBt6rh56GbGAj5NZYvx7Qchjh20/v43Gn5IjtS/U5jnc+Vr3MgexQm289
         yCRw8bin6ESGXu1DvyrRESsarhBMxFtX8sFaFHy4GQvqBG8fyzViJQZ4H/cZhxUDGWTw
         1rkClkBCBuODGcc5fDqvDjCC0hgSisaqPVxccLs/NGF3pyeSJmWeCn/ma7CpVV2z7o2x
         uSMHPhqGfFU3aT4kEtsziBlgra0GQ9fPM4e4mF3CULEtFxoMzSfn1CwskKOTFA/3c+V7
         D1XA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=6lG0U8bM2TUXGlj9bAHKfwVFEdBo2YZlvkgJ69Lo3ko=;
        b=GXkeQHxJhvic1F9qPGabp69/8H1RH4Knib3yxjQM8J5dUUysPUofPNNa70wyavKDBL
         6krtTPvfO4T4QNVqjA3XAIUN9L3Z267xgo4nq2zY7VPpR3hKZb51n43PpoZOmqtJEbZC
         SSguJKiHpVAOVsi4/Gl+TOE/kegDLgTQw9FBENZV7luw/qml7fsr1uMNAOdbmltbBBW/
         397RL4kRqhYnGf3PYd9BtFYDcR8EJjr5POHvCsJSMFtC6zyYqzMWRh65Zes1MyyntCx2
         CoyGHmuFUkc4KVW322ifVEfyKgwBiqCD0ReFtKLwoW4Z4QGGWbhNSj8G1O55Lf2vKQOd
         JTEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=hmArB39k;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com. [2607:f8b0:4864:20::102d])
        by gmr-mx.google.com with ESMTPS id c5si629226vkg.4.2021.08.22.00.57.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Aug 2021 00:57:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102d as permitted sender) client-ip=2607:f8b0:4864:20::102d;
Received: by mail-pj1-x102d.google.com with SMTP id j1so9987624pjv.3
        for <clang-built-linux@googlegroups.com>; Sun, 22 Aug 2021 00:57:01 -0700 (PDT)
X-Received: by 2002:a17:902:9b90:b029:12d:5ce1:4d99 with SMTP id y16-20020a1709029b90b029012d5ce14d99mr23174201plp.37.1629619020320;
        Sun, 22 Aug 2021 00:57:00 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id v63sm14116932pgv.59.2021.08.22.00.56.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Aug 2021 00:56:57 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Daniel Micay <danielmicay@gmail.com>,
	Francis Laniel <laniel_francis@privacyrequired.com>,
	Bart Van Assche <bvanassche@acm.org>,
	David Gow <davidgow@google.com>,
	linux-mm@kvack.org,
	clang-built-linux@googlegroups.com,
	linux-hardening@vger.kernel.org
Subject: [PATCH for-next 16/25] fortify: Explicitly disable Clang support
Date: Sun, 22 Aug 2021 00:51:13 -0700
Message-Id: <20210822075122.864511-17-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210822075122.864511-1-keescook@chromium.org>
References: <20210822075122.864511-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1427; h=from:subject; bh=MScHo/g3fAm2U5yn8644/6JAGaRCvw+x4s3NMxUkYP4=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhIgH4DmaoP7/LrBvrUTwAq8PIwkOtE8yNEb1/iGaE eotqJxGJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYSIB+AAKCRCJcvTf3G3AJouiEA CsQiKQU8yYLNVDRGiXfb930RN38G6VaPkiNVGfbOxlF8/NoReYlwwRLDaxYLWGNC+2hr+Mc+tSLQkC OyYXt34aEJ8RAaHd9J/XKojK7zzp175gEonMD/B1Z27Cvc3YwQ9PZFZ9zHiRgdfGEb+A1L4m6XAHs2 nVTs1DLzBrka+jxx90WoJMswpooU+snjTASsX2dUlc5/iKaRIhoUCKJ7MiU8u5DJJrP13KYk1T1qw5 IQV6HcCiUU2CqwU7BOrGvW+aPV7uZH+nVbHKkB8ast8zYcMQW7Hk/zjl6bd+KOo5c85wp81wg1hbbO uY+ZPXO1XtkxBufB7aLp1K13CSmSaUZn2tBdS54SF6pVZ0Up1NdhFTHyITFWebbJ4MCYmcwKl2TonX 3NPE4QX26nK4llSQO92fZCvFrk6ZPmic7RjHU8me+iXixcjehnqvwvLLIzXBm0Si0rTGbXGndfwSh9 30hPvjFC3PxNl08R8Jp76/DvMcL6t1PkoUS5jjcny0Pijci3ywE60TO6ZcVL1BUAVyvrB4nKoecydW h16hmhXHPA0TGXjR4MsY3oP/BlGTZGS3wgyOFsxYY05ZtlMM3lVw9gALsWACvz6yCe1FZ1auY1Ubho MMH2LGLCeJq1miHi8AvBF8sQ4ceYrPEArUoWMsDNaXMI+EwkqvkExj1J8m0Q==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=hmArB39k;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102d
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

Clang has never correctly compiled the FORTIFY_SOURCE defenses due to
a couple bugs:

	Eliding inlines with matching __builtin_* names
	https://bugs.llvm.org/show_bug.cgi?id=50322

	Incorrect __builtin_constant_p() of some globals
	https://bugs.llvm.org/show_bug.cgi?id=41459

In the process of making improvements to the FORTIFY_SOURCE defenses, the
first (silent) bug (coincidentally) becomes worked around, but exposes
the latter which breaks the build. As such, Clang must not be used with
CONFIG_FORTIFY_SOURCE until at least latter bug is fixed (in Clang 13),
and the fortify routines have been rearranged.

Update the Kconfig to reflect the reality of the current situation.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 security/Kconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/security/Kconfig b/security/Kconfig
index 0ced7fd33e4d..fe6c0395fa02 100644
--- a/security/Kconfig
+++ b/security/Kconfig
@@ -191,6 +191,9 @@ config HARDENED_USERCOPY_PAGESPAN
 config FORTIFY_SOURCE
 	bool "Harden common str/mem functions against buffer overflows"
 	depends on ARCH_HAS_FORTIFY_SOURCE
+	# https://bugs.llvm.org/show_bug.cgi?id=50322
+	# https://bugs.llvm.org/show_bug.cgi?id=41459
+	depends on !CC_IS_CLANG
 	help
 	  Detect overflows of buffers in common string and memory functions
 	  where the compiler can determine and validate the buffer sizes.
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210822075122.864511-17-keescook%40chromium.org.
