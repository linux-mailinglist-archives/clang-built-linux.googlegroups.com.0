Return-Path: <clang-built-linux+bncBC7457HKSMPRBKETZSCAMGQE3TVQ2AI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-f59.google.com (mail-ot1-f59.google.com [209.85.210.59])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C4203749EE
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 May 2021 23:10:02 +0200 (CEST)
Received: by mail-ot1-f59.google.com with SMTP id u14-20020a056830248eb02902a5e3432ae9sf1879865ots.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 May 2021 14:10:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620249001; cv=pass;
        d=google.com; s=arc-20160816;
        b=hL7+YqItcvfUzAQ8r/OI99btbcru8+GPEEmvFkUioNAq0dpy9EyV6GqLMQ1xRtfqaC
         3IcEGoykCUXiyVBcc6nvv2yTYtHFvGnGK+vE3BEab4jnO1R0+vByiQzwpPKards5xkNX
         9NbqwSine3MZmFHaTaNtCDjmO7zQrsfaDGxIZwcNMq7xheRixPUsckZCr2GPymrubwcT
         EEeMHpw3RZL6qt5wO3NWrynn++AlfzheyPDLPqWHzi/MM1te7ejEK9aftCoqNeLUE51L
         81CuAmg7FZxDud8hSH1pMFfnCQOwuiqyjs86fbZNyduzmgHElfYJpU4dZo7VUUoDLgUg
         /gXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:message-id:subject:cc:to
         :from:date:mime-version:sender;
        bh=lyvEJwSbCoTMGDRPiDfJAunwWfaHrhdxaHCjccdrdts=;
        b=DCREJGsDOF/38w5aaZV/b3L4qi4ar7RhpPQLxccJNa80e39RhLRI8KBmBsiHBdf8ci
         7/xhWndHidGTGE/t/AKjPLgLWIX4sJsNDIIkteC5JotlH4AFZYJYxsy/cnEmGpXf0n9t
         ZevTkcmC3xS7Fxy3lLydFDipykCBD5gmi9qy9yxkCLhFQ4JdQ2a7BjgwwlJ1RQz3zs0K
         5nWu2QdKtHufNgrIvag1nPlg9EiKr9Mny01tOFitIJvRhFk8ReG1FWMfRiMCObq2MVJU
         kIoUO0r+T9TUUkqteeastyqovIgSPAPHGfsdns8KjmTpXnmjGHIuJs9gVPAvZY01XmIl
         RAcw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=gxir+p3t;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 198.61.254.9 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:mime-version:date:from:to:cc:subject
         :message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lyvEJwSbCoTMGDRPiDfJAunwWfaHrhdxaHCjccdrdts=;
        b=fUCkAoUmDdPJF8fL51DLBrxEhOGPCUGLfm54KLvDNy083+xRmtZflybASnAvxmcVYH
         8AKCipC2ZbL4xz9owomMm+Yh4JJzmPj4H7P1iOGH02+KqOR/1F4FCO7DIwhYCkd7li5S
         43sLG0W7wVw5klxuDhBHnNVrHEBcmBQE8hVh+Ad3vOBGPKbXFQ38+vtQw2oCWwl19l25
         Ad7BZN6G3ADhND5AulDw5DzRcqmBbVtLBxihU+hbFVvD8GJIjWvcJSdcnO2SxcGWy5j8
         0A4hlT9U0PPX97HJv/46UbHABxpOicStXNqu1W9MjbeaYJOpCT166I58MIWrvC7jpWoD
         N+tA==
X-Gm-Message-State: AOAM533fRpr6Xi58rZijJBHtQzPhbirI2w6BMoE5CF+Mpv4sE9urL9ru
	TbykjfP18fyLEg5PdFeNV2U=
X-Google-Smtp-Source: ABdhPJyjVdhhr6uGB6/WQYSE0verYuZ491NAK/8FNpzU2HmN8QMRml5t9pN3eonV4NQr+hIbgljLzg==
X-Received: by 2002:a05:6830:30bc:: with SMTP id g28mr542885ots.43.1620249001040;
        Wed, 05 May 2021 14:10:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6c87:: with SMTP id c7ls98244otr.3.gmail; Wed, 05 May
 2021 14:10:00 -0700 (PDT)
X-Received: by 2002:a05:6830:2244:: with SMTP id t4mr544626otd.125.1620249000707;
        Wed, 05 May 2021 14:10:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620249000; cv=none;
        d=google.com; s=arc-20160816;
        b=qXLKx+VN6Bmx0Aam/YRMcEl6imq1n72bnJzBj2Nc29lNuVQWcUZqs711Ke+f0s6dCr
         od0fP+JRcZpFj9IMyTQNffCaINRY772JshagepCmkrWREVdsgWwDRLxADpsr474YKk5G
         QBBTCqoT90n5KaLxXe8kYugnT22/NXQv0Bsc8D06IAUqb5RLMXyXXC4RsgiGhldbr/PF
         DlBkhcihMxIRmvcsjNxC0S+ShOncYo9PWWqOccG49kR7P5AONTHxH4ZjXG9jv1t+/Sex
         qmrHrkCkNeVt9y4VSXtr6uBEfWwLvqFS77ooOWesaUXzuWZauiwScBd2fufln5eKOhvV
         Af9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:message-id:subject:cc:to:from:date
         :content-transfer-encoding:mime-version:sender:dkim-signature;
        bh=ljqGh4vdZ4x6txKvkOy9TSMun4WY4aIky27Q4tklUF4=;
        b=e4z1/tpdz+rnVt1nlyQg0eP3zSz1o9pgDClmTw8I1mWYTLmCPg6lwsBd9IA+GIqR1B
         4U4wW825Bx6Pd/PPrLsbRyxssUj5T8tqGJy44XTds70nEFhlyglSadlOKe5JPBqS+gY/
         9tuZsOX+IYuzG6X5qB0QxO6NhZk0HV0w6FkQSZNvuOx+CyTgOCidIGqo47AzUlsYF9vm
         1l8CTz3wusKnIWNJj0yUbBaXEnx5LGCtellcByu9kWdfpo9QxuaercCVWtIYoL0XL+tE
         VrK+w05lTAUoTPk2ZZjrNfnfLMRBGGYRMAE/tYjGdSdmJ3SXydROmgEeSb5U+T5BiI06
         7fAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=gxir+p3t;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 198.61.254.9 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
Received: from so254-9.mailgun.net (so254-9.mailgun.net. [198.61.254.9])
        by gmr-mx.google.com with UTF8SMTPS id a5si30056oiw.0.2021.05.05.14.10.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 May 2021 14:10:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 198.61.254.9 as permitted sender) client-ip=198.61.254.9;
X-Mailgun-Sending-Ip: 198.61.254.9
X-Mailgun-Sid: WyIyMWUwOCIsICJjbGFuZy1idWlsdC1saW51eEBnb29nbGVncm91cHMuY29tIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n01.prod.us-west-2.postgun.com with SMTP id
 609309a88807bcde1dc493ab (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Wed, 05 May 2021 21:10:00
 GMT
Sender: bcain=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
	id B0F98C4338A; Wed,  5 May 2021 21:09:59 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=2.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
	(using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: bcain)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id 5F077C433F1;
	Wed,  5 May 2021 21:09:59 +0000 (UTC)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Date: Wed, 05 May 2021 16:09:59 -0500
From: bcain@codeaurora.org
To: Linus Torvalds <torvalds@linux-foundation.org>, linux-hexagon
 <linux-hexagon@vger.kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>
Cc: sidneym@codeaurora.org, 'clang-built-linux'
 <clang-built-linux@googlegroups.com>
Subject: [GIT PULL] hexagon changes for v5.13
Message-ID: <a81e116ba3d64aab8d379703bedcf032@codeaurora.org>
X-Sender: bcain@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-Original-Sender: bcain@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mg.codeaurora.org header.s=smtp header.b=gxir+p3t;       spf=pass
 (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org
 designates 198.61.254.9 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
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

Linus,

Please pull the following changes for Hexagon: they contain build fixes.

Thanks,
-Brian

===


The following changes since commit 
9ccce092fc64d19504fa54de4fd659e279cc92e7:

   Merge tag 'for-linus-5.13-ofs-1' of 
git://git.kernel.org/pub/scm/linux/kernel/git/hubcap/linux (2021-05-02 
14:13:46 -0700)

are available in the git repository at:

   git://git.kernel.org/pub/scm/linux/kernel/git/bcain/linux 
tags/hexagon-5.13-0

for you to fetch changes up to f1f99adf05f2138ff2646d756d4674e302e8d02d:

   Hexagon: add target builtins to kernel (2021-05-03 11:04:22 -0500)

----------------------------------------------------------------
Hexagon architecture build fixes + builtins

Small build fixes applied:
- use -mlong-calls to build
- extend jumps in futex_atomic_*
- etc

Also, for convenience and portability, the hexagon compiler builtin
functions like memcpy etc have been added to the kernel -- following the
idiom used by other architectures.

----------------------------------------------------------------
Sid Manning (4):
       Hexagon: fix build errors
       Hexagon: change jumps to must-extend in futex_atomic_*
       Hexagon: remove DEBUG from comet config
       Hexagon: add target builtins to kernel

  arch/hexagon/Makefile                    |  6 +--
  arch/hexagon/configs/comet_defconfig     |  1 -
  arch/hexagon/include/asm/futex.h         |  4 +-
  arch/hexagon/include/asm/timex.h         |  3 +-
  arch/hexagon/kernel/hexagon_ksyms.c      |  8 ++--
  arch/hexagon/kernel/ptrace.c             |  4 +-
  arch/hexagon/lib/Makefile                |  3 +-
  arch/hexagon/lib/divsi3.S                | 67 
++++++++++++++++++++++++++++++++
  arch/hexagon/lib/memcpy_likely_aligned.S | 56 
++++++++++++++++++++++++++
  arch/hexagon/lib/modsi3.S                | 46 ++++++++++++++++++++++
  arch/hexagon/lib/udivsi3.S               | 38 ++++++++++++++++++
  arch/hexagon/lib/umodsi3.S               | 36 +++++++++++++++++
  12 files changed, 258 insertions(+), 14 deletions(-)
  create mode 100644 arch/hexagon/lib/divsi3.S
  create mode 100644 arch/hexagon/lib/memcpy_likely_aligned.S
  create mode 100644 arch/hexagon/lib/modsi3.S
  create mode 100644 arch/hexagon/lib/udivsi3.S
  create mode 100644 arch/hexagon/lib/umodsi3.S


-- 
Employee of Qualcomm Innovation Center, Inc.
Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
a Linux Foundation Collaborative Project

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/a81e116ba3d64aab8d379703bedcf032%40codeaurora.org.
