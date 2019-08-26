Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBW7ZR7VQKGQE4FNH7NA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4290D9D2E5
	for <lists+clang-built-linux@lfdr.de>; Mon, 26 Aug 2019 17:38:04 +0200 (CEST)
Received: by mail-lj1-x23f.google.com with SMTP id v8sf2987612ljh.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Aug 2019 08:38:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566833883; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZYHe96hJS4oUdqI/vorWnUvTqY6/6uaopRyVf25LQ4EzYJ+CqtS4/SMIXF7wOF3ZXL
         5owCMQCzLplS9tohJInzI3O/+fYXXGV6GpFZcfgClecAlFAre60Ex64mSm2fFxEJt9Bx
         Zu9qammw7u6DaK2Axd+3memd5naniJatR961PQoQfmH7sJb9KcAetNYChkDMdKm2v6So
         2AXDMjtCUjmKQqWD9Dth/uaJ+RFTbsHx6gJcyjxB7vCmV6L+mYa/Qu02G5IZepOQMgsY
         N3sTn1POqpuWZBFtra+2vLQxxOhoddZSsiLOWdJljxQ37owQaDtkPX30pIaTDVib5qAC
         st6w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=I4FfU+v9LPaXACt6wvh2pyN0pan/5mTWvj42vPHX4Cg=;
        b=ATkp6t38ZTilFYZCmQM8cLwce+f3SebH/Xy89nfht9/h1G9vckR4kuj9gzTTDmTL3R
         WLUf+mvv7vFawSHZXBgr76Lay59d5LZXjRKT92Fe8XQ/Ok7JhqCqXZUA+iO9y3CGDytp
         XkjGOjPvSAHhcHcWEZaEq1Mp015xX6dQ2pSAhQ6eS+wN4H1qFhUVvI4G5X581irLdpzx
         Hk9ybkSAN1q/wz6Yf9tM+HZ+RrlcOtyfeC0LAgudDV0U4L5zqYTZO6JTO7ovJXpj4k5t
         qDIv664efWKzBQNsH0k5rSbjf35HmzjQxasz2JyyrYBXu6ilyzWrrO7qiDM8e+E9g0Uh
         JWjw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lDltRrG2;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=I4FfU+v9LPaXACt6wvh2pyN0pan/5mTWvj42vPHX4Cg=;
        b=GjdbBclASaQeBP59ZoZDAJS3GT2KoRuLFbsDTbmLixQn64s1ObYeL11i9aO8ucyWLA
         HKUYxANcqlnS08qCMqg4z28Kq8UanvyDJaG8JhozA5Nd35MeD0xcuRE9QTsNfLLO16Zz
         PnwneeA91fpPMwWxD4cWsMmnt4xX+A1RnQoWa86YnX2BGCS5d53oya7MKNFKUt1iZkcR
         eg1BUPtGOaSFngaA2rnoyX6vQn5zNnU3ILKAbDDdeFBDddeFo41yuAPyJZw8nbN+5hg2
         2KnBhNkXrshhAI8gSPjXm1bCE5EEKMW91nPk97FkkqWVowxLKM+vkjx68eQ0OilnRRQU
         0qyQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=I4FfU+v9LPaXACt6wvh2pyN0pan/5mTWvj42vPHX4Cg=;
        b=ECChLm7NMo723THn+jYqmEPry5RMSFr0hhl7fCUrNfYmtpBA4apVJR4dZC1y89dYzL
         ov6GDHijg5qGzugm1NR3A2+Bgj+3INaz+QJ1iVKN1ybJj+aVHp1GVCLQdf//3bh0oFh+
         lfThIeAoZZCAJqekKIeYo2+ip64hK5Y3iIICAnCDQWuxCLGp4HRZx/2iUH+R+ws3f6oH
         z436pP2Qr8bGQfsA0rCNxU6mcXxdmUETAD5RdV+X00Wj5H46jvqtRxAON4aLeEQpmBj3
         kaBa0+YrCaBhfKAT4qDEMeFET7chp7f3My4TqzisX4HQNGVk5VGUXtiokZ1/L5/FWnxJ
         4kmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=I4FfU+v9LPaXACt6wvh2pyN0pan/5mTWvj42vPHX4Cg=;
        b=SC5zhS0wKbmAGtaNAwqYURh/dIpuyZLRmK1Nhk0FdJdrkR/a7XykZ1+Gme8TQ84JH8
         FMkusfpmtTSqf/3wdlsGy3T8k0LZGqN0tx3V0CQj1xLUk2+usfe/VUMYS+5miTJIVTO9
         VhLrNg3pQNVybJcPy2IJoVyBOfD2X9A/rFg6YhBTDN8I13u+QlkSZMFaX38vWQeIdhKk
         cc+BaoaQHLIYWhGdF0PxpZglJRCh547PWgCEyTYqGeR9VUrgaIXt5Ec8n0IJWa0mg5GF
         At/OUjF9o5g1hDFZhFrXlBO5dw8COyaxgvKbVXdnDJ1Rg+FB8ahlAE1ud0UmWM9PiZAB
         KJaA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX8zyMcPmtVZVXd+USJlK7DuBg0C5fULcDQV2mRsYQiE+dniZX9
	Shh3fMT3nEtwijntXDiYPX0=
X-Google-Smtp-Source: APXvYqxPydwRkFIs/8C7ee7u6dY704P5hM2ZPeA3+WAomzvBAbIjx/zPFn4hP4HgO6ON5REJScVoRw==
X-Received: by 2002:ac2:563c:: with SMTP id b28mr11105757lff.93.1566833883863;
        Mon, 26 Aug 2019 08:38:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:1288:: with SMTP id 8ls1922839ljs.12.gmail; Mon, 26 Aug
 2019 08:38:03 -0700 (PDT)
X-Received: by 2002:a2e:7604:: with SMTP id r4mr11141397ljc.225.1566833883381;
        Mon, 26 Aug 2019 08:38:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566833883; cv=none;
        d=google.com; s=arc-20160816;
        b=0n2v4RIiM1pXemAHhkJ19gulKbNWhg56ViftqCb4LoaNdv0DR/u8I1vaTXwbZ0BGod
         gm8kByZ8K9+Q939wcG2UsSzx4iNwQkK8lmOLbVikDyAy/Icl8sdWKtUBxvWYwmaGIbx2
         Wge/CsvT1z32TakHfiJbopNz2z6XnZP9gDjGUgnOAPvLTD537TBTlzb9Lq2EHRLNlftO
         Phg97ZR/AgafbgQYSEt/Dgu0/5756q9zyYpPBDC13kkHhYIR8r+kzXp9xiG0LdY90XGx
         Y4FUX81ZitL3Mf+DDqPzenmUcscFAMkY4Mqzq3lsDDk0r6C11rhLVHeNE9+Jbd1F2y2L
         pxgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Sh9DJjMgqXE7WeVQf/Tx2s2yKAPE6CjBynjLsZuWR9M=;
        b=xNsfs2H6hUw0o7dRG1YnY0z4H2kIb+NLIxyJ+q7laOmCsAbsnwZiWz7LJ1mqRixkH2
         mGL1WAx5Sioxc335dipLeeCsn+yu5yVLJo9LrOOXZlUbB+kJNC3oBTsqErGF+JcGKY5G
         SPXBnQDtt40OmgjGt1YdGLXRNAz8tENdr4hwnDEw+8okJkwmVwl+1jVyIXq1efygzolM
         +Ah/fX1rm5AVWp0wr1wvucLr2V404r6wAGYU+bep6ItKMb6XZrw1jxXeYhgX+87oWEsa
         m8GLjsCRtcXfzcb4/CtiXr0qy95AI56uAlA9KOavuXuldbkC4dyl3O7sz5gq8DDipY7u
         pkYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lDltRrG2;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id z16si230653lfe.0.2019.08.26.08.38.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Aug 2019 08:38:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Received: by mail-wm1-x344.google.com with SMTP id o4so15925271wmh.2
        for <clang-built-linux@googlegroups.com>; Mon, 26 Aug 2019 08:38:03 -0700 (PDT)
X-Received: by 2002:a1c:6145:: with SMTP id v66mr23582593wmb.42.1566833882631;
        Mon, 26 Aug 2019 08:38:02 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id 39sm37272363wrc.45.2019.08.26.08.38.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Aug 2019 08:38:02 -0700 (PDT)
Date: Mon, 26 Aug 2019 08:38:00 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Jason Gunthorpe <jgg@ziepe.ca>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Bernard Metzler <BMT@zurich.ibm.com>,
	Doug Ledford <dledford@redhat.com>, linux-rdma@vger.kernel.org,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] rdma/siw: Use proper enumerated type in map_cqe_status
Message-ID: <20190826153800.GA4752@archlinux-threadripper>
References: <20190710174800.34451-1-natechancellor@gmail.com>
 <OFE93E0F86.E35CE856-ON00258434.002A83CE-00258434.002A83DF@notes.na.collabserv.com>
 <20190711081434.GA86557@archlinux-threadripper>
 <20190711133915.GA25807@ziepe.ca>
 <CAKwvOdnHz3uH4ZM20LGQJ3FYhLQQUYn4Lg0B-YMr7Y1L66TAsA@mail.gmail.com>
 <20190711171808.GF25807@ziepe.ca>
 <20190711173030.GA844@archlinux-threadripper>
 <20190823142427.GD12968@ziepe.ca>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190823142427.GD12968@ziepe.ca>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=lDltRrG2;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Hi Jason,

On Fri, Aug 23, 2019 at 11:24:27AM -0300, Jason Gunthorpe wrote:
> On Thu, Jul 11, 2019 at 10:30:30AM -0700, Nathan Chancellor wrote:
> > On Thu, Jul 11, 2019 at 02:18:08PM -0300, Jason Gunthorpe wrote:
> > > On Thu, Jul 11, 2019 at 10:16:44AM -0700, Nick Desaulniers wrote:
> > > > On Thu, Jul 11, 2019 at 6:39 AM Jason Gunthorpe <jgg@ziepe.ca> wrote:
> > > > >
> > > > > On Thu, Jul 11, 2019 at 01:14:34AM -0700, Nathan Chancellor wrote:
> > > > > > Maybe time to start plumbing Clang into your test flow until it can get
> > > > > > intergrated with more CI setups? :) It can catch some pretty dodgy
> > > > > > behavior that GCC doesn't:
> > > > >
> > > > > I keep asking how to use clang to build the kernel and last I was told
> > > > > it still wasn't ready..
> > > > >
> > > > > Is it ready now? Is there some flow that will compile with clang
> > > > > warning free, on any arch? (at least the portion of the kernel I check)
> > > > 
> > > > $ make CC=clang ...
> > > > 
> > > > Let us know if you find something we haven't already.
> > > > https://clangbuiltlinux.github.io/
> > > > https://github.com/ClangBuiltLinux/linux/issues
> > > 
> > > What clang version?
> > > 
> > > Jason
> > 
> > You'll need clang-9 for x86 because of the asm-goto requirement (or a
> > selective set of reverts for clang-8) but everything else should be
> > good with clang-8:
> 
> The latest clang-9 packages from apt.llvm.org do seem to build the
> kernel, I get one puzzling warning under RDMA:
> 
> drivers/infiniband/hw/hfi1/platform.o: warning: objtool: tune_serdes()+0x1f4: can't find jump dest instruction at .text+0x118a

Any particular config that I should use to easily reproduce this?

> And a BPF one:
> 
> kernel/bpf/core.o: warning: objtool: ___bpf_prog_run()+0xd: sibling call from callable instruction with modified stack frame

I think this might be related to this?

https://lore.kernel.org/lkml/cf0273fb-c272-72be-50f9-b25bb7c7f183@windriver.com/

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190826153800.GA4752%40archlinux-threadripper.
