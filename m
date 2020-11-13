Return-Path: <clang-built-linux+bncBDZIZM7MZ4IBB5X4XP6QKGQEK3SZM2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id A09C62B2758
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 22:45:27 +0100 (CET)
Received: by mail-ua1-x93c.google.com with SMTP id u22sf1002449uae.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 13:45:27 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1605303926; cv=pass;
        d=google.com; s=arc-20160816;
        b=useVDXaZj6bQyzjw16UhkEVfbn0ODIi2QA4H298/6CfHHDsP2Jg/gqg131Ux+T9jUU
         EPk+wSQmgARcJnQK+sVQ7AXxzjit54/jgKxR/UU/s4Cv8kdocLlEpjshRMTHHC81oEhf
         Abe+TPWCgk50kxZJ4S1cQ0udkFCO+ljXJZs1Vt17YyxslyjdhGWtt5hUt1jENH99xaPg
         4SQZDD7U2bdmQv97aMJQTQjn/pB8AM7x+5xMzxLDpD9NU04hAT06aqnUhQw1ADrqXPlt
         mLE6Y5j5ovjPrbm5DggVacwdji+paffJ8Z8pkEu/Qog98fOydJiIB8NbiPcuhE3Tflaj
         B6TQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version
         :content-transfer-encoding:dlp-reaction:dlp-product:dlp-version
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=+g05bw2MI3htgJ/SBBjLZBzFn21omSL+hdWTycMTEuU=;
        b=n8IKIx08OOG5q+PNeNfb4rHo74lwHMzj8XBvZ40u6bWEa1D6OnVi2PaUjS/ycBLbsi
         vxN/L5n6Fk1aypko+vOS8tiEr+Jltxg63Hy155aJLNhwtkdXPJJ3UkCtgFu342xuG6tU
         Y2d12B09RAC0AVfCdOOFuZPnJaH2FnzTa8dZC8snpq2yShO7t7cw4LgpAZfhmHyd61NF
         w8Hesdvfj0M1RZCv35IiNNuLGDEpwr9UO3Z9YA67Rq7RAQsciFLL/Y52LuUl98BcYru3
         sxeOIoWGJ6MRKk+50HbNiV5LU00LIJC5ttNc2uGg/DISugO7Qp2RFmdD+xVotWZWluBK
         cDrg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=zqokXVnp;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of robert.moore@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=robert.moore@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:dlp-version:dlp-product:dlp-reaction
         :content-transfer-encoding:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+g05bw2MI3htgJ/SBBjLZBzFn21omSL+hdWTycMTEuU=;
        b=O8t5tm1h4ELkUD6LwwVul7XMZp3Iq3ttZcDuNXmY7KWwG5JAHtsUuziUc53haQJlVf
         bnCMYa7qpKZ9fqKe2wVNXSl1rqrnpTTLZy8KU+zK26+FybeFdPMbRKy5Tk78PTe+FCFx
         lvvBFYrH+V01zO8D5L1h3m/L66zK5on55qxuXsIl54G7bijid9Mgs4oGPDfa4qTWkdfn
         Fau9A79U7VNplEHPSeMq6l2W1vqmBOTm9VeHrvSqCSfC1ez51OzkrJDbS7VE6pJ5G/NB
         ClXSszqq9nKQ6ROSdzzRemXc1iVaJcm955PRP9szdDQHNzozYq36F8tX/mmdttcz3Q+/
         dWEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:from:to:cc
         :subject:thread-topic:thread-index:date:message-id:references
         :in-reply-to:accept-language:content-language:dlp-version
         :dlp-product:dlp-reaction:content-transfer-encoding:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+g05bw2MI3htgJ/SBBjLZBzFn21omSL+hdWTycMTEuU=;
        b=aGxtjSosxu0V+zw5KPvCNyR+Sl8sadJQX1A1Wd7BoY+j80NNNKG6bACITGKwWCqhyQ
         0nkZDPVg06QLyjmFeKSIBnwglcb39t+GCJKueB2XP4OqVmKa+aW1boGsPOoBy5w6d0KK
         gK41LwMpp0RX2HCq3negyUxfzBF2QyNjWtAkDg5O7DW3/FTVjbFNj3t2gdOJWcOXoj3k
         fQlnV948t4QMevpGWzAyKG8my9jxGyiPParNjPU/toqZwtw/179zwKZ4Hfpz6poZTl7Q
         NpSXVZCzoTy8b2CLjqU2VtWfrqL7gb7/sIenJaoX7yh0T4cpCYWT0tzrFjOy9R2f0+Zp
         wk8w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530WjDO6jQbpLE1yAgjJRbgQLZDm0VHcr7GpaqTS1aw0Hs5Li/Lr
	NNQIeFh+EWpjtrA4Swi5ZK0=
X-Google-Smtp-Source: ABdhPJxf3gpiCfsviD0nbEJ6/j4JTZNJWABz3TEXYsqxM3yLtEf2cSy8FtMVrMSQrw2pdOZeRtohhA==
X-Received: by 2002:a67:ce0e:: with SMTP id s14mr3149371vsl.13.1605303926702;
        Fri, 13 Nov 2020 13:45:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:2046:: with SMTP id q6ls1080121vsr.3.gmail; Fri, 13
 Nov 2020 13:45:26 -0800 (PST)
X-Received: by 2002:a05:6102:3208:: with SMTP id r8mr3094545vsf.6.1605303926102;
        Fri, 13 Nov 2020 13:45:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605303926; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ipkcewo8H2chBu5OjCD6oO8CT0WY0xrw6r2COiVvhM1B6toTxucaXqvumuNPpHMU7J
         b1rqME/lmhQnMvqZvQlJhjPtiO6AYfQ+YjJKqjq9oKWajYDUYWPYdfnWIFJSAnHEfdHg
         WOC1ZBA+H2pSUyOu/zJEqyU4Dm+hwJBcMp0LrVoHv3bwK+hJJLUdZj5mqqYoDwTnO2ED
         HYmK+CYgWGHTG3qHUdUKeCfVjC+pfRthGrgQzCZ4y+HQaiSDk9XcuU84ZP+xmDg8vsnL
         MN6I96+c7sDB0a0PV2WE/qJQypZaWzGaFf3RKu5LGSspv19wqIhACQ7R1OnW4uM52QXq
         4HVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:dlp-reaction:dlp-product
         :dlp-version:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from
         :dkim-signature:ironport-sdr:ironport-sdr;
        bh=rSZB0+yE4T2z1kPc2TkpTCyfqYwHHgEyabDuSYyP5VI=;
        b=pNUJjJB6DnKBXj9+/u21pR5MwMgG1r/DABtN6NNPEiURyqcoUFsrj6Zqv34JgPsXXm
         yazDg0P3iyNA4Cco8xm4PuIAKDhkfHszM/RxSKsC3JAXeFypT+sTZkwvlGyYgsZiPKsW
         nEEr9w01FBv/m5Jp15jGnGc+8r4tMsW88n/MP37+a0msbpfmPOclaJGYl0kdpc3Dj9sN
         B/XU7DSWORowL2YGjAotLycRUDW8x5sZujrZVFzbmhJKZ33e+gORuzqHofHKGrwgF7Mx
         DlNhSHRtIC7DJPOmNYy3dvm5WsTTCA3C5wLBn4w+q0uAKzq+Qz3513MX+dxMjcD3lG8u
         sSbA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=zqokXVnp;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of robert.moore@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=robert.moore@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id b16si832899vkn.5.2020.11.13.13.45.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Nov 2020 13:45:26 -0800 (PST)
Received-SPF: pass (google.com: domain of robert.moore@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
IronPort-SDR: 9toEoUoxa8VmX2UcSONP/F/LPsCZORC9jE/L27a9btVPyyHz2NzBghwmCqx0EkYi8mED4NkMSN
 qEZHrIogYdkg==
X-IronPort-AV: E=McAfee;i="6000,8403,9804"; a="157557321"
X-IronPort-AV: E=Sophos;i="5.77,476,1596524400"; 
   d="scan'208";a="157557321"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Nov 2020 13:45:24 -0800
IronPort-SDR: YQnZxJc/63KjXkNcQ+i7+88KuKRA2Niaf7LIYjkXGHhB+Ae3hwxxyu25w0iNTyvQBcIwbMXFWq
 9GxEPy6aYOqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,476,1596524400"; 
   d="scan'208";a="531172350"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
  by fmsmga006.fm.intel.com with ESMTP; 13 Nov 2020 13:45:24 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Nov 2020 13:45:23 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 13 Nov 2020 13:45:23 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.173)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Fri, 13 Nov 2020 13:45:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HgSSPQaPj+IE0y/EdBfpaf2Chu6+QBfBw1NDr8u2Gw9nl5/Etx51OnELz4brBbytGP0GqupOdYpE5AkJMcUxLKnHDFZYahBin5LBw1SRnCtdcjZD2iwvhqqQZxVMYbMdKi3DtzfDU6qMy8GnRpSpNcbUl1mWFETPKYCwW59xKD3NynRWh9TADQuG4JXBdhiAXDSoI7k1W98K3X/vCbaNcUwdsqiJoEWQsbExcNSqe3L7GVdpJ2eNbHp1wmxU21xJtU5Mm6k757J226k1tae/QthWXMgunQy6kCnRrT/ikPhtLI+xTq/BPd2sNZdZgYt5lFjTnEfuBpixAWjNW3iYhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rSZB0+yE4T2z1kPc2TkpTCyfqYwHHgEyabDuSYyP5VI=;
 b=fes6YfS+2k80xuba1HH3MpgQtrHF4HSk3XJXpxeqQJLIk94aKBmdgvvT1GPxVu38t9UCklDPN4hQup0cnC2xGOFA+RZ5+aO2/PoowdnbioRfdJUBHmncjcedDpOVLgB9HuWGm8uOJ6JXM5myTJDbBLDzs8Wmdl5vU4AmeVwRwwnc739L7DCotF78GXnD4xMYU+jtOgWIeMqgLoJ0Gcy4x340P3sq6SgnurksOjBV5dGhRr3FLnbDPfBcHPBqgp4IHQcvAZdT4lUin4PrUC9aJNXNUpib10NdAakLeU3gWD+OxL/8Yzq9wu/emzIGu8UvDZ4G180VxDoJbAO7oDwdng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3256.namprd11.prod.outlook.com (2603:10b6:a03:76::19)
 by SJ0PR11MB4976.namprd11.prod.outlook.com (2603:10b6:a03:2d7::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3541.25; Fri, 13 Nov
 2020 21:45:20 +0000
Received: from BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::9d74:8937:bd5f:3c6b]) by BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::9d74:8937:bd5f:3c6b%6]) with mapi id 15.20.3541.025; Fri, 13 Nov 2020
 21:45:19 +0000
From: "Moore, Robert" <robert.moore@intel.com>
To: Nick Desaulniers <ndesaulniers@google.com>
CC: "Kaneda, Erik" <erik.kaneda@intel.com>, "Wysocki, Rafael J"
	<rafael.j.wysocki@intel.com>, "Gustavo A . R . Silva"
	<gustavoars@kernel.org>, "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>, Len Brown <lenb@kernel.org>,
	"linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>, "devel@acpica.org"
	<devel@acpica.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] ACPICA: fix -Wfallthrough
Thread-Topic: [PATCH] ACPICA: fix -Wfallthrough
Thread-Index: AQHWt9BSaSJ92WwBRk6cKvxE5xanpKnGl5SwgAAB3QCAAAJ3cIAAAHnQgAAAbfA=
Date: Fri, 13 Nov 2020 21:45:19 +0000
Message-ID: <BYAPR11MB3256DD34C3DABD2CB4FE347D87E60@BYAPR11MB3256.namprd11.prod.outlook.com>
References: <20201111021131.822867-1-ndesaulniers@google.com>
 <BYAPR11MB32568FEEF4CFA1C20296427B87E60@BYAPR11MB3256.namprd11.prod.outlook.com>
 <CAKwvOd=qDNnOu1oTeEN+chvfJcQSS5dxREo0JQHC=W0zhpYeLw@mail.gmail.com>
 <BYAPR11MB32564DD5B9D140AFE8C3D1EB87E60@BYAPR11MB3256.namprd11.prod.outlook.com>
 <BYAPR11MB3256E6E37618702C5EA761A087E60@BYAPR11MB3256.namprd11.prod.outlook.com>
In-Reply-To: <BYAPR11MB3256E6E37618702C5EA761A087E60@BYAPR11MB3256.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [134.134.136.194]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7717ead9-c3f4-4882-4271-08d8881d6ac3
x-ms-traffictypediagnostic: SJ0PR11MB4976:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SJ0PR11MB49765DF640D1CD91F21339F487E60@SJ0PR11MB4976.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: x8MJsb9ALf1xF426Ail7Kh6Zmssv+ADwzn9DMNDE7PV5hw30jMRufvAFQ6o4AQIDfbzMuesoQsqlP7jRwxOwlGQO/AaZbqxAZIfPhImwLPqNUgyekbTimc531n1NXwaY9uruwtxwRVK9erWlJ3RbCzYShtAod1iWma8+AKNviPFIrGOGPKpabSQN0arCBH/t4GHwn9i85IJ9iBtNrKxW6qrwdxPGTDk1gfhlrV8k8MNBXS452TJGRKyUg64ysFujSX/487fG+C7EvNL00T4I9Fugq2qyizeCm6/2ZceytAfqP5B1Es81fdELjDYiLxopRfRlatOd0DtxeI61a/DB7w==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3256.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39860400002)(366004)(376002)(136003)(346002)(396003)(53546011)(478600001)(2906002)(71200400001)(8936002)(5660300002)(54906003)(6916009)(76116006)(64756008)(83380400001)(52536014)(33656002)(9686003)(6506007)(2940100002)(66556008)(316002)(26005)(186003)(66446008)(66946007)(55016002)(8676002)(86362001)(7696005)(4326008)(66476007);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: 6uAPDj/42JLZ1qfkexKalu2DZ7+FT/pdHdaCRn4iXj7OMfuqySNQePsyXXlPEN29h/3xe84I/QmRDEaNteRVHdKnZkf+0yD+PJBAeuHNLX5to3keFpu0ekx/ECRYmtZpZHYzqZDvOpCn6umKdDihbkLwjPuEWhYtrXIUgi22OFpfaquc9VFwBXhyd6kG5Xnv5sWKBn5Wusw0LRd4j8kL02VEXwN89CSI4WVEzojcz43tP67R941iwPN0YWoWLu15ZSG8UyekMgI4iYLrGsagz92K0k7I1wPw6Ls1hMQRnmNkwpDSchATHbDquYiduf2h2Qu24E9ITetSGKneHXROlrNwR4t1//R+Nm7O2ReXINY4tStNGs6jZU/KJ1tmLRdWfZyBiY3v32JfCoI84qQ1oYeZwmobILDY0eWQwpZvy5QEcae1nM7+2o05OM6z9qgHKh0sHrdRDLMEZz/75w/NE/CvZ/tIjJDV/9qgAGPKznsLoIzfxxIQETp/wRpZA7DmYMbjKkldgRG6XCun+2qDfQIx/IlOLRX9mRBDIE7cReGyUGnr5scc4kynPjsP/gGPikoKeeOteGBmLKO11DbqaMPVyNi108UKamX/12ybONzhXStx8EX9jqiLGJxLyW7iQ8ScVM6zi8pLjqZnrC9clw==
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3256.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7717ead9-c3f4-4882-4271-08d8881d6ac3
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2020 21:45:19.8716
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RaSad993TR1IavDXYmh7roZagyODpptPAMcEYE6HCaR7KY0oZuP/BoaKyCKWVQJweQaMo+pHKYE8NTk78aHMUA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4976
X-OriginatorOrg: intel.com
X-Original-Sender: robert.moore@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com
 header.b=zqokXVnp;       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass
 dkdomain=intel.com dmarc=pass fromdomain=intel.com);       spf=pass
 (google.com: domain of robert.moore@intel.com designates 134.134.136.20 as
 permitted sender) smtp.mailfrom=robert.moore@intel.com;       dmarc=pass
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

BTW, if you can make a pull request for the patch up on github, that would =
help.


-----Original Message-----
From: Moore, Robert=20
Sent: Friday, November 13, 2020 1:44 PM
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Kaneda, Erik <erik.kaneda@intel.com>; Wysocki, Rafael J <rafael.j.wysoc=
ki@intel.com>; Gustavo A . R . Silva <gustavoars@kernel.org>; clang-built-l=
inux@googlegroups.com; Len Brown <lenb@kernel.org>; linux-acpi@vger.kernel.=
org; devel@acpica.org; linux-kernel@vger.kernel.org
Subject: RE: [PATCH] ACPICA: fix -Wfallthrough



-----Original Message-----
From: Moore, Robert=20
Sent: Friday, November 13, 2020 1:42 PM
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Kaneda, Erik <erik.kaneda@intel.com>; Wysocki, Rafael J <rafael.j.wysoc=
ki@intel.com>; Gustavo A . R . Silva <gustavoars@kernel.org>; clang-built-l=
inux@googlegroups.com; Len Brown <lenb@kernel.org>; linux-acpi@vger.kernel.=
org; devel@acpica.org; linux-kernel@vger.kernel.org
Subject: RE: [PATCH] ACPICA: fix -Wfallthrough



-----Original Message-----
From: Nick Desaulniers <ndesaulniers@google.com>
Sent: Friday, November 13, 2020 1:33 PM
To: Moore, Robert <robert.moore@intel.com>
Cc: Kaneda, Erik <erik.kaneda@intel.com>; Wysocki, Rafael J <rafael.j.wysoc=
ki@intel.com>; Gustavo A . R . Silva <gustavoars@kernel.org>; clang-built-l=
inux@googlegroups.com; Len Brown <lenb@kernel.org>; linux-acpi@vger.kernel.=
org; devel@acpica.org; linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ACPICA: fix -Wfallthrough

On Fri, Nov 13, 2020 at 1:27 PM Moore, Robert <robert.moore@intel.com> wrot=
e:
>
>
>
> -----Original Message-----
> From: ndesaulniers via sendgmr
> <ndesaulniers@ndesaulniers1.mtv.corp.google.com> On Behalf Of Nick=20
> Desaulniers
> Sent: Tuesday, November 10, 2020 6:12 PM
> To: Moore, Robert <robert.moore@intel.com>; Kaneda, Erik=20
> <erik.kaneda@intel.com>; Wysocki, Rafael J=20
> <rafael.j.wysocki@intel.com>; Gustavo A . R . Silva=20
> <gustavoars@kernel.org>
> Cc: clang-built-linux@googlegroups.com; Nick Desaulniers=20
> <ndesaulniers@google.com>; Len Brown <lenb@kernel.org>;=20
> linux-acpi@vger.kernel.org; devel@acpica.org;=20
> linux-kernel@vger.kernel.org
> Subject: [PATCH] ACPICA: fix -Wfallthrough
>
> The "fallthrough" pseudo-keyword was added as a portable way to denote in=
tentional fallthrough. This code seemed to be using a mix of fallthrough co=
mments that GCC recognizes, and some kind of lint marker.
> I'm guessing that linter hasn't been run in a while from the mixed use of=
 the marker vs comments.
>
> /*lint -fallthrough */
>
> This is the lint marker

Yes; but from my patch, the hunk modifying
acpi_ex_store_object_to_node() and vsnprintf() seem to indicate that maybe =
the linter hasn't been run in a while.

Which linter is that?  I'm curious whether I should leave those be, and whe=
ther we're going to have an issue between compilers and linters as to which=
 line/order these would need to appear on.

It's an old version of PC-Lint, which we don't use anymore.

So, you can get rid of the lint markers.



>
> BTW, what version of gcc added -Wfallthrough?

GCC 7.1 added -Wimplicit-fallthrough.

>
>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  drivers/acpi/acpica/dscontrol.c | 3 +--
>  drivers/acpi/acpica/dswexec.c   | 4 +---
>  drivers/acpi/acpica/dswload.c   | 3 +--
>  drivers/acpi/acpica/dswload2.c  | 3 +--
>  drivers/acpi/acpica/exfldio.c   | 3 +--
>  drivers/acpi/acpica/exresop.c   | 5 ++---
>  drivers/acpi/acpica/exstore.c   | 6 ++----
>  drivers/acpi/acpica/hwgpe.c     | 3 +--
>  drivers/acpi/acpica/utdelete.c  | 3 +--
>  drivers/acpi/acpica/utprint.c   | 2 +-
>  10 files changed, 12 insertions(+), 23 deletions(-)
>
> diff --git a/drivers/acpi/acpica/dscontrol.c=20
> b/drivers/acpi/acpica/dscontrol.c index 4b5b6e859f62..1e75e5fbfd19
> 100644
> --- a/drivers/acpi/acpica/dscontrol.c
> +++ b/drivers/acpi/acpica/dscontrol.c
> @@ -61,8 +61,7 @@ acpi_ds_exec_begin_control_op(struct acpi_walk_state *w=
alk_state,
>                                 break;
>                         }
>                 }
> -
> -               /*lint -fallthrough */
> +               fallthrough;
>
>         case AML_IF_OP:
>                 /*
> diff --git a/drivers/acpi/acpica/dswexec.c=20
> b/drivers/acpi/acpica/dswexec.c index 1d4f8c81028c..e8c32d4fe55f
> 100644
> --- a/drivers/acpi/acpica/dswexec.c
> +++ b/drivers/acpi/acpica/dswexec.c
> @@ -597,9 +597,7 @@ acpi_status acpi_ds_exec_end_op(struct acpi_walk_stat=
e *walk_state)
>                                 if (ACPI_FAILURE(status)) {
>                                         break;
>                                 }
> -
> -                               /* Fall through */
> -                               /*lint -fallthrough */
> +                               fallthrough;
>
>                         case AML_INT_EVAL_SUBTREE_OP:
>
> diff --git a/drivers/acpi/acpica/dswload.c=20
> b/drivers/acpi/acpica/dswload.c index 27069325b6de..afc663c3742d
> 100644
> --- a/drivers/acpi/acpica/dswload.c
> +++ b/drivers/acpi/acpica/dswload.c
> @@ -223,8 +223,7 @@ acpi_ds_load1_begin_op(struct acpi_walk_state *walk_s=
tate,
>                              parse_flags & ACPI_PARSE_MODULE_LEVEL)) {
>                                 break;
>                         }
> -
> -                       /*lint -fallthrough */
> +                       fallthrough;
>
>                 default:
>
> diff --git a/drivers/acpi/acpica/dswload2.c=20
> b/drivers/acpi/acpica/dswload2.c index edadbe146506..1b794b6ba072
> 100644
> --- a/drivers/acpi/acpica/dswload2.c
> +++ b/drivers/acpi/acpica/dswload2.c
> @@ -213,8 +213,7 @@ acpi_ds_load2_begin_op(struct acpi_walk_state *walk_s=
tate,
>                              parse_flags & ACPI_PARSE_MODULE_LEVEL)) {
>                                 break;
>                         }
> -
> -                       /*lint -fallthrough */
> +                       fallthrough;
>
>                 default:
>
> diff --git a/drivers/acpi/acpica/exfldio.c=20
> b/drivers/acpi/acpica/exfldio.c index ade35ff1c7ba..9d1cabe0fed9
> 100644
> --- a/drivers/acpi/acpica/exfldio.c
> +++ b/drivers/acpi/acpica/exfldio.c
> @@ -433,8 +433,7 @@ acpi_ex_field_datum_io(union acpi_operand_object *obj=
_desc,
>                  * Now that the Bank has been selected, fall through to t=
he
>                  * region_field case and write the datum to the Operation=
 Region
>                  */
> -
> -               /*lint -fallthrough */
> +               fallthrough;
>
>         case ACPI_TYPE_LOCAL_REGION_FIELD:
>                 /*
> diff --git a/drivers/acpi/acpica/exresop.c=20
> b/drivers/acpi/acpica/exresop.c index 4d1b22971d58..df48faa9a551
> 100644
> --- a/drivers/acpi/acpica/exresop.c
> +++ b/drivers/acpi/acpica/exresop.c
> @@ -197,8 +197,7 @@ acpi_ex_resolve_operands(u16 opcode,
>                                 case ACPI_REFCLASS_DEBUG:
>
>                                         target_op =3D AML_DEBUG_OP;
> -
> -                                       /*lint -fallthrough */
> +                                       fallthrough;
>
>                                 case ACPI_REFCLASS_ARG:
>                                 case ACPI_REFCLASS_LOCAL:
> @@ -264,7 +263,7 @@ acpi_ex_resolve_operands(u16 opcode,
>                          * Else not a string - fall through to the normal=
 Reference
>                          * case below
>                          */
> -                       /*lint -fallthrough */
> +                       fallthrough;
>
>                 case ARGI_REFERENCE:    /* References: */
>                 case ARGI_INTEGER_REF:
> diff --git a/drivers/acpi/acpica/exstore.c=20
> b/drivers/acpi/acpica/exstore.c index 3adc0a29d890..2067baa7c120
> 100644
> --- a/drivers/acpi/acpica/exstore.c
> +++ b/drivers/acpi/acpica/exstore.c
> @@ -95,8 +95,7 @@ acpi_ex_store(union acpi_operand_object *source_desc,
>                 if (dest_desc->common.flags & AOPOBJ_AML_CONSTANT) {
>                         return_ACPI_STATUS(AE_OK);
>                 }
> -
> -               /*lint -fallthrough */
> +               fallthrough;
>
>         default:
>
> @@ -421,8 +420,7 @@ acpi_ex_store_object_to_node(union acpi_operand_objec=
t *source_desc,
>                                 }
>                                 break;
>                         }
> -
> -                       /* Fallthrough */
> +                       fallthrough;
>
>                 case ACPI_TYPE_DEVICE:
>                 case ACPI_TYPE_EVENT:
> diff --git a/drivers/acpi/acpica/hwgpe.c b/drivers/acpi/acpica/hwgpe.c=20
> index b13a4ed5bc63..fbfad80c8a53 100644
> --- a/drivers/acpi/acpica/hwgpe.c
> +++ b/drivers/acpi/acpica/hwgpe.c
> @@ -166,8 +166,7 @@ acpi_hw_low_set_gpe(struct acpi_gpe_event_info *gpe_e=
vent_info, u32 action)
>                 if (!(register_bit & gpe_register_info->enable_mask)) {
>                         return (AE_BAD_PARAMETER);
>                 }
> -
> -               /*lint -fallthrough */
> +               fallthrough;
>
>         case ACPI_GPE_ENABLE:
>
> diff --git a/drivers/acpi/acpica/utdelete.c=20
> b/drivers/acpi/acpica/utdelete.c index 4c0d4e434196..8076e7947585
> 100644
> --- a/drivers/acpi/acpica/utdelete.c
> +++ b/drivers/acpi/acpica/utdelete.c
> @@ -111,8 +111,7 @@ static void acpi_ut_delete_internal_obj(union acpi_op=
erand_object *object)
>                         (void)acpi_ev_delete_gpe_block(object->device.
>                                                        gpe_block);
>                 }
> -
> -               /*lint -fallthrough */
> +               fallthrough;
>
>         case ACPI_TYPE_PROCESSOR:
>         case ACPI_TYPE_THERMAL:
> diff --git a/drivers/acpi/acpica/utprint.c=20
> b/drivers/acpi/acpica/utprint.c index 681c11f4af4e..f7e43baf5ff2
> 100644
> --- a/drivers/acpi/acpica/utprint.c
> +++ b/drivers/acpi/acpica/utprint.c
> @@ -475,7 +475,7 @@ int vsnprintf(char *string, acpi_size size, const cha=
r *format, va_list args)
>                 case 'X':
>
>                         type |=3D ACPI_FORMAT_UPPER;
> -                       /* FALLTHROUGH */
> +                       fallthrough;
>
>                 case 'x':
>
> --
> 2.29.2.222.g5d2a92d10f8-goog
>


--
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/BYAPR11MB3256DD34C3DABD2CB4FE347D87E60%40BYAPR11MB3256.na=
mprd11.prod.outlook.com.
