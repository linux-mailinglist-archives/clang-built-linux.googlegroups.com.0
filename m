Return-Path: <clang-built-linux+bncBCT4XGV33UIBBWHY6X4QKGQEQMKECFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id E655724A6D5
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Aug 2020 21:24:09 +0200 (CEST)
Received: by mail-oi1-x23c.google.com with SMTP id r62sf9317206oif.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 Aug 2020 12:24:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597865048; cv=pass;
        d=google.com; s=arc-20160816;
        b=lSvS0tsaoCpJgyE+QfSzOKOa8BZm6P2riVA/UFrRVf5INtaSdM2RxNiwNhOPbtHcBZ
         OVCHpWFgUM3M6IFUmADnRyl9KFjqo3eCtxcZt9CshzCw5NIKdK9EoX6mFFtkSAt/bFRC
         xm0fNMReHdG26HAP3nwRK9/XwYA1I03pCo9pQ6jBw6YvMXPeXgONxvSOUdJkHePwD7B2
         97+4bEelFe6naKT0bN7XelvZfqHFrzLCXyvUQ6CDI3lIreLmXCRQHl83iCi8chqJ9J3+
         P0hfVEh+Bzudn4pVf8i0/3HxMiuMf4CzYnXE9jB5XAH/kvuONUpYghiv3vUrVdPo6pcZ
         iHuQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=6VsgCu5sXVbYFUce72DIuGEkxsKu6Z1xEEIQBjUsKCc=;
        b=BoC2IIK9b5LBmF1WlXFt5/BTadLfkfQg/bReWT03Fl4nVrIbpabbfyTd8aUNbFZ6Gp
         do1T201bgBatginsQQ/yR6C02fRPXU1XWscqDEzynv/LevRJc1eHRegxRZTb4vGaH7A4
         9eAUxWibEF3E0LubdTc24yfQhSHMDvHfPWFkTwvTbzWQDFpBeN2A3MFHyy+lY6Q/F17y
         CwOiEovmqQAHbR5ruF6fjaAowq0elfBVcuzgj6iz7UN5tt0nvvDMfvGuSY/2x+9hi0GT
         /IbU6+cVDSr6p0C2ekkB5F/0MNSCjzfyRZx5hRBD1vhk53aduMwG0plch15Ki29zUSJl
         FRMQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=GeI8lPtK;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6VsgCu5sXVbYFUce72DIuGEkxsKu6Z1xEEIQBjUsKCc=;
        b=jOx7NLD6gDDQly+AGujq0IK0nYblmzL1VKQ4gQFutt9mqq+RK7mEpU2CCG/N7Ywrbb
         sfpzI9t+XlZ1JtXVQ8qzsT/ZaKGvpQBMJvTKuzvfiBJvQASUBCRaoB3O4mcVYQ5gjAdq
         PJrMwiJbDgWlGjGHaXVKN/rhjRBbIvOpdJhIMHLpFFyvwi45s+yeoPLvTzlez/viRHsP
         b/+Fdwu+1L4WWmUCtDzeJKxUn/3Sz79TNhdOr5YH45WalVjKTysrwCemIEesr0IwYtZE
         6wv3YkqwykEE1h/UCHw7QDI/+gnoJPJ+qvM2a4Z493vnciqtTOQtGOnDIxgdiXrys0u8
         lUEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6VsgCu5sXVbYFUce72DIuGEkxsKu6Z1xEEIQBjUsKCc=;
        b=pBZYZhTEdNC1iI2ozJbdFp59vUy0vCkZSwKgDdssERz3FCbKxiJd/5EQq18E+2+qKz
         vs635avlmznKYcbMuiFG7YekRppdIZmtm6e2BHW7KgsvF2IW0Oeb3JDYiTdRr+taA4Sg
         qP9XXA5tBDS7fw9QgpgbYKWBNpRWJxMaIJkCg5jYaR34UlpbGs4OxZW0w9R7j9zLnDTb
         o8I3LhW6k42aDWLjoqReV2IiN/DCepfKPUqQI4l4RzwkC5mROQFHtl9rOBT3jyEjCI5P
         1fLv/UAHrp52KYHQ0GPfOiFPA8Opf9thXrtEZ6dYHyaPDOVZnXJFBcPGNaBCDBzmMvFa
         rbzw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532DaJVo7lEXlbIDqms8ZFlK2kjtu3wued5iNV+ok3vlP6VaM5XN
	bqohyyiDIduNNYkUycTwCWE=
X-Google-Smtp-Source: ABdhPJwQ4mFwOEsgUXYgAeHYXliVc5jnLvvjjb8Y/FbLR6cGDAvdDHsDk7BAFPW44QwBjnEYoJ1tzA==
X-Received: by 2002:aca:c545:: with SMTP id v66mr4098009oif.66.1597865048644;
        Wed, 19 Aug 2020 12:24:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:d658:: with SMTP id n85ls5139504oig.7.gmail; Wed, 19 Aug
 2020 12:24:08 -0700 (PDT)
X-Received: by 2002:aca:42c1:: with SMTP id p184mr4341246oia.3.1597865048205;
        Wed, 19 Aug 2020 12:24:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597865048; cv=none;
        d=google.com; s=arc-20160816;
        b=ncxh3QcFqA4NGApZsTwtnVLJ7h/bixr8UW+vNPvrWjbMf7KTlkvfJZuUBtv9qrAxqa
         bkwqiKC/Svkb3fNajEWEYPi6NBJadJQjiYz09VskaTbnCZ0DujmZgi54MxYyMuHBxpwG
         9/IKN2Ap5v1ykRzLvN2kEr82TVLZrY1WYV3vmS9MnZ+gHtcXbbuvPNycTRfjMOas0g5H
         3X+sYlGbtdwuRRyTYoC8snbFDh3XKMM4NXg6ZIFTsZ6pfL1amRuLlTsV05gCxuatiT79
         z0rIeRjmZKuz3eAWQJauR4TlrtVeoIguRsCx789a+vN+t+VsjH2oXdjymhlrs5tAkTJh
         t9eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=QJ1/+xq88LYlLcW4sXbhSkNSoCe9FeWKGvFGvnUP540=;
        b=pmJUGmHbYRuh/jDeBBpXFaA88LdzVdeaEmcSx19I513IUtaMkNjnJkPTkmoIAlML5C
         AluPXEun8VwGEVvbWpBCXu3KS2j4vPlrJ5x+reabA1CiAwag87o8LNAc90BOYzNfnf+w
         4/6ST+X8dgpV1vP3vDObfcn/C2XoyLCytSk+qvCS477KhpXia86B9uCqgazv5/anHL7F
         blU82ulaLJPYhxiC2aSy20x3PR9SOH+Ej0uJTjh7RfoGUR5R2BehbFDDTh+y+tn5uqfF
         hq2Yz3zu7vgHlFhKi41JzNz4Cd2bMnPgpxvORG9gLLpkyopm9kd6DtGnn2IXvuwbss+3
         aOHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=GeI8lPtK;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v18si1848808oor.0.2020.08.19.12.24.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 19 Aug 2020 12:24:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (c-73-231-172-41.hsd1.ca.comcast.net [73.231.172.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9402E2078D;
	Wed, 19 Aug 2020 19:24:05 +0000 (UTC)
Date: Wed, 19 Aug 2020 12:24:05 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: Mike Rapoport <rppt@kernel.org>
Cc: Andy Lutomirski <luto@kernel.org>, Baoquan He <bhe@redhat.com>, Benjamin
 Herrenschmidt <benh@kernel.crashing.org>, Borislav Petkov <bp@alien8.de>,
 Catalin Marinas <catalin.marinas@arm.com>, Christoph Hellwig <hch@lst.de>,
 Daniel Axtens <dja@axtens.net>, Dave Hansen <dave.hansen@linux.intel.com>,
 Emil Renner Berthing <kernel@esmil.dk>, Ingo Molnar <mingo@redhat.com>,
 Hari Bathini <hbathini@linux.ibm.com>, Marek Szyprowski
 <m.szyprowski@samsung.com>, Max Filippov <jcmvbkbc@gmail.com>, Michael
 Ellerman <mpe@ellerman.id.au>, Michal Simek <monstr@monstr.eu>, Mike
 Rapoport <rppt@linux.ibm.com>, Palmer Dabbelt <palmer@dabbelt.com>, Paul
 Mackerras <paulus@samba.org>, Paul Walmsley <paul.walmsley@sifive.com>,
 Peter Zijlstra <peterz@infradead.org>, Russell King
 <linux@armlinux.org.uk>, Stafford Horne <shorne@gmail.com>, Thomas Gleixner
 <tglx@linutronix.de>, Will Deacon <will@kernel.org>, Yoshinori Sato
 <ysato@users.sourceforge.jp>, clang-built-linux@googlegroups.com,
 iommu@lists.linux-foundation.org, linux-arch@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-c6x-dev@linux-c6x.org,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 linux-mm@kvack.org, linux-riscv@lists.infradead.org,
 linux-s390@vger.kernel.org, linux-sh@vger.kernel.org,
 linux-xtensa@linux-xtensa.org, linuxppc-dev@lists.ozlabs.org,
 openrisc@lists.librecores.org, sparclinux@vger.kernel.org,
 uclinux-h8-devel@lists.sourceforge.jp, x86@kernel.org
Subject: Re: [PATCH v3 09/17] memblock: make memblock_debug and related
 functionality private
Message-Id: <20200819122405.88e9719e86ac7c3c44b4db32@linux-foundation.org>
In-Reply-To: <20200818151634.14343-10-rppt@kernel.org>
References: <20200818151634.14343-1-rppt@kernel.org>
	<20200818151634.14343-10-rppt@kernel.org>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: akpm@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=GeI8lPtK;       spf=pass
 (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=akpm@linux-foundation.org
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

On Tue, 18 Aug 2020 18:16:26 +0300 Mike Rapoport <rppt@kernel.org> wrote:

> From: Mike Rapoport <rppt@linux.ibm.com>
> 
> The only user of memblock_dbg() outside memblock was s390 setup code and it
> is converted to use pr_debug() instead.
> This allows to stop exposing memblock_debug and memblock_dbg() to the rest
> of the kernel.
> 
> --- a/mm/memblock.c
> +++ b/mm/memblock.c
> @@ -137,7 +137,10 @@ struct memblock_type physmem = {
>  	     i < memblock_type->cnt;					\
>  	     i++, rgn = &memblock_type->regions[i])
>  
> -int memblock_debug __initdata_memblock;
> +#define memblock_dbg(fmt, ...) \
> +	if (memblock_debug) printk(KERN_INFO pr_fmt(fmt), ##__VA_ARGS__)
> +

checkpatch doesn't like this much.

ERROR: Macros starting with if should be enclosed by a do - while loop to avoid possible if/else logic defects
#101: FILE: mm/memblock.c:140:
+#define memblock_dbg(fmt, ...) \
+	if (memblock_debug) printk(KERN_INFO pr_fmt(fmt), ##__VA_ARGS__)

WARNING: Prefer [subsystem eg: netdev]_info([subsystem]dev, ... then dev_info(dev, ... then pr_info(...  to printk(KERN_INFO ...
#102: FILE: mm/memblock.c:141:
+	if (memblock_debug) printk(KERN_INFO pr_fmt(fmt), ##__VA_ARGS__)

ERROR: trailing statements should be on next line
#102: FILE: mm/memblock.c:141:
+	if (memblock_debug) printk(KERN_INFO pr_fmt(fmt), ##__VA_ARGS__)


The first one is significant:

	if (foo)
		memblock_dbg(...);
	else
		save_the_world();

could end up inadvertently destroying the planet.

This?

--- a/mm/memblock.c~memblock-make-memblock_debug-and-related-functionality-private-fix
+++ a/mm/memblock.c
@@ -137,8 +137,11 @@ struct memblock_type physmem = {
 	     i < memblock_type->cnt;					\
 	     i++, rgn = &memblock_type->regions[i])
 
-#define memblock_dbg(fmt, ...) \
-	if (memblock_debug) printk(KERN_INFO pr_fmt(fmt), ##__VA_ARGS__)
+#define memblock_dbg(fmt, ...)						\
+	do {								\
+		if (memblock_debug)					\
+			pr_info(fmt, ##__VA_ARGS__);			\
+	} while (0)
 
 static int memblock_debug __initdata_memblock;
 static bool system_has_some_mirror __initdata_memblock = false;
_

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200819122405.88e9719e86ac7c3c44b4db32%40linux-foundation.org.
