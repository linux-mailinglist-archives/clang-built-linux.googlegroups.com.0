Return-Path: <clang-built-linux+bncBAABBPEVVH4QKGQEJSDNNHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AA4323C565
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 Aug 2020 07:59:25 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id y10sf4274710plp.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 04 Aug 2020 22:59:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596607164; cv=pass;
        d=google.com; s=arc-20160816;
        b=DzndZYousoEea9hDnCVxSYVD32fgUV0kKPTHbV/z0mL9ANlLcvaovqVFG9oFPLAo28
         xs1w0a/X3cY4604dn6QaHi4UpUHJWTBgFXX35PH7a7COYxV0GqdcBfwFmNjybaKJyYLe
         4EYmgRBUav0UFNv6Nno3EpZ4thy68yLSX/6bisttxRd0QoFiyOmpfH+mvlusrSxt3ydV
         fGLqlej2DvR1dhMstY+LQzOn0FzKFyRqrXaBJvOFkERH71IBYzcpicaaZRQUxXJ0FS3H
         kWtXUexezV6Gbe1935V+PHi40O6aANBRUKS0KwQu+yuFsj2DhM0a8NrZ/sQIBS7YT+wZ
         nzIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=y4Dst7SOiNT90hrpET2ZslMnrALhm9fKLbgRmp17wUY=;
        b=hx0eaZzm/6bqYlBc/Tb113UCvOWHhhLn3tLi9HkNAwaA7sI/owKbpoWD5DAcusinJz
         EUCni1o5YPmWhX79JutJOIhySVY4zQ3JViwPHERToK7aD+H6hF92+UWaKkTn/+ttuFlw
         NJewwMycRQpMNmxmxFkuWBT9sIJbnxg3mZUrBsp1RagbkrADq0be+9d4UI1KVptUiHbc
         n+WDO0GZQX/Hfa9SvcJR9+pXjKsmW0jO5I95XGmxFnKl55s5knlC7IOP3+/Z2Hs0wmUu
         GAB+ANetsGquJpOgETOosUIl6+8xE1Tji06COclPEwv9garvgPCy1rxP9KzdciaHBF9A
         Hj3Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=bFmzYj+z;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=y4Dst7SOiNT90hrpET2ZslMnrALhm9fKLbgRmp17wUY=;
        b=i9GgCJ71MaGhxm0sIY55hdcrOdbHgSGv6hjSEMUbF9nvbKJRisY8ZiL7UsqQBo/J4l
         vABV9GNFSi6j9abwPAD9dBIyHXpRn0Wi8pqwVT85wP+KItv8kBArV1ye8P/b8Vs+ECb4
         MeaVifAyp8BJ6h1sc+1aO3hNiez0x4kvOU3YuQnDRAmAqXXwp08AyMytOiaENZzh3uMx
         NBWKFTpveI8vYGQxSDdSMccevFhe7OOyOkP/ccxNXXFalYzELa7ZhtD2X30OBahaPNui
         Y9bpqXWjt8UWWG/xQrPoxF2O+QqcKKjyvyPFJ0O1TUvHa4ej1MT5PgUYyjtUchiMfGKo
         H99g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=y4Dst7SOiNT90hrpET2ZslMnrALhm9fKLbgRmp17wUY=;
        b=EO1alnDx93UySn1qRVrejzY20fAj1ctS8XfHeBU4KsmFeHQXR47ax+6pRrjlknqWA3
         FFQZvGd7YcxwDwKBsE0pXI59TxiwDApy3Kd7sC+g0yF5o1lMjC7aaT5zcGBu0zf7h84v
         0IGpvtZZrejHtAbvUR7r9Y86DV8YcWR8QDEog30uLMH6/+YAT5QV3CdA0CkTPLMbmHlZ
         uLjbxR7FM2/xm/yCzh82jA+X4ru/4QiDpsaguo1vAEXBi5cjc5dkBRlQPtK4t1mAzcpn
         x2BQJUChZsBxbH9275eYrxOVMGO/GQ4r3f6+X4rE/5YBgO2unplG2rMBFd4LEFrBuQhS
         croQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531MAarmJmZH6N6EE4mgH/NriDBWyPmKXt5E+E4T0eZwwu79VLG6
	G2pfNw0Yr77xGEe/abPkzl4=
X-Google-Smtp-Source: ABdhPJytVWzuP9n5HPuyrHmx4/FHkYZfR069vPxC75imdouUAwhxJaTp6YI3bfrBX/iSrxALvHqFQA==
X-Received: by 2002:a17:90a:b386:: with SMTP id e6mr1696079pjr.57.1596607164064;
        Tue, 04 Aug 2020 22:59:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:bf04:: with SMTP id c4ls484799pjs.3.gmail; Tue, 04
 Aug 2020 22:59:23 -0700 (PDT)
X-Received: by 2002:a17:90a:e390:: with SMTP id b16mr1715254pjz.20.1596607163726;
        Tue, 04 Aug 2020 22:59:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596607163; cv=none;
        d=google.com; s=arc-20160816;
        b=OJaWNaCjOsIyMEzSBbCVAptIN3fHU2wuqv0GMQfSWKbg6GNTseY+WIjW3aMf4PN4Az
         NQCC4qSlzOhJX9XTNO3CbFnczoFAUeLbHJpU5bi+KS4PsV+ext1uqUql0OX2ayiQaZXq
         cFdP50NGFlr7EnZmpu10SByDdv6SNV/NGhNJTJQcOO605Nnru0IDykL7/GXBUnNc64Ii
         p+PQe66GKOp7jHn7YtdZRigt9LZf8BJwZuLVNTpXAs2oSTr6Idd3PArbrbH2XAb6yUpf
         apbRzPgf3yF+TV+x9G34Zek3XnMpkh7PhOd4EbRyuq9b9C0xLtl738R0NBoj50pLLsz+
         OPlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=xHsKhWJahONxwPrfGzQoRsoTq3Umu5QX7WGZyJyr2MQ=;
        b=tHYhN3QyhvCL/hn05GQQYkOaRrRHMFrj3eASASQo2tfvQUGB8/qLo+IR7XCVEygBnq
         f6LtN7l9fz6kzymK68O5VzMR/KlabI2EcDsV7C+0VPQbk1v84U90qZdMhITZ507AHSwI
         QG0E3jWe+n8yeN2ILxRABXMVdciLwGdemKySPWr4z4jmle64xykIgXkbDoK0sDjLud+I
         PZmlWEHjukNCZxkUlZw2QrYUXuJCaBSjUP5hjtTRSPB6pnrk+cIKWzBM1GoWnbf8aPaU
         /PoviKKJ1LzuqTOJZX31JzvF2z/fGyHqjZW/z47AThXh6kUYzYheebwXNmdtnitrCZK9
         Sjfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=bFmzYj+z;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h18si80821plr.5.2020.08.04.22.59.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 Aug 2020 22:59:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from kernel.org (unknown [87.70.91.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2F6D52245C;
	Wed,  5 Aug 2020 05:59:13 +0000 (UTC)
Date: Wed, 5 Aug 2020 08:59:09 +0300
From: Mike Rapoport <rppt@kernel.org>
To: Baoquan He <bhe@redhat.com>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	Andy Lutomirski <luto@kernel.org>,
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
	Michal Simek <monstr@monstr.eu>, Mike Rapoport <rppt@linux.ibm.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Mackerras <paulus@samba.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Russell King <linux@armlinux.org.uk>,
	Stafford Horne <shorne@gmail.com>,
	Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
	Yoshinori Sato <ysato@users.sourceforge.jp>,
	clang-built-linux@googlegroups.com,
	iommu@lists.linux-foundation.org, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-c6x-dev@linux-c6x.org,
	linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
	linux-mm@kvack.org, linux-riscv@lists.infradead.org,
	linux-s390@vger.kernel.org, linux-sh@vger.kernel.org,
	linux-xtensa@linux-xtensa.org, linuxppc-dev@lists.ozlabs.org,
	openrisc@lists.librecores.org, sparclinux@vger.kernel.org,
	uclinux-h8-devel@lists.sourceforge.jp, x86@kernel.org
Subject: Re: [PATCH v2 13/17] x86/setup: simplify initrd relocation and
 reservation
Message-ID: <20200805055909.GD8243@kernel.org>
References: <20200802163601.8189-1-rppt@kernel.org>
 <20200802163601.8189-14-rppt@kernel.org>
 <20200805042024.GT10792@MiWiFi-R3L-srv>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200805042024.GT10792@MiWiFi-R3L-srv>
X-Original-Sender: rppt@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=bFmzYj+z;       spf=pass
 (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=rppt@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Wed, Aug 05, 2020 at 12:20:24PM +0800, Baoquan He wrote:
> On 08/02/20 at 07:35pm, Mike Rapoport wrote:
> > From: Mike Rapoport <rppt@linux.ibm.com>
> > 
> > Currently, initrd image is reserved very early during setup and then it
> > might be relocated and re-reserved after the initial physical memory
> > mapping is created. The "late" reservation of memblock verifies that mapped
> > memory size exceeds the size of initrd, the checks whether the relocation
>                                           ~ then?

Right, thanks!

> > required and, if yes, relocates inirtd to a new memory allocated from
> > memblock and frees the old location.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200805055909.GD8243%40kernel.org.
