Return-Path: <clang-built-linux+bncBDYJPJO25UGBB2FGW35AKGQEEXUIQBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id BC9222584BB
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Sep 2020 02:18:49 +0200 (CEST)
Received: by mail-yb1-xb3f.google.com with SMTP id c78sf11057611ybf.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 17:18:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598919528; cv=pass;
        d=google.com; s=arc-20160816;
        b=z8rzKjvvr7+XCLQtbvJs+b+UfpO1cNOcNFSo/UBBODoUKO4aO6WuoVkzxsQH+eM5BB
         HHaTQr9IknBr5wMVmTrdcVGvqngg5EDi8UFdpCftOdcwIDYi39urgCQrUx+7kLvV+nmo
         xi9VtvT653BlUWM75XAOOwpLMHcaa9hEpn1Rg1eWFgbGjEOr6j2QpUvg4X+45cbL2f0c
         MHib67txcS9S/SnWNbrsGb9VH/8HvRMM0Jdy6+/brDeWAYsTJ11kCf2PU8Svv7ld6w4v
         yxQc0//Crvloe+7GwGhTpG2qhDc2IXlYGk+bPPDqrSeKq/8qtBdVBPR6JtuWNP1zFy2v
         BkKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=HXJPhr9DWkh61SGrc0X1pjRB830dlBuiK7bQiCe6VFg=;
        b=ouu3Rikj8nY6ycz+Bymd6QxSvl8FX/ua2Ny1VWNjtMGFP7zUipMYrOhuxwpoRUCZ4T
         cjtvouQ5C3EuFXFrL6lgCuP2xostNHPDkZMoBy1R7E3TpEsgy7CNaSPvifHcnjoCqG9n
         eCkGLVRSHrGY7iC7zE7WhyqbnmDrazRTYwn8DVcrCC6of5mT8DrolDw5d+SPCGLEV2tr
         qYjXmD76kV83IQvbFZ0WdRKtOIKnhs0BfL7aWCdxRCqYHjXRWlf3etZaCH/fKcm097Hd
         HnlR3KleNmCLwS3mIObiFb5DdiU7GZYEkgG6/JW3JFr04feheAtC/6h6YLm6pN9jLr5Q
         FvVw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cYjMDuBB;
       spf=pass (google.com: domain of 3ajnnxwwkamuyop3l5wytp23rzzrwp.nzx@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3aJNNXwwKAMUyop3l5wytp23rzzrwp.nzx@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=HXJPhr9DWkh61SGrc0X1pjRB830dlBuiK7bQiCe6VFg=;
        b=BqRtQJ4LSicPl3c5Ifp1oDUS8ickzrdxDuY8DBHN8DXV7bL0bfIY0B/QDk3XVhTGxN
         wKwJENgODtb47QBqeF1RlkB8DXsswFfxgAqGz3BjoND3Ra6dcZOwrnVS9s/KAIxCrfF7
         W8IfLRwHGGt4D+7S+3RoNZK44DR6b7eAMrR9HxzhTRaXlR32l37mfVIfOARFJFt7jxEK
         AWXPKn7LaClI1K0euE44kHuW5WApV+MO+BlfFicQUgsHXEtJYyuxN/Zo2h2vTB3a2NKw
         50s+g6+1PAKuV9A84gwba7vNiKVpkn4BB8wKnUHWHiGXkhA03HY2f7NJHgnltE2ndKyP
         /sHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HXJPhr9DWkh61SGrc0X1pjRB830dlBuiK7bQiCe6VFg=;
        b=Nzh7qBlpstnFdkuzEQ47MkWS7lnhf6qLM1sCRJ47OZKbCaU75j099Oi6OxjB6kmK6K
         rNGmEZCw7WTDNun9cEplRVQBH3tPWlNJ3jeDeYVZ8zzOD9U7qsH+Cau+aRe8ti1UBVQY
         OSPMyGOD8yxTfnG8qX+c9lgOGw/0wFvNK6PSfqVTwvD15g+Eyj/Da/KZ2yeofydcFk1D
         EXh1GS7aOrVFX+XVbgTQegUcKCYDIcWaYm9F9DckFPawndp+wRwhlXRY+s2D6JV89kk8
         xarGrhk24HQ+5hFXoFbE1FCYZPSLN9hCGL6QV7tspynhELKC0BkzKH+d6bvZx3zcrbpz
         qHpA==
X-Gm-Message-State: AOAM533XFxwIxiZaRkC4mF88L11l8lp/YRW2Y74Tk695BvwK5OyiMvnw
	YZF10jDyS/aWBME+Jhq+TYo=
X-Google-Smtp-Source: ABdhPJzic0sJmtlMHbJ9YG5hUQnwtmLadsoimQ1Yw76Shc6sa1QgJbt9leqbZc0noEFutUm/XilWqQ==
X-Received: by 2002:a25:5545:: with SMTP id j66mr6474365ybb.232.1598919528806;
        Mon, 31 Aug 2020 17:18:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6902:70d:: with SMTP id k13ls3960538ybt.9.gmail; Mon, 31
 Aug 2020 17:18:48 -0700 (PDT)
X-Received: by 2002:a25:6808:: with SMTP id d8mr6136996ybc.265.1598919528492;
        Mon, 31 Aug 2020 17:18:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598919528; cv=none;
        d=google.com; s=arc-20160816;
        b=twpzjwf95LBVzjRNJNVRv/BJz5xaYKmgC/Ek4WI61H0JNC8CoSfaWCwVN1CGdqiHz7
         Q+6da2mEFOWU+HB2rKwZECYFB7mJttFrGEZEfwt8hLzl7+TG0HwLnETx6lCTCQEAkHyo
         GNIvUDEjnucPg89xUIjmGxLdfC6ID04JCgVizLO6di7SxTjWheaJJNsNXFe/pfQ6JnXI
         ohV4RyqSOodD6Ax1j7HaJxbv91B5KC+IBnzj8j9jH3T96UnWAjAy0RMyGNCb6/OEP29c
         6rVT9NQA9sEkK2dwS7R4SUZEFnmWU7YvkPcN7qXs0D8zQneAIb1V+p0dY0OmFmVvVXnW
         lY+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=90voGTWRAh9zyb+/yxZJ0Qpab+sDHCs4FBicC4wnAQo=;
        b=BxjW6e/JTM5+ia7tR4B6rDb7E5S2ZCFJIzdU0/y8A3yWphXg9FXQhppCaPSfcYswJO
         Y7VFMXPoJcc3YQq/CldWhyQ/w29T+qcgcvjX8HGqMTgnuGqotGFOaA2LtI7TJcG7TeyG
         dZQ8ix36BzvhZmipdHvjEjNzkwQJRAPvtI6wLLWPoaHQLWJp5VmmWLA6/8RYRBsMFJ07
         zxaO5JmFU4OfKBqz1FT/h3Ce8sLwrJOqSjazDZhYWCWBucb06pnNPZHDDzRhAm2DGkx5
         1motQ7w60iPiD4WDdjTsbq0mBxRInpbZPcFu8pKcP9vNkPN7uxmfv4bPuV8qCD69TTTx
         vtyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cYjMDuBB;
       spf=pass (google.com: domain of 3ajnnxwwkamuyop3l5wytp23rzzrwp.nzx@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3aJNNXwwKAMUyop3l5wytp23rzzrwp.nzx@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id 7si366901ybc.0.2020.08.31.17.18.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Aug 2020 17:18:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ajnnxwwkamuyop3l5wytp23rzzrwp.nzx@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id k11so11130932ybp.1
        for <clang-built-linux@googlegroups.com>; Mon, 31 Aug 2020 17:18:48 -0700 (PDT)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a25:ad5a:: with SMTP id
 l26mr5919474ybe.510.1598919528142; Mon, 31 Aug 2020 17:18:48 -0700 (PDT)
Date: Mon, 31 Aug 2020 17:18:21 -0700
In-Reply-To: <20200901001821.1126189-1-ndesaulniers@google.com>
Message-Id: <20200901001821.1126189-8-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20200901001821.1126189-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.28.0.402.g5ffc5be6b7-goog
Subject: [PATCH v2 7/7] compiler-gcc: improve version error
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Kees Cook <keescook@chromium.org>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Marco Elver <elver@google.com>, Andrey Konovalov <andreyknvl@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, clang-built-linux@googlegroups.com, 
	Daniel Borkmann <daniel@iogearbox.net>, Alexei Starovoitov <ast@kernel.org>, Will Deacon <will@kernel.org>, 
	Vincenzo Frascino <vincenzo.frascino@arm.com>, Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=cYjMDuBB;       spf=pass
 (google.com: domain of 3ajnnxwwkamuyop3l5wytp23rzzrwp.nzx@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3aJNNXwwKAMUyop3l5wytp23rzzrwp.nzx@flex--ndesaulniers.bounces.google.com;
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

As Kees suggests, do so provides developers with two useful pieces of
information:
- The kernel build was attempting to use GCC.
  (Maybe they accidentally poked the wrong configs in a CI.)
- They need 4.9 or better.
  ("Upgrade to what version?" doesn't need to be dug out of documentation,
   headers, etc.)

Suggested-by: Kees Cook <keescook@chromium.org>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200901001821.1126189-8-ndesaulniers%40google.com.
