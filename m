Return-Path: <clang-built-linux+bncBCFIV7H5YYEBBAVVXOFQMGQE3HZRIXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 73F804338FB
	for <lists+clang-built-linux@lfdr.de>; Tue, 19 Oct 2021 16:47:32 +0200 (CEST)
Received: by mail-io1-xd37.google.com with SMTP id y9-20020a5e8349000000b005ddb44e9eb8sf13496392iom.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 Oct 2021 07:47:32 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1634654851; cv=pass;
        d=google.com; s=arc-20160816;
        b=azkLbzofCXaGQ0jYw2DeT9vboZiCxXl6/tzoFm49kHyXfyPqGiAArCrrIDqijCObZX
         cVdJu6bZkWTEXLt1mbZYm0Ss6pOnKForFPG2KRpZjzTdHafPpPtE9ytyUEWt+4Ry72qo
         tP+QX7uAh6/8V574nFyXF2qEmh+g/NtSMYo3Nze0pmuS3fTPwV9BptLNqPjaxwIb4YOr
         ympvOwQTT1np8fnoxxacI+fsfeSxaYtpNY+QDEVBD4+NbVOwXEZT69UnvxS9DJjSw/lo
         JzlpVM/FszxJhGqxysPlb8C9o7Ahy4hIKE9our15N75TEhVnpdQppNxP/b6Z3cJV4s6b
         3TeA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=sOPI5WXzNTUNDwQc0MQe6EIGzcS/VDcZaxi4NrdEN0I=;
        b=iX65OWxd+FhqM4lVd+GyPtUVDQTGF7MX+ehVUooI6HqNy1Z0fPLUbvNtmTJBGgYoz9
         IW7cRb7L75CyTqAKz4luT+YpWY66iWbwcSzhT+a9lt69WgV5OyYzSjpkPO4bTu6IZM/d
         TFpMSuyZTRTKB9UJdfafxhSew2naB257Wf8NnEslikpySQXGsZ2TRfqtTZVQwZeT1afL
         y+worn5euUMD5X93WSonsWGzwq5CFDemDs1/i2SZUpo7bFeD+xh0m9VgPXd3hBVn6HIZ
         ZtkGfK0Ry2SIEdd65UR+uP9ILIcTmSaxwbrbKfB8zCDu98neEDValxnivAEQD/hkudf4
         Dfdg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=Pg+4s8SM;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of maximmi@nvidia.com designates 40.107.93.79 as permitted sender) smtp.mailfrom=maximmi@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=sOPI5WXzNTUNDwQc0MQe6EIGzcS/VDcZaxi4NrdEN0I=;
        b=EFJq/rbDwtaMzMBQvOs2rRMP5l56l/zV2UQVzqQjnff7xfQkIO3PH1fb8apBhqOY9v
         qOOCR6F6C10bWHRzbNgwJRMGuPggaGaSRWh+TJEEecHkP3gdtZiWGbnmOxZkDe/8AQng
         SU2KmfIMbDS8+PDvCkOMpMj6lcAs4+L8vqV1ZpWKEnaySpq3z7SNz4AbnEViF6DaVP35
         TLXN0w5ulKa6DqxZUdeLgChxQdkQWbJUeAPrpzJqxf8htM8dNtUVU5cObyDBWVrfEexF
         asKxchSWpUCd5j081p0uhEbwDAFNE1tkl5oH05FCf7LUoj64V4mUoEfCvCSOkWGvGBYY
         7Cww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sOPI5WXzNTUNDwQc0MQe6EIGzcS/VDcZaxi4NrdEN0I=;
        b=n6Vzbtp1JBMZPUTrXAIyjpRPJUfgpNLqHZl3TQ+uDHFvCxBgaDQmls2DIC1hobWp+4
         SaRJNLGVClvoUJHoWytTHkqbPVhHadz/lrZFVu2JQQQBwWzBEW7my47NDTsQJI3tREo0
         t63uNVLk6frEsTWlceDCHeriAe+006da7YDG+g65NpbcPsugbi9uOFLCabwP9EefJbPu
         ec40xTfCLiXVit4F5a5jZTEat1RRCz5pzuXcx5AnCIaHxYSUZBwY11ufLldCUDetLqNH
         Ood8Bzm8VsXnBJqMmRJGdUpAIjaJDm3D2kE2NylO7HyMZt4lQACROFuDiX/cJBX2FMnm
         fksQ==
X-Gm-Message-State: AOAM533d+IhpreMX697TJ7EK6nYZYYkfKOZ7HVBkaXrjHWGtG9basdWe
	Td7MYVW3dE7u+ApHDYrVXpc=
X-Google-Smtp-Source: ABdhPJzSWxLb1j4b7vf3EG5diK4HPocFPtSHIZwyqy8rRsTq6ZYgK+nk3gzdtU6RwN4gOWtEbpyryg==
X-Received: by 2002:a05:6602:2b06:: with SMTP id p6mr19554140iov.17.1634654851101;
        Tue, 19 Oct 2021 07:47:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:2182:: with SMTP id j2ls2267799ila.9.gmail; Tue, 19
 Oct 2021 07:47:30 -0700 (PDT)
X-Received: by 2002:a05:6e02:12e6:: with SMTP id l6mr11717434iln.16.1634654850714;
        Tue, 19 Oct 2021 07:47:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634654850; cv=pass;
        d=google.com; s=arc-20160816;
        b=G9Ng7kgvFDL239J6FGK/TdHdRoxZ/I2m0Vl0CeMEjF3+XG0tJIlBXqXTrDZsr3sLHg
         1c6iSY0hqrbNP+oBQjYIePsMQO6Xo15Hrik5kGO+HepuAIaUggcWHMwIED3xJxj74xjg
         nw+SZHmQ42DpK4oUMcAjwXH5DF17D4klPFPND8wMrLf3yZIUJTZ23Z9jG/KuWvJS9SON
         GV3ZiquQwhRjQBJxPdKdlcSEIi7KAQNGF3nJawpfYr5XXtRVF/PrZzlkAFMjb6FF9n4w
         0pQOgqQuFTSdwX+q7gF3IHITuUcIM4ioFNc17ayPWtUCGRG+6E7JEaL3X2IvwBA+o3MW
         cYLw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=r7DpgvEwdn7iizPr5bjsqGU1PVBCFESrVJBDSlHkEIc=;
        b=evAClFyUL/1154290+38Vb+LRPYrDsdpzJRvTUL0PENFj/ORB9Fwk2FWwHgjGr+aaE
         c7y0XyE4er+RxOQwlvYWbJy1t91cT4E7J+bCo5LhAqG/BzrF7+vXv4PT0WDcp/ogqtjX
         F564tR5SF27fo87L5xgZhEyruHG1auTZH64b5H/wakFTaikjE9BcBDU7hS5VKIjdNol2
         qL3ky19nPoFz+65zN/zXa1oRqrNbSnhMEAw0zkeXUW/UEkyju4sz7qJPWoqRU5pgOY8D
         qU3Lxfpo8bh2E9nXJX1rndSpd+GDBnIz1RYOQmQiLVSZlxFcJw6UfJjWyOOHK9h/wMOn
         GZ3g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=Pg+4s8SM;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of maximmi@nvidia.com designates 40.107.93.79 as permitted sender) smtp.mailfrom=maximmi@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2079.outbound.protection.outlook.com. [40.107.93.79])
        by gmr-mx.google.com with ESMTPS id e5si1065183ios.3.2021.10.19.07.47.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Oct 2021 07:47:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of maximmi@nvidia.com designates 40.107.93.79 as permitted sender) client-ip=40.107.93.79;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dwIhJaFPf25JklXDlUI1s/5M3JHN7laa0OOAH59d3sOd5wHF8GRuZAZjIla4iWw+Foj7xOJY7aYg5CZY1pytaNdvDYJnwc6NzLNZN6alX02DMNyOWB2tZdCRFNRyZjLsGfFsE5dclkNnBZyzDx+3IJTV6DgAevH6Z9kI0pbn4kYfMcURt9uLo2G5wQBH9+chqJWtvo5L6nQuRV/XS+roCoSojGRzwhM56LXwvcTm3ds6tTZfSwVnbc7QfOymoRJd+2Fx37VjSxMqk0+XqSOLdXblPqMtiUMkhWzDDgOgE3wtf5EwmZphoqVnNjXTmsnu/WPDaAhk/Y7UQyxV8/sIpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r7DpgvEwdn7iizPr5bjsqGU1PVBCFESrVJBDSlHkEIc=;
 b=djPwJEdyy8zmsIl8qteJxnZtgumh9gF4nBhYMpq30P+R7rzABQipcuYzWI5WGH5XyrL8c3v2HSuTIKsgzLcT0H3RJ/MyaJWeTFsndX0ZYtKf0dZw/A+arzL7Mwy7B0j4xjWESX5FlYqvihpvEpWeJtwYm44Oi0O+SWbK6KdwkgP1Oe2u1OwaY6dOWimbGoI3cpQ4HptwxGhVEZbxhEIrp1gcu1s3dZRi1y2vLrc3S5oq5xbyifjlG0QbNRQH44h5V7jnl8OF8oQRXAAeVp7zoUMzpcuUoGeiG/02xUxjlv+b949Xz3deqv3BoqsaCHGQVgTYBSIwwXJK0yPtjp6zXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.112.36) smtp.rcpttodomain=google.com smtp.mailfrom=nvidia.com;
 dmarc=pass (p=quarantine sp=quarantine pct=100) action=none
 header.from=nvidia.com; dkim=none (message not signed); arc=none
Received: from MWHPR03CA0013.namprd03.prod.outlook.com (2603:10b6:300:117::23)
 by CY4PR12MB1893.namprd12.prod.outlook.com (2603:10b6:903:127::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.18; Tue, 19 Oct
 2021 14:47:29 +0000
Received: from CO1NAM11FT015.eop-nam11.prod.protection.outlook.com
 (2603:10b6:300:117:cafe::b4) by MWHPR03CA0013.outlook.office365.com
 (2603:10b6:300:117::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.15 via Frontend
 Transport; Tue, 19 Oct 2021 14:47:29 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.112.36)
 smtp.mailfrom=nvidia.com; google.com; dkim=none (message not signed)
 header.d=none;google.com; dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.112.36 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.112.36; helo=mail.nvidia.com;
Received: from mail.nvidia.com (216.228.112.36) by
 CO1NAM11FT015.mail.protection.outlook.com (10.13.175.130) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.4608.15 via Frontend Transport; Tue, 19 Oct 2021 14:47:28 +0000
Received: from HQMAIL107.nvidia.com (172.20.187.13) by HQMAIL101.nvidia.com
 (172.20.187.10) with Microsoft SMTP Server (TLS) id 15.0.1497.18; Tue, 19 Oct
 2021 14:47:25 +0000
Received: from vdi.nvidia.com (172.20.187.6) by mail.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server id 15.0.1497.18 via Frontend
 Transport; Tue, 19 Oct 2021 14:47:14 +0000
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
Subject: [PATCH bpf-next 01/10] bpf: Use ipv6_only_sock in bpf_tcp_gen_syncookie
Date: Tue, 19 Oct 2021 17:46:46 +0300
Message-ID: <20211019144655.3483197-2-maximmi@nvidia.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211019144655.3483197-1-maximmi@nvidia.com>
References: <20211019144655.3483197-1-maximmi@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b0474ccf-f881-4441-2713-08d9930f5fbd
X-MS-TrafficTypeDiagnostic: CY4PR12MB1893:
X-Microsoft-Antispam-PRVS: <CY4PR12MB18937DC0B9CAB612DC68C2A5DCBD9@CY4PR12MB1893.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1169;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: v4iJwkEB1OyZtb8PyVTAMSwGyfTWV0rKqSi5INKm4KpMQ0KIp7/P5jvquKlQjsfJpSuIxOBlq/QktDjxXtVUbsoLX1y46qpCe3oLd7cuyzgvf5SQMEJtruWWqA3XnnbVqitLgh1kNsEHY+LXVKw5duHN8mIWmMJinoGnLKbzbS78rlwQ9PyClXyQZnNfmfRemAuC8TPwIEiE5fn/hJOn+VBKYPMfdT4Wng/CJZP/VIs/RYzxMdfUpolfqND9heS+Iv5lTVgB1Yq9c9YG7Z+miRbfGcfdx7SvHXUPJ8RP3W/oLxtJhIImtWbo+k7b1vsubnHytFrxHh5LFm5QkiSfZR3FCmkkqQ+hKtDMHw+cCwVKQ/6vkU7z4syUxDdrHeEFNL4XcmfzrVPkdNWQY9fvLgqa+LMLhVNaPw68e56vE0BOeykYNXmYQSWQvaNGrB852suNhndb8pNceUqVosYN+xAvUfaGCkqiQhIkEdSpUB9gRXedWBpHxLfcteJCDvxSqTHrfFITQ67pWSsLNu4IoFNM/CjVUrlsY4mZF8N7nOXyWlBsEdPxf1UJxrjrFZGjUJiP0qYwv7qMwnf7/KSDWZjMNpOHRabFAbx+2Y+cIwXHTvp7fTk5wHksI9MI6aSt50B/mMjq0QFRrUffnkGTS9GDdMizFYGURuQskg790hcLa8ATElKQ1m6s2S3mB4CH5XxgVp8TwrrmowrxtJaZbw==
X-Forefront-Antispam-Report: CIP:216.228.112.36;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:schybrid05.nvidia.com;CAT:NONE;SFS:(4636009)(36840700001)(46966006)(356005)(316002)(36860700001)(26005)(7636003)(7416002)(54906003)(186003)(5660300002)(2616005)(83380400001)(110136005)(2906002)(8676002)(86362001)(508600001)(336012)(7696005)(8936002)(426003)(47076005)(36756003)(4744005)(107886003)(4326008)(1076003)(70206006)(70586007)(82310400003)(6666004)(36906005);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Oct 2021 14:47:28.1115
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b0474ccf-f881-4441-2713-08d9930f5fbd
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.112.36];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: CO1NAM11FT015.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR12MB1893
X-Original-Sender: maximmi@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Nvidia.com header.s=selector2 header.b=Pg+4s8SM;       arc=pass
 (i=1 spf=pass spfdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of maximmi@nvidia.com designates
 40.107.93.79 as permitted sender) smtp.mailfrom=maximmi@nvidia.com;
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

Instead of querying the sk_ipv6only field directly, use the dedicated
ipv6_only_sock helper.

Signed-off-by: Maxim Mikityanskiy <maximmi@nvidia.com>
Reviewed-by: Tariq Toukan <tariqt@nvidia.com>
---
 net/core/filter.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/core/filter.c b/net/core/filter.c
index 4bace37a6a44..d830055d477c 100644
--- a/net/core/filter.c
+++ b/net/core/filter.c
@@ -6788,7 +6788,7 @@ BPF_CALL_5(bpf_tcp_gen_syncookie, struct sock *, sk, void *, iph, u32, iph_len,
 	 */
 	switch (((struct iphdr *)iph)->version) {
 	case 4:
-		if (sk->sk_family == AF_INET6 && sk->sk_ipv6only)
+		if (sk->sk_family == AF_INET6 && ipv6_only_sock(sk))
 			return -EINVAL;
 
 		mss = tcp_v4_get_syncookie(sk, iph, th, &cookie);
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20211019144655.3483197-2-maximmi%40nvidia.com.
