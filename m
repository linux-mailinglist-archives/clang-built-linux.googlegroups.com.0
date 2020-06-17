Return-Path: <clang-built-linux+bncBDYJPJO25UGBBUELVL3QKGQEBBEJYKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A5881FD6AA
	for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 23:06:26 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id b5sf2333974pls.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 14:06:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592427985; cv=pass;
        d=google.com; s=arc-20160816;
        b=c5UwBD89YLWRWuerzqEOusdepAwrxb5i+W7l+QyhNAwcDhbmhOO9mC9dk6WuNHfk30
         iv4cCdQS5qu9Tjued8wfPAw842MRBp6hllW98O1fZfnnCT3YUTbYYOCEqqwYMLOvXR9c
         TlAdJsCCPO2pyg0dxc5YXaAc9dkRKUlFL7V3PlZ1Tz4S1WOscmymrq6sUAzwb7omj1Xn
         7tuy1J9dLTwm3SdkXcoUOfBR6TXVfJ1QKREjBVACmX29BShW0SgofqIAF9hK/EszxvH2
         cL+hIjIWFD5fDCggcwqi06f0fYZc/qyYqK+RLDzNDesvtckaW9N8Sn51Gy6MRfkT/k+8
         WavA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=NEkCetyGWt+cToz78nM74xcx0sT8djsYL1DkF0DjSZI=;
        b=aMt9fjnrAk1CORshg81DviJbh+UlZbbsjkWXJlN1WEXXghIGorgqbD1b+X/jbpWvwz
         qBuwfuFcbbDuW/XotAnRx/OMUsayV54GyCFJWsWseeSblTdeyTgOYFvmULKETjqRnpIX
         6y/qpKBPd1We88t4XXrCwcIu6tk3MGcQR5xKQnANZe5FNjVkO6RwN8gpT9pnrR7TnalU
         jXjhbA8MMyicq2nPl7OQy9eK5ftZ0+diCHgb7i/OUtjZG+oa2xggbfL1vz3WxA184jOB
         2Fyxr+JA29bGqS1ijniJQ5Nxrai+BbsGQyYZqA5ULLIdVanU/tkzgPxr3xPY8w9RStNU
         z66A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="s65S27c/";
       spf=pass (google.com: domain of 3z4xqxgwkaiitjkyg0rtokxymuumrk.ius@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3z4XqXgwKAIItjkyg0rtokxymuumrk.ius@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=NEkCetyGWt+cToz78nM74xcx0sT8djsYL1DkF0DjSZI=;
        b=auZXjop8E/v8A33enN6AOFIcEfDzA83ZiQoIU92pRQEFHxOU1TEUy/ny/AIHjqcbU5
         1bODzZ8+DXbMeKm1V0QZD2xLCRWY3grj/hpGnvwpPAqQ21XN+ey/QbXWLCTa3YBTq+Wc
         Kwtb5bnfipySl21PMAh4P/wKJFjkOwCEy40cVzQXkMweN87SLyDUsLhjtg4R30JuryFj
         pBCK/pE5zoXanuvlqda0j2DxkNPWKg5cJGiUJ8vN0uuwINbqv4km8kktPBenzf1TtdR3
         m7f5sdrNV0urI3xYmXgQXojmPGTsg3vNT7lUBF/LCrvPKUm8uFMl1VDRFuvP6kcFaLgl
         vnOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NEkCetyGWt+cToz78nM74xcx0sT8djsYL1DkF0DjSZI=;
        b=RaiDfTfTKexNON4q9BV4BLbuFfuFTUpFhrtkfoN5edrBIWKQacKgFZCzPvrpEsMIhj
         oPXGRwhUO1bum0mrTkYTKbjsmJ01LBbMYANjasZBW3qA3phaCWEp3sZ0uD/D7FjFFJne
         h3F1VPAQ/Xse/5UI0VuboJqHNJIiMUatH6dUnJ8ryaeC41ZPBjpTkzQuKBLve9AR3Rf1
         8a42WMlnrNhLzDjIe72oN92rAJVmfbmdefXfA8rQhgK3mOoy61+/GKl7+FybWfYRuxuH
         Y+tGqHqE/WM5L2zezAIk6n4xu118WIj9nyrzOwiqEewiFlYdjeONUQc7Z/BGZ8+y1QN5
         4lMQ==
X-Gm-Message-State: AOAM53076S+2s4+8hRKu14XWpJGMLTNxcIy07pw+RTf38ZKYs0pm1onG
	B0lkHVEDDlLdxGxhdYwWAmk=
X-Google-Smtp-Source: ABdhPJylrqJAI3uVJa0Vgtgsz3OQDwBl/uUWPbJfYKs1FX+lFxfgstM87otgXoDI4HK9J/62luKq+w==
X-Received: by 2002:a63:d944:: with SMTP id e4mr600849pgj.376.1592427984920;
        Wed, 17 Jun 2020 14:06:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:e312:: with SMTP id g18ls1101770pfh.9.gmail; Wed, 17 Jun
 2020 14:06:24 -0700 (PDT)
X-Received: by 2002:aa7:9569:: with SMTP id x9mr590115pfq.308.1592427984477;
        Wed, 17 Jun 2020 14:06:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592427984; cv=none;
        d=google.com; s=arc-20160816;
        b=TT+3aWbYO+rKCSrioQNU/Cr2rGt8vVNaPFzb/gWX4/RZSIl8/W9L7ucKb0nOF8G8qC
         bbjpHE2Lh/UftZZ3REjeuF7o45qYKhM8mNCffyNlPVNZaJek8rVd9Mzzb6gSGybk574P
         ahvRBEUbnNtvMA7uBJMxqygiofrARslcG/PNTg1W0C+rXkFObTTymfhqdrLC+S5rGNhO
         xrs3IP6XRoP/GDgRejV+ioRF+SduimM0Gof9CcY53nquPrNVjmQ7gORR/PNY+o215ca4
         EanK92KWI2X03dcq/0esY9ySDuGRvyrrTN10l+YPgkWs0aVPmb6aBa/2mHRuXvIIeqjP
         WkFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:from:subject:mime-version
         :message-id:date:dkim-signature;
        bh=d0+Tzz9YePJeli6i74FfEPDYMLFJV/dTb97VxgPARRM=;
        b=lzbOpG4tvLx5E+fqJ5Sm4DxDowMCVQfyC0qNh77oIKvCBRN0jzItuV9r/VDWzKowIo
         uRdvLHcJ6l3qPTdpCAVgarX5CXBjIO8LKxZs4UA5DPkl96N9MVlm81jxRGJFLXhur4ED
         Qlw6nvqOPcWSo5mpVVXDeOADBzUcspSiNVxmMx17CV/iGFG8koBL4DST6CK1T8ihRpIg
         JviYe3+/UKdC5BPF7kGCU4aOcaFeuw8NQBmighN2wVBca162eXiOfsJanrwNntKeFS0n
         Aeg3TGTG64zSCf/TB+/jOtbcaSAgOoaFihZMJ1TtMdF9sFgONuZMzmmjNYZaDp2PqG4x
         RxBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="s65S27c/";
       spf=pass (google.com: domain of 3z4xqxgwkaiitjkyg0rtokxymuumrk.ius@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3z4XqXgwKAIItjkyg0rtokxymuumrk.ius@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id q1si67052pgg.5.2020.06.17.14.06.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Jun 2020 14:06:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3z4xqxgwkaiitjkyg0rtokxymuumrk.ius@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id e192so4003816ybf.17
        for <clang-built-linux@googlegroups.com>; Wed, 17 Jun 2020 14:06:24 -0700 (PDT)
X-Received: by 2002:a25:7086:: with SMTP id l128mr1423806ybc.34.1592427983669;
 Wed, 17 Jun 2020 14:06:23 -0700 (PDT)
Date: Wed, 17 Jun 2020 14:06:13 -0700
Message-Id: <20200617210613.95432-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.27.0.290.gba653c62da-goog
Subject: [PATCH] vmlinux.lds: consider .text.{hot|unlikely}.* part of .text too
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: clang-built-linux@googlegroups.com, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, stable@vger.kernel.org, 
	Jian Cai <jiancai@google.com>, Luis Lozano <llozano@google.com>, 
	"=?UTF-8?q?F=C4=81ng-ru=C3=AC=20S=C3=B2ng?=" <maskray@google.com>, Manoj Gupta <manojgupta@google.com>, linux-arch@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="s65S27c/";       spf=pass
 (google.com: domain of 3z4xqxgwkaiitjkyg0rtokxymuumrk.ius@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3z4XqXgwKAIItjkyg0rtokxymuumrk.ius@flex--ndesaulniers.bounces.google.com;
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

ld.bfd's internal linker script considers .text.hot AND .text.hot.* to
be part of .text, as well as .text.unlikely and .text.unlikely.*. ld.lld
will produce .text.hot.*/.text.unlikely.* sections. Make sure to group
these together.  Otherwise these orphan sections may be placed outside
of the the _stext/_etext boundaries.

Cc: stable@vger.kernel.org
Link: https://sourceware.org/git/?p=3Dbinutils-gdb.git;a=3Dcommitdiff;h=3Da=
dd44f8d5c5c05e08b11e033127a744d61c26aee
Link: https://sourceware.org/git/?p=3Dbinutils-gdb.git;a=3Dcommitdiff;h=3D1=
de778ed23ce7492c523d5850c6c6dbb34152655
Link: https://reviews.llvm.org/D79600
Reported-by: Jian Cai <jiancai@google.com>
Debugged-by: Luis Lozano <llozano@google.com>
Suggested-by: F=C4=81ng-ru=C3=AC S=C3=B2ng <maskray@google.com>
Tested-by: Luis Lozano <llozano@google.com>
Tested-by: Manoj Gupta <manojgupta@google.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 include/asm-generic/vmlinux.lds.h | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinu=
x.lds.h
index d7c7c7f36c4a..fe5aaef169e3 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -560,7 +560,9 @@
  */
 #define TEXT_TEXT							\
 		ALIGN_FUNCTION();					\
-		*(.text.hot TEXT_MAIN .text.fixup .text.unlikely)	\
+		*(.text.hot .text.hot.*)				\
+		*(TEXT_MAIN .text.fixup)				\
+		*(.text.unlikely .text.unlikely.*)			\
 		NOINSTR_TEXT						\
 		*(.text..refcount)					\
 		*(.ref.text)						\
--=20
2.27.0.290.gba653c62da-goog

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200617210613.95432-1-ndesaulniers%40google.com.
