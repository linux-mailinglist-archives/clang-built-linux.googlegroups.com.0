Return-Path: <clang-built-linux+bncBCM2HQW3QYHRB6FIYGDQMGQEZWDGDKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F0273CA17C
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Jul 2021 17:30:00 +0200 (CEST)
Received: by mail-wm1-x33f.google.com with SMTP id l3-20020a1c79030000b029021ecdaeeafasf1024045wme.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Jul 2021 08:30:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626363000; cv=pass;
        d=google.com; s=arc-20160816;
        b=QxjrllQKOHqAXN/yKcJzYBHJywNpGZE84toVMSnFTxJdVA98LrlDd5Ox0+jp3/59Rk
         X2Sry32LBtu3nrPZd/p9sTcsOCkKnGr+6eUVG0obFyelFaM2lKGaBy9UUlPioGVNACjv
         7N7FM3sSnxkTxCyO8mJOrtvCYZ8MNe0J0doZXBOpM5GpnkX9S5DVBQw11UE5NKWym3J1
         w/8BmgHd2n4CcsiowqGz64hFJ7Vc8P1Ms5T3ZebYF5Un3XIL/sw8j6EAwwX47dCMDUXn
         8fB192JHsDhN+TghzkMI82ENbr9vudEz/xm4/q5QQC9qY8RJKq9TeSURKibXQC0s6OPz
         dK/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=GsfesfaPzDKMS4uMgnjvqHnme+QMknw7pkmLxj4vmYA=;
        b=mI7JqYztNPXAfmsMEjn/Xh3DJrY1GlAdH7ocq0In+79Aif4iyArdzg1tRZ7YZalic5
         +EjctmDAOsNJjGDvNv8HcSf+yVq7u81O7z5SLLFKsnmgoGORURigDeve2XGhvcqZglVH
         TvdimCMIJ4IkvzZCKK1tCkon2bVZOkx+SHOvwwr5ylvj5pJoxjWwijyMmhGFDj3xPuSv
         AQkwq4zTXhnYfWK5cggUuU0k/8dP101DCv3/PbEa4UJI7nWHazo/L5bVp1UOz16Lox3+
         plzBZuRPj3LsbQ55MvFavfpBIiWKevV+HIa9EoCgZAvXIF8ljGxP6hWgHmws4L2fNrC2
         0SyQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=r3e0mnbo;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GsfesfaPzDKMS4uMgnjvqHnme+QMknw7pkmLxj4vmYA=;
        b=UWfePyKpMZo5AhfTm3s2kVkG2IizurpCGE4QBMx/R9cFYAToTdbZc7q3IYNxh1ZKPK
         sToNyBYBNbO/LexvtiFobXgHclzqLyU+Aau5NstM219ONAYJbgY+pHI5LfDF+vWhIDgS
         IvnMQPCNnINZBWI7thOiNAcIapTfuka//UsiPnHWbmO0RIlxAlOjlNc5pCWwlDgcmS7E
         t0mEJb3pHHkkPnlV/+gKTfmAEwnGx4eEzfK4qVibo7EhwJU0IBFjfcJFbNYxHv7WcqRC
         +7JnFHrhfsX/BxjZg104j5t+ocDWFhheXsAh8qX3D0D7PTKy9sqwpjP7YLJWjJvUoMSJ
         7Quw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=GsfesfaPzDKMS4uMgnjvqHnme+QMknw7pkmLxj4vmYA=;
        b=uigwWbpinQXgI2y829F8/ipUvikpeuBV695XvbCfpyva5wevqAfBpItlVCQjeZ30c0
         ROkOLG9dY6EGAk9gxl3uJaGJ2DRDpZkGdljZ4tXGD2s8KSFpei4WonBHgHml/iOxI4Ao
         sNSCIqbUMZ+fUFWPMLG2QpglVp1tg6963kJtEInTwWgr5MCg8zARfNgnSrcvbJ6iVmaZ
         Lte7Ye5frsyRF37QEYHl4ERqAhUQwpggwF190bgd7HXENkhTSYcfS9NW5gdDuRWYu7l8
         upeDICy45BM6oZQejWk6RPmc0XekloS0OCzR2RmK2yBs2msUIR3HijaeXgiVyZ0VwrkC
         OosQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531wBxd09NI6XNinOdaHfbz9Emg/z4GMmz3/EBklUuMXXuGL+oio
	/3dw5yKaOLGQjt1gcM+QjHY=
X-Google-Smtp-Source: ABdhPJyN9C6cAt8L4fjJ9oXTJDTp4i6301kQC2cxyM9SsGT4OpKnVao7Kv/RFzR0Ha3NXkgxMENfwA==
X-Received: by 2002:a5d:604e:: with SMTP id j14mr6217779wrt.399.1626363000397;
        Thu, 15 Jul 2021 08:30:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6ac7:: with SMTP id u7ls1033171wrw.0.gmail; Thu, 15 Jul
 2021 08:29:59 -0700 (PDT)
X-Received: by 2002:a5d:6849:: with SMTP id o9mr6620331wrw.250.1626362999620;
        Thu, 15 Jul 2021 08:29:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626362999; cv=none;
        d=google.com; s=arc-20160816;
        b=ObM3gaHcvP9WJsugvR7QvyE2Hr4MFFeKpgy18A1QDZ3OIERY4XcPXUbkk+tLp1jwe3
         oHYLTYHCu94nkx10k+X1Ub2BLfZ6KriBGVz8chzmwnVo3P4mT8YTppbBDxqaI5Q9bp1J
         lhQsxYt4/QkyRgg4vkgf07qr6TmPuOJDl9AvV28U826nPyoMKjoiOzEdt9KhaCMWxN2n
         XJ5LsS66jcdWvhCBG5pAn949CJRwh/szrjMFmTvs7sOyr0hjc3LsGs35F0W1J4NOeNiQ
         CwZeo/b/4OpKM5jHd6aynIy8vC0DA596e6PCn/ZcuSIOG6vzF/xp2cgur0s947EmGZnn
         qoFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Hm/c5pmmDO4cb+/t3JiroPJ98SJwa1APyoXE5DC9x/M=;
        b=XvfPmXLR/wYZqyZ73pTT3D9lpvte32U0q6jaF7KzYEao48YElIhJc9oAjcPurNmm9B
         a7Ldp57PyCmvkZyvfBY/6tygGm+86p6nzMnl8FYkXsGnWvnWy5mkSUaKgsZOrdhmX4nO
         Lg9r92r1+wW3dmOHtGYVlj0Eof2Qeo9uJj53W8e9lk4HcLrwbSl5B8/YqSv06oGzO1HQ
         ztLPfylbtIaCs7q/MOVq8nD97unFTCVicV2T+lDXv9dhauUdv9fDMCnmSUMHOQicpOtV
         h/sxisYR0nvtAW6ppUyrEiuUewxcM1Xpu9DmMJyf4cZXt45bLT25EDMD/4a9eWDvmASx
         yXaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=r3e0mnbo;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id j10si254846wru.3.2021.07.15.08.29.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jul 2021 08:29:59 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m43Ii-003TTK-Cg; Thu, 15 Jul 2021 15:29:30 +0000
Date: Thu, 15 Jul 2021 16:29:24 +0100
From: Matthew Wilcox <willy@infradead.org>
To: kernel test robot <lkp@intel.com>
Cc: linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	kbuild-all@lists.01.org, linux-mm@kvack.org,
	linux-fsdevel@vger.kernel.org
Subject: Re: [PATCH v14 102/138] iomap: Convert iomap_write_begin and
 iomap_write_end to folios
Message-ID: <YPBUVLmutOHejK9z@casper.infradead.org>
References: <20210715033704.692967-103-willy@infradead.org>
 <202107152112.MqBfMXMK-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202107152112.MqBfMXMK-lkp@intel.com>
X-Original-Sender: willy@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=r3e0mnbo;
       spf=pass (google.com: best guess record for domain of
 willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
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

On Thu, Jul 15, 2021 at 09:53:26PM +0800, kernel test robot wrote:
> >> fs/iomap/buffered-io.c:645:2: error: implicit declaration of function 'flush_dcache_folio' [-Werror,-Wimplicit-function-declaration]
>            flush_dcache_folio(folio);

Thanks.  ARM doesn't include asm-generic/cacheflush.h so it needs
flush_dcache_folio() declared.  Adding this:

+++ b/arch/arm/include/asm/cacheflush.h
@@ -290,6 +290,7 @@ extern void flush_cache_page(struct vm_area_struct *vma, unsigned long user_addr
  */
 #define ARCH_IMPLEMENTS_FLUSH_DCACHE_PAGE 1
 extern void flush_dcache_page(struct page *);
+void flush_dcache_folio(struct folio *folio);

 static inline void flush_kernel_vmap_range(void *addr, int size)
 {



-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YPBUVLmutOHejK9z%40casper.infradead.org.
