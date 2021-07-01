Return-Path: <clang-built-linux+bncBCN7B3VUS4CRBQER62DAMGQEFCQZYCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id A74133B8FA8
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Jul 2021 11:20:01 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id q9-20020a17090a0649b029016ffc6b9665sf5630470pje.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Jul 2021 02:20:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625131200; cv=pass;
        d=google.com; s=arc-20160816;
        b=tKD9W+5EFmQfcPh7hwqCsQlDlFdkIrVGNBOOF091SIwb4eTihZhHAlDk6Ta1dsO6to
         Bmmk7XLVXHm1hi8KApRL0apzWrY0yEoQe/cMld2x68DlYAtVsx/IgTGl/EfdWXgQP8xp
         aawDuZOTUIsqtpmdbSyjS8qvtn+jRUkt/Aq8ofeWNj9swg/QBfwX5BbGQs4ppkpI10AO
         gACfrX9NDMM+oRqYPP3VnmajG/8Tez6RddQzt/KeTi/Nhc9g4R9uHMTPTyhV3PuxsOLw
         IQshS3KnndDhKx5wJ+uSzcfSgxo1hsNCwtRl3s0nQPzr+KAf/Dx3ao3DASodZR09QATm
         7QOQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=Xs3QbmNhpyu6boTXT0LrbYWmWNMKqjNbPm89Ts11Ze0=;
        b=g3YsjkBN0u/BpLFQxXxi4VjEOv+T6qsJyUP3eVTv/ipyloD3aSDHbywRi2jvXQX45m
         2Lpci71LvxoKYO/fPtfdXTYlXyz3OPR+rjieLpHyC2uMIJn2pEokBb+iTEE3Dc1WP/GN
         /neKIGPQ3ELkpM0oi7Tu8fRWyl55rEXkrm9mUXc2FgbF94iGZuI5qN9eJmdwZ5W1PNc0
         +SNPQqOfOaIxmermjH0JTlxgF9gBsneqgBigU93mbHVDO74Jg/7vTOWKVLejGoLtmj0a
         HXep7dKFADH3ftalK3JlFEAi0nE6PvfRIyDk6BzaJh/zmRk4SafrY9Zv36PbDDApGoJz
         Yy4A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lecopzer.chen@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=lecopzer.chen@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Xs3QbmNhpyu6boTXT0LrbYWmWNMKqjNbPm89Ts11Ze0=;
        b=jTwt0lGj6dNAu96sQL6MHVTuKP8E3jVnw4TaDunbnaMtRyH5VKJav5CW8WCT6cHhTb
         pZa3q3yCFiP7FazSBdhd7OzlUwmgOfgSnAlqi7PVT0Izvsim2ltIxyTozv8sn/oGvAV6
         1dGhu+KFaBmVjy3rVF7FjJZVdhQCNsVkK/bYrDPlByuVwyiGO8BGz0kEMklKqFPfNexy
         T0ClvyGUa62BEGSlEpzF2yP1wNypXVVBu016hnfWTQD6vufgY3XNtZgmM++6EJdSbJZ0
         +xnrsxM3GWUWniZJ83RISXglTt6dTL5evhqMO0xUHYEAURgxL4cuZDy6iOw64dlaqeB8
         W7yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Xs3QbmNhpyu6boTXT0LrbYWmWNMKqjNbPm89Ts11Ze0=;
        b=cNQMHj/fqp1BKcO0Y/8mGynWgIunJcT3/DADw4AC6S8K9kQ7etLMPKv2voD0rYRVFl
         Di25FKsQUqlsAT7aihrzCMEk31h2i/eGwjnSJUY4m//t+V2my4pINoQRjjJUC0S97JSv
         W+k9fFQpqCeXjZae/e0gBhmt9VMmboUvccaY7UM5Py8A8Sp/XzokXo2ujIe6rY66YoHO
         vypEFeONqaFUvg3oh3ZJ4VQBxyppbKqrKSvtuqrgeLSB9oZUREdN/TjnwCW7g3DDUbcF
         KDhCXwjQWva6uJWYvuhAPoAuFws6oYmWKY5Hxin0uVEqXQ1tIIIxEAbG5kcGQUWucYOk
         tA6A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531rcKAn7VJxa/DL+k42yUcWlbi9KtRymHVcUcPFn1fRav5gN9L9
	9XlAHeaTvE/CXU/dL3vvmcM=
X-Google-Smtp-Source: ABdhPJwGJicKvRoeTHeYW5Qug/fjw++U0728nOPRCARSjr6RZgLa6sj5Ts9OBT+jkA20xggq8Guwzg==
X-Received: by 2002:a63:77c3:: with SMTP id s186mr14006093pgc.267.1625131200362;
        Thu, 01 Jul 2021 02:20:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:5b46:: with SMTP id l6ls2825049pgm.0.gmail; Thu, 01 Jul
 2021 02:19:59 -0700 (PDT)
X-Received: by 2002:a63:500f:: with SMTP id e15mr21012161pgb.391.1625131199729;
        Thu, 01 Jul 2021 02:19:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625131199; cv=none;
        d=google.com; s=arc-20160816;
        b=T2Fxlzf7dxf2qGCdzqRkqqekyciGuByMxXpo4dS4ErO+myZRQvOQvAGQEeyzWpLxgB
         mK9DNetpQuKlZoIZe2iY35lxzAEHDtjRF25WB+D+Yn2UzrKe10gpgUGHEF4xvMJXJZax
         XBaIb+riOSSIAp/h2+vxKMql1g8mZDx95Wzw+q1RuxevwgCcCXCfC0A7FLIaOiWEg3V4
         9Y1eeivspEq3b76alP3JqM9VFWitGGbPzThXSiKL+jHEJteGYnPqpPDMaJ9fiqFv3rHL
         l9cFbCC/qJK+b7mO1v2wZnBQdefwgOI6e9NPIwDip9o43OxbXyvbfYFcLF4WTQ/tzx7r
         ph5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:subject:cc:to:from;
        bh=T6ulr9cOiJbIxQBb4xAOpEtyOSmG8rrPQGhXO0aDi78=;
        b=ylxo9DtQPfRtDt5KCPDVUyyOUQZbGeaSOwm6jaQ9+N+M7MsVg95DSZLKhtUUiacctV
         1S4/0BlDj2T1xdPCQoCprzzfdOZMLikn4FH1pVky5Fp3JQttjqgpxbNstglKxvJvF8ZS
         o+f/roQWi252i1dkZ905IVTPg/5W0rbLdqeRENeEhMiY7uU07rhwGL1iUi7KMskDPdYZ
         ydL2aGcfkBSE13fhXt/Begq6fmf+mcxJWLLzwq32SlkdhpwOgPR4CYuaxZ4tyD5LRtJ0
         4sGKqKnRIlm8gOyeiGRWSe8BbnIYGfTzVuVR6uxmtm13o7baxHmfkKqSDKC/i8oqe2MK
         LCzg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lecopzer.chen@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=lecopzer.chen@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
Received: from mailgw02.mediatek.com ([210.61.82.184])
        by gmr-mx.google.com with ESMTPS id r7si2325175pjp.0.2021.07.01.02.19.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Jul 2021 02:19:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of lecopzer.chen@mediatek.com designates 210.61.82.184 as permitted sender) client-ip=210.61.82.184;
X-UUID: 9147900c3edf4b3187cd0b6294cd4d85-20210701
X-UUID: 9147900c3edf4b3187cd0b6294cd4d85-20210701
Received: from mtkcas07.mediatek.inc [(172.21.101.84)] by mailgw02.mediatek.com
	(envelope-from <lecopzer.chen@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
	with ESMTP id 1776049091; Thu, 01 Jul 2021 17:19:33 +0800
Received: from mtkcas11.mediatek.inc (172.21.101.40) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 1 Jul 2021 17:19:25 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas11.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 1 Jul 2021 17:19:25 +0800
From: Lecopzer Chen <lecopzer.chen@mediatek.com>
To: <keescook@chromium.org>, <samitolvanen@google.com>,
	<linux-kbuild@vger.kernel.org>, <nathan@kernel.org>
CC: <clang-built-linux@googlegroups.com>, <linux-kernel@vger.kernel.org>,
	<yj.chiang@mediatek.com>, <masahiroy@kernel.org>, <michal.lkml@markovi.net>,
	Lecopzer Chen <lecopzer.chen@mediatek.com>
Subject: [PATCH v2 0/2] Kbuild: lto: add make version checking for MODVERSIONS
Date: Thu, 1 Jul 2021 17:19:20 +0800
Message-ID: <20210701091922.572-1-lecopzer.chen@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-MTK: N
X-Original-Sender: lecopzer.chen@mediatek.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lecopzer.chen@mediatek.com designates 210.61.82.184 as
 permitted sender) smtp.mailfrom=lecopzer.chen@mediatek.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
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

LTO with MODVERSIONS will fail in generating correct CRC because
the makefile rule doesn't work for make with version 3.8X.

Refer to [1]:
> When building modules(CONFIG_...=m), I found some of module versions
> are incorrect and set to 0.
> This can be found in build log for first clean build which shows

> WARNING: EXPORT symbol "XXXX" [drivers/XXX/XXX.ko] version generation failed,
> symbol will not be versioned.

> But in second build(incremental build), the WARNING disappeared and the
> module version becomes valid CRC and make someone who want to change
> modules without updating kernel image can't insert their modules.

> The problematic code is
> + $(foreach n, $(filter-out FORCE,$^),        \
> +   $(if $(wildcard $(n).symversions),      \
> +     ; cat $(n).symversions >> $@.symversions))

The issue is fixed when make version upgrading to 4.2.

Thus we need to check make version during selecting on LTO Kconfig.
Add CONFIG_MAKE_VERSION which means MAKE_VERSION in canonical digits
for arithmetic comparisons.

[1] https://lore.kernel.org/lkml/20210616080252.32046-1-lecopzer.chen@mediatek.com/
Signed-off-by: Lecopzer Chen <lecopzer.chen@mediatek.com>


----
v2:
- change MAKE_VERSION_INT to MAKE_VERSION
- remove $(make-version)
- tweak commit message

v1:
https://lore.kernel.org/lkml/20210630121436.19581-1-lecopzer.chen@mediatek.com/
----

Lecopzer Chen (2):
  Kbuild: lto: add CONFIG_MAKE_VERSION
  Kbuild: lto: add make version checking

 Makefile                |  2 +-
 arch/Kconfig            |  1 +
 init/Kconfig            |  4 ++++
 scripts/make-version.sh | 13 +++++++++++++
 4 files changed, 19 insertions(+), 1 deletion(-)
 create mode 100755 scripts/make-version.sh

-- 
2.18.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210701091922.572-1-lecopzer.chen%40mediatek.com.
