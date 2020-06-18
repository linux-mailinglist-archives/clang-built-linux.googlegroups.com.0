Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB2MHVP3QKGQEGUDU2DY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C8031FDE2C
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jun 2020 03:31:22 +0200 (CEST)
Received: by mail-oo1-xc39.google.com with SMTP id v9sf1952173oov.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 18:31:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592443881; cv=pass;
        d=google.com; s=arc-20160816;
        b=yJuwtS4wJ1lh1H8frDepnxtPtM5Lys7Lhhd69ynWezShiH6hPligOAR7k+9H1gcpLK
         k5nOz8/h+eBpCpBYyaIq1aUzhd2y45iY5wx01DYAfYHGeNXTBpeUpXu/qhLH1DSbQ77J
         cwbmTuLeivKjn95gH96D9hmlMzHmCvYf8LQTWpaOxTmpQkXhNNqrxewdMFMqSD0w2kCL
         U7JGR5+ewjWVZ2fWVKHWtXqm5DQ9jEx0RGIG2Mwm3JlPKZQRVa9U7m0+XdbUV9VGbMvv
         ErmIqZA0N3QWRJm58YaYsc156W+1GuRQM91rB2B8Ey1G3ckoUubz40hXCFZ7nPx22udy
         co/A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=b2dX39hePJmQqjPHbRgamAXQsXA6oyi4ttbR1tPYuRo=;
        b=Tf4larhQI+sDGCQdJGt+0nzN8sdJ5TystJD/wvnpmfGUVPzVVB4fO35bcadhDelAAQ
         yrPvschMLZGF0YZuuvA0atpLKA4YWAQm4c6iMWBrCjWzPULD9hSd12vv7SEmHfJUbXvA
         nKyqQdXwo2gIMZMT6nXoGjhybXIOkkca1sPt8wHSTC+d93ONf5NpTs1qj52qd2rcOb8Z
         MUqpnm1OXY9HTcjYVZzGuF8YBWOkk0Mf1biJBQjaToZ7+XQ6oNWxP8bKqZLCkW19Jppw
         vJsvROnne99v3YpgOR7q5c73CbO94HwxmWecYpF3A7j9YIeaDYaoqJ1w3zH1zyTbicdd
         sgYg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=t1aLcRWt;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=b2dX39hePJmQqjPHbRgamAXQsXA6oyi4ttbR1tPYuRo=;
        b=E0fQWM6R6GvDNGvC1YujyvGPTVKtjE9CaGoDrAM3KoIINfaUa9nsrrCYV5QAAxykWe
         7/Hr5ix7R1ItlMeAV0YnXBAJCuiaArpmm/EZkbQLY1YkG9mhPfazxbk9CumRSTcUNM3E
         bBKgB0m1quNUYGX4ninmdHTP6ifNNTTRtr3F1P8kYptY8SflzpT0Eh5q/s16ZpVmAimk
         32TYQeVDVkXxhpGXxsLtKVEJuobUu1DE3hSf5HeDtzNZLWfhsuwAahh7XmsC1zSH+Ao9
         HVFBZIY+lHvtdsCnMH5uNC35yELzhAi1V3Rj3//mxMBBuYHIIHco7Hw/wxUbvc6e8c8Q
         hyLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=b2dX39hePJmQqjPHbRgamAXQsXA6oyi4ttbR1tPYuRo=;
        b=s3BZut01ENQqTPl9gWk970ahw66qDGhogMSAvPM+39fibskMwgLpbnXhju9bm6nSJs
         UEbXmWZkWCE4+MR7IeRRpn7QP64daeEinTzko+Sa6hguE/IalRhpYPjFEjnnh88jNuRP
         2VXcXkPZCaOC1BGgxrRVlkWfSgOsSmY6QxqAD88ioKpF3l/yvc3+1nGojvSHJ4nr03Bg
         EIhvzf2Pq4Pg/zLaMxWDJ2m5406zsQR/T+2uwLtI4YvXIx0ICbX1ZPsbgVA6SRXaPOng
         8BaRAjuwzC5Gs8hfmeIql1WVCPFQp7HkZIxmY+ZampgiOLAGSOfgH28+IfSBVYmIRdJm
         55mQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531xfb79IC6ms/Vz5y9wkcVNfayBZ0AxRlhUu/cw0sXZmqneLzxL
	aWDSaveZIsxPMtMbL2cCv2o=
X-Google-Smtp-Source: ABdhPJzgcY+YrFXifNsFsu9Y7SSAtlW1S+tnfdYmQ85y+JCvnBuhiUEoJpHQZ0mZMJC+WVhqmOOVjw==
X-Received: by 2002:a9d:1445:: with SMTP id h63mr1508037oth.32.1592443881544;
        Wed, 17 Jun 2020 18:31:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:3116:: with SMTP id b22ls937722ots.6.gmail; Wed, 17
 Jun 2020 18:31:21 -0700 (PDT)
X-Received: by 2002:a9d:22e3:: with SMTP id y90mr1606539ota.190.1592443881145;
        Wed, 17 Jun 2020 18:31:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592443881; cv=none;
        d=google.com; s=arc-20160816;
        b=zWLWjcehfc4qNqj2GP4/sd2Co6O62z1hLY1iQaXElw6zY6SII65kCgxErQcfO/Oih5
         LVYz0MtzwYa5n3Qi3TlFqXftOvi+TDcRLshTjKarAVnCA/99pB3O6g1YQcG7QEOWV8EU
         rm5Z7lR1zNPz9x0It1/KH7OjHkEPHcNCQZvzy3ZiWEBbMT7TnHorPqdLWg7YxL7lPQ90
         7h8i60Az4N/CuMUAgiokE7Coerz0JkcZTUIrMSeLtpbDuy+x1TC9A44+5FapUp/QQ5gU
         lJL8Hz9dfkovMEEQMuqS4D02fx1PBrt6mfMEDwU6ixWnxxZKJ4Q0IY/u3hORm+tzzbBA
         SabA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=gnFFBr3PNm8BpGgPbmX14zEHnIzw8Vog3E+J2k9lfFE=;
        b=yB+4jLJC5Z8TGk5Nefu7v9sh+l/Eu3k2yU0TU5CwlBBENHvHZ0/F3NjMzW7TOApCgm
         pmtMu7VU9R6cV6cLKJl7rEBpzhLrE6InDLVriQd//p+o3Yc8s0T8Q7U2J9IQynhMqylY
         RUxCR7zqXbLnBsJzcks2lWDc1k0qD01iuDjwyG3xSxPl7eKFKIWA0rl5psuvIuhjIG09
         5ykWYuLQiEGPge3wjH6fwvHGNxEGDRDuVjkAnsnRy3WLwZiBlDuOKKK04c57ObEBlwq8
         i6R2z6WabXnEOMS2PMUa+i4PTJiR3YOlD6K23TTBqcXJZXVv+uL5pC6pm+ece5ol9lZ5
         AEaA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=t1aLcRWt;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e69si122535oob.2.2020.06.17.18.31.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 18:31:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1E7842225B;
	Thu, 18 Jun 2020 01:31:19 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Fangrui Song <maskray@google.com>,
	Jeremy Fitzhardinge <jeremy@goop.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Ilie Halip <ilie.halip@gmail.com>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.4 58/60] elfnote: mark all .note sections SHF_ALLOC
Date: Wed, 17 Jun 2020 21:30:02 -0400
Message-Id: <20200618013004.610532-58-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618013004.610532-1-sashal@kernel.org>
References: <20200618013004.610532-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=t1aLcRWt;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Nick Desaulniers <ndesaulniers@google.com>

[ Upstream commit 51da9dfb7f20911ae4e79e9b412a9c2d4c373d4b ]

ELFNOTE_START allows callers to specify flags for .pushsection assembler
directives.  All callsites but ELF_NOTE use "a" for SHF_ALLOC.  For vdso's
that explicitly use ELF_NOTE_START and BUILD_SALT, the same section is
specified twice after preprocessing, once with "a" flag, once without.
Example:

.pushsection .note.Linux, "a", @note ;
.pushsection .note.Linux, "", @note ;

While GNU as allows this ordering, it warns for the opposite ordering,
making these directives position dependent.  We'd prefer not to precisely
match this behavior in Clang's integrated assembler.  Instead, the non
__ASSEMBLY__ definition of ELF_NOTE uses
__attribute__((section(".note.Linux"))) which is created with SHF_ALLOC,
so let's make the __ASSEMBLY__ definition of ELF_NOTE consistent with C
and just always use "a" flag.

This allows Clang to assemble a working mainline (5.6) kernel via:
$ make CC=clang AS=clang

Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Reviewed-by: Fangrui Song <maskray@google.com>
Cc: Jeremy Fitzhardinge <jeremy@goop.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/913
Link: http://lkml.kernel.org/r/20200325231250.99205-1-ndesaulniers@google.com
Debugged-by: Ilie Halip <ilie.halip@gmail.com>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 include/linux/elfnote.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/elfnote.h b/include/linux/elfnote.h
index 278e3ef05336..56c6d9031663 100644
--- a/include/linux/elfnote.h
+++ b/include/linux/elfnote.h
@@ -53,7 +53,7 @@
 .popsection				;
 
 #define ELFNOTE(name, type, desc)		\
-	ELFNOTE_START(name, type, "")		\
+	ELFNOTE_START(name, type, "a")		\
 		desc			;	\
 	ELFNOTE_END
 
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200618013004.610532-58-sashal%40kernel.org.
