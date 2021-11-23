Return-Path: <clang-built-linux+bncBC53FPW2UIOBBOME6GGAMGQEYLKJASA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D8084599A6
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Nov 2021 02:22:02 +0100 (CET)
Received: by mail-lf1-x13f.google.com with SMTP id n18-20020a0565120ad200b004036c43a0ddsf13302778lfu.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Nov 2021 17:22:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637630521; cv=pass;
        d=google.com; s=arc-20160816;
        b=Sk02FJZS3vB8lPliu1HGPs03Zkdo9N1Ff++KAS5+tutcyzT32HGwrxsA1gjxpk5AbZ
         k/8rna919dLyqjhmRpScgCcNp3RcmTr2uUB+KVxarysyY1K+bkHlu9KxP8Grx/XeDjcb
         q2+V+2jKXCnrZGPcTMPYtJW3F5AVgVh3WVYHQLUuEWnHDY2mhqOqYWnDAmRX+bsbAAnB
         m5aEsOHoNwiezMN3a2Z0DUKdQ09jbihYZyldbbBvhcv1NCdSdzkmfgV8368TUYqp3jbP
         8Ka6RwkXER9maECRjuR2tBS12nTU8LSVEiFdPew/UK0Kk8vC+YMI0GsEIyV/r9vLscxm
         mWYw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=xSkpXu0oJbCKDY3iCsQP0ziZ5VuOOhCKlXqj705iCtM=;
        b=fBKzfJhBaF9CZJeVr4tjuwtaBrFgudQx5TtFTvxpjGRHb5C1CxMxEvvO1B9DsOGgKW
         qgMIainY1lqeRJYLM+cr6OIeJts0fROqV2g6v68vT4je36oJ3LiqHDTPgD0ITcnrdUmW
         +M/h9IYeM7YgSc+XWFUdcll3Oty0m5tH2tR137cle5WKzZJxOAKKHAXTcxBMsMA/cW+K
         p5ygcAUnUrZX2xYzNiA25y51CBBgpUvaU7HMwfEumOLtyL9uKArUZzVxhukncMzcmtDu
         ma/HYCk5qydbc/Zj/zwBlM+TfRmet+7va0lYAD+f6aDU1r3uZPcP9E7QXRkXDA+v+cVA
         u+8A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=U4F7MZki;
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xSkpXu0oJbCKDY3iCsQP0ziZ5VuOOhCKlXqj705iCtM=;
        b=MtQz9gxyiO/jxT1rotaovBbP+xVf03tWYgBKdgdK1FVGVLWgRr2QeQGZ+EzkPHpXoa
         fHTkYoxeyGeYWelA6VLRC1kdTbh6+FDVoD+bucW7DYXmPzHkqC7DrD02H/h/Rf/WNuXW
         ayfIxOIQb5zJEeVIL3DsGdcR5k/rdRNdD1UIUnJXSe74HmC5jgUtus929RP0DaND36YK
         hLoE04hBN5qyGd/1+knF2OnrD94revnVb9NS1hx5POVdh4PsddP5dCqILOq3yq+t+GXw
         in9UXwVsZ90RihMuOTGEENOJE6VH2W/KhTyWG1Qy5Vt5HhsuQSuhp3fNRSA7rp2/d5kq
         pj5g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xSkpXu0oJbCKDY3iCsQP0ziZ5VuOOhCKlXqj705iCtM=;
        b=ouyC/0cG8VTzBc6WxByiY9Av2LAwA6hfIC45UEpbUxf2TjnYzJW9zhC+QOQQFF1WEz
         m6qh9/fC3fyyAQ1cAVWm0urDmNYR686CKpJ2xuxr2HmRwjcw89tQqYLQH2H90psubx+x
         9RValiKwMbAWVRJ8ImRSqxe48jNfXPFWkfqH17Z+KEeZpY6pqJSTEzx9RYaWVyzTJGRw
         tOR4N8NbUQKXzd0SJSQVuUPeDrdaQTePLOubu8yEnZFtk3KDtqO4UTVmOj3+D9QlwXwQ
         IUIKoSX8UGYeWaDkilRyv+4ljDrCvlOlbLTpz/dwJ68R14Hc3B8nThVbeJBxvuHTapLw
         zssw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xSkpXu0oJbCKDY3iCsQP0ziZ5VuOOhCKlXqj705iCtM=;
        b=iw2VzWH6s6s6yXqnadpoMBla2oWXxbvdhKj7I/UNys8F9DRM8T3G6LhZtj9u2gxf1P
         U4NrlET0XGG62eXmt7vzuj8O/6Zz9H3cROpDbioAoU5y/ymBp08PhTh0Va4LFXnCkye8
         56trDZSt67EQfb/hyAMe43TslG3YrSUolORGne8bt+rszHV5idn+GZfd+vYt4HVr2848
         6tibtrwJhFtjGCQd3tW3LkecA5Y20ZDSNo4/JVjpN7t9hli2hkvbDedDCOtGAnMcOJ5T
         A7yWEr1XPU8bsvlhFQ0UMffTbewL0wunF/JnpKmwQidXWIfcWRrnkPVVf23xCtH5LppZ
         nS5w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531xlmqQQlzq9nnO6S7fax07DWSTpEDxbyNE1ZAEe7SxFjousi+Y
	u5VV6af0kipEw/XKYk4hEa4=
X-Google-Smtp-Source: ABdhPJxC207X7ABpH3rN/Sf3i0RKSgGGz1qqRnWf6xV9MttCd3A4wH/0o6SDdzXW3oqAzrLJnISEYA==
X-Received: by 2002:a2e:5850:: with SMTP id x16mr882908ljd.122.1637630521399;
        Mon, 22 Nov 2021 17:22:01 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3499:: with SMTP id v25ls1774539lfr.0.gmail; Mon,
 22 Nov 2021 17:22:00 -0800 (PST)
X-Received: by 2002:a19:48d7:: with SMTP id v206mr875006lfa.102.1637630520290;
        Mon, 22 Nov 2021 17:22:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637630520; cv=none;
        d=google.com; s=arc-20160816;
        b=k707iD6tyg1CdydYLxD4PNrCG6UsCWgKZxY+ia4bfvvnUTDtBV4CCHN9kKAGY4Xa0H
         AKuOYuUBvEniayjzoRRFcD5McVCmFxRoD6cXfnPd9l6MbRXPVqxRTM722WnL0pkftLEM
         +LZpZitznP9uv743mYIPEiDBP1pF8Qkok4pqL8VY4VKFCcS49ezXXv/eGYurCD7ZGxy6
         pTD3BgKI1lOqGu7WFER5R3T+Ce78j5rqTsyBnUIl3hZPaK/9p6ln2tfKxg8VDcWVBgjT
         wnfhh5iyOekwPzMPd3wDWOW7+mAMxYno1cBGj6iwSIL4AJiVp8vJxHyd0NZzEvIfK3T0
         yrnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=gZ9md7IXKlTlW4P0LjGpylKt8hdBh3uewFJJc7M2vWo=;
        b=QAvvpIvfUE1NukR+tN52/2Jh1iOtHb4zccUihGLFC92a2dpFJSto0Yz3+MBtOh/Af6
         C8dp0NE+kQsTxn8JHd9tqYTg2YucHKywyddju8kJo2cSHQfITkMHvoBpnY67Q3YPpncC
         zj6TAqdXgXUWEPo3/wiz098vrLY2iiHa45qMpCaoyIfLNsGHeHndnevMSce9Hm8BwSSQ
         z+YL11ZmdRJMn5H136+wAeENh41NkrQv/z22PvrltszqDmUGUH5P0A6rK9rQW+HX3k78
         4Ia+XG6jRaFBYgxyT+nZORcF9Qprs2KQXum4WE0yevg5kRb8ZAOaba+TStt8riOWxzhQ
         VvOg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=U4F7MZki;
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com. [2a00:1450:4864:20::129])
        by gmr-mx.google.com with ESMTPS id d18si643832lfg.3.2021.11.22.17.22.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Nov 2021 17:22:00 -0800 (PST)
Received-SPF: pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::129 as permitted sender) client-ip=2a00:1450:4864:20::129;
Received: by mail-lf1-x129.google.com with SMTP id b40so86829488lfv.10
        for <clang-built-linux@googlegroups.com>; Mon, 22 Nov 2021 17:22:00 -0800 (PST)
X-Received: by 2002:a05:6512:1324:: with SMTP id x36mr807662lfu.141.1637630520104;
        Mon, 22 Nov 2021 17:22:00 -0800 (PST)
Received: from HyperiorArchMachine.bb.dnainternet.fi (dcx7x4yct-z7s--tg8y8t-3.rev.dnainternet.fi. [2001:14ba:14f7:3c00:50fd:36ff:fe05:e039])
        by smtp.gmail.com with ESMTPSA id c15sm1304038lfb.40.2021.11.22.17.21.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Nov 2021 17:21:59 -0800 (PST)
From: Jarmo Tiitto <jarmo.tiitto@gmail.com>
To: Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Cc: Jarmo Tiitto <jarmo.tiitto@gmail.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Bill Wendling <wcw@google.com>,
	Joe Perches  <joe@perches.com>
Subject: [RFC PATCH 0/2] pgo: fixes for LLVM-13 and kernel v5.14+
Date: Tue, 23 Nov 2021 03:21:35 +0200
Message-Id: <20211123012138.160532-1-jarmo.tiitto@gmail.com>
X-Mailer: git-send-email 2.34.0
MIME-Version: 1.0
X-Original-Sender: Jarmo.Tiitto@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=U4F7MZki;       spf=pass
 (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::129
 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;       dmarc=pass
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

Hello!
I started hacking again on the kees/for-next/clang/pgo tree
now that the __no_profile and noinstr function attributes work.

Unfortunately I noticed the current for-next/clang/pgo tree is broken
from v5.14 onwards and the instrumented kernel fails to boot.
I accumulated following two bug-fix patches that I hope to get reviewed
for the kees/for-next/clang/pgo tree.

The first patch enables processing the raw profile data with LLVM-13 tools
and the second patch fixes a issue with the kernel module loader.

A offnote: I have plans to publish my kernel tree
on behalf of the related pgo/modules project. It is an redo of the  
modules PGO patchset that I sent earlier this year.
I would like to get some eyes on it. ;-)

Jarmo

Jarmo Tiitto (2):
  pgo: Update .profraw file format to version 7
  pgo: Make module.lds.S linker script to merge __llvm_prf_ sections.

 kernel/pgo/fs.c      |  1 +
 kernel/pgo/pgo.h     |  4 +++-
 scripts/module.lds.S | 33 +++++++++++++++++++++++++++++++++
 3 files changed, 37 insertions(+), 1 deletion(-)


base-commit: a15058eaefffc37c31326b59fa08b267b2def603
-- 
2.34.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20211123012138.160532-1-jarmo.tiitto%40gmail.com.
