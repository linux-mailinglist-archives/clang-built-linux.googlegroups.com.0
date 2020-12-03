Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBAHKUD7AKGQESFEALUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id D4B7D2CCB11
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Dec 2020 01:44:49 +0100 (CET)
Received: by mail-pf1-x440.google.com with SMTP id l11sf223045pfc.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Dec 2020 16:44:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606956288; cv=pass;
        d=google.com; s=arc-20160816;
        b=GNcWVfWdBsiMDtTqGzREwAFRkGlA/DMt3WnRDpsszLuzvM1suWKOiHOdFWPGBIr6Nx
         nOsfdonx7lqhNkxX0rE1NwlydHD7KgpSzT1qUO7Zs0hYPsHFjYhkmn7fJWeSjWjS/bvV
         /OyeQTWI411JPXyG+QdYrC4nbL7KxO31vQUZrIVaG4xEdgjmu0RcxugFgdhPXWEXv7i6
         g4Z8wKLR7pYdhciRxC5YCCYA5uW99zG2wxbo6pBS3Qg1xrmlMaCTNc5TmjJLvTmrdi1Z
         Dro8krc1b2DjasR5v0KOoQa/OiWaLZcVQs0fYeYHRsI861msdLNSYf2gduJ4GanGtk5i
         dyTA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=YKUZqoQg2GTWnACiq8M7jD7Sub9JxcqLhggxK63530Y=;
        b=NMnIYm3JoNhp9O4fKpLQogWbsZdnroMcK5t0XYC2HxWfsvFOIgDmwgCMdBHxf+tu3k
         DhsaCAmuPy8GI9A8uBfRZZBotSYpHof4M57wE/zvH48duOFkAQTZNMshrRad/MrVHfOy
         LZzoh7g0wnh8G1zkyiylkWhZDX2ETyC4e2vmKHdEtTf5rmXLNrxugzcB3lXj1f6L3wmg
         OsAREdJo+MAHjnCzhBeUZ186hpD3wJ3ZQMHd95ttx0nhzu1MWDimMMReCjCHz8pcaNR/
         u3ov0mMutAwcI5UDIbzBJHDF30jGlNEvYZtUyBE6BpuzZrAxuD/FFkw0tzlXXDXx7xDA
         i0nQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=gnDHZ32h;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YKUZqoQg2GTWnACiq8M7jD7Sub9JxcqLhggxK63530Y=;
        b=IN6MHa/XFqKH3/M6H+pSkKdNmIv6AFgNHbRvg5Q2gEziqbFE0sP8wyBSZr03/t02rI
         Wh1vGmWhSMWKdMz0OL612rqTtUCRgqCFBxsKYGPRzPLmXJ4Tsq3jdtJxR6wE+PEahtIL
         vG5s+eCYL5SQl0wwqw46VunLvChU6Kayu5M/8/ZiYacOwonVT7fxugeK8NMl88oy9h23
         LJ+1aVaanMymc46LxCy1gkiL0g7AF7fb84+seJIKHTZKxhypqm5rgFnki0sw0Y04zTjR
         IXoVVeInAxLJeMljJzrOEyM/J0AV+PDeCEZm9zWwYDutXsbfkbyGh/8uCJOfhfDIpdAb
         VdqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YKUZqoQg2GTWnACiq8M7jD7Sub9JxcqLhggxK63530Y=;
        b=YXB84BuVnOAjqzNVN0dxjHyfESiu3br1bCDYSAXmbXSRnTdknTBzW4kghr11WWa7W4
         BKEF7+shJ3sOOO1xJd1U2Px8Wrphfo8dJpzDdayVeCnNLCPb3tnv8kaGSpbgiYjuJV3S
         +xTiGmgz5XWoxyFl5Y+ywtGNiPQo9zNUAFj3Sh3wZswEYdOtwXBg65s+/5Yw3a9kQ7Vy
         wkmcdKN4R/u+MZPpseD3meNKdGcUVXiicBlOjOXse9K5zV9hHnQ0DhM5u1BVEgpWlg9C
         lf6rcbf2tUJxDe2WmVY9xas0fkk672bfY2KyZ1kzuQ+SEqSJBAsmjzrgWFkKbh+qOHTe
         0DOQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Ay5tdiwwzRFpMbehpQyEFmSBFcILs7walaheNjypDdpTWEiup
	da5/0bHnqITW9b9xIkV4R+Y=
X-Google-Smtp-Source: ABdhPJz61xKS7erGsXoyssPAFLsxtDLvQi3gqdpiZs8pABkcO0ma3OdcGldFqbCIEeiz1lnYXRyzTw==
X-Received: by 2002:a63:c15:: with SMTP id b21mr757046pgl.341.1606956288528;
        Wed, 02 Dec 2020 16:44:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:66c6:: with SMTP id a189ls1333429pgc.6.gmail; Wed, 02
 Dec 2020 16:44:48 -0800 (PST)
X-Received: by 2002:a63:3841:: with SMTP id h1mr787686pgn.380.1606956287935;
        Wed, 02 Dec 2020 16:44:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606956287; cv=none;
        d=google.com; s=arc-20160816;
        b=yb1fmOiF3Xscc606EYdk9cd3xvsW7OQ8cvxYShRoYcW/O2iJ84uHVnk8gOwgoupOy7
         +aUYde1gV6K5Z50TuwZv/hURnRRuNty4+ttDQGPvuX6ERYYVzXNYtcZs8oPF0W9ReYkk
         7885LBf2wolW/09c4Cf3ZFhM7yD3p1Ag1AywgVi/daYtycX2BI7IPNPngrwZpmkLO5kE
         +/Iq3hgSHB6JOaw3+qiAnqdjKt7vYPD/lhKXssfIhaTXbAlA/+dMPQXO/RVBHepX82bt
         8MFDGHwFkuV24oYyQ+PmGfJyNPYmSrUU+KoXkrEteR2TNT97StcimWC7c7tBnj9Cg75y
         Hf5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=Awsiky2ci1zA1MBQSVEQaSufyEGxvmxb51uiJPSU/eI=;
        b=UKrfpLNQfs74T1EdllziWcamgT8ryeMbxYxMLrLhM2XTItez5aZXXgHBw+3tB5m/zW
         MPN1ZJuegaDVFfJ5QaASoVooIfFHeAks8M0uW3QcnbOegukGcWPYCdNv28nIhOsRaezq
         t0Jyizfas0pB2AbFwd9xVbn6dO+PkGfo4ctz7aqRUJOPxJ1cNkPp6TD/k2IatJEPr3CD
         LcGFmG6Lv20UR7yvEnJNldHlKbe3gIEFYinmurrxQQ3uylyocdFijRAdQr/lI7iLooSe
         bYRB73gmlLHrWYrbPNRnKkFAqFy1A4SirtmuJ3Zq/ftmmNOAwYd/zc3ymK2nLzWi2BVv
         /ZEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=gnDHZ32h;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id nu3si12937pjb.0.2020.12.02.16.44.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Dec 2020 16:44:47 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id t3so313182pgi.11
        for <clang-built-linux@googlegroups.com>; Wed, 02 Dec 2020 16:44:47 -0800 (PST)
X-Received: by 2002:a62:2a8c:0:b029:197:a56b:8e79 with SMTP id q134-20020a622a8c0000b0290197a56b8e79mr557423pfq.51.1606956287644;
        Wed, 02 Dec 2020 16:44:47 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id l7sm184758pgi.44.2020.12.02.16.44.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Dec 2020 16:44:46 -0800 (PST)
From: Kees Cook <keescook@chromium.org>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Kees Cook <keescook@chromium.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Ard Biesheuvel <ardb@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Marco Elver <elver@google.com>,
	Randy Dunlap <rdunlap@infradead.org>,
	Dmitry Vyukov <dvyukov@google.com>,
	George Popescu <georgepope@android.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Peter Oberparleiter <oberpar@linux.ibm.com>,
	Andrey Ryabinin <aryabinin@virtuozzo.com>,
	clang-built-linux@googlegroups.com,
	linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/7] Clean up UBSAN Makefile
Date: Wed,  2 Dec 2020 16:44:30 -0800
Message-Id: <20201203004437.389959-1-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=gnDHZ32h;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
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

Hi,

This series attempts to address the issues seen with UBSAN's object-size
sanitizer causing problems under GCC. In the process, the Kconfig and
Makefile are refactored to do all the cc-option calls in the Kconfig.
Additionally start to detangle -Wno-maybe-uninitialized, disable
UBSAN_TRAP under COMPILE_TEST for wider build coverage, and expand the
libusan tests.

Thanks!

-Kees

v2:
- Add reviewed/tested-bys (Nathan Chancellor)
- Reorganize -Wno-maybe-uninitialized changes
- Split up UBSAN_MISC features and document them
- Expand libubsan tests
v1: https://lore.kernel.org/lkml/20201002221527.177500-1-keescook@chromium.org/

Kees Cook (7):
  ubsan: Remove redundant -Wno-maybe-uninitialized
  ubsan: Move cc-option tests into Kconfig
  ubsan: Disable object-size sanitizer under GCC
  ubsan: Disable UBSAN_TRAP for all*config
  ubsan: Enable for all*config builds
  ubsan: Remove UBSAN_MISC in favor of individual options
  ubsan: Expand tests and reporting

 Documentation/dev-tools/ubsan.rst |   1 +
 lib/Kconfig.ubsan                 | 128 +++++++++++++++++++++++++-----
 lib/test_ubsan.c                  |  74 +++++++++++++++--
 scripts/Makefile.ubsan            |  49 ++++--------
 4 files changed, 188 insertions(+), 64 deletions(-)

-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201203004437.389959-1-keescook%40chromium.org.
