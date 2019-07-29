Return-Path: <clang-built-linux+bncBDTI55WH24IRB3P57LUQKGQEGK6JCMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F7D77889E
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jul 2019 11:39:58 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id i70sf46376852ybg.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jul 2019 02:39:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564393197; cv=pass;
        d=google.com; s=arc-20160816;
        b=kuyBUMhlYiSSZAOv08DZS1iRl5JDJhwaK+jk2koWPkaA05b2GCHiRObolgrpCO0fC0
         NHn6lKXXetkr8jpCYpUYsb7Pi6cXd1EIe/BDtdLE1vdvVWDeidvjbYr1QJEBOfm1gy2v
         rFs2pQ2WkGc2YRVf1+Fi8B6LwjD3Iw40xjMvYzkwPkCJtbkBzOQrv5BV6mJBvmV+tr/L
         s+EhWznYOd/A9qX1M9RIx/lfNNreuDZIayHG6TqG4oPHOHJll8cwOW5SWpeZNQcF9QLH
         J84YROfbhk1mrFRM+GfXyOP/yuxQ3X9mLZ5LzXEiN09eKXZRjWwc3XPYtniq5zkDBzLZ
         qu+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=gLRv70lgNK9OJ1bYBlSaTQ0m8UhocYp6g6A8P6C1kAI=;
        b=Lr0D+wtNt9dF1EkEmhXuysOupUDwE6BBGPG//eYdXhRRM6iBqJmc7homLtJI5pjR2q
         4SWo6bkVOAqGNumZD2Ctx3y/woch0e1puThADR72IzFRj11BvUhFuYg24yKayIQE8bId
         o/XXGAnae/I8LD9Ds7x2LWSLT/oz0OqDGFB3HBHIm+wykv7Y2nDoVWZvq1fV7UecMi3e
         WiU4BZWAMLnp6iZwKLJuxHiwzqn0xHT3v7P8Rmh+d17QPtzf7DX6CyOuNtgDISQcE82i
         nktYbVueRhbfCH92uiBNkfzQshqMLPWZkIMxHfFDo5IXaJPgeDD8VDRY0tcugNNYKLJn
         UlHA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="A4v2BH/x";
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gLRv70lgNK9OJ1bYBlSaTQ0m8UhocYp6g6A8P6C1kAI=;
        b=B17HFGMyRdMCaIno3xvwGXS8beJKrWLDv7wfB/rILJz3acDbmhJ9JaE5yp4i12xL1X
         CGyP2tqbuWeoUo7Khj1ouUzIeUxsj09rfSI1nBl12/FR3Bd982nZmij2C38lVhnRBR18
         GoLMn9Y5Rz8A1zpzYKko9CKktfT95DhKXU2LxbNftLvMxmh4jX7Ag3Ausz+tlRiZWnQx
         TQIDavNb4I4lyWgkJ28J8XnU1Sb2t7UYRxDvoH0Zqw7L+eVGPQx4iloF4Y1eLyOJxG68
         Sedc2cfRGC6LCP8/PLod2Ic3YvA9s5n+SM2THYF2MJdm8nxD4FUH9/hbeou5pjYIFrTQ
         OQiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gLRv70lgNK9OJ1bYBlSaTQ0m8UhocYp6g6A8P6C1kAI=;
        b=edxVUHTFJXtTcT8ThY42AiT1rZPsPBTmSTiqCb8ZuAhk/NjbblHGMfu9TbswO6xITy
         XLP6TfZmCb7AF8tD0qVqjRGsegKhHm5HzFN/PL4tULLxxQIzswhmCIvWLhzFL7LOMH80
         2uVp9UUkIZT4ZQduBkXGVsm7AR/bq8p2ac/AcgjvXcG5CbQlW8sgTLBm7dbJW8gA1NEK
         B0wL52ikfXi5DC0drKtyIZPF+I+QzGiaJcqr76R1jkAcJABzmNbaF15kyaxaIx5JH/ln
         zg4PBGUesW/6s0MuVRk2qhHbux89BA5gP60rtPw8kmvCVb9nyM5mOOEU15/hqHH96wC1
         Nj5g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW0DWKACZ96l8UpQ8GH7T4ySDFJ0hso7myQVVRiw3tOn9tdbfNE
	xcaPhbeOq8NvTndM5DhpX04=
X-Google-Smtp-Source: APXvYqxY35B+6Mccl6r+PGqRJz/I4CKZ43K+y/Fb+gKV7x0LrlN61zyZnyHc97tHu/jO43eZyfuVrA==
X-Received: by 2002:a81:6ad4:: with SMTP id f203mr65573400ywc.196.1564393197140;
        Mon, 29 Jul 2019 02:39:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:f3c2:: with SMTP id c185ls9506120ywf.7.gmail; Mon, 29
 Jul 2019 02:39:56 -0700 (PDT)
X-Received: by 2002:a0d:ec12:: with SMTP id v18mr65322115ywe.458.1564393196923;
        Mon, 29 Jul 2019 02:39:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564393196; cv=none;
        d=google.com; s=arc-20160816;
        b=carVXJO4jNgvtVHKOHN+5g17sG5ZNz4sVYUW1GNn/WvCzjOED7EOq+d1I0p2Jscrat
         DtZO/T4Ou50AK4/jCD/vBmwmufvS9PhERBbQ3ui46dN4SLIohj3VA+ml6UeDbnwWxF5j
         D4wUlKJIUozF3JYv8cIvYg9Irv1fcdVlI7wMEZddaLS1gkBQRR9w5NwpLfrXVjNBdxoD
         +UCV7/iAoXwMyoOgsZZ7zbI6gx81nzlPhiBp79QkRCQqW1RdQ/R88JTkawonyzNz71YS
         0eMjCDiKyJQV87gG7cZ9kK1h0Y+wb9pHPbr6TtlcXogNoRQ9dX1Wbrt0tUg6Da1TbfGb
         OStA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=OvGgGY+dgwLXgEKVa2h6PzusTMe05KI1PVF/woNjrhk=;
        b=TmEXhyZmY+Elnfd8PD+IJcQc/hcCmWne5dbJ+Qmv+TWIJa3DM0tS5n4iBnp8NQcV5k
         KFYC/xokQ/jt7xfxHPeP4tj4F7DHofaALXBvCsoFu4zlUTbIAOz1FR+eEr4AVbIlXoJc
         Bd02kV4dATrLUoXYxoUsXCxHJZBid7mDwCHPy3W1e6oduWfTmZYHMo8mXCQE4CWxiqPb
         wlaqXRyzAADo70zrIksm0zZBVvkqYqjAJlLAy6b+cbg8E5Zisztwx6U3iyuGhIQUWt0d
         qubyNKzs0OBWt4zlOmxZH1TAuqRGjgFgjoL1Wi13yTygytNHbQVCHUyW45wDNmV1fYDY
         E+8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="A4v2BH/x";
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
Received: from conssluserg-01.nifty.com (conssluserg-01.nifty.com. [210.131.2.80])
        by gmr-mx.google.com with ESMTPS id b74si2453859yba.4.2019.07.29.02.39.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Jul 2019 02:39:56 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.80 as permitted sender) client-ip=210.131.2.80;
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com [209.85.221.179]) (authenticated)
	by conssluserg-01.nifty.com with ESMTP id x6T9dZdQ020201
	for <clang-built-linux@googlegroups.com>; Mon, 29 Jul 2019 18:39:36 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com x6T9dZdQ020201
X-Nifty-SrcIP: [209.85.221.179]
Received: by mail-vk1-f179.google.com with SMTP id u64so11833195vku.8
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jul 2019 02:39:36 -0700 (PDT)
X-Received: by 2002:a1f:a34c:: with SMTP id m73mr27418063vke.74.1564393175172;
 Mon, 29 Jul 2019 02:39:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190729091517.5334-1-yamada.masahiro@socionext.com>
In-Reply-To: <20190729091517.5334-1-yamada.masahiro@socionext.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Mon, 29 Jul 2019 18:38:59 +0900
X-Gmail-Original-Message-ID: <CAK7LNASjXdMJG5OVz4qhyGHHLGd0uZO9ifH_iqkUqYxKD+Xn2g@mail.gmail.com>
Message-ID: <CAK7LNASjXdMJG5OVz4qhyGHHLGd0uZO9ifH_iqkUqYxKD+Xn2g@mail.gmail.com>
Subject: Re: [PATCH] kbuild: initialize CLANG_FLAGS correctly in the top Makefile
To: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>
Cc: Stephen Boyd <swboyd@chromium.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        stable <stable@vger.kernel.org>,
        Michal Marek <michal.lkml@markovi.net>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: yamada.masahiro@socionext.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b="A4v2BH/x";
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com
 does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
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

On Mon, Jul 29, 2019 at 6:16 PM Masahiro Yamada
<yamada.masahiro@socionext.com> wrote:
>
> CLANG_FLAGS is initialized by the following line:
>
>   CLANG_FLAGS     := --target=$(notdir $(CROSS_COMPILE:%-=%))
>
> ..., which is run only when CROSS_COMPILE is set.
>
> Some build targets (bindeb-pkg etc.) recurse to the top Makefile.
>
> When you build the kernel with Clang but without CROSS_COMPILE,
> the same compiler flags such as -no-integrated-as are accumulated
> into CLANG_FLAGS.
>
> If you run 'make CC=clang' and then 'make CC=clang bindeb-pkg',
> Kbuild will recompile everything needlessly due to the build command
> change.
>
> Fix this by correctly initializing CLANG_FLAGS.
>
> Fixes: 238bcbc4e07f ("kbuild: consolidate Clang compiler flags")
> Cc: <stable@vger.kernel.org> # v4.20+

This should be v5.0+

> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> ---


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNASjXdMJG5OVz4qhyGHHLGd0uZO9ifH_iqkUqYxKD%2BXn2g%40mail.gmail.com.
