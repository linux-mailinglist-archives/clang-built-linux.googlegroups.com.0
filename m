Return-Path: <clang-built-linux+bncBD7LZ45K3ECBBXP7TP4QKGQEBULNKII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FEF32359A5
	for <lists+clang-built-linux@lfdr.de>; Sun,  2 Aug 2020 20:03:10 +0200 (CEST)
Received: by mail-lj1-x23e.google.com with SMTP id q15sf682466ljp.2
        for <lists+clang-built-linux@lfdr.de>; Sun, 02 Aug 2020 11:03:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596391390; cv=pass;
        d=google.com; s=arc-20160816;
        b=pGEUUNxZMFVZ2cCAzLP50qIC8qMdnFtBAVfIqLbj9iOov32qaM728gEGC0VvINBbm8
         UzZANqIsF3f8gbde1D7GN8ulbynD1ahFlX18bzbIh5A9Au4khzvU1T3o/fxjMxP3+2tG
         oGJNlnqASX7a8jqFBifLhgwNZQYiaWvxpvhFiBNQED/ZKeic+hzGJy4oaULaidMDKaFU
         YkZ+Y+ZRENUuCbnxC/33PZR3sH9uIJdI+kdjwqWrL4Dg8a42sxvfoRFmKJeotWI8bPMN
         nUWsfxhevYHzZHLbpLOsD9Xs5O3vdT0JENayDdut0vapWu915laIQNLtaTEtu0C5LA/D
         1lOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=imQY6mceUc+ky4LMocBmdASq7ZUV+1BbIGbphdSqea4=;
        b=EhroLFmRoDxMitIwJylx6nOEWkh+gva7GUDo2K0gPEZQjL9jioAOPWqTVg9p8j/BBm
         pVM7femVoV19ynbvSAi9hYtsLy8mTNWRrWlg9171g26oou62va+gigz3IeQ8Y2+qVCd5
         T4ioyjS+03aFXmJc4Jm/0tZ7aoLi6os95y+KORoaIJkKg49FE/xpI9Bw5XghQIgj0ggL
         l6zC+odwqDespqcz0Sl0Rl3qMLu7yAUoIBFUeBCPWhSagNyDKrmU8gLNLF/gyXXaut2O
         tAncIhfsoKj0wz+x+pNOeLBFQ+T53mrOxEuOVSf2BNZRfZtyr7jJj9mtcMkRpiymKNS6
         oY4A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NClt20d7;
       spf=pass (google.com: domain of mingo.kernel.org@gmail.com designates 2a00:1450:4864:20::642 as permitted sender) smtp.mailfrom=mingo.kernel.org@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=imQY6mceUc+ky4LMocBmdASq7ZUV+1BbIGbphdSqea4=;
        b=PJb9VlEC31b4RbP6dIm2NlII82FjgAlJ7speJAqjPUrXTVaPtKiWC2qmDSYDEervjL
         BDzuJc66S1PVlcKVldPINzndgK5bazzR7fnbV0j5JsiSAAXIfE2or9Av+KNChdUimaT5
         1/RY87JHRQuvCmCnTSt+7qTW1nCJc6C7txrEFpFyYtUpLM9ZralvTtkqHP6jEO1Cjce+
         IidRhj4FYo0JwNzGl0bbrjJ8E4NXkuAUux00NiUU6mMeCG5LXE1FM7bfVHGgwj8IGhEp
         T2SQbO7LtcpgVtZHJ4GJ6u+Qdm4nClwGnLJ9F+rhRUmEzyY4MHW67NZtTYb0uZ9JEn2i
         fhWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=imQY6mceUc+ky4LMocBmdASq7ZUV+1BbIGbphdSqea4=;
        b=emQfRjmQH1vp7ykRlCB6kHoLZaeVGHRhbzUXuisgUkFjcmNJjUhnnCwfKOTx6AqtH7
         QKn4m6ejlDoQIOhR3TFRx64rBMcdLNV8W6Q65UyYcWagZZSrWfL4sSA1M8qpcJfATHl5
         sBtFkND79zRKo66k6n3vKYBM9oG81MwCHNDVgPIPUlSL1gXMgspSzDBY7NMrfhI4Ab6U
         97IU8smRm/yx7RvbB3Dv158dtuOf8NYpfzozq5wP6yNHqVn1vzihUI1s9MrLsfwedgVO
         mrejIadvUKk1j9+5TxCmJpCGHQMvfx8uERcM7qIUutAQ+TPCYfEbihoP9qhgPT6NNDlM
         L44A==
X-Gm-Message-State: AOAM532RqyVfeaVV0taZzYLtBc8N4vPP7meDazAUdxDQ0vYztZNpk0Jr
	/tROVKBoWq2T0QQinlCIOtQ=
X-Google-Smtp-Source: ABdhPJxF0Gl5tvAFr3eMjDNLMDQpOxL9S+6Qr3k2+/vYYNx9wAzfLaniDSmpk+pCzqacYX91zGsbAw==
X-Received: by 2002:a2e:7308:: with SMTP id o8mr6347036ljc.414.1596391389955;
        Sun, 02 Aug 2020 11:03:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:4845:: with SMTP id 5ls4099136lfy.2.gmail; Sun, 02 Aug
 2020 11:03:09 -0700 (PDT)
X-Received: by 2002:a19:4c57:: with SMTP id z84mr6830616lfa.92.1596391389092;
        Sun, 02 Aug 2020 11:03:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596391389; cv=none;
        d=google.com; s=arc-20160816;
        b=PR7Ql0SzpXYRLdytXqIAGdhdvEsQSPAtvTCNIFM+R+gyo6Nqpzg+03UIs/rXepHCN4
         l3cp7Rqfp/LDrCdwCUsFAwqQXQDq3UT3Pmqc+6h/PSlx0VTEJeemoyyntZizT0IF6EI6
         PEcP1HQlRziUML3l86B2v28OEOAc5P9O9yqPVluEi37LVlttDJximfKIQSIe+KEkYViL
         XENINMss/sWC3c1dRDTvfOykIb3/CNACOWuGOokDo+su3Z2bwD2sr/LstE1MlUxH9QfY
         Dj4iAiwjM5a++iYaepKVReGoStsBdQ/6QmE0IqMSgdG4CG6wFqNKneyUUtaZUvY5nebM
         IXTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=fQZKbY0rONiHjM83HibQy63AEJaxpKeGQhQtY04gDSU=;
        b=FeLjFPUbP84nfmwEHQafPI5YZCR4Bj+bbl6qFZyZ1afpDE2DQ59+oOHLjus/rdgrRL
         RA6GHoqcj6mxZww4wbE7Y5l8GbgCBa5zsMhGW3JNmGAjtck2tZIuU8BQnhl27wyVleoF
         U1Ns1IZJlSL69Eg5bWn+YqcGlM/IzSqr6yhNb7ILmHTRDWZ4L8XPkAEqxmUK1UluHIDF
         hdVxS1fmYs9PaKH9EHGdi4K0hsB5QgzYOZM0f7pI8ax4Hq5PU/WRO0lun4NAEt7lvhBV
         70ycoO3PYi08PPU35+DiO4KPn4gu9KszKPX0wtLJ10KDMdnfR0m/JV8LGWXMOFXXparq
         0VLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NClt20d7;
       spf=pass (google.com: domain of mingo.kernel.org@gmail.com designates 2a00:1450:4864:20::642 as permitted sender) smtp.mailfrom=mingo.kernel.org@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-ej1-x642.google.com (mail-ej1-x642.google.com. [2a00:1450:4864:20::642])
        by gmr-mx.google.com with ESMTPS id b13si723319lji.7.2020.08.02.11.03.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 02 Aug 2020 11:03:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of mingo.kernel.org@gmail.com designates 2a00:1450:4864:20::642 as permitted sender) client-ip=2a00:1450:4864:20::642;
Received: by mail-ej1-x642.google.com with SMTP id w9so36319038ejc.8
        for <clang-built-linux@googlegroups.com>; Sun, 02 Aug 2020 11:03:09 -0700 (PDT)
X-Received: by 2002:a17:907:94ce:: with SMTP id dn14mr12944760ejc.351.1596391388538;
        Sun, 02 Aug 2020 11:03:08 -0700 (PDT)
Received: from gmail.com (54033286.catv.pool.telekom.hu. [84.3.50.134])
        by smtp.gmail.com with ESMTPSA id x1sm13599477ejc.119.2020.08.02.11.03.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Aug 2020 11:03:07 -0700 (PDT)
Sender: Ingo Molnar <mingo.kernel.org@gmail.com>
Date: Sun, 2 Aug 2020 20:03:04 +0200
From: Ingo Molnar <mingo@kernel.org>
To: Mike Rapoport <rppt@kernel.org>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	Andy Lutomirski <luto@kernel.org>, Baoquan He <bhe@redhat.com>,
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
Subject: Re: [PATCH v2 17/17] memblock: use separate iterators for memory and
 reserved regions
Message-ID: <20200802180304.GC86614@gmail.com>
References: <20200802163601.8189-1-rppt@kernel.org>
 <20200802163601.8189-18-rppt@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200802163601.8189-18-rppt@kernel.org>
X-Original-Sender: mingo@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=NClt20d7;       spf=pass
 (google.com: domain of mingo.kernel.org@gmail.com designates
 2a00:1450:4864:20::642 as permitted sender) smtp.mailfrom=mingo.kernel.org@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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


* Mike Rapoport <rppt@kernel.org> wrote:

> From: Mike Rapoport <rppt@linux.ibm.com>
> 
> for_each_memblock() is used to iterate over memblock.memory in
> a few places that use data from memblock_region rather than the memory
> ranges.
> 
> Introduce separate for_each_mem_region() and for_each_reserved_mem_region()
> to improve encapsulation of memblock internals from its users.
> 
> Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
> ---
>  .clang-format                  |  3 ++-
>  arch/arm64/kernel/setup.c      |  2 +-
>  arch/arm64/mm/numa.c           |  2 +-
>  arch/mips/netlogic/xlp/setup.c |  2 +-
>  arch/x86/mm/numa.c             |  2 +-
>  include/linux/memblock.h       | 19 ++++++++++++++++---
>  mm/memblock.c                  |  4 ++--
>  mm/page_alloc.c                |  8 ++++----
>  8 files changed, 28 insertions(+), 14 deletions(-)

The x86 part:

Acked-by: Ingo Molnar <mingo@kernel.org>

Thanks,

	Ingo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200802180304.GC86614%40gmail.com.
