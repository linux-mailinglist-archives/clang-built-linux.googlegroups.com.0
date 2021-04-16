Return-Path: <clang-built-linux+bncBCM2PPVSYYGRBZNQ4WBQMGQEIQZ5YRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id AE9C7361CCD
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 11:27:02 +0200 (CEST)
Received: by mail-qk1-x73a.google.com with SMTP id 79sf3320573qkm.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 02:27:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618565221; cv=pass;
        d=google.com; s=arc-20160816;
        b=iRJsQIMPZGRkRqStZ8jw51smQD9rsd9PkCXjACX8wZImPFOdYkSvCFKbs/M8+d8H0s
         EI+bnfLA+hLWcm1+KNdsc1JnRQtyAhyP3PLUE5mJe5zpWc4y8Yabn31FLBA0WYwP6XUN
         oX5qBtSv1tFLwn5flM8EA04ZIKYLmW4UaKxEf311YXIgq3RbF5DNpuFFfEUHq+Kf80gT
         sA3tZyHV/pJlfd9X/SlSBTB8bNA5rnBUy7sqcGWqDFELcnrrXolXn7Juxpud/Go6LvHF
         eOBoOVtyXp7OAJPMVfhj/ReKb6IIlAaZK5Fw33rTGqQntpcsKSDvLpG92/DRr4ZrL9cV
         Qjrg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:dkim-signature;
        bh=zHpcmCN5VfcJj+Uk+EF9ciCogeB75ZGjEzxC1vy4uhc=;
        b=erX5zCjtq1JpviCF3dw1AkjRX5VMJrjUGTPJlCftetcgdLKsvHTlxBBg6ylh94sltv
         nBWCQux+ry0RJBjOR9JXKHNMH4u7Ptlc1XtXFhGvvxsx3RMB2EaK5E24YZZwhu1ZpihK
         9Ku12KhUD27DfcljTydhsQV3ffES71bqUxm0nxwtRUNJSCkUdwfwbJw34IYhkePAEpu2
         Sjr3UCksOww+ahR0cpkmXx0bfxqir2JyfrNM89AntiGwEDpipSApWtQIKZhv0QyxSiPr
         UflOPTRhorjdQEn6xY26Li2EhdEb6J86A+7pPnl0eQXpqOvwq7IKECMmSu/8J/pDkvhQ
         jCpw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=q6CHJQ5y;
       spf=pass (google.com: domain of grygorii.strashko@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=grygorii.strashko@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=zHpcmCN5VfcJj+Uk+EF9ciCogeB75ZGjEzxC1vy4uhc=;
        b=KsPmdkRd/CUQmjTK0kozJxOhBuoJdxynyQ7QuZzvpiJIUGXeIKfSlDPN568SEoaBwS
         k279HHof4//LdOCtUSFn/uwOI7+d2Fc9mVoAOWHeDZU8zKwta+W3dyphETgbPpeKj6c+
         VELuKxHFA9Uz9zlXJhdfRCpiQS2C6HNUN6vBuU0TkN4/qiy3NKCbXXXY7lyeVxyQLBsX
         VmuDO+TzoXMZFLWSVEvtdxjMhZN62b8kQXlrwdHK3jh23J/JwzyfRNMDikAj2y3wx1QK
         IKIUeoSFAOd4jNFHMtbtj/sRyQY5R/pe3p0uTGL3VcEopDhBQwIL1c5dUbjihjImPqqX
         +JuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zHpcmCN5VfcJj+Uk+EF9ciCogeB75ZGjEzxC1vy4uhc=;
        b=Nf6xL4lstrTMrGdlgGyDLUoJX85WtuhuH67DcUlwhCrQGYhgdKiOzCZ3ku/JfC9Kz3
         iEMtxAnKXUrPA11KepqM4cdylLc+8doyp629NU8gc3FrWBOHyHUVVHfGbxqopsvfY2JO
         a/Jx56nt4SilyBGh3D5yeq36D2MmyfA+Q0iVb1p8uemHtdRMpt61wMHDPBoGsWP4vz78
         HeA3wNR15hvP1y5ApcKBw3UBH+iWcP48vZWzU4F0HgTjkhvWIn5b3al59x5ATZcCu40C
         V5l6BJORMS58P2wL+BQ4AGRsx6up6DSHu0/gvIpYMDg5qMWW1C76hSfm9dbf4XoTw1Xy
         5xBg==
X-Gm-Message-State: AOAM530yyiR81kSWWEyF+TvprJiLWkvwbFHNu6n6aJt5+gR7vDH0i9Sz
	0/RHU1fMBRQLJYUEu1ONP7g=
X-Google-Smtp-Source: ABdhPJx1LI5yLK5cbfLSDVjlrwmssPmGPowNfvk6QCJl3ifV/bWzfOqQHIzQGsR52tZvzyULnbXrPQ==
X-Received: by 2002:ae9:ebc7:: with SMTP id b190mr7917223qkg.259.1618565221618;
        Fri, 16 Apr 2021 02:27:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:140a:: with SMTP id d10ls286780qkj.11.gmail; Fri,
 16 Apr 2021 02:27:01 -0700 (PDT)
X-Received: by 2002:a37:ae85:: with SMTP id x127mr7676778qke.436.1618565221198;
        Fri, 16 Apr 2021 02:27:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618565221; cv=none;
        d=google.com; s=arc-20160816;
        b=Rki7eq8bvJtKNdpH6oxNQe4OPqv7x2D7NxJX7t0rN/n7EtvVcNx+4awauBjQE2Cz86
         HP1NIte61W+Mu1p1cmJ+CWcR/irdWiQV5u4l+pIcMG+9fdVD3wsDVTkamm3jHyWqOhv3
         UCYgtOB9PEaerIRAvmKsIaUCZAEl+3hMRO73Zu2mNhlVkP1WIeETUb9rQyQqH1V4PO0e
         9FprX4OXHBtP+D0QgSRmiyJSUrZ9imVPac2aivGO4sN0mKyta0yAgjUy/v+uEqCofgQa
         vzysmQ64xwDWr57H2Gylc2gP2pmXQEQamhxWj8Qfuh0EdhbH+Fwc+c3kn8nBJVTOWia6
         rfBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=iUN+ZAwoZO98VUtAbHnorakjrh71xOPMrXkAMJ4Hqpo=;
        b=y7SPg/SxiPDQWbaBHYjunU5T2N0d9OeQHn2lqBBZiK9bo7d7DXtTI08qCMt+o/W+ow
         KHzsQxTh5RT7Z7vCjBZEGr5Z+zznypxRFrQwG3HK80FZiQcVuAODAKYsvIFgvMhHnzfq
         yBxdyl30xWNtWN9qieWi8kv1yFH24XLTyeMSqvN29F7LkzScy/dctQxPNTl7WSFsJOeI
         2j6n/g66owgsvpCdUIj+ZPxtrfOGTlWI/ZmexD1wNZSEDwytu09ymCxJPx2wflSDYuCV
         2ujsj2LDXtshF/kteyRrzbc4ByQKAZsPgreoka1AIy+eRbT5F/0s6NaXvpoBP5w8nIa2
         yDqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=q6CHJQ5y;
       spf=pass (google.com: domain of grygorii.strashko@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=grygorii.strashko@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id c22si409706qtg.5.2021.04.16.02.27.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Apr 2021 02:27:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of grygorii.strashko@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 13G9QoXq061900;
	Fri, 16 Apr 2021 04:26:50 -0500
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 13G9Qotj047995
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 16 Apr 2021 04:26:50 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Fri, 16
 Apr 2021 04:26:49 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Fri, 16 Apr 2021 04:26:49 -0500
Received: from [10.250.100.73] (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 13G9QjO8101592;
	Fri, 16 Apr 2021 04:26:46 -0500
Subject: Re: Bogus struct page layout on 32-bit
To: Ilias Apalodimas <ilias.apalodimas@linaro.org>,
        Jesper Dangaard Brouer
	<brouer@redhat.com>,
        Christoph Hellwig <hch@lst.de>
CC: Matthew Wilcox <willy@infradead.org>, kernel test robot <lkp@intel.com>,
        Linux-MM <linux-mm@kvack.org>, <kbuild-all@lists.01.org>,
        <clang-built-linux@googlegroups.com>,
        open list
	<linux-kernel@vger.kernel.org>,
        <linux-fsdevel@vger.kernel.org>,
        Michael
 Ellerman <mpe@ellerman.id.au>,
        Benjamin Herrenschmidt
	<benh@kernel.crashing.org>,
        Paul Mackerras <paulus@samba.org>, <linuxppc-dev@lists.ozlabs.org>,
        Linux ARM
	<linux-arm-kernel@lists.infradead.org>,
        "David S. Miller"
	<davem@davemloft.net>,
        Matteo Croce <mcroce@linux.microsoft.com>,
        "netdev@vger.kernel.org" <netdev@vger.kernel.org>
References: <20210409185105.188284-3-willy@infradead.org>
 <202104100656.N7EVvkNZ-lkp@intel.com>
 <20210410024313.GX2531743@casper.infradead.org>
 <20210410082158.79ad09a6@carbon>
 <CAC_iWjLXZ6-hhvmvee6r4R_N64u-hrnLqE_CSS1nQk+YaMQQnA@mail.gmail.com>
From: "'Grygorii Strashko' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Message-ID: <ab9f1a6c-4099-2b59-457d-fcc45d2396f4@ti.com>
Date: Fri, 16 Apr 2021 12:26:44 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAC_iWjLXZ6-hhvmvee6r4R_N64u-hrnLqE_CSS1nQk+YaMQQnA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: grygorii.strashko@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=q6CHJQ5y;       spf=pass
 (google.com: domain of grygorii.strashko@ti.com designates 198.47.19.141 as
 permitted sender) smtp.mailfrom=grygorii.strashko@ti.com;       dmarc=pass
 (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
X-Original-From: Grygorii Strashko <grygorii.strashko@ti.com>
Reply-To: Grygorii Strashko <grygorii.strashko@ti.com>
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

Hi Ilias, All,

On 10/04/2021 11:52, Ilias Apalodimas wrote:
> +CC Grygorii for the cpsw part as Ivan's email is not valid anymore
> 
> Thanks for catching this. Interesting indeed...
> 
> On Sat, 10 Apr 2021 at 09:22, Jesper Dangaard Brouer <brouer@redhat.com> wrote:
>>
>> On Sat, 10 Apr 2021 03:43:13 +0100
>> Matthew Wilcox <willy@infradead.org> wrote:
>>
>>> On Sat, Apr 10, 2021 at 06:45:35AM +0800, kernel test robot wrote:
>>>>>> include/linux/mm_types.h:274:1: error: static_assert failed due to requirement '__builtin_offsetof(struct page, lru) == __builtin_offsetof(struct folio, lru)' "offsetof(struct page, lru) == offsetof(struct folio, lru)"
>>>>     FOLIO_MATCH(lru, lru);
>>>>     include/linux/mm_types.h:272:2: note: expanded from macro 'FOLIO_MATCH'
>>>>             static_assert(offsetof(struct page, pg) == offsetof(struct folio, fl))
>>>
>>> Well, this is interesting.  pahole reports:
>>>
>>> struct page {
>>>          long unsigned int          flags;                /*     0     4 */
>>>          /* XXX 4 bytes hole, try to pack */
>>>          union {
>>>                  struct {
>>>                          struct list_head lru;            /*     8     8 */
>>> ...
>>> struct folio {
>>>          union {
>>>                  struct {
>>>                          long unsigned int flags;         /*     0     4 */
>>>                          struct list_head lru;            /*     4     8 */
>>>
>>> so this assert has absolutely done its job.
>>>
>>> But why has this assert triggered?  Why is struct page layout not what
>>> we thought it was?  Turns out it's the dma_addr added in 2019 by commit
>>> c25fff7171be ("mm: add dma_addr_t to struct page").  On this particular
>>> config, it's 64-bit, and ppc32 requires alignment to 64-bit.  So
>>> the whole union gets moved out by 4 bytes.
>>
>> Argh, good that you are catching this!
>>
>>> Unfortunately, we can't just fix this by putting an 'unsigned long pad'
>>> in front of it.  It still aligns the entire union to 8 bytes, and then
>>> it skips another 4 bytes after the pad.
>>>
>>> We can fix it like this ...
>>>
>>> +++ b/include/linux/mm_types.h
>>> @@ -96,11 +96,12 @@ struct page {
>>>                          unsigned long private;
>>>                  };
>>>                  struct {        /* page_pool used by netstack */
>>> +                       unsigned long _page_pool_pad;
>>
>> I'm fine with this pad.  Matteo is currently proposing[1] to add a 32-bit
>> value after @dma_addr, and he could use this area instead.
>>
>> [1] https://lore.kernel.org/netdev/20210409223801.104657-3-mcroce@linux.microsoft.com/
>>
>> When adding/changing this, we need to make sure that it doesn't overlap
>> member @index, because network stack use/check page_is_pfmemalloc().
>> As far as my calculations this is safe to add.  I always try to keep an
>> eye out for this, but I wonder if we could have a build check like yours.
>>
>>
>>>                          /**
>>>                           * @dma_addr: might require a 64-bit value even on
>>>                           * 32-bit architectures.
>>>                           */
>>> -                       dma_addr_t dma_addr;
>>> +                       dma_addr_t dma_addr __packed;
>>>                  };
>>>                  struct {        /* slab, slob and slub */
>>>                          union {
>>>
>>> but I don't know if GCC is smart enough to realise that dma_addr is now
>>> on an 8 byte boundary and it can use a normal instruction to access it,
>>> or whether it'll do something daft like use byte loads to access it.
>>>
>>> We could also do:
>>>
>>> +                       dma_addr_t dma_addr __packed __aligned(sizeof(void *));
>>>
>>> and I see pahole, at least sees this correctly:
>>>
>>>                  struct {
>>>                          long unsigned int _page_pool_pad; /*     4     4 */
>>>                          dma_addr_t dma_addr __attribute__((__aligned__(4))); /*     8     8 */
>>>                  } __attribute__((__packed__)) __attribute__((__aligned__(4)));
>>>
>>> This presumably affects any 32-bit architecture with a 64-bit phys_addr_t
>>> / dma_addr_t.  Advice, please?
>>
>> I'm not sure that the 32-bit behavior is with 64-bit (dma) addrs.
>>
>> I don't have any 32-bit boards with 64-bit DMA.  Cc. Ivan, wasn't your
>> board (572x ?) 32-bit with driver 'cpsw' this case (where Ivan added
>> XDP+page_pool) ?

Sry, for delayed reply.

The TI platforms am3/4/5 (cpsw) and Keystone 2 (netcp) can do only 32bit DMA even in case of LPAE (dma-ranges are used).
Originally, as I remember, CONFIG_ARCH_DMA_ADDR_T_64BIT has not been selected for the LPAE case
on TI platforms and the fact that it became set is the result of multi-paltform/allXXXconfig/DMA
optimizations and unification.
(just checked - not set in 4.14)

Probable commit 4965a68780c5 ("arch: define the ARCH_DMA_ADDR_T_64BIT config symbol in lib/Kconfig").

The TI drivers have been updated, finally to accept ARCH_DMA_ADDR_T_64BIT=y by using things like (__force u32)
for example.

Honestly, I've done sanity check of CPSW with LPAE=y (ARCH_DMA_ADDR_T_64BIT=y) very long time ago.

-- 
Best regards,
grygorii

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/ab9f1a6c-4099-2b59-457d-fcc45d2396f4%40ti.com.
