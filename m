Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBMMSTSCQMGQEWJO2BVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 55C0738BB5A
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 May 2021 03:13:22 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id c19-20020a0568303153b0290315c1232768sf9686079ots.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 May 2021 18:13:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621559601; cv=pass;
        d=google.com; s=arc-20160816;
        b=Fw38ZJGlshA7Ty3uW/VphicPHDWHx2mnj6hy29/gIwqX4IUfKiheS38Zp7FFsc+jjV
         VDTLQ48AGkAW7e/nYnyB+QZHkz4IDaXgsl6m0OWyH17oVCEWZ7V8ivC0fGJMjnvjyYkb
         qOY5jFvppzRwQvWJc/ZFfVBsWGglX8pXvJc3nq9euO9YKO74Nd4SimffEdc/5WZg0PEH
         osLEVlkvas3v0zymOX02R19SG9pg3YAlqXbuzvxxIIbcztb2LJ7eU3sqgBmqveYI+tG6
         ar6jFFmvOXXxxvurt5S08nBvRebSygu3exbB+pzid5Ztj8dzoJEMDLdi23raqimDnNqA
         9hyw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=edg0Ula1lmjo9k5KUDBIc5Q/sWAiDUT3hGbRqRybvIU=;
        b=GUojA2oMtEysqfhdDhWP6n+VgEM4KG/ZNkcsPdov4++B+O1V85ZKY+567Rp/uWw7vq
         6ikkgPUGmZ04Msfg7BTgAWAjJJ49tH6rLtLH5Tca5w46Skc2eB66pxCjiNs/wg8rM19f
         3iq81aZRtqHfNGCIIxn7GveJ/mmNvZfdMFTRrtNgtJ6MdhMY1kynN53L8bJNi9Ao905z
         DLQZBB+9jcjvdXVBYjVUQDH2VBT+3fYQSsTagwmNWci/4+n1SAXLh0M6JVPA5Rdhborr
         TLOYjERvjCpf+RZ8BXQ0Vxf1OOgVYuBHlb1qNB0WIs6vkqCKuMw+exu6ZRT2BMLqDKBu
         gunA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="V/ORjQxo";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=edg0Ula1lmjo9k5KUDBIc5Q/sWAiDUT3hGbRqRybvIU=;
        b=L0RN/ljwRd7XAX87yRhqrYvFPms9OSl913dGnLJqSOVi9QJGTYJjHqmKOnVHwdjWoV
         yR9fFfdyW5a+dRgMHyv7rZnyRAuEvmyGaV252Vcz8N3AOEhKSRySMLxj8fUDvk4ace5o
         YzShseCSXCRXQnlIfGotXxCjhPJsfdeuB9w5HYZwUfMV/xJA0mrdl1baS8APF58X1pU4
         klTH2X5oMuLOipEM8HK1tIq4PYuGrt33+P7DFMdpNR4RQDxNckduhmXHlRSorZ0xgCq9
         pijDU773f4tQChUkmjW4Lr/0LZ/idjsnnScc/J7BMKNsOujO3pGEM1Km61GDeOQ4L/Nk
         iSfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=edg0Ula1lmjo9k5KUDBIc5Q/sWAiDUT3hGbRqRybvIU=;
        b=DOvVnS+BYFp9wx7PetbbtIFfWYZVXhNU8gzUpMpK3/ssTzXPHSNW3emK4g98nRKWFn
         LRr7/m1gLm+aKzf8QjuctrfCk2EPnUtBfeWQWZ5QyrZ4rOBXmALtZHTL+NMv3YKSx50S
         07nF+ply3niXkEM2Da+khl4d+GtHwrKvv5N4uM860lAoD7h0oPGB/lE923WZxIfkQwTS
         O8duSEXZdLttn8kWju44HISyjF14iXYEI32KPHZ+kIuhGhYkXRUGv/uUljeEsSqlKq9L
         jchv8a1qMYKM7c2mFOHH3Oa2xNPVgajXaEGs/uQdFLSCFt4XoI7N+zVL6C1tEGTdf/GY
         wZJQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ZRiNibLzLycM/m0R6A2KNxLBUfZ6m6ZpoOjp4f5BhG5U5VBUb
	LGuR1p79rBvSmhBPYkBsesg=
X-Google-Smtp-Source: ABdhPJx+Drc7Eoj6vyXwH+kbwsJOEx8ktoOaHa1/6iCCjq+s2T8qraJEYBvs6WRUfSiXZ0zNjmqU0g==
X-Received: by 2002:a05:6830:1146:: with SMTP id x6mr6122897otq.14.1621559601359;
        Thu, 20 May 2021 18:13:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:53c5:: with SMTP id i5ls1419818oth.11.gmail; Thu, 20 May
 2021 18:13:20 -0700 (PDT)
X-Received: by 2002:a9d:2e8:: with SMTP id 95mr4507165otl.174.1621559600920;
        Thu, 20 May 2021 18:13:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621559600; cv=none;
        d=google.com; s=arc-20160816;
        b=i++MlMRDUqbVoZqjddfAKuIQnKcJ+/l0As0S2qmVxl4xrFbD0ktGBmyLo9HzMOq6WP
         sGVd6hhEdfLpQJgbNu4KMZqokukEbV9N1kLhvaJOHt3adM9KvozCtHBC2L7V4N34zlRm
         V32T1IS2LvTLKC1ByxH2T7HBqHyWnhrjdqIdbR/X7vKtGuAj6c6Qkkj6eHiVJ9fG5Opb
         +WTfCY1KihFUVb4Ras/h3dhFHbMyc7mboGOoEq6+K52gkJS/Rdq1XNNr09WASZdXJGlN
         +Lx+i3LdjsULS5OT39yJmJw6DbuQqMd3MAnSijW9ePw8O4uSqNuwWLOiEC4iU2At60X/
         Y2Lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=kSceSY6b82z2Yo4SQS9mfB6gYg+OECcRl88ySE8WIrE=;
        b=olXxKKkuiUAEMXi8BsB2CEiAfPKT4KxvavbH9lk5zroDCTDhcnchema+7M31tzYFlv
         5A1TItaGNG3XuMsjNclXK7F1m6+iczgMPhwoGSQHZbz1DzaoDqvJaS+xozBNc9drFSOp
         vgKgBf6xzjdxtFHCAfqbbpgSvK6lPtARKbT2O0JH/yTZeeKrT/4AP6+8vYPGgoQb35Fd
         aIMjJQni4I8z592O3so67EX81ZuANNNcJj17RhivvFIr7R87q3/9EdFTSn/ZDQiNrPd4
         8Es9WGiFlrUycOKDetKZe9SXTWHqykDQOZRcdWb4uU0mRspcmGS9WHFXdg3rkxPzzFuZ
         zO2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="V/ORjQxo";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c9si433273ots.4.2021.05.20.18.13.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 20 May 2021 18:13:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id C5E2960FEF;
	Fri, 21 May 2021 01:13:18 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Brian Cain <bcain@codeaurora.org>,
	Andrew Morton <akpm@linux-foundation.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	linux-hexagon@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH 0/3] hexagon: Fix build error with CONFIG_STACKDEPOT and select CONFIG_ARCH_WANT_LD_ORPHAN_WARN
Date: Thu, 20 May 2021 18:12:36 -0700
Message-Id: <20210521011239.1332345-1-nathan@kernel.org>
X-Mailer: git-send-email 2.32.0.rc0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="V/ORjQxo";       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

Hi all,

This series fixes an error with ARCH=hexagon that was pointed out by
the patch "mm/slub: use stackdepot to save stack trace in objects",
which is in -mm/-next.

The first patch fixes that error by handling the '.irqentry.text' and
'.softirqentry.text' sections.

The second patch switches Hexagon over to the common DISCARDS macro,
which should have been done when Hexagon was merged into the tree to
match commit 023bf6f1b8bf ("linker script: unify usage of discard
definition").

The third patch selects CONFIG_ARCH_WANT_LD_ORPHAN_WARN so that
something like this does not happen again.

Nathan Chancellor (3):
  hexagon: Handle {,SOFT}IRQENTRY_TEXT in linker script
  hexagon: Use common DISCARDS macro
  hexagon: Select ARCH_WANT_LD_ORPHAN_WARN

 arch/hexagon/Kconfig              | 1 +
 arch/hexagon/kernel/vmlinux.lds.S | 9 +++------
 2 files changed, 4 insertions(+), 6 deletions(-)


base-commit: 7a42b92b6d30c3f09629c7d5ada9e3de2aba01af
-- 
2.32.0.rc0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210521011239.1332345-1-nathan%40kernel.org.
