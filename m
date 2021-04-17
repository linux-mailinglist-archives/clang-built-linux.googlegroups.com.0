Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBQMW5GBQMGQEFYYYECY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EF00362CF6
	for <lists+clang-built-linux@lfdr.de>; Sat, 17 Apr 2021 04:43:17 +0200 (CEST)
Received: by mail-qt1-x83b.google.com with SMTP id 1-20020aed31010000b029019d1c685840sf7179785qtg.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 19:43:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618627394; cv=pass;
        d=google.com; s=arc-20160816;
        b=qYZMc1n6+2tblx3zoX6E0qNfwu3Vce+pR74W3VpEJSMbFpyfbjLv1Ndz/BJfcfp88s
         quWbscUF8OxlA79FQGXeYPKt6kTr+yK4+r6xs4XFIvjljgynng371IIGseL6CCQgGIWY
         rtq2GhN5fTZpNiIOW/EoReBZBzbjl781cBLk8YNelPpln7fD1sf6xOq54W4Uq5GL01ax
         C+Aa+6jDjreTxNLXZoUUV6mqn2u8Lpyf+BvFG8/izuQNFVAULAksxzt47Kf5szHutdTa
         VqBGrods4O+/IRHYr6m41mAnVTtPIYC3bMbh8v3SZgBrGpXJQ5eqeTJQ83x1Nzf+wmzz
         +PYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=THEnW6E6QJc3Ls9VSnOMITRW+Z/Y2g8lIcY4M3JGykY=;
        b=MosmL8K8mSgSntNQawB24F090Rkqs8VvNzceuzekV++kTHYFtIZq4kw348cWqbY8Zc
         ANW/IAOLXUSvH8BLKdCatY3f9w/t2KX1gfBMr7oLV3Nl8riXaMVW7F8NTzzfrQnX51ST
         DZLIUL8YuPT4hIjzJvv/t8p98wK/wiNzlsOA93Jo9NSoSQqNYIboCPBpae5OIzYYiZPI
         yOpL681i1JSWcJ3DA3PBWC6hUquftZVzfhLGHBuOs0KcbGL/szje4Io8QXoNTcKw5sir
         UbZWhEs4d8DDKcyveTFZtVW3FgRjP7PI3yH9Dx78mMKWPoqL1MwJatcdTg3mC4nuUxIz
         km3g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=THEnW6E6QJc3Ls9VSnOMITRW+Z/Y2g8lIcY4M3JGykY=;
        b=b8Xb5ohcGvg9GG4j0cGuqOSPYbf2ckVBYyKZA3kMlZDVPx5yoE+orOMUrPvqx9gve0
         p55GAnisZtGV/m4kltKZXnVoHwvkOLa3GQf8zxt4nItNXGRGE3IqVYT9uTYLFULZ6I7w
         gZBSwCxqICgUY16aNtikF4rrHrQH4qJKM9XIZGuN9XHJ8tFShHEFkwTcNabgnfEC+9va
         diou9tA2M31XkQEajsRQ6osFEbkjWRGjiIHpe9CYnnOud+A7xUcqEb/6iSkP1s9fzwDK
         qXfCIsu9335JsdUrlJJDgcQy682FmmittW2vT35t9e8VOdxlRVgb4UC1nXSsiFyzLYp2
         yh4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=THEnW6E6QJc3Ls9VSnOMITRW+Z/Y2g8lIcY4M3JGykY=;
        b=QjlWmpfVh+AMMGktJRkG9gOuL5OAz20rsVF1u5tpuVnIm5rNqW45FWmN0b9kUyYOp4
         9CeAY2Fu8zQ+wE7mq+mAetopwp9xZVvRHD4er8lBt0cB3J6rdFseOAMVvNzEzS7qN1wM
         uhrhY6dT9zzzs5CQ0bXY7min//A2a0BFgKoUm4/HHN9JX5jywGADvR49HkxT7dtlMvff
         hcDimdihP4hzbdQLit6ifq0OTaSengZicSjv9bc2Of2eFs26d7NmIn2BaOvOI1hn6JAq
         yzQYlYW2szR0R0NkMrimnRCzdw7lWoRKbqvao31shKCkBeNbK+4wHGFCXIiWnBZf2bwa
         nbVg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ovVxYHoCdWZ4LC59lTo3P901f592aDhMnfQwduf946ktVBiMa
	HvY1OC02fz2AsrmIwSkarIo=
X-Google-Smtp-Source: ABdhPJwLaTOJ3XDuSwnBbAs/gN7S8f/k3Reycre/7k/yi0tSlpnZ8MZDcYJyS8jnLHK5GGYxSvWJjA==
X-Received: by 2002:a05:622a:282:: with SMTP id z2mr1889525qtw.283.1618627393797;
        Fri, 16 Apr 2021 19:43:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:a3c1:: with SMTP id m184ls6111278qke.1.gmail; Fri, 16
 Apr 2021 19:43:13 -0700 (PDT)
X-Received: by 2002:a37:a485:: with SMTP id n127mr2169720qke.454.1618627393217;
        Fri, 16 Apr 2021 19:43:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618627393; cv=none;
        d=google.com; s=arc-20160816;
        b=Xnp9SBV49FgdWV8v6pOuJVuVy8jpOlboZFH+2gULMUne45atYUPIHoKBTTszwcLa1J
         hQWOtLbfU51qhYJpmewjquod2jMehMxr1NsQV7ay8M2jngFlrzFpgaXEUaKSm6qjwI3X
         FIDSo+k/x5cWOkUsM7Lwj/eYJJFhOTrWxCKbpqTOhmHeSOsz4YjQUR7hhxVpskjUn+rw
         An/Tzw9U8JyvFtBdqADHpH4SBKNk1Wo0Ali+N0AWZFC87fP5gAeBcNabzg/cRZrRTkAs
         Qc7fEVdWTzU261ezKi6CgVkW9uJFQCKjNfWKGUx8X88jYym4VMispSyjzUFhKq69j2jF
         OIng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=UcimqD4uC0m6Kci0cZvHr/unRi6uDhnfVXwcLDeuxvw=;
        b=MboCnpGEnRrnyyhpgoeOZ4vclCE74et0JaPhH9/7w15QYfuMQ1NYfgldV11I1BHghK
         j6Up6QsmyOQQnZkRXwQmJibEq9DUD5238q5XXPVTFTOIKTP0x6kGyzpvZYieHtRWwNY4
         M560LIDKYaFrN/AbSVnz9SZWKjvDA2FEWQxNhscrhSRboeNVpaDPjrsb82fCCQVdbVls
         M5hIYqVWpgY06ulRs2RCrwXaTmW2cRR1VPfAkmFMzX9hF5upHOOdryaSsDFIKhaQW4MV
         DaSDx5kw7/PrH8C9d2zr2P97d0FuIuwILoWIAJHKlYs9YaSOo194jFFzHepTJahzxwAV
         F4fw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id g22si790992qtx.4.2021.04.16.19.43.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Apr 2021 19:43:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
IronPort-SDR: FPKSt8iAvkPAmawqrVPXiNhGt7WEyeZMezivihCCKXXGf5AlVCVyaUboaWezFO/cryfp8J3upg
 rTjq+0N1uheQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9956"; a="175248736"
X-IronPort-AV: E=Sophos;i="5.82,228,1613462400"; 
   d="gz'50?scan'50,208,50";a="175248736"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Apr 2021 19:43:10 -0700
IronPort-SDR: 9EheuvY3gzDNvIBCMEYN0Dl6THAUYPT+3YhMSATbfBVuo947ygx9h3afN/woocuy2w0oItqe61
 vETGjEEeOKXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,228,1613462400"; 
   d="gz'50?scan'50,208,50";a="383223403"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
  by orsmga003.jf.intel.com with ESMTP; 16 Apr 2021 19:43:08 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lXavL-0000e7-CI; Sat, 17 Apr 2021 02:43:07 +0000
Date: Sat, 17 Apr 2021 10:42:04 +0800
From: kernel test robot <lkp@intel.com>
To: Enrico Granata <egranata@google.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2] virtio_blk: Add support for lifetime feature
Message-ID: <202104171002.2jEzeuL9-lkp@intel.com>
References: <20210416194709.155497-1-egranata@google.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="UugvWAfsgieZRqgk"
Content-Disposition: inline
In-Reply-To: <20210416194709.155497-1-egranata@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted
 sender) smtp.mailfrom=lkp@intel.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=intel.com
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


--UugvWAfsgieZRqgk
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Enrico,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on block/for-next]
[also build test WARNING on linus/master v5.12-rc7]
[cannot apply to vhost/linux-next next-20210416]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Enrico-Granata/virtio_blk-Add-support-for-lifetime-feature/20210417-034754
base:   https://git.kernel.org/pub/scm/linux/kernel/git/axboe/linux-block.git for-next
config: x86_64-randconfig-a004-20210416 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 6a18cc23efad410db48a3ccfc233d215de7d4cb9)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://github.com/0day-ci/linux/commit/fc90f60f9bc3b5165dc34acaabc80559e1fbcb5e
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Enrico-Granata/virtio_blk-Add-support-for-lifetime-feature/20210417-034754
        git checkout fc90f60f9bc3b5165dc34acaabc80559e1fbcb5e
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/block/virtio_blk.c:248:7: warning: variable 'type' is used uninitialized whenever switch case is taken [-Wsometimes-uninitialized]
           case REQ_OP_DRV_IN:
                ^~~~~~~~~~~~~
   drivers/block/virtio_blk.c:258:24: note: uninitialized use occurs here
           vbr->out_hdr.sector = type ?
                                 ^~~~
   drivers/block/virtio_blk.c:229:10: note: initialize the variable 'type' to silence this warning
           u32 type;
                   ^
                    = 0
   1 warning generated.


vim +/type +248 drivers/block/virtio_blk.c

944e7c87967c82 Jens Axboe         2018-11-26  216  
fc17b6534eb839 Christoph Hellwig  2017-06-03  217  static blk_status_t virtio_queue_rq(struct blk_mq_hw_ctx *hctx,
74c450521dd8d2 Jens Axboe         2014-10-29  218  			   const struct blk_mq_queue_data *bd)
e467cde238184d Rusty Russell      2007-10-22  219  {
1cf7e9c68fe842 Jens Axboe         2013-11-01  220  	struct virtio_blk *vblk = hctx->queue->queuedata;
74c450521dd8d2 Jens Axboe         2014-10-29  221  	struct request *req = bd->rq;
9d74e25737d73e Christoph Hellwig  2014-04-14  222  	struct virtblk_req *vbr = blk_mq_rq_to_pdu(req);
1cf7e9c68fe842 Jens Axboe         2013-11-01  223  	unsigned long flags;
20af3cfd20145f Paolo Bonzini      2013-03-20  224  	unsigned int num;
6a27b656fc0210 Ming Lei           2014-06-26  225  	int qid = hctx->queue_num;
5261b85e586afe Rusty Russell      2014-03-13  226  	int err;
e8edca6f7f9223 Ming Lei           2014-05-30  227  	bool notify = false;
1f23816b8eb8fd Changpeng Liu      2018-11-01  228  	bool unmap = false;
aebf526b53aea1 Christoph Hellwig  2017-01-31  229  	u32 type;
e467cde238184d Rusty Russell      2007-10-22  230  
1cf7e9c68fe842 Jens Axboe         2013-11-01  231  	BUG_ON(req->nr_phys_segments + 2 > vblk->sg_elems);
e467cde238184d Rusty Russell      2007-10-22  232  
aebf526b53aea1 Christoph Hellwig  2017-01-31  233  	switch (req_op(req)) {
aebf526b53aea1 Christoph Hellwig  2017-01-31  234  	case REQ_OP_READ:
aebf526b53aea1 Christoph Hellwig  2017-01-31  235  	case REQ_OP_WRITE:
aebf526b53aea1 Christoph Hellwig  2017-01-31  236  		type = 0;
f1b0ef06260271 Christoph Hellwig  2009-09-17  237  		break;
aebf526b53aea1 Christoph Hellwig  2017-01-31  238  	case REQ_OP_FLUSH:
aebf526b53aea1 Christoph Hellwig  2017-01-31  239  		type = VIRTIO_BLK_T_FLUSH;
f1b0ef06260271 Christoph Hellwig  2009-09-17  240  		break;
1f23816b8eb8fd Changpeng Liu      2018-11-01  241  	case REQ_OP_DISCARD:
1f23816b8eb8fd Changpeng Liu      2018-11-01  242  		type = VIRTIO_BLK_T_DISCARD;
1f23816b8eb8fd Changpeng Liu      2018-11-01  243  		break;
1f23816b8eb8fd Changpeng Liu      2018-11-01  244  	case REQ_OP_WRITE_ZEROES:
1f23816b8eb8fd Changpeng Liu      2018-11-01  245  		type = VIRTIO_BLK_T_WRITE_ZEROES;
1f23816b8eb8fd Changpeng Liu      2018-11-01  246  		unmap = !(req->cmd_flags & REQ_NOUNMAP);
1f23816b8eb8fd Changpeng Liu      2018-11-01  247  		break;
aebf526b53aea1 Christoph Hellwig  2017-01-31 @248  	case REQ_OP_DRV_IN:
fc90f60f9bc3b5 Enrico Granata     2021-04-16  249  		break; /* type already set for custom requests */
f1b0ef06260271 Christoph Hellwig  2009-09-17  250  	default:
aebf526b53aea1 Christoph Hellwig  2017-01-31  251  		WARN_ON_ONCE(1);
fc17b6534eb839 Christoph Hellwig  2017-06-03  252  		return BLK_STS_IOERR;
dd40e456a40ebb FUJITA Tomonori    2010-07-03  253  	}
e467cde238184d Rusty Russell      2007-10-22  254  
fc90f60f9bc3b5 Enrico Granata     2021-04-16  255  	if (req_op(req) != REQ_OP_DRV_IN)
aebf526b53aea1 Christoph Hellwig  2017-01-31  256  		vbr->out_hdr.type = cpu_to_virtio32(vblk->vdev, type);
fc90f60f9bc3b5 Enrico Granata     2021-04-16  257  
aebf526b53aea1 Christoph Hellwig  2017-01-31  258  	vbr->out_hdr.sector = type ?
aebf526b53aea1 Christoph Hellwig  2017-01-31  259  		0 : cpu_to_virtio64(vblk->vdev, blk_rq_pos(req));
aebf526b53aea1 Christoph Hellwig  2017-01-31  260  	vbr->out_hdr.ioprio = cpu_to_virtio32(vblk->vdev, req_get_ioprio(req));
aebf526b53aea1 Christoph Hellwig  2017-01-31  261  
e2490073cd7c3d Christoph Hellwig  2014-09-13  262  	blk_mq_start_request(req);
e2490073cd7c3d Christoph Hellwig  2014-09-13  263  
1f23816b8eb8fd Changpeng Liu      2018-11-01  264  	if (type == VIRTIO_BLK_T_DISCARD || type == VIRTIO_BLK_T_WRITE_ZEROES) {
1f23816b8eb8fd Changpeng Liu      2018-11-01  265  		err = virtblk_setup_discard_write_zeroes(req, unmap);
1f23816b8eb8fd Changpeng Liu      2018-11-01  266  		if (err)
1f23816b8eb8fd Changpeng Liu      2018-11-01  267  			return BLK_STS_RESOURCE;
1f23816b8eb8fd Changpeng Liu      2018-11-01  268  	}
1f23816b8eb8fd Changpeng Liu      2018-11-01  269  
85dada09eeb31c Christoph Hellwig  2017-01-28  270  	num = blk_rq_map_sg(hctx->queue, req, vbr->sg);
1cde26f928863d Hannes Reinecke    2009-05-18  271  	if (num) {
85dada09eeb31c Christoph Hellwig  2017-01-28  272  		if (rq_data_dir(req) == WRITE)
19c1c5a64c3b8e Michael S. Tsirkin 2014-10-07  273  			vbr->out_hdr.type |= cpu_to_virtio32(vblk->vdev, VIRTIO_BLK_T_OUT);
20af3cfd20145f Paolo Bonzini      2013-03-20  274  		else
19c1c5a64c3b8e Michael S. Tsirkin 2014-10-07  275  			vbr->out_hdr.type |= cpu_to_virtio32(vblk->vdev, VIRTIO_BLK_T_IN);
e467cde238184d Rusty Russell      2007-10-22  276  	}
e467cde238184d Rusty Russell      2007-10-22  277  
6a27b656fc0210 Ming Lei           2014-06-26  278  	spin_lock_irqsave(&vblk->vqs[qid].lock, flags);
97b50a654d5de5 Christoph Hellwig  2017-01-28  279  	err = virtblk_add_req(vblk->vqs[qid].vq, vbr, vbr->sg, num);
5261b85e586afe Rusty Russell      2014-03-13  280  	if (err) {
6a27b656fc0210 Ming Lei           2014-06-26  281  		virtqueue_kick(vblk->vqs[qid].vq);
f5f6b95c72f7f8 Halil Pasic        2020-02-13  282  		/* Don't stop the queue if -ENOMEM: we may have failed to
f5f6b95c72f7f8 Halil Pasic        2020-02-13  283  		 * bounce the buffer due to global resource outage.
f5f6b95c72f7f8 Halil Pasic        2020-02-13  284  		 */
f5f6b95c72f7f8 Halil Pasic        2020-02-13  285  		if (err == -ENOSPC)
1cf7e9c68fe842 Jens Axboe         2013-11-01  286  			blk_mq_stop_hw_queue(hctx);
6a27b656fc0210 Ming Lei           2014-06-26  287  		spin_unlock_irqrestore(&vblk->vqs[qid].lock, flags);
3d973b2e9a6259 Halil Pasic        2020-02-13  288  		switch (err) {
3d973b2e9a6259 Halil Pasic        2020-02-13  289  		case -ENOSPC:
86ff7c2a80cd35 Ming Lei           2018-01-30  290  			return BLK_STS_DEV_RESOURCE;
3d973b2e9a6259 Halil Pasic        2020-02-13  291  		case -ENOMEM:
3d973b2e9a6259 Halil Pasic        2020-02-13  292  			return BLK_STS_RESOURCE;
3d973b2e9a6259 Halil Pasic        2020-02-13  293  		default:
fc17b6534eb839 Christoph Hellwig  2017-06-03  294  			return BLK_STS_IOERR;
e467cde238184d Rusty Russell      2007-10-22  295  		}
3d973b2e9a6259 Halil Pasic        2020-02-13  296  	}
e467cde238184d Rusty Russell      2007-10-22  297  
74c450521dd8d2 Jens Axboe         2014-10-29  298  	if (bd->last && virtqueue_kick_prepare(vblk->vqs[qid].vq))
e8edca6f7f9223 Ming Lei           2014-05-30  299  		notify = true;
6a27b656fc0210 Ming Lei           2014-06-26  300  	spin_unlock_irqrestore(&vblk->vqs[qid].lock, flags);
e8edca6f7f9223 Ming Lei           2014-05-30  301  
e8edca6f7f9223 Ming Lei           2014-05-30  302  	if (notify)
6a27b656fc0210 Ming Lei           2014-06-26  303  		virtqueue_notify(vblk->vqs[qid].vq);
fc17b6534eb839 Christoph Hellwig  2017-06-03  304  	return BLK_STS_OK;
a98755c559e0e9 Asias He           2012-08-08  305  }
a98755c559e0e9 Asias He           2012-08-08  306  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104171002.2jEzeuL9-lkp%40intel.com.

--UugvWAfsgieZRqgk
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
Pm69eBfK+uL/AJcb6ih4UwIA

--UugvWAfsgieZRqgk--
