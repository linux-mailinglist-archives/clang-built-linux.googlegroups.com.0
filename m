Return-Path: <clang-built-linux+bncBCFIV7H5YYEBBSNNYCFQMGQEXL6XWSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 12184434BE7
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 Oct 2021 15:16:59 +0200 (CEST)
Received: by mail-qv1-xf3e.google.com with SMTP id s12-20020ad44b2c000000b00383ab64e632sf2715294qvw.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 Oct 2021 06:16:59 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1634735818; cv=pass;
        d=google.com; s=arc-20160816;
        b=O3+RGRZyxBUApoSUIAyiAg5vkjRDtksgHJZbfmEmedo6sImpToU58N4sCdYrB5L0fK
         OHgcCwr6UC1pY0YkeIyRKL/Oh3F28MeJXOe9hxdFkKBzOIbitWsfVQu3bQd47MNAI5W0
         ar9canswAnnopx+yQvfVL9fAidE2upRoGaxwnhDovkmnasRsSowU/veWtcApjGdlwa+p
         3dHzQl+Lcez6O1Wwt0qsoCXeGf6cg7jjrj0sVUdFZDz3+T6kA/gveyhLCgbpN0/Er5Gy
         gcDdjasM9/SqV6wQPB9AjLUdPUwQDVgQ65J44zVymr/tmSv4dcfvBvHKYg+C+P8XcCwP
         LOHA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:dkim-signature;
        bh=czI4kFBdnv0gpDFb+uKMuyHUhsx5PP3GTDGSZW9hSWc=;
        b=X8EJ9RKji1Dox62aNQbMzZJLv2hyTBnMSsas5K3YCBcxJJqipe+2eiIjpoGwGjH6iS
         cbM+8F1idTkddhJauDCkunHP/fOfbI4Yox+UC/rc9GGk+9LnPSMrWcps1UVIx7pMFVFS
         9D23mXnO0gDxBjIDXDEUuyR4AbS2c/IC08ERH+o5SczbF2e1KZIeVC9aVdpN88JBGBKJ
         65WU5gLaWgRGkB5ua8R9B1GAnofannecHhr5AO3NAvaTravVUL8khBHkYxbxi+pK3jER
         60cHtq0HlU6Xc/ozv07DkZ1ZciBP5Yc+7xDM0u8p1JWwBwZsee1mMLRotnoxQYnGe7us
         pxvg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b="t6//6+Ui";
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of maximmi@nvidia.com designates 40.107.101.53 as permitted sender) smtp.mailfrom=maximmi@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=czI4kFBdnv0gpDFb+uKMuyHUhsx5PP3GTDGSZW9hSWc=;
        b=r1e5y/cCBmFlv9HpE3TM8V7ChRzKQ0vMXbc0AmUvA9d8AXH4Lk45mAatoKIUUIDsLU
         6D/rwGmpKK1sMNAr5V849NknzG8Gn/qd6bHbG4aRY2iZMmSynfMrPTiXHqyxo8yb2RMV
         jGEL6b358U3sDyRjt+oROhEquKoiOY7OkT+ufac94pGFX9u+my5MMys4aU8MUdagB5sX
         qnyYH/2sDJQUbWkX6haHOdj9fED0IEkRdb3LipytWLyE/k79wOhCwBjd3JGd3VZrTz/S
         ODIFw/FCZwGoPVmSnYg+iz4LTc29/jLCdQDRNoYHoUWp4AI2tr9ljAqBLA70GeH8uP8D
         SDNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=czI4kFBdnv0gpDFb+uKMuyHUhsx5PP3GTDGSZW9hSWc=;
        b=Wh9/+mX/87Y1WlWaqSfCpLbT83tYRUCE3NVmzCsS3QudFtUvUa2n7NcKjQcCKDNon3
         cuNMOB0QMCQghXVGYexPzJTDI9gZu7FxGXzMqNEU2hKtetxpiYfO4/n8OH+WAiskRYkY
         SFQ/ZPUlfi9NkZidsX2GSkN0nzmk2422BCO8cQBRphWYMyvlj63tPpheWwTjK2r2MGN2
         NaH9oRLjsnH+Du/5XcMW+R/15QRapwoKqcB24Z5+1zhOzpwi4BkBgpmdD4YzZcGIRrHD
         f5xLaQN5wf9etg/t82trDM0eSmgNA9HHBceEsp+nwYPbdMHJ4iprP67WKa3mJm4b71fp
         4uVQ==
X-Gm-Message-State: AOAM530CtDc3TfzIleaVOLAuXrM2h3y+e+1G+rR9Oy/Md7iURbbsuhmD
	GQHNkaIdYrfHaJ5EZ64TC7o=
X-Google-Smtp-Source: ABdhPJwQDoMP3R8f+IJNYk9vKsOsdUbh0Kx63t5EaNah0HUAqsK+FVJ0hKdyZzi1FwSYjh4TI6vFAg==
X-Received: by 2002:a37:b147:: with SMTP id a68mr5321359qkf.157.1634735818108;
        Wed, 20 Oct 2021 06:16:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4147:: with SMTP id e7ls1172088qtm.9.gmail; Wed, 20 Oct
 2021 06:16:57 -0700 (PDT)
X-Received: by 2002:a05:622a:1484:: with SMTP id t4mr6709702qtx.368.1634735817564;
        Wed, 20 Oct 2021 06:16:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634735817; cv=pass;
        d=google.com; s=arc-20160816;
        b=zCilWOodGwAbZlIq5e4U8bkn07/a58o0eHFnQfkOFxTGlRexcB4PgpAHV/yzoBNnCN
         327LOwzJakXkTJU/v1obP0R6xXZlXy+/GpQ8OHB1ZbrAp6l+oIV/0yZ6Cka+4opp0SHX
         D7GVB2JOJ3hNqdnhhYimQ755AFSO1T3ZNI2nQ3KUUVjcoDLVtUzzo4YVvzop1lK7tpCd
         oLB32H4k00V8Rg6HRC7gio2vvTIm/pJ0zCHC8zh68gt1c6zOoAsx7/fYoi4BEB26A23F
         eYVp1FrH1qvkXlEI25nLkswgAzy+P8t/2loKX0LCc2tUwSlMslXq0pKnt57cKrGh/iKM
         A70g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=aedsBFPY/af84sZ7cmSgusDuEEjOQtOAENIbNgnIds4=;
        b=tO9SvqUZN4ZjdAeXeEW5cdDpj7xnvtl/GM38DCJf37CWcb1uD02FgX4c7ZNpiMAvJx
         cbB9fDYCjGYZMyc8jZQleDdBvQyhOkuMCX8MpulSsIEu6X7RhOMi44J20Kc1mjJzfWtE
         iSnzyd24r+AKfQLk7ao4Zs+BP2NGf3LGrRJjg40zabbTwL17hsVxHxiOhMTGBcvb3o1w
         /UShkjn+vcOzt5cJPGEPa8np8lWjO2jmQCbpayWYrBHlB7l4aXf1lQUy2cHo7ANUqLGZ
         QclIQvHJJrvUJnVHrL6ywpHzKpLlOKFIBl6ZOxR5ostoDAO6f9pT+5YdXzX/T5WcTqzU
         Sueg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b="t6//6+Ui";
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of maximmi@nvidia.com designates 40.107.101.53 as permitted sender) smtp.mailfrom=maximmi@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (mail-mw2nam08on2053.outbound.protection.outlook.com. [40.107.101.53])
        by gmr-mx.google.com with ESMTPS id b17si226941qkp.7.2021.10.20.06.16.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Oct 2021 06:16:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of maximmi@nvidia.com designates 40.107.101.53 as permitted sender) client-ip=40.107.101.53;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=McSLMA6Kuemz0vOQCWsTK1V6n4TNNQdmp5PuA7BgTlG4L7gksgwSiT7wQz0F9uBnyt2gn05cbYP1+xDGm7pH3dWZ1vecG3cMkqIyvUtijbnZNC79nzcBvIzRiyoOAtc9+wzQtUe4gGq4ToiDeDe2nc6gV+n3pz9dzg8no/C599P/7oVWlICBjB76paG5kOq0zjcCFQRE2L1a/Lm8bgXFQcaY/zABAzQ67SMVZCNMFaaa6geSwa+xtk63KxIF9mqwGnskZo7Mx0mBF9herhNK9kC2jNniykROnuEuD1Ccx3SWU5leTTvgEVeg0AP0piCiWg9dHVjqyUMrrNp4y6UDQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aedsBFPY/af84sZ7cmSgusDuEEjOQtOAENIbNgnIds4=;
 b=dkxj0zFnTBe0QtoBZ9dk2x+gTyyLJnOk5Kmtnko+OCHNtT8s9gswS4PYxkax5cD8EDCTQ/pM41xYvGVGLqlhhdRa+ATBed1SFUZuayeOPuup+qEkE/0rJw53mHd4L1lPj9BwPD+S1AQasU53fkQBdfu65rKrSgI4gqS3fTsL15mDFI0fky3Fol7GUPo1rzaXl7x4n/yK3eM8mQc5797AF4p/L+8CeBb+uA0o/loegHzKKt5TZyQKQf9Y2J1FdB+raKDKF9JkqErLi2SjxTPuiNyZxee40kCWABcFdFUx4L5XND/xK6eUpixhuocqrWPfmsg0a6OS8rTusgDb9KFRqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.112.34) smtp.rcpttodomain=google.com smtp.mailfrom=nvidia.com;
 dmarc=pass (p=quarantine sp=quarantine pct=100) action=none
 header.from=nvidia.com; dkim=none (message not signed); arc=none
Received: from BN9PR03CA0436.namprd03.prod.outlook.com (2603:10b6:408:113::21)
 by MWHPR12MB1406.namprd12.prod.outlook.com (2603:10b6:300:14::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.18; Wed, 20 Oct
 2021 13:16:54 +0000
Received: from BN8NAM11FT011.eop-nam11.prod.protection.outlook.com
 (2603:10b6:408:113:cafe::5e) by BN9PR03CA0436.outlook.office365.com
 (2603:10b6:408:113::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.16 via Frontend
 Transport; Wed, 20 Oct 2021 13:16:54 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.112.34)
 smtp.mailfrom=nvidia.com; google.com; dkim=none (message not signed)
 header.d=none;google.com; dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.112.34 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.112.34; helo=mail.nvidia.com;
Received: from mail.nvidia.com (216.228.112.34) by
 BN8NAM11FT011.mail.protection.outlook.com (10.13.176.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.4628.16 via Frontend Transport; Wed, 20 Oct 2021 13:16:54 +0000
Received: from [172.27.0.234] (172.20.187.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1497.18; Wed, 20 Oct
 2021 13:16:37 +0000
Message-ID: <73133203-ccb7-f538-7b02-3c4bd991e54d@nvidia.com>
Date: Wed, 20 Oct 2021 16:16:32 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
Subject: Re: [PATCH bpf-next 04/10] bpf: Make errors of
 bpf_tcp_check_syncookie distinguishable
Content-Language: en-US
To: John Fastabend <john.fastabend@gmail.com>
CC: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann
	<daniel@iogearbox.net>, Andrii Nakryiko <andrii@kernel.org>, Martin KaFai Lau
	<kafai@fb.com>, Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>,
	KP Singh <kpsingh@kernel.org>, Eric Dumazet <edumazet@google.com>, "David S.
 Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, "Hideaki
 YOSHIFUJI" <yoshfuji@linux-ipv6.org>, David Ahern <dsahern@kernel.org>,
	Jesper Dangaard Brouer <hawk@kernel.org>, Nathan Chancellor
	<nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, "Brendan
 Jackman" <jackmanb@google.com>, Florent Revest <revest@chromium.org>, "Joe
 Stringer" <joe@cilium.io>, Lorenz Bauer <lmb@cloudflare.com>, Tariq Toukan
	<tariqt@nvidia.com>, <netdev@vger.kernel.org>, <bpf@vger.kernel.org>,
	<clang-built-linux@googlegroups.com>
References: <20211019144655.3483197-1-maximmi@nvidia.com>
 <20211019144655.3483197-5-maximmi@nvidia.com>
 <616f8cd0a0c6c_340c7208ae@john-XPS-13-9370.notmuch>
From: "'Maxim Mikityanskiy' via Clang Built Linux" <clang-built-linux@googlegroups.com>
In-Reply-To: <616f8cd0a0c6c_340c7208ae@john-XPS-13-9370.notmuch>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Originating-IP: [172.20.187.5]
X-ClientProxiedBy: HQMAIL107.nvidia.com (172.20.187.13) To
 HQMAIL107.nvidia.com (172.20.187.13)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 95aa3be5-e225-4387-3aca-08d993cbe2de
X-MS-TrafficTypeDiagnostic: MWHPR12MB1406:
X-Microsoft-Antispam-PRVS: <MWHPR12MB1406D640A2664D6595ABF34DDCBE9@MWHPR12MB1406.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9JW6uH2OQjgF7ZjDYl0lfpTEyekAWzuruEXPbe+IPTCRS9oBL7r2Nw5TXbcw0KhG3cJFD9LDmAfxmECpfM1X5xz/8TqacL+8qYbS1hd9AH+WMFPKKN6TCFwrBWOQ8jNj0Ef8bXveRY7UiSf/Secse4BCEtZWaZi41bpFFKxIcGZD+SOZVQCy7mdab6fvuOdANCs7bjTN0401SFvWlOsqnlqGgnqR1cnFoqBfk1NqfTnyA69gt9U575gzY70IWsuJdK6nq7FRNXoLxXiGRj0DM5UxBX9ZK5F9mWztqSja0QdTwRuz7zhfqYE1BF1J2fbV8cZ18fZXGSYL1iL8qPdlApFN1e+d89VMOe9EG4qWwJM8j8FoSRJIZ6RDbN+374QWq7FyPxugWJlgeNXuCgdXOAK6AQRHEeyhzpM+COVk7+GOAx+adVm5AD1fiqctg4i0QA2jPKfH6UqYg+HrxsKWq7owAJVHyLmQQZ4/r4HwzukEQJH+TNNcPJH0jobgLW37Yf1vJfQiocosab0dNZYVy7ZjXCTOatxrRnYbnPTNRMB7nZJHBZ8jW5I+xXmTxAOYWfREdCm2Tm4JgjpxjfjgLc53WtsEAdrfn7LyL9G+XfmkSZ8S+sHQKCuu3X97ccuy0omA8EXV5I7O+0AT0YRxprTuN0PNQeTs2bW3XFOtv2KU7XAGmLGX1+3Sfu/uITgR7cg5KwEtqGMjCUiioAsIWgHjctAV/o6Rr84JJkKfeyY=
X-Forefront-Antispam-Report: CIP:216.228.112.34;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:schybrid03.nvidia.com;CAT:NONE;SFS:(4636009)(36840700001)(46966006)(2906002)(8936002)(7636003)(6666004)(8676002)(5660300002)(86362001)(4001150100001)(316002)(31696002)(70586007)(36756003)(31686004)(2616005)(426003)(7416002)(6916009)(356005)(4326008)(82310400003)(16576012)(36860700001)(54906003)(336012)(47076005)(53546011)(508600001)(16526019)(26005)(186003)(70206006)(83380400001)(43740500002);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Oct 2021 13:16:54.1126
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 95aa3be5-e225-4387-3aca-08d993cbe2de
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.112.34];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: BN8NAM11FT011.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR12MB1406
X-Original-Sender: maximmi@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Nvidia.com header.s=selector2 header.b="t6//6+Ui";       arc=pass
 (i=1 spf=pass spfdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of maximmi@nvidia.com designates
 40.107.101.53 as permitted sender) smtp.mailfrom=maximmi@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
X-Original-From: Maxim Mikityanskiy <maximmi@nvidia.com>
Reply-To: Maxim Mikityanskiy <maximmi@nvidia.com>
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

On 2021-10-20 06:28, John Fastabend wrote:
> Maxim Mikityanskiy wrote:
>> bpf_tcp_check_syncookie returns errors when SYN cookie generation is
>> disabled (EINVAL) or when no cookies were recently generated (ENOENT).
>> The same error codes are used for other kinds of errors: invalid
>> parameters (EINVAL), invalid packet (EINVAL, ENOENT), bad cookie
>> (ENOENT). Such an overlap makes it impossible for a BPF program to
>> distinguish different cases that may require different handling.
> 
> I'm not sure we can change these errors now. They are embedded in
> the helper API. I think a BPF program could uncover the meaning
> of the error anyways with some error path handling?
> 
> Anyways even if we do change these most of us who run programs
> on multiple kernel versions would not be able to rely on them
> being one way or the other easily.

The thing is, the error codes aren't really documented:

  * 0 if *iph* and *th* are a valid SYN cookie ACK, or a negative
  * error otherwise.

My patch doesn't break this assumption.

Practically speaking, there are two use cases of bpf_tcp_check_syncookie 
that I know about: traffic classification (find NEW ACK packets with the 
right cookie) and SYN flood protection.

For traffic classification, it's not important what error code we get. 
The logic for ACK packets is as follows:

1. Connection established => ESTABLISHED. Otherwise,

2. bpf_tcp_check_syncookie returns 0 => NEW. Otherwise,

3. INVALID (regardless of the specific error code).

My patch doesn't break this use case.

>>
>> For a BPF program that accelerates generating and checking SYN cookies,
>> typical logic looks like this (with current error codes annotated):
>>
>> 1. Drop invalid packets (EINVAL, ENOENT).
>>
>> 2. Drop packets with bad cookies (ENOENT).
>>
>> 3. Pass packets with good cookies (0).
>>
>> 4. Pass all packets when cookies are not in use (EINVAL, ENOENT).

Now that I'm reflecting on it again, it would make more sense to drop 
packets in case 4: it's a new packet, it's an ACK, and we don't expect 
any cookies.

>> The last point also matches the behavior of cookie_v4_check and
>> cookie_v6_check that skip all checks if cookie generation is disabled or
>> no cookies were recently generated. Overlapping error codes, however,
>> make it impossible to distinguish case 4 from cases 1 and 2.

If so, we don't strictly need to distinguish case 4 from 1 and 2. The 
logic for ACK packets is similar:

1. Connection established => XDP_PASS. Otherwise,

2. bpf_tcp_check_syncookie returns 0 => XDP_PASS. Otherwise,

3. XDP_DROP.

So, on one hand, it looks like both use cases can be implemented without 
this patch. On the other hand, changing error codes to more meaningful 
shouldn't break existing programs and can have its benefits, for 
example, in debugging or in statistic counting.

>> The original commit message of commit 399040847084 ("bpf: add helper to
>> check for a valid SYN cookie") mentions another use case, though:
>> traffic classification, where it's important to distinguish new
>> connections from existing ones, and case 4 should be distinguishable
>> from case 3.
>>
>> To match the requirements of both use cases, this patch reassigns error
>> codes of bpf_tcp_check_syncookie and adds missing documentation:
>>
>> 1. EINVAL: Invalid packets.
>>
>> 2. EACCES: Packets with bad cookies.
>>
>> 3. 0: Packets with good cookies.
>>
>> 4. ENOENT: Cookies are not in use.
>>
>> This way all four cases are easily distinguishable.
>>
>> Signed-off-by: Maxim Mikityanskiy <maximmi@nvidia.com>
>> Reviewed-by: Tariq Toukan <tariqt@nvidia.com>
> 
> At very leasst this would need a fixes tag and should be backported
> as a bug. Then we at least have a chance stable and LTS kernels
> report the same thing.

That's a good idea.

> [...]
> 
>> --- a/net/core/filter.c
>> +++ b/net/core/filter.c
>   
> I'll take a stab at how a program can learn the error cause today.
> 
> BPF_CALL_5(bpf_tcp_check_syncookie, struct sock *, sk, void *, iph, u32, iph_len,
> 	   struct tcphdr *, th, u32, th_len)
> {
> #ifdef CONFIG_SYN_COOKIES
> 	u32 cookie;
> 	int ret;
> 
> // BPF program should know it pass bad values and can check
> 	if (unlikely(!sk || th_len < sizeof(*th)))
> 		return -EINVAL;
> 
> // sk_protocol and sk_state are exposed in sk and can be read directly
> 	/* sk_listener() allows TCP_NEW_SYN_RECV, which makes no sense here. */
> 	if (sk->sk_protocol != IPPROTO_TCP || sk->sk_state != TCP_LISTEN)
> 		return -EINVAL;
> 
> // This is a user space knob right? I think this is a misconfig user can
> // check before loading a program with check_syncookie?

bpf_tcp_check_syncookie was initially introduced for the classification 
use case, to be able to classify new ACK packets with the right cookie 
as NEW. The XDP program classifies traffic regardless of whether SYN 
cookies are enabled. If we need to check the sysctl in userspace, it 
means we need two XDP programs (or additional trickery passing this 
value through a map).

> 	if (!sock_net(sk)->ipv4.sysctl_tcp_syncookies)
> 		return -EINVAL;
> 
> // We have th pointer can't we just check?

Yes, most of the checks can be repeated in BPF, but it's obvious it's 
slower to do all the checks twice.

> 	if (!th->ack || th->rst || th->syn)
> 		return -ENOENT;
> 
> 	if (tcp_synq_no_recent_overflow(sk))
> 		return -ENOENT;

This specific check can't be done in BPF.

> 
> 	cookie = ntohl(th->ack_seq) - 1;
> 
> 	switch (sk->sk_family) {
> 	case AF_INET:
> // misconfiguration but can be checked.
> 		if (unlikely(iph_len < sizeof(struct iphdr)))
> 			return -EINVAL;
> 
> 		ret = __cookie_v4_check((struct iphdr *)iph, th, cookie);
> 		break;
> 
> #if IS_BUILTIN(CONFIG_IPV6)
> 	case AF_INET6:
> // misconfiguration can check as well
> 		if (unlikely(iph_len < sizeof(struct ipv6hdr)))
> 			return -EINVAL;
> 
> 		ret = __cookie_v6_check((struct ipv6hdr *)iph, th, cookie);
> 		break;
> #endif /* CONFIG_IPV6 */
> 
> 	default:
> 		return -EPROTONOSUPPORT;
> 	}
> 
> 	if (ret > 0)
> 		return 0;
> 
> 	return -ENOENT;
> #else
> 	return -ENOTSUPP;
> #endif
> }
> 
> 
> So I guess my point is we have all the fields we could write a bit
> of BPF to find the error cause if necessary. Might be better than
> dealing with changing the error code and having to deal with the
> differences in kernels. I do see how it would have been better
> to get errors correct on the first patch though :/
> 
> By the way I haven't got to the next set of patches with the
> actual features, but why not push everything above this patch
> as fixes in its own series. Then the fixes can get going why
> we review the feature.

OK, I'll respin the fixes separately, while the discussion on the 
approach to expose conntrack is going on.

Thanks for reviewing!

> 
> Thanks,
> John
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/73133203-ccb7-f538-7b02-3c4bd991e54d%40nvidia.com.
