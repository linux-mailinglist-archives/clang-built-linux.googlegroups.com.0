Return-Path: <clang-built-linux+bncBDXLVL6Y2MPRBR7AZX2QKGQEUHVYZ4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 00CEF1C7FF9
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 May 2020 04:19:54 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id v1sf2973383pgg.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 May 2020 19:19:53 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1588817992; cv=pass;
        d=google.com; s=arc-20160816;
        b=lPwQm30QrjNRqISt4RD9aL+9GP+Bg1Ph8S5TpzugAHY+5iyfdh45S88GuA6xTwB0K8
         GKRh0MXOI7rEJPONjafSBsvVj11u6XhjdGC7Sgaip3utVF8zGOMu5sCgLwl9X58YZQ7/
         NpBPtCBAPHCfSue8TRraag78WeNlxJJghiWPRCqvN0KkTMZDBkxRSyjgTMpIywCQ/neZ
         O+MKxlLLBKFbtO5PrZXrIF+Rd3X6KNsXGNrUn7sglECDdLhOjx4aBt0Mv6P5S8z0mBbR
         RVoVck7nATz22A8LmYAdeyhpin9aGRWrKEUf6YltTkMadm+HVb/jbPuSjdQmA5rxyyvw
         oUuQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:dlp-reaction
         :dlp-product:dlp-version:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=BlnEkmckRtL5BhVs/pOxj2ujiXL4hcActNNZeXpByHY=;
        b=YqXuIHg6YR0vPKShT78fkAQEJeljfIP4PUXjFbGqEx8VgzlRCu96sbQMSk0gV9NOsw
         lbpt9yOOFC3J5VFiwkoXo85AzSZHSy4SnK0hlJOzPWJDyr6C1+QBTXNVBHp7/nqY/IMF
         Re7sBLBKneJjsrksAi7NxbVy0m0YGXdlhIdWr3bq0v/Kn6OgVTU/3mI1MJ7oC3LaQlEO
         Fr9qtJUOK8zp8dsaaTW37yc8n58u8Zfacysm8mrmPU7IwqtaAlfepI3xFbeUzIpl9Jta
         Dce/PA6VjTiK43tHk5F6kaslwhJjr9+CjWrdEs/IooNnuJEjTZH9wrEXvTi6v4isPwMA
         Vi/w==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=Z2UIsTa0;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of brent.lu@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=brent.lu@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:dlp-version:dlp-product:dlp-reaction:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BlnEkmckRtL5BhVs/pOxj2ujiXL4hcActNNZeXpByHY=;
        b=Kula7FElDv1D+wDfbawjLSu1+7CJ95Fncb/RgkZ0HezjUs1NtWa/vhrt4IzV4gvYvw
         1blJbTvP5/ZE6QorUobaxIpwSvFzI90PcTMSvHglyMswzaTlpeUttbw16dhbUn1jeQh7
         3ltK5AcJRVwVa8yECL8Mam1saYaBrEV1Dkp1H+jaFrfuSesMq8RYMQDQETiXePj1THk+
         2trc21bhXNe7KwJzQiYq34FZLQmDbxHh19f73H7u41Or6a4tTxucZbiaTPuc2dYvR6H2
         aZHQGfVZmp6+YmbxF8unHjBAcRDp2CHkSxC/tpHI6lHx99wE28TRDFWMnD6zHDTsgZbw
         /BIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:from:to:cc
         :subject:thread-topic:thread-index:date:message-id:references
         :in-reply-to:accept-language:content-language:dlp-version
         :dlp-product:dlp-reaction:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BlnEkmckRtL5BhVs/pOxj2ujiXL4hcActNNZeXpByHY=;
        b=FqS5ffmAxzvZyEYZCbjYwI3CXx0eAGj5LJYF/c0KvdMx44iCdd5lyRt7ybplzDWuKj
         QPvwDpnZ43NbOKuLEE8MRAuqpv5f1bVOLYMavnAuDwRwJ9mHmBpRlWo7UJ3wne/MsquF
         /NdyLGy8p8KJC2IVJaIl39FTT1MEE+Qa4Uk0vjVQuuL9gag6XJsIjp/Bs9P3IOmkVnJA
         4IXI8GWbNk29wun51Gx5DL6O9gJW7JJf9ePU70+SitUb2THw3XaP+RfkGEfJKvUJxqs1
         LNT7xeJZfS3/PselWq1dp7bJj56psbO9mcdNIY/ds/S4sC/CYy8p5GN5DRFYj6u6MtD/
         PTtQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZSnMNQIrbi2qNJims5lC3F+3ASsfAex51BhiprQaPn2fXWMqR0
	W9uPvrEvQqsa8vmWrY0L63M=
X-Google-Smtp-Source: APiQypI4vaKxdSZBGmxkkMr3K1nXLidwYIqGZlOWtTRQz2b4EkFdWNHJX5jNCdWeZ9ml48EhDjbdrQ==
X-Received: by 2002:a17:90a:1941:: with SMTP id 1mr12165722pjh.65.1588817992446;
        Wed, 06 May 2020 19:19:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:9289:: with SMTP id o131ls249472pfd.8.gmail; Wed, 06 May
 2020 19:19:51 -0700 (PDT)
X-Received: by 2002:a62:d086:: with SMTP id p128mr12013896pfg.241.1588817991239;
        Wed, 06 May 2020 19:19:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588817991; cv=pass;
        d=google.com; s=arc-20160816;
        b=FYsCuPBGkEZohRE+0a82Ua0enuqkUAFO5nZl1ZKIF8tNplMiJSCG3hK5rHkvXCmnyA
         NBjjUI6nW3/RqfUsniFQYZbJ87f05vJ3RaXLb1ru7I7//jWJ0H5LM/Gt5FIz6gFnU1D4
         uIxEkmGFD7/D1G3uWXoewCNKYJDiUTZzwM7SfarNe/W4jDXN6WUVb/+srYv1HPUeOCmH
         Yda0Dg7vD10ZP1/8p1WfgeZIDkvm5Twf/OSUntcNJbgmN6eSy+sbX1w9rMRRp2ffowHW
         hBGuA2HdaK3v0VTH8UJMpMQV0vwS6CYulAQjW2jEYGyE9bLBOL9QFHcd6W+Ns6WPcRoV
         2tSQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:dlp-reaction:dlp-product
         :dlp-version:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from
         :dkim-signature:ironport-sdr:ironport-sdr;
        bh=V+ukuXCYu0SZ/97fQaxD2AFwkDHPtoogHJEhbgWLs8s=;
        b=aQbSTC2mkbkCoUJYt5r+epsC+op0xaIl1NPakZXEVdkC26WRV0TqIcR4HAL0UlWQnJ
         zylbuxk264pfiOquIoCL3u5XDB7LYQVz0JiV0v2/nZxGTOSVWyzEfJFAHAxSOLo1ygco
         HWgEvHk6xRqBJxhtypvlKCQj8g3Lywn0/r7CdJZwnPCjrXFHHOR8ML9+Udwn7nDVTiuJ
         5Nf24FlAtpZzPw6Ac9mZcZULznILDa2tJfm+GbcTv+nN0cwa7NSSf9rDPoE6ICT5Bc4/
         xKF5aaZT8QlRspHP3YLK9WWdiLbO3GDLafLl7tmlNgixxzMZuhPPOq975DhwbVTpXrQg
         trTA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=Z2UIsTa0;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of brent.lu@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=brent.lu@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id w8si706915pjr.0.2020.05.06.19.19.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 May 2020 19:19:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of brent.lu@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: pRGIzFOHUtUvyBRHcAmEil7xjUDgoXDjnTMmhmOatIGuHYOxd/ddSWVDtQBMRUiDqryqOs3+oL
 mM8OwJzP8tIw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 May 2020 19:19:50 -0700
IronPort-SDR: hYNd45gk+1H1xwqQte0wPFuvvcKu6q5d/4dwJNTEQy/VluTp7bB2s5zIcaObJyt/gs07qD+iui
 gHX9wSfuam0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,361,1583222400"; 
   d="scan'208";a="284836540"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
  by fmsmga004.fm.intel.com with ESMTP; 06 May 2020 19:19:49 -0700
Received: from orsmsx154.amr.corp.intel.com (10.22.226.12) by
 ORSMSX109.amr.corp.intel.com (10.22.240.7) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 6 May 2020 19:19:49 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX154.amr.corp.intel.com (10.22.226.12) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 6 May 2020 19:19:48 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 6 May 2020 19:19:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AOQTtxsdPyy5Xbet5i0ykc/Lf3Zip5rsOPr0e8JFMkk3yLtck3fIrwywdNVNowiaQyP6FKC6dIbTYhu42QxYP7UgRt3ObPJ8QTgV+QhErtTblnPMDEaBLkL5+pR+kqrhLLxLrEfnKUfrJOjs/CFcCCzA0k2eGhMJ/vR88M1z1k3k3uEph6xyYfC3QCKkastGNPFbs/y2Ck55VciBwnzCn6AtWcdl+Wo0ZOUJv3YpIQHK5rid5l2YK0mE5zpQjuloZP+yI5NxaYBhLKMUBY5lGzaj4ih0+2YyDJWBBnOTz03CxPOA2ZeYOOZEbOzSxFvo8kaEddrbYYVpbJzl0S1cBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V+ukuXCYu0SZ/97fQaxD2AFwkDHPtoogHJEhbgWLs8s=;
 b=QNOoc+g8yus6eLA6b/QKsnXZp/MPUmK6DN/ZP70CrbuRxqF0Yj92QHUO+SS/oVuBJUTHF51aRbHJMsW2//hC0caaYvbw4jbpljZZGMAav+9UniW8kKbXpXgQy2/5GxmEA46b2h0g+bwL1dM5Mwz6U7+s2rPom4t9ZSnhxgyndQSj5leNE8rt+v5iMYscNMjHJPIJTFkNhedw0S+olG4XImcT/O7/VIxNTn01dhEG08AnRvWAtyS/jU2sO0kvu0C8gHNw1skAmdp4rjv1sBps85g/TiBueFmg+PNAqhq9o2x2kU947mH2KaCxxjXdjnfzxgs/JluXDJpzmpe9h8Ztyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN6PR1101MB2132.namprd11.prod.outlook.com
 (2603:10b6:405:5b::22) by BN6PR1101MB2228.namprd11.prod.outlook.com
 (2603:10b6:405:52::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.27; Thu, 7 May
 2020 02:19:47 +0000
Received: from BN6PR1101MB2132.namprd11.prod.outlook.com
 ([fe80::5419:a938:2a3:ee27]) by BN6PR1101MB2132.namprd11.prod.outlook.com
 ([fe80::5419:a938:2a3:ee27%5]) with mapi id 15.20.2979.028; Thu, 7 May 2020
 02:19:41 +0000
From: "Lu, Brent" <brent.lu@intel.com>
To: Keyon Jie <yang.jie@linux.intel.com>, "Rojewski, Cezary"
	<cezary.rojewski@intel.com>, Pierre-Louis Bossart
	<pierre-louis.bossart@linux.intel.com>, "alsa-devel@alsa-project.org"
	<alsa-devel@alsa-project.org>
CC: Kate Stewart <kstewart@linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Takashi Iwai
	<tiwai@suse.com>, Liam Girdwood <liam.r.girdwood@linux.intel.com>, "Richard
 Fontana" <rfontana@redhat.com>, Mark Brown <broonie@kernel.org>, "Thomas
 Gleixner" <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>,
	"amadeuszx.slawinski@linux.intel.com" <amadeuszx.slawinski@linux.intel.com>
Subject: RE: [PATCH] ASoC: Intel: sst: ipc command timeout
Thread-Topic: [PATCH] ASoC: Intel: sst: ipc command timeout
Thread-Index: AQHWDxGPcERmvVi2FUaZ0GDzXVeqv6h4uesAgAAAnRCAAFQWgIAEY1sggB0N0ACAAYzUsA==
Date: Thu, 7 May 2020 02:19:40 +0000
Message-ID: <BN6PR1101MB2132623374C6A708160CE11D97A50@BN6PR1101MB2132.namprd11.prod.outlook.com>
References: <1586506705-3194-1-git-send-email-brent.lu@intel.com>
 <4f495cf1-4740-cf3b-196f-cc850c503b43@linux.intel.com>
 <BN6PR1101MB21328B6F4147640D07F9E40A97DA0@BN6PR1101MB2132.namprd11.prod.outlook.com>
 <c8309abf-cbfb-a3db-5aa7-2e2f748a6d34@intel.com>
 <BN6PR1101MB21328C54E66082227B9F497A97D50@BN6PR1101MB2132.namprd11.prod.outlook.com>
 <4623d6b9-8dc6-b301-c8ff-74dfb6baf2a3@linux.intel.com>
In-Reply-To: <4623d6b9-8dc6-b301-c8ff-74dfb6baf2a3@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [36.230.11.97]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 80c496d5-5914-4bc9-209b-08d7f22d19a5
x-ms-traffictypediagnostic: BN6PR1101MB2228:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN6PR1101MB222811D509439E6B243E6E7E97A50@BN6PR1101MB2228.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 03965EFC76
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: y8yD+KhFL79iQMPDl+3BGeEc1g405IwNN+h9UDIvw6IdtAlhdwmzVLNOFJ958XOq6TakRvjv5QUOMXcWzz4ILrQa0V581n8YgxzqhcRWxgzqv6OHZrCDO0pqhNveJHNsumJ21aS7l0y+mBqgb9Zjde/TINImbxsh16vdZoeZOoPWP4Ok+ndj2CeLUUlEnDOjcZ+uPL9IaHD2k39Ag6dxwC+/Syw68pu4ij/l6uzGXsply5CnW+GWMAjZ4NKwfPhSTDqf7vk3THdwPJGtFB3njhyDtFlO3BZJMFrA9iZgBwgWt4j71LRU2qPn+z/zkW6H3YmBJQSgXSeTOKSj8SxGuuYJ+lMqVVplWCxywti5QasrW/DqY1xcj1//sEaEt0WfA/ntTOmVjm+9oFU5vWpfY8B55SCOhdbnf/uQB4HkwqreZbVKDVeUdPgb7Vw+yDuS6zNtd6Q70is2nCwBnZL5ogmbUJnEgK1OiInX8Fmfnh1C+G1TT1Xsc6FS1+iDQNtkH/+sRgqM8qmQOnHzWoyzWQ==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN6PR1101MB2132.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(376002)(396003)(346002)(39860400002)(366004)(136003)(33430700001)(66946007)(76116006)(6506007)(9686003)(186003)(71200400001)(26005)(83290400001)(83310400001)(83320400001)(83280400001)(316002)(7416002)(86362001)(7696005)(83300400001)(66446008)(8936002)(64756008)(66556008)(52536014)(66476007)(8676002)(4326008)(54906003)(478600001)(110136005)(5660300002)(33656002)(2906002)(33440700001)(4744005)(55016002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: OHmjZiq4FFmZFOTETEJ5z0Skj/hyMjGmDN3cOQyksbyAPjfgPPUlVvQpxSzCvCLmjKFdf7OAK/iEmemAhAeGZ/aL82eC3mfQM5zIxjeIqfyS2IGzYVcKKkcmIN1vEacXoRVdaw4Bb7Dw82s1rj2XdVirJS9gKb+HsPa1p1tfAtgVVl3WismUpCtlDin4kjP9ncpW/Ff6f1t80LUpYOhh+9dfnH/aqLnEYSMkvWYL1Z8yV3qfrhvnFPBmkrEr3eDchJ2fAEMfwCvJ3UbV8okCSBwH1vu8XnSVHVQVSERQD5a/9YQA0OTyD9ecIQeN3F6FmM0zt57NXfQG1OghLUHmuRrsiCQumVhGb/CLiQ5uSJgZaKZHmEweh6b8nfPr971KzNlL3pSYDcJW/4iOQ/omGP0PIQTNkEQ6QvJncaVo7A+3gOV3IWP9HmFWCuf3RWvePY+nGm1sh9IJXopzlghryofCgqDpueKI8U05OieHXmSMmQAhPrcGJpN6l0SX3WDVGjWbHnutKOu49hkMOpFfAscmcbAjVuEktUzv17SlPZHq6n/YZ6kcxJrv78TPSaDLs+oWr14OF3kt3tNFDbpqND0pojimtkMEcGGZIhePfQ4YzvWVgjB+rmBwZLRrfp3+t32ANElCCEqM1ZCe0zNBxKYUJ2oZPvcAw4uwakrzrX+ov6UcvuwTZxhO6pvzEplh2yGcSBz+LCoVcPR32xne+dbmvPzK/85tijT+Ipc9v4QTFCBUE1zioAXNEfJQjVOgMamX4VHpSs2TAn8ni1FjkVr2dPqGboWg80qqdX4OqoQ=
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 80c496d5-5914-4bc9-209b-08d7f22d19a5
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2020 02:19:40.9648
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pel6A/hVx4MMm94Y0SDlujl5uwHT6vysfBwtefvM3z/Z5IYDkY/NVLFuqbQWY+1vp5+OUlADAR7MH3J4n7PSjg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR1101MB2228
X-OriginatorOrg: intel.com
X-Original-Sender: brent.lu@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com
 header.b=Z2UIsTa0;       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass
 dkdomain=intel.com dmarc=pass fromdomain=intel.com);       spf=pass
 (google.com: domain of brent.lu@intel.com designates 134.134.136.126 as
 permitted sender) smtp.mailfrom=brent.lu@intel.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=intel.com
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
> Looks there is race between the previous stream stop and the current
> stream start here. Can you help try changing the
> sst_byt_stream_start/stop() from 'nowait' mode to 'wait' mode, and see if
> the issue can be reproduced with it?

Hi Keyon,

Kernel panic if the mode is changed. The defect could happen to the first
ALLOC_STREAM command after bootstrap so I think the START/DROP_STRAM
may not work. 


Regards,
Brent
> 
> 
> Thanks,
> ~Keyon
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/BN6PR1101MB2132623374C6A708160CE11D97A50%40BN6PR1101MB2132.namprd11.prod.outlook.com.
