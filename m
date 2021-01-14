Return-Path: <clang-built-linux+bncBAABB5UZQOAAMGQER7D2LWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id B55EE2F6EBF
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 00:00:06 +0100 (CET)
Received: by mail-lj1-x23e.google.com with SMTP id f23sf2511409ljg.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 15:00:06 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1610665206; cv=pass;
        d=google.com; s=arc-20160816;
        b=IFM6rui3yQ8on6qutj9WbX6n4uvkHBaho+06CL/slEPjbl90JxTYoh4G/TwJB3+uml
         bMRVclAHmPJAZaqJrO+EBssiQaYUDK+hFLjrdTBkPD5uYtDrEbTWSB/Cbo/V3UykxiXC
         zOkNQnAPO4zl2bUcAJrWA+ai17kfxI0MyDXQRE8T+PRz26Or6+7eN/DGIFYNREfROXhc
         k+QcTxeR7IxGydFCvpXcro7bcL457R8c8k495N5NgRwNl74wdNI1X7adHaPCExrHddIA
         dPZMiPIU2FQZ7msM7y4Y0E101cJN7WLa30p5PglEy3I0FcvZ/ZRv6TmKBpPX8Id+GuIo
         QM+Q==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-language:in-reply-to:user-agent:date:message-id:from
         :references:cc:to:subject:ironport-sdr:dkim-signature;
        bh=Fbm7iVqsd4Ic5ZgbZ1PaFzeQjW2Lst0WIvWafuYXd4U=;
        b=ksBysdfq2r7tshlb7afF8KSNaiuOVX2oWhGGeMifNk+LNKFL6sFuUD9I94GlHBQZIi
         lnvdNYLu+AW3MDB0hlrEUkkdpBV6kLvA1XVMDEpPsY5RWYgUSSPH6vjW8JSHKapxHWKg
         aFDg5jjRGrROPWm44Cky2VFTgd2KJp+eFiyGi3G2OetpO77zmN+YYyqT1UfFVIyNZjjf
         jCI4mQrehLnmYBdCIprYuH/AUaA0PKn+4B31h/LUjjOuXuLnr6QS7FRYUqzujSBmsznG
         XuKPggkPahrL4cc7DcmOP9JFbtUmLKxgiNpkUSeoNphLDSLrdqwnhZrIgFnvFdom0H+4
         nHmQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@citrix.com header.s=securemail header.b=GosVFwTc;
       dkim=pass header.i=@citrix.onmicrosoft.com header.s=selector2-citrix-onmicrosoft-com header.b=pUJFWA2b;
       arc=pass (i=1 spf=pass spfdomain=citrix.com dkim=pass dkdomain=citrix.com dmarc=pass fromdomain=citrix.com);
       spf=pass (google.com: domain of andrew.cooper3@citrix.com designates 216.71.155.144 as permitted sender) smtp.mailfrom=Andrew.Cooper3@citrix.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=citrix.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=ironport-sdr:subject:to:cc:references:from:message-id:date
         :user-agent:in-reply-to:content-language:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Fbm7iVqsd4Ic5ZgbZ1PaFzeQjW2Lst0WIvWafuYXd4U=;
        b=Dm7gHB+hRgu8L/tA8KhMD8rCpzxOrU7mJcu8Zn6GhPbNwAO9VOJ3FSLwR51akMnwTy
         05Q3xtFrL+BhjfRjcrRIg8nbxLux6iqd+KngnAqpomOReAjRT0BDoAzT/Be0mMWeK5ar
         KCOyhE7VLoGWtm6LfXaOsCDiSClsJ2ZC2Fm30AyjK0VwwIv02zDAoisxsM6SbQcFHe6f
         xLYb8meeXbOcvIyLXhyKEHs4ES0RTHId8cNkRCeBocrjWZfNFrKYOJRiTJDngpofi4PJ
         QHEghyIexBCc/ExxqDvf5HT+Gn+zmd7MsKaJCOb1FrWoQP4GDfoM9EPLeLL3BbYvWt3c
         ho7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:ironport-sdr:subject:to:cc:references:from
         :message-id:date:user-agent:in-reply-to:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Fbm7iVqsd4Ic5ZgbZ1PaFzeQjW2Lst0WIvWafuYXd4U=;
        b=EKEuNA9P+omxtG0vJT+pc6L9mdupnJZg+1ie+dxbFn/TcaTY676CyyG+YsbIuDl/qa
         YOAhIOxt6OhPrfbCdCA8OudFJ9HDsevxnmfJNfZec2ReABgI8Tyfb54l5dyQL9d/ApA/
         B5yg1fP+xHtej0e3jBQpR++/QAhguz4bmK7FF/VDT43X0H/7zqzkjYSHFSh9RzgXbxkx
         /6XANSSXbufmaD29ApEOUi5rR1ViWxWPqGaaJ9Cjo5yvqO7m2RaIo0+bcVMb/IS2kYOj
         3z8GTjBZlJ5RLhnRbhCd6It/1f0BvbwHZnveq0F4kuMZ24AyzdIjo5m2m/LuymdQwUN4
         +i7g==
X-Gm-Message-State: AOAM532LRW9S2GfXHQzu0gVXrTPSfh7TFIiiE59Hqd54dqh+siOWM23x
	gdp1l9I+uaHACeY4DBjwEHQ=
X-Google-Smtp-Source: ABdhPJydEqPZygb3c+wIHXFsQFdmde8OqBAeb9iTqcnatIRB5eM0zP4yeydiNs0NhxdqDzDRCcRMlQ==
X-Received: by 2002:ac2:5472:: with SMTP id e18mr4146717lfn.489.1610665206228;
        Thu, 14 Jan 2021 15:00:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:51c4:: with SMTP id u4ls1134116lfm.0.gmail; Thu, 14 Jan
 2021 15:00:05 -0800 (PST)
X-Received: by 2002:a19:670f:: with SMTP id b15mr4115811lfc.340.1610665205426;
        Thu, 14 Jan 2021 15:00:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610665205; cv=pass;
        d=google.com; s=arc-20160816;
        b=VvQnYBwfuentH8gFpNDi2+F5SN1R+V5UR2EKONKsrJQp5ruYsclvx9FR9BwQ924ca6
         YNHvZ0YI/W5/7ivPS6/bpnb/xlrFuBWbXM6o7OYCFUmteATkwePRFkUaXL7yx+0VrXAd
         77tB/5gQgW/a2D7oWTKNAgnjj0FLshkIPkZDlm/37lTpjqIMPaO7H8WeDXlhmaiCYKsg
         5qBlJqregrluUIxtu5qeduoIl/EszAtRpDwB+iPAmALjddi4eFM/sJQs8ADa0GcmHRjW
         RgjiNaxRxDsOLMQA10WNd2iihuXw0YNbAtzg/OjPA5hykb3a0Y9pWjUiN6EpD88DxqQ7
         36pw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-language:content-transfer-encoding:in-reply-to
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature:ironport-sdr:dkim-signature;
        bh=OdD4Qor8RUTah6Qju6TaWGx5pJ2vn+8aZ5+/VlU9gtU=;
        b=EUgVyl0bwMLUwxeVW7frgwtq9AlqypPDGkFkZwJiluZBTOMgpT/2UHCN0hl4ZLiiuA
         UJ191/zB2E5EFDokopGPsWeFasbwRKw3hnSU1A5mHIUB5GnsMZ2HHnw8lW60dYZqNuLn
         obD4Qp5uxMUCCFAZR4jJVoFdaV9Kyvi8EZnXZMcGWeCytqICpcSGDaDUJOUd2KYRRBF3
         RVgFmueT5iV2Jh8NCZ8svjzSaI6/uWCqPJL2D18lvafRReLsJclOZmSjKy2OJGiUlzbT
         pSEwA0gp5r5QevUlgOft5z8nCIfn0OikCk2IN13/g4rY3VHiV/1KLI6mHNKbUcs4lM8Z
         S+ZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@citrix.com header.s=securemail header.b=GosVFwTc;
       dkim=pass header.i=@citrix.onmicrosoft.com header.s=selector2-citrix-onmicrosoft-com header.b=pUJFWA2b;
       arc=pass (i=1 spf=pass spfdomain=citrix.com dkim=pass dkdomain=citrix.com dmarc=pass fromdomain=citrix.com);
       spf=pass (google.com: domain of andrew.cooper3@citrix.com designates 216.71.155.144 as permitted sender) smtp.mailfrom=Andrew.Cooper3@citrix.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=citrix.com
Received: from esa4.hc3370-68.iphmx.com (esa4.hc3370-68.iphmx.com. [216.71.155.144])
        by gmr-mx.google.com with ESMTPS id e18si349540lfn.6.2021.01.14.15.00.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Jan 2021 15:00:05 -0800 (PST)
Received-SPF: pass (google.com: domain of andrew.cooper3@citrix.com designates 216.71.155.144 as permitted sender) client-ip=216.71.155.144;
IronPort-SDR: mymqzfoK2J8rJ/yoTsuo7W8t/cC9adpMpoufRIqCXZwQg2BO830Yp2yFQLuYslF5qMSWqox4uu
 JYT9Cph+9wq7lzPo44Hd2Oxc5YVsxIkCSjTTPn1genCmLHxj0kcpW31ECbaQmHLudR+CWF+iTW
 5hOWyQ2tF4NeWot+2ZQEm/qia5jLr5UjEtRgXV5xZ3HvIzEepnSct7QUJNWg4CjlSMtZJeK5nk
 cVgiScmaw73yMHCAM7TkY9aVbF2LzjN6fccHMbpGQWaeon/2QRjc2in/6gKhcA83qAc1oFhFa8
 q0s=
X-SBRS: 5.2
X-MesageID: 36427667
X-Ironport-Server: esa4.hc3370-68.iphmx.com
X-Remote-IP: 162.221.156.83
X-Policy: $RELAYED
X-IronPort-AV: E=Sophos;i="5.79,347,1602561600"; 
   d="scan'208";a="36427667"
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JtA6JMJ1MUR9GVmbk2sopsP708BgKRsKDVgtrQZPRW48pAsDbSRWV2Zr+hqAVBPx8GjeG+XWJhK+mWn8wKtjA87UUzJH1GJDakOyJdI9D/K7d8KeilFhUg62xdEUpWAUelg7Fztkb9BDIO5H7RC4gBdnMbku6ihUshr3eZgDAAlW6Y22TONV2iEVVoyfkLMRP+JZjPFG+EUEPawmdhbvzJEmY0zOgD8Bi7d7YcRLgXZkj/EJcw0GKz3ZsD5U3KUesZ7taAXvWmTN+uLdAV9FhR4svewcJ2ULwb22qlabanaOyoCQXX44NomOo9+ntd75yH0lHj72MeN33pWwEswu7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OdD4Qor8RUTah6Qju6TaWGx5pJ2vn+8aZ5+/VlU9gtU=;
 b=HR/AQPB8HXH3+YsM+nF/ZJSiCGK82QsVAmazFhy4u5i0GScSa5YKZ7FGPPTo8morOagQk9p+DBxlz6Jap5cyQMSRNNPEZ/kgrPfiu4E9jra8EeVhUp1uSEZbOX3h2zfG7RdhhsOLT1KfgxuV2fPq0eWoIgIrY6PH4GWi0J/xjWIZQa7RiwwBES9sw0B9LH3bZPhXRZrmgTXqoLVMSqm+YZnNimnS+0AQzFBMumPeoF+IStZyWFlFKepLTQYm9UYr74rLxDm/8Jo4TKlWVUAqHuNkTaIXvrKAhSotUyjQDwtFiijQLlvMDdpxLEUC1H6xbSafy6l3x/KV4k992iB8+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=citrix.com; dmarc=pass action=none header.from=citrix.com;
 dkim=pass header.d=citrix.com; arc=none
Subject: Re: [PATCH 17/21] x86/acpi: Convert indirect jump to retpoline
To: Josh Poimboeuf <jpoimboe@redhat.com>, <x86@kernel.org>
CC: <linux-kernel@vger.kernel.org>, Peter Zijlstra <peterz@infradead.org>,
	Sami Tolvanen <samitolvanen@google.com>, Sedat Dilek <sedat.dilek@gmail.com>,
	Kees Cook <keescook@chromium.org>, Nick Desaulniers
	<ndesaulniers@google.com>, <clang-built-linux@googlegroups.com>, Miroslav
 Benes <mbenes@suse.cz>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Len Brown
	<len.brown@intel.com>, Pavel Machek <pavel@ucw.cz>
References: <cover.1610652862.git.jpoimboe@redhat.com>
 <a1e4f5620deb81fc644b436eca5f51ec3a694459.1610652862.git.jpoimboe@redhat.com>
From: "'Andrew Cooper' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Message-ID: <5017a6c5-55fa-0767-b1ed-2bd9e2a5efc1@citrix.com>
Date: Thu, 14 Jan 2021 22:59:39 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
In-Reply-To: <a1e4f5620deb81fc644b436eca5f51ec3a694459.1610652862.git.jpoimboe@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-GB
X-ClientProxiedBy: LO4P123CA0496.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:1ab::15) To BYAPR03MB4728.namprd03.prod.outlook.com
 (2603:10b6:a03:13a::24)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 777ca840-dced-4ff3-139f-08d8b8e01715
X-MS-TrafficTypeDiagnostic: BYAPR03MB3542:
X-Microsoft-Antispam-PRVS: <BYAPR03MB35424FCBA29218482F6BEBA6BAA80@BYAPR03MB3542.namprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5236;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vO4lPCKEArhPccV3p8G3tXTGpWa+v6bq7iHCVXt2t+8r6JNQtukBy9Lm8vtko6Cdu1D1B0mvR8BlQT3CNnfhAS1YlNoZJe4YFKv39NNJc5ylEYUtHpurKs1J31m+dgpXkCIEvfWOJFchAeNER48PxeeQpbCOctzuJW8s9FZzFMvSbatwHSozh+8bFIY+ZMiIhp+5FGmxcb19TJ97tYoFe6twmBZMz5KWAYAk9M4Zw79BQeakB+SpRbvmRqITNFAipMJoCA7cKurc20Fz0cy9a1Qjk0gff1pAfYRli10M//rWMyjbGiwdzpMC/ZysKMP6cg2ueuPABy03lqglTuQXE5CxLFJ5oav+muViRWLDCojEWcLZKZCWsPwtoFQni3C6UCxqWYaREjoKgKquw+qpSR4YVcXV3/nDGMInFObOqWFqaNZ1A/CYZ5bb54pm4IMvOMjz8hD5qX0L7f7nwiaCkFpqkTn7CKt0xlEd6HDFT50=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR03MB4728.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(39860400002)(366004)(396003)(346002)(376002)(6666004)(2906002)(956004)(2616005)(6486002)(31696002)(66556008)(66946007)(26005)(66476007)(186003)(478600001)(83380400001)(16576012)(7416002)(4326008)(316002)(86362001)(54906003)(5660300002)(31686004)(8936002)(8676002)(53546011)(16526019)(36756003)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?U3J4OTJoRmZSbzBFRzhsWjhlM0IrbEpDY0s1UUhzZ2FYZXRKZ1UvUXlFbW5t?=
 =?utf-8?B?SE5yR01GWDB2dHJ1M09jd3FDTnFPZFZaZUh1OE9FMTBFbi9JWU1oaWIrL0pj?=
 =?utf-8?B?bXY5TkhYNVYzUTJFWHprRGR1VWd2bEwzemNBS0NEWmEva3hvejBaWVBJUVpl?=
 =?utf-8?B?bkc4dFVVRjhjWmhzSlJGakdGQ0VmOFdRSGYxNVk1enM2TC92OHZQRXJIa2ho?=
 =?utf-8?B?bXhkSUNlQ2kzUTRBY25xL2daUUFMQUpLeXFCWHB6L1ZZcG44ZGQ2UUZmV2ds?=
 =?utf-8?B?OWl6eklyMHNXRExVZDVIS055Sk9EcmRNSWtrK1lZSmlva2h1QW03SWNmRGMz?=
 =?utf-8?B?VWhiaEhRQmZZZXZPRGtXbHBtMWpVUEtJZVNYSmh1eGdvUXgvZDYzVk8xeGpr?=
 =?utf-8?B?Nnl1czFhcGV3Mm5CWVFtUS9FcXYva1ZkeDNtTWZsY1dVM09SKzl3NlpNMWFy?=
 =?utf-8?B?N3M2TFNoV0hTT2NqWTZoSVFXWTdYWUJ1alZVYzBpa2QzSTRoQTVtenUzVUN3?=
 =?utf-8?B?clUzdk9iVm1QSEppSWZka2M4LzRrS25jK3pKcXk2M25aWkQydFpDNGhsalhw?=
 =?utf-8?B?QzB3VEJjYXN1TEFYSU9CMnZtNm52UjdVUFY3SWZBNDFvMzFFd2c0QUwxS3V1?=
 =?utf-8?B?bEFZWU4vYVZrbnppdG0xNCtLWDFWWG8yWGhlVWRlWGJkMEpTRXhGampZY2Np?=
 =?utf-8?B?VjlCRWw0WExYMWdjUytxZW1nQ0Z5eHp6azlvWXVpVUdNZ2F1ZzVJWFlEN2JO?=
 =?utf-8?B?b0dmMTFFTDh2K2JmRm83Ym5MdWZuWDRWR2xkdWsxd0UwNVFCQjJGUmgvOC9p?=
 =?utf-8?B?UlpScUg2TzlyaXhwWlREd3UyY2VIZDI0Q0dlV29WVEZGRmlQNGlUT3JjNS96?=
 =?utf-8?B?TmxYLzJSV2tSZFZ0eDdjR3JPdmQyZEE0SkxOUGJnVVYxMGpWbGRwUXNKajd6?=
 =?utf-8?B?dllieG9jSVU2c25UZ0wxdDdHTHNmNGl3WnM5VVI5clkvNk1NVFprbHpJa3ZC?=
 =?utf-8?B?RGZYNjAyTmpmaW5vaC9hZjZkMUFwai9rb3pyb2R6cTBkdHcxSTdsb0tUZ3c1?=
 =?utf-8?B?TVRmaHkwdEYzY0JIaXJmZUhSUlluVXFlYzFCN2pzTUJPanUweFUxNVI4N2tj?=
 =?utf-8?B?eWgrU1B5Y2xmR2RqU0pBOFpUTlExaFMyZ0lJUTBDMk14VlV1S0VLVnlrblY2?=
 =?utf-8?B?bzZNZmF0c1RVSndYeDVFRnFoTGloOUFxSHY2U08vZENWUkppd0RMcHJsclo5?=
 =?utf-8?B?VlpiMUNCQk50UnNudEVNVERSeVdPKzJmL1NQUDNoUEV4a3RmaUkvSnV0VHBa?=
 =?utf-8?Q?hs5d10+NiqtTV3Uiwzpyk0W2VXD/you7Gg?=
X-MS-Exchange-CrossTenant-AuthSource: BYAPR03MB4728.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jan 2021 22:59:47.1697
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 335836de-42ef-43a2-b145-348c2ee9ca5b
X-MS-Exchange-CrossTenant-Network-Message-Id: 777ca840-dced-4ff3-139f-08d8b8e01715
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TeWiaMYo5hD8BfDOUYE6h964sUSPxgvjk1+NrVq24105XtWKBbwgqrS3/i8JKOLruLzFnuK4KptutqR+WKfJW2nOIVM0ddmjFHv3bGCHBbs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR03MB3542
X-OriginatorOrg: citrix.com
X-Original-Sender: andrew.cooper3@citrix.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@citrix.com header.s=securemail header.b=GosVFwTc;       dkim=pass
 header.i=@citrix.onmicrosoft.com header.s=selector2-citrix-onmicrosoft-com
 header.b=pUJFWA2b;       arc=pass (i=1 spf=pass spfdomain=citrix.com
 dkim=pass dkdomain=citrix.com dmarc=pass fromdomain=citrix.com);
       spf=pass (google.com: domain of andrew.cooper3@citrix.com designates
 216.71.155.144 as permitted sender) smtp.mailfrom=Andrew.Cooper3@citrix.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=citrix.com
X-Original-From: Andrew Cooper <andrew.cooper3@citrix.com>
Reply-To: Andrew Cooper <andrew.cooper3@citrix.com>
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

On 14/01/2021 19:40, Josh Poimboeuf wrote:
> It's kernel policy to not have (unannotated) indirect jumps because of
> Spectre v2.  This one's probably harmless, but better safe than sorry.
> Convert it to a retpoline.
>
> Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>
> Cc: Len Brown <len.brown@intel.com>
> Cc: Pavel Machek <pavel@ucw.cz>
> Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>
> ---
>  arch/x86/kernel/acpi/wakeup_64.S | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/arch/x86/kernel/acpi/wakeup_64.S b/arch/x86/kernel/acpi/wakeup_64.S
> index 5d3a0b8fd379..0b371580e620 100644
> --- a/arch/x86/kernel/acpi/wakeup_64.S
> +++ b/arch/x86/kernel/acpi/wakeup_64.S
> @@ -7,6 +7,7 @@
>  #include <asm/msr.h>
>  #include <asm/asm-offsets.h>
>  #include <asm/frame.h>
> +#include <asm/nospec-branch.h>
>  
>  # Copyright 2003 Pavel Machek <pavel@suse.cz
>  
> @@ -39,7 +40,7 @@ SYM_FUNC_START(wakeup_long64)
>  	movq	saved_rbp, %rbp
>  
>  	movq	saved_rip, %rax
> -	jmp	*%rax
> +	JMP_NOSPEC rax
>  SYM_FUNC_END(wakeup_long64)

I suspect this won't work as you intend.

wakeup_long64() still executes on the low mappings, not the high
mappings, so the `jmp __x86_indirect_thunk_rax` under this JMP_NOSPEC
will wander off into the weeds.

This is why none of the startup "jmps from weird contexts onto the high
mappings" have been retpolined-up.

~Andrew

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/5017a6c5-55fa-0767-b1ed-2bd9e2a5efc1%40citrix.com.
