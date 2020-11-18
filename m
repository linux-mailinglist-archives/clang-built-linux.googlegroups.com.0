Return-Path: <clang-built-linux+bncBCZNB4MJSMHRB4EQ2L6QKGQE7AKOZHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id A3D892B7435
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 03:35:29 +0100 (CET)
Received: by mail-ot1-x33f.google.com with SMTP id u25sf330770otq.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 18:35:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605666928; cv=pass;
        d=google.com; s=arc-20160816;
        b=EZ3co0VEnNG7kd8FqheWQZpmFbzl/kj3o8bJ/jmW0QUSLoVe1KScMhcba1nl9rnm5a
         k9cIfUvMMoK8eNqVG9hjqrf+dv6b/gcBeSsLDEEAvpWS0oJat5b99A4gkxAuWasgtG7A
         s0i7MgU1pYyDIIuOT+IPxnjAAK1VfqYdkBXuUncRfebBChPW+3njKoiu6aMVo3+mMX35
         mhW+Y8bWgjONxpLVoKL97d55/GgQD+PQGDqn7FsU82boaBH6LHUtZ1zFgvRNTvIRZsdS
         sOnFtuI6FabxX2nRMFTs3AmWe5gsadh9EZNPk67Uz3WQWPbUPtvchMQn0WxVgl39htWS
         sxAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=6p73fgJunzEWuQqNpHUi9kl0+7qntRJFzcMbkcueF04=;
        b=FSujZrnj6VE0TTf0mGz9Gq+iITogzFpM4kZF6rtQrcJvHJLD6SUCUnCCdeucLzn6sy
         wOvbvvmvSV63+eBTQVLBUPX5bYfKwAU8ipNpVerObNbaGq27a7ZSX7B6Gk162f2apLIB
         6FnozSWoJzuheyJAGzIXO/Y4sMU/QbVJ5jLNxh48RDI1tGFg25H5ptR3WIJdkapEauNT
         u/6UjVQo9ptBcKmkyGWHrscOMDiRjm0J14U53jNKEfMgHxsOv7Df6U01q8TfVxhUCLQI
         ccik/Ch2++j7LEoUXw6lIIjfAtWYZm8uyF7333fXFnMWsm5wCMbFxt/7mIWgXnaClo+8
         qB+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=dL2R1+5g;
       spf=pass (google.com: domain of ming.lei@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=ming.lei@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6p73fgJunzEWuQqNpHUi9kl0+7qntRJFzcMbkcueF04=;
        b=j4c5EAZXLyLvLXvv6Kmq1P+0sA8L8B7VfcA6vNP/TeqyuDybKKVhZfTwgOFhbBmN4O
         N0KaZDgLUJPY9ARJm4b0UWEYrE7OGfjvjRVnr4f6hAXDUkFwGXlv9M0j0L0UYYy3SKDl
         2RdGkXiMitmkoDCiJNOacmb3L30gcf/sgSUcvpU6XIRy+x7UhaWWCkPgBbDkKhhzqXF6
         hY9OU8QwpRQJyEhLwJ6YQEehG+SpD3f7MuRAzUbsrbTYvPjGIpQCI9cf5K/vKma2qvMi
         KrDtOhAbDF+K+u69vzNjiQpANTjM2+2Jg+w6Nrqh4T5MKk03bo+tkJ+Lmu50FHK8rNQw
         HZkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6p73fgJunzEWuQqNpHUi9kl0+7qntRJFzcMbkcueF04=;
        b=jmAejjnZm/yVvne9YkmKAaAE0rrnmVNIJrC006nQM84yzxXD6IdMnCeWzD4miJMlIx
         wtDP7lCNqaaSRNTbEaywrpbjLKp6M9hTIN5u2Al5VyH9ZpgYM3OeyluAcYy3DJ1V0eum
         7ctazJcrFQdQ5JCRTEMwSALSpMz64KvMpQf+T9PodqJVGeBiT9ZB5lMAOqOsC0vazERT
         gf6RchcecOCQle8Z5QtdX5Xn4pLmo8+/Q0IARDldKhZZf9DEmHS/e230lnlUVRrO0KpJ
         HNyBKc26nbk5wd0hxk7G3efp1hgXplnxZgCmajLBX19p9wYpS3/NUxXPZ5LDTdT443+v
         WelQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5328tF4W3lHgipG8nTmZ4oHeQ7GKieNGfAEOdbVoaQh8CYVUNq8l
	4sGPpbmajkZDtVQZRa0NU2o=
X-Google-Smtp-Source: ABdhPJy4EqTvjqC1N04k6HGMqd6WUGNX7m4W/rgoXGP+tgIHYC2LCXVAJc88xpeAwf21XS8IemhbwA==
X-Received: by 2002:a9d:5904:: with SMTP id t4mr3278901oth.109.1605666928596;
        Tue, 17 Nov 2020 18:35:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7e9a:: with SMTP id m26ls4664108otp.7.gmail; Tue, 17 Nov
 2020 18:35:28 -0800 (PST)
X-Received: by 2002:a9d:4808:: with SMTP id c8mr2882761otf.194.1605666928221;
        Tue, 17 Nov 2020 18:35:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605666928; cv=none;
        d=google.com; s=arc-20160816;
        b=L1I5qZy+rF7oW9yrJefN+8snmUMymPk0gE7ItDALYf9qM5kqd8oWcKMxTHFeVFNV6u
         cKAQSSu6fMJU37z3VaksdJ6eJzs0hFRkx6u62CDmBJw7hxFvIpjj6DqdnWOVMwPx5Xcb
         uJXCj34RcQ2Vn8rgF79UZgdN08H1nKyGnxhVHJkxNObMBzutBq966Ny5/YeZGXfgZB6w
         xBkvAG9pvPVXuVHFBvocgPoR2dL4e/6F9WD5+rdQXalbzKBq9VRzdYppXL+0c09goyTj
         MmUNQ/lzSYsdWitmrTfjJeWGhmTziNNlKGAKhiVdXWfiEdQPwNrQ61jwt0h0GJtUoZ8Y
         8TOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=JFrTcci2wlaeLdIrVz8jfx8+3B+YgQbI/x5TyyUOtds=;
        b=b5xbjnFz62K9Ue6tCnVBXO6U5FRea75MgcwL4XzT4Zpiwy7JLuY2CdJK27gk8sSVrB
         vdtkhuTrpd2TOEUwNH7yK/5NxhKNHxOCP1AidQMrvt9FxDvI95hBQRcNPXoz0NlDGI3I
         ihZVSVqCjSADIQWHgVUKgYAIyeSTAmLGj+cHzsFliWn9evAuAcNvSF276NtLVKc7io3K
         LGoNdtGUHxW6eSlzq6EqJ3F63B3gAGyGKBvnNzUrsdFry7q4bgQZF/dDtyH6JIzDkzC1
         GopZFKq39qA44+hMxBbu0xt6PShWBEY4PojCgNyDdA3weNePAt9CERLgtpuDjhJ0SlP+
         rK6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=dL2R1+5g;
       spf=pass (google.com: domain of ming.lei@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=ming.lei@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id p17si1728294oot.0.2020.11.17.18.35.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Nov 2020 18:35:28 -0800 (PST)
Received-SPF: pass (google.com: domain of ming.lei@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-588-pAusgSNUOHmc7PBXBskx2w-1; Tue, 17 Nov 2020 21:35:23 -0500
X-MC-Unique: pAusgSNUOHmc7PBXBskx2w-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9AF5C10074B1;
	Wed, 18 Nov 2020 02:35:21 +0000 (UTC)
Received: from T590 (ovpn-13-160.pek2.redhat.com [10.72.13.160])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 12B845B4AB;
	Wed, 18 Nov 2020 02:35:11 +0000 (UTC)
Date: Wed, 18 Nov 2020 10:35:07 +0800
From: Ming Lei <ming.lei@redhat.com>
To: kernel test robot <lkp@intel.com>,
	Kashyap Desai <kashyap.desai@broadcom.com>,
	Sumanesh Samanta <sumanesh.samanta@broadcom.com>
Cc: Jens Axboe <axboe@kernel.dk>, linux-block@vger.kernel.org,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	linux-scsi@vger.kernel.org, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, Omar Sandoval <osandov@fb.com>,
	"Ewan D . Milne" <emilne@redhat.com>,
	Hannes Reinecke <hare@suse.de>
Subject: Re: [PATCH V4 12/12] scsi: replace sdev->device_busy with sbitmap
Message-ID: <20201118023507.GA92339@T590>
References: <20201116090737.50989-13-ming.lei@redhat.com>
 <202011161944.U7XHrbsd-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202011161944.U7XHrbsd-lkp@intel.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Original-Sender: ming.lei@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=dL2R1+5g;
       spf=pass (google.com: domain of ming.lei@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=ming.lei@redhat.com;
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

Hello Kashyap & Sumanesh,

On Mon, Nov 16, 2020 at 07:49:31PM +0800, kernel test robot wrote:
> Hi Ming,
> 
> Thank you for the patch! Yet something to improve:
> 
> [auto build test ERROR on block/for-next]
> [also build test ERROR on mkp-scsi/for-next scsi/for-next v5.10-rc4 next-20201116]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/Ming-Lei/blk-mq-scsi-tracking-device-queue-depth-via-sbitmap/20201116-171449
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/axboe/linux-block.git for-next
> config: powerpc64-randconfig-r026-20201116 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c044709b8fbea2a9a375e4173a6bd735f6866c0c)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install powerpc64 cross compiling tool for clang build
>         # apt-get install binutils-powerpc64-linux-gnu
>         # https://github.com/0day-ci/linux/commit/cc286ae987be50d7b8e152cc80a5ccaa8682e3ff
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Ming-Lei/blk-mq-scsi-tracking-device-queue-depth-via-sbitmap/20201116-171449
>         git checkout cc286ae987be50d7b8e152cc80a5ccaa8682e3ff
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
> >> drivers/scsi/megaraid/megaraid_sas_fusion.c:365:41: error: no member named 'device_busy' in 'struct scsi_device'
>            sdev_busy = atomic_read(&scmd->device->device_busy);

This new reference to sdev->device_busy is added by recent shared host
tag patch, and according to the comment, you may have planed to convert into
one megaraid internal counter.

        /* TBD - if sml remove device_busy in future, driver
         * should track counter in internal structure.
         */

So can you post one patch? And I am happy to fold it into this series.

Thanks,
Ming

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201118023507.GA92339%40T590.
