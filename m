Return-Path: <clang-built-linux+bncBCN77QHK3UIBBWWA72EQMGQEDUOOHLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id 94D4D409CA5
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Sep 2021 21:02:51 +0200 (CEST)
Received: by mail-ua1-x93c.google.com with SMTP id l18-20020ab02552000000b002b507ce6a73sf6160589uan.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Sep 2021 12:02:51 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1631559770; cv=pass;
        d=google.com; s=arc-20160816;
        b=oWP3xdkICDkRKuyq2urC8Sd0MwJqx2GL6gT5mNNInosXotQ7tSPETkrtSwIh99gsZE
         Fi+SOYMyarYuUPBxTExDLZiS/w+csK99IWqogpm1nHomXgj9tLf1jkSOONRTs4R9svJG
         7e5J9zmMv2RkyUnNs4qMAC7r+i9V6gfyQXzXOwlQtVjIJEyzN5JwFJXQok3A4JV42L6Q
         1bFS7N2gEGi8dqIvpHX1RnCSOuSZV82xbr+oeJwLtGZjuu7OZURr4476EsVibJwUcete
         GDCzzAlnZmRSEgDJfQO+r7k6F6YzkVqLPYF3VGUE0rTImKsLlJei/2OHi7+W0c+f7uXj
         O1Hw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :content-disposition:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=1AIH7XRN9oPtRfu35zSAo+7jHyFeD9mMlGWZDTJlo3I=;
        b=wWGa6TmoGs1V2hAn6omZ9fYNhx3M7x7F1pWxPaLRPfZs8PjgY1dLEPZ7pEPfhgevi1
         04CwJrOkXlWePNP2y7QhH4smywTOOAN2dpXNceNjfjpTw2IO2PPdQ4DU57fG4tH+VXE6
         6Q7dpoi+kubxsgngyHnyQFr2yUULPpE89ld4qiOg90dSGV70qjYdIVgB3aQLLYtCMqqh
         ytEn4YSx377Eg4Id20VzOUZDUueRJLGhSpLYu4Lbexcla8yK7H4lyfy53enVl1jyache
         EXsdbfyPys/QtXC1QQXzfCxu/hVSI7VDe6T4+dznKWcW90SXmTqVce3sDniUSySx1AiJ
         I+Iw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=BrcmjdV+;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.94.46 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:content-disposition
         :in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=1AIH7XRN9oPtRfu35zSAo+7jHyFeD9mMlGWZDTJlo3I=;
        b=aLUxuLCHxBWRqLwG2LNrDznCQRsd7h70G6cx2aYDYLf013OMSQEUV1ihJd+eCLCgtk
         NrqPQlOslxA6XbgnR/u9wTojY566S3g+CmuShrk0KtwCoGWzv8fVs1UMKfcUPlZJDbR+
         GQ1xxE58UWjuNVgniGUoLvMoSxjr+uWMJ2DkcmNIXl7dBOgmZbMLjArtJlxWcDopADWs
         DAtwgOmljhhfkO6gZfpj6uPmOAIsB3g6wfZBsq0yVaYSLzVX4bIFIvbG7Tt/78E/H+eJ
         aLI1Uoek+30Q7BVGZwxf83k5nazyz7JuTUNQ3coo75kvNQEznCGjXpxkr8fMWs46k6Fy
         4vqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :content-disposition:in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1AIH7XRN9oPtRfu35zSAo+7jHyFeD9mMlGWZDTJlo3I=;
        b=1LA3hCrHCNeLK6J6EDjo3sYGzr5vRQ3OlHjDWY1qGg9+0cZWGXHABKVQlil/hRenpg
         OlVB0sJn/2hcp2j31d4g3vBeiyI5v7JhnWrWOeskySdgH/lsUUneFnBlmH8dfDJbaSeF
         ORDa3CDe48SwkSQDeVv8ahDfRKeUMyBh+OmcDraexd1s4noYvSD74emENXv70AnjP2Rv
         LUVXFc25xfbTw50X+NvAlR53yMftfysxBpibdxkVO6hw5/wFAT+6cJw+Rayq3jMnR5gm
         QfbxrdkmB0JcrAY9J3lmvUEFSGa4k4Evvy6dB0UpKfBpkNzbI0uZBstMKXe9fOwcHZkp
         EL+A==
X-Gm-Message-State: AOAM5316zbfZ934XTAnInuTutF4EQ/lXCcxfQ6Z7JovfV2aRETQNZf5u
	RHl7Gcte7qsrJA6DhtHh+6o=
X-Google-Smtp-Source: ABdhPJztVY757DdnVI25hh8+tO0qpTZyu/2nSs/X9ZXZ5g61izJ5kbk0YzyY83UXlm5KhIxG5DbS0g==
X-Received: by 2002:a67:1c05:: with SMTP id c5mr6501759vsc.25.1631559770354;
        Mon, 13 Sep 2021 12:02:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f294:: with SMTP id m20ls1136867vsk.3.gmail; Mon, 13 Sep
 2021 12:02:49 -0700 (PDT)
X-Received: by 2002:a05:6102:3112:: with SMTP id e18mr4974763vsh.50.1631559769755;
        Mon, 13 Sep 2021 12:02:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631559769; cv=pass;
        d=google.com; s=arc-20160816;
        b=K0WOn6Yk30+7hN20ZVXR2VUo5D9xP3w9i8nXgG/AcGOHfvy/ZVQTvoDccwWwZWgSp7
         ggQpRvXEkscMB4lecReyaQvWshR7kiWkyOSp7R19NWW1VmdjX+frnCd8yLwNaMo3G0c/
         4pojNSrR6CuR8lNqbjG62pRFJSkwKNrJlFzCW2tvDhKbIFClU5LumoqJz5Yko61YpKur
         d1Y1bxrUe5wJNgIQBMyakP/c3kNVHN//GnZA/L+MqV8q8Xbusqqr+xA3ZlJYrVNKSNBC
         u6yJCe6p7AZG4FqjUsffsQbQU8zG6ePkZ4Dm8KPiHiccz1l7WX+pLEoblU0Hmhu96bng
         OO8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:content-disposition:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=YcJ456lQsB0jcdqGrvhomxh2qaNQb8ShGL3ofYnCxGE=;
        b=Kshs8o26l7Mvmiaou7gLo31EIoHpTsG0UOPDJqyw5klBfwSlxKM4omtSCO4X4VRpu/
         FJzUs8REUhdWwKgtkf0UYGzbZxhdpG8vGQVpvXeulz3nSIk0NM5SixCY4Ku8T/0J8q7m
         r6FiWHOG0ixCOrir09ESGBf2u9ZiNKDpO/2z5RdY75yvuqhr+mAV9ntG8VGfxq7FXA0S
         kZTR3NDjoHIeV3BIiJlMr8a55/V28PJhTNmjixyoul47+/rFjV2CqClnNZMevQxHhNH1
         mIappkcdhAUhHHE99rOXZ3YPcRpqeRt55F08BLriTGL6Ni6m5DzQnNk0V5KNcRpLDHs7
         ws6A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=BrcmjdV+;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.94.46 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=nvidia.com
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2046.outbound.protection.outlook.com. [40.107.94.46])
        by gmr-mx.google.com with ESMTPS id u21si674932vsn.2.2021.09.13.12.02.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Sep 2021 12:02:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of jgg@nvidia.com designates 40.107.94.46 as permitted sender) client-ip=40.107.94.46;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gg/AeLy3FB5d+VgYJZLXJrX8RULnNBv8cpa/yxc2l+FjRuv1uk1kKbXbwSUeJ9rW0Ib9EvEJX96LE3+DOXj+51Cri+CUKDFbqY3W9Br/AdLrwle8YpNk6a9Lv/+fu59sHfPUjQb7T1HcgmAsed943HwY8B4HLXravdnKOwKbZXonuRNiGarE3YppgTyd8BQUoqv0WCe3cGKyfTKuyhhAJrRvOI0IKDQSiz9rc2tl9xiKpvQGGrd4tmz1oSKQ8I4DBuvTWUCYMslYbFob+Jhuu2EY/LHDlrfJJ1NBuWyHV+d+oXKGkuQX90USVvbBREAypIspTdWWMo6TpVXGVdwc6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=YcJ456lQsB0jcdqGrvhomxh2qaNQb8ShGL3ofYnCxGE=;
 b=SbWbU61dqwQNQd1gZFeyMBNPpwp+E46Qi3HSdsh8A8B+4ZnL99hU00Jt+bV3G1n44i0t/CtBqR0jvSQlp/6Cuy32nrUF0OV6sAcI8OekhTd81dY80v0WaqA0iA31WxGpBFuvY2DYNHtH3tkRazabHPbz5IfATp5yOccbu7FHf44mmH4gIoJ7EDhiZFwB76kvUGZBDhm0KQXldwKH6oyc+xnWxVPcc38hf88j9X9/0OKQdiR69MOV6SCxuDYFGzNwDBHkAUO/gi5UAPiT9j8VyIHXDVh0aHWwwc8+K+BjR9WPXkvghoIA94RQcbFhQOk+RUzCvBkdMI9h8q5ze8jWXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from BL0PR12MB5506.namprd12.prod.outlook.com (2603:10b6:208:1cb::22)
 by BL1PR12MB5318.namprd12.prod.outlook.com (2603:10b6:208:31d::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.16; Mon, 13 Sep
 2021 19:02:47 +0000
Received: from BL0PR12MB5506.namprd12.prod.outlook.com
 ([fe80::e8af:232:915e:2f95]) by BL0PR12MB5506.namprd12.prod.outlook.com
 ([fe80::e8af:232:915e:2f95%8]) with mapi id 15.20.4500.019; Mon, 13 Sep 2021
 19:02:47 +0000
Date: Mon, 13 Sep 2021 16:02:46 -0300
From: "'Jason Gunthorpe' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	kernel test robot <lkp@intel.com>, llvm@lists.linux.dev,
	kbuild-all@lists.01.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: drivers/infiniband/hw/qib/qib_sysfs.c:413:1: error:
 static_assert expression is not an integral constant expression
Message-ID: <20210913190246.GA4065468@nvidia.com>
References: <202109112002.NZceUwiC-lkp@intel.com>
 <20210913165317.GX2505917@nvidia.com>
 <CAKwvOdnGaVb1XGwYpNK_3zAEyZ0JC1SDjC1UzzFEH=d_Mdi7Fw@mail.gmail.com>
 <20210913183813.GY2505917@nvidia.com>
 <YT+eJY4JoobVsKWu@archlinux-ax161>
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YT+eJY4JoobVsKWu@archlinux-ax161>
X-ClientProxiedBy: BL1PR13CA0440.namprd13.prod.outlook.com
 (2603:10b6:208:2c3::25) To BL0PR12MB5506.namprd12.prod.outlook.com
 (2603:10b6:208:1cb::22)
MIME-Version: 1.0
Received: from mlx.ziepe.ca (142.162.113.129) by BL1PR13CA0440.namprd13.prod.outlook.com (2603:10b6:208:2c3::25) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.9 via Frontend Transport; Mon, 13 Sep 2021 19:02:47 +0000
Received: from jgg by mlx with local (Exim 4.94)	(envelope-from <jgg@nvidia.com>)	id 1mPrE6-00H4gF-8N; Mon, 13 Sep 2021 16:02:46 -0300
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9ea418e9-0c27-4417-87af-08d976e91346
X-MS-TrafficTypeDiagnostic: BL1PR12MB5318:
X-Microsoft-Antispam-PRVS: <BL1PR12MB53185F42AA01E0565243FC0DC2D99@BL1PR12MB5318.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NPNDIn3a/tt+qkgxaJC7P4jSKxOWyo4MfBVVABsJgayvsYyc8FQmL6aGIeEAA8XpD0yrEZsKm/z6PeD240CLEBIMg3NksgkiQaqQ/gvWNUMadWgoRAB7AL2LiKrRDnvUr+8YX5uBoLkFNN8hCwB14LLWd0Y4JAVEa8SpTaGJ2YZ09hFvx0DOthWMzqyKyEXclk1eynFm/NKywqYKUB3ksokRmEeZjWuhSzanxVjk3ZxrlNdDdLmfdQqjvQjApjJ1axxgQf8EXzE1dbxG5lA4YryDNrZJm1iWcAy9/m3KRXL5/ITCRYLsSXCxJJ4IcZnrZ/v9VJT84zAxz8Aiw0ARZ/CRUcuQKHCivVO1xdIVyDfKZNq5kmQKG7A2BDw7WMkPC55ldzDNtKjpM038HkOXav3FobyQ23IBDmhWnw6hN/Nz/uzyY8p4HDQ2EO6qX07T5COlpKPoFNMLbZHK198AOiDmm3ZSut3xzXfQ9Mx29jBGmFHkTxRxP9eW8berLxVG5J8qUj7Z2gIp87MfDO1EqbxHJD1rJrcDrx0DCulhuQ4spmlUhk6YhFpDyTH49h9ehC5dFlspbtXZslCkJHRa6Oduab7LXOcMPMEaeFv+WbxDbjCI4064SfwkclKVir0d+KhSYvQ8GscYsasMSK+04g==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR12MB5506.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(66946007)(8936002)(6916009)(36756003)(316002)(66476007)(66556008)(426003)(54906003)(8676002)(26005)(86362001)(2906002)(5660300002)(186003)(2616005)(38100700002)(1076003)(4326008)(9746002)(33656002)(508600001)(9786002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?aD2HHpRDPJvfq0XN4fIAUZs3Ybb57V4rZLNRMeqRsonDhnCA2fMbRMgZsKED?=
 =?us-ascii?Q?4hfGOMyLii+4yqBk/cYW/7D1Xv4xCGZ9yJEfyB9GcY4YYJZIEzect6cQd7xO?=
 =?us-ascii?Q?MsftH1qFVS2ypYtBT7aaIvJKPE57C4B33rAQwe/FdyrYADKr0UjJf9Jqy9T6?=
 =?us-ascii?Q?LStwT/vAdeM0AOEqWzcsDbK3KjODYbYxC8ecshYEBEkpwaaLmsLM5LSVcHMK?=
 =?us-ascii?Q?UXER1JEczHoiEGnOd/Qce2aK2dmCCBEi7MLVggL8XQbQBFqD3v2PgCr6zj6D?=
 =?us-ascii?Q?bhH18KO0XtYjRpMZdaJ6Vwa6t2lX51lIOg6YVwMil0JU75Q+mpwGAqr2zYPy?=
 =?us-ascii?Q?9tdq9A00zPyqmEjWJG3+losiTd11TAFbd8wqrKzC/FH5iysaGrg7QH+H5SVU?=
 =?us-ascii?Q?r+SOFFqLceuvkRyT7cwH4X+g49/97uN6XqRZEzSbl85wRwiARGTCoNRfjuDt?=
 =?us-ascii?Q?YcG5MZODSqoeNfVN5GOwhlSvncnejAPFlxICBPtamtv70BvuGxbxIebodGsw?=
 =?us-ascii?Q?ABdCX5YQNF7kXUDz4kBDQHY082U42Hp+mrdEusQ4IxSuNtPtssfuzMCql/3S?=
 =?us-ascii?Q?/5ykD7Qer2dqpJvlYTjWr24+vir02ZBSfCQvekW5pJCO9hKgE/5t9xuuOlOF?=
 =?us-ascii?Q?cBGnWbWM0lUU9S2jzOrdDV90A9FJIqcBmGs+A+WX+hRVEsu6yuYTqkYiP7pJ?=
 =?us-ascii?Q?PEiS/+sdwpkYYQqZ+3EHqsA/k3rXzoFhl1BdgclXpdshAc8dpPDhm4uvyGwR?=
 =?us-ascii?Q?w02Vec3cML4jj+PqDqEmZx5uqf5w8XjkSqjx6VFuRasTiEhWW0CWXrwleWiu?=
 =?us-ascii?Q?/ZyvdcODU4tLmtqS8NK9RS2w1Xe18I+sDkc4dYIokVccbupfEDN2dWm9W108?=
 =?us-ascii?Q?r61Tf44a89DITycHPty+Cg8aKdXoKJm7t6+svFeA53w8U6doll03Ny+OBRMO?=
 =?us-ascii?Q?AJ1J02X5CqGutGP6SrWXlu5Zo8NxfgKEsuyOS+9ygzBSMJ+TWjcIRg+jHXCJ?=
 =?us-ascii?Q?65zAN6Ev+fZs5ow4Ghhqc9PIzIOZAhMVB6xWCb63XsWdOQaeSIlBJNTpuUMi?=
 =?us-ascii?Q?I4PLZU7shFgQe/zHuU7+Nln/ZyQgYngSMTtEgTnwNUOtxX94mA6hWnB936VH?=
 =?us-ascii?Q?v1o+Mw3mucgWvQw7BR8HU4l9oQD0uM/pUIZlduF9Z6yPBoVm14WibKaGFCMp?=
 =?us-ascii?Q?e7drXseuE8BdR/3MGZkOmSjfl5Td9jJcI/F+ze00bRQ84dG9SATAgFRvPlhx?=
 =?us-ascii?Q?0ZwmBD/6s9Eqzqt5V06JrZqI93sgkteOsQ9yu9FE7bHAkgTqlo0abERtEGzU?=
 =?us-ascii?Q?VqHuvUMuBDNmCYW8d8j0BqKi?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ea418e9-0c27-4417-87af-08d976e91346
X-MS-Exchange-CrossTenant-AuthSource: BL0PR12MB5506.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Sep 2021 19:02:47.3488
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LP4fLt7+hxhY8WvbYMkV0UHlt0yk31Mm7ZSNbTphm6CRneQX6Vnc57plJakYQVGV
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR12MB5318
X-Original-Sender: jgg@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Nvidia.com header.s=selector2 header.b=BrcmjdV+;       arc=pass
 (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass
 fromdomain=nvidia.com);       spf=pass (google.com: domain of jgg@nvidia.com
 designates 40.107.94.46 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=nvidia.com
X-Original-From: Jason Gunthorpe <jgg@nvidia.com>
Reply-To: Jason Gunthorpe <jgg@nvidia.com>
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

On Mon, Sep 13, 2021 at 11:53:25AM -0700, Nathan Chancellor wrote:
> On Mon, Sep 13, 2021 at 03:38:13PM -0300, Jason Gunthorpe wrote:
> > On Mon, Sep 13, 2021 at 10:00:02AM -0700, Nick Desaulniers wrote:
> > 
> > > > This macro would like to know that the passed in member name has a u64
> > > > type, all the things I've come up with fail on clang - but many work
> > > > fine on gcc. Frankly I think this case is a clang bug myself..
> > > 
> > > Perhaps, though this assertion looks a bit like offsetof() to me. I
> > > wonder if that can help here?
> > 
> > The assertion would logically like to be this:
> > 
> >          static_assert(typecheck(((struct qib_port *)0)->N, u64))
> 
> This works for me with both GCC and clang, if that is acceptable to you?
> It fails if you change one of the variables to 'u32'.

Yes, thanks. Can't say I've even heard of __same_type before :\ would
be nice if this was in typecheck.h along with the other variations of
the same idea. Presumably it is a little bit different from those
somehow?

Jason

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210913190246.GA4065468%40nvidia.com.
