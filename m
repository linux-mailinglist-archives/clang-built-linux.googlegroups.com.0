Return-Path: <clang-built-linux+bncBCM2HQW3QYHRBQPSUODAMGQECCKLRKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id E99C53A8911
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Jun 2021 21:02:25 +0200 (CEST)
Received: by mail-wr1-x43f.google.com with SMTP id t10-20020a5d49ca0000b029011a61d5c96bsf1378664wrs.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Jun 2021 12:02:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623783745; cv=pass;
        d=google.com; s=arc-20160816;
        b=Qs7mTCRGmqyISGwF/l6PBHBAnzYwItGxPRCy75mVdOnmWv5Sj5YzjltuzBG01ElZxW
         QwrQqQM83y/ornWjAHDm9m/oymHJgD2mh9U64OEHzD7ngR3/g90hxs7s/raB6CDvTcV5
         hs/UtjUTdwDHiigCFQ9XYkuyfFyfmNkh5R+L4xNELZ7aLwWct9TwwgejDaN1vmMiOMb8
         RsBa0hp3n8BVvn8jY+opk/7/1tMp8kbEeAM+2oTqDdAELTKGGJ2VtKoy26TCNUuaqH63
         LIcaE6dCTw7QO5fn/UcKUj2XVdCyXfBbUni1xX4JUg3gJfGMNDpTsRfhHJiuuEAXNJDp
         G9mg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=/2S+m0cFzp72A2s5zuGLTiOdWXLGC1lY/ZOVDqE+nFA=;
        b=x9TNvg6QqsIobjq4hc3BhyFJBMu0OYxUOEvStCeE8FLjhC4ZI03/KDPFqzGya+MF7V
         GMM82GHaUXa/AOTbiv34tpm77mz6HAdZShVolzGzbFmNWfZhT3iGSmFvnm/EjnYm4CL+
         Dqi+qqYX9V4YOVpT3i/Wbar8onhOB2gB7zgqbVauYxhmA7D/VAsotrKy/ShusrkZNTrS
         3M8nmggln+s3SkPexpVlON9pgvAWOk5j83hBWlLJ1cDGRvLlaHZMLi0hFGClh4lBCtJz
         +3jmONkhpD1b+b8jWLbD78K5eNstcRHgfP5Q/NVQ8AzwU7bcjmRM4M53CvVQFvm/aC9W
         /f/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=hxTjCwql;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/2S+m0cFzp72A2s5zuGLTiOdWXLGC1lY/ZOVDqE+nFA=;
        b=DvvnFzgraxI9gw16BrjL5v0kbx3JtG3fyBBH5xlbT0vg5eSwq37SUkKeDBjCZ6PM6+
         Gnopu5y9RkfPD2rta0OCd/WXpV+wUtKBvm8V+MC/z743CjsNKKqUdAB9mbwgrS7Zacuz
         TO18F0mDpxcp2tbiqgvYBfPj9ChWkWqig9o1WEK62EbtNh2kTYS2O8nKJkvWA9WTruUW
         DHERJimXBtuNJmfQyQBf1JgcKMBs0DVxTVFuglS8LCJqkyu2J7TyGcbeYLadGac6Hz/S
         +lXq5XSfRwZhrydIZ1G0jg31kGAkPuljbwfsHL9J5WMUSgfP+WgEsQM3gzWr/F+7NDb3
         OLrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/2S+m0cFzp72A2s5zuGLTiOdWXLGC1lY/ZOVDqE+nFA=;
        b=njF4ajXdGGW9eVgdwd6JI8r3UViCtj+2fdYwtIRggkRhR8ve68vHwZDCdtGUiPDaBb
         ncGF06d9Zt+i4wYwwZSzAp5RWmzlsq0B6wzCPB9t8nNCvM7lzP4aEha92fGvCFvCmWTL
         XbUPQadkNVxDgm/7A+/j3GoKbSES53pLVHion3usHxp46+YHQcAKFQrRib+TMUv/mzw1
         rMp4k7NyKIr1Ik4Qzu+3qarRXYHG+T9qaEVAv511sPN0p19VQMgYM2LMu5sDhBuIGPG+
         wXf/Ef3E3GijZLaixOMVXY4ZPjZcupz6/ss56B+Jpc5Eto2XNuRzUFfUre53aRMDI1Vr
         HNrw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532rmbj9Go61zIBDKTf31PqBUF0bLAELi5Exdq8qS1+ib22RSrNj
	um4NGcENLAaEdNZxLRnA180=
X-Google-Smtp-Source: ABdhPJy0pbQ0GUWukWQpcVz+v8Bd+DSlhLDi8H00XTaDa6h2xe1ha5q2NRwUoM2AjgazkkqXpW7flQ==
X-Received: by 2002:a5d:648b:: with SMTP id o11mr666860wri.238.1623783745700;
        Tue, 15 Jun 2021 12:02:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:19d3:: with SMTP id u19ls2079630wmq.3.canary-gmail;
 Tue, 15 Jun 2021 12:02:24 -0700 (PDT)
X-Received: by 2002:a05:600c:3786:: with SMTP id o6mr835737wmr.170.1623783744870;
        Tue, 15 Jun 2021 12:02:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623783744; cv=none;
        d=google.com; s=arc-20160816;
        b=mr4bv+vd1ejkpTqPCw3VdiExXDWixkjlI7K2NAOKJL069KtIWh8qnAPRDbh8q+di7v
         URy3CAGiUcWFlDTvDl2nlnb2vhWP6aItPS08wGK0sTnDMlAYJT67L1ZDbrB6XFzbV+Rn
         vUvDydCCH/TAQlLXEYqB4VVM6u7hGw0c6yJ6lD2T+wkqg8BKSeQ854+mJX3On4bmOgLH
         NCNgZYBJX2xas1MDqHkF1cX0OViQrfdfk8Ah0DSsXQmC4W3WsQ2c0TuS6C0sbDpOM9qJ
         D/JeIxmtEVSdluEglr72PqAKra9IBICmBD7YmgYIooVlzvgh5sUeu4PGawI8aMr4shcF
         FUNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=P5EDr/78c5JdpU+uOe7R3Zqx+CVflRHl3oyL60+EmTM=;
        b=NWsuNessZco6jKxa2FaApdpyeGYO0/PCaKMjHJzMResUDKFkWP5dw0beH7PUUYQNL4
         tqBTyRRESszps0zh/2NySSgMecrRgZ6exbO/cG8ZrSKZY700vtbhU2/Swd392Glu5OSK
         coGkWm18CJR6nQcnzAwnrPuG0JmoB+QMmesR5VPNtzTDuzNsqoJ4fdSWMGrOisNj4+Ai
         XJwlTYJ9B7u66nA7ZP38z94jx08m+VCBv8b6m5zn5/SD7X5YbPgOuSwW4NreXYjov6cS
         WK/9LgTHeyQSAM1WN45CayEthNAiqxRbDDlqmRB3uAX39fsDVRN37IubJFoEroZSBuVh
         Ourg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=hxTjCwql;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id g18si124795wmc.0.2021.06.15.12.02.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Jun 2021 12:02:24 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltEJv-0079jg-RL; Tue, 15 Jun 2021 19:01:59 +0000
Date: Tue, 15 Jun 2021 20:01:55 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <nathan@kernel.org>,
	kernel test robot <lkp@intel.com>, Hugh Dickins <hughd@google.com>,
	kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Linux Memory Management List <linux-mm@kvack.org>,
	Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [linux-next:master 9529/10007] mm/hugetlb.c:1591:9: warning: no
 previous prototype for function 'hugetlb_basepage_index'
Message-ID: <YMj5I2vEGaw6X3Ob@casper.infradead.org>
References: <202106152328.Mh5S48hE-lkp@intel.com>
 <YMjPXKrHfqZKDisp@casper.infradead.org>
 <YMjyKtBiQJHN8JXL@archlinux-ax161>
 <CAKwvOdnh-CSPE9VTkqL3=-yVcePS8FdqTtBVAcV0_fa8sWrmDA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnh-CSPE9VTkqL3=-yVcePS8FdqTtBVAcV0_fa8sWrmDA@mail.gmail.com>
X-Original-Sender: willy@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=hxTjCwql;
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

On Tue, Jun 15, 2021 at 11:50:40AM -0700, Nick Desaulniers wrote:
> On Tue, Jun 15, 2021 at 11:32 AM Nathan Chancellor <nathan@kernel.org> wrote:
> >
> > On Tue, Jun 15, 2021 at 05:03:40PM +0100, Matthew Wilcox wrote:
> > > On Tue, Jun 15, 2021 at 11:58:36PM +0800, kernel test robot wrote:
> > > >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64
> > > >
> > > > If you fix the issue, kindly add following tag as appropriate
> > > > Reported-by: kernel test robot <lkp@intel.com>
> > > >
> > > > All warnings (new ones prefixed by >>):
> > > >
> > > > >> mm/hugetlb.c:1591:9: warning: no previous prototype for function 'hugetlb_basepage_index' [-Wmissing-prototypes]
> > > >    pgoff_t hugetlb_basepage_index(struct page *page)
> > >
> > > So clang requires the prototype to still be in scope, while gcc doesn't.
> > > Does one of our clangers want to file a bug about that?
> >
> > I see the exact same warning with GCC 11.1.0:
> >
> > $ curl -LSs https://lore.kernel.org/linux-mm/202106152328.Mh5S48hE-lkp@intel.com/2-a.bin | gzip -d > .config
> >
> > $ make -skj"$(nproc)" ARCH=arm64 CROSS_COMPILE=aarch64-linux- W=1 olddefconfig mm/hugetlb.c
> > mm/hugetlb.c:1591:9: warning: no previous prototype for 'hugetlb_basepage_index' [-Wmissing-prototypes]
> >  1591 | pgoff_t hugetlb_basepage_index(struct page *page)
> >       |         ^~~~~~~~~~~~~~~~~~~~~~
> 
> Since this is a commonly recurring warning for W=1 builds, then this
> function either should be declared as having static linkage if its
> uses are local to the same file, or a prototype should be declared in
> a header so that callers and callee agree on function signature.

Oh, you haven't understood the problem.

static inline int bar(void)
{
        int foo(void);

        return foo();
}

int foo(void) { return 1; }

The prototype isn't _missing_.  It's just no longer in scope.

Since gcc and clang behave the same way here, we should adjust the source
to make foo visible outside bar.  But this is a case where both compilers
are wrong.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YMj5I2vEGaw6X3Ob%40casper.infradead.org.
