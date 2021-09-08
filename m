Return-Path: <clang-built-linux+bncBDFZ7QNLWEFBBWW44CEQMGQEKWHGUQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A3F194032E8
	for <lists+clang-built-linux@lfdr.de>; Wed,  8 Sep 2021 05:30:35 +0200 (CEST)
Received: by mail-il1-x138.google.com with SMTP id r5-20020a92d985000000b002246fb2807csf612228iln.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 07 Sep 2021 20:30:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631071834; cv=pass;
        d=google.com; s=arc-20160816;
        b=jW4Pfmrn1f5Ri0UCA4BiA+6ZfNrQQg07rTm+fwvpgsb9R63W0kow36CFMrmq/PbiOi
         9YtXHau6d1zglZQhR9x6Tk/7alMXCklProl/omToRlMiIc997E+XOnBzvIfHGNEezPyJ
         zJVErTFSyNZaMh1b2uwrHNrHggUcNf3hn0DlMrfjOjymCDZLncp5XdrnjWTcI4kMo3Hc
         fFIcBFgpIsDne0nNXL+8Ocv+8w/Adf9m/6J4NIpgNDO6s0XBmJjr5gIBs9Lpeb5bncSD
         pgjW3Akv832FC9mM8WgCs7xjdbncrjjp1ubXvD+CjbDxBMSPbNSxaF+TWdRwEssCnAkv
         xuWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=eDV5sUS46rhMuJBhFttz/r50mvp22R4OJpdJNYjXtj8=;
        b=wTNh0Vx9ewWXAiekhZu5pdXwmA5rPrrwy5iZth2+wt5+wDVxfSJoEhvaBDQjcQir1G
         fOhiiy8RHuizkuYxgAvLxVabtDNNWdk79NRVa9Vtz/7hPs9/cjQu/BpljB1UHj3oNP5i
         w/8uBNhsT/4XsOX+y2gPzQ4de9fz5WIEBhNn/T8ulj+gN9fIwhh1w0UzQF0xeamJH4hJ
         w7mlvEWT6999OxuMJQXgs74hZ7w56jx2OIiWkNw9lSxVZdrGDYrRnPy8RFqrzgKy8uB7
         gwfO/++oJgL5gawzzHXh+6mK8elraii84NTan/Q5A4ju5kT4b7KL6pvOW2erC54hHNvy
         vnSg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=dc9bzny1;
       spf=pass (google.com: domain of kortanzh@gmail.com designates 2607:f8b0:4864:20::102a as permitted sender) smtp.mailfrom=kortanzh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eDV5sUS46rhMuJBhFttz/r50mvp22R4OJpdJNYjXtj8=;
        b=evmDjQSgm8CHSR1kRvZRGzJGtK6qqMA7S/wP0bBL9zVFTHhVnfQZGn6hQjAR0pUFfu
         pH8HJEkWcN3q6JxyVMJdh+tUn7U67HzFmJ7z2ivka9uk97T7RUThYD9yO5SktcurVdj7
         /wrEXH3+NpCS9vMrlqdHwflJFRJkXZuGM6P9yLCFPgTIEZWnBw5b/+jM90mUlrh8GVSe
         8/OEYumI4D9oXCSru1kTpjWy47RGkA53kyx7Bb1vP2FFvfb+JBC9WScwtMOKexDXOQkT
         y8I9z+4bZp/H2oun6mDtg57xEQF0vmx/zSdk3L7Y4zrxS4uHjPsUAIvisMwBMZwj6mty
         4oHA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eDV5sUS46rhMuJBhFttz/r50mvp22R4OJpdJNYjXtj8=;
        b=ZJhPn81CriVDvxBP/eRsifWs7cSf1s4BhRThLnZVPJKhxQFz3atnxwey/8XSA3KTJO
         XYWJjnlzaJ5uKvayVyVAuhQ2Y41k97Op3wfocYK9QuRS3tbg6G+ibyzxBiBrhXLBxXnL
         YoddSeuuEhAP6dO2lPwhfYlpAmQlRKlqJHvBANt3jpQEL7EonB13qLq1DrYehggW8I4d
         GRRjcK32Qe45TmVyrmdmOvOktLitDgpeFXglqCvSKF6uWWZWnLEQZkovhlVtrXzuw9Nd
         cK4I8JS9vuNxlwZgtm4tC3Jeui1iadE2gJVsmTrWGIE4NMUSDXv84KWIemaseRs5l5Ej
         vbKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eDV5sUS46rhMuJBhFttz/r50mvp22R4OJpdJNYjXtj8=;
        b=HPmAIsqgxQRBcEgQ5bwH7tHaRtpYG5rCZYpwzrpYXz7YXgs3z2Ar9uXmD35dh0uKaR
         KZmOh1VjV4mfaVESn4W7rAjdhjV1/Wi1JL1Q1FIqEb4dK/b6f7usmA/rGEfTbSx49fN+
         qicR/2cygTOWV9atGGMQgdbfPoBsFNkWiYo32BK9QJifpNLBO6Z+WoHja0TGaQyxG5qy
         RQhE57yCZaBrZGi1N46PVmUBCwTr2BjNvtnpZNQW76t+aSSUPK1l32e8Irl0zcrnuP9Q
         nPqxv00DaS0r8/friAxt3ZckyqIa43cZFvpTz/qhqvx8JZfQYp7T+OuiQEGITpcxUhFL
         hlJw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532n/YPoZjvA4AQDD0UmFnljvxCNCikdxVFcZw9uTgW/0U6fw2AJ
	Zo+qv5AeaI4HwKPkO2vUAKI=
X-Google-Smtp-Source: ABdhPJz7JtC0SaNhNzHwhE7FrnoYIuXNvH6nLgWcMNtUr6XIgKVkC8CEFBZwyi/gOGJ6nwLAm28J0g==
X-Received: by 2002:a02:caaf:: with SMTP id e15mr1663185jap.11.1631071834179;
        Tue, 07 Sep 2021 20:30:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:f710:: with SMTP id k16ls144714iog.4.gmail; Tue, 07 Sep
 2021 20:30:33 -0700 (PDT)
X-Received: by 2002:a6b:e318:: with SMTP id u24mr1405552ioc.137.1631071833800;
        Tue, 07 Sep 2021 20:30:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631071833; cv=none;
        d=google.com; s=arc-20160816;
        b=XCMGmgahMnEOnrOdJuHpHNvp+eVToqLvQBvEG7D8C35U7oVzTVngy7Zrc3MpqqG/HE
         4c/YYsOr+5zHBuRaaVyKfWnUGm37teiJD9uzIeLQtu6NyWy4rDOB3Q4H/oz0RY/LvtKt
         N4fQi70H4ymoBfZTWcQhQK50VphFar2NNetJ+nj7LoJo8YoCe85zJi/PY01Debovik7e
         +8iJ/zy0z91myIArz+Z0deqc+qsXw54sUNwMkfK+PhWr/7c6kDyVwQlvxDoFHXrOes08
         fW8OALod/8KUEfUQ3MO/Bh2wNj5LDW9eELjxumpG5LuWxhCHIcKfTW8N/saKYkitA7U8
         fvuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=YCmgiIqK/f2uj+2FIB5ZoM8EM/HSqIdCmUJnhQwVgP4=;
        b=DlvRrJS7vx+1z1au8Pa7ElblY6v2CpEKfC54aDDvP7rgkdXfYDo5eGNJBBxvmCS0cV
         j2lB2oSTrQIR6lDSsVbhmEaQerVa+4C2bclKboaSKvcpzcgrqRw6fVT5TTPdi7zdGPxN
         li3eQ7clBT3zaij9Jo4qvuptDs00XkVpEB0HexTt/YRBD/tmwOyXZAKH73qaL8N/k+d/
         7U1xis/mC2VJaPMjCJs50iXUgPApbKLiC0Nu0H4VTBVS65pPxLLdRfNmAhaQFiD2T/DJ
         XM6iw389I0UKHfYldDajwZq+xpG4wRLUnfaqUIXOLhidsXe3h68LLUDqlL4RqLcNtzVF
         DujQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=dc9bzny1;
       spf=pass (google.com: domain of kortanzh@gmail.com designates 2607:f8b0:4864:20::102a as permitted sender) smtp.mailfrom=kortanzh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com. [2607:f8b0:4864:20::102a])
        by gmr-mx.google.com with ESMTPS id x11si82310iog.4.2021.09.07.20.30.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Sep 2021 20:30:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of kortanzh@gmail.com designates 2607:f8b0:4864:20::102a as permitted sender) client-ip=2607:f8b0:4864:20::102a;
Received: by mail-pj1-x102a.google.com with SMTP id mw10-20020a17090b4d0a00b0017b59213831so498808pjb.0
        for <clang-built-linux@googlegroups.com>; Tue, 07 Sep 2021 20:30:33 -0700 (PDT)
X-Received: by 2002:a17:90a:b785:: with SMTP id m5mr1823388pjr.213.1631071833256;
        Tue, 07 Sep 2021 20:30:33 -0700 (PDT)
Received: from localhost ([45.76.146.157])
        by smtp.gmail.com with ESMTPSA id t15sm595283pgi.80.2021.09.07.20.30.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Sep 2021 20:30:31 -0700 (PDT)
From: Kortan <kortanzh@gmail.com>
To: nathan@kernel.org,
	ndesaulniers@google.com
Cc: masahiroy@kernel.org,
	linux-kbuild@vger.kernel.org,
	llvm@lists.linux.dev,
	clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Kortan <kortanzh@gmail.com>
Subject: [PATCH v2] gen_compile_commands: fix missing 'sys' package
Date: Wed,  8 Sep 2021 11:28:48 +0800
Message-Id: <20210908032847.18683-1-kortanzh@gmail.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-Original-Sender: kortanzh@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=dc9bzny1;       spf=pass
 (google.com: domain of kortanzh@gmail.com designates 2607:f8b0:4864:20::102a
 as permitted sender) smtp.mailfrom=kortanzh@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

We need to import the 'sys' package since the script has called
sys.exit() method.

Signed-off-by: Kortan <kortanzh@gmail.com>
---
Changes v1 -> v2:
* Fix commit title.
* Improve commit message. 

 scripts/clang-tools/gen_compile_commands.py | 1 +
 1 file changed, 1 insertion(+)

diff --git a/scripts/clang-tools/gen_compile_commands.py b/scripts/clang-tools/gen_compile_commands.py
index 0033eedce003..1d1bde1fd45e 100755
--- a/scripts/clang-tools/gen_compile_commands.py
+++ b/scripts/clang-tools/gen_compile_commands.py
@@ -13,6 +13,7 @@ import logging
 import os
 import re
 import subprocess
+import sys
 
 _DEFAULT_OUTPUT = 'compile_commands.json'
 _DEFAULT_LOG_LEVEL = 'WARNING'
-- 
2.33.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210908032847.18683-1-kortanzh%40gmail.com.
