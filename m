Return-Path: <clang-built-linux+bncBD3M5JPEVAFRBZXQU73QKGQEHDOQH4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id DFC1B1FCBAB
	for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 13:03:03 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id x18sf1370739pgk.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 04:03:03 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1592391782; cv=pass;
        d=google.com; s=arc-20160816;
        b=qJXdGNUQw+O4ipT/vjZUnY8i2P9D+OoQ37VgowGWGI53EmUaDNZMnNN5j2tqrii3PQ
         5Lzsamls+OdJJIJ4A0FUbkQ25s3VaFhw3cbwnmVPw2tyd5zd64fbSE0ayAd0AaQrZb7k
         ZduU/57CrEIFJdycyswkcyI8e+GFxfQNkmfsLzo369j+WlxDzX8vTCnfBA/jHHXM8lm9
         pNGhxVl72skiBnlDsgdeY2h+pBRLljqmKqWoT6sQOneBK0Cg62ZctqYgcjSaFvr29g8R
         aaNylhcFjJ+lwCsSW9zbj1vHnWJ89Kp9J5XT4exlzD7XSFV7YTtIvzJRl6WggcYtPKRZ
         4gIQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:autocrypt:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=UOCm7uOsOeWJO54hC3nZtO3fo+rEfRgNSOYWYm+168Y=;
        b=t7t/aOT8Y22UbJ85PIQZEyhsHRRXtWF8xecVOuEj1tqyt+XqLVsXNW8Uvex/GH2Dsn
         iYpnWuHzwTIMt7P3cNFgQQAlyGVGuHlDUXPXYYVv193Oek6LcNRQnsvdAljK5jv5HjA/
         Z2l2z71VBz5bW4R6aIxza1yUtbCg27amFgTlXZdBImhTJdOCqyrEuMu2eqan07TFcgWz
         JU18OYYscSrVDF8jvk59WT4Yxy/p0H1e6zCZPb/f3xrToHWneujYP5CzLa/U0UPgV/CC
         bKY670XYoRlohuh3zJR2sQZy5UnBUyEEDsUT1NrwkrtykRmiRT8HqwCxz3vGVK1GuYLI
         Qk8w==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@xilinx.onmicrosoft.com header.s=selector2-xilinx-onmicrosoft-com header.b=Kv2o2kz2;
       arc=pass (i=1 spf=pass spfdomain=xilinx.com);
       spf=pass (google.com: domain of michals@xilinx.com designates 40.107.94.48 as permitted sender) smtp.mailfrom=michals@xilinx.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UOCm7uOsOeWJO54hC3nZtO3fo+rEfRgNSOYWYm+168Y=;
        b=ol3EHJ3qjAIHhhZqUGhzL9uzM3O90t9BNzjtc5nXLVZpbvtBwRR1jf6V4xUQH44re0
         sR1hzP6cfrx3P3R6rzcZBGnPkC5PXyAajHMQsvYwvVer1SNaunXaIyGyFSXzmn8pAdfj
         Jiycd5gDlx+SSKQshEWPGhUiQ6M3JT4j/DDqYDlsntv5t59L+GrfcfYhZcP+DRRd7+Vz
         AHvn1/Fq6Ppkdxx4yBgb0tTXXsvA2nsXJ7iHdoNaiOosIQK3uWbDhAb+RcY53yQHg5Xs
         hniB78h03E6ym9fLyUuP/1avJgJs0ZvkoiUI7HgFlj5butJlEEqYIghyuo0Uc0SvZY9i
         wOLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UOCm7uOsOeWJO54hC3nZtO3fo+rEfRgNSOYWYm+168Y=;
        b=B9GtWslbDrjChFgznhSkDhgfcNugG27SX4m5jPNrzQTExqopDY22Qr406AmWxfpRoi
         k2lXK+avaDW7E9nXfecEN7Wav2iFnkBqDx0xB1DQDj4lvOpK91lo0CBDazNNLJzvavrY
         hyn7OnMzaPl6WhH9HP8VWPi2uR17MMkRy15SMDuw02XK6IIT2ugJmulbIqaUPus50VEB
         BJob5GJKkhyh7Qx/QDXlVyRt5zvD0pUcbavraSQXOxtlLxOBjMR3+B5V84FadyZU7kYB
         spbWj7+8KQ5H/eJB/z94pU7bbTztP7XbXMieodZJociv6gZtYTineELWWNf1uH9DGC/k
         gaDw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533OvDVI5mskx1H6oZR1zpQUn/dzG71P/raXFSJl2R4w1S4GGd2v
	XwPOzxbY4kxcH45nCbMh+S4=
X-Google-Smtp-Source: ABdhPJxEJxV4cpwoIMh/w2SKcjH+4m9VZV9KzUkmdU5z1CJKWS3VRYfroOQLLepYGvxnGQDj6OCCIQ==
X-Received: by 2002:a63:ee0c:: with SMTP id e12mr5514080pgi.83.1592391782349;
        Wed, 17 Jun 2020 04:03:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7b91:: with SMTP id w17ls788881pll.10.gmail; Wed, 17
 Jun 2020 04:03:02 -0700 (PDT)
X-Received: by 2002:a17:90a:ce01:: with SMTP id f1mr7789872pju.69.1592391781925;
        Wed, 17 Jun 2020 04:03:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592391781; cv=pass;
        d=google.com; s=arc-20160816;
        b=A9MKAfyNhm9hFCk80chU+DGJvJMK0EzJMawkObjHSVP9tuLWHdEc5y/3pUEZNz5Akz
         KPCepLuT/t3I1nGeWkjTcLSQFZ4LIlMAQax/jz6u5/ZRfwGp05r1UHfK/SUg2MQOm6mw
         3Lw+TH9IprRUw4vLGRWD1fczwxpA1ojmyuMQrXW8sJ8L4MUA0zsymCYsvTQlXsjI2B1r
         VBF+8dKlmQlW+aG98nJI4nKbwFdxirWmcS0cDDrOJPkEd07IVw1cFrkHMlWNy/VP4S6g
         p8yayeSZ4TzLA3kPQXQ+NXOBUzG1EOnmQ7e9p4A9KnjxFDpmkPnO369AVbMwug8/cIjG
         L4Vw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:autocrypt:from:references:cc:to:subject
         :dkim-signature;
        bh=IHsrrAFtlflnD1A2Z99HbT1hAFUKGivuEzUujHXmgoM=;
        b=AzcIZ5UAZa56IO05v5aGm4pnu1CpqNVROdRwd9/qgA2vSgKoaMWGhA07Ftyt9KfnRR
         FYjopID9unSxW/FAWlqHjweTokXsUuZBqVHEyKP3MHP2nHrqgE729k52LkEwTlSkHHoW
         Wwz0oFDoCJEq+CE0v8OfQwLijvYNTfcrRHCpmQ2W+9dL6xMnpHn3gBlGTCRhpqscmnuw
         MuvkGthM1WEpptOqkL+2PV0fP2ZTStrVRWmhNL6jKc3zNFL7TspXNz1epTcRViVsBC/+
         v1Jwentpfx0a7X500LNCu+kDXl1zJsRZiCzV9ov+T/zbC0LTkt4xgfvlR1rsyhhHB83b
         A3EA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@xilinx.onmicrosoft.com header.s=selector2-xilinx-onmicrosoft-com header.b=Kv2o2kz2;
       arc=pass (i=1 spf=pass spfdomain=xilinx.com);
       spf=pass (google.com: domain of michals@xilinx.com designates 40.107.94.48 as permitted sender) smtp.mailfrom=michals@xilinx.com
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2048.outbound.protection.outlook.com. [40.107.94.48])
        by gmr-mx.google.com with ESMTPS id i17si212033pjv.1.2020.06.17.04.03.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 04:03:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of michals@xilinx.com designates 40.107.94.48 as permitted sender) client-ip=40.107.94.48;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iHp1FdkgN24wIYTKT2uNdwv4l+F81wldK9DHUWEXcMGF3sY4u7Cjnq3PrIicOWtRkEXDYQKs7gKY9oPtrDVu6Z43/kAG2a6Cq7F2Ww5ZApNDHrw4ywN6Z8gDkJKHtAStFY3vnl1RVcKXToZUfBcl8/HMh9IheDmRwFfJP8ED6/7FEqZjfsqug1xztNNOQfM8pHJMMGjsQ1YGwC3BrZiuDwklZ0Hv4zembI0wm0xYVI6Rfag72pVOAhkcBLv3FKPVN59GgYZK72tLIDHl90u5H+nmbbRZ9ayN0aOv76aMIbHVWKz6SONDxA71TPVE3PYRFyR/3yyUbYEiINJzo0xEmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IHsrrAFtlflnD1A2Z99HbT1hAFUKGivuEzUujHXmgoM=;
 b=LDzOaNoZPRMZMVP6cY4Ql5pZPZcZYgIAwld7YOQ91ULCGjUjdF8jWz2yxXaOFQ646sEv2iNVYERetR4GZNkS+yTKSorPyU+1HviRs/QYIhqCIblKxHrMLNX0YdioRktW0U1GAxdUbv1Imt/bBBdbB11Ab4mcV3uiBdklTso8JE2yjSlFdPLJpAGt6eNS1riOC1lXzBeOSggrPcrQGQ0OYsbRf07HsCUwwRBF1L3665FUnPUN9MO/QooNNrKcKXHMxqCXzObfeQCorEGgTG3utTujLUSoxkObn8UZWD36fDEVDJsy+HUqWCh5tfo9hCEW5xHh/dtBRtpUt6MzJ1K1Jw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=googlegroups.com smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
Received: from SN4PR0501CA0148.namprd05.prod.outlook.com
 (2603:10b6:803:2c::26) by BY5PR02MB6801.namprd02.prod.outlook.com
 (2603:10b6:a03:20b::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.19; Wed, 17 Jun
 2020 11:03:01 +0000
Received: from SN1NAM02FT034.eop-nam02.prod.protection.outlook.com
 (2603:10b6:803:2c:cafe::3e) by SN4PR0501CA0148.outlook.office365.com
 (2603:10b6:803:2c::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3131.10 via Frontend
 Transport; Wed, 17 Jun 2020 11:03:00 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; googlegroups.com; dkim=none (message not signed)
 header.d=none;googlegroups.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT034.mail.protection.outlook.com (10.152.72.141) with Microsoft SMTP
 Server id 15.20.3088.18 via Frontend Transport; Wed, 17 Jun 2020 11:03:00
 +0000
Received: from [149.199.38.66] (port=59451 helo=xsj-pvapsmtp01)
	by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
	(envelope-from <michal.simek@xilinx.com>)
	id 1jlVpM-0000id-5n; Wed, 17 Jun 2020 04:01:56 -0700
Received: from [127.0.0.1] (helo=localhost)
	by xsj-pvapsmtp01 with smtp (Exim 4.63)
	(envelope-from <michal.simek@xilinx.com>)
	id 1jlVqO-0006R3-Eq; Wed, 17 Jun 2020 04:03:00 -0700
Received: from [172.30.17.109]
	by xsj-pvapsmtp01 with esmtp (Exim 4.63)
	(envelope-from <michals@xilinx.com>)
	id 1jlVqE-0006OO-Mz; Wed, 17 Jun 2020 04:02:51 -0700
Subject: Re: [PATCH v5 01/13] powerpc: Remove Xilinx PPC405/PPC440 support
To: Michael Ellerman <mpe@ellerman.id.au>,
 Michal Simek <michal.simek@xilinx.com>,
 Nathan Chancellor <natechancellor@gmail.com>
Cc: Christophe Leroy <christophe.leroy@csgroup.eu>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, arnd@arndb.de,
 linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <cover.1590079968.git.christophe.leroy@csgroup.eu>
 <8c593895e2cb57d232d85ce4d8c3a1aa7f0869cc.1590079968.git.christophe.leroy@csgroup.eu>
 <20200616002720.GA1307277@ubuntu-n2-xlarge-x86>
 <68503e5e-7456-b81c-e43d-27cb331a4b72@xilinx.com>
 <20200616181630.GA3403678@ubuntu-n2-xlarge-x86>
 <50fb2dd6-4e8f-a550-6eda-073beb86f2ff@xilinx.com>
 <87bllidmk4.fsf@mpe.ellerman.id.au>
From: Michal Simek <michal.simek@xilinx.com>
Autocrypt: addr=michals@xilinx.com; keydata=
 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
 0Z1MQlmNcq2bhOMzTxuXX2NDzUZs4aqEyZQ=
Message-ID: <83746b77-dd2a-ac05-c05c-ec4a458c78cc@xilinx.com>
Date: Wed, 17 Jun 2020 13:02:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <87bllidmk4.fsf@mpe.ellerman.id.au>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:xsj-pvapsmtpgw01;PTR:unknown-60-83.xilinx.com;CAT:NONE;SFTY:;SFS:(376002)(396003)(136003)(39860400002)(346002)(46966005)(2906002)(82310400002)(47076004)(82740400003)(31696002)(81166007)(31686004)(70206006)(356005)(9786002)(4744005)(54906003)(2616005)(5660300002)(44832011)(70586007)(316002)(110136005)(478600001)(336012)(8936002)(6666004)(8676002)(186003)(26005)(4326008)(36756003)(426003)(43740500002);DIR:OUT;SFP:1101;
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d796e84a-d527-423c-9c58-08d812ae001d
X-MS-TrafficTypeDiagnostic: BY5PR02MB6801:
X-Microsoft-Antispam-PRVS: <BY5PR02MB68014046FBF3DA360881D740C69A0@BY5PR02MB6801.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 04371797A5
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /+GoaJ41AOcs7nngeHor2fnEDLmdvAlwRJ/os5WjT0ZaGEWhLK/nG0XhhD8R24ftswjuI/2WXD0OmuyWv9WocBNEI9BhZxc8pYHLy05gqshWP9u8z0dwGzW3AVkYfMBCC2GwocJFx9a2ugklCho4ojVI9i4aOfRcy0cKg+uHaLyP8JqlZye0Eww48IZCSImRwE+pHluCmk1DtQJKjX7wF8X3gvQwzxcLiWyOfxjsU9PpWx+B0I5g0u74L2novXWZN31+zgDgz5xPxJzorGxKOnO5zAUKy1+OqzA9u1Nq+vo8L7LY27d7xAAbZWs42nmB/yl1EhMXj29HFIraBwmrAI6Xk9eO4suJiewVbSzcf1Zs+XOUsAR/qqUZToeHvN5CzKcLuSWvE+FpXUUIAgDH3Ggu38jUiHJXZWw7IZ7p31XaiCOtbwU2ttuWbRssyv42
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jun 2020 11:03:00.8335
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d796e84a-d527-423c-9c58-08d812ae001d
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c;Ip=[149.199.60.83];Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR02MB6801
X-Original-Sender: michal.simek@xilinx.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@xilinx.onmicrosoft.com header.s=selector2-xilinx-onmicrosoft-com
 header.b=Kv2o2kz2;       arc=pass (i=1 spf=pass spfdomain=xilinx.com);
       spf=pass (google.com: domain of michals@xilinx.com designates
 40.107.94.48 as permitted sender) smtp.mailfrom=michals@xilinx.com
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

<snip>

>> Or if bamboo requires uImage to be built by default you can do it via
>> Kconfig.
>>
>> diff --git a/arch/powerpc/platforms/44x/Kconfig
>> b/arch/powerpc/platforms/44x/Kconfig
>> index 39e93d23fb38..300864d7b8c9 100644
>> --- a/arch/powerpc/platforms/44x/Kconfig
>> +++ b/arch/powerpc/platforms/44x/Kconfig
>> @@ -13,6 +13,7 @@ config BAMBOO
>>         select PPC44x_SIMPLE
>>         select 440EP
>>         select FORCE_PCI
>> +       select DEFAULT_UIMAGE
>>         help
>>           This option enables support for the IBM PPC440EP evaluation board.
> 
> Who knows what the actual bamboo board used. But I'd be happy to take a
> SOB'ed patch to do the above, because these days the qemu emulation is
> much more likely to be used than the actual board.

I have no problem to send this as regular patch but someone with more
bamboo experience should tell if this is correct configuration.
But truth is if that symlink was there for quite a long time it should
likely stay there.

Thanks,
Michal

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/83746b77-dd2a-ac05-c05c-ec4a458c78cc%40xilinx.com.
