Return-Path: <clang-built-linux+bncBCI2VAWMWUMRBN7JWD2AKGQEHR7IO4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EB881A08E7
	for <lists+clang-built-linux@lfdr.de>; Tue,  7 Apr 2020 10:07:21 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id c82sf1866691pfc.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 07 Apr 2020 01:07:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586246840; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZFhO+A2eXh0Pj9q75us/CmHMTb8Qq0AeVF+vZPOS/eBjDuYiAASAlb9uqPo9eO2gqp
         OX0EAVeswcW+5IJnoR9JBVP4XWrF17p+4v89ZOAVAnksN9oUK1iIne/9t0+UoLSVdhxl
         athmi05vGdsvbEv+JiPHnjlN9KvHSXQOxd3ItPKupT2LtC41SUqQAPaL0ANuVEGEDy3g
         MBCTfFBLv997g3LRFWJuImmBBQtR0V/TiM0Vcvh8blUHG3qO9ai2j0ZYYP5jjcifp/Pq
         USC+N3QfFA2Sfh6um/eUBtpeYDkFB/QAgIVrr1EIM4qJQWtDYyOEYfeN31jKbKTzx8vh
         2qAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :date:subject:message-id:cc:to:from:sender:dkim-signature;
        bh=JW2gLxpSBoM5n0Izt1HlDG+E3VV4EfY6vLwxH5/h1Dg=;
        b=06dyO8+C8osE+pO45BQfE2S4pOuMpNSQQXLOch3ZUyebgXTT88xqkyrWU7pGkVACR5
         oXknpm5ke0cCzHqg28UppLa4zvHJ6MNzMqSc+qmGTsrQbITuHkXrBBMcah0AEU5laxRl
         SjP1lnQY0KI3vtKG1ic8Vj3lzW6buiXkHfKGJY0K7yVw9CfD2qxjsL9jasXunAqXTYlc
         UfPrtgMMiO/mtrF+ef5U9R6iAJiQp9oTssr6ygLCKnxgjV0xXurC3NsqqUtZYP7btU7S
         SJLQ+sv98WpTnAzeqbCYrU9rjKW8/zZk05MQzNl2vxxFu+nqw/sgC42h/ii320T+l7pa
         /Lbg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@flygoat.com header.s=mail header.b=YCkSRHAH;
       spf=pass (google.com: domain of jiaxun.yang@flygoat.com designates 124.251.121.243 as permitted sender) smtp.mailfrom=jiaxun.yang@flygoat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=flygoat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:message-id:subject:date:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JW2gLxpSBoM5n0Izt1HlDG+E3VV4EfY6vLwxH5/h1Dg=;
        b=lva63EqMfxnX0oD09+m7wAPhkLRHG9tbZxDhli2vIK2fXGKRF3NOZCx6d5RHBON14k
         69tzLZxZCFyaMaaFCLxuYct88qK/O1SESupWPrRO97JdX34Po6+hnjGoI+6yrvdVAW+U
         OVdDdReORA9jtl1H4UInmUf7d/9NGiQrMz4bzwoF9rlayrIt0N2Zy0lykdfczwRdjXwS
         UiA/8xM3ro5N7ZgvpuIbE/NZoEhzmDznOI+IgK1K+D9/A9XKeyBU+vcgvcUw4w1zyeBr
         FgsxDYwH14OSzWeW2lHWcUx9Ihc8fFLthj1g/JtBioQuLIjkc3UQD/2aSmT69swPYApS
         m37A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:message-id:subject:date
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JW2gLxpSBoM5n0Izt1HlDG+E3VV4EfY6vLwxH5/h1Dg=;
        b=p7AiB7gnKDG3ygPQOHppyqC/LiWD3Y859IjqoHVDJUCilzXWLjTgTyf849mFgEAHar
         337iPpbCE2/xSLcE9Z7nFc9YDas0k/qXqvmaB89IyqmSziw74dpv97WOwjNneQ1Khhqq
         a+MBCHdEgSB9WComMMmVlM3guLysPKKXT5PetUd3nll6bJC2dakshTFb+ybb6gK/WJch
         oECObYIahALO9zy53fZ14VgveWx5RSD4+7LIPEK6Twac7ISZLn3RMhB5of4aDRnpxC8S
         or+fAQcX61fgkH4J+VgM6UUswaZqdUrn5nVASds7h3ErDQT35wSPHxtTY5G/CeBYa9nb
         PYjg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZyjZmCsKAFVtMv5zxr9bLFBaBG4onrXH685xCoUM/UF/9AiL5J
	Vl5/Lb+oabZBwxXmmHFRI14=
X-Google-Smtp-Source: APiQypISnAiLUTrQAoWKwl0effLhaKDQx4BYF5CNm5wYa5TaRjefnsoX8ObqpX4DFW6ziBg3JsNY6w==
X-Received: by 2002:a62:682:: with SMTP id 124mr1421965pfg.237.1586246839881;
        Tue, 07 Apr 2020 01:07:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a5ca:: with SMTP id t10ls1741519plq.3.gmail; Tue, 07
 Apr 2020 01:07:19 -0700 (PDT)
X-Received: by 2002:a17:902:421:: with SMTP id 30mr1255115ple.271.1586246839384;
        Tue, 07 Apr 2020 01:07:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586246839; cv=none;
        d=google.com; s=arc-20160816;
        b=n7fzTMj5AKwJtUHWP8fQXCS09mA5EFNn0NFrG7/XwVzuaCIJwifpRcSvHcW9XM3zBW
         ZcMUyptAoby83Xw1Y2z0MjfvTZSY0R8mDW/fUL52sN2+Zl0BCtmO2xi/HymCK/vHaXIK
         oR2Mpwcdy5kzWb1rIbwlrrT9L0hoSADaAsHkr2am1k1JmqWFxqANIOUat9LrN6aJLUOk
         1Tk3c+7Mn8HF4BBy9pLK1gN3pPm5ZRxyn4lf9J0/e5Dz0QJDpnwt0d2KnLIcy+QxYD8H
         STyKbuPTzCnIxKChP5qTCIglwf6/HvIBakKPgbURpFCuzHhUcWvEDA09JB25a/d3VV+o
         hPxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :subject:message-id:cc:to:from:dkim-signature;
        bh=Qy5YaNnd6/cM8OXgjkd0XMTuk5DgHT3HQpv5IO5a37w=;
        b=oJZK+4HaNEJkQCy5RNDwfRgddQsDVp0mvruU7UFzy1jWMXUeLMA5Zy8lS9lGSt8OEP
         4NLRXyDa1izsr7e63rl2tXOnkfIShYWZP9Cdjo7vSQgmlKFOEDSswTDeAiAdSAJ/lq72
         i7OrxJHFfuBqlCscYtj5ZXQaqUId3ocZFEUzg910pP2ZeVkPpAzVYnSoyMXAa0eJiB5Q
         h/ALTKpc/oeKGkvTX52rPE+4BXlzGf5vp1JhfUEJEzjB6b+HSyhQGr8S0Z5sienZjNe0
         SoENrmD3lyPOXZ7idbmCfy53HDL8MfCM1CLDkYv0KEDi3kMTiy5on3M+EuqJIncCatJL
         2V8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@flygoat.com header.s=mail header.b=YCkSRHAH;
       spf=pass (google.com: domain of jiaxun.yang@flygoat.com designates 124.251.121.243 as permitted sender) smtp.mailfrom=jiaxun.yang@flygoat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=flygoat.com
Received: from sender3-op-o12.zoho.com.cn (sender3-op-o12.zoho.com.cn. [124.251.121.243])
        by gmr-mx.google.com with ESMTPS id w18si242537pfi.4.2020.04.07.01.07.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Apr 2020 01:07:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of jiaxun.yang@flygoat.com designates 124.251.121.243 as permitted sender) client-ip=124.251.121.243;
Received: from localhost.localdomain (39.155.141.144 [39.155.141.144]) by mx.zoho.com.cn
	with SMTPS id 1586246787690535.912988010464; Tue, 7 Apr 2020 16:06:27 +0800 (CST)
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
To: linux-mips@vger.kernel.org
Cc: Jiaxun Yang <jiaxun.yang@flygoat.com>,
	clang-built-linux@googlegroups.com,
	Fangrui Song <maskray@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	linux-kernel@vger.kernel.org
Message-ID: <20200407080611.859256-1-jiaxun.yang@flygoat.com>
Subject: [PATCH v2] MIPS: Truncate load-y into 32bit for 32bit kernel
Date: Tue,  7 Apr 2020 16:06:11 +0800
X-Mailer: git-send-email 2.26.0.rc2
In-Reply-To: <20200405082451.694910-1-jiaxun.yang@flygoat.com>
References: 
MIME-Version: 1.0
X-ZohoCNMailClient: External
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jiaxun.yang@flygoat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@flygoat.com header.s=mail header.b=YCkSRHAH;       spf=pass
 (google.com: domain of jiaxun.yang@flygoat.com designates 124.251.121.243 as
 permitted sender) smtp.mailfrom=jiaxun.yang@flygoat.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=flygoat.com
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

LLD failed to link vmlinux with 64bit load address for 32bit ELF
while bfd will strip 64bit address into 32bit silently.
To fix LLD build, we should truncate load address provided by platform
into 32bit for 32bit kernel.

Signed-off-by: Jiaxun Yang <jiaxun.yang@flygoat.com>
Reviewed-by: Fangrui Song <maskray@google.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>

--
V2: Take MaskRay's shell magic.
---
 arch/mips/Makefile | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index e1c44aed8156..f8fd3c39fb55 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -286,6 +286,9 @@ ifdef CONFIG_64BIT
       $(error CONFIG_CPU_DADDI_WORKAROUNDS unsupported without -msym32)
     endif
   endif
+else
+	# Truncate address into 32-bit
+	load-y := 0x$(shell echo "$(load-y)" | rev | head -c 8 | rev)
 endif
 
 KBUILD_AFLAGS	+= $(cflags-y)
-- 
2.26.0.rc2


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200407080611.859256-1-jiaxun.yang%40flygoat.com.
