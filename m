Return-Path: <clang-built-linux+bncBAABBDFV7SDQMGQE6JE3WDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B0703D681D
	for <lists+clang-built-linux@lfdr.de>; Mon, 26 Jul 2021 22:26:54 +0200 (CEST)
Received: by mail-pj1-x103e.google.com with SMTP id g14-20020a17090a4b0eb029017395ea5199sf1363253pjh.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Jul 2021 13:26:54 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1627331213; cv=pass;
        d=google.com; s=arc-20160816;
        b=Gfu+0UVONXc2bPg4PI+w6iCIId1HiQBvNy68vkX3gOm5lFdwPWV5Z3+LP8ZEtui9/e
         CIJUKxVtBpvaPfUZYc0YW/oK8LwZDrefvY0nQhLPKqhsS91L5Ja+0a827+yaIreM/IkK
         lEWIDRfFvptypuEGD5oIZWmcoiDES1rl7+NT00iOK02+yD1p5UNkc/6LBCaBCdNfhU1B
         I0Da8gqYYj9pqmr193vC1ssABc4sEx5nRzEMRRFJ0Q1IvVwaPQFSuXp+/JOX++/Y6wMo
         1u1hS6LYpiE397TuAQuYCluz/p2t8AZAT65S4q7G+5jFyd8UVh74ETErrOoQfzfWk/eQ
         wdgw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:in-reply-to
         :content-disposition:references:message-id:subject:cc:to:from:date
         :sender:dkim-signature;
        bh=op2VsvwtzTVpqveIknOYz33FI5AMVOL4FsUaOdXPoGA=;
        b=O0cWoqvgKR9cU+0QJ76CYSRtoMlFzJnXcwQenwGS9jkQAJMwhw8o/aYktFh2lwK+iu
         1NrZ3rUIfmO3FTvrOcLidNyIOYSwGXMsKVFaIWKsVDQFLnF955lvj1rh1SKjFv+qb7dX
         CyrIOA+wHamXY7MCckib7MUzXwyH1zC6yeeoqQqjQ16xmHrR8KJc2W1N3IymQEYeijmO
         UdikIMzvA1ZIR7HojP0BvuysFFdvXDLUFBF3lUFWo+7ytBV/aOB2TsDNsdepj/NbHlVL
         FXbfB5TTsOVHHa/Rjz1/n6TDiYRjQ3QqpkQqudP5WANW97cHMPF6Nn2W3Fu3PuFjcp7a
         ICAw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@NETORG5796793.onmicrosoft.com header.s=selector1-NETORG5796793-onmicrosoft-com header.b="du3Tll/V";
       arc=pass (i=1 spf=pass spfdomain=labundy.com dkim=pass dkdomain=labundy.com dmarc=pass fromdomain=labundy.com);
       spf=pass (google.com: domain of jeff@labundy.com designates 40.107.220.70 as permitted sender) smtp.mailfrom=jeff@labundy.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references
         :content-disposition:in-reply-to:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=op2VsvwtzTVpqveIknOYz33FI5AMVOL4FsUaOdXPoGA=;
        b=FszzI8nGzlIDceCDyrbKnMD1nEV9+C9F/4l9vQ7SRLD0ev9v0wh8/8BbyQKMd8wi1m
         BWvpJB6zXmAZ6XlMnd6ty8/cdzW7FJ70XjitLPLqTe2qRGh575qlBChvAGbUpJOjcWYd
         yLD2UFNzoJIi2OlqiqeZ2HuOgm1mlOSLN6Ft3Fxs/CfXql9EKVrae3bRMAf/goU0JjLK
         Ndexz5GDMJ+x3sp2soXY6p8c+3MgdEkMLNu47vswZCFIP8jmm7Vk0JtKZIT+wZg9uZnT
         EZYycnp2ufDBS36nvUeiyYWWCXDynRt2bbRYyuLkvteYkyJzFshGhIooq3z6ClSYp7wH
         kw8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:content-disposition:in-reply-to:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=op2VsvwtzTVpqveIknOYz33FI5AMVOL4FsUaOdXPoGA=;
        b=eUpC4Ghdd16lmOSgU5H1YAdrGh+6B8gtoeEH+XEMsBNEn+aXIpsVefhZBkkDTS2S57
         fafnkLUZ4zBZSkFogSFsVnODwikmluMeKgRNloakZoQofQofs82eG7LrNoII+H6lwpbc
         Zu0W0nPE1cfEmnSSTDeorS1ZdgOTUTovX2p2K7B4HUGx4KZAKj16/mYhwd5J//yzTRNu
         CZj0heyRn5RXKgAp2FoZUtoZfRB5BqGsY3QRRuJQxd3kD5yZUplLyZSHha7YY6pYG80Q
         z90SW+G8hPoc1OmX1IIKP1cyqxdizJfogfQqt8ihRaIItVTUxEQxQuRLkYg46bEIGmCK
         0pzA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533fk1RaxSbdC9+ardhdiolZDSnHDx2sGudDiz2KEQ/9lr+0toRh
	dQMurr/s1hDZNO9sSBNJWNY=
X-Google-Smtp-Source: ABdhPJzxnjhfhdZHImpI5dlpvBPHCOqLQEW0xNcfyjUsVOoQxTp5Uv/KRnMgFYuCpCWvg2jKyRapwQ==
X-Received: by 2002:a63:ed50:: with SMTP id m16mr19644381pgk.231.1627331212886;
        Mon, 26 Jul 2021 13:26:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ed82:: with SMTP id e2ls9312850plj.2.gmail; Mon, 26
 Jul 2021 13:26:52 -0700 (PDT)
X-Received: by 2002:a17:902:7791:b029:12c:317b:dfd1 with SMTP id o17-20020a1709027791b029012c317bdfd1mr3984954pll.10.1627331212314;
        Mon, 26 Jul 2021 13:26:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627331212; cv=pass;
        d=google.com; s=arc-20160816;
        b=Rdm4JHmkN1GOP0+6YJnPa2Av9U1PFIpQnh+uoGlO80icUNjFihJxQJIyxzEJGcIbX0
         nZL7PsLGV82lNK++jZU56upsrNXol3eDFIWC2ko1B5y9grVYMGJkiojiF4CNn9I7n6Rn
         V3CJlpPd0ZITfaswlGYFd6MIqZ3rOHqT+U5C0d+v/w/ltVf26kvAKE6YjfA5LhL5v7XV
         YgdY/kJ2w65i969o/ntyLcvhWY/iHkrysj9D+5jvWhGCEXnxIb7fKDRrOueHlSUJg6gy
         r3pp3JO+kAymvc/TH1+sseg70v5ER4m4fV6Pj+DCac84x/EhaYxYG7W5SSMkl1sUr/06
         9DjA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:in-reply-to:content-disposition:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=s2W9+W9X5aeWsvgMNQp9kyFUuoK2KlcxVz3y0mK5GGo=;
        b=vKdDyE+ta2NhWSaijvsry1WH9NKBcXY2+UOuWvd1fMPWFHkDCqpKDx0+D7MrPg1sRn
         6Y4+g4w5Vm62zGonx0UQGI+CVxVdqd2cmgNSy/MSuAJTAFHZx4P1gNMUpIHIRR3CITnE
         jbFUHwzoPhqt/ybWUJuh5T5jATnrZX+P0tPwHUJBeAWTKG8V8vMJoJYAjOFCpLmZnFeN
         B6MqvuRUEtTG7tdIY1cMDLD0GI0KdBZKQI1zlSBxJk0bdRmeVDogrPScS3cZLVh4EeER
         oUPDvhEhjGJZoJs4ZZfBEtQtTTLXzgwRxyZN/UYJkjHo2ulvKDeCGbDVdjsc7mBvkB6S
         kenQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@NETORG5796793.onmicrosoft.com header.s=selector1-NETORG5796793-onmicrosoft-com header.b="du3Tll/V";
       arc=pass (i=1 spf=pass spfdomain=labundy.com dkim=pass dkdomain=labundy.com dmarc=pass fromdomain=labundy.com);
       spf=pass (google.com: domain of jeff@labundy.com designates 40.107.220.70 as permitted sender) smtp.mailfrom=jeff@labundy.com
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2070.outbound.protection.outlook.com. [40.107.220.70])
        by gmr-mx.google.com with ESMTPS id a6si78631pls.4.2021.07.26.13.26.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Jul 2021 13:26:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of jeff@labundy.com designates 40.107.220.70 as permitted sender) client-ip=40.107.220.70;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LN2rZCOI0tsoMOjWnFBgeYqXwssAg5Waz2qwVGfpqBMkrWMXU0rlbqGiOVVlrqnCi/nYbryeAy9bcsQFFNv/9JcxJgM7+mQ2+8ebm+VbTwN9x36qsbMQ4WtTgYfc+I2LlgOl6kpgZIOBoM0CaNhW7zdtCmgXLYoL3q3K0+TA4Ga1CoU6Lt+p1dOZmuc33IfX/RrMT+354AplhtXTc8HFEzyD1jd1iFzmz4+DXA9Wz02PPWRiWRKr9/HwcOOq3cDGIGucB2LH3G+OHpwWizsgA6p09JUt3XwkBuLaGe/JJan6wccqrUkb+UsVpOYIQ6SugmfLQpEnkDketry5Gx26Og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s2W9+W9X5aeWsvgMNQp9kyFUuoK2KlcxVz3y0mK5GGo=;
 b=aak0rGO+Y0qAIruS3BBlM9iWOmturAnEBBhqjTFMApullp/MIpHp0RDmvDLy80EysETsjOidZHzcLxJHCKYNeY8Zvml7eOxLIab3WjRukVqgIeP3bGWAVqY+D50Uf0//WmZ9nMgItqS3dhqNDsFF5g/ogpsw3E29Cb6oKtbUPC3PI317O5VuxkT5im+8xfrcEOSTYa6KGi+V+PSYIwhG8+IoBngqBnRMHslMn7qTHgypeQlzTPEjCyNS2G1rRlfamf6D0hFmf7WnGxPLANMd7Hy+0zsWo7hGQ3EteWWrIQoHTDmdLSdHvJ82nobfbAHO/Bb0suWV2kDqZwhSJEJfHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=labundy.com; dmarc=pass action=none header.from=labundy.com;
 dkim=pass header.d=labundy.com; arc=none
Received: from SJ0PR08MB6544.namprd08.prod.outlook.com (2603:10b6:a03:2d3::16)
 by BY3PR08MB7108.namprd08.prod.outlook.com (2603:10b6:a03:363::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4352.26; Mon, 26 Jul
 2021 20:26:50 +0000
Received: from SJ0PR08MB6544.namprd08.prod.outlook.com
 ([fe80::4851:4a67:6f76:fdf6]) by SJ0PR08MB6544.namprd08.prod.outlook.com
 ([fe80::4851:4a67:6f76:fdf6%9]) with mapi id 15.20.4352.031; Mon, 26 Jul 2021
 20:26:50 +0000
Date: Mon, 26 Jul 2021 15:26:19 -0500
From: Jeff LaBundy <jeff@labundy.com>
To: kernel test robot <lkp@intel.com>, natechancellor@gmail.com,
	ndesaulniers@google.com, mpe@ellerman.id.au
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>
Subject: Re: drivers/input/misc/iqs626a.c:1645:12: warning: stack frame size
 (2384) exceeds limit (2048) in function 'iqs626_probe'
Message-ID: <20210726202619.GA1915@nixie72>
References: <202107261431.ugRM3oKP-lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202107261431.ugRM3oKP-lkp@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ClientProxiedBy: SN6PR04CA0082.namprd04.prod.outlook.com
 (2603:10b6:805:f2::23) To SJ0PR08MB6544.namprd08.prod.outlook.com
 (2603:10b6:a03:2d3::16)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from nixie72 (136.49.90.243) by SN6PR04CA0082.namprd04.prod.outlook.com (2603:10b6:805:f2::23) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4352.24 via Frontend Transport; Mon, 26 Jul 2021 20:26:49 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0b97ce14-efa7-4ec0-e56f-08d95073b29e
X-MS-TrafficTypeDiagnostic: BY3PR08MB7108:
X-Microsoft-Antispam-PRVS: <BY3PR08MB71084883650A97946337020AD3E89@BY3PR08MB7108.namprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LNY0x7M+1GnxN3D6zb5BMLSD7QrsA/bRwufz0QBPMRmtTgZvkMiHbV6RiplBZJuXp2gn04U6HURuXCnqRogdyKAnomy5ozoS1GhBY/5UbkY00NGn++6dFJ5frwN9T+Vfo0YLsHcOEuBSXHdP3MthT3rdfPDGqT8xOQwjaUXYA90Z76i6bjYrip7PoLyfSUB38LPWM8FPGYqBgsK4FBm392n3vbTvHVkX20UVAZgxXrdFMMY/4KQ2DgTofKsd2/BNXt43v88PFsEfoWb35b47zWJnkWrSilhwC15g4odznKbps2vUhquS6I4j9qB3T2C7kxaBRslIn5SVBwnyYr3O7GBtblym1ljfPZ3j3s0MLhJzxQ7jl7yOMRNiK4X5/ga3orp9u57K1lrDuuJLIdsn7T3dzqjXwhZDPs+9tBAn/EBOE0HpvWN9Que6xSwaRx6LZvmG3licUq2Q6lGE5VPNOeyGXRR0mtFHWacVxIbdfn3F0IUZpyMOAZTDluo1ULQ4zy2nIZKh0LznoBoSFCWR4g80fLmbBNfYte8Q+BzXOouX+AvEV9NLuXgyD8kj43Av7VQGHUqojbyD+EQ8Ac95Hm2R+r3+FBGKx+222YChDWDaBppkwNzCpbIGYd6shVt+X0MSS1ERJIDgSlD1smJYAGVTSgnvvUAO0o8MYbewUs2oBbFnUmCxg5WpAJsimWsEROdvnW+R+LDiQ0IE0D/4/nwUZPH3AzH9B8Giz6cUY4QEnUJY9gGpDZZH5ThUUH4yNBRG3X4s3FosUrEdR6rXISJskmvuxwLdUZJQkpIVvBI=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR08MB6544.namprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(346002)(396003)(39830400003)(366004)(376002)(136003)(478600001)(2906002)(86362001)(6666004)(26005)(8936002)(52116002)(186003)(33656002)(1076003)(966005)(956004)(55016002)(6496006)(8676002)(9686003)(66556008)(66946007)(9576002)(33716001)(316002)(66476007)(38100700002)(5660300002)(4326008)(38350700002)(83380400001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?z1Z3f1ssxpBs9TWqVaZmEAFVESof2KOYM3VfFmtkDwJ99Jj8RKgfvVHYqyAX?=
 =?us-ascii?Q?2B7M/oyikjLsgXo+8BO9ddW31WsumBoVsG12bROSNgwZrQ9Ca24NYxzppc+R?=
 =?us-ascii?Q?zEYMdQNOFSjmhefWoutLkvifQIOu9cctxvpya9Nn9Khxw6EllXQ1chDMVCTc?=
 =?us-ascii?Q?M2eZNmt2crdcAHKfpVl82ywv+hCUN/5QO8OA8H1ny6GjOzafsAngoYIbwixs?=
 =?us-ascii?Q?ceGFT77eJIsjW3Wm9eL3us/rlTeNaFC9BbIvQmSgmPNOs/guf8i1iSkDmKsd?=
 =?us-ascii?Q?ZBYjXIgekkvapxhM1GXOnwQfTHeGbd+b9tm6AQNkBcx6BjGOOiOenW31SOSW?=
 =?us-ascii?Q?gIBOT7OYsqQW+4wq+BJh6ZNSfv8oBOdtZHHKygWMNWa32coyQFD6GRxm0Mp2?=
 =?us-ascii?Q?ezK/7iQW3DzAvipuEmR9fuC6s1wWC3uwZDjxWuri5uOf2lREjY6PQx7Frlmo?=
 =?us-ascii?Q?ypPmAxIWhjaWYWYw+XZi8EA1n+AwKfrJBsemTarN3NcZY2Lhn1OpgJ6izWMB?=
 =?us-ascii?Q?fbYDe8993mglym8a3dicGKau/Y+5ydEe9n/ck80WWAPGl5ZiOyEWotioMC6R?=
 =?us-ascii?Q?vu2SVEIcPMOfYCD1d2DkvwT+QTTbdsdaXqIp3t0woZiaSy2CAhHBaqXajQMp?=
 =?us-ascii?Q?Q0C2qBU0qOVl8kM2u6WeGMunrQlZQLc55KiOy2luUNXvEZTil4y5baL5a2K+?=
 =?us-ascii?Q?0yM67FBeCnZU+oQfNfdvFycuQhGB2SL5KiL9GkybS2KurcQ8/cBgLf5ea483?=
 =?us-ascii?Q?jDuz3HqiaOp3WF4aw6pZPWI7G/xcYaYJUuWM6fx6WkQRxt3++Npjw9mufX84?=
 =?us-ascii?Q?Bt7I4dIxyIVfYAjGbOg3r5NLELKYPaY5qVEum1xdKZZv+/msOFuY/640JPKi?=
 =?us-ascii?Q?f/pnx08S4KqJfqnraYd+Zz/acAZ5hXEmuOQuVAp893zRAuTk74UBtf01nLZQ?=
 =?us-ascii?Q?C9z0QlfJfQChSAb3f/aZNeI+kc57JlAY4HUrTBNfWsn/7VfcAPs4HtfyW0Ep?=
 =?us-ascii?Q?k26Z8fZdbgeJZw+nLwbY4X8FmzNp5vylexkpM5bug3UJlN177BPPBc3Rd8x/?=
 =?us-ascii?Q?FUoONAT2sCJQLtrII7xHhVF7WK6ymnKS12JI8VPntJgEapIx2wou8X3zd2tO?=
 =?us-ascii?Q?9gjo/yNYaPjJ1WotcJL6Zmx9Rj8PEgCKER1mXJg4g8fKUHWzJvW6rtcPmGHg?=
 =?us-ascii?Q?KnCXmDfBZ+5+QJLq/zemH+R1shjTbqi8N1wtVnbUszT4vsIDF3NawS0mALcE?=
 =?us-ascii?Q?hFh6pCL5DmpeNEF21xQaYo0rd54VjNKUqIrwg3vu0i2DeBTXbGcVuam92udv?=
 =?us-ascii?Q?OX37ehXPbcgKhVaSzl1zIo8f?=
X-OriginatorOrg: labundy.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b97ce14-efa7-4ec0-e56f-08d95073b29e
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR08MB6544.namprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jul 2021 20:26:49.9905
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 00b69d09-acab-4585-aca7-8fb7c6323e6f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IhKLQqoPFt2FvBN4PN1MfSYaFRq4MB0QCw9xVrXl7g7gZcKPj9X/hQteXroaEq9FM0gAK48KhHweflqC1kOCJA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY3PR08MB7108
X-Original-Sender: jeff@labundy.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@NETORG5796793.onmicrosoft.com header.s=selector1-NETORG5796793-onmicrosoft-com
 header.b="du3Tll/V";       arc=pass (i=1 spf=pass spfdomain=labundy.com
 dkim=pass dkdomain=labundy.com dmarc=pass fromdomain=labundy.com);
       spf=pass (google.com: domain of jeff@labundy.com designates
 40.107.220.70 as permitted sender) smtp.mailfrom=jeff@labundy.com
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

+ Nathan, Nick and Michael

Hi all,

On Mon, Jul 26, 2021 at 02:20:40PM +0800, kernel test robot wrote:
> Hi Jeff,
> 
> FYI, the error/warning still remains.
> 
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   ff1176468d368232b684f75e82563369208bc371
> commit: f1d2809de97adc422967b6de59f0f6199769eb93 Input: Add support for Azoteq IQS626A
> date:   4 months ago
> config: powerpc-randconfig-r011-20210718 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 5d5b08761f944d5b9822d582378333cc4b36a0a7)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install powerpc cross compiling tool for clang build
>         # apt-get install binutils-powerpc-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=f1d2809de97adc422967b6de59f0f6199769eb93
>         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>         git fetch --no-tags linus master
>         git checkout f1d2809de97adc422967b6de59f0f6199769eb93
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
>    __do_insb
>    ^
>    arch/powerpc/include/asm/io.h:556:56: note: expanded from macro '__do_insb'
>    #define __do_insb(p, b, n)      readsb((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
>                                           ~~~~~~~~~~~~~~~~~~~~~^
>    In file included from drivers/input/misc/iqs626a.c:20:
>    In file included from include/linux/interrupt.h:11:
>    In file included from include/linux/hardirq.h:10:
>    In file included from arch/powerpc/include/asm/hardirq.h:6:
>    In file included from include/linux/irq.h:20:
>    In file included from include/linux/io.h:13:
>    In file included from arch/powerpc/include/asm/io.h:619:
>    arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>    DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
>                    __do_##name al;                                 \
>                    ^~~~~~~~~~~~~~
>    <scratch space>:12:1: note: expanded from here
>    __do_insw
>    ^
>    arch/powerpc/include/asm/io.h:557:56: note: expanded from macro '__do_insw'
>    #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
>                                           ~~~~~~~~~~~~~~~~~~~~~^
>    In file included from drivers/input/misc/iqs626a.c:20:
>    In file included from include/linux/interrupt.h:11:
>    In file included from include/linux/hardirq.h:10:
>    In file included from arch/powerpc/include/asm/hardirq.h:6:
>    In file included from include/linux/irq.h:20:
>    In file included from include/linux/io.h:13:
>    In file included from arch/powerpc/include/asm/io.h:619:
>    arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>    DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
>                    __do_##name al;                                 \
>                    ^~~~~~~~~~~~~~
>    <scratch space>:16:1: note: expanded from here
>    __do_insl
>    ^
>    arch/powerpc/include/asm/io.h:558:56: note: expanded from macro '__do_insl'
>    #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
>                                           ~~~~~~~~~~~~~~~~~~~~~^
>    In file included from drivers/input/misc/iqs626a.c:20:
>    In file included from include/linux/interrupt.h:11:
>    In file included from include/linux/hardirq.h:10:
>    In file included from arch/powerpc/include/asm/hardirq.h:6:
>    In file included from include/linux/irq.h:20:
>    In file included from include/linux/io.h:13:
>    In file included from arch/powerpc/include/asm/io.h:619:
>    arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>    DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
>                    __do_##name al;                                 \
>                    ^~~~~~~~~~~~~~
>    <scratch space>:20:1: note: expanded from here
>    __do_outsb
>    ^
>    arch/powerpc/include/asm/io.h:559:58: note: expanded from macro '__do_outsb'
>    #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
>                                            ~~~~~~~~~~~~~~~~~~~~~^
>    In file included from drivers/input/misc/iqs626a.c:20:
>    In file included from include/linux/interrupt.h:11:
>    In file included from include/linux/hardirq.h:10:
>    In file included from arch/powerpc/include/asm/hardirq.h:6:
>    In file included from include/linux/irq.h:20:
>    In file included from include/linux/io.h:13:
>    In file included from arch/powerpc/include/asm/io.h:619:
>    arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>    DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
>                    __do_##name al;                                 \
>                    ^~~~~~~~~~~~~~
>    <scratch space>:24:1: note: expanded from here
>    __do_outsw
>    ^
>    arch/powerpc/include/asm/io.h:560:58: note: expanded from macro '__do_outsw'
>    #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
>                                            ~~~~~~~~~~~~~~~~~~~~~^
>    In file included from drivers/input/misc/iqs626a.c:20:
>    In file included from include/linux/interrupt.h:11:
>    In file included from include/linux/hardirq.h:10:
>    In file included from arch/powerpc/include/asm/hardirq.h:6:
>    In file included from include/linux/irq.h:20:
>    In file included from include/linux/io.h:13:
>    In file included from arch/powerpc/include/asm/io.h:619:
>    arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>    DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
>                    __do_##name al;                                 \
>                    ^~~~~~~~~~~~~~
>    <scratch space>:28:1: note: expanded from here
>    __do_outsl
>    ^
>    arch/powerpc/include/asm/io.h:561:58: note: expanded from macro '__do_outsl'
>    #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
>                                            ~~~~~~~~~~~~~~~~~~~~~^
> >> drivers/input/misc/iqs626a.c:1645:12: warning: stack frame size (2384) exceeds limit (2048) in function 'iqs626_probe' [-Wframe-larger-than]
>    static int iqs626_probe(struct i2c_client *client)
>               ^
>    14 warnings generated.
> 
> 
> vim +/iqs626_probe +1645 drivers/input/misc/iqs626a.c
> 
>   1644	
> > 1645	static int iqs626_probe(struct i2c_client *client)
>   1646	{
>   1647		struct iqs626_ver_info ver_info;
>   1648		struct iqs626_private *iqs626;
>   1649		int error;
>   1650	
>   1651		iqs626 = devm_kzalloc(&client->dev, sizeof(*iqs626), GFP_KERNEL);
>   1652		if (!iqs626)
>   1653			return -ENOMEM;
>   1654	
>   1655		i2c_set_clientdata(client, iqs626);
>   1656		iqs626->client = client;
>   1657	
>   1658		iqs626->regmap = devm_regmap_init_i2c(client, &iqs626_regmap_config);
>   1659		if (IS_ERR(iqs626->regmap)) {
>   1660			error = PTR_ERR(iqs626->regmap);
>   1661			dev_err(&client->dev, "Failed to initialize register map: %d\n",
>   1662				error);
>   1663			return error;
>   1664		}
>   1665	
>   1666		init_completion(&iqs626->ati_done);
>   1667	
>   1668		error = regmap_raw_read(iqs626->regmap, IQS626_VER_INFO, &ver_info,
>   1669					sizeof(ver_info));
>   1670		if (error)
>   1671			return error;
>   1672	
>   1673		if (ver_info.prod_num != IQS626_VER_INFO_PROD_NUM) {
>   1674			dev_err(&client->dev, "Unrecognized product number: 0x%02X\n",
>   1675				ver_info.prod_num);
>   1676			return -EINVAL;
>   1677		}
>   1678	
>   1679		error = iqs626_parse_prop(iqs626);
>   1680		if (error)
>   1681			return error;
>   1682	
>   1683		error = iqs626_input_init(iqs626);
>   1684		if (error)
>   1685			return error;
>   1686	
>   1687		error = devm_request_threaded_irq(&client->dev, client->irq,
>   1688						  NULL, iqs626_irq, IRQF_ONESHOT,
>   1689						  client->name, iqs626);
>   1690		if (error) {
>   1691			dev_err(&client->dev, "Failed to request IRQ: %d\n", error);
>   1692			return error;
>   1693		}
>   1694	
>   1695		if (!wait_for_completion_timeout(&iqs626->ati_done,
>   1696						 msecs_to_jiffies(2000))) {
>   1697			dev_err(&client->dev, "Failed to complete ATI\n");
>   1698			return -ETIMEDOUT;
>   1699		}
>   1700	
>   1701		/*
>   1702		 * The keypad may include one or more switches and is not registered
>   1703		 * until ATI is complete and the initial switch states are read.
>   1704		 */
>   1705		error = input_register_device(iqs626->keypad);
>   1706		if (error)
>   1707			dev_err(&client->dev, "Failed to register keypad: %d\n", error);
>   1708	
>   1709		return error;
>   1710	}
>   1711	
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

This function has elicited previous stack frame warnings using clang with
powerpc, the last being [1]. In each case the warning is preceded by many
others in arch/powerpc/include/asm/ so I'm curious if the warning here is
simply fallout from something else.

Do you have any insight? The stack size should be well under 2 kB in this
case. I see some other similar warnings throughout the mailing list which
are preceded by DEF_PCI_AC_NORET as well. If I have misunderstood or this
driver is indeed doing something nefarious, please let me know.

Kind regards,
Jeff LaBundy

[1] https://lkml.org/lkml/2021/6/6/10

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210726202619.GA1915%40nixie72.
