Return-Path: <clang-built-linux+bncBCZNB4MJSMHRBJ7VVCAAMGQEOE6SW7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 03BC22FFA87
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 03:38:33 +0100 (CET)
Received: by mail-qv1-xf3f.google.com with SMTP id h13sf2811543qvo.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 18:38:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611283112; cv=pass;
        d=google.com; s=arc-20160816;
        b=I9TX2Oc+diGRPOGar6fwYopzh3Dq+M/Ua4N/oV7tPrMNhr7lkwh/HbebUlT0oyJgW5
         gGvlSVx3hw/2lSK8OZ3+bAncC1/PIs8rbMZBKtdnNMhFDloJo8MsrUwh67/NHf98XpZv
         CBv20wrRydBLSL/VRno/xeW/VBcFbKuocxo82C3Yl9mw00rePBVNknzmSGx+4TgcTPl+
         tkvkEarJJd00VkP1OlHabpAjfLjdRVuq0UIaZXnesXd8r8JGlKBLyQWn9YAuUUGWbUrU
         hGMweeNeyfsvNRS5yDozh0MoxltYkN0+hW18AIS1AZF3/vsDW+DwN5dMdeoJdVR+7//Z
         FdZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=hqJqmpsYssTX7WYHDPc/IxEMUIao6jK3wnI4Vi76fU8=;
        b=z/qCRqa9+MyygKsbuBb/Y1sGwDcAl0alSzXEHSgaJkbYZ2+5SazIlwthEd5cX0ilQT
         JVWml0AbyBgZcmo1H2RG5kbLLyBpaCTQa0V/liqrIMPrGBpVYOhCmGq/F4A51Nu0rNVm
         MreQit+6JOCEVI11RXyZDgqhvildiASxvLi1JCHvQEEnLLrRV8ZbayBcvjaUsNQFH8km
         W/ibEorDX/ziYs7vf2wJWmHlIclNIT2SWxGmRMZY3El6zTtecxdGQQB1kgO/LlU72FKL
         SUHjPKb1Z5PuPrOPDPTEERjkW4wyRM8fsl+e/+eIhZkBzRDt3ThwhDAC5U5pY/oyq3ro
         T0iQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="UA/sMYrL";
       spf=pass (google.com: domain of ming.lei@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=ming.lei@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hqJqmpsYssTX7WYHDPc/IxEMUIao6jK3wnI4Vi76fU8=;
        b=UKtdAz8WFlfckPKXhqvtizw3VfabfFRzgixvFsGQ6/jqA7Ib5P1a0AuR3vZi5H7kTm
         v+BsmGaJEKGL3qjGaxbpqdqYyWDmlGsp7My9lOxalSz9FhaXJSsWTQNR6X91JuHSEaV6
         bHlWgde61k1wa+tex32z5+TCAES4DDu6TkGcgLo4hZ0jj0FogeFy0kP7uD9rQbap1lt7
         UINQ+gIn35w9lHX1cXdleaOCmSPy10PyXCfzminDUsb4eFOergXKrVAGHQO5sc+NMa08
         BOo7tgKxJ588z59JBI/rBdsVPdnJit74kMWUXP5tZYhMwls8rnSG83ilrsN2burS/Wr9
         Smsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hqJqmpsYssTX7WYHDPc/IxEMUIao6jK3wnI4Vi76fU8=;
        b=fH4jQh4JeSJUlyMf+3hOAvOBF5cuER4/slYDeGqrfpOJKFY/VzBHHO/UKcV2IJt8aW
         ZikNsojjNhiHae0y0WILHJsHsNuo96RAe2mn4pTtIfY5r43tnhGwlVnJVwUPl7gbvp5p
         TjHrsqcc3LkT9QD4okDXJ5VC24PR+yz8FdSz3zNm+ZvNCwrv4xwBil3HnU+faNPuM86S
         cKnapCfLcy76mS7PBlQLawjHPrUEGYUSvz0Cl8dd5sKK5Y6B2teyw95fzOK3lfVJCn6j
         UFZB6FB7MjGnYzJkKqqmJ0vzzO8dQjD7opbzNMNUcG2Sjq+xz0FVCTeNKBVYFQ0Wat26
         KGWQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530vR51c0hIv6PaqUB9OEZ/Y5x4mgRxpZEK9sU6lwJhiJv3OV+zr
	y18XhnWad6qSouDatma8kAE=
X-Google-Smtp-Source: ABdhPJwQWHJnLUah0cDhcmsYzDEjPe1+6HaQ14gSQGBvZlwEhN2zW9uvr2eq/aZB0AsIKtF1IXSmOw==
X-Received: by 2002:ac8:7411:: with SMTP id p17mr2547220qtq.79.1611283111911;
        Thu, 21 Jan 2021 18:38:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:3bd4:: with SMTP id s20ls1679076qte.1.gmail; Thu, 21 Jan
 2021 18:38:31 -0800 (PST)
X-Received: by 2002:ac8:6f4c:: with SMTP id n12mr2495759qtv.277.1611283111462;
        Thu, 21 Jan 2021 18:38:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611283111; cv=none;
        d=google.com; s=arc-20160816;
        b=pRkctNaVgXB7JnW+5l3gJzNSfKenPwfLLkqWvxVfMw7vmDwFTtJobhoXDttb0sPqGv
         J/hLZEHXKK0iovX9+YazpkY2ewYiCk0MoZUz2ma8uj6yfQDd8WOQj8Kctj4fbMvJU7ip
         rffGKoMROkvSW6/a5LRWGRAnwnaFa60nq2f6LoG/fPNT8nacdCAdBeWxBtxsvG/8bsjK
         y1OfemkkeRGK1n45Vi7FLvq71dMvY+XE7ouQGdAn2rPHapKZJPdUOM9JYTPvabGUyGea
         dfP9CtiV/VLQkjgjWknCrPQ3VZ2bXA+QmzqeejGC1kOmWmYhBglmMpF/t/Of2ty0/ZY1
         NShw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ynBiPQyFtjxmGrlqsgxzUnk3SZ6Vu8Uj0TI8ZD9tXiQ=;
        b=DW529el5mpI3ZbyHt9npXBqrc9trvkDyq05E5dp85Bsbae5IEdvudD1ESR8Q9bf0YI
         ON08UcHgOoOEluDlsD09v9zTcthhgsnwK16hdOdvsdCwGqTu6M+fyqfhTbeHJfrDbK6g
         CJI5nAj0f8k1NWGdBoyNccVfJBw6NcBoQ4nK+Pl4ZhX56aMJArD1Xl8rp2TqJmw9c6z+
         p6v7W+Zbaw1lkrHRSo5Uo8YkoLduy4Bj4cp2G8pcJOR/3AYE3yZp7JR2bi0w+4GYFD8w
         A5mq5A/gYyO21G6eJ0yb13w/lc6iMplsaE0TptIKyfqjXQ4MeLlnbOQJ7CuJjwCzjvjU
         EOCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="UA/sMYrL";
       spf=pass (google.com: domain of ming.lei@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=ming.lei@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id z94si675502qtc.0.2021.01.21.18.38.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Jan 2021 18:38:31 -0800 (PST)
Received-SPF: pass (google.com: domain of ming.lei@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-227-02K8jM1kN6uoVTJZJwDeCw-1; Thu, 21 Jan 2021 21:38:27 -0500
X-MC-Unique: 02K8jM1kN6uoVTJZJwDeCw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4F4051922960;
	Fri, 22 Jan 2021 02:38:25 +0000 (UTC)
Received: from T590 (ovpn-13-11.pek2.redhat.com [10.72.13.11])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C11B65C8A7;
	Fri, 22 Jan 2021 02:38:14 +0000 (UTC)
Date: Fri, 22 Jan 2021 10:38:10 +0800
From: Ming Lei <ming.lei@redhat.com>
To: kernel test robot <lkp@intel.com>
Cc: Jens Axboe <axboe@kernel.dk>, linux-block@vger.kernel.org,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	linux-scsi@vger.kernel.org, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, Omar Sandoval <osandov@fb.com>,
	Kashyap Desai <kashyap.desai@broadcom.com>,
	Sumanesh Samanta <sumanesh.samanta@broadcom.com>,
	"Ewan D . Milne" <emilne@redhat.com>,
	Hannes Reinecke <hare@suse.de>
Subject: Re: [PATCH V6 02/13] sbitmap: maintain allocation round_robin in
 sbitmap
Message-ID: <20210122023810.GA509982@T590>
References: <20210118004921.202545-3-ming.lei@redhat.com>
 <202101181225.2uTanVzh-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202101181225.2uTanVzh-lkp@intel.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Original-Sender: ming.lei@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="UA/sMYrL";
       spf=pass (google.com: domain of ming.lei@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=ming.lei@redhat.com;
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

On Mon, Jan 18, 2021 at 12:42:07PM +0800, kernel test robot wrote:
> Hi Ming,
> 
> Thank you for the patch! Yet something to improve:
> 
> [auto build test ERROR on mkp-scsi/for-next]
> [also build test ERROR on scsi/for-next block/for-next v5.11-rc4 next-20210115]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/Ming-Lei/blk-mq-scsi-tracking-device-queue-depth-via-sbitmap/20210118-085444
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/mkp/scsi.git for-next
> config: powerpc-randconfig-r001-20210118 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 95d146182fdf2315e74943b93fb3bb0cbafc5d89)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install powerpc cross compiling tool for clang build
>         # apt-get install binutils-powerpc-linux-gnu
>         # https://github.com/0day-ci/linux/commit/16943bc0fa2683fd8d8554745fffe62394a42ec9
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Ming-Lei/blk-mq-scsi-tracking-device-queue-depth-via-sbitmap/20210118-085444
>         git checkout 16943bc0fa2683fd8d8554745fffe62394a42ec9
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
>    drivers/vhost/scsi.c:617:40: error: too many arguments to function call, expected 2, have 3
>            tag = sbitmap_get(&svq->scsi_tags, 0, false);
>                  ~~~~~~~~~~~                     ^~~~~
>    include/linux/sbitmap.h:185:5: note: 'sbitmap_get' declared here
>    int sbitmap_get(struct sbitmap *sb, unsigned int alloc_hint);
>        ^
> >> drivers/vhost/scsi.c:1515:22: error: too few arguments to function call, expected 6, have 5
>                                  NUMA_NO_NODE))
>                                              ^
>    include/linux/sbitmap.h:153:5: note: 'sbitmap_init_node' declared here
>    int sbitmap_init_node(struct sbitmap *sb, unsigned int depth, int shift,
>        ^
>    2 errors generated.
> 

Thanks for the report, and this failure has been fixed in V7.



-- 
Ming

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210122023810.GA509982%40T590.
