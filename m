Return-Path: <clang-built-linux+bncBDUNBGN3R4KRBQMP774AKGQEMKSTGBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id DF678230311
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jul 2020 08:37:53 +0200 (CEST)
Received: by mail-lj1-x240.google.com with SMTP id r9sf2317466ljj.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 27 Jul 2020 23:37:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595918273; cv=pass;
        d=google.com; s=arc-20160816;
        b=nPwnMmsxent8C0P/peczVDpJkJusvskwpHGOmyy3lDRWruqeASEPL/hvy0qrBnW6CQ
         defC0hDr4hGrteN2HhEYwQ1HezGP5QFVMsgVWuQ9rsF//BdEWWyYoKFvegnt+0Iqc3P1
         knKeTRffBnPGgTcMaxuoLCr8aEFgx/8c9W+p2fQgphjzLkQw6pUPjSFmmUBhWzEASIgh
         HHgThpN/8gIcVVTrBTKPYIvGPs7628VSkIA2pq3zRBAkBMg9ryHj9MlunMGq4sUOJNfJ
         nq/4ifkJop5dgah2UoMOCdeJ9l07oIXrAEjrQg9MCrJnvhoGHYZkYvwQWbJEGNrHUzY7
         VJeA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=nD43jAGKKusB8LZUsXHQnOvaChZvbk0vGtZEFet9kl0=;
        b=SdJxLu63xCQHh+w5VFMXZ1TWBtxKuew67IwG8WwmeALL0kJSf0/AtH5f/iFWRJO3R2
         agj+753pJyE4WwRvoosm3obT21AGbqeUoAESYuizEumonP4hOO9uGgCA1wSEOdirM1YM
         ZFR/4lEHtlBk7Ey+uCDOl3UGKvilOItA6uDdTZ3HLU+35MK1NOEPvrLriU3JKVccPdZ8
         273rgM0qtAqXYzbOj2zGSwkIVzgg9YUf6K4L7mgS4Ev1XIC55HhZvVhrLGjViWC6XBFG
         GiX8jKfZ8VLHiJMJJkBd4mh5Li+TeKXodiwEHmBbyFacOYT78CFR+BVtl0olJ5pP8TqC
         4AQw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nD43jAGKKusB8LZUsXHQnOvaChZvbk0vGtZEFet9kl0=;
        b=JlGEtw8Aoy6oogRYF8iGLr8k3AQju6R13JHyI/0SCAKF0g9cbD+zF8HoLGZIS1ASC6
         falbSvkjHf6y9cTKktIMF/M7gNOFsfjXmjsKqkCspXXctN0m4j29smBSOFqW2MZLowDt
         YPyzGHwvPqaIeryC02Bl3A37ifeyxAe4kV9KKhiMy+J8qP1YQjUN5gk+cU4IT6W4kM4n
         Ozl5e06u01kkcngE1W0/nztgo03Zw5K7L5KTUNLm6hcxNCjGn625CmOVy/QHoE6lBTir
         s/ziSFAURYBsyerPXCvt2Iw8Z3gMHImu9khqewEjhCsuwawfSL2jsIabRBi9wIKpt6gc
         WNfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=nD43jAGKKusB8LZUsXHQnOvaChZvbk0vGtZEFet9kl0=;
        b=kNLqtjczkBJWbdZKK9tBHPwenmctkOy4yiR2HB68d6p7nNo2TmkOIhyzVeTW5joD6u
         FRmlCBaSB8k3mL8QDVjxs2E7XkgvztQXg50Qm62YesNMzBQs9ZES69+DEo3cAbfw//IG
         OT+58XrAIauMMkgXf2PUJGtIT90wcnSJgUJlKkOQtVfz6tPTVFdvx1XHlq9MAmL1DXfu
         L8LxWreV9cmEC1JxgSYszgDv2JKmANnp/8HRdcSWOZd+r/mOeAGiNwCkmpbtFnSl8xXP
         DWlzUSO9BQjqvfCusd8efE6NUnsuhWmGqWo1qYGtR7WDA4MBknAxqfURaJBupO9zB5GW
         7CCg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532aZRzT1UTy4GyqvdPvMeGqqBTo4qXna/s3GhA2BiG6XLK1Ir0M
	2oAPz5E+98wvLyw4LC4aVO0=
X-Google-Smtp-Source: ABdhPJyQfeiZXD33DTlkIavIfEeZegXZUz3nJWQp6cxzQ/1QD0XT4BNWAnVwmF+dclELUnB5EBGibA==
X-Received: by 2002:a19:cbd2:: with SMTP id b201mr13489815lfg.106.1595918273318;
        Mon, 27 Jul 2020 23:37:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9b09:: with SMTP id u9ls3456625lji.3.gmail; Mon, 27 Jul
 2020 23:37:52 -0700 (PDT)
X-Received: by 2002:a2e:a17a:: with SMTP id u26mr12166269ljl.322.1595918272611;
        Mon, 27 Jul 2020 23:37:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595918272; cv=none;
        d=google.com; s=arc-20160816;
        b=Erk9JhBS3uSGYseSdb8yPH3zFJER1gyufsy3g5CTVHNh/XhoAxWadZRkuWJm4iW7IX
         S88Ldlinn9A5WMLd5+6Tv9vPO9DUagAgxP4yglDhbfhkMI+lgJbx7oJF2W+aXXKBPhmG
         /qV/TxSCbGaTRLjoCRDIMddQ9lmcbaht8jOIzVDq13S2FIvKt/r0MZcwvG56N96/xWV5
         SpuclvP5UDCs+cw678UAU2NUNwv+wK2JM+xuVF9N32r4jWu9RPcPEVhQr0G3PIEmwDk9
         QTuUBrgWPh42AoHG5mTHr5op18JZLeKyuUls9BygObfGmkB88YvMoafFYWICHSO7K9Sn
         banQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=wNSflOIjAgsFGMCnqoKTEaq+9byArCm29H+sqsXcP0s=;
        b=sOAD8k5D1Ss0oH00yiRJwFfaN+ZA3KAAtMTq10pSukHH2pB8O4/4ZMRf1vPwz4wsBz
         KPZNAR+GkR8bTz4B1Bw+76yju/zk9gJPn5Pp0714wV0YwtMwbYe+dKWMhkQG+CZXDte0
         ZIw9DEbX712rTdGeYFvGo0+q/fdzW5g6sKh7buGP8vQ1OIbBL8ZCFVSsCg1Ib355j6Hk
         NrOeBtSZ16G/86LoRmOsg0kKnDNIW3v5ljHS6M5XnSEpW19/+GT5QFXe4Hjzvt3nZC1T
         wrqRTMaElVVSf2iCs8GKIZNqtkbNyKWJwEqjOrzkiDeb7K4yxYb7X1nScRVAVIafE3Ym
         6YUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from verein.lst.de (verein.lst.de. [213.95.11.211])
        by gmr-mx.google.com with ESMTPS id k9si412070ljj.5.2020.07.27.23.37.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Jul 2020 23:37:52 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by verein.lst.de (Postfix, from userid 2407)
	id EF4D868B05; Tue, 28 Jul 2020 08:37:49 +0200 (CEST)
Date: Tue, 28 Jul 2020 08:37:49 +0200
From: Christoph Hellwig <hch@lst.de>
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
Subject: Re: [PATCH 02/15] dma-contiguous: simplify
 cma_early_percent_memory()
Message-ID: <20200728063749.GA21221@lst.de>
References: <20200728051153.1590-1-rppt@kernel.org> <20200728051153.1590-3-rppt@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200728051153.1590-3-rppt@kernel.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of hch@lst.de designates
 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
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

On Tue, Jul 28, 2020 at 08:11:40AM +0300, Mike Rapoport wrote:
> From: Mike Rapoport <rppt@linux.ibm.com>
> 
> The memory size calculation in cma_early_percent_memory() traverses
> memblock.memory rather than simply call memblock_phys_mem_size(). The
> comment in that function suggests that at some point there should have been
> call to memblock_analyze() before memblock_phys_mem_size() could be used.
> As of now, there is no memblock_analyze() at all and
> memblock_phys_mem_size() can be used as soon as cold-plug memory is
> registerd with memblock.
> 
> Replace loop over memblock.memory with a call to memblock_phys_mem_size().
> 
> Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>

Looks good:

Reviewed-by: Christoph Hellwig <hch@lst.de>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200728063749.GA21221%40lst.de.
