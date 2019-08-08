Return-Path: <clang-built-linux+bncBC5KPPH4YUKRBKE6WLVAKGQEGU2LBVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53e.google.com (mail-ed1-x53e.google.com [IPv6:2a00:1450:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D25186C11
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Aug 2019 23:07:52 +0200 (CEST)
Received: by mail-ed1-x53e.google.com with SMTP id z2sf91ede.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Aug 2019 14:07:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565298472; cv=pass;
        d=google.com; s=arc-20160816;
        b=XfKHgCiWyKQnZ0gculbiV0UOjETWlQh/sDt+SDp7C9cbuMIAYb/bkiS7L9fzqElTMN
         aELNqYVj5QsVvitEH9I+50E0wevF7vHqJ/8QYszwEP7msVFFSujZq1g1ZKQU3n+RFvk6
         ffBqz4oPyv+4svTcypvbyNQP3iMreoEpVZMJTL25BtLJMRilP16RMIb2O7gdC9qR/QUq
         taY/rnxDh5GnmKiDCTHq6TYmaW1pWBe7gv99IX7VOdYw/5AQ/9KwdwmSoex1LFayroEf
         /xgKorY/XU/AM2kEg7UTf0euZu5/+ZHwyjSpCGWmbeL+MyFdjNFbH96u4i/5I2glOZbl
         DTuw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=YbwZdWHMehonySfnjEOCWFMj/hAbb+U6siy+UHalJ68=;
        b=VCUp6KbKME1f/sf7knypKDeePVGX6Jb8OEcNv4J6Ht5XF6DHIIl0G9QdNgbFCMW1O9
         ArhHoykAiokwlBD+rExE15oeH8ft4KMQsh8Tuasx/4WqP0MFEKRQ7GFQJs7pYs5fN1us
         m9Cm2PlJddBIC4ujoAa5VYDf46IRyLUkng4fZueJQMHHhH4yAGxaWhhw4IpphokRje9K
         j4tzHnonqfAezm/nCAIGSqYw8dXEiZa10ZNkvtIuI8thbFqcvqjeKlaEHQ26sEzC9cYG
         YyiGTi4CTCa0q5kKk31OXFs4+sQijCWNtdEfiTpXalNnxwpjA9O8ZIcJzNTQhc7V9amr
         AJOQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of guillaume.tucker@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=guillaume.tucker@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YbwZdWHMehonySfnjEOCWFMj/hAbb+U6siy+UHalJ68=;
        b=rXuUuW7oheCP3QpF1Xxa169Ok7hYIFieg36LIXWI86oI2gyUHyObku25tPZKOxoV5d
         HEEv8ZmY4tRHd0svhes9MhYn1tiYOPFPTuM/+0AoSjJry5CkyrFbwmp8S+DLSgtPzxbh
         N4KV5wFqW+KuzAbb+AkD0LCw8SaMOYtcUqRFEkZBA871G4uOaETdmWe5MEJeZMfM1HSl
         VuAxr46OqSzspwapcIqSYDNLsuZA/MdvRWys37Z0uIr4/c20iGHFJSo81IFdfjXp8EnT
         lW0RIUkPgY7614AgEVqRSAOyzAansdwp0i5MUKsZURJ6Rp1gCu5NGnmNKHOpZJhqYGOz
         Nc3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YbwZdWHMehonySfnjEOCWFMj/hAbb+U6siy+UHalJ68=;
        b=K+m1G+34l/gARlDMufG2ZWSbBpLZYf/LyAoVYKsZFIxh/09/ObRTW/1WCiOa0VOPJK
         dtBZBP50jh/j515yPhZqp92ABPPQDetIf2GmqKwhT4cENsFIBohmzLdjobNf9tjZn2ez
         bbdddz/rDsfBFDSNLd2L7pQKPPkhSOclTnWxTxko1nJ2dA61esjZpfTB43Uvfm7c7wqm
         ysZhO7zjArjI1ttGHr+WZeP7wNM8J1QI6xKT5cH55agXRkAz3wysnlBCjP7NDhqth0BH
         JZYlCgiBgef/e3QgQ30Tj6xOSMBcCs41NhT/A8aa3pmT6tHEk30rUNckN+6f9877154I
         C3nw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUbnEgIXNscxEvf/oDe0OVWUvcxyVQ1qnawQWLyYQXnCrr8VmzT
	JWJ9de8NoPolOCywrdTtvQM=
X-Google-Smtp-Source: APXvYqyz2FShmGeilhK73XagIkQHPqYjw0nR8HWA7qI7U1KQLcQYB57wAilq7oih5dbKU+uSSVB/2w==
X-Received: by 2002:aa7:c149:: with SMTP id r9mr17925776edp.92.1565298472120;
        Thu, 08 Aug 2019 14:07:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:6a07:: with SMTP id o7ls19895338ejr.9.gmail; Thu, 08
 Aug 2019 14:07:51 -0700 (PDT)
X-Received: by 2002:a17:906:2510:: with SMTP id i16mr15385278ejb.130.1565298471383;
        Thu, 08 Aug 2019 14:07:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565298471; cv=none;
        d=google.com; s=arc-20160816;
        b=d+dQ53MXHrq06dnb/DHTSE12wanFkicEYskmBi9y+Vxt4OoX3iofc5Prw/4XTFP2mF
         gNdmhH1ikRdbfx6zIlo0uqoIBcwVWJw5xwBLhOy+DlNxAAQ3LBiSEcAWZVXTkYjs7lnp
         KAKQTqUV2pP2jJXGzxDT+6tzP34MX5T+13yFcYUK2iq0wpMmG9XJ6b4N5lnngQm72ZM1
         QuzqKGNkmBs42SuMimiEAScpPI0I8DPdop8R9g7vvrEOFXb/0QnUWgQGCb9IlqvGMe6h
         m/hbOR6LJO++f12kdmGYiNZJOcGrOCZ8azBd4GgEmA+OCLXO0iE//U8iSjHus+sfrvLM
         x11Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=rGWSrIjtxWQh9SBWGE3Eqv0d98nOGmIArQPygSJ4ha8=;
        b=aHiMWjsI5YJxKZygZR238FMx3e2IULfxG/AMzKw4hXDKbRQ86YPTNsj9uxbHXwanqR
         WLvU3HLk1cNjuStHPU/uO3/iEzXZvVIVoaK5P19CUjovraJNRwCIHY+aUuIETJjLMezE
         hwFkCehhbi9tlnHIJEUe6FGWmXtxjo4TGxSAIwENQE/DQpNFLm3nWx2EIUPJz7BFuPYK
         vR76HfTgt3Z1lahwYHpZhj2rw/fuEfUmcxh4ch7pcvPNuY+sjtQ+V8byUOm2RwjcIElO
         v3K6cA9BTr71wO47NudGYgsUVgbs4xvsenQHV8NIl2oihxzvkaJqQgOCJhw3VCEFmPMa
         Viug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of guillaume.tucker@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=guillaume.tucker@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [46.235.227.227])
        by gmr-mx.google.com with ESMTPS id jz14si4279393ejb.0.2019.08.08.14.07.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 08 Aug 2019 14:07:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of guillaume.tucker@collabora.com designates 46.235.227.227 as permitted sender) client-ip=46.235.227.227;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: gtucker)
	with ESMTPSA id 5EF0328CB48
From: Guillaume Tucker <guillaume.tucker@collabora.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>,
	Michal Marek <michal.lkml@markovi.net>
Cc: Mark Brown <broonie@kernel.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	linux-kbuild@vger.kernel.org,
	kernel@collabora.com,
	Guillaume Tucker <guillaume.tucker@collabora.com>
Subject: [PATCH RFC 1/1] kbuild: enable overriding the compiler using the environment
Date: Thu,  8 Aug 2019 23:06:52 +0200
Message-Id: <3885ccdcbdbe83eb367e8344584df944adc76e34.1565297255.git.guillaume.tucker@collabora.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1565297255.git.guillaume.tucker@collabora.com>
References: <cover.1565297255.git.guillaume.tucker@collabora.com>
MIME-Version: 1.0
X-Original-Sender: guillaume.tucker@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of guillaume.tucker@collabora.com designates
 46.235.227.227 as permitted sender) smtp.mailfrom=guillaume.tucker@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
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

Only use gcc/g++ for HOSTCC, HOSTCXX and CC by default if they are not
already defined in the environment.  This fixes cases such as building
host tools with clang without having gcc installed.

The issue was initially hit when running merge_config.sh with clang
only as it failed to build "HOSTCC scripts/basic/fixdep".

Signed-off-by: Guillaume Tucker <guillaume.tucker@collabora.com>
---
 Makefile | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/Makefile b/Makefile
index 23cdf1f41364..c8608126750d 100644
--- a/Makefile
+++ b/Makefile
@@ -400,8 +400,8 @@ HOST_LFS_CFLAGS := $(shell getconf LFS_CFLAGS 2>/dev/null)
 HOST_LFS_LDFLAGS := $(shell getconf LFS_LDFLAGS 2>/dev/null)
 HOST_LFS_LIBS := $(shell getconf LFS_LIBS 2>/dev/null)
 
-HOSTCC       = gcc
-HOSTCXX      = g++
+HOSTCC      ?= gcc
+HOSTCXX     ?= g++
 KBUILD_HOSTCFLAGS   := -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 \
 		-fomit-frame-pointer -std=gnu89 $(HOST_LFS_CFLAGS) \
 		$(HOSTCFLAGS)
@@ -412,7 +412,7 @@ KBUILD_HOSTLDLIBS   := $(HOST_LFS_LIBS) $(HOSTLDLIBS)
 # Make variables (CC, etc...)
 AS		= $(CROSS_COMPILE)as
 LD		= $(CROSS_COMPILE)ld
-CC		= $(CROSS_COMPILE)gcc
+CC	       ?= $(CROSS_COMPILE)gcc
 CPP		= $(CC) -E
 AR		= $(CROSS_COMPILE)ar
 NM		= $(CROSS_COMPILE)nm
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/3885ccdcbdbe83eb367e8344584df944adc76e34.1565297255.git.guillaume.tucker%40collabora.com.
