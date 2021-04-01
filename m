Return-Path: <clang-built-linux+bncBDK45E6X7MGRBI47S6BQMGQEDWOEHWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 35FA4351559
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Apr 2021 15:50:29 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id i9sf3658859pjz.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Apr 2021 06:50:29 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1617285027; cv=pass;
        d=google.com; s=arc-20160816;
        b=NrReVH0lLIHERsByvnlimruwl5hosdKH+uoyf2HMoaCemrTauRMBKc4eZkuYddrMm0
         lggct5Hs0EIXQSQLLTySq4YKEO6SgQhYCI8OuvQQTA0TJMHCoqk1MKJt62xoBVFJ52QG
         BhAU7fmhTLtqT4HUY0YeaYj5OMkPTrK3YYZWykviEQaUbYH8fv+665Igccmmlx/XFR46
         AnvPPV1gSp5vPL+aKHI2Fau8KhZBDdW746NQADbA3L+hL0nYCsW5jr6QjOFe1pxrijky
         BioGxYCL5NokUXFzSE+T7/QCUyFucVmGswqUVqJMUIbW602YwWzSI0aA/xdWUD15K02W
         ZxdQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :in-reply-to:user-agent:date:message-id:organization:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=GtMmPTRheGmYIQ2VTwVTMc/z9Jfb9qLk/P+pP4NuRsM=;
        b=pf+cTOGXZzP5gAfSFNRZUWhVkc2So1tNDRWtabiTE5Q/rDSy6agm3WSb5nnCjSPxIG
         hhDkcVdyvPmM9PG+Bxltp+gWNm/i73oQxXHGkb27lFnVFGDaCuv57dEUzmDZyL8BnH2S
         Rm+aKScDCDbe4WpF70FBCd8MZvgAIp+ZauOvUXrH8zqTnuEyAuzBKdOsI/kqKce7RB5j
         guF97lAs4sn4BLUVvgnUIcoGEAPkB4S5A01gqbTZYwqcftooTVJSv0BLMDcaZexwqEeQ
         25zeeWMzHkWeUuto7FgE715FX7P1MQyW4NhNqtNY3KW/4BcUw4LU4Q5nQKh6I45RfeDJ
         xdwQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=Xn+Vq40X;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=iduzPdrg;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of elena.zannoni@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=elena.zannoni@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:organization:message-id:date
         :user-agent:in-reply-to:content-language:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GtMmPTRheGmYIQ2VTwVTMc/z9Jfb9qLk/P+pP4NuRsM=;
        b=QwMcCljyHaZa2qGpAn0/CbMKzcb7g8CMZkl58RUPwR3K4Eum3Cyu85p3E/ee7G3riH
         Kt8DCCQBBHq2FRGYb0rgFKVFk0zxJ4/EWDmAKCOTJCr7537BcRsbV44YH4/V+OzNVAec
         7lB4TbTlKcwXwVBKIZd59W0jeFpO6o1pKGqmPZcfJnP7bZxfN3dyoGUY6O5l/bRsGKzn
         qLv5mclM3iRCqTxxbhaHKAepY7vEihI6NeNWPz3DzO9wZ1zaT72jhJZNjr5lHJGCjPxX
         dWfxKjcSQDsyPOH1lQdm7otlE/5nQkGxDngdXYrn6R2UfWeTRGxlfoFrYGC0RpztTD5h
         VRmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from
         :organization:message-id:date:user-agent:in-reply-to
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GtMmPTRheGmYIQ2VTwVTMc/z9Jfb9qLk/P+pP4NuRsM=;
        b=D8+gwQiugQLgWvnDNn28uIXVtXPppDwx73jwaQCXmcOQSJuxbqBpgI4QdJzIPR9nQK
         NDkHul46HsUm3UhaaRD1slYR3Z2FT+kBoI9vebKb1ayjZvDD/TO/NPywQDwILKpWjSfA
         2auqrkqSRFEt/T9KS0uBaUglMSW9924ZvK7Tv5iFepy3dd1Cn0MdtJuxkqJIXXWJo35F
         o1vfT19ngi5xvbEzY0XZVgjmHVeVte8qLkTN7lvKsEkHGIK6SoG99Mmz10NwKyp6kPDb
         EVAfPwBgovmbjHgPp5EE9RNVsfwU3tFnvEpjxhLJqFVUONp6MrwWyJ+NvpJBaRcFXUnh
         08NQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5320CIu0dnzZWNYHv9hEtblnNTu5TiO/11uuddc9K0eIJKcejB1Y
	NOkhoxpEwuUDgydqm5CQpJE=
X-Google-Smtp-Source: ABdhPJwQKaAEBU+lCVCs7cZ0IUKzE6pArl7Hd/qetNyizMO5kI4ypDucD1U8cSEW+Kr/LV35tanJXQ==
X-Received: by 2002:a17:90a:f40c:: with SMTP id ch12mr8962993pjb.176.1617285027690;
        Thu, 01 Apr 2021 06:50:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9acd:: with SMTP id x13ls2417758pfp.1.gmail; Thu, 01 Apr
 2021 06:50:27 -0700 (PDT)
X-Received: by 2002:a62:2742:0:b029:222:b711:3324 with SMTP id n63-20020a6227420000b0290222b7113324mr7631582pfn.7.1617285027092;
        Thu, 01 Apr 2021 06:50:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617285027; cv=pass;
        d=google.com; s=arc-20160816;
        b=QZ1vzUPvVr8GdhvB7aPl8+zbI51Drn49fyfKPUo0DbCIeu7n1aBODPCVqK0xw8FvbJ
         M5dtvmalzr1DQTutHl8rx6Cii97uy26GB/3CXgA4DYIMftRl43cuS1X4pkgG4njZD46v
         3ijj7d97BDYjUJ2ZL7IFkzgUJcDL7RIFedjzhts4Z/qQ+4VLf3krMz135RH4OCc22/sB
         HUlvCPGO3u7vI++k5wUFnxHlNNmwY5j8gy4fpr+lo7g8m87gmujKJI9t+loDGbuKZ1nw
         0ddUipGfOqz3qTUI72E8aGLiHqSv8qo4lwM086Nv4geHP06OW5C+BGDNn3TrKA2Z5KCW
         Wbag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-language:content-transfer-encoding:in-reply-to
         :user-agent:date:message-id:organization:from:references:cc:to
         :subject:dkim-signature:dkim-signature;
        bh=xMva5WIV17Efjw5nU4YdgVbH8ZAD9XiIIIW/znj2LRM=;
        b=W3NeNCjD503aXagJK9M+ETCRJlhJd9oZ9F8NSUEaswrK6ewILZgb0OhoJwKenT3IC3
         LTQ+CrwAGUqlQ8V46nyI63Aid7v6nujOthtSsYJcIWRJpbuF8XsWItuG6d1CZNOBipyc
         jYxmOV2TxKguU6c0/+YiVtmeEhB1nfA2u3oqmNelKuz1vmB6HZYMq7aSQiLLC1INB2aO
         8VZXCuoB0Hue6R0NhUsbr2OY+2E4rz+R90S0d0NfnjhuxtMuQO3ZqT3S4Fy8P/f4b6GL
         Gcw/VVu4+BihS9h1l1a8XI44wyll2nrKEQ1vsb1g9nc+DwaZ+Q3R3oUAPGf9O6VEzXQk
         2dgA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=Xn+Vq40X;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=iduzPdrg;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of elena.zannoni@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=elena.zannoni@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2120.oracle.com (userp2120.oracle.com. [156.151.31.85])
        by gmr-mx.google.com with ESMTPS id e15si417773pjm.3.2021.04.01.06.50.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Apr 2021 06:50:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of elena.zannoni@oracle.com designates 156.151.31.85 as permitted sender) client-ip=156.151.31.85;
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
	by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 131DeWNl100827;
	Thu, 1 Apr 2021 13:49:49 GMT
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
	by userp2120.oracle.com with ESMTP id 37n2a01vb8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 01 Apr 2021 13:49:49 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
	by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 131Djja6007569;
	Thu, 1 Apr 2021 13:49:48 GMT
Received: from nam04-dm6-obe.outbound.protection.outlook.com (mail-dm6nam08lp2049.outbound.protection.outlook.com [104.47.73.49])
	by aserp3030.oracle.com with ESMTP id 37n2asae94-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 01 Apr 2021 13:49:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Qk+qXNT4hOl9MUYAvPgDJetcvXakONp3LDHlIp40uxjrmuuM6vd4E7ulBLEKXOUlwRB5wyoEqobnuK63yiRY20+MZGEQkf+eXw2VJivALzExSQbrMoWZlLwiQB7hVwoTiNUStYFv6D1pBzP5UvP0flOZpbdaq4tbsRfWTBc7E59EfdE9Tp+QWSeS/A9MIA6RJywiJBX2Tig4JxqnmtPtlDI+K+tAGYx+8gCX5ZjkjMR0x6Xkl4rnbGZq2wnpImw4nS0Wkqi2UrJ3VlswKqdbCPZUTdbSb2g9aqMwUP1sXasHD5FMUmK0tZttO4k3/0eEDHWsX9TFxBehdWsyTLlCNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xMva5WIV17Efjw5nU4YdgVbH8ZAD9XiIIIW/znj2LRM=;
 b=E9ZV7W0LZChS/EfDVMtfvUjzOiTx4R9l5ijIsLHoikEGpdQ40jwDrypaT82bV2s707zK+FH4Qa0KBCLmO74YArp/+zecJN0CkmPTy2pZp0YGcQs+2tUKA7b/2tAJXIxXw7+903fvB9nvZAgB+8RGMUQ6N8zVWUVuGumYAff1PZ+8mwBSOLIGnk2fa6ZLoK4g+F0XRPHUXO1mPIYGAkyNj1Wi1pZJEaGRCv+YK3dQibxf47jrloUMiaGng02iEqAV4XMs72j+YdUNC71UBv+i9wR2arl91qgI4Ep8PAyJOFsXVnFTJaG7jjqJiv1soA+15ajpTAk+d0Be3g1RKMxQcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from BYAPR10MB2646.namprd10.prod.outlook.com (2603:10b6:a02:aa::19)
 by SJ0PR10MB4781.namprd10.prod.outlook.com (2603:10b6:a03:2d0::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3999.28; Thu, 1 Apr
 2021 13:49:47 +0000
Received: from BYAPR10MB2646.namprd10.prod.outlook.com
 ([fe80::78b5:d2e7:4675:a122]) by BYAPR10MB2646.namprd10.prod.outlook.com
 ([fe80::78b5:d2e7:4675:a122%3]) with mapi id 15.20.3999.028; Thu, 1 Apr 2021
 13:49:47 +0000
Subject: Re: Plumbers CF MCs
To: Steven Rostedt <rostedt@goodmis.org>,
        Nick Desaulniers <ndesaulniers@google.com>
Cc: "Jose E. Marchesi" <jemarch@gnu.org>, linux-toolchains@vger.kernel.org,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Kees Cook <keescook@chromium.org>, Florian Weimer <fweimer@redhat.com>,
        Christian Brauner <christian.brauner@canonical.com>,
        nick.alcock@oracle.com,
        Segher Boessenkool <segher@kernel.crashing.org>
References: <CAKwvOdndc=ej=40WktFz0t083pZJcdX1tipuWoTvAw=JC8b3Aw@mail.gmail.com>
 <87o8fa3oua.fsf@gnu.org> <403153ed-7953-c42e-40a2-6ad313acd661@oracle.com>
 <CAKwvOd=aCn9WqcZe8KgvvZmW0C0nUVL9+sjE_xh0A-ru-995Hg@mail.gmail.com>
 <20210401092935.43d3ed54@gandalf.local.home>
From: Elena Zannoni <elena.zannoni@oracle.com>
Organization: Oracle USA Inc.
Message-ID: <fd5d8059-69ea-cc6f-d8a6-0467906235ab@oracle.com>
Date: Thu, 1 Apr 2021 07:49:44 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
In-Reply-To: <20210401092935.43d3ed54@gandalf.local.home>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Originating-IP: [2606:b400:8301:1010::16c6]
X-ClientProxiedBy: BYAPR05CA0036.namprd05.prod.outlook.com
 (2603:10b6:a03:c0::49) To BYAPR10MB2646.namprd10.prod.outlook.com
 (2603:10b6:a02:aa::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2606:b400:2050:24:8000::597] (2606:b400:8301:1010::16c6) by BYAPR05CA0036.namprd05.prod.outlook.com (2603:10b6:a03:c0::49) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4020.9 via Frontend Transport; Thu, 1 Apr 2021 13:49:46 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 09a01846-e580-457f-5daa-08d8f515030c
X-MS-TrafficTypeDiagnostic: SJ0PR10MB4781:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <SJ0PR10MB47812352BC5AEC80B6A468F09D7B9@SJ0PR10MB4781.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0/aPIe/JP1oil7G3LjYP+2T9N8BULEmq5IeCJiL3VVNmIX70/P/byV4UfY23ksjcWJpmFVrOGQJmBSB/ubc8cnF0uEuTomjiiqsbHpMnj2GiYyd7q4CKias2lNXgi2TwhyC8XK65TeSBFh5NlUiwoIrH+LYuPnbpfj6Qukei/Tui2wHTCQyGuqBTMTy09MEQGHj/d70HGYNanUaqB4bwJGlwLnlv1Exa2y+Pwj697v9QgggdWGiYvXsY5x3V//RSR1oPn03KCLp21S79HnSlgA1gZmkm5SN76Tk23qNPuqL8kGfs1zv43JIitQYQENopvJsJHYc6OyCHazf787gsBlVqk5D+lio3ma9HlYaf+z67FrTSLSD3lp0hamCDW8eAFvQU2YaykxApl2fEpqpLDVDT58KRQsyG3eUckHG1atzkP5UrwCoJDGylgP8SuN35ySJNXYLRofetBJCxhYHw8joB4bC3f0RwQFg0cxbjQzgwB8Gnv1aBJbkJmr5ZHI0EDiKpdAmttW6h2ppDNM9UXVu5AcgIslEUvRidfvnWsJZeXwiI5JKD7JJOmoxTVbT46MZIhLsFIdFJZ+F23CKysh0xo3FKd8NhEI+IYJpDpeKS33I6rOjDaLSKyWIkm1h3xBCXtyG29cXs2t0lx6GhaxvZlY3CfJZFhJYoQzSHgMQymwB0G8oXRdFBM1EZYl487f/O7WzkMgUvfdfWQGBlYw==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR10MB2646.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(136003)(366004)(376002)(396003)(346002)(39860400002)(36756003)(16526019)(186003)(2616005)(6486002)(31686004)(4326008)(66556008)(478600001)(316002)(66476007)(54906003)(2906002)(44832011)(53546011)(8936002)(3480700007)(31696002)(86362001)(83380400001)(36916002)(52116002)(7116003)(8676002)(38100700001)(5660300002)(66946007)(110136005)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?NVVYNCthL3FGTVEzamhCMGFia0YvVmtENjZDcklmcGRsWTNSMDlqZ3JCNGRW?=
 =?utf-8?B?c0VWYUNySnBrdGJwMHpHM21aV2VHWGQ5aEFaVEs3dkFyT1hyYXFzVTFSaU1i?=
 =?utf-8?B?V0ZJSGFqS2NqNnRBcjVJU1UwM2RUeTN5Y0xNd08rUG1RMkl6UEg4SVdkOXgx?=
 =?utf-8?B?ejQ5Qm94amNqM1lWUHIxaDhuUk9JME4xUjJuMDB5blR0a0FSOUdzbGd0L0JC?=
 =?utf-8?B?cVlYTlNjcWhnb1V3UzJqZE83U1dKbTgrUlZUdFdGbk1XeXRWNit6QlltaW1L?=
 =?utf-8?B?UDVVek1LQkZCdUtXUUF3eDc3NVN4TjVZU2ZIV0pwd2tsSXZKZHBIbDNYM0F6?=
 =?utf-8?B?UlM2azFqZWZLdWxHM1ZxWFEwVWZUT3RUcldTbVhjUGZ1WWNWK3BvUkJxcE1Z?=
 =?utf-8?B?ME1Pd1ZJdkYzQ0JrQU1raEZIQzF0OEFjYkVyektCdjh3aXlUUksyU2dOTVcw?=
 =?utf-8?B?SDZWZkh0bjZwdnBLeFNUWURtNnJuMTNBQ1ZZcFZ4VkN0QTVlRkhxRFRoNFhy?=
 =?utf-8?B?OExVekk5b3RhdTMvNFM0eHFCbUJPajZqaXhmcVlHS3orNVBCT0d6cnJRZ3l1?=
 =?utf-8?B?bGxmMDBBN3JrV1R5YkZJK3BzUDRxRWNkL3hNa3FDSUxQUjU0b3R1MmlzTGhk?=
 =?utf-8?B?K3ZjYXRDVzZqRUJLVktIMVBSc1MvZ1MwNnZDMUhLeTkrTEw3SGYwRURnbXJ6?=
 =?utf-8?B?TXRROENySjRwbWppTzBrOHA5aThIY1o0T0ptYW9IS0VUK2NORmVlNUVuMVdT?=
 =?utf-8?B?ck9yZGxCanZIblhucm90c0VrOUJIaDBpdlR6NHVINWRnTGpKcGduRzhDSkhR?=
 =?utf-8?B?NURkck12bDFjb0NDNkJUMCtHTDlPVnRLZHM5WjJIVkNPOFhxUHR1cUpjU1RK?=
 =?utf-8?B?RGtjZlNpSkdxdnJuY2xCQlBRSThnd0NtMXZxY0tRN00vVGVVK1lkRlFmajM1?=
 =?utf-8?B?Qk9yb0pvdnNkRjNuVHF3amd5dnN0bHJsREJ6MnNmYmlmZ1lqNDI4WUpqbUdJ?=
 =?utf-8?B?cng5dm9oVGVYMndqWWNGN2R0V05VV3dSK3VhMFZrM2NXdmdGeDhDRXBOSEJD?=
 =?utf-8?B?TTRDdld6VHI1SldsTVE0VTBHWlV5L0p3cUZhRnRiTUt4Mitrb2ZqR0oycnFp?=
 =?utf-8?B?Ync4Z1FrVFVoWWRpeUptWGh6UG4raitJZlhIdEo1a1YzckRWM1NTV09rL2pl?=
 =?utf-8?B?VUZoRmFraUU2VTRxa1lxRWNwekVhTklLcVVwSjA4UG9ETzVwN01EVXJLTWdR?=
 =?utf-8?B?RDBVTGJPNHl1V2ljL1dMV1lCblFOTmwySWgwc3RTRHQ2UUZ4V0dja2k5YWZ4?=
 =?utf-8?B?cHJEOXhwMVFFVGVEMjh1WlM0WW9tQ2k1L0FPdFBOTXgzQnRYV0N6VnQ0VDhQ?=
 =?utf-8?B?dERlSXVvSUNPcFRuMi9UWTk0MFZKR2IrazV1RHlDVlh6VG4wOVE4UDNZbGlH?=
 =?utf-8?B?N0NIc3dNYXFlMHg3ZzZiRnJuRzY1T3pMNVBzNENTY2JUemxYZzgzdjAySmhP?=
 =?utf-8?B?cUhuTXVDK2VzWXVPSWwyOGR4dnhUK2dQZjJNbUZRRGsydTVpdFJWMWRwRGM1?=
 =?utf-8?B?c1FxM2NCK0I0L3gyd2c2N1FmZzl5bmxUTDBjcFdtbk9pN3lMSyt0V29malBx?=
 =?utf-8?B?WWtLU3ZYa2ZLUUtqWmR0cVQxZGxkUExjSDhMU01iMHRDWEJFdDVpQUNPREt2?=
 =?utf-8?B?RHgweWloUTlGWjdvQWwrcUNuUmtPM3hoNXN6UUMxWCt3bitQVlBKS3owUjRQ?=
 =?utf-8?B?Q2FvaGp1bUZYZHkyNEI5a0ZsMXRRVHpuN0gwZzNhYjc1emlQVHhVSDNSbW1Z?=
 =?utf-8?Q?aHr47BKr1ZQy+WV/VJy6r23iTdfRz2XFEj7Yg=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 09a01846-e580-457f-5daa-08d8f515030c
X-MS-Exchange-CrossTenant-AuthSource: BYAPR10MB2646.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Apr 2021 13:49:46.8894
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: U3/qjwrtzeNjiOdZxUTUkAZZ7J6NOmFE6oc+V6g/bDnpedXhM/Cj4RBopnVsZR4PIWne+Ib/B4j0e5Qpq8DJ2teK2kP4YBvmF4sVLTXGxdE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR10MB4781
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9941 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 spamscore=0
 suspectscore=0 bulkscore=0 mlxscore=0 adultscore=0 malwarescore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2103310000 definitions=main-2104010096
X-Proofpoint-GUID: QV8ACRXMXC4tgpCGf_1dD-ZMSEoOu_X4
X-Proofpoint-ORIG-GUID: QV8ACRXMXC4tgpCGf_1dD-ZMSEoOu_X4
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9941 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 impostorscore=0 adultscore=0
 clxscore=1015 mlxlogscore=999 phishscore=0 bulkscore=0 priorityscore=1501
 spamscore=0 malwarescore=0 mlxscore=0 lowpriorityscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2103310000
 definitions=main-2104010095
X-Original-Sender: elena.zannoni@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=Xn+Vq40X;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=iduzPdrg;       arc=pass (i=1 spf=pass spfdomain=oracle.com
 dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of elena.zannoni@oracle.com designates
 156.151.31.85 as permitted sender) smtp.mailfrom=elena.zannoni@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
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

On 4/1/21 7:29 AM, Steven Rostedt wrote:
> On Wed, 31 Mar 2021 13:36:03 -0700
> Nick Desaulniers <ndesaulniers@google.com> wrote:
>
>> Steven, sorry if I missed it, but can the conf organizers pick and
>> post a date for the deadline for Call-for-MC submissions? This might
> You mean for MC topics, not the MC itself.
>
>> help MC organizers plan for putting out their own CFPs, and planning
>> deadlines.  In our case, it would be figuring out whether one day vs
>> more (if possible) or splitting the MC in two is necessary by the
>> deadline.  It might not even be an issue at all this year, but I think
>> that's the only concern folks have about doing a single
>> kernel+toolchain MC (vs split like last year).
> As I replied to Elena. We don't give out double slots when an MC is ready.
> It is only given out if they are slots available after all MCs have been
> accepted.

We have been taking requests for double slots at any time though.
Putting them on the schedule is another thing.


> Since it sounds like there will also be a toolchain track, I don't see why
> you would need multiple MCs along with it.

Just like last year the toolchain track would be a substitute for
Cauldron and it would be a completely different thing 100% focused on
the toolchain. Here we are talking about discussing topics of interest
to the kernel as well. IIRC last year we had a llvm toolcahin MC as well.

elena


> -- Steve

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/fd5d8059-69ea-cc6f-d8a6-0467906235ab%40oracle.com.
