Return-Path: <clang-built-linux+bncBAABB4GF5SBAMGQE55QN7CA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53d.google.com (mail-ed1-x53d.google.com [IPv6:2a00:1450:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 40B78347762
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Mar 2021 12:30:57 +0100 (CET)
Received: by mail-ed1-x53d.google.com with SMTP id v27sf875404edx.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Mar 2021 04:30:57 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1616585457; cv=pass;
        d=google.com; s=arc-20160816;
        b=IEEKmNcSfGcuZXXHJ2J9Ao/HADDzQIZYU1dxf+/K5GJhgLV/vklGMQTEPCLTCrdmyi
         I8k8a4LTe5LhNhqdJBnAY9oxLoXV9lD4jxVBXGwFSVFF0AZOgxjZwT2IYRDmdcCZQE54
         UO8ELOLEIOtkMLSc5WPafttfKdRWWpqbVGyOvdofFRMv1vJD5DdbEeNNcNsBGbtiXiRj
         DwCOPrcKfiCcgNuWEJmgC3oCBPBnJ8Xyiog+00P19EAt6NECkZRUjDujjaiuN+CSrxjs
         q4hWVFZhbi2gz+4JO+0QvbvcMHdzkZhulLkKssyxj2qMt12QL7h6QIoy0VuUPNlzAvIt
         4brA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-language:content-transfer-encoding:in-reply-to:user-agent
         :date:message-id:subject:from:references:cc:to:ironport-hdrordr
         :ironport-sdr:dkim-signature;
        bh=a+MzD9g230H+ODqxm+ALxeaypbvALBY1xYxb75YDyEY=;
        b=eghUeWCSN1aY7FhSym26f3PofFGlTTHdb/5xVctqetFhZJiWtmyFTkKcd64txnpKY+
         QAWAF6Cwmj/10WavMUJVIrqc0/qHBgtJ2CIUoSqyreYX/jBbU8AL87PHsxnA4oOBRbi8
         khooFhRcw8TpqoxO6n/lH08OdzBLXLTDsbBfF3lGxegQOdaf1AwscUFW3J9hvGI+qZCI
         aZz9Miq0debkcmKuXxuJGcaPWVCBxwl56e4T+LJ5mfWs4u/xwtoQ4rc8YYSAYA6vw5oO
         ljmnyulZyUxkivgevtNMUz5LZ/5sHXgDjqdSZLwJ/olma/RZNIJ342ZPo5hhwzI1w9Fq
         kRtQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@citrix.com header.s=securemail header.b=UQs7jaJ5;
       dkim=pass header.i=@citrix.onmicrosoft.com header.s=selector2-citrix-onmicrosoft-com header.b=ZakRRm2k;
       arc=pass (i=1 spf=pass spfdomain=citrix.com dkim=pass dkdomain=citrix.com dmarc=pass fromdomain=citrix.com);
       spf=pass (google.com: domain of andrew.cooper3@citrix.com designates 216.71.155.144 as permitted sender) smtp.mailfrom=Andrew.Cooper3@citrix.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=citrix.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=ironport-sdr:ironport-hdrordr:to:cc:references:from:subject
         :message-id:date:user-agent:in-reply-to:content-transfer-encoding
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=a+MzD9g230H+ODqxm+ALxeaypbvALBY1xYxb75YDyEY=;
        b=bbFW3DvNNZzatavtdI+FYYy/M9dv/buSW40LGPf8ciV0Fdh5huyVgAzCwQXRacmQ6d
         UC36b5B0rivHIt+3z+ZZN0CN1aIc19Mhf6qIwXd6o2su2Up/fArZ3E7xkmron6Yc2h9d
         j3q3N9V6NbXMbgboB9UAizOcc2oaex4dAl4t4PbFhBLCmSQB+KqrvpqRhPz1BhNrp7MB
         xdW83/KRpf/5ufFM7FxE4SWlk+JRxExA9pDLT+EafnrIHHxDfhff3AIM73H9c0+dNE6w
         MKCRH9KOZHofU/Y/xHfS+0ExK8v1djnIiVvq/LzQFStpFrtNdf1omhWojuoJJAV/RJq9
         +hQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:ironport-sdr:ironport-hdrordr:to:cc:references
         :from:subject:message-id:date:user-agent:in-reply-to
         :content-transfer-encoding:content-language:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=a+MzD9g230H+ODqxm+ALxeaypbvALBY1xYxb75YDyEY=;
        b=kpYkAnk8eNR5I+q/5jHgG7B0fLS7VxX2m2+F79l7aup1ewytBiG7rJndaP2blDSR2F
         8Zsp0Xsvi4xa6np7Z+HQDZizNIWwrnudT0b1mdEYh8Hp6yZV3f+Ae1QlxsMc7xVPerv6
         CXdbKlOpTo6W3fNOUwTthBySRR8Cy6DizdzEITrS0zt7/GB5oAzLBKWZ4qozO+2+60FH
         zLXUMuAMdQr0X07zNF49NSaMewwWb7wLbibsWRsGFBuKzPstySr2e7GGsedWfPhqCth8
         LL5eDJS9dauWS1RbhlpHdAJOvfqVBJ60jtFoKstdTol7KnX0FX/ztN6PBKR9xh5odeeN
         oTFg==
X-Gm-Message-State: AOAM532ra8YnGoxofJGu1DsRgNPTGThwFCB/isa6zwbLxtgTaji+Spmb
	d8Kx6cY2aew6LFcUUe9y84k=
X-Google-Smtp-Source: ABdhPJxmdp/JKKKJvIqQdancVIGaduGqzyeAuRS7rVc9WhlGHc+YUulr4g3Ew2UjKhY+Ne7bTa8uLQ==
X-Received: by 2002:a17:906:51c3:: with SMTP id v3mr3145753ejk.497.1616585457012;
        Wed, 24 Mar 2021 04:30:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:80f:: with SMTP id e15ls844787ejd.1.gmail; Wed, 24
 Mar 2021 04:30:56 -0700 (PDT)
X-Received: by 2002:a17:906:ae88:: with SMTP id md8mr3027747ejb.264.1616585456248;
        Wed, 24 Mar 2021 04:30:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616585456; cv=pass;
        d=google.com; s=arc-20160816;
        b=GJtIjNRVEtX4too03cT8XG4vALeDKUxa1yNVZkz7F+Rns2tMaTYfXsvZ6HJKFFmAVr
         PKyoAy+tVNI9pilF73gvd9fvhIKkVASJLs11HhqbZ0MA4hulZVOaoUwKDZBAVJ9NXgaA
         XuXd5/k6eF7mLjwH2nSiIjuSczLAql3yyOZgwIR6pY1USNvBE3igkaVnAmzE9WiPwODd
         PnfyGie26vEJaNEjQH4L7X+DKYGYK1wsLtL1krIVEQgExEO6QuwH5ymyNqaiJGkApcUV
         svGdYF+aNbxhBEkp4Z8dApMQKKB0nV9iWo1NtTq6T9ZRog4rPPERDKQKXWmi1lufwfE+
         E8DA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-language:content-transfer-encoding:in-reply-to
         :user-agent:date:message-id:subject:from:references:cc:to
         :dkim-signature:ironport-hdrordr:ironport-sdr:dkim-signature;
        bh=NpKmRcm2Th82Gm/Tgp6WG/yJtVIt3dHvt7yZbFaQ22c=;
        b=SUH8jYh4cRu3vsVDR2nYEzwUqqTM3gtEmH/fwdD9ORahV+4+cgaFY8ksHPpR3O8hT2
         8eIOSdiWaGO63zAe3es5dNHBAnR23X2brEdW5mq0Ro9S65cLUJ1hWVBed/O6ZVUPTMCf
         rFWpHrrg+aahikbGSZXxNhOyNUWCSoCnuPKAp2t38WEfjTQKvBNSuZFdwCYrt1DzYfov
         uN8+1MFADX8yEQNdE1Ka1fTKmEuheB4qGsF9hbbyoQf7NPuHHEUKmsmVvE09kzVDLwL9
         6lklNJeezRhPnZ/+MJOc2vGrYexDT1p1QIyosuD+Ju9kS0UUIioimZd9uPUHrB7WiPBI
         DASw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@citrix.com header.s=securemail header.b=UQs7jaJ5;
       dkim=pass header.i=@citrix.onmicrosoft.com header.s=selector2-citrix-onmicrosoft-com header.b=ZakRRm2k;
       arc=pass (i=1 spf=pass spfdomain=citrix.com dkim=pass dkdomain=citrix.com dmarc=pass fromdomain=citrix.com);
       spf=pass (google.com: domain of andrew.cooper3@citrix.com designates 216.71.155.144 as permitted sender) smtp.mailfrom=Andrew.Cooper3@citrix.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=citrix.com
Received: from esa4.hc3370-68.iphmx.com (esa4.hc3370-68.iphmx.com. [216.71.155.144])
        by gmr-mx.google.com with ESMTPS id w5si96781edv.1.2021.03.24.04.30.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Mar 2021 04:30:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrew.cooper3@citrix.com designates 216.71.155.144 as permitted sender) client-ip=216.71.155.144;
IronPort-SDR: 0Wz+9Z3IrgNE9zAzn7NwYEO43NNAvFZJgofYjfkgVdHHdrGlqHcNHh950I1kULZL2Dyqy2yxuQ
 D/ocpm9sT4iuP/qTnQaTK6+wkTGS6cP8HcHGsuMggxqSoaGtnmMyMnofoAWHml9kT+oxe1QL4z
 3udCag1Qb50lQC83hoj5aIlYxFjKyZiUJrb6uVsN/2Si4f5K8oe9Bkjxww6uWFTl27MPwvSZ1u
 b89OFlOXMh15UQMzHk1pEQ+Z6zv+Ipp6TzFsX4N4rt84IlZoWxtcwVZt/Is4CIAW+rSERzTsKG
 78Y=
X-SBRS: 5.2
X-MesageID: 41444822
X-Ironport-Server: esa4.hc3370-68.iphmx.com
X-Remote-IP: 162.221.156.83
X-Policy: $RELAYED
IronPort-HdrOrdr: A9a23:oMwqL6FDKxDsrVg8pLqFiZXXdLJzesId70hD6mlYcjYQWtCEls
 yogfQQ3QL1jjFUY307hdWcIsC7IE/03aVepa0cJ62rUgWjgmunK4l+8ZDvqgePJwTXzcQY76
 tpdsFFZ+HYJVJxgd/mpCyxFNg9yNeKmZrY+dv25XFrUA1sduVE5wB2Fg6UHiRNNXZ7LLA+E4
 eR4dcCmiq4dR0sH4uGL1Qmf8yGnd3Ek5r6fQULbiRGmVazpB6h9bKSKWnh4j4wSDVKqI1SlF
 Ttswu83am7tuH+9xm07R6v071zuP/MjuROH9aNjM99EESjti+NaJ56U7OP+BAZydvfk2oCq9
 XHrxc+M8kb0Rq4FQvZzWqPqmvd+Q0j5HP4xViTjWGLm72CeBsBF8FDiYhFGyGpjHYIgdBm3K
 pHm0KfupZHZCmw5RjV2tnSWxlm0nezuHop+NRj6UB3bI12Us40kaUvuGduVLsQFiPz744qVM
 N0CtvH2fpQeVSGK1jEo2hG2rWXLzQONybDZnJHlt2e0jBQknw85VAf3tYjknAJ8494Y4VY5t
 7DLr9jmNh1P4wrRJM4IN1Ebdq8C2TLTx6JGnmVO07bGKYOPG+IjJLr/rMv5qWPdIYTxJU/3L
 TNOWko91IaSgbLM4mjzZdL+hfCTCGWRjL20PxT4JB/p/nyX7zuPSqfSE0/kseprvkFa/erH8
 qbCdZzObvOPGHuEYFG00nVQJ9JM0QTV8UTp5I6Vju104X2A7yvktaeXOfYJbLrHzphcHj4GG
 E/UD/6I9gF6kiqX3T/kQXAQn+FQD24wbtAVIzhu8QDwokEMYNB9iIPj06i282NITpe9qosfE
 V/J7vjmrihpXa/+HvJ62kBAGsZMm9lpJHbF19arw4DNE35NZwZvc+ERGxU1HybYgNkQ9jOCw
 5ZrVRv8aexJ5idrBpSUu6PAya/tT8+tXiKR5ATlum//s/jYIo/FYtjcrd2Dx/3Gxt8nhtKpG
 9PZBQffFLWEirjhMye/cQpLdCaU+M5oQ+wZeZItHrUtCyn1L8Sb0peewTrbOm6rkIFQSFOil
 h47qkF6YDw6AqHGC8aiOQ8GltKdX+QBfZhEBmkY4pT84qbIj1YfCOvjTyeoRc1Z3Ht8mgxpk
 jKLCGfe5jwcwFgk0Ed9q7r9VlzcXiHeUc1UXx0vZZmUVnB00wDjdOjV+6UyGuealwL3+cHFi
 rKCAFiYz9G9pSM3haTnzqOUV43r69eY9D1BKg/cr3Vx3OmIJCJk6ZDBPNP4JN5LrnVw582eP
 PadAmPIDziDeQ1nwSTu3Y+ISFx7GIpiPXyxXTenSKF9W96BfrZO1J9Qb4HZ9ma8mj/Xv6Nua
 8Jxe4drK+1Mm/rbMSBxrySZzlfKgnLqWrzS+0zs5hbseYzs7R0dqOrGgfgxTVC3B8kKt3zm1
 5bSKNn4KrZMosqZtcMYUtijy0UvcXKKFFuvh39A+c4c11oh3jHP8mR676NrbY0GEWOqAb5JF
 H3yVwRw97VGy+YkbIKAaM5JmpbLFIx73lv5+uOfYzdAgfCTZALwHOqdnumNLNNQqmMHrsd6g
 tg69aThumNam723hvTsTYTGNMDz0+3BcepRASCFu5D/4bkZRCCgq627NWyizmyQz2hcEgcjZ
 BEc0tVbskrsEhWsKQnliypDqrwqQY5llEb5zdtnFvkwJKn72fWBlsuC3yuvrxGGT1IdmGVhs
 HE+/WC3Hvz4DJZyYDOfX0gDO1mCpwVVMzrNC9gJsgboa6w86cuiipFZg0yD2RUskGI48p2mb
 Gj2PvTXOX+CXDnfVIZkAQ1dbJJog==
X-IronPort-AV: E=Sophos;i="5.81,274,1610427600"; 
   d="scan'208";a="41444822"
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aIl9X9RxOaxpNVJkPaVKu1o87keNK02TKSVY5Lkos2rbXg2uh+5qUjC7i4hqCvK+yIePKtxj/ZsTC6S9DyFMqNWzLo4qKxACnDD0XLxfYxj+tMEMcVK8KM2UGbCAacyksvkh68irIPysGW9+jN/jx+au/+kYEuTg5/fJWCHasS9q9g4hJG2IqNs2qZGJDhCssvHKpQZOWPL8pbUwtdtsCEuPktsVwqFHywTG11uMz/sdowlNGE8HrkkCLVyMWn72SWUNE/hlqCMEXWdNU7brJveaCk3CaDhtKnCh0BIgxi3kc2f2c5G0EEgR4bEZ3rzRlzYAjFnphr3yqs9Tlv8AhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NpKmRcm2Th82Gm/Tgp6WG/yJtVIt3dHvt7yZbFaQ22c=;
 b=nuSIHbWgnPtKjutJ193QxD7VkREu13Rcbm5RYbt7pTFy3bDu9OaoJYDR/o/N6KeF39stxg3MPACkbGWd7II7RGaGVMAUg/MjdFIoeFvMzvM7+8MI9YxL6CEoWW40gbO39J+TFJ4qI1y961fYJ3LWbuZgdqmAl9uZTMIGxnUqS5X2M6czXnkLfCJ6v/jlVvCoeS1OyNVGNiDw1Bf+j9Jg/XEf6NZq5XZPzC9Ljl80dIGfdQtckt6ok4SunTOzthRPqlpkL3RxUlFMVRZLIDKXnbvKikfkNbumScrHLVO7Nhzpj6tAARsG43mTDk/GQlfIr4VLXRy/Z6770iXAnWKv5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=citrix.com; dmarc=pass action=none header.from=citrix.com;
 dkim=pass header.d=citrix.com; arc=none
To: Peter Zijlstra <peterz@infradead.org>
CC: Nick Desaulniers <ndesaulniers@google.com>,
	<linux-toolchains@vger.kernel.org>, clang-built-linux
	<clang-built-linux@googlegroups.com>, Steven Rostedt <rostedt@goodmis.org>,
	"Jose E. Marchesi" <jemarch@gnu.org>, Kees Cook <keescook@chromium.org>,
	Florian Weimer <fweimer@redhat.com>, Christian Brauner
	<christian.brauner@canonical.com>, <nick.alcock@oracle.com>, Segher
 Boessenkool <segher@kernel.crashing.org>, Josh Poimboeuf
	<jpoimboe@redhat.com>, Will Deacon <will@kernel.org>
References: <CAKwvOdndc=ej=40WktFz0t083pZJcdX1tipuWoTvAw=JC8b3Aw@mail.gmail.com>
 <YFmoPpb5w4q1dWXz@hirez.programming.kicks-ass.net>
 <a60f83d2-75da-d147-ae92-47a5b474e162@citrix.com>
 <20210323195358.GB4746@worktop.programming.kicks-ass.net>
 <00891d85-ef0f-b8bf-6d0e-47ecd4b650ff@citrix.com>
 <YFrzY8FLSxIyiaqw@hirez.programming.kicks-ass.net>
From: "'Andrew Cooper' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Subject: Re: Plumbers CF MCs
Message-ID: <1f7f3ed6-a2b4-949b-ce08-8723f9c044ab@citrix.com>
Date: Wed, 24 Mar 2021 11:30:42 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
In-Reply-To: <YFrzY8FLSxIyiaqw@hirez.programming.kicks-ass.net>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Content-Language: en-GB
X-ClientProxiedBy: LO4P123CA0115.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:192::12) To BN7PR03MB3618.namprd03.prod.outlook.com
 (2603:10b6:406:c3::27)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 741bf61a-51ea-4f9a-51ca-08d8eeb84761
X-MS-TrafficTypeDiagnostic: BN8PR03MB5139:
X-Microsoft-Antispam-PRVS: <BN8PR03MB513998BA9A32F13EF7DD417EBA639@BN8PR03MB5139.namprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: daD8bMUD9IuWHK/ijASBkSz+AFqJL+y/YwyQr7WupyDTqbbxU4b9gO/H1usA1h8rcQCatN0Co0gZQCLMsM9GhRLGRkFPsf3Ln0FXXiT7Ujbd/AvxfTcDD6pTkhYC+cpY/38T6AwRlWDcGhFnCsYZ9swu9h0k0cy6JQkYdTHJ5N8b2fL1KX/r7jwClColCFuSnBujIY7h8aP/etYGEmVpOCXRQAdYPWm9ULZ5AY+/VGidZLSAHNE1KCwk3TQgYbLGtHp1SZehdqPqia949eGXA4f5hAF6BXbQjLGq6WQIpZBNvUsvJYbQ7g7tHL0OMSNBHYtLtGntih9sJRpg62Z48tt9IlsPf39cQ22+p5NWjreuPArYKVYOaOsdKL4PbxCBs8K/dKT16Dz2xAn9QkwH4lPK29/Ljkkm8bbxChUFQ0QJM+5dvyojQ2nVxk/OnOODDgZVcTNTsNzKvukUtjI/+oyryB8u4LfOkSGDzamAsaro4flzUXu5RNkW+FbHPNGx/gxLn4dIsHrqHWiM7sURb1Xz0DjMKzCHUP9UEwuL6aT9Nt4FCmGqZzLwf6w+aF/DJyztGI7gcKddeF6HBRFrR/THku9G3TAPat98IpkKcbAmr4xu3LEuIHl99pc5tDCkVyaeOFV8+E0tf5g8o2nkWssIFc6k+AnPVvGpFRqJXUFVgiSxvN/sOh+CRuvC986fjSBK8Lmx27GHglFDhe1wno1bvlB56YTV+RKC8jlmlvI=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN7PR03MB3618.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(366004)(39860400002)(136003)(376002)(346002)(83380400001)(66476007)(66556008)(8936002)(66946007)(956004)(2906002)(6916009)(86362001)(7416002)(8676002)(6486002)(2616005)(38100700001)(31696002)(3480700007)(4326008)(478600001)(7116003)(54906003)(31686004)(36756003)(5660300002)(6666004)(26005)(16576012)(186003)(316002)(53546011)(16526019)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?cWVYbFdWSGROWG5kRkZTbVlORzRrMVFQcDZUR1VKTHdKK3Z2UGh3cVFJUHpV?=
 =?utf-8?B?aTA5aXF6N0t5K2xIRFNVS2RKcStSNEVieWd0N3pRM2ZWS1VrNDdxbncvaWgw?=
 =?utf-8?B?NmRkUnRFRWlPcnF1WkI4aFFuRXN6dUREVkk5czNLaHN5TWxMaG1LYXJ6OEI3?=
 =?utf-8?B?S25lbzZuR0ZyVEh6NDl0TFBKVUxZMXBJM1BxTWQrQnNrYnBFMmw3cGVDSUVW?=
 =?utf-8?B?UzZZQjl4K2RnMThaQTBaQmRnSjJlSG5wbldlMW9OSTNxejcrb0t1V2F5Ylo0?=
 =?utf-8?B?SmxkM1NCby8vZkR1S2lLZkVtemdiaGZyakpnckZJM0FqK2ZDQVV3dFFlRGpH?=
 =?utf-8?B?SVA3NGpqVzE3TXg0Ly9uZzc3bjNadlJhZGV3V05jMTRoVkVaUXhTOTRmdkFa?=
 =?utf-8?B?eWJyem4xWnhJNFp1K3NuaWI0UU1ad29oMXYwT0Y4SDlwNkphZHBuVEcwdlFX?=
 =?utf-8?B?aFdDSFQzRktuczdjaEUveFhOdWhxL1lzck90dmZhT1c1MitFdS9mdVM1MTdE?=
 =?utf-8?B?Y1ZpMHhtQnd6NWNIekFiRnhGVnVoUW9HbkRzekQrdkZENDhzVGN3dngreTlE?=
 =?utf-8?B?NVJBWkpxYVI1ek9MdW1neUxOWWpKMXN2TUlla295V2pqNVlQeWpuVHRZRnN5?=
 =?utf-8?B?RjhJR01RbnFrbm1sS2thRDVjcUFabVA3OTRnTFRYQ3I1VjdOaFpBOGFubkdk?=
 =?utf-8?B?cFZMSk02d1NkZ1FoeWorTTVpcWlIMnhIb3ZXV0FKcFIyd1dob2ozYjl6UWFj?=
 =?utf-8?B?WnAwblU1YWpGODR1TTg4LzFHdDRjcUhkdXdUZnNQTVAwaHRPZGY3dStJRUVk?=
 =?utf-8?B?bDJYNmMzbXkrNWtPZkFZZXpEWElKU0szVjJsSTNhTmhvQlVVZGhuMG5Nb3Zv?=
 =?utf-8?B?R3BNMGRQMGhWekFRTEFGNlZCeFRjYlNGa3ZUdG15NUx0bHBDYXEyWTJRR0I5?=
 =?utf-8?B?ZkxqS1Rad1pxZDI2N1BCUkxsd25Bb1N6N1dKS2tBNDJPVFdZQVA1U3dQQUV3?=
 =?utf-8?B?UWd4aHY0RnFGQ3FPWlgyWS93Ym1Fc2Urd1duTSt0YVJpNDdTeENoSTBTUVBT?=
 =?utf-8?B?YUpIa3ZrQXpqcng0Ti9Hc3dvQ0pGSWphQzlDQnkvUVNodGxXVkt1emdLZ0Zj?=
 =?utf-8?B?VXFYM3FNYU9GTkl2RHRhL2g4U25oRXgrTG1zZ1NNWnFxTHpwU0puNm1EbnRk?=
 =?utf-8?B?SXl2VHNwMkVMcDM4MllUTEcrUHdGbHZ1M2h1cnpLWWFUczdyOXV6blJvS252?=
 =?utf-8?B?a2VnMjkxakltZUxVTWlKMHRzUGtwbnIyNzA3ZVNDYUlGTGlpbVl4eFcrVmJ2?=
 =?utf-8?B?VlhQbkxMbDBxdDhSQ1FYU3VzdHNzUlB1ZkprUlNhT0RhQnJMN0R3RFBwMW41?=
 =?utf-8?B?Q1dlRkg5WitSWDMyeGs0bU1Iekl1b1h0ZU05bEhTYVdCWXlvYll4RzVVbEJC?=
 =?utf-8?B?Qmx0bzcrbHR0OUpVZEQvdG45SmtTclo0MGxoRVFCNnlSZTdhRnpCUmRDcDlv?=
 =?utf-8?B?VFRXMDFTY0pKSGhzYlJ0SjA1Zi85UGdSbytsSkJDYkVPNkRxR1pya3FCSmpy?=
 =?utf-8?B?MVc1TFAyU2hVeWJYejVlbnd4aUZuWGJ3WFNNcFVPcHV1a2pmMldnT2E2V09O?=
 =?utf-8?B?TjhxOGtnVHp2akJqblArVi9uRTRScE5ta3FIQzhKNGF2TFdBUTlOZnhLNEJk?=
 =?utf-8?B?V243Q0tOZ1RTenFQRXBYeEcwQ1NPWDdYM2FWaWNDZDdtaHhmK0ZxcnpUWkhU?=
 =?utf-8?Q?VXrdHBngj1bi4KJ247JZRzg0pxPpEQ85prQHeK4?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 741bf61a-51ea-4f9a-51ca-08d8eeb84761
X-MS-Exchange-CrossTenant-AuthSource: BN7PR03MB3618.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Mar 2021 11:30:51.3237
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 335836de-42ef-43a2-b145-348c2ee9ca5b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EJc7mrME2IwdRPfZ2TvaiePqZ0JufaKxRerPjURXzenNwz7lr23t0FyO4QPNoieRlAQbOaty0HYAm/GB2r8WXvZtmB08EY4OCaslhExebQE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR03MB5139
X-OriginatorOrg: citrix.com
X-Original-Sender: andrew.cooper3@citrix.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@citrix.com header.s=securemail header.b=UQs7jaJ5;       dkim=pass
 header.i=@citrix.onmicrosoft.com header.s=selector2-citrix-onmicrosoft-com
 header.b=ZakRRm2k;       arc=pass (i=1 spf=pass spfdomain=citrix.com
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

On 24/03/2021 08:08, Peter Zijlstra wrote:
> On Tue, Mar 23, 2021 at 10:23:10PM +0000, Andrew Cooper wrote:
>
>> There is architectural execution following an indirect CALL, so we will
>> only be speculating what we will execute non-speculatively later.=C2=A0 =
I
>> can't see any situation where this would be speculatively dangerous.

Sorry - I should have been more precise.=C2=A0 "... on its own".

> Playing the devils advocate, suppose you have something like:
>
> 	x =3D array[foo(bar)];
>
> Then the speculative flow potentially does an array dereference with
> values prior to foo() having executed.

Playing devils advocate, the issue here isn't caused by straight-line
speculation, but by the array access.

Consider foo() being a plain call rather than a function pointer call,
and having:

if ( cond )
=C2=A0=C2=A0=C2=A0 return bar; // or any junk really

at its head.=C2=A0 This is a split half Spectre gadget - the conditional in
the callee, and the (single) array access in the caller.

i.e. you require an array_index_nospec()/etc to fix this issue even when
there is no straight line speculation.

> Now, on x86_64 we have the (fortunate in this case) situation that the
> return register isn't the arg1 register, so exploiting this is going to
> be more work, but I can see it being done in some cases.
>
> (And, that's only the easy half of the spec leak story ofcourse.)

Don't underestimate half spectre gadgets.=C2=A0 With virt and hyperthreadin=
g,
it can be read directly out of the cache with L1TF.

Pulling it out of the load ports with MLPDS is in principle doable on
native and virt, but requires far more precise timing.

~Andrew

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/1f7f3ed6-a2b4-949b-ce08-8723f9c044ab%40citrix.com.
