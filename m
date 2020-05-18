Return-Path: <clang-built-linux+bncBCSJ7B6JQALRB3VDRT3AKGQEXL5N2EI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 29AF91D8B4A
	for <lists+clang-built-linux@lfdr.de>; Tue, 19 May 2020 00:53:36 +0200 (CEST)
Received: by mail-pg1-x53c.google.com with SMTP id l25sf2718385pgn.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 May 2020 15:53:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589842415; cv=pass;
        d=google.com; s=arc-20160816;
        b=0sSxD+3YY/TeOBFrpDFil0QwELt+yAKVlufnaeITUDXA5D9HUbhbL6Yz7REXVH5Zdp
         AL5Awe5P2XT9zKQMb6c7GNWGZyzJVGbvUoVumSE4o88G6PXEtbQ19/s2xb6YuR6FQIRJ
         L22cvglHpD/2ceyOsKNW3bbpG//ilw9Pfyzxz07GX26+5c23a3DZUr0AbGK0SwKMxMbE
         XNVGZ5mlBICjN3vHHUp+CCfUSbdr/p7GcK+JI2R+yCP+wt82R4oIwSuUrcxtXPvSLyDj
         yWo2gIjJYXi2dWfpLIHmkHKArkAQ2JArXtaG7wdzGgpome65j7f0Khc/81Bpha9BICQX
         gs6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=4cEzGMgGLiNDlbgAG+rpvaoD109qFB6nhB+1ID3/PLs=;
        b=zkNNXXzdTrpfLJCZbzY/rZMOH1nDPAG/c7ktyxnmEVXjXcK+SWAAjEfHpzKYMzdOCf
         J80D/NuFIO+opmM5nNQ6eFdyF28JfjiRRw1RvW+bQd0efLDYD34/lYXU3PDtujAcJ56g
         136x1wokAtVRkubxdvMmnG4tl0BFGCAuj7d3Q3o4kC+IA4jw+PULqfmIuX0DBdSWWI+R
         x1keBU/I0wD6Y/xn8Sudzpli5UGBj4Fd3X4CH9GKccLQ35LOQpk+p1UFet1a2+KDGKHL
         zXPpFhSAktTQPf7OLQ9p76QMrw0pXYP7K+Txw2QyWwXIvUlkFc5Tj+QvL/FuVSKz7B9I
         ciEQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=GXnDhDr0;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4cEzGMgGLiNDlbgAG+rpvaoD109qFB6nhB+1ID3/PLs=;
        b=VeAR2Ja5HNTwkLOVsByw6JKPqu1horu52cqZ2U8q5UKf0glXn6U+zwX7EUlDp4cOAS
         fjAflFOZe+HhASlr1kKXOkUJE3St19IQbR68qjWY2Hsl5ILYNww11ulGLTGuqn9xGQaF
         E3rTNJP7MV4Ge6s11fWaUirismeI4TEvxlvXAgcXb/gP/9gNj2NVRmeq9G7n8Q7DmSC3
         jNzRDTRinZF3L24yqBGJzHybnNFeJRcQYOGhhTeVEcvb/QKD9Uqw4fixdX5SuVCuPFaE
         3T/6OaxeRySiwxSvYMG7B2pkV1raXgA/+7mF+SschE+/fhwl5j7fnf6TlMXw1wO1hoqA
         zLEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4cEzGMgGLiNDlbgAG+rpvaoD109qFB6nhB+1ID3/PLs=;
        b=XLOo8m4T1XKaXSGXnzEasjlHhS18y746zYO+/sV6EnzwDrlhsl/ChGFqiEVZ+gplIh
         WtohHhPZquwnqM2TlVVRl7wVAkgY/jzTsnzjW/+ZYYTupCVzmHYXQLKPezlzAQ5XLznP
         Yb75SKB56I2JQei5m/Cb1O2C+VVkJsVHKflbDuCgMWT4q/q2QZmVQ32Apw03V23DlD9O
         eDgwnhswDOILaABNDmgRDEXxLUiQzn+6NC0hAi5tm3dY1WPjEAPMnfymxOXzyxkA1grq
         /M5AoISI5fdmQBE+04xPuBM7yQUdJNVMeiTjTxqxzO7Gozkn5mxG8Jxn6JMkgmyyq/9a
         JbSg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530vb+2OdrHemfy2cmHq4w9reiMCn0FZen+mqxPKL6He47KpADSU
	y4F+6+dhmwpN4p5heNeXOnI=
X-Google-Smtp-Source: ABdhPJyxgoGq+P9jtoiwJ5n9ZOrNbnwqotQxJzjkRid0AiWMSY/wEdIA7pAMiTPqhO8vFXYSZze7WA==
X-Received: by 2002:a17:902:d907:: with SMTP id c7mr18892066plz.200.1589842414823;
        Mon, 18 May 2020 15:53:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:c38e:: with SMTP id h14ls423307pjt.1.canary-gmail;
 Mon, 18 May 2020 15:53:34 -0700 (PDT)
X-Received: by 2002:a17:90a:d086:: with SMTP id k6mr1832518pju.47.1589842414451;
        Mon, 18 May 2020 15:53:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589842414; cv=none;
        d=google.com; s=arc-20160816;
        b=sJ5NTqUz7XwVKGHy4U4AVZSpBtGpbGlFB5NpXkrgF7nlWAL1uIZ9SL3u2ztFcKAnZj
         efqdFITJfC6VDnBnZpoOFnuEsUJbdWs2z60NLhSZ0093pn3YKjuq5LiJlVHAaC2lpxm6
         JRERPTSGEtGRCEzjlRzuOHd39srn9GpjU/npGnbEfhz71J388wamzMiGIF+CqNHaQhEv
         FnbF+FKkHet8OEb3/FiOAXsXwpGUY2yADKd1RdGAAWxX4SytdBsTw0eTb9z0m1uPQbIL
         VVj6lajoMBUjes8wb9xcsss2yzKCpQBluqajeYQ3zy+zGa64HdXmITaCv0WlfA22p3dk
         55ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Ge02D+vMtH+KKLBjcerJB21jPgtxIQMEv9lA24a7Lpg=;
        b=oHgDTsVGMMq/zwonHSq6eZrTTkxIWJDyGDvnf/F1+B37VtwrLg6EizIc0xjFFdl+/Q
         TMDP4ITvHnENk5H4q+3pR/FeIt3D7D0E1/nx28y0tWuCyjTF3PZ1sQtxv1n7aLP8xmyN
         zfPV7x+qyoReghn14l5fg2t0JKXd8yIgP0/47MknUqhcTMtGy7E+MhZFifE4/fjvPUcN
         UCoWiysdjYzLiIcN8tsDaFaUDqqA/fVs/dKc0K598Vaz7xt5rxXetjuLQ+no8Rw082e1
         H8yWVj+EO3tBypPPqzOBRwu3MwyRz+ZLil2/3A9XdGfTierxWX/0cJI2XRSFoUokQl1q
         fYrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=GXnDhDr0;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [207.211.31.81])
        by gmr-mx.google.com with ESMTPS id g11si826562pgj.2.2020.05.18.15.53.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 May 2020 15:53:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 207.211.31.81 as permitted sender) client-ip=207.211.31.81;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-191-DotPqO2TMOuWWHAGZDGNFw-1; Mon, 18 May 2020 18:53:29 -0400
X-MC-Unique: DotPqO2TMOuWWHAGZDGNFw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 69F21460;
	Mon, 18 May 2020 22:53:28 +0000 (UTC)
Received: from treble (ovpn-113-47.rdu2.redhat.com [10.10.113.47])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BA3AD1C92D;
	Mon, 18 May 2020 22:53:27 +0000 (UTC)
Date: Mon, 18 May 2020 17:53:25 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Peter Zijlstra <peterz@infradead.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: objtool warning breaks build for fs/dlm/lock.o
Message-ID: <20200518225325.is5ojipcc5uq5y5n@treble>
References: <CAK8P3a0QkqyA2wq_EbA+oWrLGgVdQwpBvb+G0aKyz60BOLs6fg@mail.gmail.com>
 <20200507232941.jccuywl56bppxfyp@treble>
 <CAK8P3a0G9uOatw93R90nP3tURgx=WW7yDB7qDtC8cwx0DHZqCw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK8P3a0G9uOatw93R90nP3tURgx=WW7yDB7qDtC8cwx0DHZqCw@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=GXnDhDr0;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 207.211.31.81 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
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

On Mon, May 18, 2020 at 09:57:50PM +0200, Arnd Bergmann wrote:
> On Fri, May 8, 2020 at 1:29 AM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> >
> > On Wed, May 06, 2020 at 04:07:25PM +0200, Arnd Bergmann wrote:
> > > Hi,
> > >
> > > During randconfig testing with clang-10 I came across a number
> > > of additional objtool warnings, I'll send another mail about those
> > > when I have collected more information and some object files.
> > >
> > > This one sticks out however, as objtool returns an error code that
> > > stops the build:
> >
> > > fs/dlm/lock.o: warning: objtool: __receive_convert_reply()+0x1e5: can't find jump dest instruction at .text+0xcaa7
> >
> > Thanks for sending the patch for this one.  Objtool always gets confused
> > by new compiler versions, I really think we need to revert
> >
> >   644592d32837 ("objtool: Fail the kernel build on fatal errors")
> >
> > because objtool is never going to be reliable enough such that we can be
> > confident that failing the build is the right thing to do.
> 
> I'm now struggling with a clang -fintegrated-as related failure:
> 
> arch/x86/kernel/ftrace_64.o: warning: objtool: missing symbol for insn at offset 0x16
> make[4]: *** [/git/arm-soc/scripts/Makefile.build:355:
> arch/x86/kernel/ftrace_64.o] Error 255
> 
> Using this as a local workaround, but I'd like to find out if this is a bug
> in clang or in objtool:

It seems like an objtool bug, though at first glance I don't know where
exactly.  It could be a problem with the rb-tree stuff Peter added
recently.

That instruction should be part of the __fentry__ function:

     4: 0000000000000000   165 FUNC    GLOBAL DEFAULT    3 __fentry__

So find_symbol_containing() should associate it with __fentry__.

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200518225325.is5ojipcc5uq5y5n%40treble.
