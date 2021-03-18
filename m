Return-Path: <clang-built-linux+bncBDGMDAP5Z4HRBQ6QZ6BAMGQEDMZPAAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F7ED34113C
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 00:54:44 +0100 (CET)
Received: by mail-qt1-x83f.google.com with SMTP id v18sf6921941qtx.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Mar 2021 16:54:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616111683; cv=pass;
        d=google.com; s=arc-20160816;
        b=ThqI23AMtgwH5MnyqpQ4qJXlG5LT1xdNbcj0Abkz4DnLfunxN5aETjE0/nPvWVmjve
         pVIuBhVPud4jyHnnOfjsoV/Cj+HJWO9tSGzPmqnQPJPgjSliKGYhKGeDJUOKycsNIiJI
         Zgh58/0eB+q+63qtZ2BdbJu/hp2wlEgIVwTQR93nksjRsnpQV0b5Gro1ruU4fpL6kaEF
         HYkDBI5XQiDRw4fQSS+zsWXKil9oOc//RY8M5rk5aCfERkHQXEnj/RLcutabarTC2II1
         NDxYXKAvWFQYchvFegEGF/5aiSuyYCqAP2umReaCq1UafWf8bfkZWKKKxqtj2FyCIzGL
         pJnw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=H2mjeG1ErxPnPq4ecbFSGfm4m5MCbw1WPtHOBPcFHSw=;
        b=TXqhKpzG0xheWtdoqP0X22GVL4Uyu2wh+xw0O113ezUEKeK87WWYdGKgypriRWxPRE
         JXCRO16fpW4auyKW+yLmbF3v9qMFaw8Qg3M7V+mW2k03mXXw2QX7bFT11hbyist+6BBg
         1vl65pkCylB7M+iDQmTaYpGB3AYSufHS8UlBxh8jkKHIghvbvtRUN5nRPRMR+QYqQWXw
         2aTn401a3vfFxYQmJLzblfem5d/qwcwfKJEs9bwH9eJqKNXgJq6+KU3WD6uaRgYrMlD2
         /g+LFi1mlGmeRqV3IMaT6ihf1+GdwCZ6vOTTuPvwEOM9Lst28xvY3ccsFhGSgzuIz0eE
         8LzQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=CdkMN8s1;
       spf=pass (google.com: domain of drinkcat@chromium.org designates 2607:f8b0:4864:20::431 as permitted sender) smtp.mailfrom=drinkcat@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=H2mjeG1ErxPnPq4ecbFSGfm4m5MCbw1WPtHOBPcFHSw=;
        b=sZpDQ9GzFagghwRWsTzXgHf0c/x3jzZXYV8RRqMrGuGECcRSVX/JUBLB/fFJ28H2ud
         kVdccwOQ+WmZQzyetk0penyt/PLfAFwYbYcIHsxzfWhB+/3g9B32wKxBugDDJ7P/NEDU
         3dbNWPZrSFSXHFb27o4iITrHkCfXKjvppq00GyV2rmSbd1Ap6PwyXaZ2rOzzS4eMNL8f
         UaHcjrRzDmXIVn6PVZQrq+2vjYy7x6l7zJ4AU/r7y5yPdqYb+QMmfhkgUKXCzVNowzJb
         6lIndkcAelYKvJ2zgdwSgdA/GzAXmfpHptkaXa8oK0kfvAu6flSWpkU2qt63cuwOyBhA
         jhpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=H2mjeG1ErxPnPq4ecbFSGfm4m5MCbw1WPtHOBPcFHSw=;
        b=dhXZBMYZf/iczIbZJQwJNh8krZADS0856zfCs1sQuWjRO6fnXslKUc0iu+2V6vMN/A
         YgH5EPQ4MM00Rvi3MOh8MRCAX+fcjWS+Fm/Z1c6ENcojYpbwkKskG6BaKkTUHBHw55HL
         nSNTaowF8pOeozaLdkfreEMydSSidJ+eIbnCpAwdnQzLnlMhbOvwA6YMT+WsnlQif+FN
         XcOSIODhnmZlTpaScMonl8koBkbGQydEn4c7Zj0H8KNtVwJsdJ/eri8MR1Ff9D/1z8kR
         CbvXE+kJDtWBNgPgpeGZenTRYoz1Pm85ogTGEGOtve9BMA+y/nveRLvoICPGn5t/5C/2
         ikxg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530IRVfThrYrI8ILtM7zjIU7P7hS9j3Z36glXFQJBIawoiPiiydn
	KvGYwX832CvOVgrbw2HO9g0=
X-Google-Smtp-Source: ABdhPJxrhkcmzc0MrqGSdPVGhXBcu6syG5hjZ1amC9FetR0QgRhAm4Bpscp8C1pRaRw+WJsueIXS3g==
X-Received: by 2002:ac8:698c:: with SMTP id o12mr6193944qtq.340.1616111683456;
        Thu, 18 Mar 2021 16:54:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:f202:: with SMTP id h2ls1006449qvk.4.gmail; Thu, 18 Mar
 2021 16:54:43 -0700 (PDT)
X-Received: by 2002:a0c:908d:: with SMTP id p13mr7103557qvp.11.1616111683091;
        Thu, 18 Mar 2021 16:54:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616111683; cv=none;
        d=google.com; s=arc-20160816;
        b=yZhnbr8fls7rpI57r2kfeK+bQHEWnUvRlEs994LBGtdeFcJMbk0SY0li9vBoiD2M2r
         cHsPGSu9Og8Tm3sOBGE4fH9ZDd5XdpcAZL7jW8HrXNDzoZaqCCIVRCZG8ZHKjGPDQBZL
         s8+CIEjfUWyqiK4RquEyyR7CfddJtOgNhZaW/rjum1MSDcAXmbRKTOh6+SpvP3alHWEz
         iQFTcTE6SLdwIN16YxpComAcmLI95s5vinVbYh0ST0JIdzJ1fPlK0MTr7T1fdJN7Ax9g
         HR/gp4PSvA+C+GIJH3tFuweodnHqBY5RbDNbs6CW07ryv+7N7DOuq+V5jvWL57m+CjNN
         QPBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=8WJ6qFjujuk84HtZNxKJ3XhHk2SJ/KWCJ14sG1Kz83s=;
        b=ZDRl8r/pXOybz5xWyTr8VoEVxk08Eb8iOcqeiE3lFoXwUkopFUUbvKNHNr294NIHj1
         p+iPhEEcw80X3tYWOS5srh9TLA3RauGuaC6X9nBaxFLHLnVBV7XI12FVdsQbX1lf1H/S
         5itB9UPf2FlXZujGFlm//I+j8khKTEvQtkuivUfxqwJTwHUMsYII8e3KOCyy/j5OWULg
         cm6iRYnBATWv5MYJA16wkFnp5tNDBlNQ/0fdWIu1VyCvecSGZ/SS4Q0qRPwFmlekVicQ
         AljmP0Qk+YA0Ic0bCWN1ew3wB5o93D7bA85/geXOfQH1frtRpaZ7j4LShuYLMn2EOmLm
         QRCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=CdkMN8s1;
       spf=pass (google.com: domain of drinkcat@chromium.org designates 2607:f8b0:4864:20::431 as permitted sender) smtp.mailfrom=drinkcat@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com. [2607:f8b0:4864:20::431])
        by gmr-mx.google.com with ESMTPS id r24si212267qtp.1.2021.03.18.16.54.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Mar 2021 16:54:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of drinkcat@chromium.org designates 2607:f8b0:4864:20::431 as permitted sender) client-ip=2607:f8b0:4864:20::431;
Received: by mail-pf1-x431.google.com with SMTP id y5so4607746pfn.1
        for <clang-built-linux@googlegroups.com>; Thu, 18 Mar 2021 16:54:43 -0700 (PDT)
X-Received: by 2002:a62:e119:0:b029:1f8:9345:a099 with SMTP id q25-20020a62e1190000b02901f89345a099mr6618116pfh.21.1616111682271;
        Thu, 18 Mar 2021 16:54:42 -0700 (PDT)
Received: from drinkcat2.tpe.corp.google.com ([2401:fa00:1:b:dc70:2def:a801:e21b])
        by smtp.gmail.com with ESMTPSA id t7sm3295816pfg.69.2021.03.18.16.54.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Mar 2021 16:54:41 -0700 (PDT)
From: Nicolas Boichat <drinkcat@chromium.org>
To: stable@vger.kernel.org
Cc: Nicolas Boichat <drinkcat@chromium.org>,
	Alexandre Chartre <alexandre.chartre@oracle.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Christopher Li <sparse@chrisli.org>,
	Daniel Axtens <dja@axtens.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Kees Cook <keescook@chromium.org>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Michal Marek <michal.lkml@markovi.net>,
	"Naveen N. Rao" <naveen.n.rao@linux.vnet.ibm.com>,
	Nicholas Piggin <npiggin@gmail.com>,
	Paul Mackerras <paulus@samba.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Sasha Levin <sashal@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	clang-built-linux@googlegroups.com,
	linux-arch@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-sparse@vger.kernel.org,
	linuxppc-dev@lists.ozlabs.org
Subject: [for-stable-4.19 PATCH 0/2] Backport patches to fix KASAN+LKDTM with recent clang on ARM64
Date: Fri, 19 Mar 2021 07:54:14 +0800
Message-Id: <20210318235416.794798-1-drinkcat@chromium.org>
X-Mailer: git-send-email 2.31.0.rc2.261.g7f71774620-goog
MIME-Version: 1.0
X-Original-Sender: drinkcat@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=CdkMN8s1;       spf=pass
 (google.com: domain of drinkcat@chromium.org designates 2607:f8b0:4864:20::431
 as permitted sender) smtp.mailfrom=drinkcat@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Content-Type: text/plain; charset="UTF-8"
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


Backport 2 patches that are required to make KASAN+LKDTM work
with recent clang (patch 2/2 has a complete description).
Tested on our chromeos-4.19 branch.

Patch 1/2 is context conflict only, and 2/2 is a clean backport.

These patches have been merged to 5.4 stable already. We might
need to backport to older stable branches, but this is what I
could test for now.


Mark Rutland (1):
  lkdtm: don't move ctors to .rodata

Thomas Gleixner (1):
  vmlinux.lds.h: Create section for protection against instrumentation

 arch/powerpc/kernel/vmlinux.lds.S |  1 +
 drivers/misc/lkdtm/Makefile       |  2 +-
 drivers/misc/lkdtm/rodata.c       |  2 +-
 include/asm-generic/sections.h    |  3 ++
 include/asm-generic/vmlinux.lds.h | 10 ++++++
 include/linux/compiler.h          | 54 +++++++++++++++++++++++++++++++
 include/linux/compiler_types.h    |  4 +++
 scripts/mod/modpost.c             |  2 +-
 8 files changed, 75 insertions(+), 3 deletions(-)

-- 
2.31.0.rc2.261.g7f71774620-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210318235416.794798-1-drinkcat%40chromium.org.
