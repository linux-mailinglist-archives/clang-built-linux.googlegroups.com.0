Return-Path: <clang-built-linux+bncBCOOP5GPTQDRB4GOYWBQMGQEPX2SUII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id 8479135AC00
	for <lists+clang-built-linux@lfdr.de>; Sat, 10 Apr 2021 10:53:05 +0200 (CEST)
Received: by mail-qk1-x73f.google.com with SMTP id j24sf4313792qkg.7
        for <lists+clang-built-linux@lfdr.de>; Sat, 10 Apr 2021 01:53:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618044784; cv=pass;
        d=google.com; s=arc-20160816;
        b=XMl3TDPHZMpcSWmnFUXc21qSNJ0RyjcZVWfqEyIIGnJI5lpsisCt1fWcERYZypGR5+
         MqsfIL9/2flV7LOqy5ar8IXfycA59dRauzrK1Ts3k7eGotalBbKkNBVfvDAZqnGKcEQI
         oLuHw/7GuH0krGI3rASc9a88y/OWxI85v30Da1P0oO8v3JtaDHyFcZRFpD1EdLTEhFzZ
         Md8gP6Us0CG59IvLYzHwT/b1I0hiV1T3BbZ4tZ1FDiZVYcAweu9KsX0fHxSvn4Z0kuvb
         KKpMnvuIAwUREeExFbyl/Rjb9OZY0YMlDmmxd5DaYYh7JFXvcM8OordhkBymOwvAYXjs
         YXng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=jNBJo+B3BuAuv68+kLplKYsrsUubtwox/899VVcQ+LA=;
        b=nt+2hWFCrbPKecl2es+p+rswhMEQ3Ew589l1wOm8m2M+Jae/tVZI9q3AUTpbVxLvAI
         srJogqCHzRXx/YRhpldqg3uDHUlcvo//rDZFBfJw8OQCq+stPzsElzjUAX6IT9Nlpf2Y
         QvFLvvt6JhZD19H2OY5sDOgNe/A2JdkHn2G0gyrhSoSAFvH+b6oRd9Q8MMnpxAgBt3nz
         +fXGfH7SBE+q48rupynVgiXBlBxhleGskXcva07x8E0iBqL6kHVauTJ4IZp6ytmyt9UT
         IGEIT365GyS1Gp6nYoGLNGfvo4e9PCvBz9pwSJtm9KtK0fFh7cznz/o9xQiAzFGfXIUl
         ++Gw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=s0sXCo3d;
       spf=pass (google.com: domain of ilias.apalodimas@linaro.org designates 2607:f8b0:4864:20::b2b as permitted sender) smtp.mailfrom=ilias.apalodimas@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jNBJo+B3BuAuv68+kLplKYsrsUubtwox/899VVcQ+LA=;
        b=U1ZzXL8Z0kiEylCf2trfNz8LY+wIfStp08h4F4Tg5tqtVR5wn5urnl8rUNlSNEzIy7
         oxbfWwo7tQI2yX+LFLHgnd6mrOALBlQdXScmOrEX54sgVHKk00nueUy+LvGtot5UgaGh
         Xo9yYuVdpaM99wKya96xvWz2+VwygZ9LPeN1LNASXBkx08WX/JrQjbZdHFTVW9U5hTyA
         QDNcZYzPJowv/IVTT5JiB1H6zynxpf9qiWLlAzbst86wJ5KbEn46FvtFjaweXEC2NJKi
         vu1bsJrqyo4Llif6tMPaFT8YD8GBc/jirZ1RxvRGcLIzhlW4drL6w268NbxqX25LS/Fo
         jLnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jNBJo+B3BuAuv68+kLplKYsrsUubtwox/899VVcQ+LA=;
        b=U7qMqy470X7LEnkvbGeDvlNw94WBnS1KVPANFcMJMsxBviI4eOmaRMDwczWuhJCxKC
         N8rb5sRnzChYuION8DDUSQRDqeUKfE5CsVnveKvntL6Ud5xMigpB900kmTVoHvM37jsv
         E8zzxjjtEgvQC+egBG98Fud+pfmqhL/x+qgSsmpRbIcXqDqVpMPjA/mqLs5BORnl8tP2
         QBEpgYAhFrEqYh9KrUnu9eYzaM/MwrA7z4gAQjvgw/zwODssc9UsrjtGunxslCrkQ3EJ
         Xhizc2l+HK+H5sh2a3WMTysvi8zDzmIrGk+Uo5KeFPQdCF5xeMAm6SCS0zB82+ZU1d17
         he8Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5330voswYQntnt9LcPO9vRnBHM/5d0f4XHu3mlgwcKlxqrY6+6JM
	wxGvx/U92gj1/3uqUdRl1N0=
X-Google-Smtp-Source: ABdhPJwFLZghq2DZGm9mP+twf2/6DJpZmlKfBZzrqhIQ4cbUPFrTVf7mUAJuTcAgMagCynnhejTfBA==
X-Received: by 2002:aed:216a:: with SMTP id 97mr3623453qtc.70.1618044784249;
        Sat, 10 Apr 2021 01:53:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:62b:: with SMTP id a11ls3286410qvx.10.gmail; Sat,
 10 Apr 2021 01:53:03 -0700 (PDT)
X-Received: by 2002:a05:6214:485:: with SMTP id ay5mr18499348qvb.41.1618044782942;
        Sat, 10 Apr 2021 01:53:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618044782; cv=none;
        d=google.com; s=arc-20160816;
        b=FhXjGlWQmElycan6LWks8stTM6d9PnCYi+9puVwpVUNwmgE9owNEARKoinjoiKYoVh
         yzbYEuVHs3v//ctX2SZ58XLVZfwkpF2GyzZmN3N1c3g3XWIlUkcPM481dOe8L0qoaXfT
         pnIz0kuR3Nx51do/lyl900Tz4z7ai+LoMUDkPA5ZJJ+Q91j+DZNWosN2kCjvuTtt/NRw
         T2UeZG4Q4RB1aSb9MIINHJXHPcRRq4MK/4KK4EZ80PNxKg20eUV8xyqttVScBHjA4wFt
         G516eiCksQomVMXk04hcYmUVlU5dBBmCRjYM/k4g6r+9cnvRsbsT/RAn0AZVZbATnnJg
         QU2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=7yHuiMf2mbQHC9INRUFE4f0Q8iL2DCKJY335xtgKT+M=;
        b=APsgN+Sl3TNlhdbGulLnYmfNlJmfCgl3L0ufDhBgKO4LjRbcP+QA/dvh25JM8LEnNz
         bPhduifz8QHX8nufnu16H8Aw0+Ra7ansKV1MTL3FftB6UF4p4Kxr2Y3AVKmVJOldbS5Z
         /xVYslQKambqXQr0sOCBvDz+Ic/jsflbOw9hSGqwNi1Atw9C/jIHl6gMdCQABC+RcCJ5
         9L24T3NehTGq3zmiacpvQ1Fpa9aIXFLeu8Um5q94dG9c+B5YVUSpXO4oFRC9kuohjG1y
         za0DhdvhlhAGSIzleShygDiLXHtBnW181PN+EZpnzkFKtypf0OBlkcXF6/KpXpdYDY6f
         ohxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=s0sXCo3d;
       spf=pass (google.com: domain of ilias.apalodimas@linaro.org designates 2607:f8b0:4864:20::b2b as permitted sender) smtp.mailfrom=ilias.apalodimas@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-yb1-xb2b.google.com (mail-yb1-xb2b.google.com. [2607:f8b0:4864:20::b2b])
        by gmr-mx.google.com with ESMTPS id r24si652292qtp.1.2021.04.10.01.53.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Apr 2021 01:53:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of ilias.apalodimas@linaro.org designates 2607:f8b0:4864:20::b2b as permitted sender) client-ip=2607:f8b0:4864:20::b2b;
Received: by mail-yb1-xb2b.google.com with SMTP id x8so4078818ybx.2
        for <clang-built-linux@googlegroups.com>; Sat, 10 Apr 2021 01:53:02 -0700 (PDT)
X-Received: by 2002:a25:2bc1:: with SMTP id r184mr25473310ybr.51.1618044782263;
 Sat, 10 Apr 2021 01:53:02 -0700 (PDT)
MIME-Version: 1.0
References: <20210409185105.188284-3-willy@infradead.org> <202104100656.N7EVvkNZ-lkp@intel.com>
 <20210410024313.GX2531743@casper.infradead.org> <20210410082158.79ad09a6@carbon>
In-Reply-To: <20210410082158.79ad09a6@carbon>
From: Ilias Apalodimas <ilias.apalodimas@linaro.org>
Date: Sat, 10 Apr 2021 11:52:26 +0300
Message-ID: <CAC_iWjLXZ6-hhvmvee6r4R_N64u-hrnLqE_CSS1nQk+YaMQQnA@mail.gmail.com>
Subject: Re: Bogus struct page layout on 32-bit
To: Jesper Dangaard Brouer <brouer@redhat.com>
Cc: Matthew Wilcox <willy@infradead.org>, kernel test robot <lkp@intel.com>, Linux-MM <linux-mm@kvack.org>, 
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com, 
	open list <linux-kernel@vger.kernel.org>, linux-fsdevel@vger.kernel.org, 
	Michael Ellerman <mpe@ellerman.id.au>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, 
	Paul Mackerras <paulus@samba.org>, linuxppc-dev@lists.ozlabs.org, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	"David S. Miller" <davem@davemloft.net>, Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>, 
	Matteo Croce <mcroce@linux.microsoft.com>, 
	"netdev@vger.kernel.org" <netdev@vger.kernel.org>, Grygorii Strashko <grygorii.strashko@ti.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ilias.apalodimas@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=s0sXCo3d;       spf=pass
 (google.com: domain of ilias.apalodimas@linaro.org designates
 2607:f8b0:4864:20::b2b as permitted sender) smtp.mailfrom=ilias.apalodimas@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

+CC Grygorii for the cpsw part as Ivan's email is not valid anymore

Thanks for catching this. Interesting indeed...

On Sat, 10 Apr 2021 at 09:22, Jesper Dangaard Brouer <brouer@redhat.com> wrote:
>
> On Sat, 10 Apr 2021 03:43:13 +0100
> Matthew Wilcox <willy@infradead.org> wrote:
>
> > On Sat, Apr 10, 2021 at 06:45:35AM +0800, kernel test robot wrote:
> > > >> include/linux/mm_types.h:274:1: error: static_assert failed due to requirement '__builtin_offsetof(struct page, lru) == __builtin_offsetof(struct folio, lru)' "offsetof(struct page, lru) == offsetof(struct folio, lru)"
> > >    FOLIO_MATCH(lru, lru);
> > >    include/linux/mm_types.h:272:2: note: expanded from macro 'FOLIO_MATCH'
> > >            static_assert(offsetof(struct page, pg) == offsetof(struct folio, fl))
> >
> > Well, this is interesting.  pahole reports:
> >
> > struct page {
> >         long unsigned int          flags;                /*     0     4 */
> >         /* XXX 4 bytes hole, try to pack */
> >         union {
> >                 struct {
> >                         struct list_head lru;            /*     8     8 */
> > ...
> > struct folio {
> >         union {
> >                 struct {
> >                         long unsigned int flags;         /*     0     4 */
> >                         struct list_head lru;            /*     4     8 */
> >
> > so this assert has absolutely done its job.
> >
> > But why has this assert triggered?  Why is struct page layout not what
> > we thought it was?  Turns out it's the dma_addr added in 2019 by commit
> > c25fff7171be ("mm: add dma_addr_t to struct page").  On this particular
> > config, it's 64-bit, and ppc32 requires alignment to 64-bit.  So
> > the whole union gets moved out by 4 bytes.
>
> Argh, good that you are catching this!
>
> > Unfortunately, we can't just fix this by putting an 'unsigned long pad'
> > in front of it.  It still aligns the entire union to 8 bytes, and then
> > it skips another 4 bytes after the pad.
> >
> > We can fix it like this ...
> >
> > +++ b/include/linux/mm_types.h
> > @@ -96,11 +96,12 @@ struct page {
> >                         unsigned long private;
> >                 };
> >                 struct {        /* page_pool used by netstack */
> > +                       unsigned long _page_pool_pad;
>
> I'm fine with this pad.  Matteo is currently proposing[1] to add a 32-bit
> value after @dma_addr, and he could use this area instead.
>
> [1] https://lore.kernel.org/netdev/20210409223801.104657-3-mcroce@linux.microsoft.com/
>
> When adding/changing this, we need to make sure that it doesn't overlap
> member @index, because network stack use/check page_is_pfmemalloc().
> As far as my calculations this is safe to add.  I always try to keep an
> eye out for this, but I wonder if we could have a build check like yours.
>
>
> >                         /**
> >                          * @dma_addr: might require a 64-bit value even on
> >                          * 32-bit architectures.
> >                          */
> > -                       dma_addr_t dma_addr;
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
> I'm not sure that the 32-bit behavior is with 64-bit (dma) addrs.
>
> I don't have any 32-bit boards with 64-bit DMA.  Cc. Ivan, wasn't your
> board (572x ?) 32-bit with driver 'cpsw' this case (where Ivan added
> XDP+page_pool) ?
>
> --
> Best regards,
>   Jesper Dangaard Brouer
>   MSc.CS, Principal Kernel Engineer at Red Hat
>   LinkedIn: http://www.linkedin.com/in/brouer
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAC_iWjLXZ6-hhvmvee6r4R_N64u-hrnLqE_CSS1nQk%2BYaMQQnA%40mail.gmail.com.
