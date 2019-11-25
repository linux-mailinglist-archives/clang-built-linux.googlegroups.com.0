Return-Path: <clang-built-linux+bncBCZKV5WDT4PBB66J57XAKGQELZCNEMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 59BC2108FE8
	for <lists+clang-built-linux@lfdr.de>; Mon, 25 Nov 2019 15:28:13 +0100 (CET)
Received: by mail-pg1-x540.google.com with SMTP id u197sf8852235pgc.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 25 Nov 2019 06:28:13 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1574692091; cv=pass;
        d=google.com; s=arc-20160816;
        b=VgZrHlfP1AvyuKQh92HRabuokXTjLdpRQBCcJj94LdtUoDDcM2RM3VWOy0jtacrisC
         ZKH2m6cTcaY11UHYorILEkXwyyMi/L8yTBpxMqFEX8YmYDjz8d92wp6y5kh7ynchm8iA
         OafBM3P9XcQMaZ+HwM9fZO3R5oKpdhbQqr3UVen0+7OtgZSPN0QZcxFQ4avZB428Wspn
         Ypw9ctvRrpFGBHtJG39+Q5G6n5h/99zRAPEbIYoYM8PjTQJl4RodQvZ4/zUDjykZ3UXT
         pAsWHESIa3hxyjMG/1Ojrz3huHQ/Gp4kDSmqZs0py12gez1aAbbTVkYHt010GGx4olPz
         Gfgw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version
         :content-transfer-encoding:content-language:in-reply-to:user-agent
         :date:message-id:autocrypt:from:references:cc:to:subject:sender
         :dkim-signature;
        bh=z2eCSrSRgokhQ44Q7+jLR1SRHD71+y5taWMmLhzgRZM=;
        b=jRSzW8Q2EUphcIlW27U1aR6D9sPgBWJosffwjl/n2SV2GAY1f0Cy6TygE7Q5o9yEj/
         l7rdjIy87N7H1VFY8G3IVGrjxqFebN99O4XH7RndXGeg/uH9zx1z38pe8NOJDwUcUwbf
         XkiBlf5Tyxfu5vzcpAXcpVPeidNeAQ5cgS29FDKtbowiwnT896ThSm4+yEONrhu0XVhu
         Hs1MkVXNnBmeaw1UVozDngUQYZPmjowohODlzLgfsKEfjpMVJeLll3bdYMzS+VWl0TAv
         oKIrM4xWadbNRn8NFfE1wRmtIyq2ox5AwwdmFVsYcoYt/FujRRK0OseHf5Rq8rBF2nPS
         41bw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=fpZe+7+P;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 2a01:111:f400:fe46::60f is neither permitted nor denied by best guess record for domain of harry.wentland@amd.com) smtp.mailfrom=Harry.Wentland@amd.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:autocrypt:message-id:date
         :user-agent:in-reply-to:content-language:content-transfer-encoding
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z2eCSrSRgokhQ44Q7+jLR1SRHD71+y5taWMmLhzgRZM=;
        b=T2PShfWReu/zfM5K+zKVxEbWXqhT3m4Ka1cgiG8EtZ2y90ZKyuUDgG5ppHaFBBQA20
         AXOoR0qWq80P6+a8XzzyMA6p8GYRnXg63D4HCMVmRM2PL71G0LEhkmmLNuW6C5vLUxP+
         bLPqb9rIhEZZL1KFZhYC9fTcXm1ooc9zUVrxAZZb4FOixk4Ovs1JG1cz2QaUdZTcnGdz
         xrqtZQ8kbpcHU0mBqbtPynJthEvvGskA109DYuRR0Tlpfb0nlnfJlTDUHoJalkybDIVu
         2aZL43uCVbGDz+vRjukHhNYWeySTxfJJ18yUARY5GIC6Y0mEyQ/oqTCA4B3XLV/97e+w
         hyxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:in-reply-to:content-language
         :content-transfer-encoding:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z2eCSrSRgokhQ44Q7+jLR1SRHD71+y5taWMmLhzgRZM=;
        b=IGwjU2fgA0CHfv4uWFIPAQY7AUdFNphcyD4YzpVjJ/7fzwoZz/8TzvNCU/8m2ckvUh
         tr7N/qFJuRwNh7cBslbOb9ftbGbdZEHY21lJPcLJh1Gu2WX0mbDAexniKz9HZNoI1mEN
         wviSsjLzhzGqPl9vacDJqA9fE+uIOQLMolcGBa3mZczXk2uS4aEzlTKlmqx8vL87/A7U
         VY0sH0ymgqL1fVeVK1tehr3ex+/2mx+BTyBWCDEG0WeWqQuQTOoYkD1S+q0aJwhygEli
         ePAi320vSKNs4QMH1JRrfxs9rp66YAK0Z03ZatTypog0pdMKYvGq3M/R/gLMM3MgU1OH
         +D6Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV8pcxvaGY7eo5XT/lLetQhc2np5vU6BZV9A745AKhsJxM/I+wZ
	klLx2IJk6am2afQsyKNb4t0=
X-Google-Smtp-Source: APXvYqwncnZ87ZJ5HvPWt0TitG54RFbKNW0St5XImCGi/kY7H3TXcTvxUjsFqx6efK9JERYOsUUZPA==
X-Received: by 2002:a17:90a:3808:: with SMTP id w8mr39710752pjb.143.1574692091505;
        Mon, 25 Nov 2019 06:28:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:f513:: with SMTP id w19ls3983513pgh.14.gmail; Mon, 25
 Nov 2019 06:28:11 -0800 (PST)
X-Received: by 2002:a63:8eca:: with SMTP id k193mr12313294pge.293.1574692090989;
        Mon, 25 Nov 2019 06:28:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574692090; cv=pass;
        d=google.com; s=arc-20160816;
        b=AE2bzWLtYU7Q0wWFbhZl93OBouMM5vtTrcy1zg0+0uRy+2oTGuX3fgyZoiHQ+kbYoR
         3QXvNWhh7lrpgma3s9PGABMb2WJs3FfCNLFLG/DQ7Tsp1JQLC8rCgOhYrnEM1JF03m4w
         rFngogZHpbfHgVwrQ/Jh3h95QkjRZFDEiJ41eKEbwwUYvHAam49F1/zJOTJ/vOws2ZB8
         mBWm5v8UafC6+9Ab0sNLWSti/wMg73ADuFA9uMYxh3mJl1dwoFdynARY1YVkDyM2dT9E
         3VC3/jQpxem+gw6I0AuDDTJNWswa2yVbJuyDmSu/zmFhJS8IvSjHp/5R9AZzK99GIwJH
         Ay2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language:in-reply-to
         :user-agent:date:message-id:autocrypt:from:references:cc:to:subject
         :dkim-signature;
        bh=N/9fIBsdcQIb1DfTBD7Su2uYmYkjizqLQdD0liADHo8=;
        b=it8KpmerrT4d6JuKP84LqfgNij9AcJlWcCnbrgKzLUlFALzCTMwkyw7JcVS1bs3QhC
         3KAdVVvFyeFLrXQYHG6PeFEk4h6cJI8DBag6OcftNT5nuDgwfCBLjJXHi0j+1mkXajaY
         /RJrVMp1swxYVaPoBTxsUBnO+qizRcuX2hXe7Pk3hwiHSE3vogMXnCl0vcPSGlM1EhIp
         UFifELcMD9vu+prJEf/tzJTGyD8pw7O+FtgUwsL3clRjyVQ61Ysmo8i16MAJf/fEbfZt
         LT3LmIGjgUd0VhAteiihwlr2PXX0hCxESGiHSCEhygEkfXrxFjqEtkbdHlm3txZuc9k/
         Dabw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=fpZe+7+P;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 2a01:111:f400:fe46::60f is neither permitted nor denied by best guess record for domain of harry.wentland@amd.com) smtp.mailfrom=Harry.Wentland@amd.com
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (mail-bl2nam02on060f.outbound.protection.outlook.com. [2a01:111:f400:fe46::60f])
        by gmr-mx.google.com with ESMTPS id az8si267141pjb.3.2019.11.25.06.28.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Nov 2019 06:28:10 -0800 (PST)
Received-SPF: neutral (google.com: 2a01:111:f400:fe46::60f is neither permitted nor denied by best guess record for domain of harry.wentland@amd.com) client-ip=2a01:111:f400:fe46::60f;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dnzM/zopAqpcHzejEnDSgHyyH+kvO9dgBAMf0P6JQ3u6lQeORmdm36eu4pFvCV35pgSNMaHhtknFFtkqQ7B+zIioq/e5uMZwj5cCaMX891I7BQehi5PyjeQUCi/1wzwnS5vPx6RxRaRbcvml/bzMjb3YUGvkUc+krd/rOgCgOtcD+M/xM+7wnw6spDGXv07P3MniQepi+4pw9wYEsemJVTZKQxjIAQI9RZsC3bzcgii/sNwUM1O92diOTVIt7/d2vIB/Jmr4fbCpssVNHMEfsdO00fjcnBgbepkzUhW7Wjl6LdU2VFNoer6oixVCImEAnBeV1FWzp3esNmWjx773Eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=N/9fIBsdcQIb1DfTBD7Su2uYmYkjizqLQdD0liADHo8=;
 b=jQgbsTfM+92Fm81L89sZwU9mm5FUFhv4spl6XlxLXcnVJgfiYdNcUhwNiytJhm8oogG6wSRLzwVdL6n5spjEYDa/Co6bf1zstKTxkgrDZ1pjL8fAQEP3cjA4D1LqP88i+gXfPJRgXgIoSA50Xhzbp0Q7/tXAMqUuCKybiiOPrmjQxVZjFjEnGUUiP00nLJaJKXmSrqMcEiLHxVmdf/MiXCJuFo7rawf2gmku7tlb6cyjUZORslx9MwtzrpaS/+HqpIZmUjwgBcXWv61Vs5kQo9qiYPCxq+gx421MM36f7KR/ZB8yABiSzKyp+aV/RMUEX/CukIPgzhOrshEEHFIq2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from CY4PR1201MB0230.namprd12.prod.outlook.com (10.172.79.7) by
 CY4PR1201MB0118.namprd12.prod.outlook.com (10.174.52.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.21; Mon, 25 Nov 2019 14:28:07 +0000
Received: from CY4PR1201MB0230.namprd12.prod.outlook.com
 ([fe80::449d:52a8:2761:9195]) by CY4PR1201MB0230.namprd12.prod.outlook.com
 ([fe80::449d:52a8:2761:9195%5]) with mapi id 15.20.2474.023; Mon, 25 Nov 2019
 14:28:07 +0000
Subject: Re: [PATCH] drm/amd/display: Use NULL for pointer assignment in
 copy_stream_update_to_stream
To: Nathan Chancellor <natechancellor@gmail.com>,
 Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 "David (ChunMing) Zhou" <David1.Zhou@amd.com>
Cc: Dmytro Laktyushkin <Dmytro.Laktyushkin@amd.com>,
 Rodrigo Siqueira <Rodrigo.Siqueira@amd.com>,
 Nikola Cornij <nikola.cornij@amd.com>, amd-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20191123193639.55297-1-natechancellor@gmail.com>
From: Harry Wentland <hwentlan@amd.com>
Autocrypt: addr=hwentlan@amd.com; keydata=
 mQENBFhb4C8BCADhHHUNoBQ7K7LupCP0FsUb443Vuqq+dH0uo4A3lnPkMF6FJmGcJ9Sbx1C6
 cd4PbVAaTFZUEmjqfpm+wCRBe11eF55hW3GJ273wvfH69Q/zmAxwO8yk+i5ZWWl8Hns5h69K
 D9QURHLpXxrcwnfHFah0DwV23TrD1KGB7vowCZyJOw93U/GzAlXKESy0FM7ZOYIJH83X7qhh
 Q9KX94iTEYTeH86Wy8hwHtqM6ySviwEz0g+UegpG8ebbz0w3b5QmdKCAg+eZTmBekP5o77YE
 BKqR+Miiwo9+tzm2N5GiF9HDeI2pVe/egOLa5UcmsgdF4Y5FKoMnBbAHNaA6Fev8PHlNABEB
 AAG0J0hhcnJ5IFdlbnRsYW5kIDxoYXJyeS53ZW50bGFuZEBhbWQuY29tPokBNwQTAQgAIQUC
 WFvgLwIbAwULCQgHAgYVCAkKCwIEFgIDAQIeAQIXgAAKCRAtWBXJjBS24xUlCAC9MqAlIbZO
 /a37s41h+MQ+D20C6/hVErWO+RA06nA+jFDPUWrDJKYdn6EDQWdLY3ATeAq3X8GIeOTXGrPD
 b2OXD6kOViW/RNvlXdrIsnIDacdr39aoAlY1b+bhTzZVz4pto4l+K1PZb5jlMgTk/ks9HesL
 RfYVq5wOy3qIpocdjdlXnSUKn0WOkGBBd8Nv3o0OI18tiJ1S/QwLBBfZoVvfGinoB2p4j/wO
 kJxpi3F9TaOtLGcdrgfghg31Fb48DP+6kodZ4ircerp4hyAp0U2iKtsrQ/sVWR4mbe3eTfcn
 YjBxGd2JOVdNQZa2VTNf9GshIDMD8IIQK6jN0LfY8Py2uQENBFhb4C8BCAC/0KWY3pIbU2cy
 i7GMj3gqB6h0jGqRuMpMRoSNDoAUIuSh17w+bawuOF6XZPdK3D4lC9cOXMwP3aP9tTJOori2
 8vMH8KW9jp9lAYnGWYhSqLdjzIACquMqi96EBtawJDct1e9pVgp+d4JXHlgIrl11ITJo8rCP
 dEqjro2bCBWxijsIncdCzMjf57+nR7u86SBtGSFcXKapS7YJeWcvM6MzFYgIkxHxxBDvBBvm
 U2/mAXiL72kwmlV1BNrabQxX2UnIb3xt3UovYJehrnDUMdYjxJgSPRBx27wQ/D05xAlhkmmL
 FJ01ZYc412CRCC6gjgFPfUi2y7YJTrQHS79WSyANABEBAAGJAR8EGAEIAAkFAlhb4C8CGwwA
 CgkQLVgVyYwUtuM72Qf+J6JOQ/27pWf5Ulde9GS0BigA1kV9CNfIq396TgvQzeyixHMvgPdq
 Z36x89zZi0otjMZv6ypIdEg5co1Bvz0wFaKbCiNbTjpnA1VAbQVLSFjCZLQiu0vc+BZ1yKDV
 T5ASJ97G4XvQNO+XXGY55MrmhoNqMaeIa/3Jas54fPVd5olcnUAyDty29/VWXNllUq38iBCX
 /0tTF7oav1lzPGfeW2c6B700FFZMTR4YBVSGE8jPIzu2Fj0E8EkDmsgS+nibqSvWXfo1v231
 410h35CjbYDlYQO7Z1YD7asqbaOnF0As+rckyRMweQ9CxZn5+YBijtPJA3x5ldbCfQ9rWiTu XQ==
Message-ID: <ec7313da-dcdd-8884-063f-bf0e8cc664dd@amd.com>
Date: Mon, 25 Nov 2019 09:28:05 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
In-Reply-To: <20191123193639.55297-1-natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: YTBPR01CA0028.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:14::41) To CY4PR1201MB0230.namprd12.prod.outlook.com
 (2603:10b6:910:1e::7)
MIME-Version: 1.0
X-Originating-IP: [165.204.55.251]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 434245ba-d9e0-4f36-6479-08d771b3b074
X-MS-TrafficTypeDiagnostic: CY4PR1201MB0118:|CY4PR1201MB0118:
X-MS-Exchange-PUrlCount: 1
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CY4PR1201MB0118BCF64B4EACBC96DCA2918C4A0@CY4PR1201MB0118.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5236;
X-Forefront-PRVS: 0232B30BBC
X-Forefront-Antispam-Report: SFV:NSPM;SFS:(10009020)(4636009)(39860400002)(136003)(376002)(396003)(346002)(366004)(199004)(189003)(54906003)(186003)(14454004)(966005)(5660300002)(2906002)(26005)(3846002)(6116002)(6246003)(14444005)(4001150100001)(31696002)(81166006)(81156014)(25786009)(8936002)(8676002)(4326008)(2486003)(76176011)(6486002)(229853002)(6306002)(6512007)(6436002)(50466002)(478600001)(45080400002)(52116002)(23676004)(66476007)(66556008)(6506007)(99286004)(66946007)(11346002)(47776003)(65806001)(65956001)(66066001)(386003)(53546011)(6636002)(230700001)(446003)(58126008)(2616005)(305945005)(316002)(110136005)(7736002)(36756003)(31686004);DIR:OUT;SFP:1101;SCL:1;SRVR:CY4PR1201MB0118;H:CY4PR1201MB0230.namprd12.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
Received-SPF: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qCnTFU5iV162tXqcgbiCw4TSxpZXhiR1U5Yz7V8nw+687gMol824bceGnIvGzjraNgWrphv/6TqA1NPXnwP59rSRtLdjyf+ZKkYFMGFOaBvjjvg1cl6lBNwBZ1Xfszh4iqgePHAlq5jvvAcUjXTkXkulH2iTdEQ2MzzEilpvoy95Yx83st1jq8f6PwGxRdf+54MX9KfCzxZGh19vTuIIoJ2FvHslKUlykcVL2yGQc3LRNJmorfz/CSscxEaSnTE6W15M2w1+xwTwjBUdfadVmDjEEnssT2xnyR/rI3KezytPETJdogEaZkrxWVdEeKHi0j6Us+iuBcboqRu+4bdnoPeF+yXrqfmv8DOclObU7xS6s9owrER/cvZYQchdIBLKnKZ2SZmZi3SipvkFGBe3DRCB3OQU+SvoQ4Uvvylqc1NSpVV4SUP2oEIQlasMjRg2T3kgJM5+/dbKw5wsO8zno1SSvbtbjJo6jMwj08HBYl8=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 434245ba-d9e0-4f36-6479-08d771b3b074
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Nov 2019 14:28:07.3935
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9DVCLHNsHTkE0yVC6wS3Yxmqh2egWz0lCMotbreHlZfSxhD1Y38yqlXORjCTeX1nECdfYBkA5jAgG2vPKmWfGw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1201MB0118
X-Original-Sender: harry.wentland@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com
 header.b=fpZe+7+P;       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass
 dkdomain=amd.com dmarc=pass fromdomain=amd.com);       spf=neutral
 (google.com: 2a01:111:f400:fe46::60f is neither permitted nor denied by best
 guess record for domain of harry.wentland@amd.com) smtp.mailfrom=Harry.Wentland@amd.com
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

On 2019-11-23 2:36 p.m., Nathan Chancellor wrote:
> Clang warns:
>=20
> ../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc.c:1965:26: warning:
> expression which evaluates to zero treated as a null pointer constant of
> type 'struct dc_dsc_config *' [-Wnon-literal-null-conversion]
>                                 update->dsc_config =3D false;
>                                                      ^~~~~
> ../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc.c:1971:25: warning:
> expression which evaluates to zero treated as a null pointer constant of
> type 'struct dc_dsc_config *' [-Wnon-literal-null-conversion]
>                         update->dsc_config =3D false;
>                                              ^~~~~
> 2 warnings generated.
>=20
> Fixes: f6fe4053b91f ("drm/amd/display: Use a temporary copy of the curren=
t state when updating DSC config")
> Link: https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2=
Fgithub.com%2FClangBuiltLinux%2Flinux%2Fissues%2F777&amp;data=3D02%7C01%7Ch=
arry.wentland%40amd.com%7Ceb5e55813307456cf7d608d7704c79c4%7C3dd8961fe4884e=
608e11a82d994e183d%7C0%7C1%7C637101346080296409&amp;sdata=3D6HK3wWYMoILbiBi=
sjoHkFwopV%2BuJYUh8wCDhMSvRQQ8%3D&amp;reserved=3D0
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Reviewed-by: Harry Wentland <harry.wentland@amd.com>

Harry

> ---
>  drivers/gpu/drm/amd/display/dc/core/dc.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/amd/display/dc/core/dc.c b/drivers/gpu/drm/a=
md/display/dc/core/dc.c
> index c7db4f4810c6..2645d20e8c4c 100644
> --- a/drivers/gpu/drm/amd/display/dc/core/dc.c
> +++ b/drivers/gpu/drm/amd/display/dc/core/dc.c
> @@ -1962,13 +1962,13 @@ static void copy_stream_update_to_stream(struct d=
c *dc,
>  			if (!dc->res_pool->funcs->validate_bandwidth(dc, dsc_validate_context=
, true)) {
>  				stream->timing.dsc_cfg =3D old_dsc_cfg;
>  				stream->timing.flags.DSC =3D old_dsc_enabled;
> -				update->dsc_config =3D false;
> +				update->dsc_config =3D NULL;
>  			}
> =20
>  			dc_release_state(dsc_validate_context);
>  		} else {
>  			DC_ERROR("Failed to allocate new validate context for DSC change\n");
> -			update->dsc_config =3D false;
> +			update->dsc_config =3D NULL;
>  		}
>  	}
>  }
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/ec7313da-dcdd-8884-063f-bf0e8cc664dd%40amd.com.
