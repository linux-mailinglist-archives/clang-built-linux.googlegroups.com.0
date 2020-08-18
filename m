Return-Path: <clang-built-linux+bncBAABBOPC574QKGQE3KX7DPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3f.google.com (mail-oo1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id A253B248913
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 17:18:18 +0200 (CEST)
Received: by mail-oo1-xc3f.google.com with SMTP id d20sf9951565ooh.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 08:18:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597763897; cv=pass;
        d=google.com; s=arc-20160816;
        b=CFlnXMlBntISklzQCZnf0YR1PehiHr+625svjQRuMs9X7MvTeQQ4A0MtZfvWN5bLwx
         PYj2PzmHk47Mo4K9+ihGK+MEOY/z0D93mqrCHfzE/MancBw5654A0NIzoDfxvhIH9AI/
         DgxO4jCZQfMLh1UVMdljUCxci+N8wAl/EgaocHNQ6j/hejz0mrk+ZmmiGRgoAkaDyUZD
         055JXr2VioLJxwVK7q703bJ0pIT09R31JH5QYEmjh/NQwoumKMMfJtV7vwzaDYL1WC/7
         QuysXuxrju15nApf2UXR2HHv6IeBVBzsv3nPOIaTk3jTyWX5l0aK8O+owMWwyUzcMdtX
         5rxQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Ki5uMueFmZNa9JRy0V46yqtoPlmUnIQ/KrWG/lOqhgA=;
        b=XX0oN9m/0i5R9istAVYlV1AwRm9lmyDTZfMLXK5Dg7UAF6Jj7m2Ky+/jGVxF5O5vrQ
         VINifIPNvTobUEKX7Lr1M63B/+reGNesAGpSjESqEHsbhUgU+MAmyE4Kld7kvTM02o0Y
         5axhbHvQYhCkiZpQS3J2jz6hx1wBd0y+rc+28dk2/0goCCHMn5yP4dtpPgp+FHm12JjM
         PxN7WRe02HvzT2Xn8AjpgJZF5liKWiiIwzC6YTISfbwIVUSG88wF5EQ4cE0dvNlZmWoQ
         wfyX/3qWXaax18dncnLCTMPiQ0J6zenp3E4MaNoa8BPoW8+kVnHqxyBvQgUBKUlIK9iJ
         rPeQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=aMwnH14V;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ki5uMueFmZNa9JRy0V46yqtoPlmUnIQ/KrWG/lOqhgA=;
        b=jXdD+PKPuZtdZ5oIlLwmfOA6Hl2lQFNSNhhnWO7ByK6yMmqYYQLUeEE6Npm1C1a2j7
         b4+cUYs0lrm5shuV/5vwYW/1VjKv71BXYsnqu20aX9pcfWiaAXVc93e1hwLQ4czlPIc4
         zhxJqVsu3ABmpQTqmlVulX/yYKr+GhC+dBcdOdPV+bqx9ooL7hxbgbW4gb/kCZOoZt2A
         4UermchF3ovaJdElYyTCdQ5z+XIT/6JcaJv7TmQudMQq8WeRJyrr5729T8zikLOtuuEq
         0/jljy6L7h01cZmz4bieJQZQqye8rt3ElZPvEG5WPnoz82xqF96Wi15PJkAHD9diFFBj
         nTXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ki5uMueFmZNa9JRy0V46yqtoPlmUnIQ/KrWG/lOqhgA=;
        b=oOljT030Aff5gn/mXwI5lHAtNhOT/xQ2z1iZ4ppmLFoV2vgtaafjXiP/tmVXeJI9xv
         x+F1O23OuGssiEEL2HxD/swbaiv69rkxLrzaQq+tYfuzPRQwtWh1yaSzRmO3NeXjItjt
         lFvP3wTw6Um+5JNethcL1Z6FsdHftPXHYiG/5A2ZSL/q35CAbDkYZ/obk8ma59jobKRA
         gRCavMhLnA7Dus+66MDsV/eA400N6ziggJVnAZH3DXeNCL5zs8BMLDISCRTdPdaIwdfm
         PKFhRfZLY6kbCICHuW/AjJ9l62xfkmk6Iu4ChfLytwvxo20QEi82UyxRMYCKUcVB0F5o
         EVQw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5303+HROn3Y6s1rcnZe1jzBvECaZpyTfsdUDQ1Gpw2pgiLskXU2j
	Br8ZryW7FRaHUA6w83VKVXk=
X-Google-Smtp-Source: ABdhPJzaNcv2yTPxKKZ7mVvPmXSdoYLwMa8BSCj5x2dho5730UFJ4jUuVJ3U0tI2au6v5XQ2is+wtA==
X-Received: by 2002:aca:f505:: with SMTP id t5mr320550oih.123.1597763897299;
        Tue, 18 Aug 2020 08:18:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:d658:: with SMTP id n85ls4169240oig.7.gmail; Tue, 18 Aug
 2020 08:18:17 -0700 (PDT)
X-Received: by 2002:a05:6808:311:: with SMTP id i17mr381178oie.72.1597763896992;
        Tue, 18 Aug 2020 08:18:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597763896; cv=none;
        d=google.com; s=arc-20160816;
        b=1D1FoyffFLNug5pA6g7GvbhEUiw/AsyoKRm57X+lviNO5Zq7Vs+j73M8EtcHFkeo7d
         cgF6uB6BO0VlTGHqL2P/tb/1ZqYKbK0uE1KMBED8M0Y6JilIFyHuR9BUjVtdEZlWjbXz
         pHReJfPAZvq3XuK3jxaYgc1CcRpw1Jvq2Xf2DZmEP2z4ANSXF1u3R1NfGhpb06n9/VfG
         7tegdktPegIY637Dj4Uk7oEpfoltajFP0zYygC0NQl5Xb+UlhP9bCxmoZWR+z4Mes6Yv
         gN2dW2CKQ53DV/8ifjTlM7U7YUImuT8fib4WeQVEkeBW3hLlhkVA4ZUs89YqRemngYo3
         e5kQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=14lPzZN/e4zE/suY9P5dmo+DXGUJWTj5h9nWp7YkYHc=;
        b=0scoXRjNG7gq2ZvdmnuHbf/8Hci059BXqMoPfhXvLgwurj2+h/vRZyOIpDUUWyCExL
         PtueOwTZlhgqQ3xQPQ7zqxNzUZueB5j027TD1d0+axyzOmvyXill6/urwgNyidWQgqnz
         44PRN0fNmxInDzTChg0ywta9sAzBTWGxRU1xMaNR3YTw2R2hoiMvSlxKR1/C2tMtwnPz
         e+Mv4+rY622xg51FeqcNDKc2HcU2xxcA/4q7dRnrcG7nzocVvURbfgE022EwAHPd+xcq
         g6anN8craKZzj5NcW8P3v5rPvnSj+RDqdNIl1LFFMjQF1qITePQaQjfM495HmDaJ4xzy
         FOHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=aMwnH14V;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v18si1542908oor.0.2020.08.18.08.18.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Aug 2020 08:18:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id DA7162087D;
	Tue, 18 Aug 2020 15:18:05 +0000 (UTC)
From: Mike Rapoport <rppt@kernel.org>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Andy Lutomirski <luto@kernel.org>,
	Baoquan He <bhe@redhat.com>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Borislav Petkov <bp@alien8.de>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Christoph Hellwig <hch@lst.de>,
	Daniel Axtens <dja@axtens.net>,
	Dave Hansen <dave.hansen@linux.intel.com>,
	Emil Renner Berthing <kernel@esmil.dk>,
	Ingo Molnar <mingo@redhat.com>,
	Hari Bathini <hbathini@linux.ibm.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Max Filippov <jcmvbkbc@gmail.com>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Michal Simek <monstr@monstr.eu>,
	Mike Rapoport <rppt@linux.ibm.com>,
	Mike Rapoport <rppt@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Mackerras <paulus@samba.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Russell King <linux@armlinux.org.uk>,
	Stafford Horne <shorne@gmail.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Will Deacon <will@kernel.org>,
	Yoshinori Sato <ysato@users.sourceforge.jp>,
	clang-built-linux@googlegroups.com,
	iommu@lists.linux-foundation.org,
	linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-c6x-dev@linux-c6x.org,
	linux-kernel@vger.kernel.org,
	linux-mips@vger.kernel.org,
	linux-mm@kvack.org,
	linux-riscv@lists.infradead.org,
	linux-s390@vger.kernel.org,
	linux-sh@vger.kernel.org,
	linux-xtensa@linux-xtensa.org,
	linuxppc-dev@lists.ozlabs.org,
	openrisc@lists.librecores.org,
	sparclinux@vger.kernel.org,
	uclinux-h8-devel@lists.sourceforge.jp,
	x86@kernel.org
Subject: [PATCH v3 08/17] memblock: make for_each_memblock_type() iterator private
Date: Tue, 18 Aug 2020 18:16:25 +0300
Message-Id: <20200818151634.14343-9-rppt@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200818151634.14343-1-rppt@kernel.org>
References: <20200818151634.14343-1-rppt@kernel.org>
MIME-Version: 1.0
X-Original-Sender: rppt@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=aMwnH14V;       spf=pass
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

for_each_memblock_type() is not used outside mm/memblock.c, move it there
from include/linux/memblock.h

Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
Reviewed-by: Baoquan He <bhe@redhat.com>
---
 include/linux/memblock.h | 5 -----
 mm/memblock.c            | 5 +++++
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/include/linux/memblock.h b/include/linux/memblock.h
index 9d925db0d355..550faf69fc1c 100644
--- a/include/linux/memblock.h
+++ b/include/linux/memblock.h
@@ -552,11 +552,6 @@ static inline unsigned long memblock_region_reserved_end_pfn(const struct memblo
 	     region < (memblock.memblock_type.regions + memblock.memblock_type.cnt);	\
 	     region++)
 
-#define for_each_memblock_type(i, memblock_type, rgn)			\
-	for (i = 0, rgn = &memblock_type->regions[0];			\
-	     i < memblock_type->cnt;					\
-	     i++, rgn = &memblock_type->regions[i])
-
 extern void *alloc_large_system_hash(const char *tablename,
 				     unsigned long bucketsize,
 				     unsigned long numentries,
diff --git a/mm/memblock.c b/mm/memblock.c
index 45f198750be9..59f3998ae5db 100644
--- a/mm/memblock.c
+++ b/mm/memblock.c
@@ -132,6 +132,11 @@ struct memblock_type physmem = {
 };
 #endif
 
+#define for_each_memblock_type(i, memblock_type, rgn)			\
+	for (i = 0, rgn = &memblock_type->regions[0];			\
+	     i < memblock_type->cnt;					\
+	     i++, rgn = &memblock_type->regions[i])
+
 int memblock_debug __initdata_memblock;
 static bool system_has_some_mirror __initdata_memblock = false;
 static int memblock_can_resize __initdata_memblock;
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200818151634.14343-9-rppt%40kernel.org.
