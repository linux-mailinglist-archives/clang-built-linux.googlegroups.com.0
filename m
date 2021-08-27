Return-Path: <clang-built-linux+bncBCY6ZYHFGUIKZTVDREDBUBAW7LWSG@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F37D3F9999
	for <lists+clang-built-linux@lfdr.de>; Fri, 27 Aug 2021 15:22:54 +0200 (CEST)
Received: by mail-qt1-x83b.google.com with SMTP id e3-20020ac80b030000b029028ac1c46c2asf100882qti.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 27 Aug 2021 06:22:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630070573; cv=pass;
        d=google.com; s=arc-20160816;
        b=TGhunX2S56OLdrKhdzNTXEmg/2S+9LR+y6EbSnn4LNYnNIa7fsdM8M6LiQs0LtiqiW
         a03cmWw9csdmJ9REnu+GMKq8xMLBj3NOq6I6zw0s4QsiS7knICb+rTVG+ssYXzL6t4Lc
         HVeqWe/iSreKbFexVpqqRSiybn9NXqz4udQN8dvU6sU2cPBpxgs+YlRHgv5RelkIw6Kj
         qoLurkHaU7KRtatICKYu3R5gif7twtgBfhW85csaMbVkE0TA0Kbkn/j/NJwLVPxlxfHw
         lAxmT8Hc9v7GoRPKutINUQIZ2shOoYFtJnJD77z8T+PZ7gIgJob8fWOi5tXpSZC9oJrQ
         zEBw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:date:message-id
         :subject:references:in-reply-to:cc:to:from:sender:dkim-signature;
        bh=MDct/mnRgEILiHLXmMbAZKW8WGR8cDUZmeoNa37sVEI=;
        b=GfmfEOQ/K3U/McNKAKywBggRtW1XU+dXLd0ZLWewzn6BIoJlgv5cDhEUo8esxzLLo7
         thw+rLpi62Cs4OTU8Es3ou0LCSqWM+bq7nEAbVbNQp4mWkE8w/OXvSRd2OSeRBQ9k6Fj
         3a2EMBv5NrYoKDpE1kgliDDTj3WPVgay/m+BCTR94ot5FArB8ZGi2sXFrAdNsihpBG1w
         sWT1rSU4ndC02bDdCrRrv1Ji0tKtYs0qXye2cqg6gJLN9OOXqvWhmp4pCWpAArr4/GzG
         e4S6m8B+dfpJ75My37IvGjZDvl03fsQLncf3/iqI5dWU9K8xupIJEkfe+XSdUqK8B5Hn
         KiFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of michael@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=michael@ellerman.id.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:in-reply-to:references:subject:message-id:date
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MDct/mnRgEILiHLXmMbAZKW8WGR8cDUZmeoNa37sVEI=;
        b=Xr6FWa0xKQ7Gg7p5sM4GHKetX85gvMVR0bn70oCnhI+iCFftzaYGu/bYe5L5qIJfqy
         zRJw/1NT/EGs938xUecGw1USNfRXqbK/pOlCiqxcskNPl+ddyGP18uAEDi3fFommdt3b
         pea6o3KttMSYuArm94P7Bs4bYmNJkJKvDUA7EBArTJsQtwf3IC+/qSXHoch+sI3wznY8
         t7BKJIoSHjHX9LMUt9aCNQMqB31OhmKxfZwwokXVln6cd0FcJiS4JpUra7SVoJq/X6sh
         YSWq75eXDYyTdKWkWRztlM9lNWcXMAvEws9LDboyJqPrXgTYNR5KUs+fnSJrNLROC+Jc
         jbgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:in-reply-to:references:subject
         :message-id:date:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MDct/mnRgEILiHLXmMbAZKW8WGR8cDUZmeoNa37sVEI=;
        b=g6bzEBBKUwzWU24+ypsr1/dZTV3g6b+Gskmir4ZYIdFHPuwsSPC86k6oMnjHepFvhE
         tITjtaEFQcZYfBXZ4/cz98qIWDU/nfPCguoNRXIYJNY6jeXLz8702UA7wqvbcxAb0DEO
         V5ZcH9MasMPKgy+0h6AEmMtrSjA4u+0+2LOe18qbiHoqwE3jFdM/3DXhpk04G0YaDBBE
         FNbuj/Pm5JQb5IzyZDQBInXjt1Tt8hZTe+APRPbcrShZv3KLwtBkGuYvDFbAlf96DRSB
         9GXDl/sib0oGoCP9Lhr9JDUYgplweemxgxoiDPIBugPMHyuK2DJllxcy6qgdXI6D2DMf
         AK0w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533hD3CIXamnyJfQa/HECH3kkJU8xwQwFjLzi8zQXKKSimN8oaP2
	zc+l4yv6S8ahX2Ibkjbt9Bc=
X-Google-Smtp-Source: ABdhPJzz2wfPXtGbu1Q+YZVH/oq/W/n0UZcThexMseKmjt/IzqSE+BIM6HzCcKkU+3TXsTIsROFvZw==
X-Received: by 2002:a37:a554:: with SMTP id o81mr9407816qke.231.1630070573045;
        Fri, 27 Aug 2021 06:22:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:1e06:: with SMTP id n6ls3927864qtl.9.gmail; Fri, 27 Aug
 2021 06:22:52 -0700 (PDT)
X-Received: by 2002:ac8:58cf:: with SMTP id u15mr8336361qta.142.1630070572366;
        Fri, 27 Aug 2021 06:22:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630070572; cv=none;
        d=google.com; s=arc-20160816;
        b=lUtVB/leodOd8eCiYypDnLbmCG8CmHMDm9FzzwZvRBxQmHc9644uwPHwirRD4QjZSQ
         bPO7XTui5YlEHaFlzHhlcDtzLEgDsgfvYYgRTnZ89rzVwHMMBsEe82hiLYFrY/O+Iga9
         h4YIAETY9G9XLGK9nvIRuBSt5/jaPKs1qhk/8u58k14R6qXTB+n80W/YvRCZ470lF9f4
         QhJtI5AdZgWMPNsRsWmG9n6vTYRUV+7ILcqX77uvEjwzfUfBW9ccCOdpyZrugiX2ct/4
         dy67lBi1ghr1wuHdUpEPE+TO0aCsM/GkivVyFkv1WI2VMtOJ7lYVghquAx3BvS3+irMI
         LKXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from;
        bh=vuXhPGjyi7N7U1usHQSaYB/9ZQ97GljonWtdFyisaQQ=;
        b=eYSGYMKGd1yYdjHqqBfmWqHLlZj0gXL/tJW3rHVzRa3GtFSwGO/lCda5MJrMOvybHl
         UMQ2bfdDxj4rTTGxPW5UauuMTh4Zfekt+B93F+POKqAXqmedf1wpWCWMSbF/4cOyhYwh
         CNMtP/JB3INNZbxVBf7RYyvQaoZHioPAEGLNzovvUoJEtP/YzQRGCkTA4kHpwx2OlOca
         cmVP6+B3DYqj5++lMCfnPz4d7frZFPntoA8cH28WWkVZOPG801PRDxCwZA/aDcTorqPP
         Tv32Kv2d1R/VpIfNanudXGCwUFywhR2ArkHBtgUcMfvvsLVNwMjA7dwwdwyxDCnUiRFJ
         QjAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of michael@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=michael@ellerman.id.au
Received: from ozlabs.org (ozlabs.org. [2401:3900:2:1::2])
        by gmr-mx.google.com with ESMTPS id 6si479642qkh.3.2021.08.27.06.22.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Aug 2021 06:22:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) client-ip=2401:3900:2:1::2;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 4Gx0kr2Q7Lz9sXN;
	Fri, 27 Aug 2021 23:22:44 +1000 (AEST)
From: Michael Ellerman <patch-notifications@ellerman.id.au>
To: Daniel Axtens <dja@axtens.net>, Paul Mackerras <paulus@samba.org>, linuxppc-dev@lists.ozlabs.org, clang-built-linux@googlegroups.com, Nathan Chancellor <nathan@kernel.org>, Fangrui Song <maskray@google.com>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, Michael Ellerman <mpe@ellerman.id.au>, linux-kernel@vger.kernel.org, Nick Desaulniers <ndesaulniers@google.com>, Bill Wendling <morbo@google.com>
Cc: Itaru Kitayama <itaru.kitayama@riken.jp>
In-Reply-To: <20210813200511.1905703-1-morbo@google.com>
References: <20210812204951.1551782-1-morbo@google.com> <20210813200511.1905703-1-morbo@google.com>
Subject: Re: [PATCH v2] ppc: add "-z notext" flag to disable diagnostic
Message-Id: <163007013373.52768.2144821424552273961.b4-ty@ellerman.id.au>
Date: Fri, 27 Aug 2021 23:15:33 +1000
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: michael@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of michael@ellerman.id.au designates 2401:3900:2:1::2 as
 permitted sender) smtp.mailfrom=michael@ellerman.id.au
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

On Fri, 13 Aug 2021 13:05:11 -0700, Bill Wendling wrote:
> Object files used to link .tmp_vmlinux.kallsyms1 have many R_PPC64_ADDR64
> relocations in non-SHF_WRITE sections. There are many text relocations (e.g. in
> .rela___ksymtab_gpl+* and .rela__mcount_loc sections) in a -pie link and are
> disallowed by LLD:
> 
>   ld.lld: error: can't create dynamic relocation R_PPC64_ADDR64 against local symbol in readonly segment; recompile object files with -fPIC or pass '-Wl,-z,notext' to allow text relocations in the output
>   >>> defined in arch/powerpc/kernel/head_64.o
>   >>> referenced by arch/powerpc/kernel/head_64.o:(__restart_table+0x10)
> 
> [...]

Applied to powerpc/next.

[1/1] ppc: add "-z notext" flag to disable diagnostic
      https://git.kernel.org/powerpc/c/0355785313e2191be4e1108cdbda94ddb0238c48

cheers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/163007013373.52768.2144821424552273961.b4-ty%40ellerman.id.au.
