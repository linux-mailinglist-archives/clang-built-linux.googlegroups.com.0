Return-Path: <clang-built-linux+bncBCN77QHK3UIBB6GY7KCQMGQEJ5FBKFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id EDABD39EA2A
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Jun 2021 01:32:09 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id g19-20020a63e6130000b029021f61637110sf11045037pgh.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Jun 2021 16:32:09 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1623108728; cv=pass;
        d=google.com; s=arc-20160816;
        b=CEVDNVbZO2II3c4rqKxiybN2ahsAR3PVF4WHykcsJQViVeJ7dHJSVsrfMVVtN3Hvvg
         WjwJLPmyJEbrKdOVfCuNrK2jdGnfS1k+JRjfpAO3lhlADkkACw2YS6dSBWtjEE8dxYJr
         uF8A9BQPxsYkM+QRMPLJf1WNWxoh9R/yH/TMKRTgnk6oTwx30+YmRHKt/DwQDkyiSD5T
         1JyVffHNivesmd6mfuQitUKuBGAgP7WiHTgO2bKgTU9gcgK5N2nwPXQWJIOjgQaXPE7V
         FscmPf4sPK6ocjrRj3ykSBCU5dyDmF6zRe+FmnhpxY/DWxAW8x5+RAbe6oNlHcW8J1nw
         NeLw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:in-reply-to
         :content-disposition:references:message-id:subject:cc:to:from:date
         :sender:dkim-signature;
        bh=WFyjRltObyV/kAxLmVGUx2XN4jALOLidkiLqfzFBru8=;
        b=S8eq29tyg3IwIC1T+gvrPSRPms3i7UkxOZE+ky9epjERAmDHBfXBI6s3QoSfPMfilL
         C22qxo/V5wQz79ysqwPIR8Bq12oIB8nbxld9RR7MY2N8TizYBLYIe/pfXb96wJHTAN8z
         MD2gabH3V4hzP+2CTNpu38mfdLM9GDtAxwhdEe9y76Dn1MEp40n5X8MlFMtY3YKFZZQ+
         bi+AWIlvB3wsB21uTLz292wllLAERR5Jy9X453hVeoyjcv9oqpXEoZ+cllHpHn2DL9I2
         0YZ4+Fg4OJbjoDygMCuB9KITBZxjdqAcimf9NKg0QGNxYRjlKZ4vijnu1vvZ42mvFMGt
         fMUg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=XNTfj0Ql;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.243.77 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references
         :content-disposition:in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WFyjRltObyV/kAxLmVGUx2XN4jALOLidkiLqfzFBru8=;
        b=E+LhX/f25cwMS+jBHlW1Ollw6fsnK82HZpi79rcE9ZtsMp7SsOKAJXJYM3i9u5rVzL
         fG88VcWdiARt6wXfnHwpPulFTW8ZzA9TKIFTzYkFy3IA4aGXm9p+q5aglDdF3BvXhjqP
         2Evh7yi2XZF90DSNzX0ceGkvTEt4vtWZ/2sJH7cKX/zLZjOF88RbZat654xFKNmKAncD
         JNF9xjmI2lXAYySUZEiyPd3vz65LCoWdC5Pe3bGCbzsRbOp4WBcnxHlKnLQda+sk1fXU
         rYtgKhqKLb5zAC5JX3lAFlEq0Yv1m2YZfbb0iaW4UkSRtgM116Rgbkm9+NFgJwWFxvkP
         DTMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:content-disposition:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=WFyjRltObyV/kAxLmVGUx2XN4jALOLidkiLqfzFBru8=;
        b=lNLDmLiOmpuhtoBUiRi+cxPqBpiHl79U7b13PJ9CjhN4F/4b0xWPytBGjMSLPkmYzy
         AsVQP8BdWR9PLv/6iNkn02GbRAsIz+ois/4g7NRC3n9q2rvTXuSUmsYn8VL9hcPNMm6F
         TMqaG7i8TQTaYLKtXktbEdhud5CqUdUl2MukuNov/cbahyLquKa6AHGGZvuFbbxJN2tj
         hS8Z7E5KVvcdK22d/tPEPoGYlPM7IjqZPazWnF9ckGT5JVX4yH2wMQZt6MXI+zhYH35e
         /ay1qemu1vr5Pqq+V6sIZq53ZXjlFj+cjx+rBlwfx1tPtu132eN323CuL/jHjftNVPNk
         oEqw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5325IVa/KbtRmfwfVf56tqFE1imSAFCjIIhD+5qJkwp7y50BF7zE
	LBvHwQdjeoUKBfJiGtjjHmE=
X-Google-Smtp-Source: ABdhPJwoXxrfFX95TPg9a/PiCvHbPnII7RSzIgRkVqfrO9fFL6bnxuz+pBIZBJvaXO5Wl/Weeaq1pg==
X-Received: by 2002:a62:1d0f:0:b029:2d5:3ec2:feb8 with SMTP id d15-20020a621d0f0000b02902d53ec2feb8mr19503131pfd.19.1623108728591;
        Mon, 07 Jun 2021 16:32:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:51cc:: with SMTP id i12ls8181009pgq.4.gmail; Mon, 07 Jun
 2021 16:32:08 -0700 (PDT)
X-Received: by 2002:a63:5b21:: with SMTP id p33mr20191284pgb.402.1623108727982;
        Mon, 07 Jun 2021 16:32:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623108727; cv=pass;
        d=google.com; s=arc-20160816;
        b=flq998cM+P8HnIvbRtqBiqPjlhI9w8jTidOb6+M5Kn7lX4FIN6uvLYkUfKHXJPbLZR
         aG6Us6H27xetEC6vLScfkQ8cKW7X7JOKSsSvLBSwfSEnfxYZQq0uXCL+T0yP9y5zVMsA
         nO9t3KIBBytws06LEGfwZtax5vBfidavmIXxyp+kLGDVZH77M3E3ZhBH2PeL7Pud2F8g
         7g9UOeLrVG6jIQbXTsemfvHHvYHaTZQSBYJMoEvY0LGY8nR/QGLPJFb0OkEbuWQZ8eCH
         zEfLbLFIhrkGOsboPyXt3YgZpNRuDzPFCLi36kt/QNTmlrA/hkbGgULGxJ6KW0M4rDmO
         bw9Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:content-disposition:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=35tgb7VnE398mqraT5aYrDQ5RJbp5fn1InjDMrIGms4=;
        b=stsbfxAGO3EVJMq2UoS4FN9YZzjwZDdLSET6CDA2uzZSbmnCawfxcn/uR8MK3B3qvT
         BGZID71d4aGGUjWvfnQHcRtMVSDp/enxoYGtS7wtqU7QaNmSpRznWii68vao0XiGgay3
         KGAKBGlh2ZsSGdOg/2Aw3YhVbGfyzlHG7HnaNTTxy9B0yewEznWsDXvXJZlyMsK3PpbV
         hiVkyKyUeF6Cg50LtaAh4Z98aWpmn6Cjl0tdP4Ou+cWjGxlMYCy27USo0WWqQhKFu48/
         qaYyoL21zaioLcTzhaJhe9Lw1aM/Qq2gsMM4ScUIXICeCEMYEg0qXJ5DjYzgR2oEQJdN
         OA6Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=XNTfj0Ql;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.243.77 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (mail-dm6nam12on2077.outbound.protection.outlook.com. [40.107.243.77])
        by gmr-mx.google.com with ESMTPS id k78si1081829pfd.5.2021.06.07.16.32.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Jun 2021 16:32:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of jgg@nvidia.com designates 40.107.243.77 as permitted sender) client-ip=40.107.243.77;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=edjaNQ4jUD8WLQcYKrCKubfFJsps73R7b3VcdK2QeXg9uRxl4VKG+9uGLeEz2tTMwyWF6Hsw9Jz+wUUmzggpysr7O38721DcKQldCgI3pRV3rtXS9z+3Ps+a1t6omizAx9WHIBH9VBiwmdKCMdrBjcj7w8lYhpyxq1lN9OE9/IWTcIcFZvjz83NHPZOvdpg6IpDs67TZ0jS8cYb4NEvLpnh3mdjlt1WZYSmnYev5FVkBEsBTRRgUzJ93VjBpL7KzHqQQRBJhg21vegMjKMm4kgMWuSiEmfLkCHvuXcQ0GulEp+gneye0ZjqpoHaHeIuFzkbCETgvBv4QkwlODXC0KA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=35tgb7VnE398mqraT5aYrDQ5RJbp5fn1InjDMrIGms4=;
 b=JVggemMVdFTbrA/YAy4NdVNSNXA2+CeJj98BNTnvc7LUyZCO9NQqD1EAAIZZOyffJ7D3k5SSxv8FgNZySK1Fr1APZiWxEQzk2vzpnZ9k53oSR4cyYfT0l9oT4art/ivaBSQWkd6P2vvqc7iljGxfozZQcp8j3TG4eYsR/x+wB1+1M8z7G2cxYXliqp3YyaSd9smdhJjmAVqTtiJeXd5xA0lmx8bm352FXriOwCgbO1NUBJCvREGoUsyGN5Opmvid83XOFsDg9YglSLmGCXqlhMJ0rrfVgdMvb4disgYXGLjUUQ4hDNZpc3qNZj3a79YSJqJWTzlZFWLj7N/FcrkyBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from BL0PR12MB5506.namprd12.prod.outlook.com (2603:10b6:208:1cb::22)
 by BL1PR12MB5141.namprd12.prod.outlook.com (2603:10b6:208:309::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.20; Mon, 7 Jun
 2021 23:32:04 +0000
Received: from BL0PR12MB5506.namprd12.prod.outlook.com
 ([fe80::3d51:a3b9:8611:684e]) by BL0PR12MB5506.namprd12.prod.outlook.com
 ([fe80::3d51:a3b9:8611:684e%6]) with mapi id 15.20.4195.030; Mon, 7 Jun 2021
 23:32:04 +0000
Date: Mon, 7 Jun 2021 20:32:02 -0300
From: Jason Gunthorpe <jgg@nvidia.com>
To: Parav Pandit <parav@nvidia.com>
Cc: Leon Romanovsky <leon@kernel.org>, Doug Ledford <dledford@redhat.com>,
	Greg KH <gregkh@linuxfoundation.org>,
	Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Adit Ranadive <aditr@vmware.com>, Ariel Elior <aelior@marvell.com>,
	Christian Benvenuti <benve@cisco.com>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	Dennis Dalessandro <dennis.dalessandro@cornelisnetworks.com>,
	Devesh Sharma <devesh.sharma@broadcom.com>,
	Gal Pressman <galpress@amazon.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
	Michal Kalderon <mkalderon@marvell.com>,
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
Subject: Re: [PATCH rdma-next v1 14/15] RDMA/core: Allow port_groups to be
 used with namespaces
Message-ID: <20210607233202.GU1002214@nvidia.com>
References: <cover.1623053078.git.leonro@nvidia.com>
 <a1a8a96629405ff3b2990f5f8dbd7b57a818571e.1623053078.git.leonro@nvidia.com>
 <PH0PR12MB5481C3DE73C097E938B4E5D1DC389@PH0PR12MB5481.namprd12.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <PH0PR12MB5481C3DE73C097E938B4E5D1DC389@PH0PR12MB5481.namprd12.prod.outlook.com>
X-Originating-IP: [47.55.113.94]
X-ClientProxiedBy: BL0PR02CA0092.namprd02.prod.outlook.com
 (2603:10b6:208:51::33) To BL0PR12MB5506.namprd12.prod.outlook.com
 (2603:10b6:208:1cb::22)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from mlx.ziepe.ca (47.55.113.94) by BL0PR02CA0092.namprd02.prod.outlook.com (2603:10b6:208:51::33) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.23 via Frontend Transport; Mon, 7 Jun 2021 23:32:03 +0000
Received: from jgg by mlx with local (Exim 4.94)	(envelope-from <jgg@nvidia.com>)	id 1lqOiw-003WBG-V0; Mon, 07 Jun 2021 20:32:02 -0300
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: afe03612-a17f-46a6-5025-08d92a0c74ca
X-MS-TrafficTypeDiagnostic: BL1PR12MB5141:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BL1PR12MB51413589046CE96D6EA1D410C2389@BL1PR12MB5141.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +Jcnifj29MCP/pIrw4ATRTurf76khZp1htj+WjjQ/GW+PrFPQfBmjXrPzujpuScM0K0eksQiRBJi92cUrnFDECGx5PO4gX8sI5Oh0Py99qHyJi08DexHaryRffFU0tRVH5a1hYVkIFPdQTFa656tyfv+wdPXA//OFgLZqcLHdGskLTunY7ct9/4Kw8lVlunG9+ykYtiX8HIFUnndMKV11hwJmyTABFQTIDFCxzEG+L9YpFqDrtzlowmgHildvYk2isKjyu9D5rDlhykKEk5C/RwJHUwNVCkZQIlNwrVHN/jJwKjZmt1617M2XNhz8MqdWyqUHQf3w+1cyTB9wRyDVGlTHvJTk7mBTEuiwYVdPBcaQEAHkaCrSU97s4Fg4RzZvry9dddLkaeYb8hf8XMlyla2i1WApvQwjESTlmB5KL1yFHgxVVOJbu9QWBUlpj7GxzDF2XizYG0WOro2TKUpjKtyxpFc4pZ4KlAf4r/8l1WsqUPFQBNeHAUBsO/dmgHmMOm+S109zufcp0qdCFHZq03b/PET+M4s6xkebjH+C7WiFox7zhpcC0TozELaHqicZ657v3spSv9HkaTmKJpBCNI+X1LPCNAuAgH0In0mOj0=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR12MB5506.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(136003)(366004)(346002)(39860400002)(396003)(2616005)(7416002)(316002)(1076003)(37006003)(26005)(5660300002)(2906002)(66556008)(66476007)(186003)(9786002)(4326008)(66946007)(426003)(54906003)(9746002)(33656002)(83380400001)(478600001)(36756003)(6636002)(8676002)(8936002)(6862004)(38100700002)(86362001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?+AhU9Pmq5OIYVKE42826jxR9bqvhXC+o2ZV1MWxz9ysJ1MzZIJ0+l10mp0nh?=
 =?us-ascii?Q?5TaQRmKNIgjG2iId+1ZAXoOKJ9SG60Xeqe0cty50mm2ErYLjzbSrgotrAFhW?=
 =?us-ascii?Q?mIMYxLj0FViKEamTOsbvPwOt2lKuaeXsdLGAvWAOCji1bzsgV9OoRl1Qig5f?=
 =?us-ascii?Q?0XEeGqPdEdxEuyiYXmpkLh6FkUrNy75cGsGDDHEaNNuFXlrGXqrwxn96e+sq?=
 =?us-ascii?Q?KNRgBjj9i0mUvwqOcTN1KhXEyTAGWvc8PbP411gt9T2sti03bIBCSdV+ImeN?=
 =?us-ascii?Q?qf249Vj0tXPJ08Iwct8TVqkeNVVxObf1j10PS9m40naavU+LTgRxycOKPDzV?=
 =?us-ascii?Q?q40IIag7gqRG4D3qJVsr7356zui4bEBQRcRz/rIP842i4XfcZR35yiIZZgf1?=
 =?us-ascii?Q?h8GUrwM1kh3e9QEo8oaiqSd60rJP33s5HC3xclfSzVZoKIgZgwL/RUxvNG/V?=
 =?us-ascii?Q?mqfEKygpdZd5P5v4Ts8d96S5L4hCl1pMBeWP+S2pgBZs5sEQjrjI/4KxOYi0?=
 =?us-ascii?Q?bw5oS5nAa5MKjIcNNE0cy8F7BSfhFAmJq2Op9tCVF7B4lXf4xrfp3+pfhViQ?=
 =?us-ascii?Q?UZl+c5k14r3NA38SUAWs0bC6Y/DXAiW0h6PMthY+UWgSTGAQNt4SWD8h7v3V?=
 =?us-ascii?Q?mdVXCcGFeU+7R/gp6pKGV9Cohlw5lYIOUc6IjAFZ6ZuLnfRZ5F5arAQKZxT8?=
 =?us-ascii?Q?kvUTyQm2HR0hSCX98Ayl3dxbFLRVhmhGz2iz+vVCqUGVc2WeLoj9ML9Ru98G?=
 =?us-ascii?Q?QPNjqPfvZyHI25XOtCP5VhmkOHZ6BVAKtQwgJ0bBYZ7ETrjDDtIrWtrNrwEW?=
 =?us-ascii?Q?W6rlpuB5JQ0i5g+0l70T4xUhg/H/5zIgSZ1Jtf8KB3FaY/NxxQTJTvGtvpMj?=
 =?us-ascii?Q?EMXym+8KXCbnivRjrtOFccsnbPscmnWWWp7f6KTK5o5h2kw+5DxwDVdZNvRv?=
 =?us-ascii?Q?6vgzRUviTA5PerMoP4q7p8u+9FbcFJvFOlqCuwQGRVr0OF3VBcWExOuFiZZo?=
 =?us-ascii?Q?oj4ZmeaPsdr4SeWl/cvCiQy5VbPMEmrEm4e7aCp3/5AjlklkUAV2Thiiayqo?=
 =?us-ascii?Q?Qth67M9adhttjcWtTCfq98VsyioGx3n62dfg4LYN2Dbay1a0SYNwficg1yzO?=
 =?us-ascii?Q?/Qb+6mxUev5iV8gbcgn0ed8ReeeMs4DksrAts58rBGefwmvoNxp/SOliVx9k?=
 =?us-ascii?Q?gBVxRHSx3Zj86FypUbOzKif59M+7HW43FykFmip5N3A2lrQqBeYrGcMFhk/C?=
 =?us-ascii?Q?dohCrjFJLRpD2fmOuqYyR3pC7of59KCMr6B4gAiRAnMl9CYcHDzo169moLH/?=
 =?us-ascii?Q?BoduT5tX0wjec+4QIzWlAfdd?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: afe03612-a17f-46a6-5025-08d92a0c74ca
X-MS-Exchange-CrossTenant-AuthSource: BL0PR12MB5506.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jun 2021 23:32:03.9166
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ecuL86syDestcKggzs9FMylbtr5OnlQB8XITxz7SxqsRvcSwEG6hsIX9XGNryZKU
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR12MB5141
X-Original-Sender: jgg@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Nvidia.com header.s=selector2 header.b=XNTfj0Ql;       arc=pass
 (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass
 fromdomain=nvidia.com);       spf=pass (google.com: domain of jgg@nvidia.com
 designates 40.107.243.77 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
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

On Mon, Jun 07, 2021 at 01:29:58PM +0000, Parav Pandit wrote:
> 
> 
> > From: Leon Romanovsky <leon@kernel.org>
> > Sent: Monday, June 7, 2021 1:48 PM
> > 
> > From: Jason Gunthorpe <jgg@nvidia.com>
> > 
> > Now that the port_groups data is being destroyed and managed by the core
> > code this restriction is no longer needed. All the ib_port_attrs are compatible
> > with the core's sysfs lifecycle.
> > 
> > Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
> > Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
> >  drivers/infiniband/core/device.c | 10 ++++------
> > drivers/infiniband/core/sysfs.c  | 17 ++++++-----------
> >  2 files changed, 10 insertions(+), 17 deletions(-)
> > 
> > diff --git a/drivers/infiniband/core/device.c
> > b/drivers/infiniband/core/device.c
> > index 2cbd77933ea5..92f224a97481 100644
> > +++ b/drivers/infiniband/core/device.c
> > @@ -1698,13 +1698,11 @@ int ib_device_set_netns_put(struct sk_buff
> > *skb,
> >  	}
> > 
> >  	/*
> > -	 * Currently supported only for those providers which support
> > -	 * disassociation and don't do port specific sysfs init. Once a
> > -	 * port_cleanup infrastructure is implemented, this limitation will be
> > -	 * removed.
> > +	 * All the ib_clients, including uverbs, are reset when the namespace
> > is
> > +	 * changed and this cannot be blocked waiting for userspace to do
> > +	 * something, so disassociation is mandatory.
> >  	 */
> > -	if (!dev->ops.disassociate_ucontext || dev->ops.port_groups ||
> > -	    ib_devices_shared_netns) {

So this is OK since we have the clean up now

> > +	if (!dev->ops.disassociate_ucontext || ib_devices_shared_netns) {
> >  		ret = -EOPNOTSUPP;
> >  		goto ns_err;
> >  	}
> > diff --git a/drivers/infiniband/core/sysfs.c b/drivers/infiniband/core/sysfs.c
> > index 09a2e1066df0..f42034fcf3d9 100644
> > +++ b/drivers/infiniband/core/sysfs.c
> > @@ -1236,11 +1236,9 @@ static struct ib_port *setup_port(struct
> > ib_core_device *coredev, int port_num,
> >  	ret = sysfs_create_groups(&p->kobj, p->groups_list);
> >  	if (ret)
> >  		goto err_del;
> > -	if (is_full_dev) {
> > -		ret = sysfs_create_groups(&p->kobj, device-
> > >ops.port_groups);
> > -		if (ret)
> > -			goto err_groups;
> > -	}
> > +	ret = sysfs_create_groups(&p->kobj, device->ops.port_groups);
> > +	if (ret)
> > +		goto err_groups;
> 
> This will expose counters in all net namespaces in shared mode
> (default case).  Application running in one net namespace will be
> able to monitor counters of other net namespace.  This should be
> avoided.

And you want this to stay blocked because the port_groups mostly
contain counters?

Jason

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210607233202.GU1002214%40nvidia.com.
