Return-Path: <clang-built-linux+bncBCFIV7H5YYEBBTFVXOFQMGQEITHFBJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 60D7F433917
	for <lists+clang-built-linux@lfdr.de>; Tue, 19 Oct 2021 16:48:46 +0200 (CEST)
Received: by mail-pg1-x53c.google.com with SMTP id j18-20020a633c12000000b0029956680edasf11198090pga.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 Oct 2021 07:48:46 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1634654925; cv=pass;
        d=google.com; s=arc-20160816;
        b=MQ96MqoXk2ZgxsKQcMO6e5phTnhigNtdU6xKgn4/E5fgqnEa/PbKgCd9oaVkJoiDXz
         9nIFCbFPAEwWieDPH7cg5+jJfGAmQYEcJC8cGnflB9QjrTqGqpH70APMGoLHEWnETVAW
         fYdvFlcO9U97+d8Hb3UTuRMuB4hmJEu3EDel8otTYZNswKeyy+Q3goRf3Kkxbm99xMNo
         n49aQfJ7yvg+pT66UAVM9x49kxbZyPEohVCSqLk8dW4wHMe2YK+PCL8WdFqVrOeKL4LH
         yUPJtCq7Zqc7L2NvxMJt8hqvHjg/Era3irAqjNX/BqM7ZtJhLtFdW6s6SarlxyNsfQGK
         LRoA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=PZiLhTLA1e0kj4w/jaJY8FIgpi7AXfkF6dvBtJ2YyIM=;
        b=d6dHzEd7sDY6V12OtyrFuXjg7D3275VtB6TIsyxb2tGkKSZYz67vlPktSCqwxEDM6B
         y6CiwxlhWyuMjFExEVyBIWJlsgoI4OUagm6gzSTWaoLDKkFoUAH/ham4S8LejGiR6xsh
         VTc5tUGFjGiuO8XM+YdKyxKUTlaPYo2gmGkR1rJUlw64ZzpEMlDw6F8C2AujWwEEENWE
         RP8idAnJTHEpVaW0f8NdjZMr6gmSNihuXguzxXEEi8EBYPzyRb2jFzmIgCkslVdBXYWP
         t39VBhKk9Sfv+ouw/Adn0nA4HrU51fb+t9AWdiumrHdBA4GSL+iTc/L5WLzDuKVWWWrx
         0FGQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=ZSfImuaj;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of maximmi@nvidia.com designates 40.107.93.61 as permitted sender) smtp.mailfrom=maximmi@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PZiLhTLA1e0kj4w/jaJY8FIgpi7AXfkF6dvBtJ2YyIM=;
        b=sRsPBE18Qol8giwqHb+77aM4P13cCbSAOXcAn6zgBXSTivSK4uItDDOY5GtMZflTbD
         hcnex2FYRCTZrNbR45K8MF6nw1RiGi3zC1zGXDsLWK4FiBzhpe3iujZaQNs84n+0f8V4
         Rea3MyZohNDYWyHac3LVJ4I/A44Z7tyn0cAfQd911AgqBrgHyjb8LRtYw+51wxmkV1R2
         gSQOLnelpfMJ99QZoNDsjP/okgtcrl6PrJO2AehfQvXJi3peiQJhM7xS2xtsjujjwOaV
         PmOuDRCPImLgihYL25in6NqRpSAs6Q5tABm0fdiy87bEnAdXyafTAvQQPyu7YMxg2tzh
         3EgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PZiLhTLA1e0kj4w/jaJY8FIgpi7AXfkF6dvBtJ2YyIM=;
        b=6hDmmFQ/PGE+weaZm9ydz6yt5uz86eSgQKFvU4PRqDGm0he9QUlRXb9Y19cS7LYWvc
         3HeqzuB9khabsSGr/7tU8WX7FyvdOrlb2iwgqja+fj5iNHgumc4ZhCjY/shcAsXNkfgy
         /4O3DMdDLK9ffX/5zIYpQ8hoFWLFdqiAdLNhmFR8bQmzUFOCOlwykAqkzjENhZIvWUvN
         KUaJPT7GIWD6oT/5HCLzE4KpTijQDa4yEwqcpOUsNUmbN6YCewy+6C7pBMV2F6OWP2Fz
         G2UaUhaJIJ0Ypb7T6vwMchJpVxSR9joVJOHvBqXae0tEjT2Uurkmw7GPmOgvTm8gozZB
         7/0Q==
X-Gm-Message-State: AOAM533N1SHJc2kEiQILq2G5g3e0BGbhtiDZhUTOH3MwXwcdXqR5ZpuF
	TvVYzezb3RvNOMU3UMz+QnU=
X-Google-Smtp-Source: ABdhPJx+/2qfuZeJTs25kG2lOCm2vaY1s7MeB3Rl2DK41On6JmjiuN0mDPiZfYx7wGFiqoh9TIkbsQ==
X-Received: by 2002:a63:f84f:: with SMTP id v15mr29387456pgj.204.1634654925011;
        Tue, 19 Oct 2021 07:48:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:2f85:: with SMTP id t5ls1694228pjd.3.canary-gmail;
 Tue, 19 Oct 2021 07:48:44 -0700 (PDT)
X-Received: by 2002:a17:90b:4b46:: with SMTP id mi6mr347141pjb.161.1634654924192;
        Tue, 19 Oct 2021 07:48:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634654924; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZaW/Feqia6N9G1SDh8AdQqLaVx45jiO5kgO6OH9EJXTFq3TXj23qNjMn1L7qoW9zqp
         NrpMREP9JDQ7pJnXnxQRssDm1DOA4FeS+KH2srsyxURIbJBbAx0HdBp9eQGUH06lHviF
         7a22dMhBeN67Oj2LzhcyzEaDEsfvSYrV0N1VSTu85zYLPNCaEpe2VMGTG1+nrAwso607
         31Dzt5p4XV1nsHr/sdmZqPRUZGnFZfWKJKM/8aEnMRvjiEoIkaTTvZMqSEaWbLzH12l2
         JwnZ1wEW44ko0JPCkglTMhuAv0AS5e3SXIaV1eQC/5FiY9wTXtouCD/KgouOWFuoUPoN
         ZoaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=vU+B4qRP7qY0JT/OpCk4ACyeJG2Bkd0l++xjZupBqa0=;
        b=tS5cW8om67W5UOfWldXb7it0xf7N928JeUjAXeLnSEaxvsntyP5DxSI9Nk6XhZ0VS3
         1eRr4g/1LMEtvdqqlfCbQ0hANRgjc0jmuHLuxY6WaxDRHNl0cgcVfC0M8DpVhbsPykX0
         Xy8UI5eCVmLrUeRvAAjkBBeSQ7N0f45ySvxIf17Vk96dy+eFvfUs2sutnSEQQrd1ccbC
         pcoMYSVnJxuQS8K9bprbJ2ZzuNTj53cICA39ea9T/GALEtihoqo8sdyUjtJQcmFBVmGc
         YtTWH6qlu3HEo+xlOY2imrXfSZEocStaolj6b2asceePjMdUJ95G902tprjZmZbYZs1t
         QqlQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=ZSfImuaj;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of maximmi@nvidia.com designates 40.107.93.61 as permitted sender) smtp.mailfrom=maximmi@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2061.outbound.protection.outlook.com. [40.107.93.61])
        by gmr-mx.google.com with ESMTPS id m1si399062pjv.1.2021.10.19.07.48.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Oct 2021 07:48:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of maximmi@nvidia.com designates 40.107.93.61 as permitted sender) client-ip=40.107.93.61;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q35UOqMQMr6wdSec49kS/UcHTKZHWLZ8FZf/Cg/iZj0HCV1uLAkZuei3iD2kPyq0hAFly1oKha7UsQs+J//nZ/yqGD7mIX8riz0v4eMei7sjtAW+qQ5u+XlAn7j7DzPgBpK2HJ99HI+nr/wAQGJXZuTBQFFbdO8x8pNhRT86e4L88Qtd/A3KCsIuUpmkIoPuE0FW6LcAmxv7mTZCCDPJ2mNV28vRGSwOpRj5z9LEt3Ge0R4UWBEduewMwTiCw0IqUmVgNxrcOZRxFyYS5cyjtdCZ592DQzzEFVH6Oos1oEXsTeupgZzqUos4jQFRFEDV8AlB05Krx+YdpTBFdU6hBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vU+B4qRP7qY0JT/OpCk4ACyeJG2Bkd0l++xjZupBqa0=;
 b=ZFUrQYUvioB8Ps1XBy/9KWM/SU3fqSv3cjajeQHc3KZ/jQDlTrfLyGuvckIcp2vyH6UpLI5wkFkxdhDnsKCrYR103PS4dPypL/pU6ivcIHar/uc/8jrH0CHgE+mX017g1uzKeY59m/x9PKicnui2xG4WvedjxlbdayVO4AXsjBeWf7ExTOrdDRwmJkV8ovRTOcn47KpXvT570BHikBWzAbF6D9mTvRm0nVIiOxfK5fiRKvn4CkOniPaK5VUi4RPQ4e7xZahWnbdrFMZJbyD4i40cI15EeZQZbjx4l617w613y1F+FHovYTxFkUu/gxXskzh5rf262IlaVG/WO2PmFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.112.34) smtp.rcpttodomain=iogearbox.net smtp.mailfrom=nvidia.com;
 dmarc=pass (p=quarantine sp=quarantine pct=100) action=none
 header.from=nvidia.com; dkim=none (message not signed); arc=none
Received: from DM6PR02CA0099.namprd02.prod.outlook.com (2603:10b6:5:1f4::40)
 by BYAPR12MB3061.namprd12.prod.outlook.com (2603:10b6:a03:a8::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.15; Tue, 19 Oct
 2021 14:48:41 +0000
Received: from DM6NAM11FT029.eop-nam11.prod.protection.outlook.com
 (2603:10b6:5:1f4:cafe::e2) by DM6PR02CA0099.outlook.office365.com
 (2603:10b6:5:1f4::40) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.16 via Frontend
 Transport; Tue, 19 Oct 2021 14:48:41 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.112.34)
 smtp.mailfrom=nvidia.com; iogearbox.net; dkim=none (message not signed)
 header.d=none;iogearbox.net; dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.112.34 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.112.34; helo=mail.nvidia.com;
Received: from mail.nvidia.com (216.228.112.34) by
 DM6NAM11FT029.mail.protection.outlook.com (10.13.173.23) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.4608.15 via Frontend Transport; Tue, 19 Oct 2021 14:48:40 +0000
Received: from HQMAIL105.nvidia.com (172.20.187.12) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1497.18; Tue, 19 Oct
 2021 14:48:40 +0000
Received: from HQMAIL107.nvidia.com (172.20.187.13) by HQMAIL105.nvidia.com
 (172.20.187.12) with Microsoft SMTP Server (TLS) id 15.0.1497.18; Tue, 19 Oct
 2021 14:48:39 +0000
Received: from vdi.nvidia.com (172.20.187.6) by mail.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server id 15.0.1497.18 via Frontend
 Transport; Tue, 19 Oct 2021 14:48:27 +0000
From: "'Maxim Mikityanskiy' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann
	<daniel@iogearbox.net>, Andrii Nakryiko <andrii@kernel.org>, Martin KaFai Lau
	<kafai@fb.com>, Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>,
	John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@kernel.org>
CC: Eric Dumazet <edumazet@google.com>, "David S. Miller"
	<davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, Hideaki YOSHIFUJI
	<yoshfuji@linux-ipv6.org>, David Ahern <dsahern@kernel.org>, "Jesper Dangaard
 Brouer" <hawk@kernel.org>, Nathan Chancellor <nathan@kernel.org>, "Nick
 Desaulniers" <ndesaulniers@google.com>, Brendan Jackman
	<jackmanb@google.com>, Florent Revest <revest@chromium.org>, Joe Stringer
	<joe@cilium.io>, "Lorenz Bauer" <lmb@cloudflare.com>, Tariq Toukan
	<tariqt@nvidia.com>, <netdev@vger.kernel.org>, <bpf@vger.kernel.org>,
	<clang-built-linux@googlegroups.com>, Maxim Mikityanskiy <maximmi@nvidia.com>
Subject: [PATCH bpf-next 07/10] bpf: Add helpers to query conntrack info
Date: Tue, 19 Oct 2021 17:46:52 +0300
Message-ID: <20211019144655.3483197-8-maximmi@nvidia.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211019144655.3483197-1-maximmi@nvidia.com>
References: <20211019144655.3483197-1-maximmi@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4406f076-1202-4140-97e8-08d9930f8abc
X-MS-TrafficTypeDiagnostic: BYAPR12MB3061:
X-Microsoft-Antispam-PRVS: <BYAPR12MB3061E0224E872F9DC9A82266DCBD9@BYAPR12MB3061.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1wnmgW7GjCppMQripW/AeD5gYncjCEOodmMH4sOMJ8p98grUWkFkKNBdtaKGno46T+WcjfOP9E1v+yhxxPOvNsc6FLqF58/Bn/jwNscdWCPcX63JnN46cP177ht6W64ohFu/mq/xe6hHGpgAWR/RlSuWIL4Fj8FLVs7rpV0jxbXyk3KpDBx596Hd9q7y/Y95JRVLvdACJszNUULXsk0M0B8p9mbaEksJ6aEcOrRA04/fiAO1eWfIruwgAj/KuWhi15OU6mNyY4AiIZm1jyX4PsNXJtYjmHx1ZSYCW7g2mlVh3oVFCg6J9B0k2y9RoJTORD9TQTLCn01bKPFH9pcO03fufkRNmslKBVfTMyfxcjMxf9sZ26q1H17GxOw1wSHcvJT8CeQluy9e9q7Xbepo79HqVBpZdfejC0Pj8j3Na+SPzmVv4n/WjBwshP+ScLOhpycL7TxwstHp3qWy2WyMswbZatquLjyYHJvDJs+1oJ8cbxiEqjwBITDt6U5ZvbOQhC435RRPhwwFCEHF3G+Jdvjh4ZTCuqLe9yygOu8KYnBhRdna90T9AK59plkKaP/VLgFYBm60CQVZLEY1U9f5v0pFpkSFeJOA2gxhEBS4dlgOuepxbTlpk9SDdcUA86u3n4WX21yJX6ElzCur8/9SJNZamC8mr1N0VcxTC5vF4GWOx2fsoqVNyVkJXfP0vJC5BaL2LTu1aOZF/0Zz8WQ0xQx5hOtn3J+EY2FsbsAKMd8=
X-Forefront-Antispam-Report: CIP:216.228.112.34;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:schybrid03.nvidia.com;CAT:NONE;SFS:(4636009)(46966006)(36840700001)(36756003)(110136005)(82310400003)(36906005)(86362001)(8936002)(5660300002)(54906003)(336012)(8676002)(2616005)(1076003)(426003)(26005)(107886003)(6666004)(30864003)(47076005)(186003)(508600001)(4326008)(36860700001)(7696005)(2906002)(70586007)(70206006)(316002)(7636003)(356005)(7416002)(83380400001)(21314003);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Oct 2021 14:48:40.9564
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 4406f076-1202-4140-97e8-08d9930f8abc
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.112.34];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: DM6NAM11FT029.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR12MB3061
X-Original-Sender: maximmi@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Nvidia.com header.s=selector2 header.b=ZSfImuaj;       arc=pass
 (i=1 spf=pass spfdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of maximmi@nvidia.com designates
 40.107.93.61 as permitted sender) smtp.mailfrom=maximmi@nvidia.com;
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

The new helpers (bpf_ct_lookup_tcp and bpf_ct_lookup_udp) allow to query
connection tracking information of TCP and UDP connections based on
source and destination IP address and port. The helper returns a pointer
to struct nf_conn (if the conntrack entry was found), which needs to be
released with bpf_ct_release.

Signed-off-by: Maxim Mikityanskiy <maximmi@nvidia.com>
Reviewed-by: Tariq Toukan <tariqt@nvidia.com>
---
 include/uapi/linux/bpf.h       |  81 +++++++++++++
 kernel/bpf/verifier.c          |   9 +-
 net/core/filter.c              | 205 +++++++++++++++++++++++++++++++++
 tools/include/uapi/linux/bpf.h |  81 +++++++++++++
 4 files changed, 373 insertions(+), 3 deletions(-)

diff --git a/include/uapi/linux/bpf.h b/include/uapi/linux/bpf.h
index a10a44c4f79b..883de3f1bb8b 100644
--- a/include/uapi/linux/bpf.h
+++ b/include/uapi/linux/bpf.h
@@ -4925,6 +4925,79 @@ union bpf_attr {
  *	Return
  *		The number of bytes written to the buffer, or a negative error
  *		in case of failure.
+ *
+ * struct bpf_nf_conn *bpf_ct_lookup_tcp(void *ctx, struct bpf_sock_tuple *tuple, u32 tuple_size, u64 netns, u64 *flags_err)
+ *	Description
+ *		Look for conntrack info for a TCP connection matching *tuple*,
+ *		optionally in a child network namespace *netns*.
+ *
+ *		The *flags_err* argument is used as an input parameter for flags
+ *		and output parameter for the error code. The flags can be a
+ *		combination of one or more of the following values:
+ *
+ *		**BPF_F_CT_DIR_REPLY**
+ *			When set, the conntrack direction is IP_CT_DIR_REPLY,
+ *			otherwise IP_CT_DIR_ORIGINAL.
+ *
+ *		If the function returns **NULL**, *flags_err* will indicate the
+ *		error code:
+ *
+ *		**EAFNOSUPPORT**
+ *			*tuple_size* doesn't match supported address families
+ *			(AF_INET; AF_INET6 when CONFIG_IPV6 is enabled).
+ *
+ *		**EINVAL**
+ *			Input arguments are not valid.
+ *
+ *		**ENOENT**
+ *			Connection tracking entry for *tuple* wasn't found.
+ *
+ *		This helper is available only if the kernel was compiled with
+ *		**CONFIG_NF_CONNTRACK** configuration option as built-in.
+ *	Return
+ *		Connection tracking status (see **enum ip_conntrack_status**),
+ *		or **NULL** in case of failure or if there is no conntrack entry
+ *		for this tuple.
+ *
+ * struct bpf_nf_conn *bpf_ct_lookup_udp(void *ctx, struct bpf_sock_tuple *tuple, u32 tuple_size, u64 netns, u64 *flags_err)
+ *	Description
+ *		Look for conntrack info for a UDP connection matching *tuple*,
+ *		optionally in a child network namespace *netns*.
+ *
+ *		The *flags_err* argument is used as an input parameter for flags
+ *		and output parameter for the error code. The flags can be a
+ *		combination of one or more of the following values:
+ *
+ *		**BPF_F_CT_DIR_REPLY**
+ *			When set, the conntrack direction is IP_CT_DIR_REPLY,
+ *			otherwise IP_CT_DIR_ORIGINAL.
+ *
+ *		If the function returns **NULL**, *flags_err* will indicate the
+ *		error code:
+ *
+ *		**EAFNOSUPPORT**
+ *			*tuple_size* doesn't match supported address families
+ *			(AF_INET; AF_INET6 when CONFIG_IPV6 is enabled).
+ *
+ *		**EINVAL**
+ *			Input arguments are not valid.
+ *
+ *		**ENOENT**
+ *			Connection tracking entry for *tuple* wasn't found.
+ *
+ *		This helper is available only if the kernel was compiled with
+ *		**CONFIG_NF_CONNTRACK** configuration option as built-in.
+ *	Return
+ *		Connection tracking status (see **enum ip_conntrack_status**),
+ *		or **NULL** in case of failure or if there is no conntrack entry
+ *		for this tuple.
+ *
+ * long bpf_ct_release(void *ct)
+ *	Description
+ *		Release the reference held by *ct*. *ct* must be a non-**NULL**
+ *		pointer that was returned from **bpf_ct_lookup_xxx**\ ().
+ *	Return
+ *		0 on success, or a negative error in case of failure.
  */
 #define __BPF_FUNC_MAPPER(FN)		\
 	FN(unspec),			\
@@ -5105,6 +5178,9 @@ union bpf_attr {
 	FN(task_pt_regs),		\
 	FN(get_branch_snapshot),	\
 	FN(trace_vprintk),		\
+	FN(ct_lookup_tcp),		\
+	FN(ct_lookup_udp),		\
+	FN(ct_release),			\
 	/* */
 
 /* integer value in 'imm' field of BPF_CALL instruction selects which helper
@@ -5288,6 +5364,11 @@ enum {
 	BPF_F_EXCLUDE_INGRESS	= (1ULL << 4),
 };
 
+/* Flags for bpf_ct_lookup_{tcp,udp} helpers. */
+enum {
+	BPF_F_CT_DIR_REPLY	= (1ULL << 0),
+};
+
 #define __bpf_md_ptr(type, name)	\
 union {					\
 	type name;			\
diff --git a/kernel/bpf/verifier.c b/kernel/bpf/verifier.c
index 6eafef35e247..23e2a23ca9c4 100644
--- a/kernel/bpf/verifier.c
+++ b/kernel/bpf/verifier.c
@@ -506,7 +506,8 @@ static bool is_release_function(enum bpf_func_id func_id)
 {
 	return func_id == BPF_FUNC_sk_release ||
 	       func_id == BPF_FUNC_ringbuf_submit ||
-	       func_id == BPF_FUNC_ringbuf_discard;
+	       func_id == BPF_FUNC_ringbuf_discard ||
+	       func_id == BPF_FUNC_ct_release;
 }
 
 static bool may_be_acquire_function(enum bpf_func_id func_id)
@@ -515,7 +516,8 @@ static bool may_be_acquire_function(enum bpf_func_id func_id)
 		func_id == BPF_FUNC_sk_lookup_udp ||
 		func_id == BPF_FUNC_skc_lookup_tcp ||
 		func_id == BPF_FUNC_map_lookup_elem ||
-	        func_id == BPF_FUNC_ringbuf_reserve;
+		func_id == BPF_FUNC_ringbuf_reserve ||
+		func_id == BPF_FUNC_ct_lookup_tcp;
 }
 
 static bool is_acquire_function(enum bpf_func_id func_id,
@@ -526,7 +528,8 @@ static bool is_acquire_function(enum bpf_func_id func_id,
 	if (func_id == BPF_FUNC_sk_lookup_tcp ||
 	    func_id == BPF_FUNC_sk_lookup_udp ||
 	    func_id == BPF_FUNC_skc_lookup_tcp ||
-	    func_id == BPF_FUNC_ringbuf_reserve)
+	    func_id == BPF_FUNC_ringbuf_reserve ||
+	    func_id == BPF_FUNC_ct_lookup_tcp)
 		return true;
 
 	if (func_id == BPF_FUNC_map_lookup_elem &&
diff --git a/net/core/filter.c b/net/core/filter.c
index d2d07ccae599..f913851c97f7 100644
--- a/net/core/filter.c
+++ b/net/core/filter.c
@@ -79,6 +79,7 @@
 #include <net/tls.h>
 #include <net/xdp.h>
 #include <net/netfilter/nf_conntrack.h>
+#include <net/netfilter/nf_conntrack_core.h>
 
 static const struct bpf_func_proto *
 bpf_sk_base_func_proto(enum bpf_func_id func_id);
@@ -7096,6 +7097,194 @@ static const struct bpf_func_proto bpf_sock_ops_reserve_hdr_opt_proto = {
 	.arg3_type	= ARG_ANYTHING,
 };
 
+#if IS_BUILTIN(CONFIG_NF_CONNTRACK)
+static struct nf_conn *bpf_ct_lookup(struct net *caller_net,
+				     struct bpf_sock_tuple *tuple,
+				     u32 tuple_len,
+				     u8 protonum,
+				     u64 netns_id,
+				     u64 flags)
+{
+	struct nf_conntrack_tuple ct_tuple = {};
+	struct nf_conntrack_tuple_hash *found;
+	struct net *net;
+	u8 direction;
+
+	direction = flags & BPF_F_CT_DIR_REPLY ? IP_CT_DIR_REPLY :
+						 IP_CT_DIR_ORIGINAL;
+
+	if (flags & ~BPF_F_CT_DIR_REPLY)
+		return ERR_PTR(-EINVAL);
+
+	if (tuple_len == sizeof(tuple->ipv4)) {
+		ct_tuple.src.l3num = AF_INET;
+		ct_tuple.src.u3.ip = tuple->ipv4.saddr;
+		ct_tuple.src.u.tcp.port = tuple->ipv4.sport;
+		ct_tuple.dst.u3.ip = tuple->ipv4.daddr;
+		ct_tuple.dst.u.tcp.port = tuple->ipv4.dport;
+#if IS_ENABLED(CONFIG_IPV6)
+	} else if (tuple_len == sizeof(tuple->ipv6)) {
+		ct_tuple.src.l3num = AF_INET6;
+		memcpy(ct_tuple.src.u3.ip6, tuple->ipv6.saddr,
+		       sizeof(tuple->ipv6.saddr));
+		ct_tuple.src.u.tcp.port = tuple->ipv6.sport;
+		memcpy(ct_tuple.dst.u3.ip6, tuple->ipv6.daddr,
+		       sizeof(tuple->ipv6.daddr));
+		ct_tuple.dst.u.tcp.port = tuple->ipv6.dport;
+#endif
+	} else {
+		return ERR_PTR(-EAFNOSUPPORT);
+	}
+
+	ct_tuple.dst.protonum = protonum;
+	ct_tuple.dst.dir = direction;
+
+	net = caller_net;
+	if ((s32)netns_id >= 0) {
+		if (unlikely(netns_id > S32_MAX))
+			return ERR_PTR(-EINVAL);
+		net = get_net_ns_by_id(net, netns_id);
+		if (!net)
+			return ERR_PTR(-EINVAL);
+	}
+
+	found = nf_conntrack_find_get(net, &nf_ct_zone_dflt, &ct_tuple);
+
+	if ((s32)netns_id >= 0)
+		put_net(net);
+
+	if (!found)
+		return ERR_PTR(-ENOENT);
+	return nf_ct_tuplehash_to_ctrack(found);
+}
+
+BPF_CALL_5(bpf_xdp_ct_lookup_tcp, struct xdp_buff *, ctx,
+	   struct bpf_sock_tuple *, tuple, u32, tuple_len,
+	   u64, netns_id, u64 *, flags_err)
+{
+	struct nf_conn *ct;
+
+	ct = bpf_ct_lookup(dev_net(ctx->rxq->dev), tuple, tuple_len,
+			   IPPROTO_TCP, netns_id, *flags_err);
+	if (IS_ERR(ct)) {
+		*flags_err = PTR_ERR(ct);
+		return (unsigned long)NULL;
+	}
+	return (unsigned long)ct;
+}
+
+static const struct bpf_func_proto bpf_xdp_ct_lookup_tcp_proto = {
+	.func		= bpf_xdp_ct_lookup_tcp,
+	.gpl_only	= true, /* nf_conntrack_find_get is GPL */
+	.pkt_access	= true,
+	.ret_type	= RET_PTR_TO_NF_CONN_OR_NULL,
+	.arg1_type	= ARG_PTR_TO_CTX,
+	.arg2_type	= ARG_PTR_TO_MEM,
+	.arg3_type	= ARG_CONST_SIZE,
+	.arg4_type	= ARG_ANYTHING,
+	.arg5_type	= ARG_PTR_TO_LONG,
+};
+
+BPF_CALL_5(bpf_xdp_ct_lookup_udp, struct xdp_buff *, ctx,
+	   struct bpf_sock_tuple *, tuple, u32, tuple_len,
+	   u64, netns_id, u64 *, flags_err)
+{
+	struct nf_conn *ct;
+
+	ct = bpf_ct_lookup(dev_net(ctx->rxq->dev), tuple, tuple_len,
+			   IPPROTO_UDP, netns_id, *flags_err);
+	if (IS_ERR(ct)) {
+		*flags_err = PTR_ERR(ct);
+		return (unsigned long)NULL;
+	}
+	return (unsigned long)ct;
+}
+
+static const struct bpf_func_proto bpf_xdp_ct_lookup_udp_proto = {
+	.func		= bpf_xdp_ct_lookup_udp,
+	.gpl_only	= true, /* nf_conntrack_find_get is GPL */
+	.pkt_access	= true,
+	.ret_type	= RET_PTR_TO_NF_CONN_OR_NULL,
+	.arg1_type	= ARG_PTR_TO_CTX,
+	.arg2_type	= ARG_PTR_TO_MEM,
+	.arg3_type	= ARG_CONST_SIZE,
+	.arg4_type	= ARG_ANYTHING,
+	.arg5_type	= ARG_PTR_TO_LONG,
+};
+
+BPF_CALL_5(bpf_skb_ct_lookup_tcp, struct sk_buff *, skb,
+	   struct bpf_sock_tuple *, tuple, u32, tuple_len,
+	   u64, netns_id, u64 *, flags_err)
+{
+	struct net *caller_net;
+	struct nf_conn *ct;
+
+	caller_net = skb->dev ? dev_net(skb->dev) : sock_net(skb->sk);
+	ct = bpf_ct_lookup(caller_net, tuple, tuple_len, IPPROTO_TCP,
+			   netns_id, *flags_err);
+	if (IS_ERR(ct)) {
+		*flags_err = PTR_ERR(ct);
+		return (unsigned long)NULL;
+	}
+	return (unsigned long)ct;
+}
+
+static const struct bpf_func_proto bpf_skb_ct_lookup_tcp_proto = {
+	.func		= bpf_skb_ct_lookup_tcp,
+	.gpl_only	= true, /* nf_conntrack_find_get is GPL */
+	.pkt_access	= true,
+	.ret_type	= RET_PTR_TO_NF_CONN_OR_NULL,
+	.arg1_type	= ARG_PTR_TO_CTX,
+	.arg2_type	= ARG_PTR_TO_MEM,
+	.arg3_type	= ARG_CONST_SIZE,
+	.arg4_type	= ARG_ANYTHING,
+	.arg5_type	= ARG_PTR_TO_LONG,
+};
+
+BPF_CALL_5(bpf_skb_ct_lookup_udp, struct sk_buff *, skb,
+	   struct bpf_sock_tuple *, tuple, u32, tuple_len,
+	   u64, netns_id, u64 *, flags_err)
+{
+	struct net *caller_net;
+	struct nf_conn *ct;
+
+	caller_net = skb->dev ? dev_net(skb->dev) : sock_net(skb->sk);
+	ct = bpf_ct_lookup(caller_net, tuple, tuple_len, IPPROTO_UDP,
+			   netns_id, *flags_err);
+	if (IS_ERR(ct)) {
+		*flags_err = PTR_ERR(ct);
+		return (unsigned long)NULL;
+	}
+	return (unsigned long)ct;
+}
+
+static const struct bpf_func_proto bpf_skb_ct_lookup_udp_proto = {
+	.func		= bpf_skb_ct_lookup_udp,
+	.gpl_only	= true, /* nf_conntrack_find_get is GPL */
+	.pkt_access	= true,
+	.ret_type	= RET_PTR_TO_NF_CONN_OR_NULL,
+	.arg1_type	= ARG_PTR_TO_CTX,
+	.arg2_type	= ARG_PTR_TO_MEM,
+	.arg3_type	= ARG_CONST_SIZE,
+	.arg4_type	= ARG_ANYTHING,
+	.arg5_type	= ARG_PTR_TO_LONG,
+};
+
+BPF_CALL_1(bpf_ct_release, struct nf_conn *, ct)
+{
+	nf_ct_put(ct);
+	return 0;
+}
+
+static const struct bpf_func_proto bpf_ct_release_proto = {
+	.func		= bpf_ct_release,
+	.gpl_only	= false,
+	.pkt_access	= false,
+	.ret_type	= RET_INTEGER,
+	.arg1_type	= ARG_PTR_TO_NF_CONN,
+};
+#endif
+
 #endif /* CONFIG_INET */
 
 bool bpf_helper_changes_pkt_data(void *func)
@@ -7455,6 +7644,14 @@ tc_cls_act_func_proto(enum bpf_func_id func_id, const struct bpf_prog *prog)
 		return &bpf_tcp_gen_syncookie_proto;
 	case BPF_FUNC_sk_assign:
 		return &bpf_sk_assign_proto;
+#if IS_BUILTIN(CONFIG_NF_CONNTRACK)
+	case BPF_FUNC_ct_lookup_tcp:
+		return &bpf_skb_ct_lookup_tcp_proto;
+	case BPF_FUNC_ct_lookup_udp:
+		return &bpf_skb_ct_lookup_udp_proto;
+	case BPF_FUNC_ct_release:
+		return &bpf_ct_release_proto;
+#endif
 #endif
 	default:
 		return bpf_sk_base_func_proto(func_id);
@@ -7498,6 +7695,14 @@ xdp_func_proto(enum bpf_func_id func_id, const struct bpf_prog *prog)
 		return &bpf_tcp_check_syncookie_proto;
 	case BPF_FUNC_tcp_gen_syncookie:
 		return &bpf_tcp_gen_syncookie_proto;
+#if IS_BUILTIN(CONFIG_NF_CONNTRACK)
+	case BPF_FUNC_ct_lookup_tcp:
+		return &bpf_xdp_ct_lookup_tcp_proto;
+	case BPF_FUNC_ct_lookup_udp:
+		return &bpf_xdp_ct_lookup_udp_proto;
+	case BPF_FUNC_ct_release:
+		return &bpf_ct_release_proto;
+#endif
 #endif
 	default:
 		return bpf_sk_base_func_proto(func_id);
diff --git a/tools/include/uapi/linux/bpf.h b/tools/include/uapi/linux/bpf.h
index a10a44c4f79b..883de3f1bb8b 100644
--- a/tools/include/uapi/linux/bpf.h
+++ b/tools/include/uapi/linux/bpf.h
@@ -4925,6 +4925,79 @@ union bpf_attr {
  *	Return
  *		The number of bytes written to the buffer, or a negative error
  *		in case of failure.
+ *
+ * struct bpf_nf_conn *bpf_ct_lookup_tcp(void *ctx, struct bpf_sock_tuple *tuple, u32 tuple_size, u64 netns, u64 *flags_err)
+ *	Description
+ *		Look for conntrack info for a TCP connection matching *tuple*,
+ *		optionally in a child network namespace *netns*.
+ *
+ *		The *flags_err* argument is used as an input parameter for flags
+ *		and output parameter for the error code. The flags can be a
+ *		combination of one or more of the following values:
+ *
+ *		**BPF_F_CT_DIR_REPLY**
+ *			When set, the conntrack direction is IP_CT_DIR_REPLY,
+ *			otherwise IP_CT_DIR_ORIGINAL.
+ *
+ *		If the function returns **NULL**, *flags_err* will indicate the
+ *		error code:
+ *
+ *		**EAFNOSUPPORT**
+ *			*tuple_size* doesn't match supported address families
+ *			(AF_INET; AF_INET6 when CONFIG_IPV6 is enabled).
+ *
+ *		**EINVAL**
+ *			Input arguments are not valid.
+ *
+ *		**ENOENT**
+ *			Connection tracking entry for *tuple* wasn't found.
+ *
+ *		This helper is available only if the kernel was compiled with
+ *		**CONFIG_NF_CONNTRACK** configuration option as built-in.
+ *	Return
+ *		Connection tracking status (see **enum ip_conntrack_status**),
+ *		or **NULL** in case of failure or if there is no conntrack entry
+ *		for this tuple.
+ *
+ * struct bpf_nf_conn *bpf_ct_lookup_udp(void *ctx, struct bpf_sock_tuple *tuple, u32 tuple_size, u64 netns, u64 *flags_err)
+ *	Description
+ *		Look for conntrack info for a UDP connection matching *tuple*,
+ *		optionally in a child network namespace *netns*.
+ *
+ *		The *flags_err* argument is used as an input parameter for flags
+ *		and output parameter for the error code. The flags can be a
+ *		combination of one or more of the following values:
+ *
+ *		**BPF_F_CT_DIR_REPLY**
+ *			When set, the conntrack direction is IP_CT_DIR_REPLY,
+ *			otherwise IP_CT_DIR_ORIGINAL.
+ *
+ *		If the function returns **NULL**, *flags_err* will indicate the
+ *		error code:
+ *
+ *		**EAFNOSUPPORT**
+ *			*tuple_size* doesn't match supported address families
+ *			(AF_INET; AF_INET6 when CONFIG_IPV6 is enabled).
+ *
+ *		**EINVAL**
+ *			Input arguments are not valid.
+ *
+ *		**ENOENT**
+ *			Connection tracking entry for *tuple* wasn't found.
+ *
+ *		This helper is available only if the kernel was compiled with
+ *		**CONFIG_NF_CONNTRACK** configuration option as built-in.
+ *	Return
+ *		Connection tracking status (see **enum ip_conntrack_status**),
+ *		or **NULL** in case of failure or if there is no conntrack entry
+ *		for this tuple.
+ *
+ * long bpf_ct_release(void *ct)
+ *	Description
+ *		Release the reference held by *ct*. *ct* must be a non-**NULL**
+ *		pointer that was returned from **bpf_ct_lookup_xxx**\ ().
+ *	Return
+ *		0 on success, or a negative error in case of failure.
  */
 #define __BPF_FUNC_MAPPER(FN)		\
 	FN(unspec),			\
@@ -5105,6 +5178,9 @@ union bpf_attr {
 	FN(task_pt_regs),		\
 	FN(get_branch_snapshot),	\
 	FN(trace_vprintk),		\
+	FN(ct_lookup_tcp),		\
+	FN(ct_lookup_udp),		\
+	FN(ct_release),			\
 	/* */
 
 /* integer value in 'imm' field of BPF_CALL instruction selects which helper
@@ -5288,6 +5364,11 @@ enum {
 	BPF_F_EXCLUDE_INGRESS	= (1ULL << 4),
 };
 
+/* Flags for bpf_ct_lookup_{tcp,udp} helpers. */
+enum {
+	BPF_F_CT_DIR_REPLY	= (1ULL << 0),
+};
+
 #define __bpf_md_ptr(type, name)	\
 union {					\
 	type name;			\
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20211019144655.3483197-8-maximmi%40nvidia.com.
