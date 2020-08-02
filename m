Return-Path: <clang-built-linux+bncBAABBWGXTP4QKGQEESKZT4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E3B72358BC
	for <lists+clang-built-linux@lfdr.de>; Sun,  2 Aug 2020 18:37:45 +0200 (CEST)
Received: by mail-oi1-x238.google.com with SMTP id c189sf1394240oib.2
        for <lists+clang-built-linux@lfdr.de>; Sun, 02 Aug 2020 09:37:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596386264; cv=pass;
        d=google.com; s=arc-20160816;
        b=cwwO5JAS37IRK+svVjFbk9V/9h4u245VhMIoZvLfovll6c5XzISmQJgv1SdJHB4Tjx
         vbY2nZ33NrTQOzRkhjafadSDOb69dRhh1lCIfyJETjo1T2N67wwwogKDbrhAjggGy7M6
         pOpSZwTpmUjVspcThQBkA3yllXy2dtOoqHa6uJ/6qjRtL0Y6bl/vnI9cHcDoiyNiZg53
         PFhKJ2IGSBoMJQuoUKS4h+L2SFnzMpy9raazB3ijSVgghB081Cxlq6PEZh6xJdfLPMX9
         vTiKj6Oix+l2AEdLAwytqZNKbIjG4o1kr7uI04WXF8OuB5RHlc5BJN8Fctyhi/HFyuYV
         IJYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=KPrQtSfAgQ9bq87pqoULJFvpXHgJ46gKLcX7KqCtzB4=;
        b=biyMNHHareJaNd5X/gcFqT++3WZZG2WcwlJYacnvTJwsKkZ5LYcRESNK6dsxcfMu5h
         1Zg+T/m3XVW/w7Jljv1n+3UQgEMRZdHomwkBbJSC2lfa8ON2enrp+REEAzUXBLx48jHt
         8kNNxw3PWQjiLqiyjpGuPN3KmJRKWANlZf3+Q+cEtOGtGAntKel06bVmTJHRRXBD26ZG
         5AlVgJn1R58rViTWvFTJu7Xa0oamezK/HEPV3KI7INRMjdknmZJS4Yibq5p8ceMOyx+M
         cbIEnLwm+up3gbAQ7qdTP+AoWsdZrJgY3YvOWL0B1TXxEEBV7rTyXJc+hiLYtWzd7vBF
         lc4g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="Xkrtb/Nn";
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KPrQtSfAgQ9bq87pqoULJFvpXHgJ46gKLcX7KqCtzB4=;
        b=kGgYPzVuF0Bc4R1q3Cs+yUQF8eORzbkTsVwei0T2kKNCIpAL9DX6nRnnmIHIN4mCiW
         TER0SpZrC1UWcGo5JcQlPub+IW4BSGubBi09MwpOMn0ifXJe72AzaDn1lZKgu2yu+JTN
         lPGbSKIBh8+F3Pdh5sNL2YPQB4aBl8CUXdf9HDfvOHSgdofgQZoWtRSjEfvBAcAXDNhG
         GAVScP8pRs8M9/TZEX2lnZ8ohKUHt4VAiDa9rq0j+yXmjMstDJdgojRiTiqDhaJnarus
         IsbAWHa7CD9DREFNt3ZuhCa7LpYoVjro/LRyZZe0PjMfibgjZbio9ySFXe+XoFJdfuHM
         cf8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KPrQtSfAgQ9bq87pqoULJFvpXHgJ46gKLcX7KqCtzB4=;
        b=VshFw4LruXoVWMA+IGzMc2FrGMGXqGRUQGNXkaRCoQyTVXdDAjxneVbVXluy2UggF1
         T0CcyDfV4uPfO5DVuSAO6iw2ousslrFf2pjMuSdbj71UYgPBGeKv0DGn5QkCM0aq/iQM
         yC3KxDbdAJxP3Rm42IazytQ/3Ai3lbtb8KGSLZ+jz09XwgxiqqFd6fmuAfLbQCSDGV8m
         W58cexCVXoAm/Vs3QTEKXZbsK360XfeSsFnS1VWVZKxW1hjg0e3LdYmKWiW6wnYy4NOO
         D4ieCuA0x/R0JzqJoFtkoxxBCfqbPzo5JOiCT+9zdXWxa/2O4uEkJzbOKtaGi3ceEd25
         dA8g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5323eodzlYL2kXEDbefY6qd698nDu3H50+i9I18x92f5dgGpb3Ov
	UvFj/j7qTiPwNMpC2y1kBS4=
X-Google-Smtp-Source: ABdhPJwAKncJl9DtpcT9EsupgorpDqL/wudxJEdGk1JO256V5bsVbUZmXBux03HroShVBeF7LwwbJA==
X-Received: by 2002:aca:415:: with SMTP id 21mr10279972oie.98.1596386264375;
        Sun, 02 Aug 2020 09:37:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:66d7:: with SMTP id t23ls1106746otm.1.gmail; Sun, 02 Aug
 2020 09:37:44 -0700 (PDT)
X-Received: by 2002:a05:6830:148f:: with SMTP id s15mr9025081otq.323.1596386264098;
        Sun, 02 Aug 2020 09:37:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596386264; cv=none;
        d=google.com; s=arc-20160816;
        b=LxzD9wVTxd/N9Fj6HrkjiIwMVXhgpV2YFq57Qha8GcPnjts4N9vDqJeRnm0B3lgA9l
         BW/779aFzKr0/UxBe+PrDto7PGHyagkXa8KjwllMrqp7VelTG+0W3ZtLygT7X30yXLrr
         DWPJ5chCM1OXejJpdnmhHYi7+fd0atPRIFO0HUHKyjxGSMzWmeCaYDWyhk5qbzHEudl7
         Ue9heP1AkzHXimV9w6UGQ3KyMSqpFDRMxlyX1wcs4pzOU90Oa1Rqxkq5pRSQEZq90oQp
         qaRr7x570Cezukz3E6rXJxJ/QXpdX1QOUJqmB4O0/jb0V16gssxVZFl94445fNSVkndB
         Myig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=2BJcbCJ/55sMqm2AbhzdyCLt3aR8WlKOITd9NdLlblE=;
        b=LO9PryF5W8Gt6yVylB5m0BZ4g6rGJ6eU7/sv6JEoqo32qqWqj5rf3UZJMTG8MIwxS2
         TX7jiEdAyCw85zmQfxnkspIe4nFHOyZc3FfO48ytOfZKi9JbbPMsGiLxRoDZwEwb1cDb
         IN8RATCiao7/XrFExWiTIdhS6ktG9qHEa0Rxek2cYC/yOg+gc2MEYgSJ2InqaGnGATg5
         VjNEu+urZBgc3UcohXN0XQ95Yozg0eVRZGglxfJGcxU0Ev+o6fZVqEjUFXy00d40t7fC
         eBFuoVXH6Qk8mCajZVl88GQoOhGYG4zV07SF3BYURMQhMK4IWd/9D2d/uWZAba9FCkFj
         FRTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="Xkrtb/Nn";
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i19si845300oie.3.2020.08.02.09.37.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Aug 2020 09:37:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 13C5E207BB;
	Sun,  2 Aug 2020 16:37:32 +0000 (UTC)
From: Mike Rapoport <rppt@kernel.org>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Andy Lutomirski <luto@kernel.org>,
	Baoquan He <bhe@redhat.com>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Borislav Petkov <bp@alien8.de>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Christoph Hellwig <hch@lst.de>,
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
Subject: [PATCH v2 08/17] memblock: make for_each_memblock_type() iterator private
Date: Sun,  2 Aug 2020 19:35:52 +0300
Message-Id: <20200802163601.8189-9-rppt@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200802163601.8189-1-rppt@kernel.org>
References: <20200802163601.8189-1-rppt@kernel.org>
MIME-Version: 1.0
X-Original-Sender: rppt@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="Xkrtb/Nn";       spf=pass
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
index 017fae833d4a..220b5f0dad42 100644
--- a/include/linux/memblock.h
+++ b/include/linux/memblock.h
@@ -532,11 +532,6 @@ static inline unsigned long memblock_region_reserved_end_pfn(const struct memblo
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
index 39aceafc57f6..a5b9b3df81fc 100644
--- a/mm/memblock.c
+++ b/mm/memblock.c
@@ -129,6 +129,11 @@ struct memblock memblock __initdata_memblock = {
 	.current_limit		= MEMBLOCK_ALLOC_ANYWHERE,
 };
 
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200802163601.8189-9-rppt%40kernel.org.
