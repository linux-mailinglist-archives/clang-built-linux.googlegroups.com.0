Return-Path: <clang-built-linux+bncBAABBSPQY6BQMGQEPRL3GMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id B072C35B004
	for <lists+clang-built-linux@lfdr.de>; Sat, 10 Apr 2021 21:11:06 +0200 (CEST)
Received: by mail-oi1-x23f.google.com with SMTP id 17-20020aca12110000b0290117886f0d20sf1116325ois.15
        for <lists+clang-built-linux@lfdr.de>; Sat, 10 Apr 2021 12:11:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618081865; cv=pass;
        d=google.com; s=arc-20160816;
        b=q3tfB4MWKVRvMWtFQO37RnRMcKlZxZZy9HyTFFEyCyusVqlYf0AAD6aH6NYIfoA5Zk
         JZqVXUHtqSoCPdgHOuyGgAYCxNREiML6KShzs8/eqvOWxvTHuQB0fGGA5Qrv/u9aVCSk
         xo7xC69XPySAhgfixqkEmqIIDdXKUqCOHX//3WZCNk07QcHY4O2jBwDEU7tq0RHBfCxt
         ArX/gyYxC2qHBv0tY/QHzwU3uxs7FA+8t8iu8n4cJxfpXIgkyuxuHfa0cvFbgUrxqHRn
         aSCzAWwOckABvRLR1vaPIFOrm6UEuqLE7gOnbfiQYwyXrWqeAQAke438f427v11hDhnt
         NUxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=37WLRAm6hs4c/bR8Zbo2fy3DpmkJ3LF8y9+o/cR0Gkk=;
        b=yjsYxxj+ljWBBnnHpPUc7wG7dQChjtPXj/X2WU+GhLLzhaQKbsIATA4x6d04oW7utr
         Aq89512IaZOGXko7V7EMrQSMJvSCDkZ5+JWABTyiWai6tR9R74kk12i+P7sP8Jtp6drI
         W/DtSZQd8FQavLKIJ4/v2AganrCGbAeCJ0cEtnY9znSkKbPqreijuD/eLVPWxr9xvOaM
         2RM+RMmV0PHtx+IIvprfvcuMkOldkJo+dqubDWX0RX8mTFkv+9Of6kvNOIlWknEq3gxO
         oBv8JZHFJNZKwvH9lcCRv+dJ5iI3BFWO2QBkMZReL38AKaCdu+w6Bl7/qBVse9hkRknB
         LY3w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=CIhhz328;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=37WLRAm6hs4c/bR8Zbo2fy3DpmkJ3LF8y9+o/cR0Gkk=;
        b=Rp3KGCl+B+PlYFu5eoTElJljHxqoe0A0AjyuUZzZDBlBwce56nh3ntVxP9XT1ioNQV
         IQkocpVg5STM2kAcDiRmU26QItrzlFyRz/FCo6RPLTKVsIqJ7gvaBkXgBvS0htLhZUE4
         6/AFKq8A9TRUZyXKZJkYF/OtvhHpRoZZGcn5oJLOjRnJ+ttC0vDQQnWeIubYnZZVnKc2
         OB56UXbX9grlm4Tfq12sNQ/z6imCx0ZZRlzKAZ+zYbYtMHLInJWOmgKa1nttrodsHjO6
         9rdT+rCnI3cYeot83UZeZPxBqPG8Mlci2wNlEjDk/stHWBpkzLtgmJUx1/PiGTSeWktm
         Fu9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=37WLRAm6hs4c/bR8Zbo2fy3DpmkJ3LF8y9+o/cR0Gkk=;
        b=nVsjGlUHji7AkFPHO7Un04xnBegF3iUHtV0ISSAQeJAkFqikn/HulPO61Ny81yBsN1
         1aA3sgB4DP1OlwyA7nD4+QP1SNjRhWlM7trKprfgA8h3qWhJwbinqDnS7rEgWEcWERi4
         SbHGu5wYYDIfagf/BHNdCPbKqCieFiHhgrjF/4b3eBEEuxNWU97vmTtIncsFU8Hw4xfA
         xQ3rNr1/pbRI51m9KfR4fo7qwumI5a03Yl/Cjr9nDAiM12OUZls1urHQREEWUxeyoxF5
         jYWkU6g/k60xYJAHPgP5Vs3KWWO49Z0y2yuaYjjh02ifWsQ9QS0kIkW/fh5QuntnfBH9
         Fbeg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5308vucatEIgWXzMe+6FbdSeCI/toWHElELgeUB+hZpoqNd+nIX+
	bp/KSR7qnsoxI6YIw4PM8vs=
X-Google-Smtp-Source: ABdhPJy2AdQazzWLuTX9dxg5of5btq8Rpg2VDPaGpdoxSKjW0kxBkDeaumyx6HeF61TX3/c6zsp8Lg==
X-Received: by 2002:a9d:6b13:: with SMTP id g19mr17146087otp.185.1618081865268;
        Sat, 10 Apr 2021 12:11:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:578a:: with SMTP id q10ls3064506oth.7.gmail; Sat, 10 Apr
 2021 12:11:05 -0700 (PDT)
X-Received: by 2002:a9d:5c9:: with SMTP id 67mr16894235otd.28.1618081864942;
        Sat, 10 Apr 2021 12:11:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618081864; cv=none;
        d=google.com; s=arc-20160816;
        b=s6u7dYzAA6ZKbIu4YjBgsGzixILRFK51VfQyxPmvYr/+ZZQQbxARZbWa1GOjJfiVxu
         ZN43yM9o1A3D2RAXnJIyUogfIoFWdtzNys7XVHS2TGHsA7eoZhlloWCccdhJTGEHxDge
         cgUwqxL7mpvbpgYayvG1h4fXupMTtMYUS9+beeO+yaBMX6uQ0jWsUpbRme5ez22u46ci
         uAI5B552dSklaJOIkLme2bzrdERClkGDgK7BzWWvrG6CUe8RbEfnwLfpZbpzrrZFXrGn
         MBg4Ys+CCk07+JeRrFUGKpI0UtOlKyz3pb/8SKGZ2B9TkIPDhZiBhfjFMIYyiKMFvrZt
         z1xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=fqNinNAhhPaTU2cij2p+HaHNg/J69IJOBSNDmdxs+TY=;
        b=UuBXKj8gi81LKT+qDnRVGvTlwLPlxR11cIxDphqEQnMJUshtUsHIw676u9rs3KsxMy
         RLhEBXtASmvfMcs6so2x+nz0pN6XMSORqH9E/hpcY8USXuXCN5RzkzBunnQXtpuDfvGZ
         9tgqFm2RN2OH0BRjPcfAdPfRCTIcFoLCEPO0rWIflV+kThcNqPwoBQ5ALqnTSXqK07WY
         W51JUGTz+sDXWvmw+DKI7dsI/HlSp9tsUWwi7w6FKfFRIb7THvo1foyMP7LZs7VZTRb6
         0qpUfw5/ujMu2w0L0GeIylwd/huhfCtTqoUD/cFTfYfOWe8y5M/Y1iD9QBc4yTITy0DI
         o+tA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=CIhhz328;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v12si465123otj.0.2021.04.10.12.11.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Apr 2021 12:11:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id B8FFD61178
	for <clang-built-linux@googlegroups.com>; Sat, 10 Apr 2021 19:11:03 +0000 (UTC)
Received: by mail-ot1-f42.google.com with SMTP id s11-20020a056830124bb029021bb3524ebeso9017707otp.0
        for <clang-built-linux@googlegroups.com>; Sat, 10 Apr 2021 12:11:03 -0700 (PDT)
X-Received: by 2002:a05:6830:148c:: with SMTP id s12mr17843523otq.251.1618081863076;
 Sat, 10 Apr 2021 12:11:03 -0700 (PDT)
MIME-Version: 1.0
References: <20210409185105.188284-3-willy@infradead.org> <202104100656.N7EVvkNZ-lkp@intel.com>
 <20210410024313.GX2531743@casper.infradead.org>
In-Reply-To: <20210410024313.GX2531743@casper.infradead.org>
From: Arnd Bergmann <arnd@kernel.org>
Date: Sat, 10 Apr 2021 21:10:47 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3uEGaEN-p06vFP+jwbFt3P=Bx4=aRN+kUyB4PcFPxLRg@mail.gmail.com>
Message-ID: <CAK8P3a3uEGaEN-p06vFP+jwbFt3P=Bx4=aRN+kUyB4PcFPxLRg@mail.gmail.com>
Subject: Re: Bogus struct page layout on 32-bit
To: Matthew Wilcox <willy@infradead.org>
Cc: kernel test robot <lkp@intel.com>, Linux-MM <linux-mm@kvack.org>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Linux FS-devel Mailing List <linux-fsdevel@vger.kernel.org>, Michael Ellerman <mpe@ellerman.id.au>, 
	Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, 
	linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Jesper Dangaard Brouer <brouer@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=CIhhz328;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Sat, Apr 10, 2021 at 4:44 AM Matthew Wilcox <willy@infradead.org> wrote:
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

I've tried out what gcc would make of this:  https://godbolt.org/z/aTEbxxbG3

struct page {
    short a;
    struct {
        short b;
        long long c __attribute__((packed, aligned(2)));
    } __attribute__((packed));
} __attribute__((aligned(8)));

In this structure, 'c' is clearly aligned to eight bytes, and gcc does
realize that
it is safe to use the 'ldrd' instruction for 32-bit arm, which is forbidden on
struct members with less than 4 byte alignment. However, it also complains
that passing a pointer to 'c' into a function that expects a 'long long' is not
allowed because alignof(c) is only '2' here.

(I used 'short' here because I having a 64-bit member misaligned by four
bytes wouldn't make a difference to the instructions on Arm, or any other
32-bit architecture I can think of, regardless of the ABI requirements).

      Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a3uEGaEN-p06vFP%2BjwbFt3P%3DBx4%3DaRN%2BkUyB4PcFPxLRg%40mail.gmail.com.
