Return-Path: <clang-built-linux+bncBC2ORX645YPRB5HL46BQMGQEWBJNBAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id E603636297E
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 22:39:17 +0200 (CEST)
Received: by mail-ot1-x33c.google.com with SMTP id l14-20020a05683004aeb029028919a6fae1sf5293279otd.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 13:39:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618605557; cv=pass;
        d=google.com; s=arc-20160816;
        b=TQYpGehiHG++Z3bTo7bSf+uf+hEwEnBah6sgdZWjxaj8DvYx3DYZPNAkeK++1Cr3bS
         n9Qdullk7brHezn7NUK8arzaF6KY18r3F1IZqQg96XQKq9d4kBK9lusT5PeJqOa4dwNl
         UQcmoI3LQhygT50TKxybjnHLSpCri37iCXNa5/Hn+S8jpmKblM8YUJ9f2EO53m4hHUob
         tn/8BGXdVS/U/fHnD9C7LY4DtRnDl3REc46Lj19/ujD13PjYeA7IbxGqU6S9N0xxZVHx
         9nKbTQr6mZbHBaD62uoDhEPisVks+UGt6RgA37HhWKTgvWyE8KgaZxYfXzzgpszjV1Kp
         F8Ag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=BJ9cp8Uk5fVt0c+lAVc4ZAunQuIPpa2GEURtwCZMagw=;
        b=Q5DM5wvUf2qfWYtQ0O4bR+iQ3H74CEgSUFjrlHdBugsq3JWJvSKySGC8LQRFoMMx/K
         qSsEqFoavHvEkyGA7FKb1F1f6b1W8Otj0eHVr5e4ApIwEhwVUNli+G1jwv06euFyPplx
         Yu6O8yy/WiJPUwP36M7D5GkCsRfStP/w2dOyYcs0t5eW/x2Ocyu70biaGD/5/kDXbzgx
         wSF+KziGV54kIwor1gGeEoAZJ05/Gs877P7But3OgAcfTKSF2iMEkKewPGtwuGUx+/cg
         OeIX+Xzg184+zptC31DzchoKlQVoQPDgmWCowFZuU7xReufYKNDJ7HrcYI/c1Xc8r5Z+
         P/pw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=b41bDVDJ;
       spf=pass (google.com: domain of 38_v5yawkanaew84fa7hw9092aa270.ya8@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=38_V5YAwKANAEw84FA7Hw9092AA270.yA8@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BJ9cp8Uk5fVt0c+lAVc4ZAunQuIPpa2GEURtwCZMagw=;
        b=ifNSdYm+gsKlWtGiCEU8BHrMLkKrJCpfNu3USHtH/6eo5em0gfq1cX+NNe5pR0m6Ce
         QTJHeVjWFIDfj0PbtNObl4B/EtetGUSX/AjF+JIyjpzQqv8QvHz4yHX4ec5CsYxIAwx3
         DS977RR4c0EoVlIIwrRNEr31Xta0ez+q5YSj8dmRdjO92M2Rtt1jeqi7eE0zqwJDiwAw
         s/f4uiYOc6Ka7QH83974bX2A8OsyR5zQRMBgmkrlU7vd8gQbUmzZ1/j3jUq2SsVhgEC2
         TyDepIBH25VcE/iouXKzQqPKiiDRihOq2YpS5scS+tAhYorqAG35Mu7fZ2ZGaUpfkLsO
         DKcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BJ9cp8Uk5fVt0c+lAVc4ZAunQuIPpa2GEURtwCZMagw=;
        b=leeC+OYVRJV3mXtbqfBKIYuObCrTj1idHlvzkzi/tvZb/RQIbdRdGqSvAsLCCFRhCN
         VcbglU9RTfWeYnui7Ym9t3uc+MDCblOSGZEGCp8hVMdb+W5YO2CvUYS1h6S96XLJZtrp
         RaVVqZf486bATjYRTDtSdhIOUmwy2MpS0ty3Xn1Cli6XPOl1MXfym/7iJ7v45gvLldhq
         LFkD48VaehRU0gHUxG/w4prqUqv/PMN39ax2zSl41MapOm7ABCqtC3pP+fD7LQew1Xs3
         ws4+GDEeYouMkMMyaku3zMuuuv5I6mUCleoUCURNwxiEeJVWt1A0cdWsIWgQ6MUPb7W0
         sVBA==
X-Gm-Message-State: AOAM53207Mn3j6+g3VrsKf1Q2AQHUDJ3TdUwNOcwtt+ieXCXywh7N5tI
	wnzTfBALdOnlxuuA2r3OR1A=
X-Google-Smtp-Source: ABdhPJww5BCVDbRPlYeStAlb243UPVvoX68p3pORBhbAHxEJyKOK+dPxmTPp1FJvqDHPkMCdDVJa1Q==
X-Received: by 2002:a9d:754b:: with SMTP id b11mr4914963otl.315.1618605556928;
        Fri, 16 Apr 2021 13:39:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7dd4:: with SMTP id k20ls2639112otn.5.gmail; Fri, 16 Apr
 2021 13:39:16 -0700 (PDT)
X-Received: by 2002:a9d:7453:: with SMTP id p19mr5049396otk.271.1618605556536;
        Fri, 16 Apr 2021 13:39:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618605556; cv=none;
        d=google.com; s=arc-20160816;
        b=kIHcy/ekwpKKUcYbKXg/HmqWqy1ogL8UY4r8PXfRmhTOabCXWoQegQqmyCNXEB4TwY
         3xTleVAEt94wxVHWVuXzO+oPL44y4hppQNuCqSvh4sEnaf/ROQTaaXfKOwAzTR1OyIiV
         DpIwjLULtdQWLFBMVK2Nsa4HCotrnxdGJDVgYmwg4ohqSAVvvz1Q1MPciIpCpB1M1rGT
         sbO7SSP7PJsDVHo3X1sEiTvmPsMggxUqO7Ehz3K/WAm8d5bnCYH6lGjuOtMrmpsuTezr
         DISOAeHUPIQSmjoKGXDQVM0xPqGA+OYIz6u+Ck52W9MHaSQpTbj/ZuR+fYbAKdwZh6Sd
         QUzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=ZVSi0+WBJd8cK80BxQ4Osd57SVpFSIT5lMOEx2WBOew=;
        b=HeQVddtlWQ/Ml3vFBTVIrBsjxjo/lq9BA6lUD7oHNVoTwvo/2eb7/xhemR1N/rSd3T
         ewxUUEaVMKfs9Jv0g1YYV73MOJHPLgzHOceZTw3Glwmyi2V/JzSfSVk+hjT8ZEGVKQ/W
         2KPL4nWCFaT1sTPDOm42hnSI39ka9rcY8YvtIpeG9aZONE7j6dpJMyu5BGW4uoh3o7N3
         fIjlT5tMUOxRHPXPbhBmijPpjDzP1mAqkeC83FiCAtOCDcYkSNZXrTszF3C9QklpgxUi
         zJ+h/PWaWrYNenMbzoIayFnjwsKDeBQzwUw8Q1cZuL0l6BJnTByyaCoDrUNH0t5awmVj
         9zTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=b41bDVDJ;
       spf=pass (google.com: domain of 38_v5yawkanaew84fa7hw9092aa270.ya8@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=38_V5YAwKANAEw84FA7Hw9092AA270.yA8@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id p9si507430oib.2.2021.04.16.13.39.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Apr 2021 13:39:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of 38_v5yawkanaew84fa7hw9092aa270.ya8@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id t9so7527803ybd.11
        for <clang-built-linux@googlegroups.com>; Fri, 16 Apr 2021 13:39:16 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:e262:3d8e:cbf:6164])
 (user=samitolvanen job=sendgmr) by 2002:a25:6885:: with SMTP id
 d127mr1406777ybc.378.1618605555941; Fri, 16 Apr 2021 13:39:15 -0700 (PDT)
Date: Fri, 16 Apr 2021 13:38:44 -0700
In-Reply-To: <20210416203844.3803177-1-samitolvanen@google.com>
Message-Id: <20210416203844.3803177-16-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210416203844.3803177-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.31.1.368.gbe11c130af-goog
Subject: [PATCH 15/15] x86, build: Allow CONFIG_CFI_CLANG to be selected
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: x86@kernel.org
Cc: Kees Cook <keescook@chromium.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Peter Zijlstra <peterz@infradead.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=b41bDVDJ;       spf=pass
 (google.com: domain of 38_v5yawkanaew84fa7hw9092aa270.ya8@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=38_V5YAwKANAEw84FA7Hw9092AA270.yA8@flex--samitolvanen.bounces.google.com;
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

Select ARCH_SUPPORTS_CFI_CLANG to allow CFI to be enabled.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/x86/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
index bf69d07e46b8..81d2dc568e56 100644
--- a/arch/x86/Kconfig
+++ b/arch/x86/Kconfig
@@ -106,6 +106,7 @@ config X86
 	select ARCH_SUPPORTS_KMAP_LOCAL_FORCE_MAP	if NR_CPUS <= 4096
 	select ARCH_SUPPORTS_LTO_CLANG		if X86_64
 	select ARCH_SUPPORTS_LTO_CLANG_THIN	if X86_64
+	select ARCH_SUPPORTS_CFI_CLANG		if X86_64
 	select ARCH_USE_BUILTIN_BSWAP
 	select ARCH_USE_MEMTEST
 	select ARCH_USE_QUEUED_RWLOCKS
-- 
2.31.1.368.gbe11c130af-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210416203844.3803177-16-samitolvanen%40google.com.
