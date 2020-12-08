Return-Path: <clang-built-linux+bncBDNLTAEFUYIRBXOQXT7AKGQEB3GC5MQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ABE32D242B
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Dec 2020 08:16:46 +0100 (CET)
Received: by mail-lf1-x139.google.com with SMTP id a19sf1441288lfd.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Dec 2020 23:16:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607411805; cv=pass;
        d=google.com; s=arc-20160816;
        b=d/4JKuBDvwU+DOSWFExBjwrmk+ZqFaCv+Gu5JgNN71nAiERbUrjTnNFYDVL6zaRQUF
         jVzLg3S5JucueGpkWJgTmtsWDuklje6HVvQ8lN8yMc7HwAY0CJJoCT4LySt8jXfUIEYD
         E1ac72SScMRxkCN3qK2SIo4Hjae5LtXjSG0xdS7yj2epuO8lRCkFRgZrCRYU5hEuq9Nv
         L7bKsfsRAd5UCPQ0MtZF5XOzIDGqnLyXVokcCOKt4dEK+lKtRzXM2wluzHV70lUt6fka
         Znt7Ax4Dyoe3tRySFjR77L4pTV9YqnzJqG8SgUnxMqVkGbNmomt1QJZxpm3YXw+JLPPD
         CLjQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=H4tKXIPAGXmb0Ek7NuujYVvTWb4I/8Odv0oyHRj1QpI=;
        b=a2i254JcmtvfuN7RRy1o++gqE5qe46avUJZIc/Q3x2GgYY0wzAuyyLjdSM3cuEcNtP
         pX31AvpAw4EcXSpkDli2Vjz2Ock1v49sIAxjaX1kjjy6w+jdWL7BUI+gCEUmUd5B8G9A
         QwemlCOc+WRnwCqdcUB6YYIZ3nGAvnbQTV0hhhr+aiRdqf7zyrhlaRXnpXwyPcoVwOqi
         AMK15JT6AJm1ikbcrEWu+TsuoNuripppoK4W+rF2SC5p91sqwW1IJJufoAJ+wvwLiNnX
         arv8hfRinUj1iDnfiBJ6F1QBwli2olF306OslStNNu65VOCVgQZnyzfx7WR2BIuj/RBY
         FTpQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@cloud.ionos.com header.s=google header.b=M770mrsS;
       spf=pass (google.com: domain of haris.iqbal@cloud.ionos.com designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=haris.iqbal@cloud.ionos.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ionos.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=H4tKXIPAGXmb0Ek7NuujYVvTWb4I/8Odv0oyHRj1QpI=;
        b=JEnl/3Oe3Ku1XkPvjP+6BJp8LWp9/ou6zuNKE2eu8Cv0I+tdUm6KHmL072IaPloOzG
         eTyG/ZDbBtow5X2623C+XR112U/TSMubxaNiGYuARwhY8qWnMVR2aXpCcwLEiKwbtolz
         K2ro9w6JvhefyNiofOH8dW4dxRR+Q3FCa4DKwN1quTxf8cTtv56UukB5URhY6stEGgAe
         qcQicvBGmuxUg5Rao4ZrjcdoD6hMHYAa7uxx3A5HgjUgvm1jGz60qlpHhcN8KggzOFoP
         KN1KCEqb/JtvOtUUk9Dqb7L3l0nxkf1q6dimtfvOVlw8TC4kTqsilZ55I2vopvlkz+sR
         8PEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=H4tKXIPAGXmb0Ek7NuujYVvTWb4I/8Odv0oyHRj1QpI=;
        b=EaYDEQebJouUXXi065NCoCMo1iZjSc3F94OhHsIZC79U2MVSDVs9A6SWT2rgxjnw7o
         eRFghmIBWd6WuA1MiIQ8q/Jd7l8nNR0/3r6ZDevlRdAIEOzdlSqpLC5djg5Q8RqSPGhK
         bwcCayCHIRcT+RUbUg87QwAVePzTFliqaSsbjBjf+jZ78BIyGy+v6bDrbNtD1lYPfFGg
         BCbeiG2voNkSW4F3XeiKUR81gKH8qx+o1DZ/1UjQVY4EaEpowc3sc1RVK3X6oe+RgjR8
         tTZ48NfIXBu9FO18B99RPbZu6m1YPASddHon8ILZcLGV/SI9jbmwlkoRtgEVX6cwjjSZ
         xL/Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530OrKTOmgXSLY5wssGBjJb2onqeC8oATps17py/B+bdwLg5Bow+
	2KFzI9OjghM9mvW65vA/D0E=
X-Google-Smtp-Source: ABdhPJzOSSNaHhVNxn+TnfxSmKtIbWDB+cVoBpdFUqTESERg8oNGma73msqMRY+q6aWwV/QDFtG8mA==
X-Received: by 2002:a2e:b1c9:: with SMTP id e9mr10375545lja.283.1607411805692;
        Mon, 07 Dec 2020 23:16:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3608:: with SMTP id f8ls3280073lfs.2.gmail; Mon, 07
 Dec 2020 23:16:44 -0800 (PST)
X-Received: by 2002:a19:7fcd:: with SMTP id a196mr9902751lfd.53.1607411804692;
        Mon, 07 Dec 2020 23:16:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607411804; cv=none;
        d=google.com; s=arc-20160816;
        b=PDG5YD1wCnGuxjr5eQKK1QUKsQ9ydUGz5nfmdRQvu9PvGIq3nJV2JEy/bLV/SQ0AbF
         8sY57f5e4EToeaJ4zy0zLb7ZY36PRrXbO1wQvQ5vY/4I8g3RQB9ekDEWgubyzTUxS3OQ
         DTXjNvlf4Tsfc7zlp7kFEMuWCU4aoWmKun4YMa0g45tczYBpw1yDaOOvhfOX1KiFXxxj
         LsQozr9cfz+JjClSFNBPqe9zVx2fo/a8n+INpqLFtjK/pibHyfpst7rrl1ZpD9RHTldP
         UHNlLST08aQwu97q1pH0qeawciBtdDFCY4/1ZB5/Nvd9LvOBx3ZDSSZEQm0aCiyZcEV2
         v/Qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=DQj3kO+5lCyWXZiHV30Lkxdo+kaDm44ic1xsIqZj8oA=;
        b=IbIqYFrHEQD9v+N4Un/33DzKWlwMZyJlUaZo6qaXg00s+9115yJOan/Y+1E6dg8NtR
         ZnoI+XQayrJTGN8vG1q9seA48K23Y3+BzN1ukRC2V9uRzQx95PhjsY3mqKp88nCBsyHK
         4Fb416eZ9HaOTOcnUMiZCxspLVLDMkTg4nYo2U8Z1XO4oxOXRMkr8hGs/A2AR/Xa4aIS
         /Sf+lEKVMljLtZKmu2azc4B4DRFvTRy9pV3UBISOzOi+EhwpLzeGFjVsy2yQx+DZ1tE6
         /VyeePV9T5Swho2MGVQOQSP1+a2GkKHXXOTap9MvWhmdlq9URfg+CUKRfgMLH9nkfx4c
         sWHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@cloud.ionos.com header.s=google header.b=M770mrsS;
       spf=pass (google.com: domain of haris.iqbal@cloud.ionos.com designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=haris.iqbal@cloud.ionos.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ionos.com
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com. [2a00:1450:4864:20::12f])
        by gmr-mx.google.com with ESMTPS id y21si626500lfl.7.2020.12.07.23.16.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Dec 2020 23:16:44 -0800 (PST)
Received-SPF: pass (google.com: domain of haris.iqbal@cloud.ionos.com designates 2a00:1450:4864:20::12f as permitted sender) client-ip=2a00:1450:4864:20::12f;
Received: by mail-lf1-x12f.google.com with SMTP id r24so21654810lfm.8
        for <clang-built-linux@googlegroups.com>; Mon, 07 Dec 2020 23:16:44 -0800 (PST)
X-Received: by 2002:a19:f809:: with SMTP id a9mr9209255lff.314.1607411804252;
 Mon, 07 Dec 2020 23:16:44 -0800 (PST)
MIME-Version: 1.0
References: <202012081357.mUFLvYI9-lkp@intel.com>
In-Reply-To: <202012081357.mUFLvYI9-lkp@intel.com>
From: Haris Iqbal <haris.iqbal@cloud.ionos.com>
Date: Tue, 8 Dec 2020 12:46:32 +0530
Message-ID: <CAJpMwyhnsNE0==NzPi=AbNtEgHaW5GGs3s+XvkXQxO_c4TRAsA@mail.gmail.com>
Subject: Re: [block:for-5.11/drivers 49/60] drivers/block/rnbd/rnbd-clt.c:1397:42:
 warning: size argument in 'strlcpy' call appears to be size of the source;
 expected the size of the destination
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com, 
	Jens Axboe <axboe@kernel.dk>, Jack Wang <jinpu.wang@cloud.ionos.com>, 
	Lutz Pogrell <lutz.pogrell@cloud.ionos.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: haris.iqbal@cloud.ionos.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@cloud.ionos.com header.s=google header.b=M770mrsS;       spf=pass
 (google.com: domain of haris.iqbal@cloud.ionos.com designates
 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=haris.iqbal@cloud.ionos.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ionos.com
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

Working on it.

On Tue, Dec 8, 2020 at 10:42 AM kernel test robot <lkp@intel.com> wrote:
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/axboe/linux-block.git for-5.11/drivers
> head:   eebf34a85c8c724676eba502d15202854f199b05
> commit: 64e8a6ece1a5b1fa21316918053d068baeac84af [49/60] block/rnbd-clt: Dynamically alloc buffer for pathname & blk_symlink_name
> config: arm-randconfig-r002-20201208 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project a2f922140f5380571fb74179f2bf622b3b925697)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm cross compiling tool for clang build
>         # apt-get install binutils-arm-linux-gnueabi
>         # https://git.kernel.org/pub/scm/linux/kernel/git/axboe/linux-block.git/commit/?id=64e8a6ece1a5b1fa21316918053d068baeac84af
>         git remote add block https://git.kernel.org/pub/scm/linux/kernel/git/axboe/linux-block.git
>         git fetch --no-tags block for-5.11/drivers
>         git checkout 64e8a6ece1a5b1fa21316918053d068baeac84af
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> drivers/block/rnbd/rnbd-clt.c:1397:42: warning: size argument in 'strlcpy' call appears to be size of the source; expected the size of the destination [-Wstrlcpy-strlcat-size]
>            strlcpy(dev->pathname, pathname, strlen(pathname) + 1);
>                                             ~~~~~~~^~~~~~~~~~~~~
>    1 warning generated.
>
> vim +/strlcpy +1397 drivers/block/rnbd/rnbd-clt.c
>
>   1363
>   1364  static struct rnbd_clt_dev *init_dev(struct rnbd_clt_session *sess,
>   1365                                        enum rnbd_access_mode access_mode,
>   1366                                        const char *pathname)
>   1367  {
>   1368          struct rnbd_clt_dev *dev;
>   1369          int ret;
>   1370
>   1371          dev = kzalloc_node(sizeof(*dev), GFP_KERNEL, NUMA_NO_NODE);
>   1372          if (!dev)
>   1373                  return ERR_PTR(-ENOMEM);
>   1374
>   1375          dev->hw_queues = kcalloc(nr_cpu_ids, sizeof(*dev->hw_queues),
>   1376                                   GFP_KERNEL);
>   1377          if (!dev->hw_queues) {
>   1378                  ret = -ENOMEM;
>   1379                  goto out_alloc;
>   1380          }
>   1381
>   1382          mutex_lock(&ida_lock);
>   1383          ret = ida_simple_get(&index_ida, 0, 1 << (MINORBITS - RNBD_PART_BITS),
>   1384                               GFP_KERNEL);
>   1385          mutex_unlock(&ida_lock);
>   1386          if (ret < 0) {
>   1387                  pr_err("Failed to initialize device '%s' from session %s, allocating idr failed, err: %d\n",
>   1388                         pathname, sess->sessname, ret);
>   1389                  goto out_queues;
>   1390          }
>   1391
>   1392          dev->pathname = kzalloc(strlen(pathname) + 1, GFP_KERNEL);
>   1393          if (!dev->pathname) {
>   1394                  ret = -ENOMEM;
>   1395                  goto out_queues;
>   1396          }
> > 1397          strlcpy(dev->pathname, pathname, strlen(pathname) + 1);
>   1398
>   1399          dev->clt_device_id      = ret;
>   1400          dev->sess               = sess;
>   1401          dev->access_mode        = access_mode;
>   1402          mutex_init(&dev->lock);
>   1403          refcount_set(&dev->refcount, 1);
>   1404          dev->dev_state = DEV_STATE_INIT;
>   1405
>   1406          /*
>   1407           * Here we called from sysfs entry, thus clt-sysfs is
>   1408           * responsible that session will not disappear.
>   1409           */
>   1410          WARN_ON(!rnbd_clt_get_sess(sess));
>   1411
>   1412          return dev;
>   1413
>   1414  out_queues:
>   1415          kfree(dev->hw_queues);
>   1416  out_alloc:
>   1417          kfree(dev);
>   1418          return ERR_PTR(ret);
>   1419  }
>   1420
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAJpMwyhnsNE0%3D%3DNzPi%3DAbNtEgHaW5GGs3s%2BXvkXQxO_c4TRAsA%40mail.gmail.com.
