Return-Path: <clang-built-linux+bncBCDJ7PUVRQGRBAWPXOCAMGQE3Y6QW7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53a.google.com (mail-ed1-x53a.google.com [IPv6:2a00:1450:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D3EF370E4C
	for <lists+clang-built-linux@lfdr.de>; Sun,  2 May 2021 19:55:15 +0200 (CEST)
Received: by mail-ed1-x53a.google.com with SMTP id v5-20020a0564023485b029037ff13253bcsf2839508edc.3
        for <lists+clang-built-linux@lfdr.de>; Sun, 02 May 2021 10:55:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619978115; cv=pass;
        d=google.com; s=arc-20160816;
        b=svAw2wKVfrEkWO+Y+25Uvmts/saIjjQVx2wfhtdXXcYKgTkXb/4XCEUNZQgNnpf6mb
         1MCUAozWQ113ZcssirWhKmE1o5rqiZPhwUp71B6tmAuWZuxyr62HMB4GLfJWFxi0pXSL
         CawJzVIPWq5RCLokrwYirAAmxS3VvsP9ilar+99yG3vAVPSP2dt+IDx2h8fzSxNaDLjV
         lOwXNlnrd8esqtkGQCxuUHKhJ+Kiacz2Qfa0m6+XiGd5SlR9PIxD9Oy6RmmLW6XwmzvS
         e3QMKng+zShF5pheCJa75J10drBDN4+4aKpX+sjVRk+NOLzTruplupfFChCdNW7KpnI2
         L58A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=gTxwLUq97euNbUwV3gHa8wD+pxdcFkOPn/gK4s8oKyA=;
        b=FmW4p6Oa4im0qzxt1Pv2zPSHjTEOAqNUn4sIW4KA+MVVY6i21Bn4t4VB0DH0Lp9zs6
         PWihOvOC96or9/yBCco720m2gxZ4jieeUyy4HxQJgoPHo1dOuolJhfRLWSeb0/tDwMGn
         Tv9/NPQ9nX6ECQJGkSf3yGd+j+fwoASLe5ffgKLxAzcbF0Odt3h8g2d2TotvEi7d3jIk
         2onFw5tljCXExTWTwiqFJDxottCsz2RjdQwUd3cclp81MKVM2vvL6us07vlBGaGOTX5J
         4TZFUtBj8vyNFyKQhEjfKVtKVwh1tJcfnd+GKCNbVBcStZDYdG+IjtgbQIRYSSoF7Lxk
         rmJQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=zsue=j5=stusta.de=bunk@stusta.mhn.de designates 2001:4ca0:200:3:200:5efe:8d54:4505 as permitted sender) smtp.mailfrom="SRS0=Zsue=J5=stusta.de=bunk@stusta.mhn.de";
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gTxwLUq97euNbUwV3gHa8wD+pxdcFkOPn/gK4s8oKyA=;
        b=rOxlz3aFHv8qD0aStWicKUIxfpxtIJGwhWU9/FJGru/5I+vUj9qZxko1Gc4fvY7q2h
         Ho18gVGAw3ag51apv4HYueVHXvycdxRl4HD5QRln/5kvl/vhV3P8g6zzpibFD6A13MoU
         OCdLsP/9E+RXE/N8WSfzslmA6FGO6Hh8+QC0ut9AwYe+E63vygKQu21SwqZcldpmzOK7
         K7ziPFEXAkOtqCPnmPa9hgN+lZx3TnCHJfMbCAIhlDWvIpqTGQgUcyshxtKMPmGgOgor
         0TmavqiN/ES1r7Kxk81Df+syJkMhG4Uoq8LLVA03DHjF0GbXkToZJXdLK2ljQ9h3up/M
         EpmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=gTxwLUq97euNbUwV3gHa8wD+pxdcFkOPn/gK4s8oKyA=;
        b=I4u09ue8SoBKACOygHqqOcDEkBT/PkJkMmCv5Mq2pCG79jMDuRmCIzZ4fB6tDztMSB
         L5GAQnxpyHmKMF+FCOrMjBkq8M3K6X8nB6q4gfJ7K8mnn0qsMgvQRjzt7CTT2wN38v53
         7Hu8UWAcadF3JuX9cj4kMWNYS8pPwGdZ2cXiArBMKqyo5mgib3/BMxHNXPG1bTg17153
         kQlePtTV2omjhI5l+8FcBfwzuSLpCv1BZi8vhutqkkUGV+Xu1E+t47xamZntyasQd5Zy
         AdDU75tBLEhCzbmutgb5a7k6BjoKbox7IAzdw9zUrQjxlq0294Elfkqf5oPvfVtPOThu
         b3pQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533WfVGdS3bkdcibx3mJyOQeL9G4TV/ve9/3wlDfKeCjCo0tAZLj
	ZdTsQl2uDLVGdfG+m603AKE=
X-Google-Smtp-Source: ABdhPJz5mo8stG2ADw2O59x79aU44Z+h5EuEXInM8Ect1dxsETOVIFOjkFyIj9jPCzzL2Zlrk+uCXA==
X-Received: by 2002:a17:906:33da:: with SMTP id w26mr13453433eja.472.1619978115024;
        Sun, 02 May 2021 10:55:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:560d:: with SMTP id f13ls5410971ejq.1.gmail; Sun, 02
 May 2021 10:55:14 -0700 (PDT)
X-Received: by 2002:a17:906:b156:: with SMTP id bt22mr13469685ejb.181.1619978114160;
        Sun, 02 May 2021 10:55:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619978114; cv=none;
        d=google.com; s=arc-20160816;
        b=0EWNB77QYUeDa5H8qj+0NIMEjtW7+mSPEdwDVgoweD6mizc7Ljnx22dVH9BxlaDJhb
         m8fpxwpozaWVp9B6Yc8As3XKDEvdSXkaZjO9yHIyQytquOZUmPZDJxfk/fPsrbMTFTYH
         KE2IrrH1iO+KR8np+vk2SPGzONPkMmg8h0MFMvzO6wtMVIV3I0lfW7naaNaDhdUNjcoF
         yz0PG74fw0pSxu2RhBYAGcdZoLcL4gpjTSVUGOHcxel+4++dwLvwx32+51bJXqBV/VWz
         YprAPUTzljzXI6/k8WHHDKRYvNuXlTLcsLGwfPMjV+L8/CJfBgI31KyWzH78E/5aavWN
         3VmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=8Xr5XYAN6fhz5oHoCb2PWIAcm+oB0Bt0VSG1vrS3eLY=;
        b=w8f2xs3SfWrDT9Y57x8w8arT8vllqC74A0KsoucH1VV/CISC0WNEPEuHFrzGLqk/KP
         evmPbY3xYkUUaqK7C3wr6Ncq+EDgVG5K5Xs27pBYqy7l8/wJjS52mCTx9+Y7KKGFhoe9
         X8U8DQRcUdT8zjRwnZb5ZlDd95SXtrMS6gHDXvnNK+q13+zU1dT0MQYfNJkEpf7lWCOS
         9qxTmeMoZ8xO7uI5/r4/NwjkIEkXL2il/6z09SUTlyTuFb83TkGswdfySG/p+RkqEPum
         BfNJA3hfxyuh3JRZDYoHKPBRXD/0llrMNAqhHekmslInzYLMcRn2zi756B6YwKhIcS7I
         nUOg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=zsue=j5=stusta.de=bunk@stusta.mhn.de designates 2001:4ca0:200:3:200:5efe:8d54:4505 as permitted sender) smtp.mailfrom="SRS0=Zsue=J5=stusta.de=bunk@stusta.mhn.de";
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.stusta.mhn.de (mail.stusta.mhn.de. [2001:4ca0:200:3:200:5efe:8d54:4505])
        by gmr-mx.google.com with ESMTPS id g7si464633edm.3.2021.05.02.10.55.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 May 2021 10:55:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=zsue=j5=stusta.de=bunk@stusta.mhn.de designates 2001:4ca0:200:3:200:5efe:8d54:4505 as permitted sender) client-ip=2001:4ca0:200:3:200:5efe:8d54:4505;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 4FYDKD16tGz4c;
	Sun,  2 May 2021 19:55:11 +0200 (CEST)
Date: Sun, 2 May 2021 20:55:10 +0300
From: Adrian Bunk <bunk@kernel.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Tom Stellard <tstellar@redhat.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Fangrui Song <maskray@google.com>,
	Serge Guelton <sguelton@redhat.com>,
	Sylvestre Ledru <sylvestre@mozilla.com>
Subject: Re: Very slow clang kernel config ..
Message-ID: <20210502175510.GB4522@localhost>
References: <CAKwvOdm3D=dqKw=kx46PLaiqfHOZJL3QFKGc8kxqJqpwdFFWqw@mail.gmail.com>
 <CAKwvOdkp_P8BCtFuKqDrtC_=A89ZfDf66Yr3FL2e=ojwv4KaMA@mail.gmail.com>
 <CAHk-=wi1yiBBr3b3RbCEte6-yzAApsZN5zRdr3xoW8Av9jOX=Q@mail.gmail.com>
 <CAKwvOdk0nxxUATg2jEKgx4HutXCMXcW92SX3DT+uCTgqBwQHBg@mail.gmail.com>
 <1c5e05fa-a246-9456-ff4e-287960acb18c@redhat.com>
 <CAHk-=whs8QZf3YnifdLv57+FhBi5_WeNTG1B-suOES=RcUSmQg@mail.gmail.com>
 <20210502093123.GC12293@localhost>
 <CAHk-=wgdUMt_n84mq93LZKA6jOGqZpD+=KeVzA3YmvJ6=JPyhw@mail.gmail.com>
 <20210502164542.GA4522@localhost>
 <CAHk-=winSraiwc4gC5WFWSehFq+s7AqCJZoMqUuHLX0nYVG0nQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAHk-=winSraiwc4gC5WFWSehFq+s7AqCJZoMqUuHLX0nYVG0nQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: bunk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of srs0=zsue=j5=stusta.de=bunk@stusta.mhn.de designates
 2001:4ca0:200:3:200:5efe:8d54:4505 as permitted sender) smtp.mailfrom="SRS0=Zsue=J5=stusta.de=bunk@stusta.mhn.de";
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Sun, May 02, 2021 at 09:49:44AM -0700, Linus Torvalds wrote:
> On Sun, May 2, 2021 at 9:45 AM Adrian Bunk <bunk@kernel.org> wrote:
> >
> > Mesa and PostgreSQL are among the packages that do use libLLVM.so,
> > this is a popular library for implementing compilers and JITs.
> 
> Yes, and it's entirely reasonable to update those packages if it turns
> out libLLVM has a bug in it.
> 
> Because we're talking about a small handful of packages, not some kind
> of "everything" model.
> 
> So again, what's your point?

Two dozen other packages are linking directly with libLLVM.so.

Are you happy about libclang.so being a shared library?
libclang.so uses libLLVM.so, which adds another 10 indirect users.

Debian ships 30k source packages that build 60k binary packages,
with 3 years of security support (plus 2 years LTS).

It makes things a lot easier from a distribution point of view if a bug 
in libLLVM can be fixed just there, instead of having to additionally 
find and rebuild the 30 or more source packages building binary packages 
that use libLLVM in a security update for a stable release of a distribution.

>              Linus

cu
Adrian

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210502175510.GB4522%40localhost.
