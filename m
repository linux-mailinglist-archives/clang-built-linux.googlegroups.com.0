Return-Path: <clang-built-linux+bncBCN7B3VUS4CRBT4V62DAMGQENN2EG7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F37C3B8FC1
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Jul 2021 11:28:48 +0200 (CEST)
Received: by mail-pj1-x1037.google.com with SMTP id z5-20020a17090ad785b029016ef9db92bfsf3059608pju.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Jul 2021 02:28:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625131727; cv=pass;
        d=google.com; s=arc-20160816;
        b=JFljiSjy8d/oco1+l04Cb1Uj8ZuyaEvtpSXDENhl6mRvXEXu7cFCmI6cB7Nwe3Ra71
         bD9yqHfIXo4E0cktpUGcOturjULisMcvGk6eKrAwmPiANvfXbZm2xQyl+dKzPEDaFvLw
         dRRwjAzsSUATBPKPNUGlCVCwTWCe8583858ADxEGEwY5l02N/n6AqZmgNw42K3lmsr5S
         w/QkGogOq6BqcHQsfUGqRPReP+bQsAUeEJEr5hGegsqw1cepXajZ2agigC5vWqpriA98
         wlRXP8H5oHI45bNcaA9TnCajUMg3vM3mkmYfKPzdwteqphljBRC6zRHSP7BoyHYDqTJO
         BifQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=woUudC0n2ffWXBgWMDciDqNK2qgnh7JefyTDqJIf9mo=;
        b=ymoZ0MRofMw7w/o6IQveEKRVhrSjvu2dnArDAFoh2Wf++naMA/5ZGWGMYQV/dIyGE3
         FMN33Zl/EIlQAXjThI4R8p5jgao+2QHaEq18V7Iy3BgMuAoxV1H+1zBt5WTphv9ii0nO
         VfkOq1AF4wRWU+Q0e5DkVqmXAj0/p4etSKUhGk3Xgxe23fNL9Gg25V9YTX+HvNeHI0g2
         K0SVrvHEw7EBQpvG6liu/sfXzD47VnRRNJr3dOhVDo8N0s3ioAJ1/Vpm/t4PD3o9ooNJ
         IxwYLkHTZ/jDJdgUTLK1k+Hsv1wxOOvIM3wTZJr2rQqqwpFTkt7RpyblIizEkD2jvGQr
         Dizw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lecopzer.chen@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=lecopzer.chen@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=woUudC0n2ffWXBgWMDciDqNK2qgnh7JefyTDqJIf9mo=;
        b=qKV/wzI8zjBvddF1Tb+0kwf8+kc2GBfDIYmVSPe741kx6ysFnVc2uy+hHETClyjqOl
         uxSghciQSmWOwdUXFuYhnKSzJ5Z+W7doKvkFQMKK+Vm4+egmRGPvjHP4n34COXu02tpJ
         YYE5kg9jSGNt7ZyF3t3wT2u0QbWHtMO/wkdBMZj+knZRZvTv5uALDM55Dhi2SAa/wbAO
         jXLC9yilw/Yogkgfp2ww5lPQOTesOy/9ahK3h5a0n/sRScChpJgCsaJ+znRRCebXKsh3
         2wFS1qNblyH4KvzWHRSJrPa9txgWSRtJOsmdb/E5Bzbm7iaWXtpog3nUpkkA3Lojbda5
         5Clg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=woUudC0n2ffWXBgWMDciDqNK2qgnh7JefyTDqJIf9mo=;
        b=IEZzMnQ0btm1fPevh+sCw2GazbS/T4N0pkTnjUqTa0IpBKlTYy7ciKiZMSQplCJZRf
         t3BEijUnD56Thn8ZhgZLBwnBzDZX8f9rhJQpWQ6rfAPwwfz+19u9UJTsdHb7YzW42NKq
         x8ZsOl2ERzh/zuRtXpS0Gdiv84XlT2IV59ZxS6IykV0ixDZvDEikVwHDFRM/S4Jg0oLp
         Ame/dTSqwBl0pJsVtcNMG9MGXKJzaskQTlOrm4ptRvKcy9d3ofcA0gTHw0PnpVcerS/h
         6mX0AXt7CebYqIsH4iTDDOR3pvHRhFY2ut7R8N5vvnAxcf2SK0Gg7/lfrs+cd8iNJWNT
         41pA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530dhIa9Bz1rsPGHOOkAaef6Njdu5/jIjaOrcwzMpioJLQva0Z0Q
	dXYFlJZ3CxWpqBEZDR6TaXQ=
X-Google-Smtp-Source: ABdhPJzOKslZwqdSGevTp35W985DLX2WoSbwVRSY+pY+V0C//OBoSIKJfHRAih/pzRF+IK79vYAy+w==
X-Received: by 2002:a17:902:b711:b029:11e:6480:258a with SMTP id d17-20020a170902b711b029011e6480258amr36791794pls.41.1625131727333;
        Thu, 01 Jul 2021 02:28:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:8410:: with SMTP id j16ls5715177pjn.2.canary-gmail;
 Thu, 01 Jul 2021 02:28:46 -0700 (PDT)
X-Received: by 2002:a17:90b:2092:: with SMTP id hb18mr18914505pjb.74.1625131726788;
        Thu, 01 Jul 2021 02:28:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625131726; cv=none;
        d=google.com; s=arc-20160816;
        b=Ba4DS+RWYesVJEW3NK7ry6zhjFyocq4UuQ9fN5+tChMCfmGYSQ7FRVU+DkwkYquQqO
         u+E7NXmKn5Aw0tMu0sPz05usZh4SK9HP1r/AgW28yidsBdt8bz4SdJcIPfWjQh1Q/EfN
         S7FbJR+Z2M7kkX8tIDaNxe914LYijCRXe/oluoSuwMRPuxO0+DYHQg4hihPbVFdAA0j0
         qQV8AyF1Cg7AuS1xZQQEUKm/BFxPOBH4/mii+Rdo9UjzKpktJtuG1ZxRSMpXqvpr1wiv
         WTUEIIMBlIL/G7OBQnSPNMAA/NApJU6NUCoI7mSsqum8/dR4gLZ/csywr08Lhsr0/UrH
         4ftA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:subject:cc:to:from;
        bh=CkPH/0ln6oSYvKVu7tFCcnZgN8ebPrJ6ifS9KkOonMw=;
        b=rEcsw/XBkRJe6qB0gkzI/uiqXNA8DW66TnFi9aKPtbzX2b7fUsOmBtjxuyh12bAzyY
         uAPO/5M9cASQuMiY3rkUJN81jXtPSoViR7MYxxU02purQKsyRUdub7C4Qik3v7duDIbE
         HB60exto6GuZ1tUUyNqStJa8Av4gcEnHq4uCTUISyYKLWqytjLlSPRylmlbyVqgqIhgj
         sTCOxPmEB5erqNZEhhbpMIKIRjip+Gl4QL3eQr2nscymKxspMKQfT1709/BozOZSevo1
         6QHu53nVsqQ5/k+HlnAZQ6HXz8q1QION43IamiKXwTwp+GREw9T1J/u9vn2o0d6bsWP9
         WTcQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lecopzer.chen@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=lecopzer.chen@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
Received: from mailgw02.mediatek.com ([210.61.82.184])
        by gmr-mx.google.com with ESMTPS id o20si2689724pgv.1.2021.07.01.02.28.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Jul 2021 02:28:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of lecopzer.chen@mediatek.com designates 210.61.82.184 as permitted sender) client-ip=210.61.82.184;
X-UUID: 84dc078a9af345b696e109dd826423bd-20210701
X-UUID: 84dc078a9af345b696e109dd826423bd-20210701
Received: from mtkmbs10n1.mediatek.inc [(172.21.101.34)] by mailgw02.mediatek.com
	(envelope-from <lecopzer.chen@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 934752623; Thu, 01 Jul 2021 17:28:44 +0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 1 Jul 2021 17:28:42 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 1 Jul 2021 17:28:42 +0800
From: Lecopzer Chen <lecopzer.chen@mediatek.com>
To: <keescook@chromium.org>, <samitolvanen@google.com>,
	<linux-kbuild@vger.kernel.org>, <nathan@kernel.org>
CC: <clang-built-linux@googlegroups.com>, <linux-kernel@vger.kernel.org>,
	<yj.chiang@mediatek.com>, <masahiroy@kernel.org>, <michal.lkml@markovi.net>,
	Lecopzer Chen <lecopzer.chen@mediatek.com>
Subject: [RESEND PATCH v2 0/2] Kbuild: lto: add make version checking for MODVERSIONS
Date: Thu, 1 Jul 2021 17:28:38 +0800
Message-ID: <20210701092841.1419-1-lecopzer.chen@mediatek.com>
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

Resend becasue subject is incorrect.

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210701092841.1419-1-lecopzer.chen%40mediatek.com.
