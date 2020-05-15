Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBY667L2QKGQEXSIGZAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D1101D52FA
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 May 2020 17:04:05 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id t10sf1743296plr.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 May 2020 08:04:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589555044; cv=pass;
        d=google.com; s=arc-20160816;
        b=GqOoqC5fgXh/uFdvJ6nPeBdUlJojIu4MIayao3zb+TyZpl+kezf6lD8cPTgLpoElO0
         /klFapOk7rm+/i09mv2prbtHRje6GAJQE/DVjnKJ6j4+wNXh9/pWIKW9LTSVRg7AnKaa
         tnVMLsIvWXXci6MFD9Wh+ke8JOdmshasSeTPhN9NqDbIP0y4qxfA2tsrWnftWvBNCuZG
         2n0wrk98crSVlMrmItKzg4oPoGCRiU3osF3A6KNMm4L/EAfxr10Pc9P69/kwgT8WV8bK
         j17Pwg9I/Rjkk18VVIlPmg4+SkO0fOPQGDXenUTexEFExjZrdcijVvdIEFN5l54nGMJR
         AxWw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=MSG4waEq5i0G07ylioikYqUAfM9eMG2KxRA+T2OHDQM=;
        b=GBXxKLZqo1wDYyWvTl2u+fnVSxsIGswNifcOAPEp3BwJ8R4c1A3rWCzGjKRhXRos2Z
         d1OiOEiobnoPrIG/k1QYoxZO0XHZm277bS9Vttrf2RhKdOxoX9jjwKJ7IRSabj4Ayy4g
         vPqy5rnR6vLKzeBDvdu9WhNcslRuM2KceQ0nf8B5cYPUBg/U9mRSWquaoMlozf0qooId
         qV5wYVKvQO7GhCZSFTHrB/m2eVXv7lkY815U2001fAKUYUxJ6+uzZlxLIw6UMfeR9CRb
         KbtzMTQwMrqFyHkob6gHTYQPO3Q2Z3gERjrqfZxh/6h6OeTNofsw8/KGKpbyLRmuOItB
         SCKQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XabRop8t;
       spf=pass (google.com: domain of 3yq--xgukebcbisbodlldib.zljzixkd-yrfiq-ifkrudlldibdolrmp.zlj@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3Yq--XgUKEbcbisbodlldib.ZljZiXkd-Yrfiq-ifkrudlldibdolrmp.Zlj@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MSG4waEq5i0G07ylioikYqUAfM9eMG2KxRA+T2OHDQM=;
        b=YxRs+Ob44O6cLZlVNH+wo9gX7EXWKnsESAQCP+0KkVCb9BO93rOuj8tIn8M9PTUisE
         crySF7UZ72xnVJBubn4ygKTbh4yM9DmhUUn3azk3pLk4amdguRbz5Sy9g31f/GdrjRRg
         82zFvb+z8at72MXZ6s4e/YKSat76BtTylMdmXAoio7kcK4ErdjZQMyxlLiQdCBJziM68
         9iCHeu1L7xrA1q/Zu9z1R60zTAt5beyYvnXzMdY0L1wzuxnq5VK6DlId4F2iF7rpCZ3K
         YbufqejzFa3lFOi1v+nrnEzpO/d701b7+A1rbztsRKm5CnQzM1XS53L7qXaG/S51Wb2Q
         S38Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MSG4waEq5i0G07ylioikYqUAfM9eMG2KxRA+T2OHDQM=;
        b=pGoi5JJRrtCe89mINyaKGpcQtbwQW2gq1X8mA7C5qPo82OBIMw4sp6jH0Iy3o78XTU
         EoVJD7k6PnGt+m91utnrnjBmUenDxfNU957+Ir/eet3copSp4OyAACZg4ievz0+uzoOR
         i9ldeC8E3rpJ3VxM+erzpNoyJWTI135TvKAvefgKgrOKePlpTZPKtPKSlPnl0qWMhePC
         h25z/91V4I8zLp2JL5XCD6kTW+JDJvX98rPYWIRD5/IKY/eFVSEAFaoNqLKjiZoDvZyM
         9htERk74d5NeHf8mRkBdtpdGb2aa946cUkqQBUJKCPJm71NNlKr93xe9pswuF0a0ZoIN
         JmdQ==
X-Gm-Message-State: AOAM531T65Hop2wuDBRn0u0Yz3IMsLo3f7yJQdwfYSJoOH2kAjmU1x5h
	soUkRSm2wBpV+nk8qP3wggQ=
X-Google-Smtp-Source: ABdhPJzbzXUDwIKZ4UT2q5Y6aE8pXCk6o+mWIc02WQoMvTuN5sDfUFzC8gHk4A0+w1CYkzZ//txOOA==
X-Received: by 2002:a17:90a:5b:: with SMTP id 27mr4233478pjb.190.1589555044004;
        Fri, 15 May 2020 08:04:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:1b0a:: with SMTP id b10ls826190pgb.1.gmail; Fri, 15 May
 2020 08:04:03 -0700 (PDT)
X-Received: by 2002:aa7:9690:: with SMTP id f16mr4587021pfk.20.1589555043347;
        Fri, 15 May 2020 08:04:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589555043; cv=none;
        d=google.com; s=arc-20160816;
        b=uOGoxJFzHLG7nMmSEEHO1bhIszM2g9xvf0lnfWoPq2Lbk8R/VnDNGA4tWTCcZvJLj7
         LYEbWEECqIVR9lM5CcnGSteT1RMPkh9RycyosnmrbKqPDAifVggPSGLzSCb5I6Dhs47x
         iBGRBmVj0+IRYYMufIDKY/7kcqsMKVScs+lcG5ROfF9KSCFt9k7SeLMMS6WYerKYVGBE
         WM3JsIq4ikIh1LBehWvKbYLgrzsZRCI/Nq1EJiXY3DRGWD5oZfSZOyLjXCEZVpA7T91i
         s0Po2nBCKKGtcX/t83IwVOJTk9VjdTzYpDFow3ZAD0yEN2K55gNUos9i00ZUi3kYmGUB
         evSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=0j39NvXrsyBh4wsV8IVEExoloRXnW3VKds76JrKCKC0=;
        b=wcXpT4a4BlwmEEMeZMcQds6lemA86KKySNi9DrveyofwLF4tOA0GY1wapocFTVneY4
         fYF36e3EHLx7XzBFvJHxM/hhxrAsQ5yy5sFKlOB0cvqSxtdr4Iq6oI7ZaH4G7NkWjrsF
         fAO/0dc2sfugCbrO65HUJ1P8LoiU/67UNz3B3jDFxXWc+ZNXRRMeWAhe7c5SJAYjcuM+
         3YgMdCYmRbrclL4pWAtO1F0nbUKizjIyRKYVUFldtMF01KBe96SFRpTdmRMk5IAi2MFK
         LjmC4v1m+j5DKmbJL7ohBH1vu1zWqfiPN+6W3sDdsBo+jGwKCCt3iu/LHirR6yNRr8qJ
         0Xpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XabRop8t;
       spf=pass (google.com: domain of 3yq--xgukebcbisbodlldib.zljzixkd-yrfiq-ifkrudlldibdolrmp.zlj@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3Yq--XgUKEbcbisbodlldib.ZljZiXkd-Yrfiq-ifkrudlldibdolrmp.Zlj@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id ba3si181838plb.1.2020.05.15.08.04.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 May 2020 08:04:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3yq--xgukebcbisbodlldib.zljzixkd-yrfiq-ifkrudlldibdolrmp.zlj@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id v6so2494986qkd.9
        for <clang-built-linux@googlegroups.com>; Fri, 15 May 2020 08:04:03 -0700 (PDT)
X-Received: by 2002:ad4:5604:: with SMTP id ca4mr3961451qvb.6.1589555042352;
 Fri, 15 May 2020 08:04:02 -0700 (PDT)
Date: Fri, 15 May 2020 17:03:35 +0200
In-Reply-To: <20200515150338.190344-1-elver@google.com>
Message-Id: <20200515150338.190344-8-elver@google.com>
Mime-Version: 1.0
References: <20200515150338.190344-1-elver@google.com>
X-Mailer: git-send-email 2.26.2.761.g0e0b3e54be-goog
Subject: [PATCH -tip 07/10] kcsan: Update Documentation to change supported compilers
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: elver@google.com
Cc: paulmck@kernel.org, dvyukov@google.com, glider@google.com, 
	andreyknvl@google.com, kasan-dev@googlegroups.com, 
	linux-kernel@vger.kernel.org, tglx@linutronix.de, mingo@kernel.org, 
	peterz@infradead.org, will@kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=XabRop8t;       spf=pass
 (google.com: domain of 3yq--xgukebcbisbodlldib.zljzixkd-yrfiq-ifkrudlldibdolrmp.zlj@flex--elver.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3Yq--XgUKEbcbisbodlldib.ZljZiXkd-Yrfiq-ifkrudlldibdolrmp.Zlj@flex--elver.bounces.google.com;
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200515150338.190344-8-elver%40google.com.
