Return-Path: <clang-built-linux+bncBCKPFB7SXUERBOXPVH4QKGQEJFLBLQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 77A5623C8B3
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 Aug 2020 11:11:23 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id k32sf1315474pgm.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 Aug 2020 02:11:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596618682; cv=pass;
        d=google.com; s=arc-20160816;
        b=Tv2K5dq0YRhU0Zp+MYOLBsI3EE3gRzHBYxL8FEni/skAsuYVOX8/yz1Ydtm76l0ELo
         i3L9gxjhoKfukbVnY5GPcW8Ujagzh6OSLI8P42sN/R2vnCVfvNh9gO/WFfZOPs7ZNKqz
         HCYPxpurjOiWZXgrBjfNRrdHaztZ3odr0KlC7q+9iK52Cyx+11klYVCSTNLJWn1MSmLh
         TymZyxT6aPKhtGn3cBf05ReHZliNn0mE+Ei8D+q8Vwhqzbiqd35thOfOhKV6EliMjpe2
         NlKS0vw+1iQ3QLecTF9gF+84uAhaEZyHEDv+Jti1C0Heg/GaAp5zxvauEuIh7tUgPHwm
         7dBQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=m/CYBBOTzFGmD0jbBSll2KwGlAwmmJ73uDh/IaQ+kAs=;
        b=dqJrcYgt41ZP98xmF+s/KHEWmxAImJlvf2ohL00z9bUQ1CMAO/IlJr37jJQ0nYosYT
         EKBfk5/NKXFeBEAPA131HQJ7YcAM43He44ThDbxlBrRANAo9jUPqWmgvkGXM/7k3Pn1l
         F0BD9nntTKSf9DIvi+yZQj1E3jMBgUQy/SztZBB1c07/9BpZeOEzWENfbzZE/6XaFe+1
         Rib+3fpSwcjpPZrGy+m5JVUVDOOxNFihaSjRbYg4DfgF1si6aAXnUAYS7UvkbIHbi0LR
         uNX4q3pg3/BNyYFKlfK2T7Z2GqiKGJ8Ia8YWqjVuMUpkFC5wlpdFFhuVttfbaIIX2kpJ
         j9Pw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=PKa1vVZ2;
       spf=pass (google.com: domain of bhe@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=bhe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=m/CYBBOTzFGmD0jbBSll2KwGlAwmmJ73uDh/IaQ+kAs=;
        b=Hy7w3AuoawdUTPfs2yXVo7gXx6DrO7zcvQVH4S9w6wEUrZ02FLNGYtmlaxHLir16zX
         8VJUTmcamTXY/L3nCTuy+qqvIMmsv5wKnd9unSKFuwUC2a8cPxfgoK3rcB39L6nyfOaU
         8fqFacskT7KApyePU7aCZN1xcKgZVCEQDfxpy/6ngCGtaoW5d3RoGKSyeUx4Rm4NbY7n
         ilnCd26Z829lbLyWYThmjN+cr5EI6IKzdpu39hURs/0yIhi/LVnlgLBkupfc4IpEXFPr
         TQ7bZHd7iIYWanS6UWCQBJkm2mwaU+j/gAhhFJ7y0WNXXxEofuNdxNUdYP6eupBRkBLj
         E00A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=m/CYBBOTzFGmD0jbBSll2KwGlAwmmJ73uDh/IaQ+kAs=;
        b=ek/Yy9yLdDV/RztwcvKmaQ0T3c0TgXDR360xE0wco9pccsnefx94HsD0M8EFqXKHsS
         F1McmPaUQKcEA5vc/ZJKOgtyuqG3G2kzD6GgM6gX7qxC+/kbyqtjCqO+fhgf44rK2en1
         AOk5i/5Jq90SRk4/DvqXAudB8tKcMLAG7oGViZhnVKEoKJMR6+m7GsBRpt0+s4sjhQr/
         K9FfsU+ZMC+j+ly6PQUu1+jotqF1ygP0MRhwPUEIlyz5ma7X3z5cfUTWy4tW+ci+VsRg
         ReRHti5qJ/vqTf+GCSrYikmtOIi2ZFJvXK616MUHIQKf5UqrdHCmsjIYjkTr0GHhwudP
         pQlw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531i1J7ZmXAQ1qzUpdupTuCkit7+29q5Cf70xl+q28M+Wj6RDfRe
	f8Eso/0QG2vzPlXesWVQPBk=
X-Google-Smtp-Source: ABdhPJzZ6/yXxyyAhtf4EzdFXiZCuz5u2Fp4JFAhN3AsBpAsRZG/UspWOJw8OR9ytU4fRc0VtDfYrg==
X-Received: by 2002:a17:90a:7f02:: with SMTP id k2mr2313241pjl.196.1596618682201;
        Wed, 05 Aug 2020 02:11:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:534d:: with SMTP id w13ls508850pgr.8.gmail; Wed, 05 Aug
 2020 02:11:21 -0700 (PDT)
X-Received: by 2002:a65:6243:: with SMTP id q3mr2175970pgv.57.1596618681780;
        Wed, 05 Aug 2020 02:11:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596618681; cv=none;
        d=google.com; s=arc-20160816;
        b=kYLQA+YoXl+1ZZMyPCo9x15Nm4S3qV11k2yBptTluhIjDyHe53+CqaIFSla62qUwNW
         Vi+WLsvzK0jsR8ADhuSuF6v8LNYUu9jRX48z/UsL40olmHJ9013DChue0AwU/spiY1LQ
         0oSTj/lMsy47DetdJ7P4rVHcy4kxJ4rkwDqtj+/TndBZhd9/83aWL9lxrxm6Tx52+0gD
         cARVaR/sDSeshDslkM7e+0x/XVB7lOjKSQgBdedJTXIHFBtPfP3DF96nlbcoVxd0MjAk
         ckWATuGvNSQ2VSnIHMTbcTlAHB5JuKzHxSSbyepfRPgYybQi+geskMGaoKk574euqCXj
         wzWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=4ozBDa1/xPHY8DQkaA9JqUMmSyVVQ14zD1Crd0znMso=;
        b=06zNOVGBlzINIiKBdncOsdlJ/RpwE6h5H+DZD5sKDPiwEVsPd5tdQ8M3MUssWxKmZx
         SN1OY6DxE6ozqbUi4Gvrd4c3XckkgTRyvRgwicY4/lr2OXC1yzf4n4ubaDk+wgD9Y/z0
         Bl9EM0w7yp35iqTGd+CiDeAgnU3+GXZsMXjJw4mRpgTEDdlWaRKvs/wvH86ea0ds4HaL
         /7/F1HVKJXjG8NxNYeH9g1WbzzW99M/fjq5HjhAdDVbtqwdJARwXEfufvOf1mF+mbWNo
         CdXDTGZTXGervSIUh/TDYlVswK2wEtPycIXl9eUpe7qHnDNYJztGrw6jMTtGP2IoEJ7s
         vG2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=PKa1vVZ2;
       spf=pass (google.com: domain of bhe@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=bhe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com. [205.139.110.61])
        by gmr-mx.google.com with ESMTPS id t16si78935pgv.4.2020.08.05.02.11.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 Aug 2020 02:11:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhe@redhat.com designates 205.139.110.61 as permitted sender) client-ip=205.139.110.61;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-16-yG35Dv0sMVyPaqKEAb-z_A-1; Wed, 05 Aug 2020 05:11:16 -0400
X-MC-Unique: yG35Dv0sMVyPaqKEAb-z_A-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DB37818C63C1;
	Wed,  5 Aug 2020 09:11:11 +0000 (UTC)
Received: from localhost (ovpn-12-71.pek2.redhat.com [10.72.12.71])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E2D2772E4F;
	Wed,  5 Aug 2020 09:11:07 +0000 (UTC)
Date: Wed, 5 Aug 2020 17:11:05 +0800
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
Subject: Re: [PATCH v2 16/17] memblock: implement
 for_each_reserved_mem_region() using __next_mem_region()
Message-ID: <20200805091105.GW10792@MiWiFi-R3L-srv>
References: <20200802163601.8189-1-rppt@kernel.org>
 <20200802163601.8189-17-rppt@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200802163601.8189-17-rppt@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Original-Sender: bhe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=PKa1vVZ2;
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

On 08/02/20 at 07:36pm, Mike Rapoport wrote:
> From: Mike Rapoport <rppt@linux.ibm.com>
> 
> Iteration over memblock.reserved with for_each_reserved_mem_region() used
> __next_reserved_mem_region() that implemented a subset of
> __next_mem_region().
> 
> Use __for_each_mem_range() and, essentially, __next_mem_region() with
> appropriate parameters to reduce code duplication.
> 
> While on it, rename for_each_reserved_mem_region() to
> for_each_reserved_mem_range() for consistency.
> 
> Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
> ---
>  .clang-format                    |  2 +-
>  arch/arm64/kernel/setup.c        |  2 +-
>  drivers/irqchip/irq-gic-v3-its.c |  2 +-
>  include/linux/memblock.h         | 12 +++------
>  mm/memblock.c                    | 46 +++++++-------------------------
>  5 files changed, 17 insertions(+), 47 deletions(-)

Reviewed-by: Baoquan He <bhe@redhat.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200805091105.GW10792%40MiWiFi-R3L-srv.
