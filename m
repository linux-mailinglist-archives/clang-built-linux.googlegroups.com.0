Return-Path: <clang-built-linux+bncBC27HSOJ44LBBZPGY2BQMGQEH2HAWHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id E084C35AE0D
	for <lists+clang-built-linux@lfdr.de>; Sat, 10 Apr 2021 16:17:09 +0200 (CEST)
Received: by mail-lj1-x23e.google.com with SMTP id o10sf274206ljj.9
        for <lists+clang-built-linux@lfdr.de>; Sat, 10 Apr 2021 07:17:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618064229; cv=pass;
        d=google.com; s=arc-20160816;
        b=eWKzwhAK9aRydw8+bgxoJj4lykbwXzfpkoQoft/IIB9TbCZFZYiJLajAAddz8pJSEn
         l+b6r4sCzsFxDyfWYswCu9Abcjr5yhdd6EHWVF+fiET72o2h81e8Ri0kqIV3egCWzaO6
         Tbnd3KUoyUWy6aAJMi4/r8IhK8tdaIivDZKawXkzvQ0oW0+vdJ0w7HfobpMCUh7SuJoO
         rxJ1Fxb4nnj416yqrZKughYOhqyq0I23rsXWF2jaxBStdGa0LBUeiQPjOorZSoUEW1iQ
         fSDwTENDKJNI39Zk0h7gR+S0njsQjgDixY2hppjT3BGgWsi0bQg7ag25kzCvX0u+w8pp
         HPPw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=qfqJfc4W6pETkG5lHpp4sn4KUGYFg+CXAvnKMwhla2A=;
        b=h2VL7HNpllY2G1yQGh7h97vBqdxUXhG+wu+9nc/+FyAUBCdEcD8IubhqiOAiYFr00s
         K1+jZCokNws6FIWf5VBOGBGkxZGbOSPfvFV+0Qmc18ZBWoqf+ou1hV9+UCzSwDZgNVn+
         NAWso4BiKwJ6HdjjZSVbVJMd0+DR6twFQSnL9Gu21Ag6z2sSSw74LteNeIlqRr4jNDgH
         lbhR1FdXFCsxci5f1EX69pHgXFAKJePxm/v56+u/OglCQor3y42nDvVKYAwoBfjt39nN
         08+LMuGbsIne+6Fm6HiWw6I+obpwygp9T5VYpU9mVw9HZnKlPNNWc9vDULxOwtFMl10S
         zBgw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.85.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:mime-version
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qfqJfc4W6pETkG5lHpp4sn4KUGYFg+CXAvnKMwhla2A=;
        b=S1k9tr02E1S9XHzSl1/Pxc6JNHl3So7QJsHE1xWZIofe5keoFqS9gmtF49qe1I+Xv9
         AhimkYm925DuJWJK9A/XWgKEkmoTAfCicvKN9OvAxNIdU46wHHmLoiPfjFd7VpXUeUyk
         S4gHkV3yLATWpclZ/i0geWphJoGtarYP/1FxEA5elaxxS7wJr6YpTFMvNDSRM0s0KNMN
         UBjQP11hIz3At+VghdigvETosSK9HGf5y8+HbCESuYZDa0TpCDvn9zkEmLF65pfWu+qZ
         b6KoRMui5G21PXy2KvWWH+9JhLgJggYYzM5C2xsttbyUD8IQWbOtFZXX4/1Z+7lHN7/L
         bgHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qfqJfc4W6pETkG5lHpp4sn4KUGYFg+CXAvnKMwhla2A=;
        b=qzJgVqJDZ8bvUMNgv+EEwUEdu6Y/+uWLW9vD2nDgtqWTJhldALwCDLnAoXiS3f5kxA
         TL+94+S3ZPr3m7+i+PoN3ApHvksXHVNXyG3Oets2GNboXG5ijTIJ97z6+JbS8omgWlcW
         kQpwaWgVgJ6HA647RBcyGo541J6f0kL9PODlyGs/Gtze81AJa2oFWhuRNb78omM1oLJV
         TfFDczlH69wIBAa/jGlbByp9HrdpscjIaPN31LAJK0A6j8MAO/5vgZySZ75TURhTL6yv
         Lkpc9n6GY8R3Tx/aDEJkLiwCiQymjI+V56R87GDO15IfNEamq42fAzNUlxqNfDM3qHW+
         GCEw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530RVO94WobiV5tLwtZBU5nqazjfLhzTVWoUJJiSxaVgzMmbJiHu
	Rc4m9KVOY88C7dvUzIZOm9w=
X-Google-Smtp-Source: ABdhPJwnYbSS7ggjra52uHXKeM54lh8EZjOIid6h2xWj3yPdB3vynQU+9IGG66hWMJAD+StgbuRHLQ==
X-Received: by 2002:a2e:b814:: with SMTP id u20mr12276446ljo.370.1618064229520;
        Sat, 10 Apr 2021 07:17:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:6c2:: with SMTP id u2ls548260lff.3.gmail; Sat, 10
 Apr 2021 07:17:08 -0700 (PDT)
X-Received: by 2002:a19:ab09:: with SMTP id u9mr13741259lfe.324.1618064228646;
        Sat, 10 Apr 2021 07:17:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618064228; cv=none;
        d=google.com; s=arc-20160816;
        b=PgMbzq3RDaN9MtZrfC3Xh9IUAHiZBwZK9g96CqMvyV6ERft2DJd0IVt3p5UeCKHbAM
         vzfB+DFKK4QrTuWobAhAuhqUWCnaVfFPp54B9TEq0KsFEuQ1InhqiE4ZrLOz/OEHv3Zi
         fHYf6QAgizUO9yZxMcuK32EU702IlGTEp8kREqwSHe7JZYJpvR/3a3CuAW/d4LHz8x04
         dPK0pDou9mTSOWRuRDmvDKb1msx+f+Vz3KPSDwSl/5NNHVvXUFf5nRwRDDrmZkvmmgDQ
         efLzjc51twr+jO8ROekL0Rqv5J9E0P0RMhhXkCFMB3TtgSnqrkTOuf9xRRdsxUlfYQvx
         ofGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=aMyKgyy/K7XZrmJf8Cwzzurugif2dtZmgpas4lx4sow=;
        b=beVkZKYGqkdgOSblOoUc+SOXDLJYfKjFSH+e39toykv6qp/WVDBebs1M+6cRAIM2kg
         3uJqmUJRw9AKhGemQsxQncoW0mTDj24ZXumDHEHRllwDbTUUyzcALDKOBQsvndh1M+r+
         i8C5QFfr+ZpKvxzPj3vB608ZflbDulDZuN/okUZv745Q06Swnb//878eCytl+TmNIcH1
         QClto3kEMHiGdjJrUXf7NVu2B5xd8iUkOwr2rWG3cm38O+N3SQAhrs08FXz+eTZQk1AA
         a52A+nvQbimecYk8CwdTp3iz7blHzWE2Pi9Xhjhi2xka+j0tmgFvtw5OJJUu2BeVZL38
         1NRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.85.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [185.58.85.151])
        by gmr-mx.google.com with ESMTPS id 81si470045lfj.2.2021.04.10.07.17.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Apr 2021 07:17:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 185.58.85.151 as permitted sender) client-ip=185.58.85.151;
Received: from AcuMS.aculab.com (156.67.243.121 [156.67.243.121]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-84-kCKo1-18OZuYsleNdk-yPA-1; Sat, 10 Apr 2021 15:17:06 +0100
X-MC-Unique: kCKo1-18OZuYsleNdk-yPA-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) with Microsoft SMTP
 Server (TLS) id 15.0.1497.2; Sat, 10 Apr 2021 15:17:05 +0100
Received: from AcuMS.Aculab.com ([fe80::994c:f5c2:35d6:9b65]) by
 AcuMS.aculab.com ([fe80::994c:f5c2:35d6:9b65%12]) with mapi id
 15.00.1497.012; Sat, 10 Apr 2021 15:17:05 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Matthew Wilcox' <willy@infradead.org>, kernel test robot <lkp@intel.com>
CC: "linux-mm@kvack.org" <linux-mm@kvack.org>, "kbuild-all@lists.01.org"
	<kbuild-all@lists.01.org>, "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "linux-fsdevel@vger.kernel.org"
	<linux-fsdevel@vger.kernel.org>, Michael Ellerman <mpe@ellerman.id.au>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras
	<paulus@samba.org>, "linuxppc-dev@lists.ozlabs.org"
	<linuxppc-dev@lists.ozlabs.org>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, Jesper Dangaard Brouer
	<brouer@redhat.com>, "David S. Miller" <davem@davemloft.net>
Subject: RE: Bogus struct page layout on 32-bit
Thread-Topic: Bogus struct page layout on 32-bit
Thread-Index: AQHXLbNopyewSd0HZEaZbqB5fscTXqqtw2Cg
Date: Sat, 10 Apr 2021 14:17:04 +0000
Message-ID: <b9d5b09eaec44334b29241e16b8605d5@AcuMS.aculab.com>
References: <20210409185105.188284-3-willy@infradead.org>
 <202104100656.N7EVvkNZ-lkp@intel.com>
 <20210410024313.GX2531743@casper.infradead.org>
In-Reply-To: <20210410024313.GX2531743@casper.infradead.org>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: david.laight@aculab.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of david.laight@aculab.com designates 185.58.85.151 as
 permitted sender) smtp.mailfrom=david.laight@aculab.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=aculab.com
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

From: Matthew Wilcox
> Sent: 10 April 2021 03:43
> On Sat, Apr 10, 2021 at 06:45:35AM +0800, kernel test robot wrote:
> > >> include/linux/mm_types.h:274:1: error: static_assert failed due to requirement
> '__builtin_offsetof(struct page, lru) == __builtin_offsetof(struct folio, lru)' "offsetof(struct page,
> lru) == offsetof(struct folio, lru)"
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
> 
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

I'm betting it will use byte accesses.
Checked - it does seem to use 4-byte accesses.
(godbolt is rather short of 32 bit compilers...)

> 
> We could also do:
> 
> +                       dma_addr_t dma_addr __packed __aligned(sizeof(void *));

I wonder if __aligned(n) should be defined as
	__attribute__((packed,aligned(n))
I don't think you ever want the 'unpacked' variant.

But explicitly reducing the alignment of single member is much
better than the habit of marking the structure 'packed'.

(Never mind the habit of adding __packed 'because we don't want
the compiler to add random padding.)

> 
> and I see pahole, at least sees this correctly:
> 
>                 struct {
>                         long unsigned int _page_pool_pad; /*     4     4 */
>                         dma_addr_t dma_addr __attribute__((__aligned__(4))); /*     8     8 */
>                 } __attribute__((__packed__)) __attribute__((__aligned__(4)));

Is the attribute on the struct an artifact of pahole?
It should just have an alignment of 4 without anything special.

> 
> This presumably affects any 32-bit architecture with a 64-bit phys_addr_t
> / dma_addr_t.  Advice, please?

Only those where a 64-bit value is 64-bit aligned.
So that excludes x86 (which can have 64-bit dma) but includes sparc32
(which probably doesn't).

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/b9d5b09eaec44334b29241e16b8605d5%40AcuMS.aculab.com.
