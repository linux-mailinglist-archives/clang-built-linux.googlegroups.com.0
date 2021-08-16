Return-Path: <clang-built-linux+bncBDMIJXNDWYIRBZWV46EAMGQERP4PESI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ADC03ECDC0
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 06:34:47 +0200 (CEST)
Received: by mail-lf1-x13c.google.com with SMTP id u17-20020a05651206d1b02903c76e2b62a3sf3971244lff.10
        for <lists+clang-built-linux@lfdr.de>; Sun, 15 Aug 2021 21:34:47 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1629088487; cv=pass;
        d=google.com; s=arc-20160816;
        b=PffUjpLqAL95qCgdkSgycYXSu9/H280WNTaklQTKyqhtPUDkuYWQd8V+FAV7vfGETb
         tRNIPUmtevflZ3PfAB9LG8OKc7FnYshePwHe1SJtiMKx0cknq0mp9kIpLRkko/iGcfBd
         I3+o8QtiNncfykJLDhrdksiL9Qhpwa8+R4VLAHoemPDHlOsmv7P3ReO8Qa/R/q4HvhMU
         /9HH92gKIyUaxGHeLFh60CG05B9/MHqEY8HNl4AKy7YaEFx7uTIt69SUFnD2HBckHBWh
         wNAbzn05tmAruAr6Tyo59JcvGLazy9MTh4OI+lAbNEWarSiLaXeiID/ZYiE3pReoJ+IS
         oYww==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-id
         :wdcipoutbound:content-language:accept-language:in-reply-to
         :references:message-id:date:thread-index:thread-topic:subject:cc:to
         :from:sender:dkim-signature;
        bh=R/wxfuJIu+zw+zGu6vbJl9wJ2W9TvDJpV83fcj1Rsr8=;
        b=jGwTAgVvXX1YdZbMykjD16y1iImnxQcUETj+peiqObHbBtZVwFc0VpsihasToWefvS
         qzjmuNVM+nzINq5V3v4JYc+pGQhMEv++Uj24kUgIeCwDqmzEYxNmrkdxCSG7bIFRY3AW
         Vir25Lc9Bj0OLXnvJusBCo3WwDnTv6Vc8LrdJyK7a2o0t14bbLVs4dmMTyGMcrMBBfC1
         BZDuG2hWT7g51qGHy9Qe4T4yrUXulv3YyjRr6SGon9xQ2HXv+n7jbCOCEDNbMuDXLMFs
         AeK/iWiVExx7iYo0EUZ7YAGysW1ehSw9DNHmh4LY2Sw3/sUeu8FqiVmC6dR+SM4BZn39
         3sfw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=VPD99YLR;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=vThzRiMb;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=8551de12d=naohiro.aota@wdc.com designates 68.232.143.124 as permitted sender) smtp.mailfrom="prvs=8551de12d=Naohiro.Aota@wdc.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :wdcipoutbound:content-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=R/wxfuJIu+zw+zGu6vbJl9wJ2W9TvDJpV83fcj1Rsr8=;
        b=oIjRXyBgbgDHgT77I3DJE/NXww5FI3mYFaFBrmSuljVn+ZklDyQ2eW0+wOkma0qdNk
         m8dY1sRrfWKAxHafRhh1oDeZ1f9sv8nRWVBvdJdNe8IhYoemHOt/UbtPzAUFzJh/7rMD
         XihZzEKPYM27nt1UPQcExqfJJpkV/7GDmusIBohqpfV0CADQN3ArH1jnijBhTjhCKnsJ
         QSj0Vjz3+AN/fcPtKG9I8d5FrTquHPS6fSZveJDzH1dD9ugt71cDbYmIltUnuBYsQKbn
         HPpDdt0K1Pqqlffd7w+owTQvbBjSDV+Eb13vgRez9E29uWCsKLXw4svI6T2aBEYVdHlX
         f5dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:wdcipoutbound:content-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=R/wxfuJIu+zw+zGu6vbJl9wJ2W9TvDJpV83fcj1Rsr8=;
        b=eEIC1YvMq8Dtg9iZxoFVSpbGlyNreLHav5WXnB4JPcCWHJn/fykbOBWoD7i2SYNsAD
         RoEmujqko1KRec9v1VwAZnFlaFse6N3jgAdw/O0BDg5Vq+Vsq/0+HtdBLBtx1iqZEneZ
         nLHyw5mIG9VLofS4N4aW+/qnQQc1Xc0hxjfiZ1cbizXxX7dQ8KABG5gQHfWUJJlQ4d5V
         LCs/lpF8ZC9MifftgRtaOhi4TGDzYnlQzldakjH2ip2+pnXEIF8ROKmmBPhAaSrgcBUD
         AM03maKtfBI8+w831HAkaCqAuVgMX55FPMkoeXoWBUQgKEgXu84H3YZgnpr1NUl2ouHx
         DwgQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533PDnRLUJ7N6X5jrZWhnKPf8sELgFPIZ1/QmoBXiq3Pj9aJVCTi
	C05MGSlAA6Od3HXEGZFDd78=
X-Google-Smtp-Source: ABdhPJw1BQi7DKLudmvSb5d11wKRMx6BfBRK4Ph2TpZci73NugfECJwBwsTjHMG37FeZUMzS3bMIIw==
X-Received: by 2002:a2e:860b:: with SMTP id a11mr10791595lji.343.1629088486970;
        Sun, 15 Aug 2021 21:34:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:160f:: with SMTP id f15ls1106727ljq.3.gmail; Sun,
 15 Aug 2021 21:34:46 -0700 (PDT)
X-Received: by 2002:a2e:9444:: with SMTP id o4mr11104355ljh.210.1629088485922;
        Sun, 15 Aug 2021 21:34:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629088485; cv=pass;
        d=google.com; s=arc-20160816;
        b=u+FZL7Kae1PccnNtrcD6wNE5KrBzRAjktQ6y+Y2V1FinI6XlbDXKu1MdFpxNV80wQa
         qOJxytHH1vU7Gu7Q9d33qdd22UBd0BfCkX6hOA8zjQgofjTRyc/rCjm6mRndBYLTzPa3
         lNyf3Eyrw6C6Xd/CWB7LXF9vSgZGpLetL8VcMKBj4Ja63zJZfFw4i2Q4k/m8E/Z9p2wd
         dzUdxfHtOd4SeJX8ycIbNS6HQBFuR9wsRH/XswdJv3rka52y0yV+/VW98U6HCzBlfNwb
         zE/trcFQ+iLtfNWoR8En2uBoUBlOr9zvvLp2PganKxv8y5VySo2HFntjDe/GoqOZ5lMf
         OY5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:wdcipoutbound
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:dkim-signature
         :dkim-signature;
        bh=zExGThIksmjYmA0RyuXqKaVIucwdwSNHedd6bAYe7IA=;
        b=CcwHqRjyNGQYhq2ZpS8E7gLtjixNOApj7stap/7HSry80Z8L7GVzd2rc/NzWkuEgzM
         UvOIrpsCP/V4T+XCR/qDz4YixyZh4pcJJQvs+GK8gG15SWk/zxftVJe5m83Nzkg9NFIa
         rht9kwkLM/NXZh88y7/IbCERqrF0dgy4sZW7a+fujte2/MDgCaLbjl4wlpYwLELxf/Ei
         a4foRC6e2OKIxB95LUlV1HFCq4HPvFUMn4uS/aKamh0T7NJ5bcIXxrLb9OFdnP5RJf2O
         20s/Lpy6Lg8GFZA+7jc/XSMcIt7WJWNrNVml7hg32p6v2uNM3fl9wXLW6YjM4sbS7Puv
         VuBw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=VPD99YLR;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=vThzRiMb;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=8551de12d=naohiro.aota@wdc.com designates 68.232.143.124 as permitted sender) smtp.mailfrom="prvs=8551de12d=Naohiro.Aota@wdc.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=wdc.com
Received: from esa2.hgst.iphmx.com (esa2.hgst.iphmx.com. [68.232.143.124])
        by gmr-mx.google.com with ESMTPS id t9si101913lfk.1.2021.08.15.21.34.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Aug 2021 21:34:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=8551de12d=naohiro.aota@wdc.com designates 68.232.143.124 as permitted sender) client-ip=68.232.143.124;
X-IronPort-AV: E=Sophos;i="5.84,324,1620662400"; 
   d="scan'208";a="281160982"
Received: from mail-dm3nam07lp2047.outbound.protection.outlook.com (HELO NAM02-DM3-obe.outbound.protection.outlook.com) ([104.47.56.47])
  by ob1.hgst.iphmx.com with ESMTP; 16 Aug 2021 12:34:41 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bb7HRt0tJVl8Pi1QJp+wx62nWoXkTiqgbjZ3hgm2wYhXXPn5oX3zd5eAc27i12B8mbYlOkoQ7Fu8S+LcuUX6fmz+MGOFubo58D8VkaZAlTYQlBZ4xFyigB6x5CATjnCXS65n0YnKdqJTWCbP7qnZ+M6T+HvMNln41chKl9/vanfozHLW0/XVfz63qMWhTw2vnq+LD/+pqYCf21u9EmPz2S4+fsNRFRXKQwDM8yYW7I9XhNyBGFPTQYptoVllsABYXgJJr/BEGZ1txZuSuqo+SZd1f/BNobZ/jYlavRnkmOpFqnzRUM2jUuq8vFWEwyJJRA8obDUP7J4PDaS5I8zEGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zExGThIksmjYmA0RyuXqKaVIucwdwSNHedd6bAYe7IA=;
 b=WeVQhEOGHO/KlGgjVffrQ5dt79gunqYxYEzMkZ8NAzOSLU7FvwibgB7PO/6Tvt52bcIIAGfT2etztNp9Ec1ZAe6pVG7gn75OZ5O0+R7LDkm1HCOp3tx1ymLgpaq58vLf6G+tfLwBvNAupnJWT5nLB6zmuTbdV8pSBoiy8hZ373y5mii/s3Jf/bxO7FgFIt59Y7TiZx8/3+kh5mDJpBGwR6DK8WirrM52PW7BmhkmM1ZJh97WVfEvj2MEkvIBymD9kvy+4HlGfbUL+KDkZgM3iiai0pVXeAK5biDIjJ9XtvNQ7RxYreEyT9IInAnQN1XkL+4Br41pkxdN5k/8axLM/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
Received: from SJ0PR04MB7776.namprd04.prod.outlook.com (2603:10b6:a03:300::11)
 by SJ0PR04MB7837.namprd04.prod.outlook.com (2603:10b6:a03:301::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.13; Mon, 16 Aug
 2021 04:34:41 +0000
Received: from SJ0PR04MB7776.namprd04.prod.outlook.com
 ([fe80::413e:7e96:6547:b28b]) by SJ0PR04MB7776.namprd04.prod.outlook.com
 ([fe80::413e:7e96:6547:b28b%6]) with mapi id 15.20.4415.023; Mon, 16 Aug 2021
 04:34:41 +0000
From: Naohiro Aota <Naohiro.Aota@wdc.com>
To: kernel test robot <lkp@intel.com>
CC: Josef Bacik <josef@toxicpanda.com>, David Sterba <dsterba@suse.com>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	"kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
	"linux-btrfs@vger.kernel.org" <linux-btrfs@vger.kernel.org>
Subject: Re: [PATCH 16/17] btrfs: zoned: finish fully written block group
Thread-Topic: [PATCH 16/17] btrfs: zoned: finish fully written block group
Thread-Index: AQHXjrwicwqxUSBEI0igOtGB0UJQhKtujnEAgAcEJAA=
Date: Mon, 16 Aug 2021 04:34:40 +0000
Message-ID: <20210816043440.4jxwzexu2xjbdmyd@naota-xeon>
References: <59c069e3890f3cbc7fa425cdcf756d241a8bfc92.1628690222.git.naohiro.aota@wdc.com>
 <202108120115.oH6kGwRo-lkp@intel.com>
In-Reply-To: <202108120115.oH6kGwRo-lkp@intel.com>
Accept-Language: ja-JP, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: dcc5d157-e864-47d4-6762-08d9606f29e3
x-ms-traffictypediagnostic: SJ0PR04MB7837:
x-microsoft-antispam-prvs: <SJ0PR04MB783723E888367081D1D39D288CFD9@SJ0PR04MB7837.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:176;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DsoPk7K6JictlNHkFAAQ1dIXBOMcG9tojfR+oH+NB0DNHSYYU094oEPNOtejIxtBV8UJhl6OwWdg5iw9nwvByOBOyjq6eV3Mg7VOWseYb6z7fYa0z/zu2ugaEljxAwxVGEy63gn7ZIH88oD8kHiScR9507zeg0lSFKdpB1iyw1A2OjMN6m1QOZe4H9DN25jQskft1F1eLC5+A6OAxGj7bxD5Juj2QBebYiL+Da5Ju24j9+WOgdgdNqd617RrMFl3jFPUBrERZZVGl7cuXRJLlUyQ0CovFX/59ZzsXuZmv+lJ/FU79Ij1EMoNcrPvRVtkub4HOCBa9I7Kk2dFPUY1rKo5kfm1bv4IYTDnTNCt1J9lV8yBHk1tsdGquNqPMyIXvn27lAxdblWTDyiZi5FDCnEmfdb+EP3iDC70TbD2q34Ze/JVus0RsCQEFQXfWaDAhHugZKLMUyIHZmPUT2S6VbcE/S4Agz/mO5q5lqq/oFZCOuZnvxy75Uy/PFAmetjV/QS8rbPzxgtniW2UDg6t79qnCb7+hAvR7LDH0UofxQKOWcgkFAY6VZI2s8159qxgOVoY5ahDYpKKV2599AvNnsYL4kX9zbb3sjXLLVBGGfA2eJuYMk4cxG9pRNH2dovw0wHljN1a8XuOLE9kDNsexybmmqr4dbFXnlwYyxdkOL9yuMQzOW/h1yGt6Q76zn7oB+9gcsbKxYpgf92mAKptksh6RmZvH+vQd0dwHk7rixV1krrOoh06NL+CQ42wTLhNsA5tz8mz/1CpIdJm+JQOp0RNOjazrNzzG57tq6wvYSDH8VgfqOqw5tbRwlnjCglU
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR04MB7776.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(7916004)(366004)(396003)(136003)(39860400002)(346002)(376002)(316002)(9686003)(54906003)(76116006)(186003)(83380400001)(122000001)(478600001)(8936002)(19627235002)(2906002)(91956017)(5660300002)(4326008)(6916009)(64756008)(8676002)(66446008)(66556008)(71200400001)(6486002)(66946007)(66476007)(38070700005)(38100700002)(86362001)(33716001)(26005)(6506007)(966005)(6512007)(1076003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?V7emred9DNV8QTdHgWMBmSECjnHr1Bi3qtJlrn3GtcE6SCWXKRK/qR8v23p2?=
 =?us-ascii?Q?TStVd3gw9zmszK+fVHe+SSkBdj3/eWFno5vqTTVyW2r1rX6wuLv/Myr7mBqA?=
 =?us-ascii?Q?hp6+kG8TFAb08ytF9IAjyFIzgFH/a3fZGOdbdw4dZDn5HgpBuVvHYG/Fo9Aj?=
 =?us-ascii?Q?HISr4K7m2GfwwuaM8phbOTpKCXmBdJripSsF8E5+5IJSE+ZulbfAYdBpxvHo?=
 =?us-ascii?Q?c0OBFpyZAsqav7GyqGDtq9WGsT9c7/lvyujALb5UQN5Uxac3YknFnWrCEuFG?=
 =?us-ascii?Q?mwqybxzhIXeBsDaGzTfyi/O8qD98cFfdReae1sdroE0GUGANymOV6JNFnMSW?=
 =?us-ascii?Q?0oUVXqO6kRNnIPsIcv0SJQDpp81omfSG49Oww00Ntzj5yvA2katCPrBDZuvd?=
 =?us-ascii?Q?K5z4Wp2hyniX7dMcFVoRARNMTA8+1vTInLGkHFXIv3ACrQMCJzoCGCb0iboe?=
 =?us-ascii?Q?r5g6+19SAjqS4XT3zZDfMt4ZNi04dPGdPvij9Nf6sfeKfCPMoj0YMmaRtadp?=
 =?us-ascii?Q?2TrYoweNoCNKfheeBdoD69Go1TrVNJDASll2Q23Otib7uCnVIPnPPJfOw2/o?=
 =?us-ascii?Q?0ulAlIViG4xd8tY/lHrZkWt7qdp0N04iX1LvpRjzX0MfCSCiyjXCmoZxSJOn?=
 =?us-ascii?Q?UUJFMyIeSPGo/InaQB1447p6imMIZtszWfJ0kQeNkbkFfmqFi/4Fyuc+T4uX?=
 =?us-ascii?Q?NsXx0Gfs8BTYpV4/c09Lz6R5PQtmRSZv7TSxQ5hsJAvPi0u3voNrrqrtmnpx?=
 =?us-ascii?Q?BPW94PkWQZAgeHVbKhPrbR38z8nkvWskHbhQmovtKD8clSUKiyMXSXVFXdkC?=
 =?us-ascii?Q?t29lOF6d6TC1IVY29aF5aR1ffGXaz7kGKJGrTyq6xq7h0UBtSgMHoXUs+3IP?=
 =?us-ascii?Q?+TOAqi+2/4gv29s8jEqYMuF+1NLCgNxs9UYgD6wlbDndJo89jbmFQjzlZfkP?=
 =?us-ascii?Q?B2TOg3K25DH2nAzPUvMgq+Brh7Mei1kJUodtCilOHeWwEJ0d8Lor9/80DxNI?=
 =?us-ascii?Q?QRuG4qzbDLpPXcGwQtrIqpUW6c9UH9HqDrrguOGyK8ZeNP3o4IWRR8Tc3KQ3?=
 =?us-ascii?Q?eapQjybooEJEarXtHn76ckgNratJP9zSAczp1SjXmDOaFbvBhwJWiXCav/kc?=
 =?us-ascii?Q?AppRmXhLrBgvn/+9a0lZehBsuAKHMpvgX9CUakmsXT38L/XtBYKQIJSSychN?=
 =?us-ascii?Q?jWStYm410DCK+hjM0dOSHI6kZghW7uZDbfA/elag5+54KqKQYIeZczNYtS3m?=
 =?us-ascii?Q?SXljQxEbpBdMD49zNPh14M1ZB/QPRsVKBbD/D8hNrT2XV6KVU4DJze1r2gkg?=
 =?us-ascii?Q?chCyjKuT4KCMHL/zCw5nEIZ8?=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="UTF-8"
Content-ID: <5279DD8902BA27448D931C56638D328B@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR04MB7776.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dcc5d157-e864-47d4-6762-08d9606f29e3
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2021 04:34:40.7691
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4J0Eu9+FOOG12X7QMqD5z7ReF8XhpQ2Q9YfBSvv4bf54V7bkc/PzXCk5wpw7QGjo2dxmYQGOapU+4x8TmU+jlw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR04MB7837
X-Original-Sender: naohiro.aota@wdc.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@wdc.com header.s=dkim.wdc.com header.b=VPD99YLR;       dkim=pass
 header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com
 header.b=vThzRiMb;       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass
 dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);       spf=pass (google.com:
 domain of prvs=8551de12d=naohiro.aota@wdc.com designates 68.232.143.124 as
 permitted sender) smtp.mailfrom="prvs=8551de12d=Naohiro.Aota@wdc.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=wdc.com
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

On Thu, Aug 12, 2021 at 01:26:02AM +0800, kernel test robot wrote:
> Hi Naohiro,
> 
> I love your patch! Perhaps something to improve:
> 
> [auto build test WARNING on kdave/for-next]
> [cannot apply to v5.14-rc5 next-20210811]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/Naohiro-Aota/ZNS-Support-for-Btrfs/20210811-222302
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/kdave/linux.git for-next
> config: hexagon-randconfig-r041-20210810 (attached as .config)
> compiler: clang version 12.0.0
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # https://github.com/0day-ci/linux/commit/ccecd271dc2436fe587af8d2083c3c96ab86e309
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Naohiro-Aota/ZNS-Support-for-Btrfs/20210811-222302
>         git checkout ccecd271dc2436fe587af8d2083c3c96ab86e309
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=hexagon 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> fs/btrfs/zoned.c:1948:2: warning: variable 'ret' is used uninitialized whenever '?:' condition is true [-Wsometimes-uninitialized]
>            ASSERT(!list_empty(&block_group->active_bg_list));
>            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    fs/btrfs/ctree.h:3458:3: note: expanded from macro 'ASSERT'
>            (likely(expr) ? (void)0 : assertfail(#expr, __FILE__, __LINE__))
>             ^~~~~~~~~~~~
>    include/linux/compiler.h:77:20: note: expanded from macro 'likely'
>    # define likely(x)      __builtin_expect(!!(x), 1)
>                            ^~~~~~~~~~~~~~~~~~~~~~~~~~
>    fs/btrfs/zoned.c:1956:9: note: uninitialized use occurs here
>            return ret;
>                   ^~~
>    fs/btrfs/zoned.c:1948:2: note: remove the '?:' if its condition is always false
>            ASSERT(!list_empty(&block_group->active_bg_list));
>            ^
>    fs/btrfs/ctree.h:3458:3: note: expanded from macro 'ASSERT'
>            (likely(expr) ? (void)0 : assertfail(#expr, __FILE__, __LINE__))
>             ^
>    include/linux/compiler.h:77:20: note: expanded from macro 'likely'
>    # define likely(x)      __builtin_expect(!!(x), 1)
>                            ^
>    fs/btrfs/zoned.c:1908:9: note: initialize the variable 'ret' to silence this warning
>            int ret;
>                   ^
>                    = 0
>    1 warning generated.

This looks false-positive for me but still I noticed this "ret" can
never be non-zero in any path. So, I'll convert the function to "void"
in the next version.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210816043440.4jxwzexu2xjbdmyd%40naota-xeon.
