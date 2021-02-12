Return-Path: <clang-built-linux+bncBDYJPJO25UGBBVEXTSAQMGQESMSKHJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53e.google.com (mail-ed1-x53e.google.com [IPv6:2a00:1450:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id C40F231A833
	for <lists+clang-built-linux@lfdr.de>; Sat, 13 Feb 2021 00:14:28 +0100 (CET)
Received: by mail-ed1-x53e.google.com with SMTP id y6sf1102502edc.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Feb 2021 15:14:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613171668; cv=pass;
        d=google.com; s=arc-20160816;
        b=FOruBQP0t9b2QF9ADohxDxx2IVdJRLjkRTm0JGR9GalnH2aOP87M74WjFlp36t4Xey
         U2UCohdc+4YFciUMbacCE9+IcL0irdKIVVHvkMAib+4tofrcFeK+GSTDTE+gWKpDFXOn
         Ax9M38pvhkexaFgRxU1+scxb1aBn/SzD93s7ccHxKZS33wOcoIZdLjsFEtqmjEL0Xs0G
         4DFoW5UYqDREcVZ5h+zesuXt2+P6EONe7wL+24ArJmuciRaYFoW009y3xkT/lyZCBMPW
         i1KHy+oxRC319dJoZ2ugGHqxbjatoxpBod5udsjHi+1urt/S/mhVVzxoBKIFNG8DjYhj
         rWag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=4CwDAMC9w9x+DDwoiVm8NfbxIjslZk4cmyLDUBmMI34=;
        b=VAhEJv0ouDhaSt03dpcWUKu7dyt4g6hN4wx/JFXK7Np2hb+DoAfwY9sqTj0AXTkgZs
         KZ7d5x5DUR3/dagIhFURceoE6PXno2lS0c4Vp8gKV+DLSi2Eg4UGwob17xAxEh5LNxdc
         PCHrS1Rvy/7UHWs2Rpwp7l0UGAOEBJPRnqsgd0Mn6BQSugFzJa4OyWqDtDBef5ET9KuW
         pkrln6v33sfWNQukmuGTm82FTE10fz3EDZj9ZuehKXzH0BeeoV457Xd4xeiIGk6PyGcK
         sw9Pv9LaSTP4mMpwxTMBZqZLFoVD6x5Cc0ypVJRgW2rqEqGUG4Esq4fJA4O+knT6Btc7
         x3NA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="d0uJRCz/";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4CwDAMC9w9x+DDwoiVm8NfbxIjslZk4cmyLDUBmMI34=;
        b=Q04jwHb0WrgkshHsIYkGiCs+/79FyeGvO49/6RMA1ED23JIWbdWKbcbKedDRvpfTFW
         k+pe5Uf56cV+BbsQgbFJ0RUkZfqyW3jfYvZiOHcV4PZnzZ/K981U9rsOb8KZkbpJeuca
         BebSooNgpsglYG9S9D8VmUEgmkdhA6ejXEOMWEMh32SUSZjaS3Nrb7/BG4EUK7v7uUwf
         iu0K+ZvohEhAtbAXK/jV8dLNzQ0U+eOahBEWvaQg8uNwN8rCyUwzLK9BRBPWd6LjdUTR
         mQIuQ18++wPL5ls0GtDflGLptfOugFh3IHqT5pcZY3Q7JE7Wxvz/HisEzsspNx0/QLlh
         FxNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4CwDAMC9w9x+DDwoiVm8NfbxIjslZk4cmyLDUBmMI34=;
        b=qcn0kbqQvaDiPWkA1sayd3ZUh6MAvs5XMYw+DVrW4YKBiHAcVdA/8V9+97u0GRDyaT
         8+WwqSbF6xj/byurjTZmhl5DAI0+DWdaM8KJiz8BJ14TvjtGgPmQoZHL8mlIDzwaaA3Z
         ryw9KkrH6UsHdd3Du2i/i3AkLUAyVjNZg/mBaXu8jVnNO4Bxktdqe85W50GOqJK0DKD4
         0hMdP/BGty9dP0/Udew3q2HuATzg3QrJPuZwUAvv8uiWrvwYspgaj7bbZr5t9KvNZMu1
         6eUPgidI1b5pfwo6LN//UbzA84srH0V/FySkl7Dy1oPPs6LBTwhNpRqHNcJp4/+EgPkF
         NZ/w==
X-Gm-Message-State: AOAM532lsOeMtr9KUZpQUwobJHzJHgETC26FGJcRW4qJq/o0XcqELb2I
	JZJ6C+zFtdpsQrzI5yxb8gE=
X-Google-Smtp-Source: ABdhPJw1lceI+OaNHfWBhMIcoLQRqObo1OubL/gTXUdaMiu3pkx5DaPrvLxt0pcL3voBX8iR4qnd3A==
X-Received: by 2002:a50:ccc1:: with SMTP id b1mr5885106edj.307.1613171668530;
        Fri, 12 Feb 2021 15:14:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:fd14:: with SMTP id i20ls780280eds.2.gmail; Fri, 12 Feb
 2021 15:14:27 -0800 (PST)
X-Received: by 2002:aa7:c685:: with SMTP id n5mr5924627edq.150.1613171667798;
        Fri, 12 Feb 2021 15:14:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613171667; cv=none;
        d=google.com; s=arc-20160816;
        b=KhWRxBHQEQWPPRTgoGtLkxtvH0JTBXQrp4dYuGc1bPWcTT/3a9YvG4lAHpGUVAQYae
         +69XsVNtBQHBZ7XWWi2mdWJz0IDxkYFC8gPjCMgtHupJ5oxo/r64WEqoIDFxAy23xQmn
         vY2DWcwCIHx2FJeQuRXuw4LLbthg49An4rAKIYIE/OOJtyqJn2GKNZdFhF0KyfnTi1Qx
         8OVVSJZKu9PktMwDuYUH4UlUe8RM4OL1aON95wt//u7WQsgfQC1t155yeQxvpavpy0co
         yFlaboKD5z/jkJl6d4k8Hl6JduYqRahfNdq6IKUNqCZG7UgdsLy1Y5it+dVWGPOzbB6x
         6cuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=qrO+Pjy//0+ajgwxZwykErc2u1IBcG+HE2tvS5qms/8=;
        b=KG7mBr8zd+X63pSRyKlY1Mc5FGOztMmefwL8X7Sz18xWJJIhT4OEdiKfct3pHjbrex
         2BhmgWV/LIvTPEDYX4IwHyADGuExtTQjShWdPmvMRAnxZRKK2vJbQJ7HuHcgoXoMnjMF
         3VLTKGKJYR7c9fQYaOv8kOPplijbpX3VjgWUUaNjCeAtNbNNONES6gxdIsKdtvy+3/pl
         MsFgowCUmUxaD5Km3ZovxmRL/qZl42tzfMYsXVdUHsrZcq8ZG90DDEu9873xDMSPCbCU
         2c8nEQv1ymn6iWr9o21PQn0gum5Z2cmeW/rRCcQKVbxAAUl49rds+IDQuQAmCoGcEiKK
         yXMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="d0uJRCz/";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com. [2a00:1450:4864:20::12e])
        by gmr-mx.google.com with ESMTPS id cx3si497663edb.0.2021.02.12.15.14.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Feb 2021 15:14:27 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12e as permitted sender) client-ip=2a00:1450:4864:20::12e;
Received: by mail-lf1-x12e.google.com with SMTP id v30so1785616lfq.6
        for <clang-built-linux@googlegroups.com>; Fri, 12 Feb 2021 15:14:27 -0800 (PST)
X-Received: by 2002:a19:4013:: with SMTP id n19mr2657395lfa.543.1613171667104;
 Fri, 12 Feb 2021 15:14:27 -0800 (PST)
MIME-Version: 1.0
References: <202102130043.4UIBML4o-lkp@intel.com> <20210212230448.GG2766@breakpoint.cc>
In-Reply-To: <20210212230448.GG2766@breakpoint.cc>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 12 Feb 2021 15:14:15 -0800
Message-ID: <CAKwvOd=deoOCJ40BSxQaB-si4Vh9OiqYs79aVoJqAzBSHy1b9g@mail.gmail.com>
Subject: Re: [linux-next:master 5178/10581] net/netfilter/nfnetlink_queue.c:601:36:
 warning: variable 'ctinfo' is uninitialized when used here
To: Florian Westphal <fw@strlen.de>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Memory Management List <linux-mm@kvack.org>, Pablo Neira Ayuso <pablo@netfilter.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="d0uJRCz/";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12e
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Fri, Feb 12, 2021 at 3:04 PM Florian Westphal <fw@strlen.de> wrote:
>
> kernel test robot <lkp@intel.com> wrote:
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > head:   671176b0016c80b3943cb5387312c886aba3308d
> > commit: 83ace77f51175023c3757e2d08a92565f9b1c7f3 [5178/10581] netfilter: ctnetlink: remove get_ct indirection
>
> > >> net/netfilter/nfnetlink_queue.c:601:36: warning: variable 'ctinfo' is uninitialized when used here [-Wuninitialized]
> >            if (ct && nfnl_ct->build(skb, ct, ctinfo, NFQA_CT, NFQA_CT_INFO) < 0)
> >                                              ^~~~~~
> >    net/netfilter/nfnetlink_queue.c:391:2: note: variable 'ctinfo' is declared here
>
> Looks like a false positive.
>
> ctinfo is uninitialized only if ct == NULL.
>
> The config even has "CONFIG_NF_CONNTRACK is no set"
> so ct is always NULL.
>
> Could be "fixed" by adding aother ifdef but it would
> add even more clutter to an huge function.

Can you please just initialize the variable so that the tree can
continue to build free of this warning?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DdeoOCJ40BSxQaB-si4Vh9OiqYs79aVoJqAzBSHy1b9g%40mail.gmail.com.
