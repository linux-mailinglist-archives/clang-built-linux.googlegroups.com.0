Return-Path: <clang-built-linux+bncBDZIZM7MZ4IBBP73XP6QKGQEEXSFFKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id 49E412B2740
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 22:42:25 +0100 (CET)
Received: by mail-io1-xd39.google.com with SMTP id p67sf7412576iod.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 13:42:25 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1605303744; cv=pass;
        d=google.com; s=arc-20160816;
        b=XeZann41WIeIPnsbV3egyQzx4ttKJPnU2NfQuvq1vN1L7sXp6l3Mf/Jp+qIwVDpTzg
         teBoX5uaS7qfxZlMw1zzQHwsYO06LuUbAveikBnUIr5EdflBt8/LNS+TsrnGn5klLvL5
         YfX0+o1qpuk7B4wxX424rBefXM0yhX+caXijoSo2EHti7PUXy4pZUkyN2BvWwvu5c5B+
         BztmtgTqiVlx/NPzQpOBDewPVaKWz47cbwCvHzgCJJxuvlb19A/p11zlVZi33oEgdINW
         5xidJ7lGg1ECAMr2ANnLIbxtrczP+RfLdnZQs3C7STf3XcjNNLbyzcpXd/MUbeR71Sa1
         h84g==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version
         :content-transfer-encoding:dlp-reaction:dlp-product:dlp-version
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=PTTjfYZLdDF3E5rc70U3XSgEkZejwFtgfdN/s0n+U9E=;
        b=mai1IYZbZ6QyuYNMNJ7a3wtXe9D1aOXNEfCOI/EQDWBcTIX1TO7DArSMlIB5chQeOJ
         tktfipkaH1CFJku3k7d906TS5GFSiKeWyuFyTYnc8mPvNbkJL6bKaZk5fWrf5FOr/PKJ
         j65YSH/oYHaLMY487DUjoRpQfacV+hPUfmKWD483ce+dAVf8VV3HiYwaSKBUUB6vHV7C
         4wVNwNu9q6WgyNl1YwITh0HF+mN1CgUHUW/xL7JWTuk9cLLLXHO3qXUc/PsM5mFExHxX
         uVqs9f4aXxQ2eGOyls7A6VimwQV/B67iQEEZB9L0GObRhimcERfFmlmlyzxvVi9IBRjU
         YqdA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=XaeofeXY;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of robert.moore@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=robert.moore@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:dlp-version:dlp-product:dlp-reaction
         :content-transfer-encoding:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PTTjfYZLdDF3E5rc70U3XSgEkZejwFtgfdN/s0n+U9E=;
        b=aviX5hU0ncNa8LIWw1/QJDhxeAli1umhC/d+Rn8HRbtCvqG/37DPvNaqksUBbbjhnj
         95MsIGvQUCl+08ejdnGgkh8uT7pM1jliCCFtgwDecbsdQNzbvy0Alc8v6pEmliW3pZDX
         Q2PkF+AxEY7IpP6u7H2O9S4QvAZqdvYGNJMcBfdr8qoKHTSsayTCf9Q+HDOzjrAvMlTR
         9bv70f7S2krUpYlNKAQ6nYEy+xnohZNZ0+p4tOMDhjvj9QmBsKKPd3fyWaSzZlyCGmlk
         M+hU00zXu0RDmU3Inu03Be53vwusEcQhgpnWG+OnzYVd/w5nnxpVeEx15IpInxIeW0jk
         nPFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:from:to:cc
         :subject:thread-topic:thread-index:date:message-id:references
         :in-reply-to:accept-language:content-language:dlp-version
         :dlp-product:dlp-reaction:content-transfer-encoding:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PTTjfYZLdDF3E5rc70U3XSgEkZejwFtgfdN/s0n+U9E=;
        b=IePeyI3Q/eZvUvQCOmcjSbinMgRV9a+SYHpIjs6MSIvodJYkmrYwwtiNrxw3xIRHdr
         ZVkoNHBnqgqHvUyO/ktd44dV7r2XonGucmM/om89HsZUQtd9gvrh4Xxq+1Qo29sK1MHH
         90082c5hZJYCZ+9AuspthwQsWqpJBFtzjvWgj1uKvuGpsU2e2G3O7a9ggHjY8vS72TiZ
         lSbs/Uk29HBExvgm3krw3bmh4Bf+jIveY7VKjA9XsI3QJlZdcDpVwxEdsfukAGu5OwKX
         bQVT0HuI8gOB/b4VBCg1a34GjgBFj0huePjiImBI2dVoqKFlu3m4uCnicQCOjRuYyJBF
         gYvQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533lL6+SCxtutVDOFwmvv24GZ/WXcNYcH2LPKHRFx6vET7LpWmjb
	INPvZeNcyeNlvCdCqmpZn1U=
X-Google-Smtp-Source: ABdhPJy1J1wEcjW2sPalakZlMJGRfNKSNGLXJjdW+8mG5GYu12mdKdaAJi0aFXId7EygHDUcZsW1AQ==
X-Received: by 2002:a02:5e84:: with SMTP id h126mr3658322jab.128.1605303744034;
        Fri, 13 Nov 2020 13:42:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:8943:: with SMTP id b3ls1197754iot.2.gmail; Fri, 13 Nov
 2020 13:42:23 -0800 (PST)
X-Received: by 2002:a05:6602:208f:: with SMTP id a15mr1322937ioa.91.1605303743585;
        Fri, 13 Nov 2020 13:42:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605303743; cv=pass;
        d=google.com; s=arc-20160816;
        b=p+/SW2h5shyrKDpG/HJS/6M8bnUfzWnPqTwY7qiSAkQfgCcA7mftRDTM/xgsF1DwHu
         cEDeEHJ3vXcRdogUAla78W4OIxOPmwxP3x8/C+MBsAJa+ktOfWjqPGXH/6CRI3UhDSTb
         oi9m2NyQXtMFCDTCjTZq1b8s2UGfbm9lcDpRk0ytVi48+Wc0Gk0Uo5AvVWO6hPICxq0y
         lXdg0ZAU35zpqj5QPrHFhoY5Zt6tLBgHdS9Nlha058EkrWIi7huWdQIUyffNrQkTTbF1
         8qf+QBbpNTbVXIyZ6oF3/O0i2glE21ughfLOgzL4oNc8c9LtB9x8KmvL2h5DO5Rx86Mr
         A94Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:dlp-reaction:dlp-product
         :dlp-version:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from
         :dkim-signature:ironport-sdr:ironport-sdr;
        bh=RjAw/w36aiJygQiGr/dvrwxMoYzU7aCI20v0qlSbPeY=;
        b=CMvz/I+XeaP0KWFR0fP1j2tJQpgzHR+jd7qP+CAtv7G7wp6OStA9Hpha0xQOhBuOTo
         DWewJu8jm4TPt85+HNuWeqs0XoBVUhFwxc12NyeG3vL/cY8kaeZUu63gO8OLt3wZlvQR
         tv+bmF+TsOE4/bExiNHFO5rFZUFomH67v/hMKRaLmKPM40euSOZujBAJXgiNfiG/6XZW
         7t1pVgWtdEhzhVRbGqsIEQQ61kgu8IwGR2A8gTlTveTHSYc/vmOxQUnQec45IhDQnK1F
         P9fvW2zkdd2tyxrPooTU2tHSqWfmEmgyLyDHMNYnFaYnW+HcTbSbdSd9GHyXCp6ihnIE
         bq3g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=XaeofeXY;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of robert.moore@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=robert.moore@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id n9si442386iom.3.2020.11.13.13.42.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Nov 2020 13:42:23 -0800 (PST)
Received-SPF: pass (google.com: domain of robert.moore@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
IronPort-SDR: 94uk6ECChjbcrRP/lMELNy1g0eeFpGg5xlAzDhlYP+MtkVGG4OgbxZcmqALTB+t/DPCEO5DqC0
 7zD5nViWoL2g==
X-IronPort-AV: E=McAfee;i="6000,8403,9804"; a="150385432"
X-IronPort-AV: E=Sophos;i="5.77,476,1596524400"; 
   d="scan'208";a="150385432"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Nov 2020 13:42:22 -0800
IronPort-SDR: DeaZh4uPUAU1V/dOiqw6DOAuHOmxAa511G/P8Nw/RQ3JvuvqbNJDgfKAcIIDbRkvN6JFwdlRHi
 Tv0/oLIl8Fiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,476,1596524400"; 
   d="scan'208";a="309289740"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
  by fmsmga008.fm.intel.com with ESMTP; 13 Nov 2020 13:42:22 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Nov 2020 13:42:21 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Nov 2020 13:42:21 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 13 Nov 2020 13:42:21 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.104)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Fri, 13 Nov 2020 13:42:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lmUusCIhp/FNa/bDwNAN4cQ/lvCBK8MTSuxOLw95jezW8/CturlZgcEID2qcOr2ZR53ZRHdS6dzmm0W4986m0lTdzow5+MAsSTptCCYAFsfbJVRj1c8DL7u9WPSmEEt7OAID8GYYzcDR2gtIRWCNMpX28pCmHemVQlfHu7lIjXuG3VM0pkJ4//2jYuiNRqhEnOhyRDdCrnD5m2yUPyahIeZUgnj1/STW7aBmukKWLCGL/jOn74KYPRXCHhERyyueLp5GVWmlzaGiEDRG62gda+F8MHbvm4IKmJ+yN/xsp6se/Noah41nZCMHQFL6+RcmhFqS4Lb8a7I5qjDsRrbsHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RjAw/w36aiJygQiGr/dvrwxMoYzU7aCI20v0qlSbPeY=;
 b=jd56PFLH7wSQNaxGlW87KmxiBjFDDkjo6kBq9FX3Gy93qtvnJkFOt17VZVzhjhu6oSx3grcMHD/iFwHmBPDT2QBw/YXIy32AH+uS32VIlrwCM7zR6E/5kT/q4Qy5U6M0y/pG60ldy5F8WZQbJJjzDHAIgJAifz3Olbk4bhOVDXlx5NGTNTrxKOyKiQ5bXtNPoevlyjK181ct68sWNX0xS9DgLSHlkongk2iMn635utxn1mwt6Erxoga2EqIoktZOKklCH3wzuhA4T7g8VkMtEcwRPqi+RAeFAIh9vmWTMe6FXA2W8Ea9AjZuoKjPCrbd+IIbF1RhhL9DgpIaDzEycg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3256.namprd11.prod.outlook.com (2603:10b6:a03:76::19)
 by BYAPR11MB2679.namprd11.prod.outlook.com (2603:10b6:a02:c7::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3541.25; Fri, 13 Nov
 2020 21:42:16 +0000
Received: from BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::9d74:8937:bd5f:3c6b]) by BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::9d74:8937:bd5f:3c6b%6]) with mapi id 15.20.3541.025; Fri, 13 Nov 2020
 21:42:16 +0000
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
Thread-Index: AQHWt9BSaSJ92WwBRk6cKvxE5xanpKnGl5SwgAAB3QCAAAJ3cA==
Date: Fri, 13 Nov 2020 21:42:15 +0000
Message-ID: <BYAPR11MB32564DD5B9D140AFE8C3D1EB87E60@BYAPR11MB3256.namprd11.prod.outlook.com>
References: <20201111021131.822867-1-ndesaulniers@google.com>
 <BYAPR11MB32568FEEF4CFA1C20296427B87E60@BYAPR11MB3256.namprd11.prod.outlook.com>
 <CAKwvOd=qDNnOu1oTeEN+chvfJcQSS5dxREo0JQHC=W0zhpYeLw@mail.gmail.com>
In-Reply-To: <CAKwvOd=qDNnOu1oTeEN+chvfJcQSS5dxREo0JQHC=W0zhpYeLw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [134.134.136.194]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f0c4bca0-d908-4baf-627c-08d8881cfd2f
x-ms-traffictypediagnostic: BYAPR11MB2679:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB267923CC13D93023834CDF5C87E60@BYAPR11MB2679.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XnBz1sznJprnCr+uBXlWi25lLK1h9aasoDEPELsX11kNTEn5tfM7+QDBtxiI8XjdiUJhpEHRwMB8NH+49DqE07Tt/xoE4BivY3SCPOstNl0Pssm7xNbjrheop02I9N3wHgkcLq9w1e0OT+K9mpmTXqZP9QVk3TAITTX2eACYe0Sx53WUT4/g2IzMjL5RIjpuxOIioXWXTuGRu3jlTy1tQknzch/aJmMedUcirzb8M1+3ZraiRNe11bo20gDZBKbISYxbZSrxZsuecFZelmQv3VJq3mWP7h3n85p1PBlr04tUfll54nEiMb8Ca1St3TnAOxD/hglv7oWz0x7CVO3sbw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3256.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(366004)(39860400002)(346002)(136003)(376002)(9686003)(52536014)(33656002)(64756008)(54906003)(86362001)(8676002)(26005)(316002)(71200400001)(6916009)(478600001)(4326008)(6506007)(7696005)(66476007)(66556008)(2906002)(66446008)(66946007)(53546011)(8936002)(5660300002)(55016002)(83380400001)(76116006)(186003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: r5j/McMXmaygSSw/N/fH0Qr++5ZNxv0DJrOrvCsCr6Q6A10LRDhVza0yHtulzIQfNR8ODGGHuSb6m9h1G0HBq+5Z9Y7nkBFlN8nl8pnOVRL00ApoSusDEErAtwPlM3JdGKA5aXcn2bAyD+o3PCsADTnj91t8hm4sSjV4BnJ8etZ2NIHUNakkzfko2/gWmD4Bysxw5fi44GHeRAjlQdWoS329ZqGYeVa6YEedY9YnfSkMcLIJqx0UNMcT4ipGD+PzjmfrqDSxPDfA4/DqcGY+Ttskm+jtJMnYn0f6+s9BWy46aLgAp+XLmxrnO4rCyBaAhkUhB54CXJurqVoINLQCITqU0NYTLy7G6UQwFW40XC5C8ygUE8v4AAXNMT0KwwV/FBHdgafcbl6cPr034KnNfvN98bNhetyU0oSs3EFNSyOkkgxFUjwmXambxQsbgS+nOSGQZPf2CNXSL2HDpk5ew20nnAeNfjQ+mNOyv85BS4NaGBFjBpPYBk8Oyfv3crWPQmtkiXdNK2NpBUyoMOfwPijgwfeYTdWGmKpQy3lHuuh+qMX30P4fZ74vPuHSeR515AAm0BixLA/P0E3QDkc9DQfs0ACuZeJXygY+t2rzJaifjuFmv3QwEnRqQFlNKC6XZ4MmbV4NHLBm639/rRrxBw==
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3256.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f0c4bca0-d908-4baf-627c-08d8881cfd2f
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2020 21:42:16.0038
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aDhznEqkv7rux2iK0HLeUcCCkbekpsJra35aEoZab5xJAhRo15AJQOyuZXZH2xyuqEaGZpirt6C5l3BM0FeSew==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2679
X-OriginatorOrg: intel.com
X-Original-Sender: robert.moore@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com
 header.b=XaeofeXY;       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass
 dkdomain=intel.com dmarc=pass fromdomain=intel.com);       spf=pass
 (google.com: domain of robert.moore@intel.com designates 192.55.52.151 as
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



-----Original Message-----
From: Nick Desaulniers <ndesaulniers@google.com>=20
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
> From: ndesaulniers via sendgmr=20
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
> b/drivers/acpi/acpica/dscontrol.c index 4b5b6e859f62..1e75e5fbfd19=20
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
> b/drivers/acpi/acpica/dswexec.c index 1d4f8c81028c..e8c32d4fe55f=20
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
> b/drivers/acpi/acpica/dswload.c index 27069325b6de..afc663c3742d=20
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
> b/drivers/acpi/acpica/dswload2.c index edadbe146506..1b794b6ba072=20
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
> b/drivers/acpi/acpica/exfldio.c index ade35ff1c7ba..9d1cabe0fed9=20
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
> b/drivers/acpi/acpica/exresop.c index 4d1b22971d58..df48faa9a551=20
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
> b/drivers/acpi/acpica/exstore.c index 3adc0a29d890..2067baa7c120=20
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
> b/drivers/acpi/acpica/utdelete.c index 4c0d4e434196..8076e7947585=20
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
> b/drivers/acpi/acpica/utprint.c index 681c11f4af4e..f7e43baf5ff2=20
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
clang-built-linux/BYAPR11MB32564DD5B9D140AFE8C3D1EB87E60%40BYAPR11MB3256.na=
mprd11.prod.outlook.com.
