Return-Path: <clang-built-linux+bncBAABBO4P3X6AKGQE3UWSVQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 48189299944
	for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 23:03:40 +0100 (CET)
Received: by mail-yb1-xb3c.google.com with SMTP id j19sf5476046ybg.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 15:03:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603749819; cv=pass;
        d=google.com; s=arc-20160816;
        b=UW+xvW/g+ExzJ+bWsFTQtZBphLjxbrynWCeeVMliFteCp+lxyuTzhHmUxUJaQLFXcZ
         3lb3xoc/5sgQEMheQ8Dfhy/WH5erET/Syri/bxT9XxKofhGDwdYIpQsnuM052kFQjhoV
         vwneN6I+bHiKXUPUWDstkgEl6UlBeJjqglWfDHIiq6M8iuo+GzZ5veI1fTspSVbK/9MG
         2hshaXzTXdBMA+4j+sWnmvv/EH2/0FeH4jQ6NGn0X1qEfyvU9hX7wK+ymuCBXq9fsOsm
         6UJD7jMSLI4LGv/ZdqJJJprIvxayrJPqmqi0M5G8vjBCx0Sp8HEIoYHiOlg886k+23eJ
         +Otg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=Jqr6KyKH8a8NZqsokCYyMA5l61qgC0wPNf65H2wwDbk=;
        b=PNA1MgEDYSgvKtO5S1/7p49sI88RNjxBYYB9WDrRr4Yh/hX0TiEkFqmoymAAhcIWLM
         mUkdIBDXyEUbjJB5yUzzvHAxXlqPtuLsS8ms4p3MIenWoRkVsoXciKsEzuUaGwWWBf8a
         kFkPL3P7Bde3PlR9Wi3UvM2aybCCHSbfAIEaZo6/2g9X8s90j9c9aERyk5px+AyJwXwX
         +XqVMxkngMBUeVf9JEl+2Bmlav9rka+wPbq66fLQomqzRj1+bf+M/L1QN4VMokwrFjst
         4CDJcSNEfE6Qu602FMtOOCq1lb0jlaXeMHP8+RA0EuOEOvqmePneLWqmLx8elP/OUApy
         0KpQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=YjBffOju;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Jqr6KyKH8a8NZqsokCYyMA5l61qgC0wPNf65H2wwDbk=;
        b=KMzo6uhgUSOBevDy3yyp+fOZMf4Pgn5Eh8+QsflH1Zf6nb8Gng9hux4AgQgN7qIlfk
         azNe5s/pvvOSNBC+XuaFurfDyABVYfdVnEA4VrRf1nzSQN1adiGxVHBJmixotfvbA+dK
         yHgEzGwd/piwoLTA0LjykItEdvAd0GCx+magmG0HgWzRyOuM8J9c6b5LafUIGqpmG1Lc
         /jz11QIdfqSI4iRrR33iT5PrA1MNbzv+FgH8GKTCXfeiVQC3Jta+1V41K9EKvTWbNxMa
         Y2Z4RmwbANvSngu7NPMhA/ei2pz3TssOSA2zlgE9kuqKBhSgJrq25y024ZH25iKJ6ohH
         ZyUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Jqr6KyKH8a8NZqsokCYyMA5l61qgC0wPNf65H2wwDbk=;
        b=VWoLQXww08OmiesO3e0e/WrbyFVTfGOe2tT5WgmjA5lhHBCWDTGDj8qMYXhY4RYGEW
         Zhp3CAWCq+b8VYDoRA7S3l3KS3F6in7p3XRDkcvY/KCMHtHpobuyV5gEFkg7/2IZZ9rK
         wxXU3gbGVsT4dvRLNPofZj0bqWvlmFBkI9fpvq/TWs8r3e9aeAzIE4DE6A04/5N0YCte
         Bl9u+r/OmBZofVo8/evCWRF445N2qET4b1m4Y4N3XOGQX1Cqbg2WBlISslNXNMO+UaXb
         ilze8gfQvC+rR+22aSo88bGT5PqKrsJ7lUdnONvZLFPCAt767+z79lNFgkDavEIdSC3N
         fg5A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533UPjPDdjqtEN64qE8jV613QdvBq/GKbZa7LVocc/WARIxyok4y
	YJ5ev+i+8whzO78L1U3tR3w=
X-Google-Smtp-Source: ABdhPJzUHPQBmo2/NsBfVmwks2IEd2Qox4kL3Nv1UorKNjCRkuQ7BUN1ImpqVUhulAp1dosMh+hxqw==
X-Received: by 2002:a25:d64c:: with SMTP id n73mr27342514ybg.21.1603749819318;
        Mon, 26 Oct 2020 15:03:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:2c04:: with SMTP id s4ls4868599ybs.0.gmail; Mon, 26 Oct
 2020 15:03:38 -0700 (PDT)
X-Received: by 2002:a25:24c7:: with SMTP id k190mr27979994ybk.483.1603749818889;
        Mon, 26 Oct 2020 15:03:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603749818; cv=none;
        d=google.com; s=arc-20160816;
        b=tTXKeBnxthZ4GymH31lhmtrGxx9ii+qVak049k2zs0cfY7F/Jv5w9tvAuS3yhcb8xR
         jmLHDE3xQYDLGQjHQFhM2EyZN2OBG6UY3+qRXjUdEjrxYAtPO8eHokQ9ua/9erhdlv6o
         0PaGyZ2Mc7EkD81k0D0tzrxB4OkCDCnLUG7+JU30HWSrm3C+98y7K+iPAUCag98ID6iN
         R4TFodwzcUzSN3vRx5i4LxudgvNWvIyprFA+YuzkdCl7wz75f0yXQPFeOKypGj6VQrrc
         ajs5g7VHvta+95To/R+lxNq/GZavAvRe+trDjJ1dp4ECb8x4NhiV4J9UiZsGMzxbmTfa
         RwAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=hiPM7xXBjQy3JydLgiDavk98+GCcPoaq4SLSnYCtCAw=;
        b=tQZRQ+Qeil1JESzquo7/OgPdflwHQYk+c7RnBXeDGRe+Lo33+aoh9Q+BrMy527rT9S
         EyhgSIJe6qXPyDu2OEcLYsaxq3jYa2w5hDk1JP9BuojurTz/w2yaQKOfN4ucwkD07kXS
         DXRSdNt4+P+ZrQbunqQzNS01dSoMYMomW67HjqzQMArIE9SRMzVAEOazgPkfatd3ICyX
         Ml6BUKdGpcJXktGnw1MkYyLTx9YUpJoFHZeDiRecgySKAAiIaeG5FLXejTpEl6LmxPv6
         7O6ipW7lgfgeNeu4HmJiqfirD/pHOSNUGu6CrmtR0RY9p+FvzKoqI5KiiNq9tXudxvm6
         ymMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=YjBffOju;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t12si837654ybp.2.2020.10.26.15.03.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2020 15:03:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (unknown [192.30.34.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D45A920706;
	Mon, 26 Oct 2020 22:03:35 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH 1/2] Makefile.extrawarn: move -Wcast-align to W=3
Date: Mon, 26 Oct 2020 23:03:13 +0100
Message-Id: <20201026220331.3896226-1-arnd@kernel.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=YjBffOju;       spf=pass
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

This warning behaves differently depending on the architecture
and compiler. Using x86 gcc, we get no output at all because
gcc knows the architecture can handle unaligned accesses.

Using x86 clang, or gcc on an architecture that needs to
manually deal with unaligned accesses, the build log is
completely flooded with these warnings, as they are commonly
invoked by inline functions of networking headers, e.g.

include/linux/skbuff.h:1426:26: warning: cast increases required alignment of target type [-Wcast-align]

The compiler is correct to point this out, as we are dealing
with undefined behavior that does cause problems in practice,
but there is also no good way to rewrite the code in commonly
included headers to a safer method.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 scripts/Makefile.extrawarn | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/Makefile.extrawarn b/scripts/Makefile.extrawarn
index 95e4cdb94fe9..6baee1200615 100644
--- a/scripts/Makefile.extrawarn
+++ b/scripts/Makefile.extrawarn
@@ -60,7 +60,6 @@ endif
 #
 ifneq ($(findstring 2, $(KBUILD_EXTRA_WARN)),)
 
-KBUILD_CFLAGS += -Wcast-align
 KBUILD_CFLAGS += -Wdisabled-optimization
 KBUILD_CFLAGS += -Wnested-externs
 KBUILD_CFLAGS += -Wshadow
@@ -80,6 +79,7 @@ endif
 ifneq ($(findstring 3, $(KBUILD_EXTRA_WARN)),)
 
 KBUILD_CFLAGS += -Wbad-function-cast
+KBUILD_CFLAGS += -Wcast-align
 KBUILD_CFLAGS += -Wcast-qual
 KBUILD_CFLAGS += -Wconversion
 KBUILD_CFLAGS += -Wpacked
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201026220331.3896226-1-arnd%40kernel.org.
