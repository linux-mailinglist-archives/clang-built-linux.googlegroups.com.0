Return-Path: <clang-built-linux+bncBCM2HQW3QYHRB6FBYSBQMGQE26Q7WWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x339.google.com (mail-wm1-x339.google.com [IPv6:2a00:1450:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id BEB6E35AA55
	for <lists+clang-built-linux@lfdr.de>; Sat, 10 Apr 2021 04:44:08 +0200 (CEST)
Received: by mail-wm1-x339.google.com with SMTP id v65-20020a1cde440000b029012853a35ee7sf49523wmg.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Apr 2021 19:44:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618022648; cv=pass;
        d=google.com; s=arc-20160816;
        b=kEbqBGlBPQpuLw9f9b0jMZLwIX4iPt401PzHCNdJggb+ANHET5wgJppwj4nkX20Ido
         xkDERQc12p4XaWjwmTNK/OrCQdd3LqN6WdQtiSrAhE9Iz3cr5rIppCxjbDbyGf7ZBHzO
         F/b6Fw5JBYwKeRDw/oJQ+dSF6DhpIqIdMybm4XpU1VTqMblcMCQbsP9vrM03F3DzyktL
         3f5pgu+zFSLmU3C5smUJmz6mutQsyFBrjaWaZc+2FnnIOIex2isYt/T7ivxTFTHuFoxV
         hQDXrU2/oYP7nxgyXElC/Br0JdxgSDUvN15rv0UYrDJsASzVnNHcDiHci6Kwu8jF0aKb
         6EGA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Ksoc4v8ZLNUUKZxOf9awFxOxtCsu4j3xGuWybSE8CDo=;
        b=Hn1A8NRpizqeU8YSidPdoPLP4VdQtoOGXT4PKNzv4Bpu13dPWsLZDoa2JfPm3JyOWv
         em1IVFpxIAz8N2IdK8RpCiZfaZ2iOBoVYRLmYFGrngSBc4D/DtUkjfKifypKSWXdDXKK
         Gn5KPdILaLhx9vbK9rw4tA/G8kjPzLtNsnSF70JOfj4PpWfjMCLZoquBJXa7ECAMub7Q
         19Pfo2MH1K3ayQZm3KSE0QEWuBGxFi5gfS2BY+2G5MkwcYewheL3zkCWEWU3cBw6AlCk
         znUI9LjgtGamW6EvUOWglpELcf6Z+b7sMb7fwd3pdWAOBWUB0KuOhbGWBKr8VfbcVs0G
         Qtuw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=Exz1xebH;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ksoc4v8ZLNUUKZxOf9awFxOxtCsu4j3xGuWybSE8CDo=;
        b=mSWbV5DG4CxYEjGuZZzNaT4sJRqqqFo2qsm5E8CornCupFHM5qHAVhB8RCTTx8f5/3
         ObkokoghMcuzLVMYNAeoU4+TdyUJMAwlrtFIfZhm/kXov6gMruPCWf2BMhXcY07wi59s
         aILVWE0+j+pP2VxzPdB+BABIbLuFZOhPhfcfN0BDGEbY1TGViExm3ShQYrV6PI4iBTIC
         lk8babcWsaB9OpTb99obZta8rJ7Hf1cdq9NrQh1xvTgMI2EhW61uKuzfgi14iVUdBjq+
         72J6KO28JNlzXKLPG8u+CGmN36pPX0YmA1dbfWu9Gq+G7xseaQR0ndEhVlzqDopFcInu
         BqSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Ksoc4v8ZLNUUKZxOf9awFxOxtCsu4j3xGuWybSE8CDo=;
        b=eAvlK6sDvMXlNzJysmPgs4SajvGW128Uszf7h6WkjR6ayIFVY3HkJKeuAdnjle0g92
         WKsQqVTBTDHL7ibRlJMqv5E7uWZEY+gXKGSS+KCvcEC3L+TxIJtHYNCH7FxYzCCuVNwn
         r1f9k1LHfb42eVXZ4HO83GqbkET5EAhft1yOdYAQmSSnvBLgygumcGNR5CCyMU0mKuQz
         jSDwmjv9nz0NbuYBQBNmaAL6uyalWWovHTlTs+nklBxaYZcq/c56At3rxrCqmVkiLT1T
         VUGufZuD4towJ7iC4OAdQTcHnCYYPzRaH/9YbvlIR+tpKyaZ3A/xASVIPHgtHQ7QchrG
         nytw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53327v/NkaNJRlaZ4ehH3mLEqY8+eTRrQzcIMEh3+LTDIFa25lkm
	fNKL3UL50RzWgbNgdSRrSWQ=
X-Google-Smtp-Source: ABdhPJxnDuvTrZlxqIQ3lGLtLW1iku/+5Pa68FJlXoSfoAeYkp1HSusf9gd4slMuaQmJNHUHQKmsDA==
X-Received: by 2002:a1c:6489:: with SMTP id y131mr3359859wmb.0.1618022648353;
        Fri, 09 Apr 2021 19:44:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:d1c8:: with SMTP id b8ls78065wrd.3.gmail; Fri, 09 Apr
 2021 19:44:07 -0700 (PDT)
X-Received: by 2002:adf:efca:: with SMTP id i10mr11747764wrp.362.1618022647516;
        Fri, 09 Apr 2021 19:44:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618022647; cv=none;
        d=google.com; s=arc-20160816;
        b=yimEz8unwv12ZJhbc/8vh65F2tX5e51sU0PSKaBxOFSv28vJT+svb9d8NM8bSdprsk
         a3FW0uiN0wm0JfU6Xwm5G+QqnAhaK8/4LctRrdI7j2LytvzG3Q86FDMUX8Pvzk2+KKxR
         jBXTiP5Vbu/H5swStEPW4iweCa9UUuY66QB4xrc2rpPjMaBc1x4xU49jZS1xX1Hh+3Iz
         8BOHVI69kwu/FEquEHJOzYxRlGD1PX3q1XMcTqegUxXCZ6sliWB9XIZTzv+S81/wg2w4
         Y5Ekt3dXXiUqmTNQhBocO8noStZXhgZgJb49+Lt94Chz3e9RVnTcdCT8jBS5fKf+H0Nb
         6fHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=kSBfGQGdldHOGZqey2pG91Lm4sBchHdpUdkbO6By1YI=;
        b=H44L/fI+Rsds8daq9pMWp6ZCPTPymK5lg5fZ2ugyK3LAEumCE19aU2hhTMnhfibge/
         E6ks2EiqxEWsFNIjRju2GvuhyKEPnAmaYeYG5Gxq7jm11jaaTW80sUgLhPxpMJOT0a7P
         G8/zAUlHWr3SbuuxPA+0tE1Njc0v/SE3tzRv8gt/aEj1FgN4XgMtaxTyM5dpgf42Vdpu
         fOy9ar1XMMCoC7xWz8gi6ss2Zk9Kxk/BUNcN/gsw3SwaOoCduIivT6Uu+adeepWO++Cl
         ZS/Pe0CKPRkkjESy1Ss/3DmDgdzL12qvHPSIBFStaDCNROftZ+AdsKLaUggNYxfFMGBj
         KwbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=Exz1xebH;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id a4si327629wme.1.2021.04.09.19.44.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Apr 2021 19:44:07 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat Linux))
	id 1lV3ab-001Esh-RM; Sat, 10 Apr 2021 02:43:27 +0000
Date: Sat, 10 Apr 2021 03:43:13 +0100
From: Matthew Wilcox <willy@infradead.org>
To: kernel test robot <lkp@intel.com>
Cc: linux-mm@kvack.org, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
	linux-fsdevel@vger.kernel.org,
	Michael Ellerman <mpe@ellerman.id.au>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>, linuxppc-dev@lists.ozlabs.org,
	linux-arm-kernel@lists.infradead.org,
	Jesper Dangaard Brouer <brouer@redhat.com>,
	"David S. Miller" <davem@davemloft.net>
Subject: Bogus struct page layout on 32-bit
Message-ID: <20210410024313.GX2531743@casper.infradead.org>
References: <20210409185105.188284-3-willy@infradead.org>
 <202104100656.N7EVvkNZ-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202104100656.N7EVvkNZ-lkp@intel.com>
X-Original-Sender: willy@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=Exz1xebH;
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

On Sat, Apr 10, 2021 at 06:45:35AM +0800, kernel test robot wrote:
> >> include/linux/mm_types.h:274:1: error: static_assert failed due to requirement '__builtin_offsetof(struct page, lru) == __builtin_offsetof(struct folio, lru)' "offsetof(struct page, lru) == offsetof(struct folio, lru)"
>    FOLIO_MATCH(lru, lru);
>    include/linux/mm_types.h:272:2: note: expanded from macro 'FOLIO_MATCH'
>            static_assert(offsetof(struct page, pg) == offsetof(struct folio, fl))

Well, this is interesting.  pahole reports:

struct page {
        long unsigned int          flags;                /*     0     4 */
        /* XXX 4 bytes hole, try to pack */
        union {
                struct {
                        struct list_head lru;            /*     8     8 */
...
struct folio {
        union {
                struct {
                        long unsigned int flags;         /*     0     4 */
                        struct list_head lru;            /*     4     8 */

so this assert has absolutely done its job.

But why has this assert triggered?  Why is struct page layout not what
we thought it was?  Turns out it's the dma_addr added in 2019 by commit
c25fff7171be ("mm: add dma_addr_t to struct page").  On this particular
config, it's 64-bit, and ppc32 requires alignment to 64-bit.  So
the whole union gets moved out by 4 bytes.

Unfortunately, we can't just fix this by putting an 'unsigned long pad'
in front of it.  It still aligns the entire union to 8 bytes, and then
it skips another 4 bytes after the pad.

We can fix it like this ...

+++ b/include/linux/mm_types.h
@@ -96,11 +96,12 @@ struct page {
                        unsigned long private;
                };
                struct {        /* page_pool used by netstack */
+                       unsigned long _page_pool_pad;
                        /**
                         * @dma_addr: might require a 64-bit value even on
                         * 32-bit architectures.
                         */
-                       dma_addr_t dma_addr;
+                       dma_addr_t dma_addr __packed;
                };
                struct {        /* slab, slob and slub */
                        union {

but I don't know if GCC is smart enough to realise that dma_addr is now
on an 8 byte boundary and it can use a normal instruction to access it,
or whether it'll do something daft like use byte loads to access it.

We could also do:

+                       dma_addr_t dma_addr __packed __aligned(sizeof(void *));

and I see pahole, at least sees this correctly:

                struct {
                        long unsigned int _page_pool_pad; /*     4     4 */
                        dma_addr_t dma_addr __attribute__((__aligned__(4))); /*     8     8 */
                } __attribute__((__packed__)) __attribute__((__aligned__(4)));  

This presumably affects any 32-bit architecture with a 64-bit phys_addr_t
/ dma_addr_t.  Advice, please?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210410024313.GX2531743%40casper.infradead.org.
