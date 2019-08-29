Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB3OBT3VQKGQE2FRBOKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id A4853A1530
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 11:54:53 +0200 (CEST)
Received: by mail-wr1-x43a.google.com with SMTP id k15sf1827534wrw.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 02:54:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567072493; cv=pass;
        d=google.com; s=arc-20160816;
        b=XDTBXnyB6seS5QOzF41xkoFun0AQOPIGrlbASLP2u6A8cDh+ChsztN4FaiCNup2fQP
         qSiU1nRGF0vRjaKK7zgjhFfhP+qpVpSk7EPRLaLFV99uLGQNPKB6VhyOh4qxzVL7ojhq
         EArMu23jmgGYMqFK6Yt4HPG94v0Bm970YfX3rOxEqDWO7jheuF6UdY/GjeCuqy4wlawA
         cqmnc5JFPudfOn9brb2++ci3XENCyI68ffH6UEbJ9SPySQPQMqDTylrFl//CqaDUgVE/
         lxte/osQhfJwzxhHYFWPIdR8TBHxctZvYK0Zgb8mhxdY/9tyoc9B5v1Ppm1Hcvnt2V+X
         N+Wg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=bNKYtEIph3YbQb/AabkQjRfe0IbQeJgO8eC4dLKzKOE=;
        b=BL0DMtfzG8C3V9V3nIo8OWNO5d+RiN04PYov6qAHsuCoYIM9XqUEQFIuMYs4WTpYL5
         fvZGspLxCbC8kGGtSQ8hVENzxq1HiTri0sLCVnkAVr0AA6RhSxRWzXdnKaR932AmfHzi
         3eP68VjdC7qklKdo5ij+bzKQv2e47Tnn63DY3k27Jv5HCrc5CkyEENNz6v7m6MxxT6jo
         QTdFBdnmfGanFGvJF3gIga1T2pEj/S/pwy5zg/wFSCSD06Pol0ZcvaTaelZv+XMxxd43
         JDy19MyF0rcjIroMVhVgp7ZFP5+842OripwAhlieKzIQdqnE9fu/GGUaGGjw0QNtbTpK
         MXhg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ARIXIGoF;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bNKYtEIph3YbQb/AabkQjRfe0IbQeJgO8eC4dLKzKOE=;
        b=HgCdLlVdVsbY+xuy4VNx9vsWdOB4SKWk2DBz7r3BxvhLqB6syoR9V/jPP+Mr1KBmgr
         zSytqecWqb2ICJrVdCKZ+xDq2p7AVMUuYCEtbHQ5IJPDDkjkt+SuRQDXfCH4o3Z8FO6h
         Ctdjw3K9WGWFq5E03llbyEGP2aaZHRMN5ni5ZjYgRNJ9tNDjzE+jWf4BBorjpGPNSGL1
         vWadq6xVLzcjo8H2Hc0KycqEsd6DxUkr1bxd7ig1g6L6Fyjv11lAx5C9okndRmHNnk43
         eJXn3v9fmcRJh+4PnrWMWgJVt1qAlb06El9mSFQkm8ivRBuqMKxtXNWbujad6rllrXCE
         9sZg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bNKYtEIph3YbQb/AabkQjRfe0IbQeJgO8eC4dLKzKOE=;
        b=CVJPLTfI1JNayFc+09bC0sszTuIHr+JTmRmEDgMIGzx7m4ZH9wo84ADrKUcbNCoaxC
         XGM/m5flYaC1GyFD+nwydjzyijIHoddO2fvPToe4wFlseCL7D17zqRR6ZzV+bzmAqxAq
         Ut6ZRKVjSHN/Pr5pQNgJMy4GkchDhPregpEskCRsg5l/eOUOPDp+axdBK6fj3zqSScaK
         WRkMye9AOSKQEKOZyhvQXSfkdWLgbiC7WHnMADCLc72wkYK7myqbsqpfh5HZU+i+8z0G
         ct7DVeZCfKgITrozqMn5CGzYM6Zfw2+YJyAGSiEsqUTlalo11tUqPYPeJvxt2gunZ438
         bPhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bNKYtEIph3YbQb/AabkQjRfe0IbQeJgO8eC4dLKzKOE=;
        b=sWawgamhQVX7xYeFdhIMvy5j0q1z5Md8SvZWDTHtJMVUfKrzSsJrV3lGYOX8TMOAo+
         m1kzwwbjenVOfvnF2l5gGOvsNvF1KpI8jGZf3dNvwZIFMe+uid+1z8XZEQELUmT3dcv1
         uLZXsWwBqmy6+fIcn/Ol1s0kau3J5o7qJTJcvMJSc9jtrz05x6VZ7NJLHr2mff133Cqr
         E/dnDVV3GnaV0eBZQ1zuDG4yjo2zgxSf3p0YHrH6xuJ2o2po/pdiNrY77UWCHh3Y3ik1
         mJTlymKobf9m7yU5i1bSPpsqJN57061C94jgQ1dgTg5R3b7JrFUayMwKU39Bo4V5xMsF
         GSpw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVtYrTSkOuvS7vCoOMuI95q3I1LuiBebRhHMaxmAlAysaKw/2jT
	uym7eJeMVwB8ubYNh669KUQ=
X-Google-Smtp-Source: APXvYqxQ6dCnmYC1Elv/QThVEcasJkr0aY7rEj1bupPaWISLNw7t2GNJ3exHaRALCOibtmQ429dP9w==
X-Received: by 2002:adf:e710:: with SMTP id c16mr10642412wrm.292.1567072493339;
        Thu, 29 Aug 2019 02:54:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c929:: with SMTP id h9ls803878wml.3.canary-gmail; Thu,
 29 Aug 2019 02:54:52 -0700 (PDT)
X-Received: by 2002:a7b:cd0f:: with SMTP id f15mr10642222wmj.86.1567072492758;
        Thu, 29 Aug 2019 02:54:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567072492; cv=none;
        d=google.com; s=arc-20160816;
        b=rAmuX+WKH/jjRLx+0gKcfk6q2YWbfjdzpXFrtX/o5UbwuCEN/B9miauQl7m24ph/ng
         YFTRo7iZJM7ZPgKqbSkmmUUbtsx6LNyXSjexmW6gTaW9yH7JVhNGzHAEbyjKaL+N102M
         BR8DL9rL81kwGp0+FDCR/THzvSN7NiibJta8uArtHgl1GR6oy4MEsv7afKNGhNVFiE3N
         SpXhbGmZgQk/cVYZR2EF5u6rOmMj3tIoMI7VYC2aZmjmdcVglVtsrUCUU3+aqkINDCNE
         CqfCJSDAsIWySbnb3+0qm9TG+EeuWiouRdPk7xKKOUP+jDAXRBNLIF66hcJ17mby8PWn
         6k0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=8Hq67Aeafty4Z84Qns88hGedO6pSKZUiFFj2yN+1MEo=;
        b=pWrzW5gwgL6tfm2Ddi3fa0xVWDGb+PECN0C9bkR5HkxkYp54I5wKZK36QJ5oshN/fV
         9pbErTqM0DWtlBiWFsGGW5FSLp1sYbPNqdxBBRltYYO7TW+LYuPRH5hJDnGcXP2rU3KF
         ZERMCWcbgkthaNEhTArhm3UD0/HMjeVLEm43pMk6qPIml0bbfEelN9W+vKqmlvooH4c/
         U8oS2+sQ8b1zGjVhaAmkmlS/iOKlHsRWwlEDNZmUcIVJbCKBD3GoYwVSnqvanCdhJjDC
         X6QFBqn7yIlImvhs8GvH2C7TcS5rjULlkgvZeJaoxWtpZsk6P5LTmFfieuu2LvzoYhS3
         SFXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ARIXIGoF;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id k13si117838wrv.0.2019.08.29.02.54.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Aug 2019 02:54:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id l2so3156069wmg.0
        for <clang-built-linux@googlegroups.com>; Thu, 29 Aug 2019 02:54:52 -0700 (PDT)
X-Received: by 2002:a05:600c:225a:: with SMTP id a26mr10955239wmm.81.1567072491748;
 Thu, 29 Aug 2019 02:54:51 -0700 (PDT)
MIME-Version: 1.0
References: <20190828055425.24765-1-yamada.masahiro@socionext.com>
 <CAKwvOdmFjOMPW3_V+2ZnYFUyjWWuW2919cCk=ePn30f2szsi2g@mail.gmail.com> <CA+icZUWv0vAOSq_4BfbqrTdUSnN_D4ETVfpSHiATokCsY2R9pg@mail.gmail.com>
In-Reply-To: <CA+icZUWv0vAOSq_4BfbqrTdUSnN_D4ETVfpSHiATokCsY2R9pg@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 29 Aug 2019 11:54:40 +0200
Message-ID: <CA+icZUXQYcX4+00JbOkZHaBDB=JEsabpU7HpZ_bTaV_gahr0ww@mail.gmail.com>
Subject: Re: [PATCH 1/2] kbuild: refactor scripts/Makefile.extrawarn
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	Michal Marek <michal.lkml@markovi.net>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ARIXIGoF;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::342
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

> So, if it is desired to pass the CLANG extrawarn compiler-options to
> all W=... then I ask myself why the CLANG block is in the W=1 block
> only?
> So if CLANG extrawarn options are independent of any W=... make-option
> then I prefer to put it in a seperate block with an appropriate
> comment.
>

Maybe something like that (on top of the two patches I had sent).

From: Sedat Dilek <sedat.dilek@credativ.de>
Date: Thu, 29 Aug 2019 11:35:21 +0200
Subject: [PATCH 3/3] kbuild: Move extra warnings for Clang

---
 Documentation/kbuild/kbuild.rst |  5 +++--
 scripts/Makefile.extrawarn      | 21 ++++++++++-----------
 2 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/Documentation/kbuild/kbuild.rst b/Documentation/kbuild/kbuild.rst
index 3e65d32af875..fa9772ae2367 100644
--- a/Documentation/kbuild/kbuild.rst
+++ b/Documentation/kbuild/kbuild.rst
@@ -245,10 +245,11 @@ KBUILD_EXTRA_CC_CHECKS
 ------------------------------
 If enabled over the make command line with "W=...", it turns on additional
 compiler warning options like -Wmissing-declarations for more extensive
-build-time checking. For more details see <scripts/Makefile.extrawarn>.
+build-time checking.
+Some extra warning options are set for all W=... settings when using Clang.
+For more details see <scripts/Makefile.extrawarn>.

 W=1 - warnings that may be relevant and does not occur too often
-W=1 - also stops suppressing some warnings
 W=2 - warnings that occur quite often but may still be relevant
 W=3 - the more obscure warnings, can most likely be ignored

diff --git a/scripts/Makefile.extrawarn b/scripts/Makefile.extrawarn
index 72677ee9f202..86c0f8ae7e35 100644
--- a/scripts/Makefile.extrawarn
+++ b/scripts/Makefile.extrawarn
@@ -5,6 +5,16 @@

 KBUILD_CFLAGS += $(call cc-disable-warning, packed-not-aligned)

+#
+# W=... - stops suppressing some warnings when using Clang
+#
+ifdef CONFIG_CC_IS_CLANG
+KBUILD_CFLAGS += -Wno-initializer-overrides
+KBUILD_CFLAGS += -Wno-format
+KBUILD_CFLAGS += -Wno-sign-compare
+KBUILD_CFLAGS += -Wno-format-zero-length
+endif
+
 ifeq ("$(origin W)", "command line")
   export KBUILD_EXTRA_CC_CHECKS := $(W)
 endif
@@ -30,17 +40,6 @@ KBUILD_CFLAGS += -Wno-sign-compare

 KBUILD_CPPFLAGS += -DKBUILD_EXTRA_WARN1

-else
-
-# W=1 - also stops suppressing some warnings
-
-ifdef CONFIG_CC_IS_CLANG
-KBUILD_CFLAGS += -Wno-initializer-overrides
-KBUILD_CFLAGS += -Wno-format
-KBUILD_CFLAGS += -Wno-sign-compare
-KBUILD_CFLAGS += -Wno-format-zero-length
-endif
-
 endif

 #
-- 
2.20.1

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUXQYcX4%2B00JbOkZHaBDB%3DJEsabpU7HpZ_bTaV_gahr0ww%40mail.gmail.com.
