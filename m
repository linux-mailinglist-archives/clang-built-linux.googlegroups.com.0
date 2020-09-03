Return-Path: <clang-built-linux+bncBCIO53XE7YHBBZFKYH5AKGQETJ2LLRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 400EF25B8C9
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Sep 2020 04:31:02 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id e4sf846704pgv.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Sep 2020 19:31:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599100260; cv=pass;
        d=google.com; s=arc-20160816;
        b=v7amMJoefhtS9xLSlKstreXIcdVY4mBlnW2p0cuuXapkbmNophKz9Zm+L97NzgnMR/
         RaZjN8eoHoO/mz32/UT/geWR8v1QAxMh/DH9w2CqwNI7WmfJaJIp3asmIyWuwdPryMck
         VZZqd4SPrhq0yMfNt6KuDh4fwnZxbi+k4CUFSLUvtfmOHMIHO0evswiizvrKtG93yPmu
         2neqAgp7mAcotcXwe2rLYz2Ne8pG3ttTM0PXKeQn9kyRxHI4O51IHyTusTs91mAr1q1q
         UNeN4bOFAHwXSGoMJODvZOLG1uyaevEO5a4AErWG3OQPLpqXC3+cfEG0HPNmIBH2IwoZ
         kACA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=ZJcBG+HBb09ugdgcYPOXjKkvAA9TL8+uGegJzHmhJhM=;
        b=X2r4qjUfsYOwh9lQr2wlyCGQLPfDVmX2MNVbp/y3fKn7+EpJhn3IJnOOwsT3TgPstc
         LOvZxS6BOxYViM0OyHtaNLZX45VZo77RwuyJ+YWGzt4IaLC4qtZVnXPVojOkssplBR59
         1FyTzqSwI4DMnja4DnOITip7Gz1MXIKYuo6LXe3s8oM1m+EPkWQxEmLw/bLbb+cbI6EA
         0BFqC4s1FdqDtErxqVf7/xvp6siJTrx1Ed2YJrdCB4U8YfuTi7XJfjw+aOtj3DnRqrsw
         RxZtJ2hgM7BzbgdGInTVSjtlDTEMNXqJVq7ivAt7PPRuH0/K+LgZ8j+s1Tw0R1ihlbRD
         9yMQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.194 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZJcBG+HBb09ugdgcYPOXjKkvAA9TL8+uGegJzHmhJhM=;
        b=Vp7ft6EakL7+z7ez7jlZRs0bT5C5XTJna82+WovoPdlBlYL+9dtv50MQnzgtNbeL4W
         deFWgSCCIG5Bcp4jLDlW5/y8gTvQmTO/8PoCJqBjNzSAo0Uy3gc5My/rvurh1QKf/RUq
         KtCBJTa1lg/4QLOe8KB+p6S6QKWtGgft2e1DLqiqJ/ko+1+foTQT1Tt+GpqojnpBf04C
         EQgLD2nVOG4abgG3E+PPJS/zMoHoeslgwWzKvNKtfO6dXEEAZ3fGbhtLyAqiOZgyDbEC
         5ay0nZbk/oRD7htXjT1jZa4yZfRJMJswqLs8z3K2REsGPJ8p8XBZF+zLcF8yRXEpvFD7
         EAzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZJcBG+HBb09ugdgcYPOXjKkvAA9TL8+uGegJzHmhJhM=;
        b=Ri1pKYuswCPBv+Tu1/VkqNDFFB+YLXT68ki4Pu/Aveug22urPXgONC36pw7EBOn+OB
         ntc+68XZDx1PBC9yt3oZdcbxS9txbBsrReghHbR5nFXdb6ORzUy8NyNU6jjlYqSfa9DY
         tpVFgcsMhYi+RNtqpN8n624F1Yev/IUsUOycO867RYOSfdU3VIMoaF9hsPftJwxbG5x+
         ZcIInogD2RRNTRJ9/AjKqAQXHBVKPo5BBgOEG/R8+Fc0d++MGukGj4UhQHAMoPhEg8OL
         Cor+axcvKkifHLHObKDxQGIC/Fcex5IFrKVk9ZVJ84OvxurQPPaZdONevCP/DUxa8kpw
         fbng==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5326noEM/kE/UM74hKPBgWmpV1rAtbCCWhJYh9FS/0XmrjPxLsLY
	zHbH+ZTNxDzcHuz4ZqJ+A4Q=
X-Google-Smtp-Source: ABdhPJzoErIXOcTlyquGXk8PkYRuVvjMKNGqWekl4R94uzPKHgumZWUKMDjy1wXwh/diwllLqvpxOg==
X-Received: by 2002:a17:902:ee03:: with SMTP id z3mr1435576plb.68.1599100260493;
        Wed, 02 Sep 2020 19:31:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:8cc7:: with SMTP id m190ls1750516pfd.2.gmail; Wed, 02
 Sep 2020 19:31:00 -0700 (PDT)
X-Received: by 2002:a62:7c16:: with SMTP id x22mr1485150pfc.190.1599100259941;
        Wed, 02 Sep 2020 19:30:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599100259; cv=none;
        d=google.com; s=arc-20160816;
        b=zwiSaJCBV6njLW6UdGpL68Tgn5O+c3ZLG0aDCGocrhsymVk/nOSgE6z4Le6DGb7sY4
         SbRz5k3m7SxQaIiko+Txzwj68IgtO/NxVabbNtCA/KEA1j/jDYbqVXA0rmTgFajadm9t
         ALlDBSlBQiYWVhIQk+yXU5YH7uZQsw0gnhANy5npFFhMg5bLQIRjc/K5oSCVeRlUa7h4
         OFdUW2P4kbHrhPndLL+tf8f7OC9eUZ37IGeB0n8RvJBzEjGimJapqTPBinKSS7G+47OJ
         MBe/M/VKvTHPzMCaWMn2LTySel1/S9DTxCty4ycpuDiOARkoVMv9PrCBmJz0lh/piKd4
         jIvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=My1dWVOZNO8rUxT8hVhscsPzF5firvUgKMy4MK/wYWE=;
        b=j/rYYmAinOmRlsYToaD17Qefyn25UCbOPlZjAaAULurxBWzqVyAQW2+T5ccHNRcrxx
         vml/bgSzC6z5Lucvbpk2itCiAnndN5duUdkDmNZekkHJSfT47b9JUXhD9UyyCkwAWbsM
         uZREG16NkUa9APQ50u7vDyevHD15EtKfT7sp1UNZpjlfE0/BtUHXSN9QCeOhmPHTtfkS
         oPCidh2gyQ3T0DVf+8P1d6S6R671IfEXb2YvFtECcfpOuImmBR3g1FinGy/CHj+06H9W
         sKM/mlRoRRZp95IHCxAxBcG5zsFaVTuQABaBIC2g2Ii7JIgXe/8jyBneYJ/ZOw7thvHt
         SMWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.194 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com. [209.85.160.194])
        by gmr-mx.google.com with ESMTPS id d60si332097pjk.0.2020.09.02.19.30.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Sep 2020 19:30:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.194 as permitted sender) client-ip=209.85.160.194;
Received: by mail-qt1-f194.google.com with SMTP id n10so866163qtv.3
        for <clang-built-linux@googlegroups.com>; Wed, 02 Sep 2020 19:30:59 -0700 (PDT)
X-Received: by 2002:ac8:3aa3:: with SMTP id x32mr1236626qte.327.1599100259054;
        Wed, 02 Sep 2020 19:30:59 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id g18sm977664qtu.69.2020.09.02.19.30.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Sep 2020 19:30:57 -0700 (PDT)
From: Arvind Sankar <nivedita@alum.mit.edu>
To: x86@kernel.org,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	clang-built-linux@googlegroups.com
Cc: Tom Lendacky <thomas.lendacky@amd.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH] x86/cmdline: Disable jump tables for cmdline.c
Date: Wed,  2 Sep 2020 22:30:56 -0400
Message-Id: <20200903023056.3914690-1-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 209.85.160.194 as
 permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

When CONFIG_RETPOLINE is disabled, Clang uses a jump table for the
switch statement in cmdline_find_option (jump tables are disabled when
CONFIG_RETPOLINE is enabled). This function is called very early in boot
from sme_enable() if CONFIG_AMD_MEM_ENCRYPT is enabled. At this time,
the kernel is still executing out of the identity mapping, but the jump
table will contain virtual addresses.

Fix this by disabling jump tables for cmdline.c when AMD_MEM_ENCRYPT is
enabled.

Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
---
 arch/x86/lib/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/x86/lib/Makefile b/arch/x86/lib/Makefile
index d46fff11f06f..aa067859a70b 100644
--- a/arch/x86/lib/Makefile
+++ b/arch/x86/lib/Makefile
@@ -24,7 +24,7 @@ ifdef CONFIG_FUNCTION_TRACER
 CFLAGS_REMOVE_cmdline.o = -pg
 endif
 
-CFLAGS_cmdline.o := -fno-stack-protector
+CFLAGS_cmdline.o := -fno-stack-protector -fno-jump-tables
 endif
 
 inat_tables_script = $(srctree)/arch/x86/tools/gen-insn-attr-x86.awk
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200903023056.3914690-1-nivedita%40alum.mit.edu.
