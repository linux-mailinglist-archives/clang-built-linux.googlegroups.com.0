Return-Path: <clang-built-linux+bncBAABBOUBVX7AKGQEQTPH77A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id EA3A42CFA82
	for <lists+clang-built-linux@lfdr.de>; Sat,  5 Dec 2020 09:11:39 +0100 (CET)
Received: by mail-pg1-x540.google.com with SMTP id z24sf4969199pgu.1
        for <lists+clang-built-linux@lfdr.de>; Sat, 05 Dec 2020 00:11:39 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1607155898; cv=pass;
        d=google.com; s=arc-20160816;
        b=Dlxi2aWa4LR0hLbwRcleaWxzw7qmsD950WWZecdWr3KH+Z4CeTJKCxbkVsPMUH8UG9
         1VuD1wBSwoeVqEbV7lqZmRDfRIMPC5KG0UtnLde+SvLQW17O45kXWEfnS2llPUxKyPLr
         SnVwfmyM4+/FioQNxmb4nNOPa/e/LsNMCDBeUXHlWAnvW/3l3oM+ZdaIQ8MF/IxfHsKF
         kP1MaiBbVbtHHQ0hZeVWn3lwZxZldZli4H3XNeGcyW2ZoFmJzMplUSfkHh5AM9IKVVpg
         S3rAd8Lt7bGgMsJ1Rg0OwO82Y4JnguiXyKVIZn6cV2xFxue6NaomlvtgSZ5F2PYiHcJo
         oGCw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:wdcipoutbound
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:ironport-sdr
         :sender:dkim-signature;
        bh=R2v41NisTScXRkW8b1lFKA6qlawYvfYefAYq+6SK4q4=;
        b=Kj0KVtQpLjfwJd/8ycEoWQGzsz96iwOZkADBXNI+SmOh86JTImoFlB+JnmQqZWipPp
         yf3sNNUdQLrdBX52bGH6Slmj0PsQpZccKNlWMXQ9XgA8v4DlibSs1Gm8dgudSCpM6/va
         XhXGVXuJ40BjNYgkBi3LhftNMY+blChQhJVVO5hdEpBfHBuz6ddQ7Ij0lkmStuNDs+NM
         pnGjlvaT4sLachevCaUZmhHmW8QjcQ7c/1xJCUaaUWpwio1TFDhiD+RMKucES1p2P6/M
         9ygtGrw+f8xXxEEVC4uybqmSUjX1rYug52+dedQMBQ84MiUxaMv2wBxIP9QS8TA0QEr0
         lXiw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=dLDGP9Gi;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=rjQ1HGWb;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=60188c4e5=avri.altman@wdc.com designates 216.71.153.141 as permitted sender) smtp.mailfrom="prvs=60188c4e5=Avri.Altman@wdc.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:from:to:cc:subject:thread-topic:thread-index
         :date:message-id:references:in-reply-to:accept-language
         :content-language:wdcipoutbound:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=R2v41NisTScXRkW8b1lFKA6qlawYvfYefAYq+6SK4q4=;
        b=Z2LGHi06n4QAzU9ADpgsw4S3X1QIwgj3cgMhrVjv9anekUYKJMoXH5sotEFXTZpXAP
         qFiAptcqJZoNWJLQH+01t8pTKv8tvIZejn7t6G1IbWWirOCwneE6oafA5HG+80ELNZ9K
         n4uRKNE4f3eoqw4r+nd07tgSSXZ0FN2YaPZohyppWWNPM70DEw7UbzUxuELGuwPCqeKo
         jh+xhcLZZUWHa+0enlwHA27cnC5Z+SYRrrmXFskrtQNnHGGjITXSWg2ADvGEmNXkP4MV
         BWRumKpJKOXmqITFNEoIdz3QzpBahbBHHElGmUG2HKGV1IZNR0R8WXfz0DJAFJzbfW/i
         u34w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:from:to:cc:subject
         :thread-topic:thread-index:date:message-id:references:in-reply-to
         :accept-language:content-language:wdcipoutbound:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=R2v41NisTScXRkW8b1lFKA6qlawYvfYefAYq+6SK4q4=;
        b=NpqTptiXsPO+dokVpS/uCSedYzWwHbDYx3EMJKV+DDk9BzMUcj2WbRVBUIR2Qo80m0
         NbzQGOv+iqAfDhwqE4YvCJK4M0cV+FQvJPjehfexjymzLbshANgPTbPEYn9AOTSzaI7k
         6uLU1mAFqrTQjLtHEY72kPx5htYpjhGKlHwG2aIJDyjCpISNxnOr8szwZLyawq/5I1ci
         WPp+2AJl8PsDMoV7SSYP6iexExyAp0xyXE/m0PT5MMGIO6p0K8SKCsd7SD0Xyus3Y3zp
         uF66rWBLdy3S/KUYbnb4mv9Cy1MloOQ5N0vUNoCqGLmOZyPkMXSxgrea7uiYss/0V6fS
         8VKw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5316EbNVOjeTceQ1cYkh3zqkwXp6JACrlCqt3l11hwW58LLK8jmB
	3fS64gVAWaCc/dN3v5YIbSU=
X-Google-Smtp-Source: ABdhPJzv7uP4JXFq1vAQQlO9UvMrjjYFSFphWz6SwLNs+GUZY4WBcyt3HHlJW+m+yxxkFuI5duo56Q==
X-Received: by 2002:a17:902:8f83:b029:d7:ec99:d2fd with SMTP id z3-20020a1709028f83b02900d7ec99d2fdmr7446596plo.17.1607155898526;
        Sat, 05 Dec 2020 00:11:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:bc47:: with SMTP id t7ls2543568pjv.2.gmail; Sat, 05
 Dec 2020 00:11:38 -0800 (PST)
X-Received: by 2002:a17:902:bb94:b029:d6:edb2:4f41 with SMTP id m20-20020a170902bb94b02900d6edb24f41mr7514867pls.3.1607155897948;
        Sat, 05 Dec 2020 00:11:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607155897; cv=pass;
        d=google.com; s=arc-20160816;
        b=MDzh5DfYK5PbEn9V9I5ekenb5wBkHBd2AkddZe/t0mSsnMR5j2bKEOZmnkAGsNT+vc
         nt5nTBC1Uj/PU0OIFhV00LWKg3b4dMwWXzYYHOgf2grAj3iJKiGeb6oGQjTz/e19RFHn
         /n+SiGYieSYbLDnq/BL3Ifq9mz4yWdWgvW4g3ez/tHiuTu5UTrxayzMBGD18IC3cRMgU
         ZS0FPH8C0xTew8u5pABlVD9JOywLquRCAgKMhuYHHV1mNnChiRlt2qKw25g2PU+SIQDd
         rg30s9d+ahW0ulqzuQ+gJ+9K+RuPgTQZ0+i6o3ZuWMOsbT/QioUP4supXo5z7lZ0kTZZ
         s07Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:wdcipoutbound
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:dkim-signature
         :ironport-sdr:dkim-signature;
        bh=QaD8ZXAnKZIbm34csWyxO0eghQirkjHU3q8r7YKqEDY=;
        b=hIzVZaNacOUkQL6WVa6LjnUf2vUaOK5rwckRFF8yU3gwNMrL5PgIaJsbandA7S8gMo
         upoNHB6VWIr4jIIazpbzb94fyOTWH/edlhkMHDn6Vn4q40Dn87hjcaz/NIMhURnTURd3
         o8eUbW7CGc/biUVPp5nh3wIQhiBb7rBoXgFfCspqlnlzAKQCnUH8BsmAeOlst2+alQlN
         opZuziB470hW8r/LJRn8EEj3YhcqqmvaUjU0AP00JLQuK2Uq3ITR9rlYnMnKFwq05Dip
         tQC5i5QAgc6c1LM04OgCjGsJmJbXBjyIyGFjf5+zedaO3QX1uSLlDocnIrjBwqXRnaMd
         JggA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=dLDGP9Gi;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=rjQ1HGWb;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=60188c4e5=avri.altman@wdc.com designates 216.71.153.141 as permitted sender) smtp.mailfrom="prvs=60188c4e5=Avri.Altman@wdc.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=wdc.com
Received: from esa3.hgst.iphmx.com (esa3.hgst.iphmx.com. [216.71.153.141])
        by gmr-mx.google.com with ESMTPS id y13si532854pgr.2.2020.12.05.00.11.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 05 Dec 2020 00:11:37 -0800 (PST)
Received-SPF: pass (google.com: domain of prvs=60188c4e5=avri.altman@wdc.com designates 216.71.153.141 as permitted sender) client-ip=216.71.153.141;
IronPort-SDR: 0n/vUQhDyhOAC3rSy5knG33exjKkUSFOKsB6CtkWWATuTeQlndA9V7FSmYebqtrAkl3NaO6iij
 vWttOAHuXupMTK2fJLGavW1O+lkV/baQBAiUMJ0EYEAcszGHY3m08FrMtxXnXV4vPEm4ZO/ZN7
 d5xnk7VlhvFrNaKQ9b+Q5fDn4nubm5eb7kfOoD42oOh58xJW3Tj5HYs+UAt2zD2wr2bQZcU0us
 Ytsd7orpOZZWPnviXk7LaIDcZqVsskVIEwRgu77qST1ifZp0kuMC8EKlaX4n0Iz/JnIoI1cTnO
 6pg=
X-IronPort-AV: E=Sophos;i="5.78,395,1599494400"; 
   d="scan'208";a="158955832"
Received: from mail-sn1nam02lp2057.outbound.protection.outlook.com (HELO NAM02-SN1-obe.outbound.protection.outlook.com) ([104.47.36.57])
  by ob1.hgst.iphmx.com with ESMTP; 05 Dec 2020 16:11:34 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KynyzYnKt3kKkyX2svhQhxSqnKl3o7k1VZAEohTx85FiPQNpbPAKrwuJBiTzkxoc9YkgzoAE8OeimfN50vMjd7/fY/aF3P1iKoVXejkfNAPknzUwrDu7NBD2lBT4zSbi69gc+OMcdO1nP4lKIS8fkvbGH7QLQGwq9Y6+x+6SjBc8T5Ji2qXxtesIQhr8HtCwbD4QK8CVb/dpIF7kFx7F1bErpTIADuP+OWrUE6tMk7kzvzU5me2mxbfSCIaFXVoP+ZuhOk4XEwYMj9oJ1v4W4KvFEz226BameA/zHWEHquxf2FScIxwKVLvnzLSwYGK4e8Jv8w8lx3agcRZeWsW7Mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QaD8ZXAnKZIbm34csWyxO0eghQirkjHU3q8r7YKqEDY=;
 b=LUtgXKdGgAHLIFfeyEp+9PKeLoUSle2xWkNijCJ7d9H9YGf///c3p8EOodquZguH77vw/kgNfC6nCfaPvZ9X7SsaDUxqKjhgtILda4lmx33pF3SZS1XDZXWsmUvf6qzz8CElen2vcjeAO7MyfTGJz+c0kX0zhBpWQxjd0EdRMez655orh/itFKXWa8IGIluuiNRfNr6Kv0+kWs/Z+inEvsilSg1eD5tuN+JXCKBvo/9QdpcF0a3V6lMSnWcXPOgeka04mdzfeBhbokNTR4RcArgLZj6x3B//Q/ED8wN7syne8i6e8Fu5/Lm28q4kE0RzE+PCEjCAeQ1agQcIs5BCPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
Received: from DM6PR04MB6575.namprd04.prod.outlook.com (2603:10b6:5:1b7::7) by
 DM5PR04MB1132.namprd04.prod.outlook.com (2603:10b6:3:a4::7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3632.17; Sat, 5 Dec 2020 08:11:32 +0000
Received: from DM6PR04MB6575.namprd04.prod.outlook.com
 ([fe80::a564:c676:b866:34f6]) by DM6PR04MB6575.namprd04.prod.outlook.com
 ([fe80::a564:c676:b866:34f6%8]) with mapi id 15.20.3632.021; Sat, 5 Dec 2020
 08:11:32 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Arnd Bergmann <arnd@kernel.org>, "James E.J. Bottomley"
	<jejb@linux.ibm.com>, "Martin K. Petersen" <martin.petersen@oracle.com>,
	Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers
	<ndesaulniers@google.com>, Jaegeuk Kim <jaegeuk@kernel.org>
CC: Arnd Bergmann <arnd@arndb.de>, Alim Akhtar <alim.akhtar@samsung.com>,
	Stanley Chu <stanley.chu@mediatek.com>, Can Guo <cang@codeaurora.org>,
	Asutosh Das <asutoshd@codeaurora.org>, Bean Huo <beanhuo@micron.com>, Bart
 Van Assche <bvanassche@acm.org>, "linux-scsi@vger.kernel.org"
	<linux-scsi@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>
Subject: RE: [PATCH] ufshcd: fix Wsometimes-uninitialized warning
Thread-Topic: [PATCH] ufshcd: fix Wsometimes-uninitialized warning
Thread-Index: AQHWycQXp6g3K07ih063gLNOLCVad6noJ+8Q
Date: Sat, 5 Dec 2020 08:11:32 +0000
Message-ID: <DM6PR04MB6575519252EE03084136683CFCF00@DM6PR04MB6575.namprd04.prod.outlook.com>
References: <20201203223137.1205933-1-arnd@kernel.org>
In-Reply-To: <20201203223137.1205933-1-arnd@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [77.138.4.172]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 6f148da8-b97a-465d-9b8b-08d898f560b0
x-ms-traffictypediagnostic: DM5PR04MB1132:
x-microsoft-antispam-prvs: <DM5PR04MB11321B148C42D4DC79F520BAFCF00@DM5PR04MB1132.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0vX69iZjiidiaTOU+BP7WLFawmjGBZlo7ZMeP8pFOJbqKdNpFdIpamHbeHbRLH6o3JlbGZzkhniYOyN5eINALEc/gldEnn+i2MCtrWZyEE2AYK8cWK8yx9PTxqqQ1ib21V8msN3//D5N7VHb3awBekKU7pkQEI9z3N3QKLYv2+jLqdhhJ1tq0iNyj3vnH8gfd2ncsNlF2N+Zkjqhiu7FKxeUwx6Pty4JOHPEZpkP4ESJD7AAbRvdOmfXNzh7KkUwOjgQ3XX3HbVu4pL0kARUrj32ioQHfqUae8tWCiP5L5HpmEH/myeojMDFRqfbNL7HAX1ApiLtLbqWP04BIOxnPg==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR04MB6575.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(136003)(39860400002)(366004)(396003)(346002)(83380400001)(26005)(86362001)(7416002)(478600001)(71200400001)(2906002)(33656002)(76116006)(6506007)(8676002)(55016002)(52536014)(8936002)(5660300002)(9686003)(66946007)(64756008)(66556008)(66476007)(186003)(110136005)(66446008)(7696005)(316002)(4326008)(54906003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?PKHaWZnRR9hrjfNvsjLmvPc2Ov9gHPLoU06XbN7hnGqRVX8d1ZUre9NjejRT?=
 =?us-ascii?Q?jTvebCG6ktLoikf/lQJzpuANP/lF7bMcQswhv1ce0X4pH9X1TDc8/mBYJQN3?=
 =?us-ascii?Q?/sJwFWqmOwBYLHV5XZlLukd9YQTH8y+EJZ9pHmhKfcyRTCil6gzKhOO5aX65?=
 =?us-ascii?Q?706THAeRPjSdV543mLXf4nWs+Kt7YvLeYZ8jS+Vgx9l+m354/QRMi9jogVat?=
 =?us-ascii?Q?2K4xkKMBSylrosOcXf/UaU+iTAXOF5W2w0EatauiQNa9TCnrWxOaU+pm1Tyz?=
 =?us-ascii?Q?iEaeIa/9TUwRcGy6OmOXlckJD2/LQz660+TucoqO4Sz6mkqAdgT/EiDoEkrq?=
 =?us-ascii?Q?QcF/PaVKeB59TNdWj+WB5s3MO5BnFMuHw/RXa2Gf7MbBHy+0sPkz8FLSFo4Q?=
 =?us-ascii?Q?190s+V2Fn1p+mQFohS4wghPt1I4/RvsURkkZCPo0ihxHk1hip7MHrFYhr17k?=
 =?us-ascii?Q?F801IbVS2x8a0nYWpgG0qpZUrBveSZnXLaMqHPeMsOlv2qgMj28wbdZzMqbb?=
 =?us-ascii?Q?R/Ku+8f5MgaequriwGLGc1DZZPcQFe1TKXvojDpw+QBoTwSPFZz/oJqvT56D?=
 =?us-ascii?Q?qHrG0noqsdmvBYklevQepJDulXADxoWrnFE61YUQnH8eLQlCNRe+bgaCNXhJ?=
 =?us-ascii?Q?fPU2TMV9+Xw2IzHeBIWZOltXDNti13KQmvcNGYye1O3vG3DbcwPs6y/q5KCP?=
 =?us-ascii?Q?Fuzu3YyApGZAJeQp6wijZMa7+/FyPzjIGAXsDixcs0wQnp0yj+Fp0zzLfXAZ?=
 =?us-ascii?Q?OdMP8SS44Nfs7yAdyCH9g40VRUfWsn90KQxdLhD8wICeL7DN8gMfyCz185+p?=
 =?us-ascii?Q?JdrR0kmpFyVjmg6BtQ6GqpHx2lDsaRZJ5w5hWdiaRDdNpsr1+mNvQKi0sV9C?=
 =?us-ascii?Q?J9HyXUcoWAw8Vd/Sz2Te4IKtGxMleGJ82WAzEuzzwfiJ9gSqB442SOq3C9FU?=
 =?us-ascii?Q?PlrU0HHj/OB6N/+8M0dfUuvSnHTJuJlTK+iv1f1rzyo=3D?=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR04MB6575.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f148da8-b97a-465d-9b8b-08d898f560b0
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2020 08:11:32.8934
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WZ+oNriRy4FtAVEm2YpFZGJGwlzbDSzE0MeQg7JPDr/XV14+PvP/PJtOsVuhyDI7Dtl7oNcBMA0JjDQBu+5+uA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR04MB1132
X-Original-Sender: avri.altman@wdc.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@wdc.com header.s=dkim.wdc.com header.b=dLDGP9Gi;       dkim=pass
 header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com
 header.b=rjQ1HGWb;       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass
 dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);       spf=pass (google.com:
 domain of prvs=60188c4e5=avri.altman@wdc.com designates 216.71.153.141 as
 permitted sender) smtp.mailfrom="prvs=60188c4e5=Avri.Altman@wdc.com";
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

> 
> 
> From: Arnd Bergmann <arnd@arndb.de>
> 
> clang complains about a possible code path in which a variable is
> used without an initialization:
> 
> drivers/scsi/ufs/ufshcd.c:7690:3: error: variable 'sdp' is used uninitialized
> whenever 'if' condition is false [-Werror,-Wsometimes-uninitialized]
>                 BUG_ON(1);
>                 ^~~~~~~~~
> include/asm-generic/bug.h:63:36: note: expanded from macro 'BUG_ON'
>  #define BUG_ON(condition) do { if (unlikely(condition)) BUG(); } while (0)
>                                    ^~~~~~~~~~~~~~~~~~~
> 
> Turn the BUG_ON(1) into an unconditional BUG() that makes it clear
> to clang that this code path is never hit.
> 
> Fixes: 4f3e900b6282 ("scsi: ufs: Clear UAC for FFU and RPMB LUNs")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Reviewed-by: Avri Altman <avri.altman@wdc.com>

> ---
>  drivers/scsi/ufs/ufshcd.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
> index f165baee937f..b4f7c4263334 100644
> --- a/drivers/scsi/ufs/ufshcd.c
> +++ b/drivers/scsi/ufs/ufshcd.c
> @@ -7687,7 +7687,7 @@ static int ufshcd_clear_ua_wlun(struct ufs_hba
> *hba, u8 wlun)
>         else if (wlun == UFS_UPIU_RPMB_WLUN)
>                 sdp = hba->sdev_rpmb;
>         else
> -               BUG_ON(1);
> +               BUG();
>         if (sdp) {
>                 ret = scsi_device_get(sdp);
>                 if (!ret && !scsi_device_online(sdp)) {
> --
> 2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/DM6PR04MB6575519252EE03084136683CFCF00%40DM6PR04MB6575.namprd04.prod.outlook.com.
