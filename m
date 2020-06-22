Return-Path: <clang-built-linux+bncBCQK5GV62MBRBVGJYD3QKGQEDNZULSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D038202EE1
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 05:26:13 +0200 (CEST)
Received: by mail-oo1-xc3e.google.com with SMTP id z12sf7931078oon.16
        for <lists+clang-built-linux@lfdr.de>; Sun, 21 Jun 2020 20:26:13 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1592796372; cv=pass;
        d=google.com; s=arc-20160816;
        b=BWQNPk2qJj/BBd83+5yjccz+sQUfJlNFrojIgkPbVzYc+d2xFvxoqkma+4+5ecw/wq
         JtmydLV778NjBAe7R55PNWHVCTbP7xK+XY2Fp6OAG2OY50jTqojhq40rSl3y5LpcywWZ
         44MJCpWAmMcI7NjGqVZlSyd/iCob61Zm1wiUN/kKVLY6nca/6E4F1y3YGCjJfVYzzLiU
         n+Fp5zAC6YJ/VYuIdhhCCJSl1a1wlx0fyNMCAaB6ErSIQpaXyZP8n+Shzc7aANmEGoF2
         j/hbAucAJpKGJ7oOylOdrMaAEdHUcmcySfvoI0xED7d1vqIb079fTutnJfps5536ry+A
         r3PA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:dlp-version
         :dlp-reaction:dlp-product:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=RUF3WRUKQxMz7j2xHo6MLGjTFH/0egvOmQyj30Jt5nY=;
        b=dwTS5b1QQ/bjmQ9zSb5VieF8d4QOlIWnmUnrdzVY6ADrnjMMs1eERmX1RlPONtMdt7
         gj0ozkwBJJ7UttL0OA9WI70VzfIOhxFvqCAfbmx7xTgS5XCG9lt8ylArDQFkERbvNBUg
         auUIWWh6dfHoNvrq44T+cnmnUbW4oPkHVm2HwIuHkB+y6t/JUMI5VdJbA/IuIrPg/YID
         lhdO9JxpfPA2HRON4w9O1sKfo6xsXT+SR7TtB22c0o7FlSutLg4ZXp/jldQk/iu3leBY
         yDUSG9z64UYx0/0k9HBTxJbx52oPk4mWOxgF2I+i96DGuNunKkdTfTu6i0cnpM1NFmDa
         Z53A==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=NLpefLTK;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of jee.heng.sia@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=jee.heng.sia@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:dlp-product:dlp-reaction:dlp-version:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RUF3WRUKQxMz7j2xHo6MLGjTFH/0egvOmQyj30Jt5nY=;
        b=AiZIFjl0aYvPzXB8V1pWjUc0lDrRMDfa5eVOf6l+mFJVmp/rX6OiC8hQlAo2Iopkht
         6brlopvkQ9HL2vjPJqCYttvsIhTrHc2FyaSyzoSKQQw0bTce8m/qrLy7noLK0/cHCYjT
         t3TyYH7D4W8IJ6KMMp13TBGUF1GN+q71ycCtN/l+tQH746LErigWVzrQT3MYEhR5Spxn
         YRmMo720OodCfG0wnbxse/Hi33ZnJ///KmUXOOeUpGJzM03U0cx3Q0IpRmy6eQgBF5xv
         ao0C54fZ72Y76kPAziFlxF6Kh3+ftILQrLyY/oDSI3T5OmSQdCZRUQqxATdq22b5Nlpk
         U9ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:from:to:cc
         :subject:thread-topic:thread-index:date:message-id:references
         :in-reply-to:accept-language:content-language:dlp-product
         :dlp-reaction:dlp-version:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RUF3WRUKQxMz7j2xHo6MLGjTFH/0egvOmQyj30Jt5nY=;
        b=WgVK0r5+/tsOtjEto82Xo1gWEkEVyoKee6pqyULPf/qVv0x5r5xqx8Jh2m7HNlyN7A
         1siqGq9DZaVslP1YNPQpRaArN/2VZrqizh1YLQkDF8qsSzStDkHL+/EiTODlCgv4k4Zb
         wfv4TTXXOzPVL0kDnR+n01D0BDfmDqMA2RPNQB+ausNJgp3dU12d7T+BIQGnI3lA3dRC
         J7E5xLZ/EpdlQQyh9bQ9B3Q1ZF5YAV+AnfosD9JrVKb36EN4PAzdUUYUc6zDhIHakFaD
         a8/Y7/Ku+TQ8edqsK2sXVA1qHPuoSIj8ccr8ElJlwna/s/264ROgprMAlHwYamWTvQmy
         Fa9A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532BdA2w0dB/kwbh9MPkrmjRvmUTePbi9buT+/VnrWIjKVt2tHrF
	AkNgd+mWYd2CflE2bTvhBVE=
X-Google-Smtp-Source: ABdhPJzUP+AMV0pZiJqIrfLzic+vUfYv/AKqAIW5ddnXFYsINa6spz8yvJAm6VSPEsdDJ2iWRn247Q==
X-Received: by 2002:aca:72cb:: with SMTP id p194mr10853011oic.94.1592796372135;
        Sun, 21 Jun 2020 20:26:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:4549:: with SMTP id p9ls3254448oti.11.gmail; Sun, 21 Jun
 2020 20:26:11 -0700 (PDT)
X-Received: by 2002:a05:6830:17ce:: with SMTP id p14mr13014524ota.161.1592796371813;
        Sun, 21 Jun 2020 20:26:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592796371; cv=pass;
        d=google.com; s=arc-20160816;
        b=ezyFOW91v00Y3mki4jIvpbB976KiIfxxtwqpmux6cC+tP83Z+a9ejUW4BbzpGPdrMf
         /cB5XMmU/XSqkrTZHKRY0eO8lDZmOh5fY/h4GGThxmDb+uilj3q9f8Jz41O9FlbElHaG
         lS90IZsBQGDyzAZxwatnQWa6uUc/iu1RYQnIZxpqndvDByR2y/rVeF3Eu/RnBAv8JTPt
         gN0FNQvVOP3uMZ4VOkHCqbhriXVcxuYxo33HdEJoRs5RKhKKq0UrR3tt7le+pn+2+uRH
         sB8y+w2juZU7Fql7uP4KwUVnrR5eUAlznNf3sVitWzkOmrMC5QkiVh8X/RqRMePNK3Z3
         9nQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:dlp-version:dlp-reaction
         :dlp-product:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from
         :dkim-signature:ironport-sdr:ironport-sdr;
        bh=sH2VqMH0FqgtjEh7rUtdC/bZTexJu3eAM/P4WB/FOTE=;
        b=liw6PqCFg7cThGzEgshkPK9aJKygW64a1A5CqQvQspD9Y+m887TJ/tNng2FS34ktEH
         zC9IHenmWzbWjsDZaUIY+lymsLFuAQIfhzXzJnlWckY6sZ3shYm7MufXzXGrxdxMjFlk
         mXU728U5NbP/UakqArkflS0l/eAGdRIhFQWoeZGUNErJaNipUZsFCPrB8iM8c+HRVFfP
         HE7OUOSeIeFbj6hfulsOR27BO2cHEX6x48QezRh0zOsjugz1kL1s5DhN9+3su07IfPrf
         xpPbRZLcuXWUPmoOFzk2ZZvqoEdcFC4UifyUG0ldoL52IQi8HujicoNKsdIRi5QJn/s1
         SyIQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=NLpefLTK;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of jee.heng.sia@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=jee.heng.sia@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id k69si756712oih.3.2020.06.21.20.26.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Jun 2020 20:26:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of jee.heng.sia@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: LbxWHq4xhbfxenbuyZnLeES9p6z1BpdzfGAHTWxVAqLGzXFbQ8XQwtkQmNkL079H3avOicpdkf
 ovJKwZq7G3WQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9659"; a="141911584"
X-IronPort-AV: E=Sophos;i="5.75,265,1589266800"; 
   d="scan'208";a="141911584"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Jun 2020 20:26:10 -0700
IronPort-SDR: dojuEtMcbp0timVzJaZRCgZEJlcpaKOeHV4s788drpl1snyuElalFqNRAcE8ST7sTco9O2P7v8
 zPkQwBvAngrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,265,1589266800"; 
   d="scan'208";a="300702596"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
  by fmsmga004.fm.intel.com with ESMTP; 21 Jun 2020 20:26:09 -0700
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
 ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Sun, 21 Jun 2020 20:26:09 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 ORSMSX153.amr.corp.intel.com (10.22.226.247) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Sun, 21 Jun 2020 20:26:09 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Sun, 21 Jun 2020 20:26:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WDXaN5XodQBEJoRzyznIyji1I3pVn4jfQDejzxOnyDXdG9aXCMktLRtPtMcquirWwo3insp/5v9BfMYW40ppIhW+OtKFbD+cHEzmkIW+y8pAIKTVvNzq7xc5i4Wo4QyHbnwdmIKiVBIdg4QHT95C94cto3kaK3xiFTq0LrHkp6VF8IPMlHKDx/Thiz9Yq+Mrjo4ckqamQffkMtsP7LIgTmyk2KodasJWcZrG56OOVjEOaprmfx8m58aUo7UN84di/WbM2+bIajnG/wP9nrXH71pqOgVyyodUxsg3DZwF3vlBITmqC7pJCu7fw4e6NMD6e2x3M0LwHS+aiK8qzkpbQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sH2VqMH0FqgtjEh7rUtdC/bZTexJu3eAM/P4WB/FOTE=;
 b=O+dTySjc9x3Yd0HGM+iFWxK+5p4WChEoYFlSlAxePFfYBHr/2om1gvHmChEP+nu+P9DLarClWb1J5Infeu9hInkdyJ2/E1Jdpk83aOwDuyhfj1vEcXn0FpRQRksSPYzJzZk6FVtMaQjPf3HIf42XGCLGEd3BpyupusbwMc6Mr464Lf2vtk7Y7ynS4DXz+3VCA2F+yF6dQ3eFrSi2QjJM2qT2OoCwC71dvlc70tUWcTvrf0wU6NfehS1f8nYqNnzsuYqPeFS549rGayPXOOnSH96Vvm4gvmu7G4Zc25uKSt/1ZNuIQnB3gdVKaU5dtqOj3wz845LK3aN5zyfdIiDycw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN6PR11MB1953.namprd11.prod.outlook.com (2603:10b6:404:105::14)
 by BN6PR11MB1889.namprd11.prod.outlook.com (2603:10b6:404:104::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.23; Mon, 22 Jun
 2020 03:26:07 +0000
Received: from BN6PR11MB1953.namprd11.prod.outlook.com
 ([fe80::55f9:3fed:cc3e:3855]) by BN6PR11MB1953.namprd11.prod.outlook.com
 ([fe80::55f9:3fed:cc3e:3855%12]) with mapi id 15.20.3109.026; Mon, 22 Jun
 2020 03:26:07 +0000
From: "Sia, Jee Heng" <jee.heng.sia@intel.com>
To: Nathan Chancellor <natechancellor@gmail.com>, "Rojewski, Cezary"
	<cezary.rojewski@intel.com>, Pierre-Louis Bossart
	<pierre-louis.bossart@linux.intel.com>, Liam Girdwood
	<liam.r.girdwood@linux.intel.com>, Jie Yang <yang.jie@linux.intel.com>,
	"Mark Brown" <broonie@kernel.org>
CC: "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Subject: RE: [PATCH] ASoC: Intel: KeemBay: Fix header guard
Thread-Topic: [PATCH] ASoC: Intel: KeemBay: Fix header guard
Thread-Index: AQHWREMIKPR/nB62fEmKfbmyAqTMIajkAQeQ
Date: Mon, 22 Jun 2020 03:26:07 +0000
Message-ID: <BN6PR11MB1953F208A04F381A24B275D0DA970@BN6PR11MB1953.namprd11.prod.outlook.com>
References: <20200617010232.23222-1-natechancellor@gmail.com>
In-Reply-To: <20200617010232.23222-1-natechancellor@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
x-originating-ip: [192.198.147.211]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0de18148-c12e-4f31-be6b-08d8165c0057
x-ms-traffictypediagnostic: BN6PR11MB1889:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN6PR11MB18897A1BD80F6F605B27F637DA970@BN6PR11MB1889.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:109;
x-forefront-prvs: 0442E569BC
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: isVjIsIneuYhhcQ2tPyuRfv190vvA4sq/c7EGmVpR+x75pNaKUV/NR3FS11FwuFBEfSTZaaZApzk6op7KY2eCqhBWt6RocreQdZDD1ikMRjf2jGh3YXJqlSdS7HZPpCv9NRprogDJrTqOdBqSdI7zC1rztiXifjPpkp5oWyCSeW8F86/KKBw8cv3x9rtM9jjOh5kdmS2qR6xBks7vVCy2hejMOfRO4l/Wg3BrUGFwLnFH4Shxb/OcFc9th1h4YG8o7sR7DmQNAUlTcleRy/+R6Wxwp5OrpA54lJTnPmBnQnldiinEQXSHPMmLC/5xPFbZJV1lG/Zx5JGKC+MCFtM8QYrZ+MpXeDwpWJloeYCvILNhnx/hHNg4PxygJfg4ltCIPFvwdAgMET+EG4TtGHF5A==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN6PR11MB1953.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(4636009)(346002)(396003)(366004)(39860400002)(376002)(136003)(110136005)(5660300002)(55016002)(9686003)(54906003)(6506007)(53546011)(2906002)(7696005)(4326008)(52536014)(66476007)(8676002)(478600001)(26005)(83380400001)(186003)(66556008)(8936002)(66446008)(64756008)(86362001)(71200400001)(316002)(33656002)(76116006)(966005)(66946007);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: v4KsUMcTJPDrqoYrNbyGDFgVSPwR1CPlQ6Q4rJxHt2GnWVQ0mAehLC1ajoZPG1EXW6jOujacFTaxrXDhIGwWxCZIiic+tJrkRIH6EyX87Rwl5/UE4C5YLSXnh22CjjtbOZfV/OZCKUKJcGHMmYmpzNX7uftO6ERfuHbqoEbSe1dnitlqM7I72LQ70h5XvGw1Q9eeR5HDWDrN8j1moivv4oPJKe4TECZal+om+NLdnYrkDT255XWdeMsTibEjs35PYEuKfvgC755PnGFar37GkQecFocAwE+e19HG3MPcSoWOpgwHbKCcZHRTnbMj30YMwCb106QSOESDVG68Ce3eGfcQlS3yvCWmX0WPYUaQFhKYqXr9Z0ViGfrtJ7tXfy9F16tKwwHkKLAhpV/iAcJ9t0aR2NYr94BxgITdwknVy/Lb/0D8rqh4HoXl7o6NWrAwNttWTm0pDlpD4GDjgmoNMrQNnVpVTozuBUHBneZd6GI9Jgbl0b0EblX51BhrLKCe
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 0de18148-c12e-4f31-be6b-08d8165c0057
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jun 2020 03:26:07.1118
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QWPQ2H5OqL3SjpnaRI7DIHGB8L7c+KE+kSfmc2gD9O38NHVABb4t5t3rLh8WcJeOZxiBP/+6YnB+u3Iq/AmjKg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1889
X-OriginatorOrg: intel.com
X-Original-Sender: jee.heng.sia@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com
 header.b=NLpefLTK;       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass
 dkdomain=intel.com dmarc=pass fromdomain=intel.com);       spf=pass
 (google.com: domain of jee.heng.sia@intel.com designates 192.55.52.93 as
 permitted sender) smtp.mailfrom=jee.heng.sia@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

Looks good to me.

Thanks
Regards
Jee Heng

-----Original Message-----
From: Nathan Chancellor <natechancellor@gmail.com> 
Sent: Wednesday, June 17, 2020 9:03 AM
To: Rojewski, Cezary <cezary.rojewski@intel.com>; Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>; Liam Girdwood <liam.r.girdwood@linux.intel.com>; Jie Yang <yang.jie@linux.intel.com>; Mark Brown <broonie@kernel.org>
Cc: Sia, Jee Heng <jee.heng.sia@intel.com>; alsa-devel@alsa-project.org; linux-kernel@vger.kernel.org; clang-built-linux@googlegroups.com; Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] ASoC: Intel: KeemBay: Fix header guard

Clang warns:

 In file included from sound/soc/intel/keembay/kmb_platform.c:14:
 sound/soc/intel/keembay/kmb_platform.h:9:9: warning: 'KMB_PLATFORM_H_'
 is used as a header guard here, followed by #define of a different  macro [-Wheader-guard]  #ifndef KMB_PLATFORM_H_
         ^~~~~~~~~~~~~~~
 sound/soc/intel/keembay/kmb_platform.h:10:9: note: 'KMB_PLATFORMP_H_'
 is defined here; did you mean 'KMB_PLATFORM_H_'?
 #define KMB_PLATFORMP_H_
         ^~~~~~~~~~~~~~~~
         KMB_PLATFORM_H_
 1 warning generated.

Fix the typo so that the header guard works as intended.

Fixes: c5477e966728 ("ASoC: Intel: Add KeemBay platform driver")
Link: https://github.com/ClangBuiltLinux/linux/issues/1053
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 sound/soc/intel/keembay/kmb_platform.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/intel/keembay/kmb_platform.h b/sound/soc/intel/keembay/kmb_platform.h
index 29600652d8f4..6bf221aa8fff 100644
--- a/sound/soc/intel/keembay/kmb_platform.h
+++ b/sound/soc/intel/keembay/kmb_platform.h
@@ -7,7 +7,7 @@
  */
 
 #ifndef KMB_PLATFORM_H_
-#define KMB_PLATFORMP_H_
+#define KMB_PLATFORM_H_
 
 #include <linux/bits.h>
 #include <linux/bitfield.h>

base-commit: 27f70ec4fa0e0f419031f1b8d61b1a788244e313
--
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/BN6PR11MB1953F208A04F381A24B275D0DA970%40BN6PR11MB1953.namprd11.prod.outlook.com.
