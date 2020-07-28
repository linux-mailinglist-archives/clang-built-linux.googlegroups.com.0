Return-Path: <clang-built-linux+bncBD7LZ45K3ECBBEUZQD4QKGQE5PFJ7UA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5008F2308B5
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jul 2020 13:31:31 +0200 (CEST)
Received: by mail-wr1-x43b.google.com with SMTP id z1sf5194995wrn.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jul 2020 04:31:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595935891; cv=pass;
        d=google.com; s=arc-20160816;
        b=ok6RFQ/5/FL6XVQFms4K9poWXlLpIL/eRxEl/PH+JNVQKyLTM9r46lkNp70iIc5rk8
         s2zL/5y3msXsr06jtDhQGk6EBEVONrH4uHYxOyF7OYqYVEYUaMz+a0DXs0U0Fz5XEirK
         nuT525abMKF/xIO0HbBgG8QslwwpCNPPUU+orz77GbqAkxOH7MRsmC2YP/GLOOyOvJpa
         CXvYg4FW4yhy+xJ57FKQ2Gf3GM1OD3TnYYilOMTm6yEEPsPbRXWpDjP5rU54Ez3A4odm
         TcH6UMqN6dK3EipUzFEYJyk4EwW+Tzg0JTcLEVBHctnfEnfzPXqfv1eoWTgPT4+dx5Ro
         eS6A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ezpgAPZRshzhdb/kM13MmFeN3Wb2SfEEMWq8k7YgnPQ=;
        b=Sf41cEhd6Wi36eOfyiTKBJHdgpWqVNCBmvJazDndL+48tIq5JIRLdasZrwYFh5fcr0
         A6XDfN47/fl9JaLBPar29wTs11wfBoPLIpNsNdwJVWtXjuTBT6W83VDV92t4uAaayruR
         /YNeruEsUDkvVNVMytFaF7/sFX5NnasD4a5o4+c1rxXnPKPvyUNYf+ybrx6o67YH6X6n
         dnu6XKKn6Rh6nm8KhW1durQdOJXKyyI0O28//9/67zBK8+InQTUTkNENMJuPWD9fNvkG
         jnteXwCLC5IGggC20Jnnbq0CjCl8XziI2BUprwTk20ovH0U9tbTZzH2JpmYU2plIjK7A
         m1gA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=P7HSEqdJ;
       spf=pass (google.com: domain of mingo.kernel.org@gmail.com designates 2a00:1450:4864:20::641 as permitted sender) smtp.mailfrom=mingo.kernel.org@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ezpgAPZRshzhdb/kM13MmFeN3Wb2SfEEMWq8k7YgnPQ=;
        b=bFWbf5NHl81GFONJkz1dJDCeAcGglXeSPy31HyVKJb1odUCp8MSu0pYv7rG9U+urbT
         u1ilwzGLp0ovokZILVx9CUYYkUOFvdbIRktU4/cfST/aAvy0EYf27xnrco6LGLpPR3k9
         qAZRZYfDDDVZ5u9E7oczPXOJigdv4w4XYg0BYpLRTZYpdrSQJstb95S3tXn4XGg9ovJt
         SC9982QrOBchgs4YtvEkLsS7aWDfVTCGndXDCDhgKPxwOPudftE6EVC0MQFyEe5mBHhC
         OiQmklBJbpgtR8J6Ux4sZGAZJHdd4Y0UltCKHbjl19fAO3se5IFN+HUVJirm0Sa2sJ5O
         FbdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ezpgAPZRshzhdb/kM13MmFeN3Wb2SfEEMWq8k7YgnPQ=;
        b=F+U6XnV8OqaQZIVo34AMVwLF5ujWcC6X+8vUbuC07aWrCo4ArxHXCkpca3W5Iz/LcB
         SJRS8eVoG158xKZ5KGGSK4hYnJnRfmZmB6p32EhjWorVSWwcQuXpHi2l1wpwHEF7we3Y
         mfc0+2TqE8CjdPi2On/MpUXor7hMARGi8C72uj8BLAS+d3xw1hB6y8RkP3VXcnKFbSgZ
         5YQicvHvoQxvsuI/u0tMowLNbY14URFNH2OqnFVZtoZLLV3tZjIvjIJ8r+m+FU/YQN7/
         qbtNi+cEWJv4xWkQlzABRO+mEr+BgdsZKI7NHRE/zLH4Tg935kJBigPtrBpGBIxKbano
         4BjA==
X-Gm-Message-State: AOAM532yhepzjY8wRMgEh8KTwmeksQKZp9uRB5pHlAPki/dKq2ULRA3L
	yNPhRw1HIHH9hhZxY2LH8Gk=
X-Google-Smtp-Source: ABdhPJwO7L61antlgtxMA0jC634C97zqK4k2/dwGD6a1d8++5XhukTbyFAaw9iYW5Db5gcjwvZIW2Q==
X-Received: by 2002:a5d:5710:: with SMTP id a16mr17442801wrv.217.1595935891021;
        Tue, 28 Jul 2020 04:31:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:a587:: with SMTP id o129ls1361212wme.2.canary-gmail;
 Tue, 28 Jul 2020 04:31:30 -0700 (PDT)
X-Received: by 2002:a1c:e90d:: with SMTP id q13mr3716093wmc.187.1595935890299;
        Tue, 28 Jul 2020 04:31:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595935890; cv=none;
        d=google.com; s=arc-20160816;
        b=I5xmHHiq+9/0DjhkMDRiqctpmMi0xL8GtbjX64f0kiyfvo0/v7U4OerZHfJwKljgDt
         rGEKMJEl2QTiGc+PQN/aoRlnFXLeXI+qHyJY2F9bqXYWZs41axtd9mQyzbMeCfNh95bZ
         0aR2F1/c8j4gOXc0D1qr03GxZTPB3YmQeTawsYQ+TLiFnlI03Qam5/IJTPAABZUMekxT
         ByPtG+pBhia1tLNxvuw83xcouOhLAVv3J9pHuIzule+Y6pV8WowIU9fARk5kDWOZl/zi
         jWWrVdd2ct0qjNFr6mKs1lraovXSHZH1m0TjDBABrqhK4NJc9M2oBEMDH5a3wdtwy0WG
         rl3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=y5PIG9gv3+Q65q73c5WJL/D8ixTHr55LzcpS0la2b94=;
        b=yXPKeY/c67SGDGrFRgIZMvZgEPkIsWuWagnNn2uhG1q9NHCrMGbE8pQiWupMQ4a2il
         8ECoEAU9azqT2XuYhnF365xmk6hojlNrdseBTCD3HjARWkCo97W50Sis2qTb6VQzj3YM
         8X8QfXXf6TFrjcgih2Gbz8vBm03pVEZ/M73xkiIRTaTm9llS1AEO0cD2wEpX7L9sQ+l3
         jWstyfSdgwZqAuIAs/O5e2tU7xnR2UEeRVXgQ9pGZS8I+wYbb/kSI38OyEMvB4WIH/FM
         XHywRfShwMaXTln/J0iqoBcquZhJkaO7cUJ9yTrYS/ZeBg62Bv4qusr01XmPUOMY8ihI
         F3Ag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=P7HSEqdJ;
       spf=pass (google.com: domain of mingo.kernel.org@gmail.com designates 2a00:1450:4864:20::641 as permitted sender) smtp.mailfrom=mingo.kernel.org@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-ej1-x641.google.com (mail-ej1-x641.google.com. [2a00:1450:4864:20::641])
        by gmr-mx.google.com with ESMTPS id y130si160378wmd.2.2020.07.28.04.31.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jul 2020 04:31:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of mingo.kernel.org@gmail.com designates 2a00:1450:4864:20::641 as permitted sender) client-ip=2a00:1450:4864:20::641;
Received: by mail-ej1-x641.google.com with SMTP id qc22so5486659ejb.4
        for <clang-built-linux@googlegroups.com>; Tue, 28 Jul 2020 04:31:30 -0700 (PDT)
X-Received: by 2002:a17:906:22c1:: with SMTP id q1mr16036266eja.443.1595935889994;
        Tue, 28 Jul 2020 04:31:29 -0700 (PDT)
Received: from gmail.com (54033286.catv.pool.telekom.hu. [84.3.50.134])
        by smtp.gmail.com with ESMTPSA id qw19sm7634705ejb.46.2020.07.28.04.31.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jul 2020 04:31:29 -0700 (PDT)
Sender: Ingo Molnar <mingo.kernel.org@gmail.com>
Date: Tue, 28 Jul 2020 13:31:26 +0200
From: Ingo Molnar <mingo@kernel.org>
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
Message-ID: <20200728113126.GB233444@gmail.com>
References: <20200728051153.1590-1-rppt@kernel.org>
 <20200728051153.1590-15-rppt@kernel.org>
 <20200728104440.GA222284@gmail.com>
 <20200728105602.GB3655207@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200728105602.GB3655207@kernel.org>
X-Original-Sender: mingo@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=P7HSEqdJ;       spf=pass
 (google.com: domain of mingo.kernel.org@gmail.com designates
 2a00:1450:4864:20::641 as permitted sender) smtp.mailfrom=mingo.kernel.org@gmail.com;
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

> On Tue, Jul 28, 2020 at 12:44:40PM +0200, Ingo Molnar wrote:
> > 
> > * Mike Rapoport <rppt@kernel.org> wrote:
> > 
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
> > 
> > I suspect you'd like to carry this in the -mm tree?
> 
> Yes.
>  
> > Acked-by: Ingo Molnar <mingo@kernel.org>
> 
> Thanks!

Assuming it is correct and works. :-)

Thanks,

	Ingo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200728113126.GB233444%40gmail.com.
