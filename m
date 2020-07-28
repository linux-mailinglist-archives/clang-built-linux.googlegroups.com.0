Return-Path: <clang-built-linux+bncBAABBB7I734AKGQELCOZUNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 720BB23015F
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jul 2020 07:13:44 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id p127sf13980553pfb.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 27 Jul 2020 22:13:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595913223; cv=pass;
        d=google.com; s=arc-20160816;
        b=td32j6MaCPboM1d0MF+ZIMX7ldrj/vqZr2BciAnZOpyTQGUJjVfGh1Ov8U0BxnBpQ8
         B4gfVE79CegWHYsyaKSfVDxUdRb4/KbWNkjPLpUc4RJffRu9KBAYat4gCLXfRU8O5UbM
         mmOxlJXm65DMoh3k1Xmntgv5t1E9thBZMc3CYp3wRJjzsqV/bB9wmw4acHf7EJRycPYJ
         JPXOQb/2YsIiDmSjGsAuNUJ9LTYuHX+rsHWHnsQihP34O+xhSMzsTpx1wWU7jfkXfCeX
         n//yQqpStphX9joHc9ihGOrTLQQmZHZvGM4QlltgPCDbeq1zr4czCd2SMJxwhOsQ3ONy
         7IVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=r28vz3+x9ZJwLUyf87vebpwRr0KwCmB1k3Z74iQHCHg=;
        b=EFfq1mBPhLPjysODtavhoReD4QmyMKS7Z6MnluLlSA1XOXOKZe3vFDLrj5PuteoOMh
         VqlxCoVxbkQDAyVn9YSNJfdjy2MrJdRf4UV8VnmJ513ZP2D+j4q2UJwNA3Gy0yNknz2r
         e58ufpY7QGsvhsl4MBoW3nqW3PZI5VFWzEpNH19YTf7QhDg/K1HVOvA+tnaAGrr/YKbZ
         0axLzJl7zba4W063Ig0P8FH8gV8fmYFT4DFtf9YtR0tyxTPz4u+4+6wD1/IyHYnWg6a+
         W/qksYXY2zEr3ajqIjR1WMPlOqf/wc4uyK5XrnC5QF2X0edv4Db1Peag2y49mxchB8Uu
         JnMg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=pe560+Wm;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r28vz3+x9ZJwLUyf87vebpwRr0KwCmB1k3Z74iQHCHg=;
        b=IxmEc85e7ZCGnc5MucAHxrIb6sYa/XQ4ffVDtV21k9cGxba7HcapRydH1tgMkcaFSj
         etb0kNtoUjk836ZlKFSpyUEwuUf9hL3Gt9cCQWIy3fYgQy/t+YJDDAjsZHTsNu222P3b
         WUZahqhNvVGU6bunqM1UyRNQdUpvv8372os46PmybfbGK8mAXqwTkcRkz9TrpDkaRr/8
         whymG2VAql+/wR/QX4BU5F3I0Y4YheCqHgRe1uaTNousYsTmUVpx4iDQ1Cy921MzeAER
         YqgWqdwEbiMI+UJNv3jUAVUC58LI1ih6N6livg9FZeLgK18AVH36zowUgabtWCTcexLQ
         9WgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r28vz3+x9ZJwLUyf87vebpwRr0KwCmB1k3Z74iQHCHg=;
        b=F5+xMPewpXcXQmMthU9GAA+xO6xCoPMOpqWqMzHXrS5wNQfUocGrxB+6dEx43ZNbPu
         oYVD84sgMlc7P4tElMbkRuGi2fh6XHMWUiHWDauf453IPrd7TS6qkbS10rRZrD4DW5jX
         RsJwXeztZnJRn0qAyij63q4ePJzDYwTvcrw0VC91V/DOpl5YRysLlsMMLKYejpT2ryT4
         LAuu/k2tYT1xLBv6mtP4b2QV7oNnRNrZKmqt+xA0sQkKzt5IQTa3AQKCufqdTtzTr8ZC
         Rje6HOUOsj9tmhlUGeqV9mlv3sKx8L9QDcsbD0RDSpLqiw+481DxK/VwF0PikasIXmy9
         Dhkg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531yvH+XHUlH8IXRdIx45u712x9hJgZ99hsyOefSoyUPdkScjlgx
	MzTGwcu6xhqXh9uaG+gAWRw=
X-Google-Smtp-Source: ABdhPJwxsd9DR5QNn0tn57rU6glZeW3Co7o2KZFpeBlpmL9bmvCd8uOnGPzbdYa+N+736nGF/+Kwlg==
X-Received: by 2002:a63:f91d:: with SMTP id h29mr22805245pgi.185.1595913223146;
        Mon, 27 Jul 2020 22:13:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:442:: with SMTP id 60ls69467ple.4.gmail; Mon, 27 Jul
 2020 22:13:42 -0700 (PDT)
X-Received: by 2002:a17:90a:e007:: with SMTP id u7mr2771788pjy.9.1595913222754;
        Mon, 27 Jul 2020 22:13:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595913222; cv=none;
        d=google.com; s=arc-20160816;
        b=cLq6qdirYtH1L01E3CooZyFIs8YdDHRppmiFvH6g9avmjbzzjydYUb5Pb7YoPuQ1ob
         rMRcRt/5rlQADuiU0XV/l9E8hWdoCm4xnJkweX4RnpwobXDWMLgtlq3qwhFWfs7ceiJ2
         RPLinBFoFEuVZvPep3wsGu1lqeE8QoTQXQLSO3eLFmou19rgRKaMe7ViOnO/0Zz+BiBk
         mWbS7LDg8Nwbb7nVdKwWyCSbARwRUpF4QmwFvGEes6DmaPcLx8+vDRFvFUplvwUv2CBB
         qZUyN8iHDXWewmvoeHSkT8/uOanhcUUhnPwh74tgMp1Ls3//Sd7oO4Vw5Qv+yznjGW0g
         pY2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=cOyD064YZH8U1TUGb8xz+dZ94qIWho5Llxvf0Q71bdo=;
        b=umXwFUFBfwjDQOsAXulm3Uvr53lZgTD5v62sQZf0EnPsfAUoYmYFrvGrPbEnBkSu1T
         6QcQb7nN9aiHAG/Dn0RQjG9WYl2ptnqxOrhqb25YL6Mmz/obusHr3mHLhWeFs4Y95hny
         yb46xOJrHLf46aV/sEiunmJOlnxqpiSeHv6ED5VrxKBS+Iw9EbIRBwT884vteJYthpue
         PFvGyu2bQsPvyRkTpIf8UUGGQDo2JIsNxvYTcdtM8teWZrVDOXL2LToISV7r6X0OAp5S
         v2dg7MFpjksf/OxXAzO+n2RZkeUFM6IPt6vuJMTtG0F669uGxC39V+RO32rgUCKcVFkj
         4SuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=pe560+Wm;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a6si970231pgw.3.2020.07.27.22.13.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Jul 2020 22:13:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 3889F21883;
	Tue, 28 Jul 2020 05:13:33 +0000 (UTC)
From: Mike Rapoport <rppt@kernel.org>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Andy Lutomirski <luto@kernel.org>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Borislav Petkov <bp@alien8.de>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Christoph Hellwig <hch@lst.de>,
	Dave Hansen <dave.hansen@linux.intel.com>,
	Ingo Molnar <mingo@redhat.com>,
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
Subject: [PATCH 09/15] memblock: make for_each_memblock_type() iterator private
Date: Tue, 28 Jul 2020 08:11:47 +0300
Message-Id: <20200728051153.1590-10-rppt@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200728051153.1590-1-rppt@kernel.org>
References: <20200728051153.1590-1-rppt@kernel.org>
MIME-Version: 1.0
X-Original-Sender: rppt@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=pe560+Wm;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200728051153.1590-10-rppt%40kernel.org.
