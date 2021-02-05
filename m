Return-Path: <clang-built-linux+bncBDYJPJO25UGBBOMA66AAMGQEKCS5GKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ADDD311420
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Feb 2021 23:01:30 +0100 (CET)
Received: by mail-ot1-x33e.google.com with SMTP id t5sf4240150otm.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Feb 2021 14:01:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612562489; cv=pass;
        d=google.com; s=arc-20160816;
        b=iHwmtQjSfu7Ym0Av7LDxewf4bYQlGDuz29x1P7d1p76KvwOTGgFXBs5Z4gMMXj3jDv
         z3gr1v9OumfJstmCmg60c+UN1hXSt8RujjX16KwgHcuX64vdPZ9Nz8Mz74BmbEnHKbU3
         kDL7SXdBYrfUBBHwMaNJ+chfGp6yGV7/BaDe+Ban0B3bLBdp2AM9BRqrmF8NA4Ti5L5w
         mDQBqNB/2Jfm2vOiP2mBcxQ7C1pRDYlufMtIjGaxVfLsTBpmVqiLtbI4zocmuGXWC2Mu
         /Y/xomArdAujwIgKw3bQwdiTLzfzGjliQ8OUu9YiwcISVIWMm99hS2IotvLRdniT3J6k
         +vxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=rGXML0v5sEaFUDlZ+JyULkgF9CXwxjFTM/U75Pb0lHg=;
        b=OignaNsniooRWkVxlhoviqP5p8f9d3MHkY3C3KYPTxwYY80hKPRIlSaJA+3/V4aKQr
         YEo6su7sNF09BpXPc/uJQaognUs7x5xnSIbVVE4KHfuJ/5WLo23OcS+RiUgOP8T8/iLT
         CyeX2XTocKhjg0KsRMbceSQBMxkPb+lyUQ55rj6p4pGjvKuIT5dvE8y7IWtSx4fuP/3Z
         8P+cX7uQz77U1rAlKZfpd41kpti2mpZsg5idMKSq5Vsi9Thl51DtTEmqQG+jznpp5nhk
         oSz4iLkd07PgRP/72NxcCH1OJv4yaSUDBcPEwZ4nNj4X/Apfi8VqDhpWhZg73IlNZDfF
         oE/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dp4CNzNO;
       spf=pass (google.com: domain of 3omadyawkadcgwxltnegbxklzhhzex.vhf@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3OMAdYAwKADcgWXlTnegbXklZhhZeX.Vhf@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rGXML0v5sEaFUDlZ+JyULkgF9CXwxjFTM/U75Pb0lHg=;
        b=NSlPhh1JG3FDM8DNQMF8Og8q9s1S7qD3aT8yc+fiP1jh8h63bYI4FSgHv3/jP+CUwX
         hak76sGfYzutNJ6fR4tCpo6ADnt1EfEjplfiJk/BJr1rTM7s+dtidGm/oqXf2HSfDvyj
         8SpphdeTbkJDAyetsCj2j+qXTwrOvlMUBCIOVDGKnACvyw2r3ZNNQQsBmuzFzdfXDYol
         JUrOyTY11D/qxYXTXCJ1+mtj6C52ioGzIIsgUf/dly31cLW5ykeYN8yXUtH9JKXWBJuG
         wXsvbf2fagFmgFsFBjfwH/ksP+oqgjamkcOqQ1unSmV/KkadfPmkkbCmJKeCOLO5GoCf
         MG9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rGXML0v5sEaFUDlZ+JyULkgF9CXwxjFTM/U75Pb0lHg=;
        b=Qou7t23Jlacxeh+LXZ5ThBkowPHEtD3p7iOwk/P+5rfxVO87O89rK/BxWwTMsDrNva
         AGrFosH/D9lcNdEp6JH3ctMA30iKKw0EDD8NIGB85UP/wzCn3I2Nk+sleC7m481RXXX+
         SKZ0QBtAiEpaEWRbBI3RxBa91lSixJkvbcoKMSF9ri2R+PYUB+4k7O7XTEGLMxBwt09J
         pKhLVnwt8SgWx7R1S5tn1UUwsVTrFaVqMZwoaiApLMAGm+llRnEavS7xsJItCvUeVTKd
         7LccxwZCbU2eyM11REngvqsN4Fxz5+HFNBB/IvTaNCaPqqb0SumZ6uPsst6At2orwRN1
         Sm3Q==
X-Gm-Message-State: AOAM533o9/e8ZB0EWfsVDnYcsF7GVY3eVMzE5v7TroOpm1op5pwXp5GS
	RXwYdNMhzXG9EA2RMbd/jOo=
X-Google-Smtp-Source: ABdhPJyTP6tC0EYLazr3o6srg+UyK3cOO9u/C9Genv9xBCwtwt2wI/E++KvbC8ONW6WHVGs+CgNAFQ==
X-Received: by 2002:aca:dd55:: with SMTP id u82mr4609411oig.115.1612562489401;
        Fri, 05 Feb 2021 14:01:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1391:: with SMTP id d17ls2626058otq.2.gmail; Fri,
 05 Feb 2021 14:01:29 -0800 (PST)
X-Received: by 2002:a9d:2908:: with SMTP id d8mr4736351otb.331.1612562489003;
        Fri, 05 Feb 2021 14:01:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612562488; cv=none;
        d=google.com; s=arc-20160816;
        b=XDojAzKk7FjAYEwN6EbYEkWLyz9RFVPd1K8fyyddSEhI5Hqjj1OEW4XhVS3bzc9KJF
         //oSkjiVyL23cLSTJEd4gUjXRM0J37xMd4bO12IqIQdwPLY/zliUXK2GfkXHhxaKCLBp
         Bftx1sZRNVDePWAOgNwPC0ZC1YcKTWDevaC0oeJj83HWFRV6FI3bznabAF86PR+zHcjP
         i6xqTUTH01Jmlva4UlNbkzH0aTfLNTiMyL0WrlFyvURuqN5vlcBaIMu5BS3ZaHQ50z6C
         3FEroUcxI0hgxyZJ0EbudRC1yoGNNS1441WwPkDJxy18ul/xqPGW6ZQ7XyN1yuZtdtE3
         6CbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=vfoNqgpFnWRNHkVjKwQ8AkyS8YshOlfTiuGJMTgmnlQ=;
        b=klPVG+pp2pS5IiMjlq6HVC7Rf/xRHBsjbOgdr2pYajQh3dRdvMjZKP7mHeurcd46BR
         AQGG7Qg0aZX8YVLQ2mVB12hFecaAhP+YkLrn4czkPbH8PVlZPdsO7EkpPYNEKmKDGQhn
         kXSUWWdUdAptwskFs5n0t512LFBLUkRqMIUt1V9Uc87vWe+VcLCt8o1nY8hcw8aA2rJk
         MTostrCj5j1wMXOhl8Fn4QsNw7RL401G86+jtQyiT1u0gIPn1IUN+7FH73KHpl44vxKm
         JQbZeWdLn8eaz3bA01phagCENFY5k6/pT7RIdKbDKEX52b3YxtShYEDDBw8EW66WcOYH
         ptFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dp4CNzNO;
       spf=pass (google.com: domain of 3omadyawkadcgwxltnegbxklzhhzex.vhf@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3OMAdYAwKADcgWXlTnegbXklZhhZeX.Vhf@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id j1si990609oob.0.2021.02.05.14.01.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Feb 2021 14:01:28 -0800 (PST)
Received-SPF: pass (google.com: domain of 3omadyawkadcgwxltnegbxklzhhzex.vhf@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id e62so8641307yba.5
        for <clang-built-linux@googlegroups.com>; Fri, 05 Feb 2021 14:01:28 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:fce9:1439:f67f:bf26])
 (user=ndesaulniers job=sendgmr) by 2002:a25:df48:: with SMTP id
 w69mr9484024ybg.85.1612562488516; Fri, 05 Feb 2021 14:01:28 -0800 (PST)
Date: Fri,  5 Feb 2021 14:01:25 -0800
Message-Id: <20210205220125.2931504-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.30.0.478.g8a0d178c01-goog
Subject: [PATCH] Makefile: reuse CC_VERSION_TEXT
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Michal Marek <michal.lkml@markovi.net>, 
	Nathan Chancellor <nathan@kernel.org>, linux-kbuild@vger.kernel.org, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=dp4CNzNO;       spf=pass
 (google.com: domain of 3omadyawkadcgwxltnegbxklzhhzex.vhf@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3OMAdYAwKADcgWXlTnegbXklZhhZeX.Vhf@flex--ndesaulniers.bounces.google.com;
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

I noticed we're invoking $(CC) via $(shell) more than once to check the
version.  Let's reuse the first string captured in $CC_VERSION_TEXT.

Fixes: 315bab4e972d ("kbuild: fix endless syncconfig in case arch Makefile sets CROSS_COMPILE")
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 Makefile | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/Makefile b/Makefile
index a85535eb6a7d..70034d7c1051 100644
--- a/Makefile
+++ b/Makefile
@@ -557,7 +557,13 @@ ifdef building_out_of_srctree
 	{ echo "# this is build directory, ignore it"; echo "*"; } > .gitignore
 endif
 
-ifneq ($(shell $(CC) --version 2>&1 | head -n 1 | grep clang),)
+# The expansion should be delayed until arch/$(SRCARCH)/Makefile is included.
+# Some architectures define CROSS_COMPILE in arch/$(SRCARCH)/Makefile.
+# CC_VERSION_TEXT is referenced from Kconfig (so it needs export),
+# and from include/config/auto.conf.cmd to detect the compiler upgrade.
+CC_VERSION_TEXT = $(shell $(CC) --version 2>/dev/null | head -n 1)
+
+ifneq ($(findstring clang,$(CC_VERSION_TEXT)),)
 ifneq ($(CROSS_COMPILE),)
 CLANG_FLAGS	+= --target=$(notdir $(CROSS_COMPILE:%-=%))
 GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
@@ -576,12 +582,6 @@ KBUILD_AFLAGS	+= $(CLANG_FLAGS)
 export CLANG_FLAGS
 endif
 
-# The expansion should be delayed until arch/$(SRCARCH)/Makefile is included.
-# Some architectures define CROSS_COMPILE in arch/$(SRCARCH)/Makefile.
-# CC_VERSION_TEXT is referenced from Kconfig (so it needs export),
-# and from include/config/auto.conf.cmd to detect the compiler upgrade.
-CC_VERSION_TEXT = $(shell $(CC) --version 2>/dev/null | head -n 1)
-
 ifdef config-build
 # ===========================================================================
 # *config targets only - make sure prerequisites are updated, and descend
-- 
2.30.0.478.g8a0d178c01-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210205220125.2931504-1-ndesaulniers%40google.com.
