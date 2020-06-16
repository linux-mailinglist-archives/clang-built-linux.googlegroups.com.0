Return-Path: <clang-built-linux+bncBD3M5JPEVAFRBDVWUP3QKGQEQKMIOZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id BEC711FB4CB
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jun 2020 16:45:35 +0200 (CEST)
Received: by mail-il1-x13f.google.com with SMTP id q14sf14613255ils.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jun 2020 07:45:35 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1592318734; cv=pass;
        d=google.com; s=arc-20160816;
        b=MdZaLM4AbQaOClUwPYjjtZITMJlQM642XEisav9NORaPdKHCEqCr2VPrB61QCo7RkO
         83h40LXeIImukdmT/CBzREl7Z8K3yOmptA6KLjEXbC5ai+roW+dMFYbeARdXfGlp/24V
         PGTYh17UVz7cf5UCWBUu72zuA0jllRgUGTBWZo0/ba9lIXSaSZtu9sFpHXe29mEERP/Z
         S6fCTdhOLxFtPVwG3irGUSI91Kcj4NL3DJg3Qs630T++JXovK4+GdblP8dEz4+mAumZq
         02Xq67IINWl0H+bV+6JvJzgVPXbCh8YeXqqo7zM9LOCW9C8aaVFshGJU8AMMf5WV1UXL
         I/mg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:autocrypt:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=5tPTl1Cv9WDBGqycuGEc0ua7ea1HU+jr/GIoiQLijfk=;
        b=Y8pFsakFI+jvnqJz5UEKGyn2D4KoibPoJ86rrE9QXvYeU+xnGZW/aeS0dpgn/kmueq
         gTkMl4HkAKhrKrbUV6VNXuCf4ML7NWhJOb8v2yO3o1rqGbZjgfceBmI2voVG3G4i5+aR
         xuj6cvQmlUG3uUSfz2l5VQilsvIHWHYcK8ivB0Gb65sFzfu1amPrZL+UoYMPql1kmb/c
         TIT/2nsLbmvrtx8MMDm1MDLTh1KwBC3eWjYphD3DqPnhxT+NX4S3i7KEpv1yAqfFduiF
         kYZD0l3O/W2ruYz0isvLFYwc4Jz/AO+pXb9jC6xRZ1Xwghq630a6NfwuOlrYI0HC/nsC
         OQsw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@xilinx.onmicrosoft.com header.s=selector2-xilinx-onmicrosoft-com header.b=ERZt4uRT;
       arc=pass (i=1 spf=pass spfdomain=xilinx.com);
       spf=pass (google.com: domain of michals@xilinx.com designates 40.107.237.45 as permitted sender) smtp.mailfrom=michals@xilinx.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5tPTl1Cv9WDBGqycuGEc0ua7ea1HU+jr/GIoiQLijfk=;
        b=j9SSeg9tuwEK3Nvzlrwjc5JDRwxT6YIdDNoNjJLnpYdojb0348/0kSP54ptPcHn7bZ
         BVcxscXg5q/xokN3RjrSE/E4BWlVWatgNnLOJ+14JyFgNyNNFp5Aic9kxBkJVPUcdfpK
         fZh84zvANbDy9k5AmpGvivjIVqornvkDcvefFq46I7Q8DSRUB85+0vPHsIMPxNSjit7/
         hTG8a+mlL5QG1/ANkbOq3YhWxrgCvpwWxTiJLbivvFzhxGCAVE27viXHk/mQjg2TLPRa
         iAWSKeNfNnUxAIdZvyXeTdD6SznEJ3maaNB/g8zkrhBeSOrnHH7vr9PkBilNsWjiap8L
         0R3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5tPTl1Cv9WDBGqycuGEc0ua7ea1HU+jr/GIoiQLijfk=;
        b=XmMULEBy6Zq2t8UbvufYFemclB5vEdo3jW8eOHtB4sZCYSITEbH6bazCnIHCB+rhmT
         g/7I/02mX1qujlcPQrUPuZF9rfR4i8Qw8Y0CmS8nKK0fgrbCvPcNBucdVs1eQPBwnovM
         Y1eJ0mFXwIdTb84vEjH/P0ifZockZakEhFjYBElTH2ym8KqaXbQ7/3qFepPWutjisFkM
         r/X67optdYgypgQArqwEmC0AAi0bJ269hIolvkgCAsxEmN3+jBVZUMnWErOuqKiBnFLf
         UvsPR6AagCaFwk95Pmcyat0R2mFm4wsYlrb43v/CtzEtCl3m3wF37MJ11lIIPCg1Zo+M
         BDYQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Ut8SAriU7bDf/A6KUro6ZAjp59vt4MgM/ZlGo3GhUW4KvoALT
	rw4Q2/E5+zsV0Xa6O4f5xuc=
X-Google-Smtp-Source: ABdhPJxye8Ve1A0ewNdN2nqi5ta4QeSz7zYLzZj1ZWFhse1DcNvgGbr5QJZTFFaEEG4k4mHVYMbTaA==
X-Received: by 2002:a92:7104:: with SMTP id m4mr3574607ilc.87.1592318734771;
        Tue, 16 Jun 2020 07:45:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:2dc6:: with SMTP id l6ls3298940iow.4.gmail; Tue, 16
 Jun 2020 07:45:34 -0700 (PDT)
X-Received: by 2002:a05:6602:491:: with SMTP id y17mr3421671iov.72.1592318734389;
        Tue, 16 Jun 2020 07:45:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592318734; cv=pass;
        d=google.com; s=arc-20160816;
        b=jqdqTGYWA/6TnjqhtUfxyeWaxDSpntKOC9QTR7Bco/fFHik6mFlqSMVHA2NHlDD2hz
         TV/ntAJ1YuCVmJD4tU5/LDHoSDlga8DqX+pGyWLolz5HiTSYUTD7GZqjO0jFKlPhdHf+
         gPD9QEfjJhmMnu4Ai47Y9yH7orwI/tn8Xr0QHfM6L5Mi5EadHrMputrhDDM3FBhQSRy6
         QtOB88SvgGqThLDsVZvFHa+A6hv5x9XSaluCy4JQTN6zAHj2CxHpNKOLYgWxOFQWjGhc
         hsKpCy6AhAfCssAmVHTjDKJ5mhtcUy2eYnbHxCEAWCTN0Vts/Un6g7WkI281wTMjh/zG
         HW1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:autocrypt:from:references:cc:to:subject
         :dkim-signature;
        bh=NYrsnbDZNDdGBgjs2xWWepP+KRBIhDw3zJrDd7hV2QQ=;
        b=DriUy+FY6KaBCk6LlM9fGtVWuFIHkzXZqKqfXEgClfesenLkhIiGfj/UaWUpKVSETo
         SVDXXAMvsrV6LSqo2Uesql4Ep/++jxIbtbsg87RIddPhcdzYL962COzsyJ+TDvWU9LZy
         Sx2hCw8x/YQNEb0+XlQHCX5/3LfYqOtHGR/eggylhlL4d2Znh+RmZ+TBn28wNqv/JTwW
         Ca2hDBbmtrM8LB8vp0JSIu7Xqo0LdI+qnYr3cchY1dOpAJ4MDZjhHh9xkWRTIILVJX6t
         GVo+tw23tfrFuofPtswImcKyUlYZzfOy4Asn8O+x4oGKoRxk57TlpmcDWYBn/Xf1RIPa
         vStQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@xilinx.onmicrosoft.com header.s=selector2-xilinx-onmicrosoft-com header.b=ERZt4uRT;
       arc=pass (i=1 spf=pass spfdomain=xilinx.com);
       spf=pass (google.com: domain of michals@xilinx.com designates 40.107.237.45 as permitted sender) smtp.mailfrom=michals@xilinx.com
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (mail-bn8nam12on2045.outbound.protection.outlook.com. [40.107.237.45])
        by gmr-mx.google.com with ESMTPS id c7si738858ilf.2.2020.06.16.07.45.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Jun 2020 07:45:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of michals@xilinx.com designates 40.107.237.45 as permitted sender) client-ip=40.107.237.45;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CLcuR5EB2OL7dyxosu655tuNn77aZ+3IWj3WZQUHuqA2H8XkJv+QPPuurcPzw3xO8oiz0ajAeccX/mXFZ5tozLIus+aA6bFM84BnfGZ74fJg/98GL9zuLj0XUWb3aFqC0796YP9IzqJBSsC6EA1DBM8wVtUCHgwODzPp5gtug/rO6a+bVmAcoNiKc59wOH1OaaEon1UsEb0xjvK9MzbYIk4L4MeDPnyjlhoox+m5/JJOUo9B2p2ntCgvHe3VnriUG8V2md6TO+CJlK6Pg/3nP1l/UsLk9CWu6O2vVa7+5A6qslW0dVAHRjUFOzgYKWF1YST6/chq7cAs2jRBrV5l1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NYrsnbDZNDdGBgjs2xWWepP+KRBIhDw3zJrDd7hV2QQ=;
 b=k2HffWQ4ZK9lDKd31aagpMScR8ajQjv57crZw+9NBZ6LjqXYA+i+Uik9kThiTv2qmgSBrn9bHK/MFznS30Wm1uI3a+/28f8/CZE9ib10kBs9jPWIwcMAxbcB5lQfqHEQr2jf3+01PDRBlFaRC092GsHsC8f1dwLA60qpRXBcExSv9otbygSiY/pP3tLz/STrbgk9E4KhLqcHsNghFmrKx+2C0w6U/h4Cec8KSmh+jsWPo1USLICfr7MmjvGNLAFnULeZ3Vtx0IsoyjE2+1L1Alxiatncp2bjypLz/3SmfctrILCtvGW4IFHxll4ch2zkPKF66H2myz+gefU7Em6IJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=gmail.com smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
Received: from MN2PR01CA0061.prod.exchangelabs.com (2603:10b6:208:23f::30) by
 BN6PR02MB3249.namprd02.prod.outlook.com (2603:10b6:405:64::13) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3088.25; Tue, 16 Jun 2020 14:45:32 +0000
Received: from BL2NAM02FT041.eop-nam02.prod.protection.outlook.com
 (2603:10b6:208:23f:cafe::e6) by MN2PR01CA0061.outlook.office365.com
 (2603:10b6:208:23f::30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.21 via Frontend
 Transport; Tue, 16 Jun 2020 14:45:32 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT041.mail.protection.outlook.com (10.152.77.122) with Microsoft SMTP
 Server id 15.20.3088.18 via Frontend Transport; Tue, 16 Jun 2020 14:45:32
 +0000
Received: from [149.199.38.66] (port=34005 helo=xsj-pvapsmtp01)
	by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
	(envelope-from <michal.simek@xilinx.com>)
	id 1jlCpA-0002fd-WF; Tue, 16 Jun 2020 07:44:29 -0700
Received: from [127.0.0.1] (helo=localhost)
	by xsj-pvapsmtp01 with smtp (Exim 4.63)
	(envelope-from <michal.simek@xilinx.com>)
	id 1jlCqC-0001L9-5A; Tue, 16 Jun 2020 07:45:32 -0700
Received: from xsj-pvapsmtp01 (mailhub.xilinx.com [149.199.38.66])
	by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 05GEjNCm027530;
	Tue, 16 Jun 2020 07:45:24 -0700
Received: from [172.30.17.109]
	by xsj-pvapsmtp01 with esmtp (Exim 4.63)
	(envelope-from <michals@xilinx.com>)
	id 1jlCq3-0001E7-FD; Tue, 16 Jun 2020 07:45:23 -0700
Subject: Re: [PATCH v5 01/13] powerpc: Remove Xilinx PPC405/PPC440 support
To: Nathan Chancellor <natechancellor@gmail.com>,
        Christophe Leroy <christophe.leroy@csgroup.eu>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        Paul Mackerras <paulus@samba.org>,
        Michael Ellerman <mpe@ellerman.id.au>, michal.simek@xilinx.com,
        arnd@arndb.de, linuxppc-dev@lists.ozlabs.org,
        linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
References: <cover.1590079968.git.christophe.leroy@csgroup.eu>
 <8c593895e2cb57d232d85ce4d8c3a1aa7f0869cc.1590079968.git.christophe.leroy@csgroup.eu>
 <20200616002720.GA1307277@ubuntu-n2-xlarge-x86>
From: Michal Simek <michal.simek@xilinx.com>
Autocrypt: addr=michals@xilinx.com; keydata=
 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
 0Z1MQlmNcq2bhOMzTxuXX2NDzUZs4aqEyZQ=
Message-ID: <68503e5e-7456-b81c-e43d-27cb331a4b72@xilinx.com>
Date: Tue, 16 Jun 2020 16:45:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200616002720.GA1307277@ubuntu-n2-xlarge-x86>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:xsj-pvapsmtpgw01;PTR:unknown-60-83.xilinx.com;CAT:NONE;SFTY:;SFS:(136003)(346002)(376002)(39860400002)(396003)(46966005)(8936002)(356005)(26005)(2616005)(8676002)(31696002)(186003)(36756003)(31686004)(9786002)(44832011)(81166007)(82310400002)(478600001)(82740400003)(426003)(2906002)(5660300002)(47076004)(316002)(70586007)(70206006)(110136005)(54906003)(83380400001)(336012)(4326008)(43740500002);DIR:OUT;SFP:1101;
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ddf18013-62d5-4563-dbb6-08d81203ebd6
X-MS-TrafficTypeDiagnostic: BN6PR02MB3249:
X-Microsoft-Antispam-PRVS: <BN6PR02MB324953E0D9B05FAAD0C37D76C69D0@BN6PR02MB3249.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:2043;
X-Forefront-PRVS: 04362AC73B
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3/pw+YmyGQJWR1Bx8Hed0/lDCQHam4EHheiUBVDlNhVg59gaherbp3S2rKDUErpPUXSa58FbKzTWwLjBBTUQ9r86zNf+72JhEjTm/MQHIDIZpUfLD/1nKoil1cELGXwtYqVPP/hKX0a26EI9MnysUD0udjaRDU+b9BATmziYBaA7jRzbCb3g3grjIDn3c8wC8KT6i/eoH+p02DIy850iRIDY/0HRHKFp1cRjI9i0d4VrxDo5tjXMYyu9TMTtsaar5IMoD7TTe2OOPZteJG9hJHDalK1BXXH3nDAbTxozbVX4EzKWIZB4xvOb6KCrNqj0jy0+egw0vvAzFYd6vWDSNJPWbyM3oHjvU/Yhfhrhia7hitDy32nlzIJ+kVFvworvg5u7StK3U5tuvz9dj6Khpa72jFv3tOws3YmiD02HpGOf57ST64leU247FuXJBNTV
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jun 2020 14:45:32.3713
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ddf18013-62d5-4563-dbb6-08d81203ebd6
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c;Ip=[149.199.60.83];Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR02MB3249
X-Original-Sender: michal.simek@xilinx.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@xilinx.onmicrosoft.com header.s=selector2-xilinx-onmicrosoft-com
 header.b=ERZt4uRT;       arc=pass (i=1 spf=pass spfdomain=xilinx.com);
       spf=pass (google.com: domain of michals@xilinx.com designates
 40.107.237.45 as permitted sender) smtp.mailfrom=michals@xilinx.com
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



On 16. 06. 20 2:27, Nathan Chancellor wrote:
> On Thu, May 21, 2020 at 04:55:52PM +0000, Christophe Leroy wrote:
>> From: Michal Simek <michal.simek@xilinx.com>
>>
>> The latest Xilinx design tools called ISE and EDK has been released in
>> October 2013. New tool doesn't support any PPC405/PPC440 new designs.
>> These platforms are no longer supported and tested.
>>
>> PowerPC 405/440 port is orphan from 2013 by
>> commit cdeb89943bfc ("MAINTAINERS: Fix incorrect status tag") and
>> commit 19624236cce1 ("MAINTAINERS: Update Grant's email address and maintainership")
>> that's why it is time to remove the support fot these platforms.
>>
>> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
>> Acked-by: Arnd Bergmann <arnd@arndb.de>
>> Signed-off-by: Christophe Leroy <christophe.leroy@csgroup.eu>
> 
> This patch causes qemu-system-ppc to fail to load ppc44x_defconfig:
> 
> $ make -skj"$(nproc)" ARCH=powerpc CROSS_COMPILE=powerpc-linux- O=out/ppc distclean ppc44x_defconfig zImage
> 
> $ timeout --foreground 30s unbuffer \
> qemu-system-ppc \
> -machine bamboo \

Did you bisect it that you found that this patch is causing problem for
you on any bamboo machine?

Or this was caused by the whole series?

Thanks,
Michal

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/68503e5e-7456-b81c-e43d-27cb331a4b72%40xilinx.com.
