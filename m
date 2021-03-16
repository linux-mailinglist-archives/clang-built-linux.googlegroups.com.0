Return-Path: <clang-built-linux+bncBDOY5FWKT4KRBVGOYOBAMGQEDKLIB3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 146E333DA68
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Mar 2021 18:13:58 +0100 (CET)
Received: by mail-pg1-x53b.google.com with SMTP id j3sf19181469pgb.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Mar 2021 10:13:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615914836; cv=pass;
        d=google.com; s=arc-20160816;
        b=Jqlb91oozfql2ZzVA7dS6WdUQWAD29mpM3fzN6znxFvaJo4YFOlXT/WIZmlMr83UNw
         yez7u6MctU58yfommSpHc6hgQyCUmIpy2y1tDxV8iUzq6Z21LNHffwi1TKVYrjU3G4Ce
         HVuglO5gtFrHhfAb8UGN/kjse/591qtMG088AyqmZVYfio1TVLs9QQQ0rUhRraPhGotB
         knU4vYbrWx+gOPw9qcxW6iu9AnsTl7C1PPA2eTQzEWfm7hcHqxe2LURxfQ9pj/3uvH3G
         UYeIjatfhs1Vn5jNfrpwQm3wMeD6HSjeR2tLxUvdsskFMD09daWCmx64cB9qiJAx2Hj8
         YbPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=UDuC9pFtQ7qrIxJwaaAN6yChqtzO1Dkz9t/0ZYkM72w=;
        b=zRvKbEo2/Z2u6eAEo8tGNdRWkZYUS+KKY+9YRYij9AXWsuD2H7oEBWt/VRVEPkopL6
         bhb4W8g0ujWx8MTWf2SNYI3ONQnemuvuSW29wWMVlKfittzJuUPTlRprdLt/o6/oTmm1
         +vrwrZ+row36QS/JOEvDVesjgOKQDENoR/w3NbXmrhv/9czRiMdfoqMXzYWBYZSYOLCK
         jJ+tJDkl0PtLvgzuKogLP+eoPQGKw7owplFfRo3/RNa74xF09SM9YeJvrgdvfYtaG0Ns
         vk1f6XUfwAOxB1UsiPwV/Y5YdwQePmSI4qLGSuN1+4AIYL58ToucXWgRqR9Srd+T1Zuo
         3yjQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ZKdeS6p+;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UDuC9pFtQ7qrIxJwaaAN6yChqtzO1Dkz9t/0ZYkM72w=;
        b=myarxLdqKe8OzkMOdY7bc/koZBzMtfR7jD6TBnw/9E8+m5p97K7DxDBv1wliE0qLfa
         ug7ddxOzof84M1imA6D6vqUyw2x/CCXYvf+VIedOTr5i/qh0ZdKr6FQtPvOH4pBFApfX
         9tRGm4VbXhbTEI4/xI1WZvAmFCQdtzzb7X62a1q+C0tZAPj5Ftw3SAu2OmcYcmSnM9wR
         Wy7z2rvq+qeTwHf7ePDhWq1/6SV3O4zHYPFwQzK9dNCEmKZ5tZdjyRgN6ar0I1GhZftm
         ItXu2nyTsE4UBaFdlzOrdSelqK/lO99i65iD/tCxLfCPeQxehHAzT1hL35qn2twxri1E
         mB3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UDuC9pFtQ7qrIxJwaaAN6yChqtzO1Dkz9t/0ZYkM72w=;
        b=LfO4XuIUTFeDhJvc2j3XmFxun4GIzO0ZIEUJyr865YgQkrtqirOMp4qSjhPIucEEIz
         j6dYj816huSdGL6l6Z5Utnd0cIFmvlfVp0NdH78+RIqSgSQn/Eip+kWZ2GkiXjxLWSQX
         4IQPaRhAotAXJvTY2r3dms330cOptAYV7sfyc3sc3OFGVG1b7M8UuVOmypgRmA1ylBLN
         pO8rSlMNIDBqLo8RXdG5m6MOCXRwioMzn7YWAeYIBwu7ZfL1UPcErUjyxxF/tbuQcAhd
         HsXpLZZwdOVW5qPL45joT7QBlyE9JvhyUEcBVzUSkjnYoKQlJ2D24YwHoH38td/BCewG
         Bt3A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532gmc7+LjJz6W9JkCIJgC8zXQMwJIJbToWfdxgHeV8itbdpAQOG
	A5aPA8MRelHOpj9tixeq9TY=
X-Google-Smtp-Source: ABdhPJxzx8mCLog/BndYxK9Fb5++sWPJPF2VkOKo0XDw1vO5QgloKP777WmFTCj2yLU3BLAo4OU47w==
X-Received: by 2002:a17:90a:9413:: with SMTP id r19mr74167pjo.65.1615914836499;
        Tue, 16 Mar 2021 10:13:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7246:: with SMTP id c6ls10791515pll.4.gmail; Tue, 16
 Mar 2021 10:13:56 -0700 (PDT)
X-Received: by 2002:a17:902:f68a:b029:e5:b17f:9154 with SMTP id l10-20020a170902f68ab02900e5b17f9154mr416226plg.28.1615914835970;
        Tue, 16 Mar 2021 10:13:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1615914835; cv=none;
        d=google.com; s=arc-20160816;
        b=BSmZB+oCj31qdoDx9xzuDCFGIruRT8d1SRHwwjlP0e1FJ2E685lqkSZfGq9RlXHxG5
         jO/VsBh3XASU30cu1oIYEW2AsFnAhA2zFUpS3klAXPDqLAFEL6/dWJlOy0ytWEldw3t8
         we4l1nibI1M6+IB9CaMlMhLn4HWslIpq8xlDuXDMmmwWMnRMR9rGZ2PYu5nD3L14eRLP
         QBuhtMI+xdbT3AZONKcUoGTuA7nIeJgUy+uPColvxaC51X7NNLlHDDXFWEFx1cQ13w32
         nR3TFeWszoj2+cmzKnkUFu6xYb93+XwwtsYuW+aYtH7pdNYEfwvbp8FP9nuYUZeaInyS
         u7qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=oc+Y0fkjS4EJHAASLTfPSCxxQQdGRpogq02kr0XvEIY=;
        b=qBLs0m99xqIIiSJ4T8b+Fk0azNYbuRm5TP1Hf6LoQa6QwFnUzlHu8Uv7tzDcwmQWOg
         9/yvaIz1svm1aGYJngMxRlEEmSVaV2AfWMPDtMW8nY/9Wtu4/NYtxMQDr2UHGsEv7r8I
         4k4KwUm6+zYfd9zXROoNI6KEdp4/k5FXKldX6MlGcUcQP8CHJOpxjdZ7YnjuT1TgDg+A
         llErH6+S52TRs0oo3ZLBZuhvSytyj4yEQAB9l0aLa+C5FDvM2+xCBi/o5ZkyANVwz0vU
         Tf1+cPLvPdC70HhNODc+CHyOH8roLpltHuHAG13RsZSdSD5+LGAtbykbvUQanfFQaz/O
         ueQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ZKdeS6p+;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r23si926886pfr.6.2021.03.16.10.13.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Mar 2021 10:13:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 90A0E65013;
	Tue, 16 Mar 2021 17:13:52 +0000 (UTC)
From: Mike Rapoport <rppt@kernel.org>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Arnd Bergmann <arnd@arndb.de>,
	David Hildenbrand <david@redhat.com>,
	Mike Rapoport <rppt@linux.ibm.com>,
	Mike Rapoport <rppt@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org,
	linux-mm@kvack.org,
	kernel test robot <lkp@intel.com>
Subject: [PATCH] memblock: fix section mismatch warning again
Date: Tue, 16 Mar 2021 19:13:47 +0200
Message-Id: <20210316171347.14084-1-rppt@kernel.org>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
X-Original-Sender: rppt@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=ZKdeS6p+;       spf=pass
 (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=rppt@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

From: Mike Rapoport <rppt@linux.ibm.com>

Commit 34dc2efb39a2 ("memblock: fix section mismatch warning") marked
memblock_bottom_up() and memblock_set_bottom_up() as __init, but they could
be referenced from non-init functions like memblock_find_in_range_node() on
architectures that enable CONFIG_ARCH_KEEP_MEMBLOCK.

For such builds kernel test robot reports:
All warnings (new ones prefixed by >>, old ones prefixed by <<):

>> WARNING: modpost: vmlinux.o(.text+0x74fea4): Section mismatch in reference from the function memblock_find_in_range_node() to the function .init.text:memblock_bottom_up()
The function memblock_find_in_range_node() references
the function __init memblock_bottom_up().
This is often because memblock_find_in_range_node lacks a __init
annotation or the annotation of memblock_bottom_up is wrong.

Replace __init annotations with __init_memblock annotations so that the
appropriate section will be selected depending on
CONFIG_ARCH_KEEP_MEMBLOCK.

Link: https://lore.kernel.org/lkml/202103160133.UzhgY0wt-lkp@intel.com
Fixes: 34dc2efb39a2 ("memblock: fix section mismatch warning")
Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
Reported-by: kernel test robot <lkp@intel.com>
Reviewed-by: Arnd Bergmann <arnd@arndb.de>
---

@Andrew, please let me know if you'd prefer this merged via memblock tree.

 include/linux/memblock.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/linux/memblock.h b/include/linux/memblock.h
index d13e3cd938b4..5984fff3f175 100644
--- a/include/linux/memblock.h
+++ b/include/linux/memblock.h
@@ -460,7 +460,7 @@ static inline void memblock_free_late(phys_addr_t base, phys_addr_t size)
 /*
  * Set the allocation direction to bottom-up or top-down.
  */
-static inline __init void memblock_set_bottom_up(bool enable)
+static inline __init_memblock void memblock_set_bottom_up(bool enable)
 {
 	memblock.bottom_up = enable;
 }
@@ -470,7 +470,7 @@ static inline __init void memblock_set_bottom_up(bool enable)
  * if this is true, that said, memblock will allocate memory
  * in bottom-up direction.
  */
-static inline __init bool memblock_bottom_up(void)
+static inline __init_memblock bool memblock_bottom_up(void)
 {
 	return memblock.bottom_up;
 }
-- 
2.28.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210316171347.14084-1-rppt%40kernel.org.
