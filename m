Return-Path: <clang-built-linux+bncBC2ORX645YPRBZ5KST5QKGQECJX7LXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id D2D77270657
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 22:15:36 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id i128sf4345668pfg.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 13:15:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600460135; cv=pass;
        d=google.com; s=arc-20160816;
        b=RUCvKYre8Hy54JDqnCFNcx845EYz4Qvrfqb97iQCu6SFufZ6i6E4vTKr7pnrhZFzSH
         wM3/eQtMUh7iTkiMhVp/R18QUZUzXty+32VP4npv0CnsRq9Kcipv0tTXjhOY3IEqzoKW
         FOEg+8n5rzQP8gJD8yMYOzgl9fp06IQkZdx2dkemnA9iKJCWZYkOO/u3USs7w4mrG+BV
         M9WYGgenszuewwBwHB1WsOWyCCeX0VazI6KcKeBItFe77OU8LDaAQa21muSU2uBJp267
         uTHZum1azJraE12aHV66rGNl5bWx1ZhnH/BSx7aBsuhj1YEEE/5NPOur5VjMdgfuWYK3
         9t+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=ZdfIlWKRonev6L/BUfBO+ha2M/j4gyDlJ4Zt2wsa+6c=;
        b=D3I3FIVxfhKdaWJSkzr/jyVhvqfVLv3jUwtDTUCKz1+d4bqRWtOa6LMvfW8pv8jvLm
         4JkF++au+6cB2RAPwiskYeG90HGErI61cEOGrRicim9h+2+0drzQEvoNL6yoM68l/TQb
         JW9Af3wwVVGU0lC7Uk9gIncmLmUHzIkCXO5cPNfHRsDcaUh7RZM9yRQqRMeMFv8ZArEa
         2l2GgpsRjKdWSxv4N5NUwKx75WwXKGeBlKj/sWCUeHvmU1pAele898BJe5+E0hNDUNw6
         GER9qlY4hvlSzhQkgQdhVlF3GcAVEZUdX6U9pF5ETXWUgpOoX7+ERqAp5yGBfkjaz2fk
         63SQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YYDR5W+p;
       spf=pass (google.com: domain of 3zhvlxwwkaccvdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3ZhVlXwwKACcVDPLWROYDQHQJRRJOH.FRP@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZdfIlWKRonev6L/BUfBO+ha2M/j4gyDlJ4Zt2wsa+6c=;
        b=r5gRBJvfXyWRX1Duuccqvr2UW+JiQwY7XquDFsNbLXbKeHCWLGNI8tWPbFox5W8tRt
         IwS4RMsSNGL00fZbdP4NgLga22P4usvAXJ1dC1OnJjT3kMuoabhD3JYc6eGELpDj22Oe
         0IBtMYNi7Jmf5OnMyeTeDpP7wh6FgNnpFZFwunJcNpfGaiauVBsn/ulwoYVWDWI/yBjn
         2d3FzFxFIMw5kluG+Gu2JdRs99niI49042qKsxuz71uIvW8BPW81Ua8mQiBfAvc4lU/7
         oXJwYeh/DRNAEW6/ARM90oshHvDeVjex2cqrKmFM6cRbpAx5U3u6/f55uj6Mirh9xlvC
         BDVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZdfIlWKRonev6L/BUfBO+ha2M/j4gyDlJ4Zt2wsa+6c=;
        b=negedZcfT3n5uf/gsNkqRMI5kKHf/RXdlnf3TodnYHn+hDAlrIsj7OqgF70U8S/N0i
         M1299JpF+iLIeXSw8rhdq1NwDMaAqkBS7h5Joi0dB557rRTtsdkG2fvnaqjhJTiSkXpe
         zF1NtiROiQpS+9SpGztEfCff7HTWJ/r5UckhO6kZjM0mM1eF3k0Zdvkgsvu5MIoP+L5A
         FG+fwXX5KNZpTqaJXhihEpSTzLj+4S5RFPG87vqukO08oDEWvCKYJ0UrL6DfSx9Om8Op
         PAL85R0CUmPhWYjRtw/d1WuPg4/H0q4aY0dHV2clAeObcfRAxmakLBLfd7MzBS3gbcwh
         mxhQ==
X-Gm-Message-State: AOAM532rQVbCW6QpE/k3NB42/upf02aFuNIUnHRXkIhWAm+Qgfx0FxOD
	AsIh7vaurnfo1wni6mpFx0Y=
X-Google-Smtp-Source: ABdhPJzgBxZgfhoXDvVD2sfeDgLXMkMxetcQA64sN0YWQRoBs2/lEfmumSgobSjrfN98+n86339kAQ==
X-Received: by 2002:a17:902:eac2:b029:d1:e603:af72 with SMTP id p2-20020a170902eac2b02900d1e603af72mr16360600pld.48.1600460135566;
        Fri, 18 Sep 2020 13:15:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:79c6:: with SMTP id u189ls2380136pgc.9.gmail; Fri, 18
 Sep 2020 13:15:35 -0700 (PDT)
X-Received: by 2002:a62:6287:0:b029:142:2501:35d5 with SMTP id w129-20020a6262870000b0290142250135d5mr17877779pfb.53.1600460134981;
        Fri, 18 Sep 2020 13:15:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600460134; cv=none;
        d=google.com; s=arc-20160816;
        b=qIwfWFjtDTayHdDQQqihyyUD4Qp7MQODPJ1M0vrwxg+cEbrO2BjPi6AgTX8BmlcbgX
         m4kRazM1ZiuCRCZ+zZYqbYqI6Vt0EN+4S0TGhI20XWFncXDS/60Bb4lEXyTPNhLTnhZh
         CWxRgX6+GojsMNbVANE2JPtCTnpJsy0vmm+PariAktGI8NAE3lhTi5ivz6NGJCKlB4V5
         Hz82mH9j5wLOItzs82957Kj55PnWz6sR9Fb63TmgwfXnfcnjEm9kreCQzGnUXMPASu0H
         bniDMxvG1wDSqu5iIbjB5LJbDRH+aRzOU3ghRX0+qDtMeKe3JCvfMktu9LNzjJY+1cbx
         OM1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=Aq4KaYtXPvsIFu2w9Cb9+vNMYXxmfrCDkI2ZzAJ/U8w=;
        b=ZjKjT7UGiSjFF2X4wu/X5UnVYULORIVaRRO5r/7fdyQ9id5ZH6iumikVIDzM9HPEgR
         5ijM0qNLtRFojBGFNag/iTkyD+IU8dUfdHFxH51kxg0UqE7apYkiQgPwn5eB4zbPztBN
         vMzqM68x5TNp9sEW5lhzxTQLWJuy0NHflRh4yldS3TvPDNsQMTMuz28KnLgaryeDZBOa
         hc6nYrgs8QrW2mWs1nR+3wFvxAO2HxXcp7BXvV0KKI8F6qA6Wx9AW/C5CKPBYqDeDhAh
         9VSHzJfdKuJuDM3KBHvz++0aWN5gBC9DAyyNzXl4GXbLv4SP2AVwUzdP8Id1CXiU6Cqy
         k9+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YYDR5W+p;
       spf=pass (google.com: domain of 3zhvlxwwkaccvdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3ZhVlXwwKACcVDPLWROYDQHQJRRJOH.FRP@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x84a.google.com (mail-qt1-x84a.google.com. [2607:f8b0:4864:20::84a])
        by gmr-mx.google.com with ESMTPS id mm16si341842pjb.2.2020.09.18.13.15.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 13:15:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3zhvlxwwkaccvdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) client-ip=2607:f8b0:4864:20::84a;
Received: by mail-qt1-x84a.google.com with SMTP id e6so6110658qtg.13
        for <clang-built-linux@googlegroups.com>; Fri, 18 Sep 2020 13:15:34 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:ad4:4d87:: with SMTP id
 cv7mr19182556qvb.49.1600460134116; Fri, 18 Sep 2020 13:15:34 -0700 (PDT)
Date: Fri, 18 Sep 2020 13:14:29 -0700
In-Reply-To: <20200918201436.2932360-1-samitolvanen@google.com>
Message-Id: <20200918201436.2932360-24-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200918201436.2932360-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.681.g6f77f65b4e-goog
Subject: [PATCH v3 23/30] drivers/misc/lkdtm: disable LTO for rodata.o
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=YYDR5W+p;       spf=pass
 (google.com: domain of 3zhvlxwwkaccvdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3ZhVlXwwKACcVDPLWROYDQHQJRRJOH.FRP@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

Disable LTO for rodata.o to allow objcopy to be used to
manipulate sections.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Acked-by: Kees Cook <keescook@chromium.org>
---
 drivers/misc/lkdtm/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/misc/lkdtm/Makefile b/drivers/misc/lkdtm/Makefile
index c70b3822013f..dd4c936d4d73 100644
--- a/drivers/misc/lkdtm/Makefile
+++ b/drivers/misc/lkdtm/Makefile
@@ -13,6 +13,7 @@ lkdtm-$(CONFIG_LKDTM)		+= cfi.o
 
 KASAN_SANITIZE_stackleak.o	:= n
 KCOV_INSTRUMENT_rodata.o	:= n
+CFLAGS_REMOVE_rodata.o		+= $(CC_FLAGS_LTO)
 
 OBJCOPYFLAGS :=
 OBJCOPYFLAGS_rodata_objcopy.o	:= \
-- 
2.28.0.681.g6f77f65b4e-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200918201436.2932360-24-samitolvanen%40google.com.
