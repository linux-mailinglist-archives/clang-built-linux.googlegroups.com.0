Return-Path: <clang-built-linux+bncBCN7B3VUS4CRBQ6A6GDAMGQECE2TVNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc37.google.com (mail-oo1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BCC63B81D9
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Jun 2021 14:15:00 +0200 (CEST)
Received: by mail-oo1-xc37.google.com with SMTP id v2-20020a4ae0420000b029024c90af1433sf1300042oos.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Jun 2021 05:15:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625055299; cv=pass;
        d=google.com; s=arc-20160816;
        b=sR5KiTKQzaoVh5GLHOisuzz+St5UvdCH3d6q3huocn5Isw4/v8kYwsTipRq2FXEEmP
         IWQGJe2/vImr/dhFyXtHJxBz/DDEVlNBh3meRvnk7/iXPI+UFSztmDFl3qtJKNGlblVF
         VVaejFzAbX80MV0H0VSHjQ1AR6RpFyiUnDRRMGQcltMNnbzYg5HUB6oxy873sEK9sCDH
         r7WKoJtB2PZxdSteXkHTV31IgjJmlHuRX9RIkD0frnsUWhEPx51CPOWXpwFPU3QaIV7o
         qYtM3UUrNZIgRvudyyBEJCDuSkXNGiT4wLa909sxA7UWhi7vBb1ib67veevpnx6O2Ir5
         hjFw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=7QxK1JUZ9d8kpN12z/3M/rpgciTG/8stSI6fxeHqZ20=;
        b=ubEbOkM4I11Y4jpZeL2mYVgDio5eBMjFplL7gOuHp1MXKkTj78GENbE75qvN7NziQO
         1GG8HX1Wz2RqA0oOpTBz/xaVL0eWD4+NGjtHwiDfKpK2HRoQSpO5fKMi4/LZ9yiz4ynW
         5UQHTFQOqC/WEZYgk+JDz0QEve7lbyXeq/R0bwxFglngpZZIwFjOm2hRJSUrzgDfwYDA
         5/kflOfMfwaErBD+RWNN5Xo9LRSq1/1qHFDuwZwDNceeZaN5l0ZonXhdzX6vdfL9ERGN
         I/wQZlUiwmS9B/bNGlQgxZbZJaHBTeWseIC+OmA5WX5jmUqUkNxXuWjqMOhPP06WJenJ
         DF/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lecopzer.chen@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=lecopzer.chen@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7QxK1JUZ9d8kpN12z/3M/rpgciTG/8stSI6fxeHqZ20=;
        b=S75TnpLP7d0rQA0RXp74Qrjn8gralHjq0JOi9lPWbBOf70F0AamG333vhXpbElo8Fv
         4lB5DPXRzK9gk18b6kl8b69HuKWo8c0N8xb4Et4QJz5VnrM+VWEhigQUtd61VtFOw60m
         LYPXzC44gG25PjRe1Z/hd4cWYy9x+tR2SKV8s7sIaHOyOnvBNDyy7piHHcWh29sxGMOn
         GO/+XJyKEM8IghJGp/wckuOCoRNeuHsxBTj39wZWYO+o3rVMIK9ZWpS/pgLYoxPBvX+9
         Y4yWcjAWCjt0Ne6vfFg4t2Iw0ZTAoASuP1XpyOyEpWHQ9yqLX3LCwF2trgtlYx9P+GDW
         KkOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7QxK1JUZ9d8kpN12z/3M/rpgciTG/8stSI6fxeHqZ20=;
        b=EgTYOwkt96Dh8zFp76+K47awQ1H2W2Ql1Dzwjp3eYp0EpBLFOlWkwXzxBzf7IjVPFl
         oIgxHafk3TA6L+h8IGn6omFLFi+3OKjAie7xS0URxiuWlXvbh+/AJcVRTeAVa4AsGbo7
         KUmheGU5VBXiUzvNNAaTPX2eMxx0Zl17qn7JZmWvKWC1AP8bjxDAbBV6xtMo2an9uoRK
         raOWBiSu/6f06HM8+6VcEXxbcG8f2we3WyKd87pG/cyHyudykFchhTHmZMB8XpIYaVRw
         JAV8ytF7uvXznLh8k6Zj4vH2nSCrdsHHXn+Ts9l/76uEn6s2L4d5EoU+GYeXKUCljw23
         N/Fw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530wkQg7zxFvFZcXZnFlde2CfUgD+OMTBUZH3cAJnTqzo2e6s+h0
	vnExplRqKa3Ci+GlcJmV9pM=
X-Google-Smtp-Source: ABdhPJyVIBtGDbeLW7M5LKJDnGpQnmYARdF83VQNG9WqkjRNP1h36S/aRSzYdCoR6whCzSIJzDQxAA==
X-Received: by 2002:a05:6808:aa5:: with SMTP id r5mr25164135oij.76.1625055299378;
        Wed, 30 Jun 2021 05:14:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:db5a:: with SMTP id 26ls179285oot.9.gmail; Wed, 30 Jun
 2021 05:14:59 -0700 (PDT)
X-Received: by 2002:a05:6820:3c2:: with SMTP id s2mr680206ooj.83.1625055299009;
        Wed, 30 Jun 2021 05:14:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625055299; cv=none;
        d=google.com; s=arc-20160816;
        b=Kb120Wdchh/2J7P17oIMn9NX7JRbqS54YzqMEUYccuA7yNgDNNqD5t3fA+oqef3dpP
         xA24TLbYpdZSRCzemWw587fC+/n+nUphhObCCOHasAAxh90NHzXgxKvuYEAIQPzGKf55
         28bumWPRqSMEuexHoNHOQlFuY46hlARQS05O4Gml9ltC7XHTXkXHiyprMkgUB/D/HcLX
         mgR7DLZbil7ZFz/IjYkt6z82eXiP1iTsU0e1h6t9sipGtgX88FvR0wZs6Bc5bYNy2AuI
         PIygCzqiYHti72agkzsubGbJWLn03WFhgJc1NqXpou8xT5yavAGCs6arcVeTgcPOdzB+
         718w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from;
        bh=RTRbi5+eoAPQyCfYs83Oro2O0C8iYmDBbZ5lA3LJZg8=;
        b=zkSrB30YSeKRXmMj0E9wZ/+SxP9TZhEE+E/rz3vTOQ02JULgWDnTRwdzW5J+6UEyQa
         mBcA6oNzZGafN8HBumffU2S1A2sexEYcMffzh9Hl29/QWQ41wVNqngAru0EurEWrsJi6
         96Jf9hagSvBP4CUu89A7dNmXfvRL/4QhDrTL7JZDUHI1vCrv78kaMZwAO72XNF/Xe05z
         ShZ2ABMHBdMnVf+6PtQb5ev0i55KOqcsL//f5N5FMtWMGlu2hFBN+xXhzrw05UohtI3r
         IGK5WEs8/ey6586WOcApbzU+3yrDLZ4WBqxI8pHh01Yj8+yofbyaX1pM/zhCQDTmEwFA
         BGpQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lecopzer.chen@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=lecopzer.chen@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
Received: from mailgw02.mediatek.com ([210.61.82.184])
        by gmr-mx.google.com with ESMTPS id u79si1666221oia.0.2021.06.30.05.14.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Jun 2021 05:14:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of lecopzer.chen@mediatek.com designates 210.61.82.184 as permitted sender) client-ip=210.61.82.184;
X-UUID: 16c61951859943f39f6e4523d853573e-20210630
X-UUID: 16c61951859943f39f6e4523d853573e-20210630
Received: from mtkcas10.mediatek.inc [(172.21.101.39)] by mailgw02.mediatek.com
	(envelope-from <lecopzer.chen@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
	with ESMTP id 1114671309; Wed, 30 Jun 2021 20:14:54 +0800
Received: from mtkcas10.mediatek.inc (172.21.101.39) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 30 Jun 2021 20:14:52 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas10.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Wed, 30 Jun 2021 20:14:52 +0800
From: Lecopzer Chen <lecopzer.chen@mediatek.com>
To: <keescook@chromium.org>, <samitolvanen@google.com>,
	<linux-kbuild@vger.kernel.org>
CC: <clang-built-linux@googlegroups.com>, <linux-kernel@vger.kernel.org>,
	<yj.chiang@mediatek.com>, <masahiroy@kernel.org>, <michal.lkml@markovi.net>,
	Lecopzer Chen <lecopzer.chen@mediatek.com>
Subject: [PATCH 2/2] Kbuild: lto: add make version checking
Date: Wed, 30 Jun 2021 20:14:36 +0800
Message-ID: <20210630121436.19581-3-lecopzer.chen@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20210630121436.19581-1-lecopzer.chen@mediatek.com>
References: <20210630121436.19581-1-lecopzer.chen@mediatek.com>
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

LTO with MODVERSION will fail in generating correct CRC because
the makefile rule doesn't work for make with version 3.8X.[1]

Thus we need to check make version during selecting on LTO Kconfig.
and the suitable version should be 4.2(40200) which release in 2016[2].

[1] https://lore.kernel.org/lkml/20210616080252.32046-1-lecopzer.chen@mediatek.com/
[2] https://ftp.gnu.org/gnu/make/
Signed-off-by: Lecopzer Chen <lecopzer.chen@mediatek.com>
---
 arch/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/Kconfig b/arch/Kconfig
index c45b770d3579..1571957bade5 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -632,6 +632,7 @@ config HAS_LTO_CLANG
 	def_bool y
 	# Clang >= 11: https://github.com/ClangBuiltLinux/linux/issues/510
 	depends on CC_IS_CLANG && CLANG_VERSION >= 110000 && LD_IS_LLD && AS_IS_LLVM
+	depends on MAKE_VERSION_INT >= 40200
 	depends on $(success,$(NM) --help | head -n 1 | grep -qi llvm)
 	depends on $(success,$(AR) --help | head -n 1 | grep -qi llvm)
 	depends on ARCH_SUPPORTS_LTO_CLANG
-- 
2.18.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210630121436.19581-3-lecopzer.chen%40mediatek.com.
