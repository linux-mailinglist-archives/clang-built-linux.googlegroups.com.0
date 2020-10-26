Return-Path: <clang-built-linux+bncBAABBSUP3X6AKGQE3KGWCFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id F074B299947
	for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 23:03:55 +0100 (CET)
Received: by mail-pf1-x440.google.com with SMTP id c67sf6359658pfb.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 15:03:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603749834; cv=pass;
        d=google.com; s=arc-20160816;
        b=03y43ujlJcKD+8SIigp5H1KrgP+uIlmUY2HAejkMKp6S8e2nl7vEL4qC9kcHavDd2C
         r0AFKq1vhnpMCT2j7EFM9+GL5RdFlh2qkgQ3slgmhLsLEJ/GqZ4+GCEFtmXHHz2Uh3W8
         iFVYa2g0pFBWosCnRaX0LZnEllVaNr8xYyAFYckJ7PVJMHftjtX46axqfMp9SVjcr/M8
         TVOC/kgdepNnSuoZN1tzt6qh9RP9X2seJVqX/q00/mrJj3r4g9ewdebmay/1vCOKzInK
         z0FQ/905K57vfaPZgN7mJeDG8/NVlTwwlfbcb54xKmuY6Ji70v864QMaMwrHZKYXfawQ
         MhEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=I4uDxXZt4Y3Z6vIvmfGb6YHpQ3gqlU+c9FlQRRBc34s=;
        b=IrdF9c+MzGKYLFkN+WZS/FcHhb1cVEdKMHVvzj91mtOU9OAevstROKsTvnCpcCQLgk
         GWxye5vc/dY+A/UpSPr+ZCnLGtFyCJg7TqlPJPgI/vNasnPYrvdrrZHVJ9FR/piOeGcP
         Si1lserjrqLBGKHuBtmdJ6dkgllCP4RFmefpEm3EkSygyS1DEkKnGjeWVjQA9MLMZWdn
         xz6ZMrPLgDwQS9UBLxhow7dH8BxHmL6arae5rlIX+EJnEJDKgNQpwXdCgxvbLcJ6oJFu
         YIpo/6jn64p1dsD/Dg3IDTi7mpdiu6ltYXIaFDB3pA30grcxnA9TK1HP0gs6J56yLM2R
         hTug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=SOi3aCf7;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=I4uDxXZt4Y3Z6vIvmfGb6YHpQ3gqlU+c9FlQRRBc34s=;
        b=MHQ1QPBmozqmYvIYb4zCPwXbgYYt2P35Y/CLLlWPIcqrubRuaaXmiJdXmcFTCv1sKQ
         55ENfAbsAalgDv7CtqxSPSPRAjnkXSUNYQldMYC0jmkthSGzKDflMhFokc6X9b/Uf9kr
         U/2lUF+TSAFqhqdRVIZLz/eHLXx1XH0lv2VqJvgCqKkWx33RkO5a7iyNBTLMzA3F3D3L
         lfLaD6TBpmHv9iDxJEhRWez5+Z8KL0eAk/tnNTkeeSjm6bF+IiepGhPcqT33O91mVCe4
         U9SFBin+8jn9fiLwgGtajAdGK5SdPBA7uOvIjiNdVsYmFrRnL+XmfAqeHM4/GaeyOvsn
         2EGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=I4uDxXZt4Y3Z6vIvmfGb6YHpQ3gqlU+c9FlQRRBc34s=;
        b=ap41pM6dQcS1xlqOnwgJgLd5HrIvuhqYzmB5li1LRpizr9ZdI+QVsjuFclqACw6nam
         X1ZUi1rNRE42kJ0npHtpDAt1qZnVFnyqEEH7ZoXZyE3l9uHVSmWxl4hHyTS/PyjsRdex
         IeSZHitUzkvZrwG9RPcqnKKXeDdPSyG6zVOLSnih3ciOJ05/oVVbdpAm48XIDeklIQ7G
         jgHnYQciHHG2MF3t05L+cVyAwpInZf9vHOzs3VmwU3d37LMdVtf96R7LF+I9MLbjfNRd
         CT1NmsOWYhDbj6Dj09iaNMnOLy3sZhtmjoe0mflejjOqzbbrugA5lepwH3urF9RH3ajw
         y/nA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530gUBJuzuRcWws7FyTIEL4Tw51FioyKBVP+aGBSt4gFCiwpE2Ei
	/0QEx6YUfqL0eB58epjB66c=
X-Google-Smtp-Source: ABdhPJwsEJaQMrJ21/R6pqlDFe/jWP9DccT54s+I7scnGQnsk7lF340FMtnDZzVUqoWMlMze6vfRPw==
X-Received: by 2002:a17:90a:9a1:: with SMTP id 30mr23064754pjo.85.1603749834598;
        Mon, 26 Oct 2020 15:03:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:3c5:: with SMTP id 188ls3461508pgd.4.gmail; Mon, 26 Oct
 2020 15:03:54 -0700 (PDT)
X-Received: by 2002:a63:4661:: with SMTP id v33mr18908973pgk.163.1603749834026;
        Mon, 26 Oct 2020 15:03:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603749834; cv=none;
        d=google.com; s=arc-20160816;
        b=tkdZgSj17hgGlW+CxAVoYKjeH8a5MEdwidHnPd0rSMNz+aVokbbTsVV6BaHVmLw9dF
         eookIBMmnq4qleIDY6c84YXFAYLyLXyeDdSoA7jdsb3WOdjDJ2jiR5UvfY5UjlYR/R3n
         rLj+4wg8GbPz67/BXQ3IP9QqHvnMch9vM0R4TtfJ/ANw3EEfW6tLJDarWyDWWDSRJDeg
         ksLeqLt4Fd3gxL+ohlbAAyNOlgcAE3hZ3xpoA+xFTi8W/kR2tgJ4iwDo8v6VCPWZqv1w
         GYEY8Bcv5TCd3wlx9f7VnsgTqDCblNJOcfV2j7S8qzHbZ99ri4d88X+KHE1yKtVhJY42
         ejRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Tb0SetUlaxiLqDA79ayl5VHYjffnUvPariUQzmn25y4=;
        b=SaxuvSRJLHhKTWJ7ID9D2J7OFFUJgpof9aNS7QUCtgZQ6sDfUSK7iwh7rCNxNU5hH7
         HKWY47AtQnVSqUnBXmfqyWNG7yFsAgfyshoZU6c5sUA4/3fXc++vk8XhhGcIuomGEVPT
         ewK3NRpBKxICzwSVCuG253R9JAhnlWIXCtVoSDkh7wiCqJphGSAvIYB+6pTX4+YWDyhI
         TnLlpj0vlbtpBFWO3eEYC0XY+zsLss4Uh+WPCnty7iUcaILEAouYoH572oyN+vxPV0uY
         dPtjjOTJP1cuNpi/edALbmbJrCfbQOk5DYcrZxmjsbj5cdszGRJgiztPeLh3fcadhCu2
         V9mA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=SOi3aCf7;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i4si794939pjj.2.2020.10.26.15.03.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2020 15:03:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (unknown [192.30.34.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9D5BF20706;
	Mon, 26 Oct 2020 22:03:50 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH 2/2] Makefile.extrawarn: limit -Wnested-externs to clang
Date: Mon, 26 Oct 2020 23:03:14 +0100
Message-Id: <20201026220331.3896226-2-arnd@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201026220331.3896226-1-arnd@kernel.org>
References: <20201026220331.3896226-1-arnd@kernel.org>
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=SOi3aCf7;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

From: Arnd Bergmann <arnd@arndb.de>

The -Wnested-externs warning has become useless with gcc, since
this warns every time that BUILD_BUG_ON() or similar macros
are used.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 scripts/Makefile.extrawarn | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/scripts/Makefile.extrawarn b/scripts/Makefile.extrawarn
index 6baee1200615..9406f752e355 100644
--- a/scripts/Makefile.extrawarn
+++ b/scripts/Makefile.extrawarn
@@ -61,7 +61,10 @@ endif
 ifneq ($(findstring 2, $(KBUILD_EXTRA_WARN)),)
 
 KBUILD_CFLAGS += -Wdisabled-optimization
+ifdef CONFIG_CC_IS_CLANG
 KBUILD_CFLAGS += -Wnested-externs
+endif
+
 KBUILD_CFLAGS += -Wshadow
 KBUILD_CFLAGS += $(call cc-option, -Wlogical-op)
 KBUILD_CFLAGS += -Wmissing-field-initializers
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201026220331.3896226-2-arnd%40kernel.org.
