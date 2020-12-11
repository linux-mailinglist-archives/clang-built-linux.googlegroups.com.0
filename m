Return-Path: <clang-built-linux+bncBDM3FG7YWUNBBHUQZ37AKGQE4GUUFZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id EEE302D7843
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 15:54:23 +0100 (CET)
Received: by mail-pf1-x43e.google.com with SMTP id j7sf6520721pfe.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 06:54:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607698462; cv=pass;
        d=google.com; s=arc-20160816;
        b=KnW1jK+akTsU9FoVtbNrHtAqeQa879+4R/uHBB3khqwqSj/LG7VcH380ejxlvTz74O
         Uj9lEsfJ5dLSPOb/4a9uJ7QVXqKVDKhavs4iwIRdxhQv1lUE/h+C+QazowmqpTyNPW5Y
         hxK3UxunLGOTwtFfNZZspOHYXpRHHEd4+V2T8SvzqM+pQX9mXfqjUR6mc5OAP1vx8239
         F1Y8RYjZmv8HMYctW0I3ROL9zOOg7cfLQzOdjF73U3Z0k64YMQeaEsuo2ekza2miHeb+
         LBlqotJjCCIXohAzv39V3rr/34xYPkFxyQmyEwBsg6PH88VFqszL7PCJ+lavIgqXKQEC
         7zGA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=wPivWEtYiV2yyBqekAxl3v95GTWiS1dsLAk8RDx7/cs=;
        b=myzUS6s49MLwCf9VaKECdJz1zkquRatU4atPfEL5Q4lHzCGtp43Me6UiVvECi5I4zq
         Sj7TwWsDpKjs7/MFrqk8uCjrn6A2C8nm40uz38ZnTky4pwcV6eYhoMUPnntvmWWuq9fw
         TkQd3zhWWctUBXacWR2emRoj1fAJu/V6VBWjrW2esIkoxq+wLmPXmjtkiFyykfithRZn
         cnoPp3P1QvS1N/Vc2B7nWWDaWJ3WjgURU24l5PO6tTd5XPKk+Lv2y9cqDRmy7Dqi9IjH
         F0HzeLT167DXfLrMh+gjhPlbH8/OThT7R84O7WBRqy1oHnZqwZpygrtTUDib+0XPvbCx
         82Og==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DciqOhvP;
       spf=pass (google.com: domain of jrdr.linux@gmail.com designates 2607:f8b0:4864:20::e41 as permitted sender) smtp.mailfrom=jrdr.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wPivWEtYiV2yyBqekAxl3v95GTWiS1dsLAk8RDx7/cs=;
        b=kPboDrXc3336hOTWeieVMcfNthmI67jKAWIk5poq1SPqD5A91LpK5dlug0dwBhxy6E
         MR/9kZ+6MONlOaVHQA9J5NrmS1GISWY+EZ3CdmHO8IO/DtrMrbJB1YsPy3mboBaHDKqG
         0K/LPxytP1csYjHsS8E+6sGtBqGr89caBaw70w7QjJuXvdxtR3oWHxFJCe2CUyyuhrrY
         SH9QU8yMy2BXWcHDYlachzdfuY/F9yHK69ZVsRzyX6wi/ByNFIJjnxMJDLIfqUIyYJ4F
         +jKMg9pbUjzwT6kJCGqR2Cb9+hEZJ+28vjPry5gWupodsNozEzpuGdrjEchYl1eZWhuS
         Tnzw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wPivWEtYiV2yyBqekAxl3v95GTWiS1dsLAk8RDx7/cs=;
        b=R/gx3e15KstyP3Iyx8ZhlxHjfUrSHrKgwPFTKEO6CcIjI+43BL98MjAOO0T55ZOobv
         1PdlUJE/f1HlTRn9fwcisuebc36jExbmEEEQJ/DyITAwM8A9osbtFr6/IDmXHwirBNkG
         qkF8ew2gLfAU1Z7Aok/FeN/EmyE3vE4qVYFAq2J3x2bzOVsUG28wb64S4JKBBb3B4RPE
         MpMTDUeCloJI/yd00ZUsmiWCBgv8S0uOayxgfrJ26V7coG9xeY2RaadMJ4h5VxqS03Ay
         1D5AO4ADZdEZ/Gsn+tTItZoQ7cTjMvucZEnQV6kHb3zTk8HpiMw289lWx8hhEDqYwmy5
         mUzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wPivWEtYiV2yyBqekAxl3v95GTWiS1dsLAk8RDx7/cs=;
        b=OiJbtFEg159Cq5nEmnwvZW74ueNjTujnx73P9Mkwl08r9Sx+wEr15MuUMowDgGAXx4
         0faAwQLP6UIjE+l72mapp+ZRWKIG+va/DTv5r1kYgwo8ZZvK4+rhG1sUU4UrbX6gdV8A
         m6s6lUKRi7oQPTCxkHegbhF5Qdupm/PDOajHlQgzTIaTY9H+1oWfvw1YSK/cCB/kSfZK
         Jw0+SzQluArmNImmX0S8n6PxzyGUlm+e9j9KLnIPwaiLE6NPGAsUE9ipenM5vpy7ApH0
         yFrdIwNUCVOP+bXBQ7YpCV4iOqpHtGFXtrNx2IhnffSIpQEBfL42bx554Y+6p5GUTxhu
         +t8g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ba3ma96jzVX6/kvTv4pgdWBPR4iUYv0zLXsjDR9MBMVWvKIx8
	sh1OAPc8bEwCtV9IUSfZFX8=
X-Google-Smtp-Source: ABdhPJz7O10650887L7Y7eFF9tzsD3vGVW144wLqVat9mKS6VFljQ9gZ7lKyO7wwO/LC2mpOB/aEew==
X-Received: by 2002:a17:90a:f694:: with SMTP id cl20mr13926377pjb.179.1607698462584;
        Fri, 11 Dec 2020 06:54:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9155:: with SMTP id 21ls3485855pfi.3.gmail; Fri, 11 Dec
 2020 06:54:21 -0800 (PST)
X-Received: by 2002:a62:1749:0:b029:19d:960c:1bb8 with SMTP id 70-20020a6217490000b029019d960c1bb8mr12327529pfx.63.1607698461716;
        Fri, 11 Dec 2020 06:54:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607698461; cv=none;
        d=google.com; s=arc-20160816;
        b=AokTnWSBypAWnqC4oBG6f4tBWUP5AeIComMCdTjAfO5/rag15VhdsHCC1tj/5np8es
         7X71lkykrkKFYxyaX/WenDevB2MqoJrxctF1OtmiB8D5RhPM6IHOLiQM4Ae1E0TG0OK/
         FQeuUit2lZojvpmGAygPrfc98WK/iaQasd/8bPRDnKaLWTh153+cFGo9A1Ixo+kjeuZP
         FJoxq5fw7iBouk2btJcBKmtcH97s2qfJS2KVcgrRwjJ3yu67Qs/aCpPySily+Ww6rVZd
         TqHhO9dLT0wmL6ha5NNn5qqv0VNj18lThp9PRJ9CKB6+9SWZMyefnwL8MHmCYH1/JwsH
         jLog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/mkWdDnnI9wIuKSG7hC0y8Yz2KE2CeF+wrvfsVbGsuo=;
        b=r+C1rdgs3ro5LCI1cpo6+LBQNA2ryjbo4NDnBc9hO+b6LoNP3iEz7LQzcUHBNSWAlu
         8UVb4RMdHx4TrRyvOI9032rc+Ls3qDcI0FWTH4QEMkvhBRQVgxm/nfkqWn6M5ibTGf+U
         b52buJ+Od3Pa9V2OIHqOx6m2dV4NjDzu/YBQdrJJgxTbwp2u0ZltvL2A1jD8sSygRILa
         MkufnyBDlnuoSmAbzaGZK0lDyMji4mkiRloc2yUD0sYtZRWUCjB0VB5WrI9BRlwg4Yb6
         MesERmC9kztxYFafonXUyNWUjeRuiPb8hpFEnQQNXNXzXH1qgtnD5but+I1PUEf7fSdU
         /Kyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DciqOhvP;
       spf=pass (google.com: domain of jrdr.linux@gmail.com designates 2607:f8b0:4864:20::e41 as permitted sender) smtp.mailfrom=jrdr.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-vs1-xe41.google.com (mail-vs1-xe41.google.com. [2607:f8b0:4864:20::e41])
        by gmr-mx.google.com with ESMTPS id nu3si619049pjb.0.2020.12.11.06.54.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Dec 2020 06:54:21 -0800 (PST)
Received-SPF: pass (google.com: domain of jrdr.linux@gmail.com designates 2607:f8b0:4864:20::e41 as permitted sender) client-ip=2607:f8b0:4864:20::e41;
Received: by mail-vs1-xe41.google.com with SMTP id x26so4931018vsq.1
        for <clang-built-linux@googlegroups.com>; Fri, 11 Dec 2020 06:54:21 -0800 (PST)
X-Received: by 2002:a67:be17:: with SMTP id x23mr13454453vsq.59.1607698460651;
 Fri, 11 Dec 2020 06:54:20 -0800 (PST)
MIME-Version: 1.0
References: <202012112150.CCpStiwY-lkp@intel.com>
In-Reply-To: <202012112150.CCpStiwY-lkp@intel.com>
From: Souptick Joarder <jrdr.linux@gmail.com>
Date: Fri, 11 Dec 2020 20:24:09 +0530
Message-ID: <CAFqt6zb8O+yvwGAcv-n1mHJgWrCpOBL2XQZz4CTw_7NqDZ7VDg@mail.gmail.com>
Subject: Re: [linux-next:master 6953/13205] drivers/dma/imx-dma.c:1048:20:
 warning: cast to smaller integer type 'enum imx_dma_type' from 'const void
To: kernel test robot <lkp@intel.com>
Cc: Fabio Estevam <festevam@gmail.com>, kbuild-all@lists.01.org, 
	clang-built-linux@googlegroups.com, 
	Linux Memory Management List <linux-mm@kvack.org>, Vinod Koul <vkoul@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jrdr.linux@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=DciqOhvP;       spf=pass
 (google.com: domain of jrdr.linux@gmail.com designates 2607:f8b0:4864:20::e41
 as permitted sender) smtp.mailfrom=jrdr.linux@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, Dec 11, 2020 at 7:17 PM kernel test robot <lkp@intel.com> wrote:
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   3cc2bd440f2171f093b3a8480a4b54d8c270ed38
> commit: 0ab785c894e618587e83bb67e8a8e96649868ad1 [6953/13205] dmaengine: imx-dma: Remove unused .id_table
> config: arm64-randconfig-r012-20201211 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 5ff35356f1af2bb92785b38c657463924d9ec386)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm64 cross compiling tool for clang build
>         # apt-get install binutils-aarch64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=0ab785c894e618587e83bb67e8a8e96649868ad1
>         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>         git fetch --no-tags linux-next master
>         git checkout 0ab785c894e618587e83bb67e8a8e96649868ad1
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> drivers/dma/imx-dma.c:1048:20: warning: cast to smaller integer type 'enum imx_dma_type' from 'const void *' [-Wvoid-pointer-to-enum-cast]
>            imxdma->devtype = (enum imx_dma_type)of_device_get_match_data(&pdev->dev);
>                              ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    1 warning generated.
>
> vim +1048 drivers/dma/imx-dma.c
>
>   1035
>   1036  static int __init imxdma_probe(struct platform_device *pdev)
>   1037  {
>   1038          struct imxdma_engine *imxdma;
>   1039          struct resource *res;
>   1040          int ret, i;
>   1041          int irq, irq_err;
>   1042
>   1043          imxdma = devm_kzalloc(&pdev->dev, sizeof(*imxdma), GFP_KERNEL);
>   1044          if (!imxdma)
>   1045                  return -ENOMEM;
>   1046
>   1047          imxdma->dev = &pdev->dev;
> > 1048          imxdma->devtype = (enum imx_dma_type)of_device_get_match_data(&pdev->dev);

of_device_get_match_data() returns void * which is assigned to enum
imx_dma_type type without extracting
the value. Anything wrong with the previous assignment ?

- imxdma->devtype = pdev->id_entry->driver_data;


>   1049
>   1050          res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
>   1051          imxdma->base = devm_ioremap_resource(&pdev->dev, res);
>   1052          if (IS_ERR(imxdma->base))
>   1053                  return PTR_ERR(imxdma->base);
>   1054
>   1055          irq = platform_get_irq(pdev, 0);
>   1056          if (irq < 0)
>   1057                  return irq;
>   1058
>   1059          imxdma->dma_ipg = devm_clk_get(&pdev->dev, "ipg");
>   1060          if (IS_ERR(imxdma->dma_ipg))
>   1061                  return PTR_ERR(imxdma->dma_ipg);
>   1062
>   1063          imxdma->dma_ahb = devm_clk_get(&pdev->dev, "ahb");
>   1064          if (IS_ERR(imxdma->dma_ahb))
>   1065                  return PTR_ERR(imxdma->dma_ahb);
>   1066
>   1067          ret = clk_prepare_enable(imxdma->dma_ipg);
>   1068          if (ret)
>   1069                  return ret;
>   1070          ret = clk_prepare_enable(imxdma->dma_ahb);
>   1071          if (ret)
>   1072                  goto disable_dma_ipg_clk;
>   1073
>   1074          /* reset DMA module */
>   1075          imx_dmav1_writel(imxdma, DCR_DRST, DMA_DCR);
>   1076
>   1077          if (is_imx1_dma(imxdma)) {
>   1078                  ret = devm_request_irq(&pdev->dev, irq,
>   1079                                         dma_irq_handler, 0, "DMA", imxdma);
>   1080                  if (ret) {
>   1081                          dev_warn(imxdma->dev, "Can't register IRQ for DMA\n");
>   1082                          goto disable_dma_ahb_clk;
>   1083                  }
>   1084                  imxdma->irq = irq;
>   1085
>   1086                  irq_err = platform_get_irq(pdev, 1);
>   1087                  if (irq_err < 0) {
>   1088                          ret = irq_err;
>   1089                          goto disable_dma_ahb_clk;
>   1090                  }
>   1091
>   1092                  ret = devm_request_irq(&pdev->dev, irq_err,
>   1093                                         imxdma_err_handler, 0, "DMA", imxdma);
>   1094                  if (ret) {
>   1095                          dev_warn(imxdma->dev, "Can't register ERRIRQ for DMA\n");
>   1096                          goto disable_dma_ahb_clk;
>   1097                  }
>   1098                  imxdma->irq_err = irq_err;
>   1099          }
>   1100
>   1101          /* enable DMA module */
>   1102          imx_dmav1_writel(imxdma, DCR_DEN, DMA_DCR);
>   1103
>   1104          /* clear all interrupts */
>   1105          imx_dmav1_writel(imxdma, (1 << IMX_DMA_CHANNELS) - 1, DMA_DISR);
>   1106
>   1107          /* disable interrupts */
>   1108          imx_dmav1_writel(imxdma, (1 << IMX_DMA_CHANNELS) - 1, DMA_DIMR);
>   1109
>   1110          INIT_LIST_HEAD(&imxdma->dma_device.channels);
>   1111
>   1112          dma_cap_set(DMA_SLAVE, imxdma->dma_device.cap_mask);
>   1113          dma_cap_set(DMA_CYCLIC, imxdma->dma_device.cap_mask);
>   1114          dma_cap_set(DMA_MEMCPY, imxdma->dma_device.cap_mask);
>   1115          dma_cap_set(DMA_INTERLEAVE, imxdma->dma_device.cap_mask);
>   1116
>   1117          /* Initialize 2D global parameters */
>   1118          for (i = 0; i < IMX_DMA_2D_SLOTS; i++)
>   1119                  imxdma->slots_2d[i].count = 0;
>   1120
>   1121          spin_lock_init(&imxdma->lock);
>   1122
>   1123          /* Initialize channel parameters */
>   1124          for (i = 0; i < IMX_DMA_CHANNELS; i++) {
>   1125                  struct imxdma_channel *imxdmac = &imxdma->channel[i];
>   1126
>   1127                  if (!is_imx1_dma(imxdma)) {
>   1128                          ret = devm_request_irq(&pdev->dev, irq + i,
>   1129                                          dma_irq_handler, 0, "DMA", imxdma);
>   1130                          if (ret) {
>   1131                                  dev_warn(imxdma->dev, "Can't register IRQ %d "
>   1132                                           "for DMA channel %d\n",
>   1133                                           irq + i, i);
>   1134                                  goto disable_dma_ahb_clk;
>   1135                          }
>   1136
>   1137                          imxdmac->irq = irq + i;
>   1138                          timer_setup(&imxdmac->watchdog, imxdma_watchdog, 0);
>   1139                  }
>   1140
>   1141                  imxdmac->imxdma = imxdma;
>   1142
>   1143                  INIT_LIST_HEAD(&imxdmac->ld_queue);
>   1144                  INIT_LIST_HEAD(&imxdmac->ld_free);
>   1145                  INIT_LIST_HEAD(&imxdmac->ld_active);
>   1146
>   1147                  tasklet_setup(&imxdmac->dma_tasklet, imxdma_tasklet);
>   1148                  imxdmac->chan.device = &imxdma->dma_device;
>   1149                  dma_cookie_init(&imxdmac->chan);
>   1150                  imxdmac->channel = i;
>   1151
>   1152                  /* Add the channel to the DMAC list */
>   1153                  list_add_tail(&imxdmac->chan.device_node,
>   1154                                &imxdma->dma_device.channels);
>   1155          }
>   1156
>   1157          imxdma->dma_device.dev = &pdev->dev;
>   1158
>   1159          imxdma->dma_device.device_alloc_chan_resources = imxdma_alloc_chan_resources;
>   1160          imxdma->dma_device.device_free_chan_resources = imxdma_free_chan_resources;
>   1161          imxdma->dma_device.device_tx_status = imxdma_tx_status;
>   1162          imxdma->dma_device.device_prep_slave_sg = imxdma_prep_slave_sg;
>   1163          imxdma->dma_device.device_prep_dma_cyclic = imxdma_prep_dma_cyclic;
>   1164          imxdma->dma_device.device_prep_dma_memcpy = imxdma_prep_dma_memcpy;
>   1165          imxdma->dma_device.device_prep_interleaved_dma = imxdma_prep_dma_interleaved;
>   1166          imxdma->dma_device.device_config = imxdma_config;
>   1167          imxdma->dma_device.device_terminate_all = imxdma_terminate_all;
>   1168          imxdma->dma_device.device_issue_pending = imxdma_issue_pending;
>   1169
>   1170          platform_set_drvdata(pdev, imxdma);
>   1171
>   1172          imxdma->dma_device.copy_align = DMAENGINE_ALIGN_4_BYTES;
>   1173          dma_set_max_seg_size(imxdma->dma_device.dev, 0xffffff);
>   1174
>   1175          ret = dma_async_device_register(&imxdma->dma_device);
>   1176          if (ret) {
>   1177                  dev_err(&pdev->dev, "unable to register\n");
>   1178                  goto disable_dma_ahb_clk;
>   1179          }
>   1180
>   1181          if (pdev->dev.of_node) {
>   1182                  ret = of_dma_controller_register(pdev->dev.of_node,
>   1183                                  imxdma_xlate, imxdma);
>   1184                  if (ret) {
>   1185                          dev_err(&pdev->dev, "unable to register of_dma_controller\n");
>   1186                          goto err_of_dma_controller;
>   1187                  }
>   1188          }
>   1189
>   1190          return 0;
>   1191
>   1192  err_of_dma_controller:
>   1193          dma_async_device_unregister(&imxdma->dma_device);
>   1194  disable_dma_ahb_clk:
>   1195          clk_disable_unprepare(imxdma->dma_ahb);
>   1196  disable_dma_ipg_clk:
>   1197          clk_disable_unprepare(imxdma->dma_ipg);
>   1198          return ret;
>   1199  }
>   1200
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAFqt6zb8O%2ByvwGAcv-n1mHJgWrCpOBL2XQZz4CTw_7NqDZ7VDg%40mail.gmail.com.
