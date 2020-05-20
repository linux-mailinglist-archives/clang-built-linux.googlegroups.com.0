Return-Path: <clang-built-linux+bncBCW3JUV5QMEBBWN2S33AKGQEHRJ4RBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc38.google.com (mail-oo1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id E95071DC102
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 23:12:58 +0200 (CEST)
Received: by mail-oo1-xc38.google.com with SMTP id y22sf2278141oos.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 14:12:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590009177; cv=pass;
        d=google.com; s=arc-20160816;
        b=PZEPJV1tRjbrlU6oOCRH9d0pp6wd3svPnLjhsbYaE4h70ASEasPJDtCWc+KAyJsv6v
         JE0/HqGGnjQ/0f06jIa0gcd2w7jCClGAVnNMfIlH4/5cwjNYkf8BX/jlxnEJ+TK7wl/f
         xW7H148pVBIvnSdEemu6h1cZwaeAM30RD7+f8BApM8Sm68o4QzXsy3ncgcDaEWQ/t08S
         ooYOV+xaSrZDIIaKFzgaotbzi587osl1ORvotCurP3DCPnRfaZAMHCAzl9guTBUXcokN
         dTob4+Tu6c07Wm1zsDljlpzNVbX/qlVRYmR1VraU5mLei5B169XTJHt1D1+G3OJmsBcx
         ahTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:user-agent
         :in-reply-to:mime-version:references:message-id:subject:cc:to:from
         :date:sender:dkim-signature;
        bh=y9ZQ7Ch5DGdoGDMvAMMkBftdDTOxh14Af/XoL51jI7s=;
        b=gkoqTimJ9mU8vEOyQIYJjzg7vkRldg1XC43V0vbSPstml7g8kwwQcrtRmrQPseueXd
         PVZOM5/NHpAQA6m0KQx9KmcgflU3zwnis+xuTMrcazTY/5Zf0T0qOG8psWqs6XA+4YL3
         6DSJKfcqMZAhvXPgwmww0QyJGrkoHFdBLjYlAEyNgtEOPhZTpX7rG7SGWHnIBEkWZIUn
         1II74zfj17XN0Tl3Og8fqq4E1eYeq75ce7TkGjYtvuPFT/n8jARXKTEVPPtWqr1Dye+D
         4G1LnOwKwrw4QranGD0uYUuW20ciIABILcBrNFq3VRUFJ1RB/JPyA/TAJ6wEdDV4E2Rr
         mBjQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ZKT3H8Y9;
       spf=pass (google.com: domain of msnitzer@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=msnitzer@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :in-reply-to:user-agent:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=y9ZQ7Ch5DGdoGDMvAMMkBftdDTOxh14Af/XoL51jI7s=;
        b=fEmJLSkOB2AhgGYileZs2vWBVi8U9T5JIgU05xzrVMbwy5QxEE2L+p13U2w1xST18L
         HVc7zwMvWwuT/SZkLp7PGx31o0M9koyUEQlrR6YA+mKRBF6mRqRprez1km3YFQsGDEXN
         OuFEa8n/hEvywPmFikWshVBo4jdqaH8Cj3TZ2WpV/PDvEnEDQ3iNeSSYiThr5suDdx1n
         lbZd69Y5XQmpsI1ODy5GcMYLcts/qM5Cfvoxl7OYoHcbgVF9khJzjb901jrn+pvAfPMG
         TKI40tz0w1v/X7cQlOv1TFosJy30jggodwxC7fhbA7BEgeidGGWFyUl2FXIYAAS81lJU
         vwGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:in-reply-to:user-agent:content-disposition
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=y9ZQ7Ch5DGdoGDMvAMMkBftdDTOxh14Af/XoL51jI7s=;
        b=NNUTXzHWH4PUpi+ypEzYA1hInHiKe+1D19BbyEDzPEmB5+0spfJJnBvlMHvy/Jbwtv
         SblmSzlSx4OIzDC2tM8BYGOnN8bOfzf7t4FvmbJIjfsDBd1fh02tx/SHsIRoozhE0VPX
         OefnSsN8/jPgO9jqi5PD4sxrR8SgAtZxZOqghU2Cf+aLArdMuUHcOxbkhXuOxRq5zTgX
         RJUziXaIQfyaoyXNKypjeXqZbKcNpbMqoQLc+wVHhB9lP6t6c4fmtvF0xOM+0A3Z59js
         A/hX7ph8RoaLUeYt+fHS/6v3iVE3kjRIdW6KSquCgwfFXLSCsjX7NSw1QkWiAsdVBmcO
         0vTQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532cG9uGPPeQiUzTsud+aF+Ov1xApGUMFVQc78EovUlJUgEMRDeQ
	WmLTqTC+6DMqwaTY/a+pNpc=
X-Google-Smtp-Source: ABdhPJy+1/t3GzOIcsBe22sX1OdsXvIHUuh7aa/eEt7cRlymY1GVBYGHYmNxMi6sUakJUKdxFeQS1Q==
X-Received: by 2002:aca:a948:: with SMTP id s69mr4655590oie.140.1590009177668;
        Wed, 20 May 2020 14:12:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:1b0d:: with SMTP id l13ls31206otl.5.gmail; Wed, 20 May
 2020 14:12:57 -0700 (PDT)
X-Received: by 2002:a9d:ae9:: with SMTP id 96mr4869821otq.16.1590009177202;
        Wed, 20 May 2020 14:12:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590009177; cv=none;
        d=google.com; s=arc-20160816;
        b=eYqvyOT9RyTe34isHOc3iaFeAIRJTl7nhs0PuJ+Uvg3kXGbU+KUBy7UyZRvEUcmT2+
         y2py47yT4MSrBk52v8TjohVvOBPkcagoQEubvzwmteWg8Gl45XnYTSqGpRDbZ9Wq2NAS
         zRPAlIPwaLRZ3BYw+NcLIlkOFPnH4+M8xheo0KARCAqWwBC4jWPsNZbj0+T40mnRbP6x
         R4/nP4nY8ERidowXQ2p5U/QVYk/+wfUtGW5AJBvf3W621sxdcw1/uyGNgx22kJzPJT40
         L016U9VZMHg6fQm4Qn7Tb7zowuRS16ce2XsUXLS/xpy749CkTKJyzAQxbWkkKtJvftUo
         G3sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:user-agent:in-reply-to:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=bmEmgyDGSe27fmwdkre2yIsSctRSOH84Xyf/3ci5Sfs=;
        b=aIrjGYSgQCaW+DK9uW2dtaq3R4qddwswzvTu4d1wUFxMQ4GWLjqjEcD2yKlugB9rPM
         AiTQIJ33umrg52yBF7XTEIvPvi9jHZ54AVoZwnN9famZTq6Yg5xxlX7W3KRndy0a819y
         jPPyBg1VNIj+Y4Gd493crLTh5QM2r2ABP0B9a/8XExfK/IJRRyS7si9A1RNfzVvCu2p8
         +0+e6WIDCf8zi1bk6tTae6+ZO6BUN838wlEea3bK8ZUva4glrdH3tjwMtzfRB4kM8B8k
         INtxpINnu9tY6MC5eddLYBWn4qxzjcmdO5PQx77vkv396AOOAhf+OVJJa1tNQ0uSDC6G
         TaYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ZKT3H8Y9;
       spf=pass (google.com: domain of msnitzer@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=msnitzer@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [207.211.31.81])
        by gmr-mx.google.com with ESMTPS id b20si239006ots.0.2020.05.20.14.12.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 May 2020 14:12:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of msnitzer@redhat.com designates 207.211.31.81 as permitted sender) client-ip=207.211.31.81;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-479-XpAsycwcN3CUioAWjGtlFg-1; Wed, 20 May 2020 17:12:52 -0400
X-MC-Unique: XpAsycwcN3CUioAWjGtlFg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 66BD88015D1;
	Wed, 20 May 2020 21:12:51 +0000 (UTC)
Received: from localhost (unknown [10.18.25.174])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 195B45D9E5;
	Wed, 20 May 2020 21:12:51 +0000 (UTC)
Date: Wed, 20 May 2020 17:12:50 -0400
From: Mike Snitzer <snitzer@redhat.com>
To: kbuild test robot <lkp@intel.com>
Cc: Hannes Reinecke <hare@suse.de>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, Bob Liu <bob.liu@oracle.com>,
	Damien Le Moal <damien.lemoal@wdc.com>
Subject: Re: [linux-next:master 8923/10701]
 drivers/md/dm-zoned-metadata.c:224:14: warning: no previous prototype for
 function 'dmz_dev_zone_id'
Message-ID: <20200520211249.GA5802@redhat.com>
References: <202005210514.4YeeHabo%lkp@intel.com>
MIME-Version: 1.0
In-Reply-To: <202005210514.4YeeHabo%lkp@intel.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: snitzer@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=ZKT3H8Y9;
       spf=pass (google.com: domain of msnitzer@redhat.com designates
 207.211.31.81 as permitted sender) smtp.mailfrom=msnitzer@redhat.com;
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

On Wed, May 20 2020 at  5:00pm -0400,
kbuild test robot <lkp@intel.com> wrote:

> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   fb57b1fabcb28f358901b2df90abd2b48abc1ca8
> commit: 58f6902a2eba7313d37d30bce18a331460f19699 [8923/10701] dm zoned: metadata version 2
> config: arm64-randconfig-r005-20200520 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project e6658079aca6d971b4e9d7137a3a2ecbc9c34aec)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm64 cross compiling tool for clang build
>         # apt-get install binutils-aarch64-linux-gnu
>         git checkout 58f6902a2eba7313d37d30bce18a331460f19699
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>, old ones prefixed by <<):
> 
> >> drivers/md/dm-zoned-metadata.c:224:14: warning: no previous prototype for function 'dmz_dev_zone_id' [-Wmissing-prototypes]
> unsigned int dmz_dev_zone_id(struct dmz_metadata *zmd, struct dm_zone *zone)
> ^
> drivers/md/dm-zoned-metadata.c:224:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
> unsigned int dmz_dev_zone_id(struct dmz_metadata *zmd, struct dm_zone *zone)
> ^

Fixed by making dmz_dev_zone_id static.

Thanks,
Mike

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200520211249.GA5802%40redhat.com.
