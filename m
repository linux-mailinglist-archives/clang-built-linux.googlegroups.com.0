Return-Path: <clang-built-linux+bncBCN77QHK3UIBBCFM7CCQMGQEWTQTR5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F04839DCEE
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Jun 2021 14:50:17 +0200 (CEST)
Received: by mail-il1-x13e.google.com with SMTP id c11-20020a928e0b0000b02901e829148382sf5646815ild.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Jun 2021 05:50:17 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1623070216; cv=pass;
        d=google.com; s=arc-20160816;
        b=diQFG1o1QWKIzy+yjxQ9j+kH0bWRTJGD2YltkhaJYTFqR8IHEmZbpZNgMaF/2x2hRU
         MAu6j6TIg0gCNQIc0bJurNmbevYgWK2YO9YxLAd7sDPnXhfrjwJCZa69fQRockjErwPy
         hAgr0nff/Icwq++kzABBDz5OyLBZHCn/9TBju9vnRgZLGljUyPYGEGR1clerq6Qq5tQN
         FRQ+//xCtDhUoS663Bh3hZg7X4IAzguOwSlbm1nVE7DcQgcDQ5AlWuJMl4KVO/om26BG
         n8LCv5ybbzBQqSjmNLbC1+YcANma64TAwEQtu2fDbOJdECynZiIdlMfIWrtJt07KEk54
         31GQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:in-reply-to
         :content-disposition:references:message-id:subject:cc:to:from:date
         :sender:dkim-signature;
        bh=laUDXg+YaU5q9PqHAxIh64Q3CK8kDWFn0i4gqbsY2YE=;
        b=ZVWp7SNKKLYEEs9qPVvEf9RPd60HHbMlTTndR6UvUHWa+SdRD1ZAv+dD2fI5lrHs7t
         MZoi70IUW62zdHZEOenK0N7igtpnVwspp/oJL1WOUGUKqX65yx9SIXZd7jQmqdI0mdIH
         96th67lzLUVSsOKEOHsLdBI78qSmWxpFJ27zoFiHO2pvCOdg1aOvhLIhNk9EANOj0BrS
         w+uMqpTiNl4nvRSWGR+qTiKKwkrIO2Yyy3yOAWWh1+ZIRaEnUg6VhEiDWQ3484ksiAtx
         bbfzqu7Vyx/JoaTYARscEJEKBFU0KV4CZs/eqsxcGips1EXluZMHZYXre6/he1diBVe8
         cM7w==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b="hW3N/R/x";
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.243.79 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references
         :content-disposition:in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=laUDXg+YaU5q9PqHAxIh64Q3CK8kDWFn0i4gqbsY2YE=;
        b=TK7SCA3VgrSqkt7I8OnAukLQwTCnE/MU97Xrx+U+KNPoKMvYZhB5L05Uywafv2qBTC
         RtcH/9OagxNKPFc+2TUU1vtjVSD97n8satlLQt6qqQDDg+jrNysIUSRBToSQiRgD9/fs
         uArk3wgNdcEuwGOmF/L04JLyqjQK6ZQB5Ji9wJJg72p28devwgCxfAjn4qIwNK0ErEQg
         TXeTFvN4B3gZtulBbJasvFujp/cleHAgRGq6y6GeVRTgwv7wUEelgdjAMtm4M1TMCIXF
         xRa7fZiRINPo74lGQSZsLDD50zPkJENL8ohGhOQqVH7SeFb84YipKsOSdP8qztBB7mFE
         K7dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:content-disposition:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=laUDXg+YaU5q9PqHAxIh64Q3CK8kDWFn0i4gqbsY2YE=;
        b=G5Z6XxDR4m7HavX2UNcCibzJwrjd13/HyaAytI+3h0i5qgjHmd4y1XNAPSbqaJt7Cb
         KJTNafz/5zCi7OCwiadj9zuByLS/NsC3xrF5HMnbMyq4xQzHnlDT6Alwx7k8DneB1Wj6
         fclM4L3Wl/FEqTgWF2rDV8GD8ZWUorxKeWVrCdEE2AmMK7ZcXbfUU9nYnXCq7aJ1EYRU
         cK8SCdG+1OCx3Z+h2GfC84hi8llGzWHb3MyV1unvVUSodECfXdkWkSbY14zuoLDwgBtl
         wM78VlwKcy1gtETYAB+F9z+CYk34ENBBp882aW1rcDDvKFO9Bcm9cwpmNUij2A9EQN2W
         kU/Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533itHwbhw7cqlgNDqCBdk2tNDKmjt59N8ErhljkWscqP8V1z6Yo
	VcwMZA1JRJi9ZX3HFq4EjYs=
X-Google-Smtp-Source: ABdhPJwtdLjXsm0o86kS8fEz3mt/g2LpXHq52m0hWBaxTCdXg/4ZFw4Cm3NJnhpvbZUVZWuCwpj58g==
X-Received: by 2002:a6b:fa06:: with SMTP id p6mr14728145ioh.200.1623070216558;
        Mon, 07 Jun 2021 05:50:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:d092:: with SMTP id h18ls3882052ilh.7.gmail; Mon, 07 Jun
 2021 05:50:16 -0700 (PDT)
X-Received: by 2002:a05:6e02:1486:: with SMTP id n6mr1468785ilk.174.1623070216227;
        Mon, 07 Jun 2021 05:50:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623070216; cv=pass;
        d=google.com; s=arc-20160816;
        b=lly0pSlwyMlPvnPvd4lq+WbPrUrze/P4lm9OJ9WAkgwLCbnjbdlfwCJ3VqLdwE97bh
         PfuggQ6vRMtOGL5MVjelT6yyes7ieQ9WdF46lw3c8rGRAxl/+pti1KvbEcs7+effAWKN
         xL96Hzr+pxEF5yE1/WEh5PQ15F5nx/SQv3nVl7n+MwOQydPdSOMAV97U738OxMKzU+Dt
         Ul4RXaufpGNXXxpFbhgGFkN+X0PTpafRSEYqsa/a7H8fdhWq8tA7O2xJQpq37+XMI7lp
         d0+dCi1U4Alui1aAbJ9OfKoSMMcKQ1TPkcpxoVAeI5oVpMwl2cs1bRDdwKmEqR8zUvwv
         ws0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:content-disposition:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=h0X8ivA5RIbq1KQPqriIiFa4RMjlmtZOOxxBxMnHJjo=;
        b=UzPV05aorrCALF7Sn56Xu6ebd7TYWIaQiaRbAcVa1e22J2QSpomQhOQlZnHjvXNq8m
         xLaoF9pi14MbRj1nERIDWJO9VCsmiSAPeefC90fOF8PETEX2kOiWgKVcrorAgHf5zZYG
         TrX5feCjYPj0MRwk2cvhR9MHOqcI2qa/1A88SdhBmfclmcUJlHqVGykpBY3ZIx6ORPeN
         PejxO1fQXKqjlB5dq4p4dQG2c4/MICQqweearpko+6xVAPe7yOSyiVoO44+tPvQa9c1J
         bBxEQAtlfvEVUxCXdRYqbuwTMuJXFpENM1OBXD3d0tW3gBqQ3LPpIlIXMKn3gilyuvrQ
         0Oqw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b="hW3N/R/x";
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.243.79 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (mail-dm6nam12on2079.outbound.protection.outlook.com. [40.107.243.79])
        by gmr-mx.google.com with ESMTPS id v124si1144449iof.2.2021.06.07.05.50.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Jun 2021 05:50:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of jgg@nvidia.com designates 40.107.243.79 as permitted sender) client-ip=40.107.243.79;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=htw3Te87RZaFhL5Q54+puTt9regJ16TbmsEDomqNNaGqLqyQ1H2PMbu783byopWu8M93caBOO5P1tdin08D37acT1HrlTOA6egPplA8zK78/z3i/0tvbK7vqoIY5u+T5S26WrhA6JlDKvWujcsTBbqezQL86RVuo2BcQ2s2UPe1V2ZjPpUiYceAVxs5WNM+819bNHamtNIpQP7W0OAshrxjHTL/C8hEHBtcIKQBB4TvoUPfTAqqpdqj6OKze5caf7r/RIEC0KV6MYs5wRb+qFAs4HEvZ4nTS/xgfZbcyuqZYiNxOSgAez/uWHPfZ4pn6NJlElpNerrf6zZPitwgU/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h0X8ivA5RIbq1KQPqriIiFa4RMjlmtZOOxxBxMnHJjo=;
 b=nDihR0zGVqoKLFhyIvDzUDG9rnsy3UcskrNCf5hTT1uimLV8f7QjNjFB7A6gi7qb8I/GBEaSHYvaQmnV2P8YK2gYrMyWyE6lTYqfMLmVmMgg09bkiK2PEwCrLdc/4o+yzD95gQqBanhRT85qR5ACW1mPMpexOpcCRu0t4MfJVueUFO/+NDqaUOaZYVplT4FUJqJxZfckj2knDCjDoSAqIpFuw2PlbYmCOMsfAh3oYjKx570EISiJF7W+FeXyLIcxFDaW0xXjaHRfLdXfiSFom9KjXthxB1jM7qxXEDrSNy9VNR1rmVq69wUMdChbLlPAdJeILNYiOBfxyIvkFXieyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from BL0PR12MB5506.namprd12.prod.outlook.com (2603:10b6:208:1cb::22)
 by BL1PR12MB5270.namprd12.prod.outlook.com (2603:10b6:208:31e::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.22; Mon, 7 Jun
 2021 12:50:13 +0000
Received: from BL0PR12MB5506.namprd12.prod.outlook.com
 ([fe80::3d51:a3b9:8611:684e]) by BL0PR12MB5506.namprd12.prod.outlook.com
 ([fe80::3d51:a3b9:8611:684e%6]) with mapi id 15.20.4195.030; Mon, 7 Jun 2021
 12:50:13 +0000
Date: Mon, 7 Jun 2021 09:50:12 -0300
From: Jason Gunthorpe <jgg@nvidia.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Leon Romanovsky <leon@kernel.org>, Doug Ledford <dledford@redhat.com>,
	Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Adit Ranadive <aditr@vmware.com>, Ariel Elior <aelior@marvell.com>,
	Christian Benvenuti <benve@cisco.com>,
	clang-built-linux@googlegroups.com,
	Dennis Dalessandro <dennis.dalessandro@cornelisnetworks.com>,
	Devesh Sharma <devesh.sharma@broadcom.com>,
	Gal Pressman <galpress@amazon.com>, linux-kernel@vger.kernel.org,
	linux-rdma@vger.kernel.org, Michal Kalderon <mkalderon@marvell.com>,
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
Subject: Re: [PATCH rdma-next v1 10/15] RDMA/cm: Use an attribute_group on
 the ib_port_attribute intead of kobj's
Message-ID: <20210607125012.GE1002214@nvidia.com>
References: <cover.1623053078.git.leonro@nvidia.com>
 <00e578937f557954d240bc0856f45b3f752d6cba.1623053078.git.leonro@nvidia.com>
 <YL3z/xpm5EYHFuZs@kroah.com>
 <20210607121411.GC1002214@nvidia.com>
 <YL4TkfVlTellmnc+@kroah.com>
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YL4TkfVlTellmnc+@kroah.com>
X-Originating-IP: [47.55.113.94]
X-ClientProxiedBy: BL1PR13CA0072.namprd13.prod.outlook.com
 (2603:10b6:208:2b8::17) To BL0PR12MB5506.namprd12.prod.outlook.com
 (2603:10b6:208:1cb::22)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from mlx.ziepe.ca (47.55.113.94) by BL1PR13CA0072.namprd13.prod.outlook.com (2603:10b6:208:2b8::17) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4219.9 via Frontend Transport; Mon, 7 Jun 2021 12:50:13 +0000
Received: from jgg by mlx with local (Exim 4.94)	(envelope-from <jgg@nvidia.com>)	id 1lqEho-003Gzl-Cd; Mon, 07 Jun 2021 09:50:12 -0300
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0c989740-9276-45ed-d109-08d929b2cabc
X-MS-TrafficTypeDiagnostic: BL1PR12MB5270:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BL1PR12MB5270FFB317CA74B731CBC4F0C2389@BL1PR12MB5270.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4125;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nXG/IKRqqB1+ziLvjZD1TXvelnv6NpEmaKj6zoYA/i+V74GcjvUA+i0AtsP0tMAqjUsCMXjQQ5UyChOpRRj0+aD5HKP3NQqpeC3W8Ay3r8QTPh1L/WiloYLt8K0FHklcaV5sE6PuxABF13Tzwx+p4cuUqsODmtyUqpPvJZUtlk8ZpMbgvYw8zJiJf1wEo9JJ6/sx20iWwjQkdvJN4dp9j7G078ZaqgIJUnNO7dA/i4/AyEme7saVjBi5A1EM6OPgjh3mxcwOXM1/sWYq3M7Z0mGh3QBEetRGoj0jKbcAB7IifvK8/9TvUmcLKfnbkwufVKlzOViBfKkaAskqf4c1bMt26477QHuR/aCdQbJGWiSS+e6XqIsAqQj6szzAY191MMo3XXMXNeS+7w49ep3HpoqfNEIOPalH8FCDHp8AWqXE6nNbhfBi+mgam0OPXWlG0mtcb5nYMhh6aBNcsoIzIJESr5IYZF8iEbPWNHiJdXSRWofuuqjeWFfbhKDEC6J61tVGhg4UNIF9K9dRSevbox3jjvA+vQLk7TfbIV1IKjKxRWEkXkh8bOhO8qwd1rfGGpFxuIKjbO5gt4avtvUlhAQMN3nRK40fcE5zKwBp2XE=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR12MB5506.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(136003)(346002)(396003)(39860400002)(366004)(478600001)(2616005)(36756003)(26005)(426003)(9746002)(4326008)(7416002)(9786002)(5660300002)(33656002)(86362001)(54906003)(316002)(66476007)(66946007)(83380400001)(8936002)(66556008)(186003)(6916009)(38100700002)(8676002)(2906002)(1076003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?liVsfgCwHtF380dNal3j/MYTv4uwFYL+y9fqXIwJ+zg7ZL3PyDvljYL1QGag?=
 =?us-ascii?Q?v4YTv4/P/HOoRv8RC/iE/UrSUViSbxJ5FLgOvfqiNvmE3MRrZ16qn6VUM6CJ?=
 =?us-ascii?Q?0ql+srvifwha5AgGwLBQWAAOkzEzr0rfUOf1ckVO9fwpcwlCJTD/Kg0MKwTF?=
 =?us-ascii?Q?Yr4Up/vU6cpti+Jsw2zPCl97s8gLTrU2fUr2yAyyOrfVHih65Lb2RRd3kZGR?=
 =?us-ascii?Q?ZQd6liUtExs6nToFHCauxIhmlzstthxUx1LvNQmGOJWfWrtNmMhrRVIxo77q?=
 =?us-ascii?Q?D2O9vlJao9yMNxkJhXLRnJYFWy65xFdiMPNsnwWAL/EzJZQwL1/yV86xDaES?=
 =?us-ascii?Q?QOqyc3iypwYAQIfSPPpMSQKfXvdbEgaY0aNTjpYw2PeSzeACEU6mDsmNq3Z1?=
 =?us-ascii?Q?lfvdSR2BPPC7ddHSODudi/Trze5NQ60T/VPjn3uWFHUB5syFMwhf2zG6OHZs?=
 =?us-ascii?Q?6RrtM10khxkIJC2V6SmDCF8FcPIKZBZa0EbTlgj90gene1hZN0MJ1WknqanC?=
 =?us-ascii?Q?RELn7X5LCX3Ki6kr+N3YRMtXcczat7EF71N4NE7CnfEGHUQt8fOD4543/cE9?=
 =?us-ascii?Q?Q0V4R8yS44K9kEeE7MC3+uukjB9KdcnQCDdbkrfjOKzpw1Qmx9czExUsixwq?=
 =?us-ascii?Q?yVcWXd4DDgKbZglN08BhzlnCnJV4dZC4vHWUBmF8plisxpFWuLs0pI6kVI4Q?=
 =?us-ascii?Q?PhnXRfCoONCOR0kUeQOwIX5vcJQ7Z8HRL85he07XM1/L9N5ytIRBgS81P8xN?=
 =?us-ascii?Q?eibZM8I7H49sJBWwLRF3gNmLVx5FnuQ0bk3u8qVHCmpINRemVbW2pRZDEUMF?=
 =?us-ascii?Q?tdpb5q6a4rHJnbDSHRT+jT/99HPUsAJqxAUElGU9m1r+4I5kl8Ae8DeO2dpV?=
 =?us-ascii?Q?xuU6H9CqCJYHU6IlC65y83/FhLLyY/kJ7brqU2YY/RwHqv1uQk7KtpLuRmyk?=
 =?us-ascii?Q?SIfa9iHzgfhwN91Z2zXfltt/i1HKUc6fqrQDt+xrOdeZ9O+E5lALk+JQcIzO?=
 =?us-ascii?Q?zw0ZVFerFmYMQVrykqnR3tP+5hZ3hkQwLWYD1XGAYv4tf16J5Eo4wdE6loWU?=
 =?us-ascii?Q?KGKVxXIf7j2+6BabewX3EtuUBjZ6IwEfoMR2ddrNAvbKf864QzGIPjH12emz?=
 =?us-ascii?Q?kk7T/UU+Hta/nk8Uj2Ct/73xlC44Bf1M+ekF8V5O6Et8CmOLR4PKLB3C1NoB?=
 =?us-ascii?Q?PcFW/QtVKvA1JnLDuF0rr2eIVmuDAIuidZxFnVAJD4YygwK4KABrmhcDCNsy?=
 =?us-ascii?Q?OybNPpiL3RMc9rt/HF7L+sVfyljTRYdT4GwalM6c7fKHDNwYb4HLQgDowHNc?=
 =?us-ascii?Q?8ZWDFz3RzP9mVWplPY50RaCr?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c989740-9276-45ed-d109-08d929b2cabc
X-MS-Exchange-CrossTenant-AuthSource: BL0PR12MB5506.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jun 2021 12:50:13.4513
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kxt9jfuJlYnuJus336vcM4EOIcswxKXJhi1q9gTEYe2/0zoZbv5OfXaAsQVB+1Hb
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR12MB5270
X-Original-Sender: jgg@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Nvidia.com header.s=selector2 header.b="hW3N/R/x";       arc=pass
 (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass
 fromdomain=nvidia.com);       spf=pass (google.com: domain of jgg@nvidia.com
 designates 40.107.243.79 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
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

On Mon, Jun 07, 2021 at 02:39:45PM +0200, Greg KH wrote:
> On Mon, Jun 07, 2021 at 09:14:11AM -0300, Jason Gunthorpe wrote:
> > On Mon, Jun 07, 2021 at 12:25:03PM +0200, Greg KH wrote:
> > > On Mon, Jun 07, 2021 at 11:17:35AM +0300, Leon Romanovsky wrote:
> > > > From: Jason Gunthorpe <jgg@nvidia.com>
> > > > 
> > > > This code is trying to attach a list of counters grouped into 4 groups to
> > > > the ib_port sysfs. Instead of creating a bunch of kobjects simply express
> > > > everything naturally as an ib_port_attribute and add a single
> > > > attribute_groups list.
> > > > 
> > > > Remove all the naked kobject manipulations.
> > > 
> > > Much nicer.
> > > 
> > > But why do you need your counters to be atomic in the first place?  What
> > > are they counting that requires this?  
> > 
> > The write side of the counter is being updated from concurrent kernel
> > threads without locking, so this is an atomic because the write side
> > needs atomic_add().
> 
> So the atomic write forces a lock :(

Of course, but a single atomic is cheaper than the double atomic in a
full spinlock.
 
> > Making them a naked u64 will cause significant corruption on the write
> > side, and packet counters that are not accurate after quiescence are
> > not very useful things.
> 
> How "accurate" do these have to be?

They have to be accurate. They are networking packet counters. What is
the point of burning CPU cycles keeping track of inaccurate data?

> And have you all tried them?

I've used them over the years. This stuff is something like 15 years
old now.
 
> I'm pushing back here as I see a lot of atomics used for debugging
> statistics for no good reason all over the place.  Especially when
> userspace just does not care.

If userspace doesn't care then just delete the counter entirely.

Reporting a wrong/misleading debugging counter data sounds just
horrible to me.

What good is any debug result you get from the counter if it has to be
questioned because the counter is allowed to be wrong?

""The sender says it sent 7 packets, but the receivers debug counter
reports only 6! I guess my bug is a lost packet in the network.""

Jason

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210607125012.GE1002214%40nvidia.com.
