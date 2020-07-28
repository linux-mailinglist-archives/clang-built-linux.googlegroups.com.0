Return-Path: <clang-built-linux+bncBCKPFB7SXUERBBXKQD4QKGQEG2XLQYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id DA199230C51
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jul 2020 16:24:07 +0200 (CEST)
Received: by mail-pl1-x63b.google.com with SMTP id bf1sf11944205plb.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jul 2020 07:24:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595946246; cv=pass;
        d=google.com; s=arc-20160816;
        b=0Zb76YayexkJ2nR7MBqqZTQqX91FcSryWaVhia6L6GMQhzvpW23dwYn3zCl7S+eGGp
         NQTCyqEJYJgBRWk0fqkAfmkwr4nVebJ7uQ8tIBWVVVMyOTHq5oZyDvYbH9K9AyJ457TK
         +1NnCXgiJGc9c2gYhL8dqODGEtDbD1jEKCospz0Q1cXrGofRqpZGHF7vrCo7l0CKNBSx
         H36iKwzCJl1GNg82hjh5xsbuhUH/HkxigRAF6XyFDS+oP9w02MhwDLNwBzNweXarMUfn
         L5KuplfAJwZPXr8v6uKpslwZDTmJpUf/B/WB6WzBJnPHXohaM9k9WNvpvCXqcp6Ha/FS
         Mu7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=uPIoajmdQZhfNHGHlGEk3rOHmGzWhefMi3JyOgTMPbk=;
        b=zUoCMt8AeWRNaUJws5QO/zaiFCUhGBxyDwbMydcSmD+4EOtAB5tHtOGhP3I8G0Xx56
         7UqthJDVT1b51pY21F+m+r24+nPD/FMWMMDu7U2vCWV3Uj+aMb486qpac1/eBulZ4MlI
         Xqauywblmi29rGposhQzrtI2Zv9IG0cYEaHnddaeSRMEnyJ/vC5NcXCd62d7WrQL+3vc
         cK+iL/ZURnXSSrfxMEow2yv3g+itxcHHnYDpBL0f2o4N0Zw4tMucdCduwtOPz8FDInMX
         rEYxOXAhwSf9kUDrzjBTg9YpfBj09Lvd0UN69LwnsQ1YdExWRL37qI9f9yDFR0p2hFRe
         tMdg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=hmlhlf1k;
       spf=pass (google.com: domain of bhe@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=bhe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uPIoajmdQZhfNHGHlGEk3rOHmGzWhefMi3JyOgTMPbk=;
        b=ZvKoJ5R5u+n2uv7WhqQJd545Lb+UaL8dMSrgKjrHWqrW7PZhXgXfi4aVqu7iv0qGVC
         VnM97EUO85JFAeM820jh7yZRecx9VoQMWsCDTnrJGR41vJfSUmkeDBDY91xxMM5V6JVU
         mdDfixWHzwF2Sk8xKV01lKu204XV8iyhJcKTH4CGARgY0aQ9d++2mpDdui7F8vBPcIxz
         Y/Mk9ETXsAI9LwqiG619y18+EFfzaeH36t5OTp6nHkNNqhQYCjlF2h8AuXqIKyudqAFC
         8R2C2IH26mqIZR39eWcvCNpyi6n+xnBdlsH8ekSlM5DU/9FswxwuEQJRsUlv52TYuDbZ
         MOuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=uPIoajmdQZhfNHGHlGEk3rOHmGzWhefMi3JyOgTMPbk=;
        b=nVbCY8J/BUHtlXbQ+j6wmahzCs1dOFZpDsq/K6ZWiRZweoYf6av2qATfTrfr8EMQGd
         WMnCcC2yDAHMO6en1P6UBqnWsJMJUSUgjBN1DHPAETdY93LQ0ASVFh1Wq6EvlhgxROuw
         LQSsE18NTPFTvP4bj0TNKZXEHkjMMDPQG+jZETuXdfuW6To7W+DmjyfES4UxWblWusyc
         DBQ1raeCQCvl2RCjfcz5ZCEkQeJ1eQuoKlVklXlghhf0vrLF84lerQxhMDte24sfR6XQ
         QEAEKf34KB98Vx0eM1HNv4Wp9Kyg9Wvtnsu6UQBOhNib7O9JCMElpnBeyphvIXzx/FPE
         kZnA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5324avhjYTTHj2+fUQye9RwvFvZGCDvfkudH+/47yOUUgQtZYZY2
	IM2V3QiYOrFgF4dF98Djr0o=
X-Google-Smtp-Source: ABdhPJwRsbxZ25PLF4+AxrlBvrtlg+BEKl0N9McRPeLAwYQlflYBac3/GTL/KUDS8ebaGaPLdGBPjg==
X-Received: by 2002:a17:90b:1249:: with SMTP id gx9mr4769094pjb.149.1595946246119;
        Tue, 28 Jul 2020 07:24:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:3785:: with SMTP id mz5ls1468574pjb.1.gmail; Tue, 28
 Jul 2020 07:24:05 -0700 (PDT)
X-Received: by 2002:a17:90a:2207:: with SMTP id c7mr5158552pje.206.1595946245754;
        Tue, 28 Jul 2020 07:24:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595946245; cv=none;
        d=google.com; s=arc-20160816;
        b=Zy+w/WI59wBx9gzVO41pt4NhmkGyUWz6yiI3DpJpvzoV0odiF6QzG42iqokcTi65PB
         XgP2B6Rsf4BP3f5jYIxV7MECRQkZyIfqZccCw6LMq2Vd/7RChoQpmaoM1JSy6+TxpqH7
         mNP2hqQTjaBqVum+eTtha+omEEHDC8wELb9IatuiN9HFb8KcoZpG+8ucRRh6mbLmooZ3
         hEVo9aUvEFspF5mGcxDG/KzuBmJf4xPdO6pYB2wpvji0hoHPZ8AxrVmjWRRnONQVqCy3
         AAe9A5xhP0VQsI3WAUWiT1u3bQFP/TcNd4gVYmdO+mVQRRCQv+REGVB0/7CSQdhvJzB8
         bjYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=06rCqpwu1j4S1S47vgUTPXYPKKso17TGQwzOaoYSYfs=;
        b=d5ZsN9USPoQj1VgCHODfnS64KQj5wuYg2fzKXfjF25CYQ6a+pQgyHJjNMpp2Euu8/Z
         xK+f5JLxhOoWNamUxMOPFzl2fQf/A7GF/EugVcuwMbeQEya/9Uu1kO2hzoEkYnivz8Nw
         5i5l5wjb2dTgY0RhMxqqYB2IKDohprSl6urGFQmcPf7t7kQ0LytS4KrlEBQgSMFcQ1In
         wtX697mlBji5CkL2+Isn8Isx0pwXFz/UKLP7L5DZbpIGe+b2Kv+mBQ4Fk1dp62prT3QO
         4QSemCqox/G+npVS1XFvswPcO/bZfHtWTYL7UWzJZ/IwoXsYFHEvsqzKay6ju9Ailofy
         FDzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=hmlhlf1k;
       spf=pass (google.com: domain of bhe@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=bhe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [205.139.110.61])
        by gmr-mx.google.com with ESMTPS id c4si83014pjo.0.2020.07.28.07.24.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Jul 2020 07:24:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhe@redhat.com designates 205.139.110.61 as permitted sender) client-ip=205.139.110.61;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-166-XL5fGaBiOsyWEWGpA51xEg-1; Tue, 28 Jul 2020 10:24:02 -0400
X-MC-Unique: XL5fGaBiOsyWEWGpA51xEg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8B54D1B18BC1;
	Tue, 28 Jul 2020 14:23:54 +0000 (UTC)
Received: from localhost (ovpn-12-117.pek2.redhat.com [10.72.12.117])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 303B41010427;
	Tue, 28 Jul 2020 14:23:51 +0000 (UTC)
Date: Tue, 28 Jul 2020 22:23:48 +0800
From: Baoquan He <bhe@redhat.com>
To: Mike Rapoport <rppt@kernel.org>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	Andy Lutomirski <luto@kernel.org>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Borislav Petkov <bp@alien8.de>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Christoph Hellwig <hch@lst.de>,
	Dave Hansen <dave.hansen@linux.intel.com>,
	Ingo Molnar <mingo@redhat.com>,
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
	iommu@lists.linux-foundation.org,
	linux-arm-kernel@lists.infradead.org, linux-c6x-dev@linux-c6x.org,
	linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
	linux-mm@kvack.org, linux-riscv@lists.infradead.org,
	linux-s390@vger.kernel.org, linux-sh@vger.kernel.org,
	linux-xtensa@linux-xtensa.org, linuxppc-dev@lists.ozlabs.org,
	openrisc@lists.librecores.org, sparclinux@vger.kernel.org,
	uclinux-h8-devel@lists.sourceforge.jp, x86@kernel.org
Subject: Re: [PATCH 14/15] x86/numa: remove redundant iteration over
 memblock.reserved
Message-ID: <20200728142348.GE10792@MiWiFi-R3L-srv>
References: <20200728051153.1590-1-rppt@kernel.org>
 <20200728051153.1590-15-rppt@kernel.org>
 <20200728110254.GA14854@MiWiFi-R3L-srv>
 <20200728141504.GC3655207@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200728141504.GC3655207@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Original-Sender: bhe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=hmlhlf1k;
       spf=pass (google.com: domain of bhe@redhat.com designates
 205.139.110.61 as permitted sender) smtp.mailfrom=bhe@redhat.com;
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

On 07/28/20 at 05:15pm, Mike Rapoport wrote:
> On Tue, Jul 28, 2020 at 07:02:54PM +0800, Baoquan He wrote:
> > On 07/28/20 at 08:11am, Mike Rapoport wrote:
> > > From: Mike Rapoport <rppt@linux.ibm.com>
> > > 
> > > numa_clear_kernel_node_hotplug() function first traverses numa_meminfo
> > > regions to set node ID in memblock.reserved and than traverses
> > > memblock.reserved to update reserved_nodemask to include node IDs that were
> > > set in the first loop.
> > > 
> > > Remove redundant traversal over memblock.reserved and update
> > > reserved_nodemask while iterating over numa_meminfo.
> > > 
> > > Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
> > > ---
> > >  arch/x86/mm/numa.c | 26 ++++++++++----------------
> > >  1 file changed, 10 insertions(+), 16 deletions(-)
> > > 
> > > diff --git a/arch/x86/mm/numa.c b/arch/x86/mm/numa.c
> > > index 8ee952038c80..4078abd33938 100644
> > > --- a/arch/x86/mm/numa.c
> > > +++ b/arch/x86/mm/numa.c
> > > @@ -498,31 +498,25 @@ static void __init numa_clear_kernel_node_hotplug(void)
> > >  	 * and use those ranges to set the nid in memblock.reserved.
> > >  	 * This will split up the memblock regions along node
> > >  	 * boundaries and will set the node IDs as well.
> > > +	 *
> > > +	 * The nid will also be set in reserved_nodemask which is later
> > > +	 * used to clear MEMBLOCK_HOTPLUG flag.
> > > +	 *
> > > +	 * [ Note, when booting with mem=nn[kMG] or in a kdump kernel,
> > > +	 *   numa_meminfo might not include all memblock.reserved
> > > +	 *   memory ranges, because quirks such as trim_snb_memory()
> > > +	 *   reserve specific pages for Sandy Bridge graphics.
> > > +	 *   These ranges will remain with nid == MAX_NUMNODES. ]
> > >  	 */
> > >  	for (i = 0; i < numa_meminfo.nr_blks; i++) {
> > >  		struct numa_memblk *mb = numa_meminfo.blk + i;
> > >  		int ret;
> > >  
> > >  		ret = memblock_set_node(mb->start, mb->end - mb->start, &memblock.reserved, mb->nid);
> > > +		node_set(mb->nid, reserved_nodemask);
> > 
> > Really? This will set all node id into reserved_nodemask. But in the
> > current code, it's setting nid into memblock reserved region which
> > interleaves with numa_memoinfo, then get those nid and set it in
> > reserved_nodemask. This is so different, with my understanding. Please
> > correct me if I am wrong.
> 
> You are right, I've missed the intersections of numa_meminfo with
> memblock.reserved.
> 
> x86 interaction with membock is so, hmm, interesting...

Yeah, numa_clear_kernel_node_hotplug() intends to find out any memory node
which has reserved memory, then make it as unmovable. Setting all node
id into reserved_nodemask will break the use case of hot removing hotpluggable
boot memory after system bootup.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200728142348.GE10792%40MiWiFi-R3L-srv.
