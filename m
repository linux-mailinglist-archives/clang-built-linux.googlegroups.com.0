Return-Path: <clang-built-linux+bncBCKPFB7SXUERBKW4VD4QKGQE7LH7R7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 9770423C431
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 Aug 2020 05:57:32 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id t11sf18827485pfq.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 04 Aug 2020 20:57:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596599851; cv=pass;
        d=google.com; s=arc-20160816;
        b=XtEAJIzlfgE46mn9Es0AYinPZALOnXy92S2dHcyRnf9z1S3hccXISK2aEWC0UeYbdh
         4ptQaBRjsExmqMMXl7AzvI6p+q+PLYADZHAGr+gVleuMslICKMzI89yYACY3AyWhRAh/
         j0TBqn2u4vBK2Pi2QeXmkYvWnngy4fo5o+N6sk6sPlyPRyarApubAcwSLDIijIH9s4m7
         bd/tXqusbHjQz43Arekd23icbjdGrN8Zz+zqoKLDpbKlglxWxMNaPTXSTnqsnwKHxQp2
         u2AOyTNRKcJzpdRQYBdGi+4uYqDJP4bOg2jknRXGHwprf9AgEYNNFBE+EfgHJmn0rFd3
         upug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=hs/u6UxRs2M2vKrLKCuocpJzV5axOcK+f7Cm/neMeUY=;
        b=N28Y0E0uxMGaa8QfkuDyDSaA7d+tSqpts2Ddx41CI1qEmTpuq3h/QGKJxIyo4aauyx
         zsSTxZw1RAIJub0IkCIaUvLNN/6W5khGb+CPPbk21A0/CYsZWsJhFRh8IzzJ7xFYpUFh
         2W1v7CJkxJ5aOZIv/BwMz5Gk3ahUQO3Kuhex1vKoAW3yeixeBSlfpAu/UrY3KMoqT7n5
         k12u94ZCn+W0M++B0/qgwySqVwd5BhKPKH+s97ni43/Qy367iB1gjhWrWZf15fEizXXy
         czZ1sDrUp74d7Cc6nWPnil5kCJORZ4YDPeAns1EczMiAS/J13tk3I6PC2Go8x838juDj
         GYIQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Xr2voHUY;
       spf=pass (google.com: domain of bhe@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=bhe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hs/u6UxRs2M2vKrLKCuocpJzV5axOcK+f7Cm/neMeUY=;
        b=oS9cKHPi1dvVLuZyOEbhEEH4Auf1Ly4LeWjvf6xkPWAHZfD9CiOTqTMv1T9Wpou4a2
         rshl6z3ac9pUMX4B8Tq1QAEwIAbh7IeeRp6SoHsWqi6VxCjtA3WPzqITiUv1GE1CVrv7
         LoDLF4Nc340Ji6o6bhmcUwPGP8A+3H6QljdgwQY6+0rStBlPf26kln/VW84rcCEhUZ/9
         RKv2hayWklfx7APiwiaOLhwAy6BtdPAR+qSoTn0BhlDd9q44lInP5OF2zc1TGiUSEv0G
         ayIbsUWQWaVd2O5VE7l+5bZZiyObcXbVaZGt+Os1sMivtE3j9/9e5L/mZhyPnmViEO5Y
         DbgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hs/u6UxRs2M2vKrLKCuocpJzV5axOcK+f7Cm/neMeUY=;
        b=UdGiMQZnioIkSVFJ1wgjYfh/P2wMDDUJhteGtFU2WY42W5yxkPm/K+IIL6rCqQQIy8
         b/9Ob+a1OFd1pRJXHZzNLBFWd9CP+8FHgBvbc70tyKCxspbIlb6QOy1rn0wpJD3FP+ZC
         K33wqCqjEkgKTEEJMyzMrbqRb/HyNl8yMKzrEMb6nyUVvG+mxpB+i2gOyX5dwoiKSOtY
         NoQVxkc3pI6lhD6mAiaU30KL3Kqa40EyWw0ut9PgRIHREw+fsrrMxMX9nTDXbivyIQaH
         IUPUArQZ3e/MtgWF346ICNzy94cYjaa9cc5QCQSM/jblJuA2nVtVccxIbbba99EddmFK
         SN0w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ypygmnjrlbOFYCzSaKTmiaVSnon99mGbYhqazaMZQgFPuWV9F
	Ab3wg3f4+11LwUVovtZltXM=
X-Google-Smtp-Source: ABdhPJwEoqahxBRHMDHU6Lbkz7WshDkh+ESLgnah0V9GauWHOUi8JwegRnpKzMj9wL0q9+XleBrurQ==
X-Received: by 2002:a63:4a4c:: with SMTP id j12mr1345165pgl.115.1596599850957;
        Tue, 04 Aug 2020 20:57:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:f158:: with SMTP id o24ls250121pgk.4.gmail; Tue, 04 Aug
 2020 20:57:30 -0700 (PDT)
X-Received: by 2002:a65:67d0:: with SMTP id b16mr1392737pgs.60.1596599850590;
        Tue, 04 Aug 2020 20:57:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596599850; cv=none;
        d=google.com; s=arc-20160816;
        b=BiwGSPnfPdeqgZAjfC8zpVndm+sA7/eC6ASazEVrirpsTI6yukBYiBo3ir8Z50V3ap
         YdGqagLjVgark4ulptnDtCGr3YKjGtO3s/bTcozSwnNMURf6bzXrtpZwxyhJKGYkwxap
         pSbyjpP3FtB47GMhkW9rz3Me5gIim9PZBLhh1HLYVYMnRiliRCvEZdOM4E4snmdRS43P
         t9Tva9XA+3/lTDmILtbxBVhFtbC18v37iMeVNtzrU7BZGKn87R5u9HZYUhZUBQidb+2x
         Sy/feMxrldWguqZNHkFfyxivIYoaRftL1p4N9A3g23gjPmdI/d/dgi+l1zLeqOgMp04i
         nu/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=TYHMWO+/kd/xb1BEqnZIo41jyaK7ZhQvyZqkmGc35KI=;
        b=nyHh8qN3UarVCP0kzRuK8tb/P+6XepQr8fisHbghKsr96FOTIdadyXFrduAMGZnV+j
         5kitPfw8FDwflEAmL3NlyWZqrCHKvSTJaXVrQHSDVw8WoyankNojQMMnEjHnw+c/fNK+
         fSAzo5xSuy4EI0PbsElAzzhTV8EljTqCK63CuiECIC1gJT/rBNKX+4yETn88ezN/xgkl
         1gQY8hnbz37beB67ABswIUpxrvSiTtPvCcmzCG2r23c2Ymrd5sxy4AHd6/OSYiz8MKHH
         eGIgirZLDpezJk3FWpSBohP+vilvY9xsW+drH+Xz36wgh1BTn8t/82IhoN1fQVh2jgFL
         UIbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Xr2voHUY;
       spf=pass (google.com: domain of bhe@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=bhe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by gmr-mx.google.com with ESMTPS id a24si31153pfk.6.2020.08.04.20.57.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 Aug 2020 20:57:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhe@redhat.com designates 207.211.31.120 as permitted sender) client-ip=207.211.31.120;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-301-qwjgBZnQPM-_Txp2UuCA1g-1; Tue, 04 Aug 2020 23:57:25 -0400
X-MC-Unique: qwjgBZnQPM-_Txp2UuCA1g-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7FD12800138;
	Wed,  5 Aug 2020 03:57:20 +0000 (UTC)
Received: from localhost (ovpn-12-71.pek2.redhat.com [10.72.12.71])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B719C87B38;
	Wed,  5 Aug 2020 03:57:18 +0000 (UTC)
Date: Wed, 5 Aug 2020 11:57:15 +0800
From: Baoquan He <bhe@redhat.com>
To: Mike Rapoport <rppt@kernel.org>
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
Subject: Re: [PATCH v2 11/17] arch, mm: replace for_each_memblock() with
 for_each_mem_pfn_range()
Message-ID: <20200805035715.GS10792@MiWiFi-R3L-srv>
References: <20200802163601.8189-1-rppt@kernel.org>
 <20200802163601.8189-12-rppt@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200802163601.8189-12-rppt@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Original-Sender: bhe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=Xr2voHUY;
       spf=pass (google.com: domain of bhe@redhat.com designates
 207.211.31.120 as permitted sender) smtp.mailfrom=bhe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On 08/02/20 at 07:35pm, Mike Rapoport wrote:
> From: Mike Rapoport <rppt@linux.ibm.com>
> 
> There are several occurrences of the following pattern:
> 
> 	for_each_memblock(memory, reg) {
> 		start_pfn = memblock_region_memory_base_pfn(reg);
> 		end_pfn = memblock_region_memory_end_pfn(reg);
> 
> 		/* do something with start_pfn and end_pfn */
> 	}
> 
> Rather than iterate over all memblock.memory regions and each time query
> for their start and end PFNs, use for_each_mem_pfn_range() iterator to get
> simpler and clearer code.
> 
> Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
> ---
>  arch/arm/mm/init.c           | 11 ++++-------
>  arch/arm64/mm/init.c         | 11 ++++-------
>  arch/powerpc/kernel/fadump.c | 11 ++++++-----
>  arch/powerpc/mm/mem.c        | 15 ++++++++-------
>  arch/powerpc/mm/numa.c       |  7 ++-----
>  arch/s390/mm/page-states.c   |  6 ++----
>  arch/sh/mm/init.c            |  9 +++------
>  mm/memblock.c                |  6 ++----
>  mm/sparse.c                  | 10 ++++------
>  9 files changed, 35 insertions(+), 51 deletions(-)
> 

Reviewed-by: Baoquan He <bhe@redhat.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200805035715.GS10792%40MiWiFi-R3L-srv.
