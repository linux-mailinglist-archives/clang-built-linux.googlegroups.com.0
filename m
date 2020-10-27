Return-Path: <clang-built-linux+bncBAABB7PH4D6AKGQEFRCE44I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id B79DC29B304
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 15:51:42 +0100 (CET)
Received: by mail-pj1-x1037.google.com with SMTP id 41sf928100pjz.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 07:51:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603810301; cv=pass;
        d=google.com; s=arc-20160816;
        b=DvZ1dRWdl5CUEmGdokNOW2JedM0DnqX9IY06NRP+zUPTkUZOWm1n33oxfPWL0Kr6CM
         OqvE2HJMb/GkJEJlYUXY8mlWBeMxDwyMg3Cr0xNuFtD1pewAwxfDJ8htfR/HWecLHsYP
         vfP/GrTOSmEmseuztB5NM4Ms5wd7uP33qvaV3hBHkPtpszpp2EbPhSZ6d4gFf2+w8UT7
         MzWXfzxpWYVMs5VTE98WxpS7MjlVcwL3jUBC1hmNLktaNupidSbtUuahaQb9ovu7ffJX
         5GBIptms8C6KC1FS8sGcqXmkeA051JJQ0jiy5Fnuw4tzy29df1BOxhElIGgr8LZvy7ln
         V5qA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=Qqc/kKuzVMSSEITDAQc8EBSt4/+is7Q5dl3d3axnxWk=;
        b=nuCbH/muo9TGzjrnviQssZvt2RIntVdJLv1MAbtHp9QShPT3dso098eKctL9Q2MA59
         Gk7mevjjaiTZRNntmDMbBdJps0+aQe0BtFwPEaU0T+OS1my1Qmg1BW0ugLDDEBg16OPQ
         GRn4mOMd1/ZIvoraIh6+QdfzDngYL73Lgo4Sof1CCe9i6G81HfqRujMuJ0tLnCtOUEch
         q+zuLiQU+KoTpRgcAu94mdMErFgOXxoZ6gmZpH3XJAFtn+u4fOqjp9c2EDdvWPe8ZBl7
         SSE40BOerupk3/8s/m834jmbNs1+/ZgEJzT188m9zuEY2bBLyGvQPygVVm27K5fkAPuq
         75Jw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=bhAIQhAH;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Qqc/kKuzVMSSEITDAQc8EBSt4/+is7Q5dl3d3axnxWk=;
        b=GlNhJuIzLy55OppUn1ArRGHRi/nfst5f88zGjq2gHUXtMGBEHNpHRkEDK1e61ZRPrN
         +/ay7cPKzl7PEF4XVgddukMPJ9vPsbKucDrcb41bk+azj6oWW0nR0GPK3kuqW6VUvSrK
         oBt90HLNnANGv1ngqDSUXvLr5E72+qmGfHAvICZCHs4pJabcxWjsDFLEiQbpQ543PAoG
         NZIglqPBkcTym3b/3eFGMpZcAqnHmaiATUSf7CSG6jSyxcJk2u4qrSiXcFgpWumTEdYy
         o0A/hioGuVb92aVuVatBpR4xuVK2DSnkfjFoT61HNzNRj5L3V502I/kDDlcMhH0KoyLZ
         m1PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Qqc/kKuzVMSSEITDAQc8EBSt4/+is7Q5dl3d3axnxWk=;
        b=jonlDKUKhO3kx6wGHb5IN4itgphZ2Rq+a8xrPBJFV1TYqW+CIRQ/E/Sklpeou31wUR
         jy/BUTLJYeiY/ifDjCdw2XeyAONLYdC840LN1XPUOJDI59rK/7maTtxSETf433JRrtUX
         AjtXuW3BLBNwEjlZAVoeZWWAO6jFqRaBVClSh2TlDf8M2s1f0y2AzUfBOnhi468n1k/z
         f+39Eqpv8q1Hadxk3IUji9si3PMSqfKWRDy9TJa5knaHuVUoAaCqM1NkWl6av1Qd71a5
         oblvOGEU6whCm00znFCevhHwKAu71wylrvwhqygPwnVKnRf9dYhj6cVe7jYGaUU4lsco
         +djw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5328PDJa7kFuyT7D5Bwx+DzmiBfE9q6sup+WF6lIM1XGuMQ5KwF1
	aVZljNQhbhGqC6mmGJjfuy8=
X-Google-Smtp-Source: ABdhPJwHNrCPZkgcL0fb0LhpqCeY9Wx+v8+e6lD2A2Yxh67FnWpMGT3/JDcMgCxS6Z08A3aollEslA==
X-Received: by 2002:a17:90a:d489:: with SMTP id s9mr2536651pju.50.1603810301475;
        Tue, 27 Oct 2020 07:51:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:3fc9:: with SMTP id m192ls743357pga.5.gmail; Tue, 27 Oct
 2020 07:51:41 -0700 (PDT)
X-Received: by 2002:a63:7f49:: with SMTP id p9mr2202124pgn.185.1603810301002;
        Tue, 27 Oct 2020 07:51:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603810300; cv=none;
        d=google.com; s=arc-20160816;
        b=QgTdzctN9OVEtU/j0nuBx3ex9XNQ+Ivr2QUAqukx08q/kkUxuX7bbXIZU1Kmu6ysJd
         OCWWW5dz4anKuGEjOh2UJkhfcV/lacRvyiv/+rj5KtI9Dmtw/PxaGppxUUdSVevhg0Sj
         w3c7QG5tkGUzDQCeOoBcvtjaGQeiWRkLP0cZtmnLYV0j9nCwCQVxBn7w9uDi1YmKMH6c
         FiARQTyQihTHyWGm27L248GdlCH4EY3iZT/0cNToOxGXpQA6nWU8gXQv6/CZecN8jixO
         K1MJUeiLo1jat32RjLBx1cRnq3FGjBz7OdUomqxqDtvErrLUOjqBUqTivmqFrOw2XahJ
         cTHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=UAh2fKadhtpSNaQC0FKXkVEgi5gjN0N4kiQ8vAT7W6Q=;
        b=TGsJRh7pDwJAHVinQKzXvGUq+9oHLh18QBO/HffXHtLxzFLtdHIIIzKj+3ayNYvCK/
         bvsU0ShVChkyJaRrFZY46rJ65DtTS5aguJhoodbR8x0UCyuSTR+B3zQq7/yx8iwnWf37
         gNVs6wUAhvYNitpDzGIgdo5nRNABhnqUKRU0HhiZoQ0ygfuULBzVnqa++edqveK5f613
         QfYv2pJMtKXajBsHx155DwdBT40fS55Mzrvi/B6EdizuD14z/4sVsLQRuKzfuHJvJNZE
         ArWT0V8IDGC32ZeUtTStu8eAcpkvU7FX7xnNWKfxygf86UAdN37aP71lHbEn449opf8C
         +g2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=bhAIQhAH;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f189si110745pgc.4.2020.10.27.07.51.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2020 07:51:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 60BF522258
	for <clang-built-linux@googlegroups.com>; Tue, 27 Oct 2020 14:51:40 +0000 (UTC)
Received: by mail-qv1-f50.google.com with SMTP id t20so760058qvv.8
        for <clang-built-linux@googlegroups.com>; Tue, 27 Oct 2020 07:51:40 -0700 (PDT)
X-Received: by 2002:ad4:4203:: with SMTP id k3mr2717093qvp.8.1603810299401;
 Tue, 27 Oct 2020 07:51:39 -0700 (PDT)
MIME-Version: 1.0
References: <20201026215321.3894419-1-arnd@kernel.org> <20201027104450.GA8864@infradead.org>
In-Reply-To: <20201027104450.GA8864@infradead.org>
From: Arnd Bergmann <arnd@kernel.org>
Date: Tue, 27 Oct 2020 15:51:22 +0100
X-Gmail-Original-Message-ID: <CAK8P3a0irGzw8YDdV9HoaaiPOfgzWQ6hxgbC6_dx=4E8vGKXXA@mail.gmail.com>
Message-ID: <CAK8P3a0irGzw8YDdV9HoaaiPOfgzWQ6hxgbC6_dx=4E8vGKXXA@mail.gmail.com>
Subject: Re: [PATCH] seq_file: fix clang warning for NULL pointer arithmetic
To: Christoph Hellwig <hch@infradead.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Tejun Heo <tj@kernel.org>, 
	Alexander Viro <viro@zeniv.linux.org.uk>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Amir Goldstein <amir73il@gmail.com>, Jan Kara <jack@suse.cz>, 
	Andrew Morton <akpm@linux-foundation.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	Linux FS-devel Mailing List <linux-fsdevel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=bhAIQhAH;       spf=pass
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

On Tue, Oct 27, 2020 at 11:45 AM Christoph Hellwig <hch@infradead.org> wrote:
>
> > index f277d023ebcd..b55e6ef4d677 100644
> > --- a/fs/kernfs/file.c
> > +++ b/fs/kernfs/file.c
> > @@ -124,7 +124,7 @@ static void *kernfs_seq_start(struct seq_file *sf, loff_t *ppos)
> >                * The same behavior and code as single_open().  Returns
> >                * !NULL if pos is at the beginning; otherwise, NULL.
> >                */
> > -             return NULL + !*ppos;
> > +             return (void *)(uintptr_t)!*ppos;
>
> Yikes.  This is just horrible, why bnot the completely obvious:
>
>         if (ops->seq_start) {
>                 ...
>                 return next;
>         }
>
>         if (*ppos)
>                 return NULL;
>         return ppos; /* random cookie */

I was trying to not change the behavior, but I guess we can do better
than either the original version mine. Not sure I'd call your version
'obvious' either though, at least it was immediately clear to me that
returning an unrelated pointer here is the right thing to do (it works,
since it is guaranteed to be neither NULL nor an error pointer
and it is never dereferenced, but it's still odd).

I'd rather define something like

#define SEQ_OPEN_SINGLE (void *)1ul

and return that here. I'll send a patch doing that, let me know what
you think.

     Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a0irGzw8YDdV9HoaaiPOfgzWQ6hxgbC6_dx%3D4E8vGKXXA%40mail.gmail.com.
