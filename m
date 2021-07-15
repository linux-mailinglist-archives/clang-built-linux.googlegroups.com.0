Return-Path: <clang-built-linux+bncBCN7B3VUS4CRBPGLX6DQMGQE3E4QMZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B8923C99B5
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Jul 2021 09:37:34 +0200 (CEST)
Received: by mail-qt1-x839.google.com with SMTP id d9-20020ac84e290000b0290256a44e9034sf3567453qtw.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Jul 2021 00:37:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626334653; cv=pass;
        d=google.com; s=arc-20160816;
        b=XUvv/W8SbqOZhpTd8ezsti0zPPTJo7Df7Z4Oi73+lm3tZ2i+c8xBaQHnkUBInCLv1c
         aOD+fpKjufwSyOrpYlJ1xdNOP4E3YroZw9U4CCcVl4rGDjlaBFUmUmqz/Z7ogf84LK7S
         FRKnAUOSpT0W/NOgySb+x0te6H+5mZ0UE63hIdXK90FnbMkUSy1hkAUgMr3Gz757GvkB
         2q04090+xWpUtqCsJKvuePAlbXWen9233eK8OVYkSsVupPptgMuSR7cdZ2i6XE+JKVu1
         Y/y7KXKFR+1pRVjkUoUbJysQjoc4QlaWeYRUrvikyv71rmMildGqnuuYF2nMt3M2ZQHe
         0hKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=0cKtRiBRRuKMYnwZ6fzpPnGa0WaWNUvezlhXN0UPS/U=;
        b=Gu/6in3I1DnNvlysealrrAHxUAFQQ7lIooWpDbuhLRSTBZofPVK13+mHtN/uHg7cd5
         Np4Wk6pfdqgAHzi/uCpCvr84OrsNy1Hp0wxc4fm5qv5kBT5EkSD+SUdPFlxcCGq52NxX
         n3XHs1BCiDVDuknYYd0nSrp4UZzNDLzRgMa+vLbLUK1yNIejcNgBIAG28Wfda2X9j/XU
         EqJnl77IdaAx+Ugvx9Rn+0cJWxGz3NLX7tV9WXQhDzY4uac6uGiT2MjXEXQnEUx2nVZh
         8k55mBnAEgwXSMU4sgRfBUL7GO04eK3YtA5cWc1vgP9xWJeOrmswaNJ1lS7Mmsgh9oSz
         bcrA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lecopzer.chen@mediatek.com designates 60.244.123.138 as permitted sender) smtp.mailfrom=lecopzer.chen@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0cKtRiBRRuKMYnwZ6fzpPnGa0WaWNUvezlhXN0UPS/U=;
        b=IWnHNNZGGu0z74oPMQPj2uOf/1oOn5iIioLbZNtg+GtsJCVc3MYNXA0Dt/iNMhgl/H
         vDmZlteJkSgXQtZwKKz0yCHEf9noTHzMw5uafHnAbi/umBDcI7ZYn7KzFokd/hYAtaxY
         c6WjMXiqfbo1yBk5YluAEFkD39T6BM6+o5rdNFlPfHkMpnupsIGOgDLfiwRSJF+pE1LY
         8P2nwMGel5dHDtyQxFM93WF/YCUbU/3Gq9JHwIz7+ZQGzFq4ZhPH+xU6/p3e9Xap3sXT
         RpHYFyFJ3mvy/lX2ZO78Z98rmAlMO8DENPCUM8gjiKodGqYlB/fGPmg46J4CooegmDaU
         nwTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0cKtRiBRRuKMYnwZ6fzpPnGa0WaWNUvezlhXN0UPS/U=;
        b=Fm6CjfKRA9EweMzI6whs1DzpOnjaVJCO3yV90DIPZ3Cuv+ysue4XNEUx4GAdvwIHFz
         Hmqth4FjdqN9YBmw//PA4fyrWOEdXt5ZhxfacozklNbF6WytyHgpboZg0PG04vhKDmQ7
         mRdyu/17SGDW2rr5Sk/vqO5PvdRAVzfwtON8blyfnVoorTuayDJbkOTjzE8OvZRqrHZ1
         7dLwZidUzEnt5mi9jWMD0/T4x2THMg3RYO/sMOKWTWoy2mM8iNX0y83y2IFMY1JoYqiB
         b/C8b4IrhivHpdlEi6qOi1BrueLn6XG4avHEOOxaSCCQfEhOsinPd4tkmmfqnvpSM3xk
         ANRg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53358nzM/K2Iwo/sOuxzdlQ4pRsgGfcZR12PaVeF52KzH6I+YJHq
	c7n11A3/WP5Tt8bt3GgrdhY=
X-Google-Smtp-Source: ABdhPJygto8QLpHu3FC4UsObpMZEE9zeaz2WwEEqE6RxQCfpRe/ZPupThA22zXCMvdRYPD+7dlxzeg==
X-Received: by 2002:a05:622a:34c:: with SMTP id r12mr2777636qtw.196.1626334652800;
        Thu, 15 Jul 2021 00:37:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:1583:: with SMTP id d3ls4186823qkk.10.gmail; Thu,
 15 Jul 2021 00:37:32 -0700 (PDT)
X-Received: by 2002:a37:bbc3:: with SMTP id l186mr2598596qkf.67.1626334652351;
        Thu, 15 Jul 2021 00:37:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626334652; cv=none;
        d=google.com; s=arc-20160816;
        b=qF0xIKDP8NK8h0bXtm6aXq9Mq5La/thxppbWc703N0v/NozeFZ76TVFiSsS2wBX3g9
         96BQxEsSP9dDwYOhKx2LGIM7BDBmdGVGHM5ldHbAN8uKvU8gMoa/0WYahnbwBtXxA5lA
         YAaUhR5hPDjBHIfo5PvE+WTH1iBtlvh7fSpvaSJ+NIG/MINE/7ZvBfeIizV/XjNZi8XJ
         cJtqX1pTaQ8ciHZEoK+AuXzEsR0XSWB230F401VaZkgXfzy985o2WuVOPhkQB6zSs3nu
         pEJvbzUg5XvJo+I5bwqGx2BcG9USmx219LVmyoPc1pAfbdU/XLukGuGBefkWqBAmQmby
         guFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:subject:cc:to:from;
        bh=ToZfBe8kS0lvFzYISwayHbsPFm5t7G6SWdC4UdhfzCY=;
        b=Hgk3X7UDdEJbssvMGPPslrAiJHNTGxJjOAtPOfVUQil8/94opx2z8pmzJ+JEB37tcb
         YzpHzklO1CkqDmCtEAxbNBUYvrrUtWlwCFC//7DMaw7ye/RPk3l77OQ4YZx7w9IJLkq5
         pbJj0zlrSYQ97XZApSAdCPs/DeqhEAJAVpK3lTf3C0EEbjo1HEoDsQFyojtdWL66jiqq
         Pwu99tweclJzvYCw4dIUl8wBFupSm9sIdNm8X1Acgj5s4IPc1VNEt0sX6K0lli0Fx3/Q
         sxRme8ZL3op1NbtaXR4xtTgM7tKKh+0dka1bI0BmszYyIHYL0IjgzWBQSWsph7ZUJCWD
         Z6wA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lecopzer.chen@mediatek.com designates 60.244.123.138 as permitted sender) smtp.mailfrom=lecopzer.chen@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
Received: from mailgw01.mediatek.com ([60.244.123.138])
        by gmr-mx.google.com with ESMTPS id f6si48751qko.3.2021.07.15.00.37.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Jul 2021 00:37:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of lecopzer.chen@mediatek.com designates 60.244.123.138 as permitted sender) client-ip=60.244.123.138;
X-UUID: 6d577b4522f542c0af4e6c6b7242da3c-20210715
X-UUID: 6d577b4522f542c0af4e6c6b7242da3c-20210715
Received: from mtkcas06.mediatek.inc [(172.21.101.30)] by mailgw01.mediatek.com
	(envelope-from <lecopzer.chen@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
	with ESMTP id 1235068172; Thu, 15 Jul 2021 15:37:26 +0800
Received: from mtkcas11.mediatek.inc (172.21.101.40) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 15 Jul 2021 15:37:25 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas11.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 15 Jul 2021 15:37:25 +0800
From: Lecopzer Chen <lecopzer.chen@mediatek.com>
To: <lecopzer.chen@mediatek.com>
CC: <clang-built-linux@googlegroups.com>, <keescook@chromium.org>,
	<linux-kbuild@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<masahiroy@kernel.org>, <michal.lkml@markovi.net>, <nathan@kernel.org>,
	<ndesaulniers@google.com>, <samitolvanen@google.com>,
	<yj.chiang@mediatek.com>
Subject: [PATCH v4] Kbuild: lto: fix module versionings mismatch in GNU make 3.X
Date: Thu, 15 Jul 2021 15:37:16 +0800
Message-ID: <20210715073716.17477-1-lecopzer.chen@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-MTK: N
X-Original-Sender: lecopzer.chen@mediatek.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lecopzer.chen@mediatek.com designates 60.244.123.138
 as permitted sender) smtp.mailfrom=lecopzer.chen@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
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

When building modules(CONFIG_...=m), I found some of module versions
are incorrect and set to 0.
This can be found in build log for first clean build which shows

WARNING: EXPORT symbol "XXXX" [drivers/XXX/XXX.ko] version generation failed,
symbol will not be versioned.

But in second build(incremental build), the WARNING disappeared and the
module version becomes valid CRC and make someone who want to change
modules without updating kernel image can't insert their modules.

The problematic code is
+	$(foreach n, $(filter-out FORCE,$^),				\
+		$(if $(wildcard $(n).symversions),			\
+			; cat $(n).symversions >> $@.symversions))

For example:
  rm -f fs/notify/built-in.a.symversions    ; rm -f fs/notify/built-in.a; \
llvm-ar cDPrST fs/notify/built-in.a fs/notify/fsnotify.o \
fs/notify/notification.o fs/notify/group.o ...

`foreach n` shows nothing to `cat` into $(n).symversions because
`if $(wildcard $(n).symversions)` return nothing, but actually
they do exist during this line was executed.

-rw-r--r-- 1 root root 168580 Jun 13 19:10 fs/notify/fsnotify.o
-rw-r--r-- 1 root root    111 Jun 13 19:10 fs/notify/fsnotify.o.symversions

The reason is the $(n).symversions are generated at runtime, but
Makefile wildcard function expends and checks the file exist or not
during parsing the Makefile.

Thus fix this by use `test` shell command to check the file
existence in runtime.

Rebase from both:
1. [https://lore.kernel.org/lkml/20210616080252.32046-1-lecopzer.chen@mediatek.com/]
2. [https://lore.kernel.org/lkml/20210702032943.7865-1-lecopzer.chen@mediatek.com/]

Fixes: 38e89184900385 ("kbuild: lto: fix module versioning")
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Signed-off-by: Lecopzer Chen <lecopzer.chen@mediatek.com>
---
 scripts/Makefile.build | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index 10b2f2380d6f..02197cb8e3a7 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -386,7 +386,7 @@ ifeq ($(CONFIG_LTO_CLANG) $(CONFIG_MODVERSIONS),y y)
       cmd_update_lto_symversions =					\
 	rm -f $@.symversions						\
 	$(foreach n, $(filter-out FORCE,$^),				\
-		$(if $(wildcard $(n).symversions),			\
+		$(if $(shell test -s $(n).symversions && echo y),	\
 			; cat $(n).symversions >> $@.symversions))
 else
       cmd_update_lto_symversions = echo >/dev/null
-- 
2.18.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210715073716.17477-1-lecopzer.chen%40mediatek.com.
