Return-Path: <clang-built-linux+bncBDYJPJO25UGBBVWHYD5AKGQEPNOYPUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id C039225B6DD
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Sep 2020 00:59:35 +0200 (CEST)
Received: by mail-yb1-xb37.google.com with SMTP id a84sf848215ybb.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Sep 2020 15:59:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599087574; cv=pass;
        d=google.com; s=arc-20160816;
        b=HGwS+HVX1QlHFSMX78mWeEYppSC+sSKuK00WbGd7D1zsU3hqaF7+AH/KzMzskoiQlH
         m8DCkLbVvpjHM5NIcrMkog34Fs82fUHkdgqygmWluDS+pU0v/yvSctVt7/jlVh6vH94V
         4oufx61PopzSueBNiuQUGkgwChGJA6YS9xGvS4u4Rx96+ebyBjdGz/Vh3P5f6sxGvvzD
         +LyrhDlvXzflkDQDFd41eHsLZrBUCFaweoeIO+48977mQpwSjnMgtxo+FRebptGkVLGu
         F/bAzIgT6UuxgVxVfaPOQCV/lXyvP3QE7jJQtd+6EZmIdNH8JCJrHB4SVf5uAlo5O8bU
         iZyA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=vQIwyXZJ2dS5CrR1efTihb0dg2GLSyu60MkcmqQbEUA=;
        b=eBWrzQCzCOGcq9a13MWiaR3jCHNgSsZdrQZzq49+EHtZS0ELV3ONisHYOIhMzDhT+Q
         R93XwM0/PIwEmFDjx6vE4arSsYfdPhtQtHqqxRUtwqfo0bT46jg+iT7+v+mmJowbJepv
         yXpeFuAs4LE5QkRyAY01SnmsgeFYQyZOpvlV36wkL4wSgi6esyCKJQgnykodqJziJm8h
         RQroWjHJK7le8r6iQ1qeIq770vdvPe0x9Pa+fWbeM0sKkE6UAdEUdOfUnPaj9amRnnVh
         VOV3JyG7JvvVgssRN7CblBc66mW4XzlJzyLHhIUv469ykr5WsjPLWh4fIQNvZIrkaBrA
         Pv1Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iwrw74Q1;
       spf=pass (google.com: domain of 31inqxwwkaf8kabp7rikfbopdlldib.9lj@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=31iNQXwwKAF8KABP7RIKFBOPDLLDIB.9LJ@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vQIwyXZJ2dS5CrR1efTihb0dg2GLSyu60MkcmqQbEUA=;
        b=lDf2k5+8ys0cvc9YSEdvX2eYZa+2mcfnCjOAzWbYJ6uYr7INDUl40pTSAJBAGXAGRf
         vKPB4ST6kEqSZd3+h5eSSagCwqk3tmOdqxy4el5fuWa9uUvuDa9XJLMlobBKCFHMA2Q6
         skziEw9nHaOauBk7CwttOer4kX3zG5AsCiwMFlX/fiPXQTxwFUnI4PkilfrbVtHNyPJq
         iMxVvMUDKfEO/AvI8iA+gJT1nggv1FR3O8pL/lsL1lnU9sC8fihZsu/h2Y6db8YQ3XAR
         YXZ8WViRAovJlG4iW6S0Co4AsfFzbxALR8lciQdspBv1u6F5Ftbyb4J7q9GgP3Qy+oW3
         qtrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vQIwyXZJ2dS5CrR1efTihb0dg2GLSyu60MkcmqQbEUA=;
        b=OsugRrJaFKQONStpxS6j3M0wAVKVGfjjUDikj8P3BbH/V8zHJWeMedPYbeivv5bbqL
         6AVS/i0C+dSGDlyiLx+X7FTk5Vv3lLRjHTAWOjW1j6QzCimNwDvy3oB/9wfnpSUQcpfg
         NG4RncPlXdthYNEIy//gf2JlDBfnDtk34o5QmY3fgjIRiEAa3HDe4A9439IcJgiRUNS/
         rasQFcVjnLZ8ipPUi0bgmS4uVGktT7wrNORBlxFVmq5X4D4TYZXrw1P2X6wFwDGamMv9
         6MXJqLG2lDVtTRl83SaY1Tz9MMDmKTMZVei2I9cgr37nvvwfdzFwEOUQ9H8Xz7cvQyUs
         mKNw==
X-Gm-Message-State: AOAM530BVbKO6uP9WQ4wrZLjlOHeOAQC+tDTGjwb/2lC7xNDezUO5jY3
	JRF02IM3WZl0cEy5IVS5dww=
X-Google-Smtp-Source: ABdhPJwTedHZGbaWClAelFs4qEpOJm+XC3VMq2nHqDKkQlwOp0RSVsPMyZWKD+Ge9CS7CJCwJMe3Xw==
X-Received: by 2002:a25:bbcf:: with SMTP id c15mr3449ybk.127.1599087574851;
        Wed, 02 Sep 2020 15:59:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:b612:: with SMTP id r18ls1934888ybj.10.gmail; Wed, 02
 Sep 2020 15:59:34 -0700 (PDT)
X-Received: by 2002:a25:3b53:: with SMTP id i80mr13409051yba.465.1599087574488;
        Wed, 02 Sep 2020 15:59:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599087574; cv=none;
        d=google.com; s=arc-20160816;
        b=J/OiYp5m0KAGJ10/bf7dRB4ITZt63nob4dVoxcLZpm+hx1mCTkqcot7dUv4WKRXv2Y
         4sHkL5jjoYzsv4F+QUsTynjvJyjGtJv1GLKmqppd7thwmPS1nKrX4Swq+ISeTpmSgeHZ
         XeVleAZz6jLxuCU/RQzNvtHw2W/PJVVErxGLzMDL2xgmXMI7dY8LTwYdGiidLojnuKY7
         PexkToZLaFdwqN9D2SE5ikexL8jIsHUweWh2j78CGAMqDJvcPwGaAz/k0SaNc5AqLslk
         aY+JF3NU7zTxFpFPWfMAgrxI6xoahD34GTRwB999LsyqAmAVsN4bNSCrRdognzTeKfNP
         9k2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=hff3G+QLGxV/ViGmhPCtlvmXNd4WANBDwQ3lAuZV0Mw=;
        b=gz5LwQrgK4xub2C3715iuRAIxfo+flsCAgcIRokrOXIhnRzlSFyU72HPipQG3U4Qnj
         Y00dyJvQBEI3bJpnFv5bowuzAaJy3kY7r+2etHYKf3C1UpZpyLcc8IXz5cGAhJ9WvXq8
         TzkQa7bggQn2H97jkzHCH7J/xk/CtTGvwJOq0YMO1m+IZgEze7K/OmM61O5Uvd+sIl9+
         UlTfTZoWlGWFafxuvhaXUulz8kSXfFRfDA91+h5wNI/OO5aDItu6SXfOOld2jJQsWPmv
         HeneP2ifnAp57wELixa5H4tR8DOE0vDFxyWxagIBWWg/n0szPrXBhI67/v6Pvl/dfGJk
         X7Eg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iwrw74Q1;
       spf=pass (google.com: domain of 31inqxwwkaf8kabp7rikfbopdlldib.9lj@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=31iNQXwwKAF8KABP7RIKFBOPDLLDIB.9LJ@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id r7si1186ybk.5.2020.09.02.15.59.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Sep 2020 15:59:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of 31inqxwwkaf8kabp7rikfbopdlldib.9lj@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id q2so874244ybo.5
        for <clang-built-linux@googlegroups.com>; Wed, 02 Sep 2020 15:59:34 -0700 (PDT)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a25:8b09:: with SMTP id
 i9mr1782ybl.149.1599087574125; Wed, 02 Sep 2020 15:59:34 -0700 (PDT)
Date: Wed,  2 Sep 2020 15:59:11 -0700
In-Reply-To: <20200902225911.209899-1-ndesaulniers@google.com>
Message-Id: <20200902225911.209899-8-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20200902225911.209899-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.28.0.402.g5ffc5be6b7-goog
Subject: [PATCH v3 7/7] compiler-gcc: improve version error
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Kees Cook <keescook@chromium.org>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Marco Elver <elver@google.com>, Andrey Konovalov <andreyknvl@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, clang-built-linux@googlegroups.com, 
	Daniel Borkmann <daniel@iogearbox.net>, Alexei Starovoitov <ast@kernel.org>, Will Deacon <will@kernel.org>, 
	Vincenzo Frascino <vincenzo.frascino@arm.com>, linux-kernel@vger.kernel.org, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=iwrw74Q1;       spf=pass
 (google.com: domain of 31inqxwwkaf8kabp7rikfbopdlldib.9lj@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=31iNQXwwKAF8KABP7RIKFBOPDLLDIB.9LJ@flex--ndesaulniers.bounces.google.com;
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

As Kees suggests, doing so provides developers with two useful pieces of
information:
- The kernel build was attempting to use GCC.
  (Maybe they accidentally poked the wrong configs in a CI.)
- They need 4.9 or better.
  ("Upgrade to what version?" doesn't need to be dug out of documentation,
   headers, etc.)

Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Reviewed-by: Sedat Dilek <sedat.dilek@gmail.com>
Suggested-by: Kees Cook <keescook@chromium.org>
Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 include/linux/compiler-gcc.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/compiler-gcc.h b/include/linux/compiler-gcc.h
index 7a3769040d7d..d1e3c6896b71 100644
--- a/include/linux/compiler-gcc.h
+++ b/include/linux/compiler-gcc.h
@@ -12,7 +12,7 @@
 
 /* https://gcc.gnu.org/bugzilla/show_bug.cgi?id=58145 */
 #if GCC_VERSION < 40900
-# error Sorry, your compiler is too old - please upgrade it.
+# error Sorry, your version of GCC is too old - please use 4.9 or newer.
 #endif
 
 /* Optimization barrier */
-- 
2.28.0.402.g5ffc5be6b7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200902225911.209899-8-ndesaulniers%40google.com.
