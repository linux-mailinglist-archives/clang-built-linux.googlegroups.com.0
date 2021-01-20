Return-Path: <clang-built-linux+bncBCSJ7B6JQALRB3XLUKAAMGQEN3YLUJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E61C2FDCC7
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 00:00:00 +0100 (CET)
Received: by mail-pj1-x1038.google.com with SMTP id t10sf226897pjw.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 15:00:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611183599; cv=pass;
        d=google.com; s=arc-20160816;
        b=alDnWtsQMopPxAf2d71uKvhR9vMBrz9w1N+4IFqZvV0LywvGdeIXb31XBe76ski3sX
         idpRJfmnA5uqo5gDENaBtKRMqNzIrZ3muypYpioFapwnzAw+/H2Xtzh20J/t0R2dxsfl
         yAsuPZlNGohmcXKuxGwdIe8dfSAZyomEyXXX+2It63a9Qabr5LSLocIMNeAsKdMT9/Tq
         TDR7zi0OxuBOOmp70rdzTR/BRW+bzYVYSC9VMIl4j3YJgNd+QOX7c+WQN8Ho2TsfPIk1
         YBFmzfhf+piuiYuagbuKzxlZ6c97Q31p91ZMIArbPwMBbr/+GXkzS/3VN1HgPo9sykWT
         98OA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=DJpyMgAT5Pr88hKLt81oC6Pc/H9dMciJ8QpvPKutWBo=;
        b=KV+b6PwZHn8eNhDDu2ds34V4FWr/46oP66isJV/O4zmn5fMhbHBZUN7jymVCNxf869
         crJA+RKWAdWBUIYXMY+PmrE/ryriVbRZxQoGEUBs8cc/PipKHMDUotrHqiqrumBlnN55
         D5GSum0efj+aS4mXgoArgy0WPoG3tb3+flkOgBSDWVya+eB5yRp+4hbmBmOw3DFXny46
         yb490LOgRBTd9bmIdWptu53OcfygCrzrQJSoJCacPyOXrbb8qK5n3pMcCi6wMP1QSw3b
         y3D0qfO0M82YHS8b9TWQk/4KYEyJ/jWj7fDVnlzMVwWZkdfN+jhinuPjN0s7h70IzEvo
         4uYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=AobkxXfw;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DJpyMgAT5Pr88hKLt81oC6Pc/H9dMciJ8QpvPKutWBo=;
        b=Tz8AIHQnMa7dLGb8YeghjL37VYR8nkUmp4B5DnZnbh3CwjZuzL73U1BsRUFs1eXHaX
         EBvTo9ANaNpUiJ4TGGF4ARAmhHO3FwzFtCuLbxgTwiQgvr0jBuR9yrSomeo6pyg4+6pl
         5kfHK07t0XdKRftB4PrDch1Q6go7bTzbGLcL1Wzdg5BUSgeIcvETZJuu0032HPo+ZCxW
         7U9BiNG7gMuTHTusdrzKVQjZ00fT3o5p7vH9FBe91lvLRkC0yMfpc9qO4mwgmvS7cOgm
         cTSU6tZ/WpeChADT6IAwamZqn+W7q0mQAzuH3gfumr/+oYQ/pS9BS0CIygaZ6C96Y3cJ
         NNIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=DJpyMgAT5Pr88hKLt81oC6Pc/H9dMciJ8QpvPKutWBo=;
        b=RYSLypsuqAXFdidZeycuXXC9CeLn4OWNfjUkprw5FAmrUdgK//V4UPFv704EReCcYN
         PjBIhtFpfeyEvu9AIyYl4Oe+cYw8ypTy12Y2TubQJyuvIWehEQf2kQaQYtMSvuZp+nw0
         HlXEy/b2btemgUv/PDXFUI018HlFILFlvBizIrGphrroNpBbagHA1PIIHGCiq3sI9Z8E
         n6NCscO40GJsdSHuJJZcBZ+jyB8gdZCS80aiMGE/ogiJHKYBWoaeFRVVplm/LtmmzmS4
         PB+ksbzk60VSYTtGdYWGFGd+vKbMWvFYPS4bxsU71VPRSWBCdM5IroABdTTyM82Cx7Wi
         Zo7g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533tofMspjYrFM6OcdnDc5SEaDDpbmRKuQCHu/JHxv0ehgBlvOQp
	BtiXAUqergQRW5tEPXhnJPc=
X-Google-Smtp-Source: ABdhPJxuJiQQRbOdBIMR7C/oiIT97VRxkJmFUQjbnvOS5M+bqCQU2ZY6n+ln/WDXmVHTHgZrpfCxaw==
X-Received: by 2002:a63:4444:: with SMTP id t4mr10764710pgk.329.1611183598863;
        Wed, 20 Jan 2021 14:59:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:15c8:: with SMTP id o8ls48448pfu.8.gmail; Wed, 20
 Jan 2021 14:59:58 -0800 (PST)
X-Received: by 2002:a62:75c1:0:b029:1b6:b71a:a369 with SMTP id q184-20020a6275c10000b02901b6b71aa369mr11280853pfc.27.1611183598163;
        Wed, 20 Jan 2021 14:59:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611183598; cv=none;
        d=google.com; s=arc-20160816;
        b=FZZtfoAfO1thIEN37Tsfcyzh0JcG1827n5K9rSvsCvenQmZAHEPyn56BOUYITglTi6
         mRAhFjhiVk5Bxn6v2BSY6zObzPPEcaRyC/yjcfkt/9pgUm+09sfGY0+n1LIecdtFzprS
         QYkczlPZCTSv7GxD2kfj9qckQ6TTCG1MyHXUhaNmAOwFiB6V9V4kDxaBEx77yF2xw3M9
         iONdvZB8a8DrwSLUTXICR5gBY08okh11rqkuM7l6J/Hd2Y4XtUFVqROQwKDOrPa96n2u
         viPG7U1iUD/Zq+zTPa7brgfRzn5uEWD9nP0cZJmtgqE7KRrMTtfr+1yvnxyjBbIBgzP5
         b6HA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Om7VwHKhcnxl7GarBDwRVzXmPEeOP48pbHGghTabBUQ=;
        b=lqgGEaRRsqXJmRHgxyRhgYqrLwZVMLlfzt5lhDtglLA0GKEO1fkgH+iC6PrbIioe6j
         RiiE5tZwlTulAyXV0nZ8ZB7J4m6vy4DqBx5yaZxltf6sPUf0F7hUay49PA7xp3J21PsZ
         PM8gzQKMnHd6zqn8jwACr5KvT4gDwK0p6t3KLr8B0rQ8LA4aqSF+N+xjj93LJBR+wUY6
         zHvugFutm0EJm3ctylhPdivpY4pvRevAIpisIf03ajoyGUfa26TFd9auR2/GVhF8H5rg
         Y61ZZeAOz2iWVWL1MSiOMuLsy7K65t/KX9o23ipGs4lufaEBApBKz1wWo0yQs/Nh98F0
         iDuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=AobkxXfw;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id jz6si315903pjb.1.2021.01.20.14.59.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Jan 2021 14:59:58 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-123-SHMIIL66OSu14XH1DwGo3w-1; Wed, 20 Jan 2021 17:59:53 -0500
X-MC-Unique: SHMIIL66OSu14XH1DwGo3w-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 96227107ACE3;
	Wed, 20 Jan 2021 22:59:51 +0000 (UTC)
Received: from treble (ovpn-116-102.rdu2.redhat.com [10.10.116.102])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 89D5060C6D;
	Wed, 20 Jan 2021 22:59:50 +0000 (UTC)
Date: Wed, 20 Jan 2021 16:59:48 -0600
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Aditya <yashsri421@gmail.com>, LKML <linux-kernel@vger.kernel.org>,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>, dwaipayanray1@gmail.com,
	Mark Brown <broonie@kernel.org>,
	linux-kernel-mentees@lists.linuxfoundation.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Joe Perches <joe@perches.com>
Subject: Re: [PATCH] checkpatch: add warning for avoiding .L prefix symbols
 in assembly files
Message-ID: <20210120225948.lgbfhy5s265we6jn@treble>
References: <20210120072547.10221-1-yashsri421@gmail.com>
 <e5c5f8495fbdd063f4272f02a259bbf28b199bdd.camel@perches.com>
 <14707ab9-1872-4f8c-3ed8-e77b663c3adb@gmail.com>
 <fb1b511d71761c99a9bece803f508b674fce9962.camel@perches.com>
 <CAKwvOd=HNuB8bqJvXEjvYWorika99QX=jKSfHy2hf0NOKrrc8w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=HNuB8bqJvXEjvYWorika99QX=jKSfHy2hf0NOKrrc8w@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=AobkxXfw;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
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

On Wed, Jan 20, 2021 at 10:57:03AM -0800, Nick Desaulniers wrote:
> > $ git grep -P '^\s*SYM_[A-Z]+_(?:START|END)(?:_[A-Z_]+)?\s*\(\s*\.L' -- '*.S'
> > arch/x86/boot/compressed/head_32.S:SYM_FUNC_START_LOCAL_NOALIGN(.Lrelocated)
> > arch/x86/boot/compressed/head_32.S:SYM_FUNC_END(.Lrelocated)
> > arch/x86/boot/compressed/head_64.S:SYM_FUNC_START_LOCAL_NOALIGN(.Lrelocated)
> > arch/x86/boot/compressed/head_64.S:SYM_FUNC_END(.Lrelocated)
> > arch/x86/boot/compressed/head_64.S:SYM_FUNC_START_LOCAL_NOALIGN(.Lpaging_enabled)
> > arch/x86/boot/compressed/head_64.S:SYM_FUNC_END(.Lpaging_enabled)
> > arch/x86/boot/compressed/head_64.S:SYM_FUNC_START_LOCAL_NOALIGN(.Lno_longmode)
> > arch/x86/boot/compressed/head_64.S:SYM_FUNC_END(.Lno_longmode)
> > arch/x86/boot/pmjump.S:SYM_FUNC_START_LOCAL_NOALIGN(.Lin_pm32)
> > arch/x86/boot/pmjump.S:SYM_FUNC_END(.Lin_pm32)
> > arch/x86/entry/entry_64.S:SYM_CODE_START_LOCAL_NOALIGN(.Lbad_gs)
> > arch/x86/entry/entry_64.S:SYM_CODE_END(.Lbad_gs)
> > arch/x86/lib/copy_user_64.S:SYM_CODE_START_LOCAL(.Lcopy_user_handle_tail)
> > arch/x86/lib/copy_user_64.S:SYM_CODE_END(.Lcopy_user_handle_tail)
> > arch/x86/lib/getuser.S:SYM_CODE_START_LOCAL(.Lbad_get_user_clac)
> > arch/x86/lib/getuser.S:SYM_CODE_END(.Lbad_get_user_clac)
> > arch/x86/lib/getuser.S:SYM_CODE_START_LOCAL(.Lbad_get_user_8_clac)
> > arch/x86/lib/getuser.S:SYM_CODE_END(.Lbad_get_user_8_clac)
> > arch/x86/lib/putuser.S:SYM_CODE_START_LOCAL(.Lbad_put_user_clac)
> > arch/x86/lib/putuser.S:SYM_CODE_END(.Lbad_put_user_clac)
> > arch/x86/realmode/rm/wakeup_asm.S:SYM_DATA_START_LOCAL(.Lwakeup_idt)
> > arch/x86/realmode/rm/wakeup_asm.S:SYM_DATA_END(.Lwakeup_idt)
> 
> Josh, I assume objtool does not annotate code under:
> arch/x86/boot/
> arch/x86/entry/
> arch/x86/realmode/
> ?
> 
> The rest, ie
> arch/x86/lib/
> seem potentially relevant?

Both arch/x86/entry/* and arch/x86/lib/* are read by objtool and should
probably be fixed up.

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210120225948.lgbfhy5s265we6jn%40treble.
