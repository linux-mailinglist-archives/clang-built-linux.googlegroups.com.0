Return-Path: <clang-built-linux+bncBCA6RCEUQQFBBV6S437AKGQEJG5CJ5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 589DE2DBB35
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Dec 2020 07:29:44 +0100 (CET)
Received: by mail-lf1-x137.google.com with SMTP id q13sf8383169lfd.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Dec 2020 22:29:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608100183; cv=pass;
        d=google.com; s=arc-20160816;
        b=n2W5SnznlWnGO4LnKKHhrJgMNQ1sTqZZxQEvoVimUdKTk5c+Pkfep6W4bsDiWZklZg
         Fly3pUhMAoskbfwdOch1/g24MJnfxczM19pnZ+QeFpSBGWKkIi2J4el+K0GEcRAOx4th
         6BQrUveWNlsf+9Yzk+C5JhF7/DuAe7UJY7Av4myn7mCfmNT0DppKuXY03/xAO4WxJ7eu
         7DbvrbvhMAbXWlpDCgJpfstBZ+6ZalFIYdF8xUh7xpWogZohvz6dHTmGNd/BAUUo5mRb
         z6eOm1Ea6JisNEPdCGRF7akNrPQ3iPl/oNzKRy6esU4Iyl88/HOjbSlyOCLcfNLGBK07
         T5/A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=5iBzwOyCqObH7v7M295SoOyNMtzrgs8M427DFLjtHQE=;
        b=P9NdgPkRbzsdWVzHSPUT94rLOKEq+kGSiHAVazqfMZBA+6gZfJBhgegUgp/UbnGbtl
         L+qfo+TyvEEGz9u8wm8C1PT2sRFGdirLfSJ+ggVvxxYjx6N+JRchnN9oaUP1vGP9Ffsd
         qfF2Lah/dAL/Ep6bpTGNJIR75coyF0FzfIpXTRXF1fBSaVcq1gKcyHZfI3bH8/K9zK5Q
         /pJf+LT3PEwEm9AjBx4qQZVGYE/bwakU3sWbcTkdMOe5qFpxZ5oCOuWVMLsNE2bR6RhT
         sovZlhMBH+8vD/7XGt0VbMcgCBKaFrqOc9GaoSMFfJx8peKjAARRkSWukoyxJ9aonD5v
         9Pzw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@cloud.ionos.com header.s=google header.b=apSdSC3i;
       spf=pass (google.com: domain of jinpu.wang@cloud.ionos.com designates 2a00:1450:4864:20::62e as permitted sender) smtp.mailfrom=jinpu.wang@cloud.ionos.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ionos.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5iBzwOyCqObH7v7M295SoOyNMtzrgs8M427DFLjtHQE=;
        b=Ola7AKG/71BcDBGnvPWY8IGLPgWzA9f9e5nrx5lrxf4M+EtiWU2SgHqor4w3F7dvCa
         onqOde4y77Kq8vzm/SXW6SL3C+pU9Iptd6KISI2/cZaO9+Nrq+6alNDwZ2/WKuiNeurh
         hLqaIAF/h+JXZ7sWdwowxJcFc+drba+FdjVv7Q+2W01wnS5bYGXfF7Vj9/vgJUbpad5e
         /02VlAwKPgMEqTBjnFOp+ZIhYhADUsmlxObLrIOVUGFjx4Re5hXmo9jY/tsiS2aA4z+r
         0fSwHv0e8n5UFjPt2CUXgKLJdJ4+88OBtCFNrMVmkgpdsIG1xqCGdLKAtpxNpSV8RaXR
         0gmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5iBzwOyCqObH7v7M295SoOyNMtzrgs8M427DFLjtHQE=;
        b=U9Clj+VLkAcxPb3S7/X1gCKIFw4J1LvDJfb5DhmtItTfYPNecIfXgrsNVWHJcXkA4p
         OdEwnYE9hnwFWKpOh+7dKSjoweWye0Cq99ucln5pkSPav/F/RFKXQKsUbxz/7uw0F5oM
         C3xrV5AJluFtmkVljTICVR3RGNaejAOosXxotKoHmv0lsgn8SCMP2KdBTRA/wLXFCuRX
         wC8tsoy9lsYIaGTtlzmXmcVLgD+40uGUiGH83XliAXKJTzMLSAYTKfkAMSwZ5cYplC6s
         Mmn+fYq7eaBLu4C5VGv6x4ag7idNQvGsO62/5x1P8i2V4cHu0yhUkvhwxQdu+NXubbJx
         ZZiQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ymHzuG/LPysxV4irBGsKYkj/aJHJwO3YKb1d903+iioPuKJRz
	IYc5u6pGgF38LpmBMaVWRzY=
X-Google-Smtp-Source: ABdhPJzQz+JG3yEiVJoWMu10Hr0WFgVF+GhNXskFEVX0MxKAlFKMP0k9+SM6UISF/CA98TVL5/CYPw==
X-Received: by 2002:a05:651c:211a:: with SMTP id a26mr14269494ljq.308.1608100183842;
        Tue, 15 Dec 2020 22:29:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:6145:: with SMTP id m5ls2719395lfk.2.gmail; Tue, 15 Dec
 2020 22:29:42 -0800 (PST)
X-Received: by 2002:ac2:5fc2:: with SMTP id q2mr12337027lfg.547.1608100182819;
        Tue, 15 Dec 2020 22:29:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608100182; cv=none;
        d=google.com; s=arc-20160816;
        b=tuUCPFpZC1LZrzb4/DDGs2K4nYyLJcvPeYRCm2wk8bHm5oUFOYpw9XYZLjukBVduGe
         1ECF6Sh+pKoE4nmM7YsFaR6ZAxdMdvb4xjAFhxFG6PbQyGdAu/JG0TKXzAukgzd10yCI
         3pgDonvieSoKaA8dNL0mpKUOp2Vd/f0qO5tzfBNimqYzECrNdH7RNnhcviQ4IXEa0yJ0
         hPK9SGUAo2Q5itWNBRWxeWJoSLd/vhqy3lQWbKue45/CnUdImpWSEGhCdyaSNIrp4nR2
         w7ljTHd6HbSp2dzreDv0pBTVJElLLPd4D/qaaHfhHMSpzGDYNWQ0Xxd0HsoOnEPZ+wSQ
         QDCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=LLDIZN+52dHA2Q00ZmFknUbyMne68RE5Ia9rozhDIVg=;
        b=T7qXP1GyBnY8g3yvwMrfJB98F7iGLJ+UizndCxftH7ntAGVpzI0vXLlY1TZnY9lrHK
         kYalShNbog9IO+Jr6nz2Ey4Ty7bqZ7ZsoXuX0845sJAjaQ70mNIW4mgpCLklwVwwYK3G
         F/c4MKaKoEx+RFQQltrcvE4dHtpOO30Asc63nxTfztKgnZwte7jj48BV2/XFTGvsxD/C
         tTSfRfWLsYOCM1UuIPpHsDE9RmWM+gbwqO1iB60t0NRMBKuqFK1jovfRnUr2IBDUdyzM
         Y83hF69H1EkSIqwFQnY1j2rlOtvP7ItTiy+uWZVlmONzjVbKtyTyNH5ZeHFjqXuf4/M0
         f58A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@cloud.ionos.com header.s=google header.b=apSdSC3i;
       spf=pass (google.com: domain of jinpu.wang@cloud.ionos.com designates 2a00:1450:4864:20::62e as permitted sender) smtp.mailfrom=jinpu.wang@cloud.ionos.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ionos.com
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com. [2a00:1450:4864:20::62e])
        by gmr-mx.google.com with ESMTPS id j15si32989lfk.12.2020.12.15.22.29.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Dec 2020 22:29:42 -0800 (PST)
Received-SPF: pass (google.com: domain of jinpu.wang@cloud.ionos.com designates 2a00:1450:4864:20::62e as permitted sender) client-ip=2a00:1450:4864:20::62e;
Received: by mail-ej1-x62e.google.com with SMTP id g20so31128811ejb.1
        for <clang-built-linux@googlegroups.com>; Tue, 15 Dec 2020 22:29:42 -0800 (PST)
X-Received: by 2002:a17:906:2e85:: with SMTP id o5mr7540473eji.521.1608100182486;
 Tue, 15 Dec 2020 22:29:42 -0800 (PST)
MIME-Version: 1.0
References: <202012160612.RJtcXy6U-lkp@intel.com>
In-Reply-To: <202012160612.RJtcXy6U-lkp@intel.com>
From: Jinpu Wang <jinpu.wang@cloud.ionos.com>
Date: Wed, 16 Dec 2020 07:29:31 +0100
Message-ID: <CAMGffEmDhQy1jx+6AdHXGC+UA=FkFrC0U76w1kuTDB=Vc-SN6w@mail.gmail.com>
Subject: Re: [linux-next:master 9830/13311] drivers/block/rnbd/rnbd-clt.c:1397:42:
 warning: size argument in 'strlcpy' call appears to be size of the source;
 expected the size of the destination
To: kernel test robot <lkp@intel.com>
Cc: Md Haris Iqbal <haris.iqbal@cloud.ionos.com>, kbuild-all@lists.01.org, 
	clang-built-linux@googlegroups.com, 
	Linux Memory Management List <linux-mm@kvack.org>, Jens Axboe <axboe@kernel.dk>, 
	Lutz Pogrell <lutz.pogrell@cloud.ionos.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jinpu.wang@cloud.ionos.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@cloud.ionos.com header.s=google header.b=apSdSC3i;       spf=pass
 (google.com: domain of jinpu.wang@cloud.ionos.com designates
 2a00:1450:4864:20::62e as permitted sender) smtp.mailfrom=jinpu.wang@cloud.ionos.com;
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

On Tue, Dec 15, 2020 at 11:09 PM kernel test robot <lkp@intel.com> wrote:
>
> Hi Md,
>
> FYI, the error/warning still remains.
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   9317f948b0b188b8d2fded75957e6d42c460df1b
> commit: 64e8a6ece1a5b1fa21316918053d068baeac84af [9830/13311] block/rnbd-clt: Dynamically alloc buffer for pathname & blk_symlink_name
> config: x86_64-randconfig-a006-20201216 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project a29ecca7819a6ed4250d3689b12b1f664bb790d7)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=64e8a6ece1a5b1fa21316918053d068baeac84af
>         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>         git fetch --no-tags linux-next master
>         git checkout 64e8a6ece1a5b1fa21316918053d068baeac84af
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
Hi robot,

The fix has been posted last week:
https://lore.kernel.org/linux-block/20201210101826.29656-2-jinpu.wang@cloud.ionos.com/T/#u

Thanks!

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMGffEmDhQy1jx%2B6AdHXGC%2BUA%3DFkFrC0U76w1kuTDB%3DVc-SN6w%40mail.gmail.com.
