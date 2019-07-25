Return-Path: <clang-built-linux+bncBDYJPJO25UGBB4EX5DUQKGQE6MZLQXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 04DC3758A2
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jul 2019 22:07:14 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id j22sf31562382pfe.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jul 2019 13:07:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564085232; cv=pass;
        d=google.com; s=arc-20160816;
        b=FLIPl3KjqH+bl98ocEFtldYCIb4nSmCKrmgsSfAcV5Jyhvl3g0DwtSnCWbOgNOemn9
         N65rcCTQ/S1kWpXzGuUhIXdFy11XNFr79P5k+3fg4bFUM+okbLt11rcRzBr8CR+yPxwe
         K4+wJBb/tb4SPJ6wBbwx7ddpg3A5h48GMj3OATnwbmqbAfrYUOyzvdxtPOdyp3OogCGv
         ILPdOrMz3tsKnR545XXobsfbMIluE60mULoqIsoVe+QwmhVJvKcRMumjeISAw9Rpzej6
         F83BD+X/5gVAdRHULG1Eh6D73cN36sj2sJoc2XcRUNRMW1F/H01xd5EAy+wL+PaBzUX8
         HmPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=m77/Pyn7Qiva9CHU0qLUlobH23n43Rtd18cHFYt7NB0=;
        b=wE3IEdFjDF0DGEBsVDEQNaGrxkoCL1SYYgbKm317iKpLZCXIuZe7w4zn/STBoVEErN
         3nn8+jh0j2ypIFuaibkbnbX4z5FXCtw33EiqQGxveLckenwDyR9uNOMwAQAP+D6FeL6e
         VMWr0TsLTI8gQoss+di6B4R9Yh//8lwOXK+zNis2sbjN6jE+lmmLSstkRrqjWHIPcmUc
         2du6JVUzF+TjKjg0tGSlwWjoIo2jQMptVthmYsCgFwRPeZjUi11j9MpU/WZQuFK1cJMf
         BuMhT5I6XJ0gTYvXVT6mWcg5GNIIBKjdDMgNJTnRTPYbb+UAQ+tJpXvGr1Ukt84RMKC6
         GYBQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=L+koLszY;
       spf=pass (google.com: domain of 37ws6xqwkan4ndesaulniersgoogle.com@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=37ws6XQwKAN4NDESAULNIERSGOOGLE.COM@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m77/Pyn7Qiva9CHU0qLUlobH23n43Rtd18cHFYt7NB0=;
        b=KUN9rC3/F2V4w+Y0cMKu6Fa/4JAVouoLCHmuJmO3NQs0u9hb6M2U9TtljVrCGJ/ppj
         RJQ6dIG8N2XbWNHbFDiel7iDldoGLK24c6Oh2AFChCzHXRQdJYBGrxDejBi/tW7FeaTD
         OaofzCIJpZwJDaflKP7BTuC5qTjy4CBrT1oojwvN/EJ5ksdtXO/A86TT28sqBgu9qAad
         +kHA0DTWpfuNkp6PkqMVpLnkcjSjVQM2JAl69D4spHcy9dOZePWyn9ZHirUm3Zpb4Wc/
         GmfUAviMdgkU1evy2w2+UWk3NY7OKJVs2Uk4m60+inMti5lv89sdHK5q110gthOoqzkL
         G/zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m77/Pyn7Qiva9CHU0qLUlobH23n43Rtd18cHFYt7NB0=;
        b=LnccMSNTIj9s34qkY/Ogqp4qDuWTIOIuBWvv9SCi3GaBxCh1v1IFXUxMgc3GxJkB3E
         hK0KjnHN6+K2/NfRJOV+ScvAfXtxzZasYtAL0C0mKosY8PV0HCJYHwA01Anvcp7H1Mr/
         ANm+PSb5YDJv4P+oelBtVIYMB6Enjsa8YOJIOIFGplsXe84DLfuNg2PcIwERJASqaAz1
         caQsZ+u7EH/319yXeYo+aqYmzeb+kZ7zMfG0N9+NDvL2LRaxgN0u9+R/CEf76nOJPFD6
         gcw8yyYHWY83sJNdMfevizpou/xN5Ny0SmUpJgFgjSsRqXV7d1EDwll2T5tYuHJg5SHC
         Ot3w==
X-Gm-Message-State: APjAAAXbUpp8HyZTQKEA30AL8+k70I7yelnTuol8eZEWw2m3rWQGCzLX
	TWKMFDHf3EMSyHO5fgcOYEs=
X-Google-Smtp-Source: APXvYqyPTM3cPZGgWAkaql6k8AoE5JnrxEAFqpBSurCP3AujKZysYrKSCeWTWaTDYw6UAtp8cSFirA==
X-Received: by 2002:aa7:8711:: with SMTP id b17mr18659968pfo.234.1564085232469;
        Thu, 25 Jul 2019 13:07:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:3043:: with SMTP id w64ls9280236pgw.15.gmail; Thu, 25
 Jul 2019 13:07:12 -0700 (PDT)
X-Received: by 2002:a65:5043:: with SMTP id k3mr30201123pgo.406.1564085232071;
        Thu, 25 Jul 2019 13:07:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564085232; cv=none;
        d=google.com; s=arc-20160816;
        b=s24CgEBCkWWaze0hg6PvzhQfKqwG5TXprxCK8pjMwRCgEHpMwTbjx0/bBW19VT2oGe
         45d7Be7iTEjeKYLuFMG4jUNPtoSQadVxUmHjCTVtrIfc5srj+kOcDARF0pIhuiMOLqz8
         DnT/DyDlfRnQs0urboVCdr/VEsnBmjm9RvD38V5ywkMcU+BRDT3mxzkagbMgBrG9hOMr
         h0PlTWJS+mRu+XfKCuPgqY50fRBy+TPBC8RfIlPzUut+nsft0yCvhmCBnpSRI4dZAkGb
         7nzatG6j9zpKqMeo3PBA5TV2aDmAp1gKPNOlMShxVdrqmvL/h7PhFsBfGAgVr+h9RiHn
         lHlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=Ty05lRNnYEjxTaLhAlpE2gx2Zy7GWIE7L8QY/O06f/I=;
        b=EO5bLBbgoch18bsWeBSOfX2hFRd3Vd2o5xEGHoQ68jy2B7HmLqEJelm2fkRV06H1LM
         bqX2lSAN+uGs+BtoPrhOll/QH80Mt/ynHV4EjFy6Pa2hBibS2MYp5SOx1zFAVjCnxK4R
         WYUt38/HJPx5740J/0nWO4tANosJ0sInwGkDWCrMmwwi0kbTXz3ED25PtJ4nqobU6OIF
         VyC158wY+r+XFiEWnieWxIFEHM4UMSIzwmRllaSC+eSG8ABEAMEisSZ/gzkPtIColKU+
         Uij+9g1zAc7+O+gMsqqjdjok/W91BoTawLH1CD3d86gALxvGHQPynMWl0WInC2twYH9W
         +1kA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=L+koLszY;
       spf=pass (google.com: domain of 37ws6xqwkan4ndesaulniersgoogle.com@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=37ws6XQwKAN4NDESAULNIERSGOOGLE.COM@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x84a.google.com (mail-qt1-x84a.google.com. [2607:f8b0:4864:20::84a])
        by gmr-mx.google.com with ESMTPS id fr4si2346428pjb.1.2019.07.25.13.07.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Jul 2019 13:07:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of 37ws6xqwkan4ndesaulniersgoogle.com@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) client-ip=2607:f8b0:4864:20::84a;
Received: by mail-qt1-x84a.google.com with SMTP id 41so39551340qtm.4
        for <clang-built-linux@googlegroups.com>; Thu, 25 Jul 2019 13:07:12 -0700 (PDT)
X-Received: by 2002:a05:6214:601:: with SMTP id z1mr47731460qvw.197.1564085231149;
 Thu, 25 Jul 2019 13:07:11 -0700 (PDT)
Date: Thu, 25 Jul 2019 13:06:19 -0700
In-Reply-To: <20190725200625.174838-1-ndesaulniers@google.com>
Message-Id: <20190725200625.174838-3-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20190725200625.174838-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.22.0.709.g102302147b-goog
Subject: [PATCH v4 0/2] Support kexec/kdump for clang built kernel
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: tglx@linutronix.de, mingo@redhat.com, bp@alien8.de
Cc: peterz@infradead.org, clang-built-linux@googlegroups.com, 
	linux-kernel@vger.kernel.org, yamada.masahiro@socionext.com, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=L+koLszY;       spf=pass
 (google.com: domain of 37ws6xqwkan4ndesaulniersgoogle.com@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=37ws6XQwKAN4NDESAULNIERSGOOGLE.COM@flex--ndesaulniers.bounces.google.com;
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

1. Reuse the implementation of memcpy and memset instead of relying on
__builtin_memcpy and __builtin_memset as it causes infinite recursion
in Clang (at any opt level) or GCC at -O2.
2. Don't reset KBUILD_CFLAGS, rather filter CONFIG_FUNCTION_TRACER,
CONFIG_STACKPROTECTOR, and CONFIG_STACKPROTECTOR_STRONG flags via
`CFLAGS_REMOVE_<file>.o'

A good test of this series (besides boot testing a kexec kernel):
* There should be no undefined symbols in arch/x86/purgatory/purgatory.ro:
$ nm arch/x86/purgatory/purgatory.ro
  particularly `warn`, `bcmp`, `__stack_chk_fail`, `memcpy` or `memset`.
* `-pg`, `-fstack-protector`, `-fstack-protector-strong` should not be
  added to the command line for the c source files under arch/x86/purgatory/
  when compiling with CONFIG_FUNCTION_TRACER=y, CONFIG_STACKPROTECTOR=y,
  and CONFIG_STACKPROTECTOR_STRONG=y.

V4 of: https://lkml.org/lkml/2019/7/23/864

Nick Desaulniers (2):
  x86/purgatory: do not use __builtin_memcpy and __builtin_memset
  x86/purgatory: use CFLAGS_REMOVE rather than reset KBUILD_CFLAGS

 arch/x86/boot/string.c         |  7 +++++++
 arch/x86/purgatory/Makefile    | 29 ++++++++++++++++++++++++-----
 arch/x86/purgatory/purgatory.c |  6 ++++++
 arch/x86/purgatory/string.c    | 23 -----------------------
 4 files changed, 37 insertions(+), 28 deletions(-)
 delete mode 100644 arch/x86/purgatory/string.c

-- 
2.22.0.709.g102302147b-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190725200625.174838-3-ndesaulniers%40google.com.
