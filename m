Return-Path: <clang-built-linux+bncBDMMLW4BXYHBBBVI7CCQMGQEWT35DVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3e.google.com (mail-vs1-xe3e.google.com [IPv6:2607:f8b0:4864:20::e3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 96A5139DCB2
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Jun 2021 14:41:43 +0200 (CEST)
Received: by mail-vs1-xe3e.google.com with SMTP id b16-20020a67cb100000b029025a1d69d58asf5725926vsl.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Jun 2021 05:41:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623069702; cv=pass;
        d=google.com; s=arc-20160816;
        b=eB86MCq1iEI79FKr+o8VZsgTWC4NE2neQOrTmNfznDMMQ918NGjfXlpr1zGQgD/DRc
         kV8oMRKzKBHJVHeVwSleIaslSXDNs7+699W4NTa6oE0d0m7ngsBZon2vVo7lQhwzeIOE
         C65TumKeHExB3rbtwtgBJ3ZSK1gLa4+dCdfhKnPGmxYE+jAA+TtNs7zjqAQuKErqyqd5
         G9xhAJgtehhXjIsMPV4ZNq+hmZUubK8RZiL9cxgXQgzznTTdcMDMtaqtUEkG+9Y8Mwcg
         rkmS6y3T4uaZI5Cq86O4cwPzAy5H6GsrhmGZLpkoymAL/AaQAx/Dx3xpQUXcozGYbwmU
         Bcdw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=YViuYqGJQ8wyShTqEVi6MrtnOx0a2QjuqYHA9EXx4y8=;
        b=NMkNK8M6jOw95mzHW2bwoblfGnWO20MFlJqfytQ9KArhNEt6YSokhtxgjqf8M9yiAT
         N8bIBG/ANx5bqNa4genLSqv8djGS+kY4msqImVk+HTAlUaPT7FoyDDdJ0jq7kEBdJKps
         JTPzrcpejmv3MCh9SHXXZGp1HieVuhR43/cbdxj68eyrm+BBu7MzV6dKEQfwxc6eST5c
         4iH8XR2RY8ipHxBGJlH73jXDRD88rS/xj8/hWBSOL6dxSir8OiYODXnBaNSawHHFFAFh
         iWyRsnp04SFOqHjvDS17QqgB0F2aAmmCWVY20znvVQHIISdjNcfxjddtiLTTyUX4yXMF
         o/IA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=BU+WD7cv;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YViuYqGJQ8wyShTqEVi6MrtnOx0a2QjuqYHA9EXx4y8=;
        b=sxBdz86Aqn9Mdr2jlEJJzQhPbf7oaypeVQ95b/bUFf40jArn2NQNhZoEceEXOpYTDQ
         LEReFwgFyCOLcTiVG3bbrNQXz4PH4xEGPFUK0lFK82YDqJHJFseNseGFZFwQ7400XKk5
         tiA9Dm4e28rz/3gzGAz/rUWHd23GUbyV4pds/lWPiDFjblKAAn9ywPv+1i93DGNZPUmk
         GhViskUi+dZ63b3A4R1ZMPCVBF3ds5As+pIgTpFtMdpor2T7kUmHfgMUB0n9/373gjmP
         OFLVXsZrSIt4tomeYnBiGOQhZ7UBv8gcyGbK3MXxLIGgPH9lhp+mkj5cyrcBoJDyadEV
         NtlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=YViuYqGJQ8wyShTqEVi6MrtnOx0a2QjuqYHA9EXx4y8=;
        b=en2X3Svct1b/c+5yz5dDu49z6e2qoUc9E8r6vKbSQFJXj7RbF+uPwBVt56iFCdrSxU
         esYZz0BaC8ets8Dah0arqk564dkFezUqBn2sxo6Jf4tc17lXyPtcAmUrNk+TvSttNsEK
         SZlGCVB3D++8T/eQE9BxYp6QzCmConoqtu0WHJ9RLhMuS85K1SeoYX7cGODSu+1S7X48
         suMLWmPUCRV2bvF99HVeJJK6CBYCorp8zvVB/ym1GSuyy6SNz5rZHvtapPaNV9EyX0Wm
         hbFUGq9HFmZYZ9lb67t96zJFmNMdqb05VtQqub+uA0haKCozQoG9fT7HvkpPEtJ7H2Zq
         7vqA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5322o3v7qq54r9vdW6RZgDS+9Wh/zaapZ1YhfFABwB7y67ZG8rYt
	OG9c9oN2BEE08VjXf6GmBxg=
X-Google-Smtp-Source: ABdhPJyREyNfWTctyn2rPeXGX+Axx0be6qI5+XMRhE+srE90xrSkYoMjgYSsuSzr12ZpKEyLfC2IOA==
X-Received: by 2002:ac5:c389:: with SMTP id s9mr7608432vkk.5.1623069702736;
        Mon, 07 Jun 2021 05:41:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:d188:: with SMTP id w8ls442579vsi.1.gmail; Mon, 07 Jun
 2021 05:41:42 -0700 (PDT)
X-Received: by 2002:a05:6102:b06:: with SMTP id b6mr2088480vst.27.1623069702266;
        Mon, 07 Jun 2021 05:41:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623069702; cv=none;
        d=google.com; s=arc-20160816;
        b=uCA+MK7MW8dshTDq7aT+NJnEF8zDa9GZ7oCiwXvm7IuBDfrUQWFTfFqonREHsNV5bN
         5azSkDoaZeDfygyw+8+DibFrthNlbGU1kG/oJXv8tiip101Yf/bmy2jD+UZ1QrHRVs1F
         hkm5ZS+X4Vcgrf8vIMR6dW0UiZZPiB9pKPB/om7vpQSsKuuwJy5KpPuGg7p2fR3i3743
         Nc85sGnt2rHnfKFQv23Lq6ZAvNlYSz+X+tMsmVfj7wBC6mMzLffNWiM5gqdq5ejBW+fz
         570/KWDGfw2rK1fACIBjehnLFXradVGlkcz3Csra4tUndK9gkZcSXGY9/PEabKSsTxpC
         F59A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=RXxg+R5GrVEYC2G4MVu5tM4s5nbr/L9DwiWiCoZnbMA=;
        b=h0XjTd9MO8RG0Zztg7lE4SPHvQEqxvkzbtVDBJmqNamruqZotuaFYqJeAP28n8qPbg
         23NK8zRe5SRX95ZTPDcUlRyFP2Us5B2eefZU0ajouTbaWm5yqho8UKMsfG2lrjKuQel5
         TSK3rXPrnkGO/Wm/yLPr1a6gehbwEIc26FMe0tEZFBgYE+mwZcvtxFnj7Gr6FF9Lmz08
         6tQo8y1/nONUPt54n6dJYQFWY08MDXmPhyzIoGMvJiWGbr3prE66MRprVQzptvCsx1WT
         iAliRn0N5h8r/VpTOBT6iqpBwGgQenanzKbjZ6pma6mX9NyUKa/a/57Qo7EkCJIBevPo
         50vw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=BU+WD7cv;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k62si1193815vkk.2.2021.06.07.05.41.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Jun 2021 05:41:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 469136108C;
	Mon,  7 Jun 2021 12:41:40 +0000 (UTC)
Date: Mon, 7 Jun 2021 15:41:37 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Doug Ledford <dledford@redhat.com>, Jason Gunthorpe <jgg@nvidia.com>,
	Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Adit Ranadive <aditr@vmware.com>, Ariel Elior <aelior@marvell.com>,
	Christian Benvenuti <benve@cisco.com>,
	clang-built-linux@googlegroups.com,
	Dennis Dalessandro <dennis.dalessandro@cornelisnetworks.com>,
	Devesh Sharma <devesh.sharma@broadcom.com>,
	Gal Pressman <galpress@amazon.com>, linux-kernel@vger.kernel.org,
	linux-rdma@vger.kernel.org, Michal Kalderon <mkalderon@marvell.com>,
	Mike Marciniszyn <mike.marciniszyn@cornelisnetworks.com>,
	Mustafa Ismail <mustafa.ismail@intel.com>,
	Naresh Kumar PBS <nareshkumar.pbs@broadcom.com>,
	Nelson Escobar <neescoba@cisco.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Potnuri Bharat Teja <bharat@chelsio.com>,
	Selvin Xavier <selvin.xavier@broadcom.com>,
	Shiraz Saleem <shiraz.saleem@intel.com>,
	VMware PV-Drivers <pv-drivers@vmware.com>,
	Yishai Hadas <yishaih@nvidia.com>,
	Zhu Yanjun <zyjzyj2000@gmail.com>
Subject: Re: [PATCH rdma-next v1 10/15] RDMA/cm: Use an attribute_group on
 the ib_port_attribute intead of kobj's
Message-ID: <YL4UAarihtbwyzoB@unreal>
References: <cover.1623053078.git.leonro@nvidia.com>
 <00e578937f557954d240bc0856f45b3f752d6cba.1623053078.git.leonro@nvidia.com>
 <YL3z/xpm5EYHFuZs@kroah.com>
 <YL36OFkmlxJiqjvc@unreal>
 <YL4Bcm2dOyWKLGJ7@kroah.com>
 <YL4E7C7tVUMy3poz@unreal>
 <YL4MOyxQi1O3dog5@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YL4MOyxQi1O3dog5@kroah.com>
X-Original-Sender: leon@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=BU+WD7cv;       spf=pass
 (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=leon@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Mon, Jun 07, 2021 at 02:08:27PM +0200, Greg KH wrote:
> On Mon, Jun 07, 2021 at 02:37:16PM +0300, Leon Romanovsky wrote:
> > On Mon, Jun 07, 2021 at 01:22:26PM +0200, Greg KH wrote:
> > > On Mon, Jun 07, 2021 at 01:51:36PM +0300, Leon Romanovsky wrote:
> > > > On Mon, Jun 07, 2021 at 12:25:03PM +0200, Greg KH wrote:
> > > > > On Mon, Jun 07, 2021 at 11:17:35AM +0300, Leon Romanovsky wrote:
> > > > > > From: Jason Gunthorpe <jgg@nvidia.com>
> > > > > > 
> > > > > > This code is trying to attach a list of counters grouped into 4 groups to
> > > > > > the ib_port sysfs. Instead of creating a bunch of kobjects simply express
> > > > > > everything naturally as an ib_port_attribute and add a single
> > > > > > attribute_groups list.
> > > > > > 
> > > > > > Remove all the naked kobject manipulations.
> > > > > 
> > > > > Much nicer.
> > > > > 
> > > > > But why do you need your counters to be atomic in the first place?  What
> > > > > are they counting that requires this?  Given that they are just a
> > > > > statistic for userspace, making them be a u64 should work just the same,
> > > > > right?
> > > > 
> > > > The statistic counters are per-port, while the cm.c flows run in
> > > > asynchronically in parallel for every CM connection.
> > > > 
> > > > We need atomic variable to ensure that "write to u64" is not
> > > > interrupted.
> > > 
> > > On what system is "write to u64" interruptable? 
> > 
> > On 32 bits, and yes, we have a customer who still uses such system.
> 
> So you will see what, a "tear"?  Or a stale value?

Does it really make any difference for the users? The end result is that
value is incorrect.

> 
> > > As these are per-port, do multiple threads try to increment these at
> > > the same time?  
> > 
> > Yes, CM connection can be seen as thread. Bottom line everything in parallel.
> > 
> > > And even if they do, what happens if one is 'dropped' somehow because of this?
> > 
> > Probably nothing, we increment the statistics only.
> 
> So you are hitting cache lines for no good reason, probably not a good
> idea, you are wasting cpu cycles for nothing :(

I prefer correctness over performance optimization in paths that far
from being hot.

The thing is that we have such correctness for free without any extra
code complexity by simply using proper data structure. Why shouldn't
we use atomics?

Also, we aren't talking about some driver code, but about core infrastructure
for whole RDMA subsystem.

Thanks

> 
> thanks,
> 
> greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YL4UAarihtbwyzoB%40unreal.
