Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBDWDTH3AKGQEDPB7CMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F8231DCBC2
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 13:10:09 +0200 (CEST)
Received: by mail-qv1-xf39.google.com with SMTP id h15sf6820984qvk.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 04:10:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590059407; cv=pass;
        d=google.com; s=arc-20160816;
        b=T7QsyCSLhDH4wRfUrB5ojyba42ikqBGxU9CTpxUx/Lp5cU04eoBZsk1mWgQND0tKIn
         RdudI2GCBp4JpnTzfSwZCuE2QjD77nqsi/9zbu6wMxpxqWZ8VtBySSBA5ctoiZfneTyj
         hR6F67QzGPqKdFSVPx2j4tD18zW+hrPfyYG7OLwx2RXWhYz+52AGrWt6cCOYo+QxtFG6
         vBHkDGtnaVPyQov/8s71T/28T0UIP0DZclC/IlzORAr6YMyDNZahY0Zexi80MdiZNri5
         5O/aSGaIHtUPmRYRmjHfcuedotvxdxRG+gQ2M/EWrLXnoBBvxOxXo0m62DNvH69Nq3rs
         YVxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=HnvsvuXfYyLHbf2vbDYWznSk373Wc2IAXZAWRXDBSYM=;
        b=rabbl1SUSlrBqypoNE6ZKhLCqHWIi3i3n3eGgM7y2ZnD49fRDHnjkYITLwhfCQdJDq
         oQ7l07eN6i+fMIT5tBlfpCMcAGvXQ7GUvfOR4l6xXWsYECzqvdYp0QIKRTvfbulNnWiV
         aaMD49+iU9Ct/jk+d1wPxo+8A2EBldYqa92HIGRVG0/soXL15r0djGmev8amxouY6hs4
         UarHPkfHWNN+02ec+ISe/e0K69VkWmorzt+BtXlU84oDFZWdLoI6oiuhSDcx9UxdihDs
         3egK39GlCxcRTgUGrCQuKOpTJZnyUQnpWEloOeC3ieYk/NHahS79s79RDZQUG4jejkpK
         pCVw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KobY7OKp;
       spf=pass (google.com: domain of 3jmhgxgukewcjqajwlttlqj.htrhqfsl-gznqy-qnszclttlqjlwtzux.htr@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3jmHGXgUKEWcJQaJWLTTLQJ.HTRHQFSL-GZNQY-QNSZcLTTLQJLWTZUX.HTR@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HnvsvuXfYyLHbf2vbDYWznSk373Wc2IAXZAWRXDBSYM=;
        b=hFRkKRUr/u24iss56OIUdi4FlnnseDDA30u4p//e26M03aCu4onIUAEiiU1Io1IZjf
         ioIBIZKx1JEWd9+6D2iRJoano7mjK7Sp8Y0Wn/kk3ISIcwhYbj2ZUqTccPNow1GNgZfc
         zk4QgRJgCbCD16n1uIg3XzvNuUaTHDHInqaRjyP8JfLdi9e6qjuBjFK3IQwedfzS7gsT
         5x8VjXOZzwWkeGudqElwMKTNEKTgA+GGklU8Ub7j1Ro5K7m2Zhc8p/uXcSuWOz/rDF3g
         aSdlERLS+ivktvHU9zFPh/m4KSIpbBNPPjwlHjTW+R1vpt0nV7A4ImDwT32ddbzJC/gB
         1tog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HnvsvuXfYyLHbf2vbDYWznSk373Wc2IAXZAWRXDBSYM=;
        b=R9spl6JRrlyGXYgDKC5BVR9RhnkbS7A1huDSC0nXhS7e3rdwPZ863Jin6BBYC6RKkd
         NFgBH7vTow18lZIo/rHpO0EKYM8F6/39651F1R5/TwruPjyLXaq/OJwWzfVPkdxB7gh0
         2SQXoA5rJT9Y0uSpbvwl4cWqDfCGRZ4J7QYBAiWMtylgSl/J2WOwKFE8GYwYWYWWv+Zx
         xMm43sl9mJYDA2USZcRz6znT4l/mw+JjUTT0PQt419ZgWQHpO877flnFdurdZh1Qok4N
         YEiJ8CzFyIAxz72gpNiSV1NcAeiisEFmTSbA0G44Pquli9WzB4RifEfJFEMnKVeHlps9
         l+Bw==
X-Gm-Message-State: AOAM531uShSuE7pADsv6AsuZEajeKCJ9OErz7PqDhcyA+qtlZa80iD14
	TnawMb6eGnHbXFu3A3V6A1k=
X-Google-Smtp-Source: ABdhPJxan43FktebeVrCXtey4B1jPxH9/Vk9CumJcMyt3nxAJiaWoPXYM//YWoQ1cKeewCVuVVQrUw==
X-Received: by 2002:ac8:2c38:: with SMTP id d53mr10071573qta.162.1590059407126;
        Thu, 21 May 2020 04:10:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:1acb:: with SMTP id h11ls758572qtk.8.gmail; Thu, 21 May
 2020 04:10:06 -0700 (PDT)
X-Received: by 2002:ac8:7b81:: with SMTP id p1mr10433378qtu.305.1590059406478;
        Thu, 21 May 2020 04:10:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590059406; cv=none;
        d=google.com; s=arc-20160816;
        b=pcw9fCB+BhRQPaDFWey/SgNJlxqK0R+sHSAoMd55fjPAxgdwp17sJuKBn9QJgqf8+9
         N6iM08sp3Aydescoz9+AY1hvArpdRipQXd0KiDbrQ88GFAki3khTZpEpmNND2qMcwLZ6
         5QJlpQaqal8YOIiA7mmTX+kENWhG1jnzPSOmKbq4xwly8Dnb6q16XvEttvl3WqknX84E
         s/7iO/yIMWYnybyPmGKHxUwASqnIZIvFK2ODZa4bVgs3KojyptkQ04gPC6Mpkq5zg/WA
         NaHNNdOSvW+nA/KfKWGqoM4Fyds0WJ+cy03rpJhC73ZGo/hUv1yRee/74xNNf/OFVheN
         EA8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=0j39NvXrsyBh4wsV8IVEExoloRXnW3VKds76JrKCKC0=;
        b=LzDSBDuxGM0bQcGUyvEpSPkEU6p8R7i0CE6FZYflISbjljS1g0ifXk6U7rK0Gz/nAj
         uVcNFwqcfHLSIg7e8n2Wcq1vcRZjlsynyFICdQ/d0D25UczKhLssLPUgW/Rnq7qbAL0i
         vyycBuIcwlb/eVAYxU4fkIHYPrCCgzyqtzriny8qix1Xq5MP/qt0rLlzAI6JRwUuGxAm
         NQz9i8bw4tjxblDRTHUR/WqfWQ774JhKSR8XLBAD++ZXRpDXyUqrSyWDAXZaN9X0AB7z
         uJgpqzu3qt0CO663qLS4vxMd1ihc0YUezmnS1CCHrQSSBXJ011jmmpJBgtkJGcNyC71l
         lBmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KobY7OKp;
       spf=pass (google.com: domain of 3jmhgxgukewcjqajwlttlqj.htrhqfsl-gznqy-qnszclttlqjlwtzux.htr@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3jmHGXgUKEWcJQaJWLTTLQJ.HTRHQFSL-GZNQY-QNSZcLTTLQJLWTZUX.HTR@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id n23si378230qtv.0.2020.05.21.04.10.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 May 2020 04:10:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3jmhgxgukewcjqajwlttlqj.htrhqfsl-gznqy-qnszclttlqjlwtzux.htr@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id m1so4926711ybk.5
        for <clang-built-linux@googlegroups.com>; Thu, 21 May 2020 04:10:06 -0700 (PDT)
X-Received: by 2002:a25:d181:: with SMTP id i123mr13986899ybg.316.1590059406104;
 Thu, 21 May 2020 04:10:06 -0700 (PDT)
Date: Thu, 21 May 2020 13:08:50 +0200
In-Reply-To: <20200521110854.114437-1-elver@google.com>
Message-Id: <20200521110854.114437-8-elver@google.com>
Mime-Version: 1.0
References: <20200521110854.114437-1-elver@google.com>
X-Mailer: git-send-email 2.26.2.761.g0e0b3e54be-goog
Subject: [PATCH -tip v2 07/11] kcsan: Update Documentation to change supported compilers
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: elver@google.com
Cc: paulmck@kernel.org, dvyukov@google.com, glider@google.com, 
	andreyknvl@google.com, kasan-dev@googlegroups.com, 
	linux-kernel@vger.kernel.org, tglx@linutronix.de, mingo@kernel.org, 
	peterz@infradead.org, will@kernel.org, clang-built-linux@googlegroups.com, 
	bp@alien8.de
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=KobY7OKp;       spf=pass
 (google.com: domain of 3jmhgxgukewcjqajwlttlqj.htrhqfsl-gznqy-qnszclttlqjlwtzux.htr@flex--elver.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3jmHGXgUKEWcJQaJWLTTLQJ.HTRHQFSL-GZNQY-QNSZcLTTLQJLWTZUX.HTR@flex--elver.bounces.google.com;
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

Signed-off-by: Marco Elver <elver@google.com>
---
 Documentation/dev-tools/kcsan.rst | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/Documentation/dev-tools/kcsan.rst b/Documentation/dev-tools/kcsan.rst
index f4b5766f12cc..ce4bbd918648 100644
--- a/Documentation/dev-tools/kcsan.rst
+++ b/Documentation/dev-tools/kcsan.rst
@@ -8,8 +8,7 @@ approach to detect races. KCSAN's primary purpose is to detect `data races`_.
 Usage
 -----
 
-KCSAN is supported in both GCC and Clang. With GCC it requires version 7.3.0 or
-later. With Clang it requires version 7.0.0 or later.
+KCSAN requires Clang version 11 or later.
 
 To enable KCSAN configure the kernel with::
 
@@ -121,12 +120,6 @@ the below options are available:
     static __no_kcsan_or_inline void foo(void) {
         ...
 
-  Note: Older compiler versions (GCC < 9) also do not always honor the
-  ``__no_kcsan`` attribute on regular ``inline`` functions. If false positives
-  with these compilers cannot be tolerated, for small functions where
-  ``__always_inline`` would be appropriate, ``__no_kcsan_or_inline`` should be
-  preferred instead.
-
 * To disable data race detection for a particular compilation unit, add to the
   ``Makefile``::
 
-- 
2.26.2.761.g0e0b3e54be-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200521110854.114437-8-elver%40google.com.
