Return-Path: <clang-built-linux+bncBCM2HQW3QYHRBUHTZWBQMGQE7UJLBIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C3C735B73E
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Apr 2021 00:36:01 +0200 (CEST)
Received: by mail-lj1-x240.google.com with SMTP id b20sf322079ljf.7
        for <lists+clang-built-linux@lfdr.de>; Sun, 11 Apr 2021 15:36:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618180561; cv=pass;
        d=google.com; s=arc-20160816;
        b=sW9U4TAxyBsV5FutafQ9GzZ7YFMZ1W4lug/a1qzMy/EqPbE/Nc/MkLd0JvJl0bnNvu
         /Qw37efIKmWVyuoy2fBjQoW7LoKGZoB4zpNcMcY9kNDaj4jQOta9Om5uD2s72di6eHMf
         9a/t13GP9v8Nmw8gWIcCVDy2nBCHOoyP9Wxtfh/i5Z8CnHlwq9/pdhOJXGFhX5HLv09D
         6yardaR3/3RAVC6U/NYTB94bkojVW4lsi4yodjKGbHFeyKEIZh3lxC1qsA2rQBV9jrEJ
         rw2tAI/Jw/4wdTL/n83rDSm3boH4EvxrBUmr3qRX1lWecdABfH5VR8QAxPSHGpbpGblM
         huIQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=LIR8eRhr/sk3+bJd+Ix0Mmv+Rd0uUEWFmEOmZWAw0FQ=;
        b=kjiR5VNMtJlK7RANpUik/qRmd0KIoTWgxGfRliLRnIGQWphv1KXM2zNbdXwKlqOm3G
         kxrWE9PxL/LVV9krJj/D1bCaEIjOBoAS3lDQMhdMkJrRMCMhf7Nc2IJ+hmK+j8+yHBZ5
         5njI8ckQ1IqEJpkeo95TgShGXMzQhAK9BGQv6RglUYR3o4jxptp1UHABX35QQP8+Ynrl
         ouTuTmUbhROOzpOyiCDOtC6h1S+2CjAP30EkCrdV5fYmd/MuubESoWHuI471P4y+Ebwx
         iNeI6ntVn7MwJKCW0tRyCHsML9P5Ygt3ayxxaZLX6oc2Q9/h3lbD44zNTfNcBmjHYnhJ
         i/qg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=ciV9TA9s;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LIR8eRhr/sk3+bJd+Ix0Mmv+Rd0uUEWFmEOmZWAw0FQ=;
        b=Av9SVspwH74VR4VfvqFT/ZgmrhDT8pcRFojxv2Wowf5/7GeYDGmsXTuw6ERQzCwK2z
         3VGN5s6SWEniODvvasQ+pRnLLduKcQXeX4Q3cTfczcV7Z8yvyvGPmGJ2oYm9i7VcbUQ2
         lUNT3IUsdN7ejkF3Wi6Avp2IKaG9iJtx/W18QA4M2FQFXX6HdoKLvskHhYtl6ymXhUJ9
         FWhZGIdkPhzPIa4YI71tTJMhGFvBxA1j9EqX0YeHO5zCL/Iv9bsANhmb+ulpgqRk/RIr
         XknqFIRRbIKlzumBjAyO1f9wHazYS338cbEQH6paHE4fcJks5emeCDNc9LUoqN8xBpzP
         xjgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LIR8eRhr/sk3+bJd+Ix0Mmv+Rd0uUEWFmEOmZWAw0FQ=;
        b=qxlxkP8s+lvHtKqanCnsKlqgcUr07K/fiJEA6M7ur0ZcpfS51lHYhnifYfeMLUi3M7
         yY4QozAUjyUbqedU00AVQ9H0yf6V3wh5xHViI50daCnvnmzbwHoFpMSuOolL58MteSWk
         85cKCWKJK1fV6dvKvIKfZ+rNs5frakHDkvbxdtPukOb+DPjL/jo9Q9k+KEcQvbi45IFA
         bUcQTdnYhZsUhokBeKIXTgI1YzWftrYnnnCa9lALcDnnXY4768ZCG1hJ8fAcP0tqlUsK
         vMrmfZQO7lsEr9nMuzE4xGvY618fR0xNMmAUU1h8HO3JkaaA0yr4IJXWB28gvihAtTDK
         so9w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532PBR+AByCircYoZ8c16bJS6Xl4chwMhlv84LyncOxu4Crh5uS9
	PbmhGovfyo2GAw42z8CmqL4=
X-Google-Smtp-Source: ABdhPJw+jqaJON4X8HLK+ziSUsD4JrQJCta94Oo6/0hjPXFDfFCTNhNUIcns2wCAcC44aC7eOfVUiQ==
X-Received: by 2002:a05:6512:3a93:: with SMTP id q19mr2641294lfu.88.1618180561116;
        Sun, 11 Apr 2021 15:36:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:588:: with SMTP id 130ls67375ljf.9.gmail; Sun, 11 Apr
 2021 15:36:00 -0700 (PDT)
X-Received: by 2002:a2e:988a:: with SMTP id b10mr16353085ljj.341.1618180560078;
        Sun, 11 Apr 2021 15:36:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618180560; cv=none;
        d=google.com; s=arc-20160816;
        b=GxVlOjnpAEBXI+j6t9jAUdH2XYJM228F6RfIh9TeRe2lCQm85G9X3nMi77XcPBwqwV
         qLo6d3kZdNYaTE99SJjvuLhLxCWSiL6LN3z/UOdrWws9rOCMVb69PWpGoC6J1C3IqgYZ
         k66JuxcG9NL3MrNsFnAnGa0jKXyfY+4Mqbhco2pyWv1Ivzb49vxFhJXSBaHjdWB2zJI9
         QpuwvHO2KJQPICo3bxDroo5Hsg/7/z87OfeaX8PkmWI40ORYpa17WwuyD++qFmZaoyas
         sp9LTyIkj7qntlY2BGZjV6cPV3coSSCixegiCiM8zHpLOxII8Znzuv/x2/0AzG130r+I
         1LIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=lvW0/1imLWgxPdvw89GQU7hXjnk5amCWvOf6j0ZGMxs=;
        b=KbJ1TRJwahGVEBGXIKzbz4H4FbA514qYqRwE2tPjVfdgx6Aigzgp8HDvnr6f31GAgL
         JiMIAjcwJDVegCKzQoxaLX/BsCdWvCdS6z96pLZAD20ss1w8kfmm7VQiFtpRn8bCrNwd
         yaxZ/rZn3JaYxjbHoxXeL3S7rlxHNPZpDZZU0+xHHKI+HFL7KfSqpWk++VRx80U5JWqd
         G8MU42agtAE/I4hDHdWdJzhfCi2FP4gM1Xg5v5DFP3iJ6VmS1RpcY7VdOOEIMmfL1ZVw
         qAkVuSHCyngH9qEsVMUBhv++NPxUked9Yko4douNIv8JFUgdPEzSYSa4DfaP0edWuJHr
         HI7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=ciV9TA9s;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id q9si565775ljm.3.2021.04.11.15.35.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Apr 2021 15:35:59 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat Linux))
	id 1lVig5-003WFx-6L; Sun, 11 Apr 2021 22:35:44 +0000
Date: Sun, 11 Apr 2021 23:35:37 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Arnd Bergmann <arnd@kernel.org>
Cc: kernel test robot <lkp@intel.com>, Linux-MM <linux-mm@kvack.org>,
	kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Linux FS-devel Mailing List <linux-fsdevel@vger.kernel.org>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Jesper Dangaard Brouer <brouer@redhat.com>,
	"David S. Miller" <davem@davemloft.net>
Subject: Re: Bogus struct page layout on 32-bit
Message-ID: <20210411223537.GF2531743@casper.infradead.org>
References: <20210409185105.188284-3-willy@infradead.org>
 <202104100656.N7EVvkNZ-lkp@intel.com>
 <20210410024313.GX2531743@casper.infradead.org>
 <CAK8P3a3uEGaEN-p06vFP+jwbFt3P=Bx4=aRN+kUyB4PcFPxLRg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK8P3a3uEGaEN-p06vFP+jwbFt3P=Bx4=aRN+kUyB4PcFPxLRg@mail.gmail.com>
X-Original-Sender: willy@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=ciV9TA9s;
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

On Sat, Apr 10, 2021 at 09:10:47PM +0200, Arnd Bergmann wrote:
> On Sat, Apr 10, 2021 at 4:44 AM Matthew Wilcox <willy@infradead.org> wrote:
> > +                       dma_addr_t dma_addr __packed;
> >                 };
> >                 struct {        /* slab, slob and slub */
> >                         union {
> >
> > but I don't know if GCC is smart enough to realise that dma_addr is now
> > on an 8 byte boundary and it can use a normal instruction to access it,
> > or whether it'll do something daft like use byte loads to access it.
> >
> > We could also do:
> >
> > +                       dma_addr_t dma_addr __packed __aligned(sizeof(void *));
> >
> > and I see pahole, at least sees this correctly:
> >
> >                 struct {
> >                         long unsigned int _page_pool_pad; /*     4     4 */
> >                         dma_addr_t dma_addr __attribute__((__aligned__(4))); /*     8     8 */
> >                 } __attribute__((__packed__)) __attribute__((__aligned__(4)));
> >
> > This presumably affects any 32-bit architecture with a 64-bit phys_addr_t
> > / dma_addr_t.  Advice, please?
> 
> I've tried out what gcc would make of this:  https://godbolt.org/z/aTEbxxbG3
> 
> struct page {
>     short a;
>     struct {
>         short b;
>         long long c __attribute__((packed, aligned(2)));
>     } __attribute__((packed));
> } __attribute__((aligned(8)));
> 
> In this structure, 'c' is clearly aligned to eight bytes, and gcc does
> realize that
> it is safe to use the 'ldrd' instruction for 32-bit arm, which is forbidden on
> struct members with less than 4 byte alignment. However, it also complains
> that passing a pointer to 'c' into a function that expects a 'long long' is not
> allowed because alignof(c) is only '2' here.
> 
> (I used 'short' here because I having a 64-bit member misaligned by four
> bytes wouldn't make a difference to the instructions on Arm, or any other
> 32-bit architecture I can think of, regardless of the ABI requirements).

So ... we could do this:

+++ b/include/linux/types.h
@@ -140,7 +140,7 @@ typedef u64 blkcnt_t;
  * so they don't care about the size of the actual bus addresses.
  */
 #ifdef CONFIG_ARCH_DMA_ADDR_T_64BIT
-typedef u64 dma_addr_t;
+typedef u64 __attribute__((aligned(sizeof(void *)))) dma_addr_t;
 #else
 typedef u32 dma_addr_t;
 #endif

but I'm a little scared that this might have unintended consequences.
And Jesper points out that a big-endian 64-bit dma_addr_t can impersonate
a PageTail page, and we should solve that problem while we're at it.
So I don't think we should do this, but thought I should mention it as
a possibility.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210411223537.GF2531743%40casper.infradead.org.
