Return-Path: <clang-built-linux+bncBD5NPEPNXUNRBHEIYWBQMGQEYOLF5LA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id D942B35AB4D
	for <lists+clang-built-linux@lfdr.de>; Sat, 10 Apr 2021 08:22:21 +0200 (CEST)
Received: by mail-pl1-x63a.google.com with SMTP id x10-20020a1709029a4ab02900e71f0256besf592897plv.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Apr 2021 23:22:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618035740; cv=pass;
        d=google.com; s=arc-20160816;
        b=vuQPysSV3U/E7qIYAAbAaQr3oUlrdwchY0JKXIXM6cvvoO6wiTjcs3oVhJlc82oPYF
         Vj1VJKDa5dYmWc22WVVkbSTdNJ0l0DRyL3iEELJyT6k6/S+dyOwi+XwSgDtO4XFKY1Yl
         k7Evtc0kbg88AVYzXAsA3AJG7x3WrzN1kEZ/Aw59ymyJsYdrXmSaAaxFnLiXmosDRacU
         AMVOW1R9B1YX2cNyhsiglRduVQtgyqhooMMmadWuYL09kpUZqF5DQBypeenCkRgvtDA+
         sZ22yqzPKeIreKJUL7DQASeo9ciuu12YyMX6u4K/NyqQT6MMKBUBeY+ptuZGYRw0L/fq
         ZWYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=4nYPuFSvNsIGQj95JMoHDedH6iQ4+ei8q9nLK4zkwcg=;
        b=OMPvd7fzleId7/5Irp8fz3ZK9f6+mJTqDfYvQEMIw0VLl4Od1uqzO8QmvKlXJ9w3fj
         tkDWHTPkMDGeveWUn72b4Z4KQ28uQRg50A/iVnW2i0Zn9JkliAHALv3Ah7xX2PGgm8O7
         /sD31y4dzU4ce5Qq3K4CuF8iFvmaiJWrRzNKxUb4wl+7o6aTB5pVtq/4OtujeIXj4gxR
         DTT8jH2jWcTaiMPaulZAbVS2Q1QvO9vnxVpM24Z8R0EITTOzPdXTNtHBG0/T2too1ZzK
         JjDOb16SCsLMu2nis+q6bZCq381wXpdSX5l4/zZa23F72u9GpbpGkvVTMHOaTRGC2r/g
         mFJQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Cv6FkNUw;
       spf=pass (google.com: domain of brouer@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=brouer@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4nYPuFSvNsIGQj95JMoHDedH6iQ4+ei8q9nLK4zkwcg=;
        b=YPYT8jSYNzTQ6MjvQrsblrLhPYwtL6sdBznlLmBXj9avXdnWlHClbxFlvwp1Mg4pKQ
         wMlHVUNjdZBs3Pkfm0lU81Iq03eMgf5pr+wGk9Nn/VUKXJzLag3xBCAhf9+gHW6Y5obn
         hzqxJLE99is0t+aP7p0749x+uNBmaNWCdecSOyWxx6EO+vdZdVbSdCkm6JxYW7j8tmGC
         2X09Gh0eVcW5jYFO07Ra8MFd72dOPY2bFEVB7OdqGgSdoG6faMAnq8rs1Ssv0Orbr+T4
         a1MQGZo61aMtyGCVDIiiV6jrNM3+3WtPR5s5vymZ58NOGzU1AIbFR6XKwIiKU6OX/p2g
         SKww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4nYPuFSvNsIGQj95JMoHDedH6iQ4+ei8q9nLK4zkwcg=;
        b=oCdWkITV1M7CuaKd9noOVV0IoDcwnoBQ2foU2uIgcU8Ku5w5zGESlekc0yUJw9DhpJ
         75AVqBUIVrCD2h+QUK7HCddLhQXByuMCrOh6n7subTKxDwq7J+bPDaw17XV1JdtdhP11
         QuZygLbYZz9Sk/AoT3wQ2Upl84iaVpbF/vg051azXNL1dxGjo1KPdf1CuMtO5hv/RsuU
         UT0tg59jYSABvnFB0V8XQKfEurP6tY3Z10C3C90ec6ZSS0R1SB9cLvPPMnSxj15ByzR7
         gdzcavwIVs/p4T/gEqIZHNnpZdKE84G8k1Mqne4s/imMQOf7+pGS23w4wLuj5gbTqZO+
         jWmA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5316TcDBk0cFbUdDoPuFK7fVEM/pOmmpoUEMhMlj3/cYG3/5fHE4
	6IEdzP2GKqLUC5spWPoV0Y4=
X-Google-Smtp-Source: ABdhPJxJaURVLmpHiRNlgennl0MMlFJ21PdX/h5UpBMR/+RUvFc4dic8qsxYx7GvFDekUiZ/S4uI3w==
X-Received: by 2002:a05:6a00:a86:b029:203:6bc9:3f14 with SMTP id b6-20020a056a000a86b02902036bc93f14mr15991110pfl.22.1618035740411;
        Fri, 09 Apr 2021 23:22:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:4e:: with SMTP id i14ls4013460pfk.0.gmail; Fri, 09
 Apr 2021 23:22:19 -0700 (PDT)
X-Received: by 2002:a63:5346:: with SMTP id t6mr16287109pgl.103.1618035739796;
        Fri, 09 Apr 2021 23:22:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618035739; cv=none;
        d=google.com; s=arc-20160816;
        b=aMfy5KVD3gfDAnG2O3OZ0Dxvv8WKhjZVijSz6EK7yXrQJIeiSZMd/84DCBLS5Aexwv
         EtcgeJ0El9bzYt6F7Jd7bHHb/uRHbZQMYEa9rWtxiUR/kI0Zsmwn8AOpPLjr5maNUd4l
         HbUVcdtjKtUjvPweedla+9mmHU8DGsuHKWRjsVe2MODp0yeYVDEkP/7QqWQkU5bw1L0j
         ECrpzY9l0N/k/+Sj8Z8FyR3MWMkDTuloxV21l76HlXB20G9PQTtkyIWPF0gwm7SFsFbP
         j8P060SvXW4YOwpHjvFe0f7EaOaboAXruiyJpPwVTpDpELYcS3TIeuE9dBWsB3DH3z5z
         GDLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Nv0p4RXdpoXEf7jqWszTL6fVOOyMMq+6cdW6F9BHRE8=;
        b=YgEEUHC60VhF708mhcAP3x6LpADWLBucsYHVxcNiFz4sLBb1C26bHRTIe9zt1p7aSz
         m+X3QhZ2hEf6/IZEi14aI/zEQKgUyaZjgUephVSX5xvkUYRu6BKZzPdtqwYK98K6Fk1o
         rQ3EMK+lE1egqgkqxTFIfUAtMUjy5FJJdI8raf7w1Mglxg1cxNdgMEOVOqMXsF6JTuzI
         w2rMV9F9X+5N0lj/VmBlEpbKbmoZvd1FFwfNRPoXkKhzvgyamCXO/YpUkowxXWR1vnAZ
         UK9qEQ1JI+Ee58bqRuyLnO3TEXOBLVq0gfg3zhW8cTHbEdJdFbPD4OslMrjFwOWM0sTZ
         otxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Cv6FkNUw;
       spf=pass (google.com: domain of brouer@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=brouer@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id y17si336420plr.4.2021.04.09.23.22.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Apr 2021 23:22:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of brouer@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-169-H9vV9Gg_ME-THv76LsVBSA-1; Sat, 10 Apr 2021 02:22:12 -0400
X-MC-Unique: H9vV9Gg_ME-THv76LsVBSA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B3FA4593C0;
	Sat, 10 Apr 2021 06:22:08 +0000 (UTC)
Received: from carbon (unknown [10.36.110.19])
	by smtp.corp.redhat.com (Postfix) with ESMTP id DD3276F968;
	Sat, 10 Apr 2021 06:21:59 +0000 (UTC)
Date: Sat, 10 Apr 2021 08:21:58 +0200
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: Matthew Wilcox <willy@infradead.org>
Cc: kernel test robot <lkp@intel.com>, linux-mm@kvack.org,
 kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org, Michael
 Ellerman <mpe@ellerman.id.au>, Benjamin Herrenschmidt
 <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org, "David
 S. Miller" <davem@davemloft.net>, brouer@redhat.com, Ilias Apalodimas
 <ilias.apalodimas@linaro.org>, Ivan Khoronzhuk
 <ivan.khoronzhuk@linaro.org>, Matteo Croce <mcroce@linux.microsoft.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Subject: Re: Bogus struct page layout on 32-bit
Message-ID: <20210410082158.79ad09a6@carbon>
In-Reply-To: <20210410024313.GX2531743@casper.infradead.org>
References: <20210409185105.188284-3-willy@infradead.org>
	<202104100656.N7EVvkNZ-lkp@intel.com>
	<20210410024313.GX2531743@casper.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Original-Sender: brouer@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=Cv6FkNUw;
       spf=pass (google.com: domain of brouer@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=brouer@redhat.com;
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

On Sat, 10 Apr 2021 03:43:13 +0100
Matthew Wilcox <willy@infradead.org> wrote:

> On Sat, Apr 10, 2021 at 06:45:35AM +0800, kernel test robot wrote:
> > >> include/linux/mm_types.h:274:1: error: static_assert failed due to requirement '__builtin_offsetof(struct page, lru) == __builtin_offsetof(struct folio, lru)' "offsetof(struct page, lru) == offsetof(struct folio, lru)"  
> >    FOLIO_MATCH(lru, lru);
> >    include/linux/mm_types.h:272:2: note: expanded from macro 'FOLIO_MATCH'
> >            static_assert(offsetof(struct page, pg) == offsetof(struct folio, fl))  
> 
> Well, this is interesting.  pahole reports:
> 
> struct page {
>         long unsigned int          flags;                /*     0     4 */
>         /* XXX 4 bytes hole, try to pack */
>         union {
>                 struct {
>                         struct list_head lru;            /*     8     8 */
> ...
> struct folio {
>         union {
>                 struct {
>                         long unsigned int flags;         /*     0     4 */
>                         struct list_head lru;            /*     4     8 */
> 
> so this assert has absolutely done its job.
> 
> But why has this assert triggered?  Why is struct page layout not what
> we thought it was?  Turns out it's the dma_addr added in 2019 by commit
> c25fff7171be ("mm: add dma_addr_t to struct page").  On this particular
> config, it's 64-bit, and ppc32 requires alignment to 64-bit.  So
> the whole union gets moved out by 4 bytes.

Argh, good that you are catching this!

> Unfortunately, we can't just fix this by putting an 'unsigned long pad'
> in front of it.  It still aligns the entire union to 8 bytes, and then
> it skips another 4 bytes after the pad.
> 
> We can fix it like this ...
> 
> +++ b/include/linux/mm_types.h
> @@ -96,11 +96,12 @@ struct page {
>                         unsigned long private;
>                 };
>                 struct {        /* page_pool used by netstack */
> +                       unsigned long _page_pool_pad;

I'm fine with this pad.  Matteo is currently proposing[1] to add a 32-bit
value after @dma_addr, and he could use this area instead.

[1] https://lore.kernel.org/netdev/20210409223801.104657-3-mcroce@linux.microsoft.com/

When adding/changing this, we need to make sure that it doesn't overlap
member @index, because network stack use/check page_is_pfmemalloc().
As far as my calculations this is safe to add.  I always try to keep an
eye out for this, but I wonder if we could have a build check like yours.


>                         /**
>                          * @dma_addr: might require a 64-bit value even on
>                          * 32-bit architectures.
>                          */
> -                       dma_addr_t dma_addr;
> +                       dma_addr_t dma_addr __packed;
>                 };
>                 struct {        /* slab, slob and slub */
>                         union {
> 
> but I don't know if GCC is smart enough to realise that dma_addr is now
> on an 8 byte boundary and it can use a normal instruction to access it,
> or whether it'll do something daft like use byte loads to access it.
> 
> We could also do:
> 
> +                       dma_addr_t dma_addr __packed __aligned(sizeof(void *));
> 
> and I see pahole, at least sees this correctly:
> 
>                 struct {
>                         long unsigned int _page_pool_pad; /*     4     4 */
>                         dma_addr_t dma_addr __attribute__((__aligned__(4))); /*     8     8 */
>                 } __attribute__((__packed__)) __attribute__((__aligned__(4)));  
> 
> This presumably affects any 32-bit architecture with a 64-bit phys_addr_t
> / dma_addr_t.  Advice, please?

I'm not sure that the 32-bit behavior is with 64-bit (dma) addrs.

I don't have any 32-bit boards with 64-bit DMA.  Cc. Ivan, wasn't your
board (572x ?) 32-bit with driver 'cpsw' this case (where Ivan added
XDP+page_pool) ?

-- 
Best regards,
  Jesper Dangaard Brouer
  MSc.CS, Principal Kernel Engineer at Red Hat
  LinkedIn: http://www.linkedin.com/in/brouer

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210410082158.79ad09a6%40carbon.
