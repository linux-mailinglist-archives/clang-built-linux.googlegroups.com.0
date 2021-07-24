Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBXVY6GDQMGQE7YLNMCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id 083FA3D492D
	for <lists+clang-built-linux@lfdr.de>; Sat, 24 Jul 2021 20:30:57 +0200 (CEST)
Received: by mail-pj1-x103d.google.com with SMTP id a14-20020a17090a480eb02901726198443csf7769438pjh.8
        for <lists+clang-built-linux@lfdr.de>; Sat, 24 Jul 2021 11:30:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627151455; cv=pass;
        d=google.com; s=arc-20160816;
        b=Qsm50L6k7V9togm9/+4uenRv0a/hu1a+E52BgPOLGtllPtf8DyLl2LQQsqlQs+ZGWx
         m9iMA4DofW7CT6kDElKpexQZawXBx9mLPjcvg+V7VW3i1ebTuaSq36yptmuoPNrED7a/
         AS8M7g83J8FYuLfF1T6hbzjum5qV+y5P977w67nKdKHUoDn7y9bVugLjxl7S1CRFb4/n
         IguYxK58kuqJ4Beu/NhojTOGQrdojZav4TMoR2KJZJeBUcUpLy4GsZYuyfNO4Gw8A5CQ
         xHTKmuRmL4dae5mCbDknWM/aZzqYABnnNfbmrdyenyB3c+w0xEUy2TtToTY4C/Jq25FL
         mwaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=uE6IXIqLtTRpQJpLmPufdJ0HE69yjkOGoU3qkss7uS4=;
        b=Q1PVf7zj9wBr3hfP1S1HCZPaFV2oJu6SsfRaWt+kP5Ps0c24qxi3ROhg+oTXWHiQgG
         kMdRmYJzXVXScKALVgNbAIy48JbZqdyXEvePS9AWwwDMWnx+dd2r+1wRRyG38CRJxMuH
         tM/1Bkag+Ef0S626HJdiVIZCMBfiWSqUPEa+wrFeSSpY6OEdTf2Da4JSFJi6tS4ejbtG
         OaLCM2U0q6fQ3Y/prcS9Ov2yjOUm7WgmRPBMSkTFup8JLx9OhKixQsthwdTbAxtxJYPg
         swMgsbJSHJUObtqQuZ/iqqWjENt76Zc+vCXAcIrUvdt0Uvnh56UGyar1HDFtlqpuu2fl
         qG6A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uE6IXIqLtTRpQJpLmPufdJ0HE69yjkOGoU3qkss7uS4=;
        b=G7BYAJwRod/1DVok3Zv2plhE2TLMUkmcEDfSKgC3paqVKXnz3mEDiZcsV68NE8fyLH
         NL/FtuAzqrhhu4OpqmUKFdfFpyk+ubnmI5PamVEncUqF7bQGoYU8RZjpV9ZNJH3ruzSo
         9ZDtzUCqogUOI1W4QyOJMY2sm3xrGxdOdDPrhEq2vewly2jK2XexU0QCzKIRAOx9E181
         iCJmnEn+lbP8Wh585ZqP/Uct/3J1bMVZLz9IqqZufAifIx87lZLyWXjc2622I3pdfbTz
         ArEw6cvhiweE4uxWf6GReEdesIvjckFwokPl/k8Wbrk6gYJu6R2a/MQUCyKG+HBxWih8
         CtGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uE6IXIqLtTRpQJpLmPufdJ0HE69yjkOGoU3qkss7uS4=;
        b=SaO10Y+E0JUl276wQa6TQsmY3gdjYw7XloyvAj3ROCLHzjq7tT/J/7HDtaIdvk3w0S
         45MO5mBTF0UyNqn3vdZ9WEzeSCmTY3ivbXCYMdXf/ldtkg4kJiUzLCemoAWrKH1jew1+
         kkGIywZbKQamOfFfg929Zzr/6MWcUM3J9EPazjggzDAnB7zvf9fhS9iqCvPDa6S4dlyd
         DRTJwqnnz1EL5AsfC814qUAArMSxjQKv1sfJL3YuDqIBm0+1eTweJhmbA07WzApOnUy9
         9SnDoNdKnTpkh7np6WQb7pnksPzfJTZ7hrkF+BW8HOEmkluit8HcovFfMIqhaLB48o61
         ZYTw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5316oDdcVU9sPlhGf/fFwndGF9xyM8lugKKy4MVO53OtH6MhKlW3
	ulJ+2aQQMRasD7YZ6yuj1bg=
X-Google-Smtp-Source: ABdhPJwsao02SmRdeU8Ys3AuhOR0dU+TolsvAvtZ/kZXJVUzUydoMogdz8fhyCsE53NoCcoKibuxHQ==
X-Received: by 2002:a63:170b:: with SMTP id x11mr10697140pgl.253.1627151454973;
        Sat, 24 Jul 2021 11:30:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:1cb:: with SMTP id e11ls6347730plh.5.gmail; Sat, 24
 Jul 2021 11:30:54 -0700 (PDT)
X-Received: by 2002:a17:902:c38a:b029:12b:7ef0:ae0b with SMTP id g10-20020a170902c38ab029012b7ef0ae0bmr8330668plg.50.1627151454086;
        Sat, 24 Jul 2021 11:30:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627151454; cv=none;
        d=google.com; s=arc-20160816;
        b=WZ171+e6sHMA8a1xk7hqEXVvUm4DytSduPynwjx+4vjJkj11qVTLxUiTRvg/MuPX0m
         sbeomCgCET77zwubkUlOQW+02DaLbFrYtCnTgiHHSeswi9U1JjuqLVTsmGoujgLsBhPt
         x4u6Ja/gL1/LB8zfWVnrY1C86UYgKQelKGKr5Bf/o7wg1J/UYT+959npiy6HHEBigdz8
         z7j9sWerH4oyfn9bcQYrPAKgKXHRl0qPYdMBsufG+kRGGdQ/3rR6w7f0wWaXtVptRZ/N
         msgskqS8+cCyYqfXRjSP06Y+I9xnoGkl+Vn3rubYMVnOfLsR2hx5kC0GGdtR/l6r3qhu
         D3xA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=V1yumclIzC+0mLFuPSFGvgAc2MY8qQD8G2RfkWPLjow=;
        b=wQcrGX0D3LGBUSi8RJbNeBIXBd3uNsmLJjE62cK2LO2kP9fICKA3ValtgAcVmujgDq
         HEFOoEcw5q0tAdVYfReDBg/Zg58RO2cVjNNjL3yvQHERacjTf7zI+xG0qsJ3UN0lmtiX
         Vh5TdX/XLzt2NYjsJ52HtKPlH8kqu7eLX4Djo5fy/4qgrTsLJr9y0DChdGFZW4n/aaL8
         z7+pnHqhzw8GgfbeMv9Mtilddv4cTgidiugzF+dtAy8zo24Z/3mJSYVwM8K6KsAhElMx
         qCq7NR4tgUhLxvPGHFxHWUIIlst8vxnUKcs8HIqUunnGnA30XivYCSgqh67/jsLuongx
         vWXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id o20si4289968pgv.1.2021.07.24.11.30.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Jul 2021 11:30:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
X-IronPort-AV: E=McAfee;i="6200,9189,10055"; a="191627955"
X-IronPort-AV: E=Sophos;i="5.84,266,1620716400"; 
   d="gz'50?scan'50,208,50";a="191627955"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Jul 2021 11:14:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,266,1620716400"; 
   d="gz'50?scan'50,208,50";a="496977996"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
  by fmsmga004.fm.intel.com with ESMTP; 24 Jul 2021 11:14:49 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1m7MAi-0003fc-UG; Sat, 24 Jul 2021 18:14:48 +0000
Date: Sun, 25 Jul 2021 02:14:03 +0800
From: kernel test robot <lkp@intel.com>
To: Christoph Hellwig <hch@lst.de>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org
Subject: [hch-block:blkdev.h-includes 14/16]
 block/blk-crypto-internal.h:34:49: error: implicit declaration of function
 'blk_rq_bytes'
Message-ID: <202107250259.WXezBhQW-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="1yeeQ81UyVL57Vl7"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted
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


--1yeeQ81UyVL57Vl7
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   git://git.infradead.org/users/hch/block.git blkdev.h-includes
head:   48f7fda047613ceec07881f14a5eaf1ee19d4433
commit: b9615241041911b7ce9a57f1a2d24a66e5c2b091 [14/16] block: move struct request to blk-mq.h
config: riscv-randconfig-r012-20210724 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 3f2c1e99e44d028d5e9dd685f3c568f2661f2f68)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        git remote add hch-block git://git.infradead.org/users/hch/block.git
        git fetch --no-tags hch-block blkdev.h-includes
        git checkout b9615241041911b7ce9a57f1a2d24a66e5c2b091
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from block/blk-crypto-fallback.c:22:
>> block/blk-crypto-internal.h:34:36: error: incomplete definition of type 'struct request'
           return bio_crypt_ctx_mergeable(req->crypt_ctx, blk_rq_bytes(req),
                                          ~~~^
   include/linux/bsg.h:7:8: note: forward declaration of 'struct request'
   struct request;
          ^
   In file included from block/blk-crypto-fallback.c:22:
>> block/blk-crypto-internal.h:34:49: error: implicit declaration of function 'blk_rq_bytes' [-Werror,-Wimplicit-function-declaration]
           return bio_crypt_ctx_mergeable(req->crypt_ctx, blk_rq_bytes(req),
                                                          ^
   block/blk-crypto-internal.h:42:37: error: incomplete definition of type 'struct request'
                                          bio->bi_iter.bi_size, req->crypt_ctx);
                                                                ~~~^
   include/linux/bsg.h:7:8: note: forward declaration of 'struct request'
   struct request;
          ^
   In file included from block/blk-crypto-fallback.c:22:
   block/blk-crypto-internal.h:48:36: error: incomplete definition of type 'struct request'
           return bio_crypt_ctx_mergeable(req->crypt_ctx, blk_rq_bytes(req),
                                          ~~~^
   include/linux/bsg.h:7:8: note: forward declaration of 'struct request'
   struct request;
          ^
   In file included from block/blk-crypto-fallback.c:22:
   block/blk-crypto-internal.h:48:49: error: implicit declaration of function 'blk_rq_bytes' [-Werror,-Wimplicit-function-declaration]
           return bio_crypt_ctx_mergeable(req->crypt_ctx, blk_rq_bytes(req),
                                                          ^
   block/blk-crypto-internal.h:49:16: error: incomplete definition of type 'struct request'
                                          next->crypt_ctx);
                                          ~~~~^
   include/linux/bsg.h:7:8: note: forward declaration of 'struct request'
   struct request;
          ^
   In file included from block/blk-crypto-fallback.c:22:
   block/blk-crypto-internal.h:54:4: error: incomplete definition of type 'struct request'
           rq->crypt_ctx = NULL;
           ~~^
   include/linux/bsg.h:7:8: note: forward declaration of 'struct request'
   struct request;
          ^
   In file included from block/blk-crypto-fallback.c:22:
   block/blk-crypto-internal.h:55:4: error: incomplete definition of type 'struct request'
           rq->crypt_keyslot = NULL;
           ~~^
   include/linux/bsg.h:7:8: note: forward declaration of 'struct request'
   struct request;
          ^
   In file included from block/blk-crypto-fallback.c:22:
   block/blk-crypto-internal.h:60:11: error: incomplete definition of type 'struct request'
           return rq->crypt_ctx;
                  ~~^
   include/linux/bsg.h:7:8: note: forward declaration of 'struct request'
   struct request;
          ^
   In file included from block/blk-crypto-fallback.c:22:
   block/blk-crypto-internal.h:117:12: error: incomplete definition of type 'struct request'
                   memcpy(rq->crypt_ctx->bc_dun, bio->bi_crypt_context->bc_dun,
                          ~~^
   include/linux/bsg.h:7:8: note: forward declaration of 'struct request'
   struct request;
          ^
   In file included from block/blk-crypto-fallback.c:22:
   block/blk-crypto-internal.h:118:19: error: incomplete definition of type 'struct request'
                          sizeof(rq->crypt_ctx->bc_dun));
                                 ~~^
   include/linux/bsg.h:7:8: note: forward declaration of 'struct request'
   struct request;
          ^
   11 errors generated.
--
   In file included from block/blk-crypto.c:18:
>> block/blk-crypto-internal.h:34:36: error: incomplete definition of type 'struct request'
           return bio_crypt_ctx_mergeable(req->crypt_ctx, blk_rq_bytes(req),
                                          ~~~^
   include/linux/bsg.h:7:8: note: forward declaration of 'struct request'
   struct request;
          ^
   In file included from block/blk-crypto.c:18:
>> block/blk-crypto-internal.h:34:49: error: implicit declaration of function 'blk_rq_bytes' [-Werror,-Wimplicit-function-declaration]
           return bio_crypt_ctx_mergeable(req->crypt_ctx, blk_rq_bytes(req),
                                                          ^
   block/blk-crypto-internal.h:42:37: error: incomplete definition of type 'struct request'
                                          bio->bi_iter.bi_size, req->crypt_ctx);
                                                                ~~~^
   include/linux/bsg.h:7:8: note: forward declaration of 'struct request'
   struct request;
          ^
   In file included from block/blk-crypto.c:18:
   block/blk-crypto-internal.h:48:36: error: incomplete definition of type 'struct request'
           return bio_crypt_ctx_mergeable(req->crypt_ctx, blk_rq_bytes(req),
                                          ~~~^
   include/linux/bsg.h:7:8: note: forward declaration of 'struct request'
   struct request;
          ^
   In file included from block/blk-crypto.c:18:
   block/blk-crypto-internal.h:48:49: error: implicit declaration of function 'blk_rq_bytes' [-Werror,-Wimplicit-function-declaration]
           return bio_crypt_ctx_mergeable(req->crypt_ctx, blk_rq_bytes(req),
                                                          ^
   block/blk-crypto-internal.h:49:16: error: incomplete definition of type 'struct request'
                                          next->crypt_ctx);
                                          ~~~~^
   include/linux/bsg.h:7:8: note: forward declaration of 'struct request'
   struct request;
          ^
   In file included from block/blk-crypto.c:18:
   block/blk-crypto-internal.h:54:4: error: incomplete definition of type 'struct request'
           rq->crypt_ctx = NULL;
           ~~^
   include/linux/bsg.h:7:8: note: forward declaration of 'struct request'
   struct request;
          ^
   In file included from block/blk-crypto.c:18:
   block/blk-crypto-internal.h:55:4: error: incomplete definition of type 'struct request'
           rq->crypt_keyslot = NULL;
           ~~^
   include/linux/bsg.h:7:8: note: forward declaration of 'struct request'
   struct request;
          ^
   In file included from block/blk-crypto.c:18:
   block/blk-crypto-internal.h:60:11: error: incomplete definition of type 'struct request'
           return rq->crypt_ctx;
                  ~~^
   include/linux/bsg.h:7:8: note: forward declaration of 'struct request'
   struct request;
          ^
   In file included from block/blk-crypto.c:18:
   block/blk-crypto-internal.h:117:12: error: incomplete definition of type 'struct request'
                   memcpy(rq->crypt_ctx->bc_dun, bio->bi_crypt_context->bc_dun,
                          ~~^
   include/linux/bsg.h:7:8: note: forward declaration of 'struct request'
   struct request;
          ^
   In file included from block/blk-crypto.c:18:
   block/blk-crypto-internal.h:118:19: error: incomplete definition of type 'struct request'
                          sizeof(rq->crypt_ctx->bc_dun));
                                 ~~^
   include/linux/bsg.h:7:8: note: forward declaration of 'struct request'
   struct request;
          ^
>> block/blk-crypto.c:186:36: error: incomplete definition of type 'struct request'
           return bio_crypt_ctx_compatible(rq->crypt_ctx, bio->bi_crypt_context);
                                           ~~^
   include/linux/bsg.h:7:8: note: forward declaration of 'struct request'
   struct request;
          ^
   block/blk-crypto.c:221:36: error: incomplete definition of type 'struct request'
           return blk_ksm_get_slot_for_key(rq->q->ksm, rq->crypt_ctx->bc_key,
                                           ~~^
   include/linux/bsg.h:7:8: note: forward declaration of 'struct request'
   struct request;
          ^
   block/blk-crypto.c:221:48: error: incomplete definition of type 'struct request'
           return blk_ksm_get_slot_for_key(rq->q->ksm, rq->crypt_ctx->bc_key,
                                                       ~~^
   include/linux/bsg.h:7:8: note: forward declaration of 'struct request'
   struct request;
          ^
   block/blk-crypto.c:222:9: error: incomplete definition of type 'struct request'
                                           &rq->crypt_keyslot);
                                            ~~^
   include/linux/bsg.h:7:8: note: forward declaration of 'struct request'
   struct request;
          ^
   block/blk-crypto.c:236:21: error: incomplete definition of type 'struct request'
           blk_ksm_put_slot(rq->crypt_keyslot);
                            ~~^
   include/linux/bsg.h:7:8: note: forward declaration of 'struct request'
   struct request;
          ^
   block/blk-crypto.c:237:17: error: incomplete definition of type 'struct request'
           mempool_free(rq->crypt_ctx, bio_crypt_ctx_pool);
                        ~~^
   include/linux/bsg.h:7:8: note: forward declaration of 'struct request'
   struct request;
          ^
   block/blk-crypto.c:297:9: error: incomplete definition of type 'struct request'
           if (!rq->crypt_ctx) {
                ~~^
   include/linux/bsg.h:7:8: note: forward declaration of 'struct request'
   struct request;
          ^
   block/blk-crypto.c:298:5: error: incomplete definition of type 'struct request'
                   rq->crypt_ctx = mempool_alloc(bio_crypt_ctx_pool, gfp_mask);
                   ~~^
   include/linux/bsg.h:7:8: note: forward declaration of 'struct request'
   struct request;
          ^
   fatal error: too many errors emitted, stopping now [-ferror-limit=]
   20 errors generated.


vim +/blk_rq_bytes +34 block/blk-crypto-internal.h

a892c8d52c0228 Satya Tangirala 2020-05-14  27  
a892c8d52c0228 Satya Tangirala 2020-05-14  28  bool bio_crypt_ctx_mergeable(struct bio_crypt_ctx *bc1, unsigned int bc1_bytes,
a892c8d52c0228 Satya Tangirala 2020-05-14  29  			     struct bio_crypt_ctx *bc2);
a892c8d52c0228 Satya Tangirala 2020-05-14  30  
a892c8d52c0228 Satya Tangirala 2020-05-14  31  static inline bool bio_crypt_ctx_back_mergeable(struct request *req,
a892c8d52c0228 Satya Tangirala 2020-05-14  32  						struct bio *bio)
a892c8d52c0228 Satya Tangirala 2020-05-14  33  {
a892c8d52c0228 Satya Tangirala 2020-05-14 @34  	return bio_crypt_ctx_mergeable(req->crypt_ctx, blk_rq_bytes(req),
a892c8d52c0228 Satya Tangirala 2020-05-14  35  				       bio->bi_crypt_context);
a892c8d52c0228 Satya Tangirala 2020-05-14  36  }
a892c8d52c0228 Satya Tangirala 2020-05-14  37  

:::::: The code at line 34 was first introduced by commit
:::::: a892c8d52c02284076fbbacae6692aa5c5807d11 block: Inline encryption support for blk-mq

:::::: TO: Satya Tangirala <satyat@google.com>
:::::: CC: Jens Axboe <axboe@kernel.dk>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202107250259.WXezBhQW-lkp%40intel.com.

--1yeeQ81UyVL57Vl7
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--1yeeQ81UyVL57Vl7--
