Return-Path: <clang-built-linux+bncBAABBWWU5GBAMGQEVFEWTAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BCCD346C7D
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 23:23:23 +0100 (CET)
Received: by mail-lj1-x23f.google.com with SMTP id z18sf119048ljz.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 15:23:23 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1616538202; cv=pass;
        d=google.com; s=arc-20160816;
        b=0okcSuvVGs8pXddi7l9Tn/PecGMcfgPWW0ieZNNdUdkad2vuxOVgxtXYiocR2ZGZf9
         wC+9dKZkenF9VvE4V72HJApUSrZ4rmUNthWBSs6AFo016LHpHdc2Z0ZAIUJw1d5c2nSF
         0Is7uihy1td3wM6SEPqV1j4mNKKbDiZnzLeLa3h6nVJ2vknpZBPQ8/WbOJ1YwumyX5Pl
         BvxgwACtgCA2NdrYfN/bsbV2jpWSPuIEAaozjcm02W8w9sXBNQ3kaz7HCjl8MTbldUc4
         Tc3MKi0vIewyLEmr3TeMkhafl/KoPTCIvTQcs7WaIcduN3ztQdwa64Z2s0KZnAODq5u0
         Hnsg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-language:content-transfer-encoding:in-reply-to:user-agent
         :date:message-id:subject:from:references:cc:to:ironport-hdrordr
         :ironport-sdr:dkim-signature;
        bh=zDdqX4cZ6OE1fmBV3w5yINxHCZpChCjF4AeoMQf5cdc=;
        b=bkDPjyBMZ1F8Zb11JNWVTOBKJk6xoQ40mEO/G+Ew/qE9Ip0oIxm9qVRrIdhKJ7HcK1
         VsPP7G3QIH6ciOYrsDmwk3GXQXkEet0+eDnacHXdY6IVdu5doJzvtxToygxxNlO1OeOC
         9Ocxy+I7YpaFPKrMo0xACordjNBA//1RLU7PWFm2l85lz8827eQI0v0skS+4PHtRyJIR
         UiJ/91MyLvCuGzhh3WV89jG9NKHsfKvG+SaNVzRo7a+Ix9zlEWptIpuFNqAR71oJcOVJ
         JdQcVkK8/0iDbe/tMkapLYMb7QMGYqmkbUSDoIeDeuysvyC7/ZF9plKyVH0v9JVWnP//
         ghdg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@citrix.com header.s=securemail header.b=A3JZ0IXh;
       dkim=pass header.i=@citrix.onmicrosoft.com header.s=selector2-citrix-onmicrosoft-com header.b=A73Sat++;
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
        bh=zDdqX4cZ6OE1fmBV3w5yINxHCZpChCjF4AeoMQf5cdc=;
        b=lOqIWiJ+pDgncvAUx1JpSSX2+wg/GGnKas811H3aLcoAFJPRedyo+fHfUdnO8Qggkz
         JRFK5bm70NT2Yz0FqFbasf0CR0oMN3wYj8+xXKQPMSXsU1zi/SGjoGxzDv21IFz6UKrh
         ueko4EMVU9xZ0pRFKycfJ5Rz1hu+ahLdnTVFcgruYtqCQwda52Nq/Lq25kYISAcV5MAE
         LCU3qMSxEzAoLLX/r/Jxr/pqRoFla4IAOJfzQ1pMKsnnUif+9MUmtNfpBvYOBMT/JZEA
         VoH6jdLoY81Y+b99ygYgP9Pmf9iatWFZj5bljqpwVTXNq1SiXdmsfzd5Fk/gQfz7Wwkc
         6Nvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:ironport-sdr:ironport-hdrordr:to:cc:references
         :from:subject:message-id:date:user-agent:in-reply-to
         :content-transfer-encoding:content-language:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zDdqX4cZ6OE1fmBV3w5yINxHCZpChCjF4AeoMQf5cdc=;
        b=js0+zoA8MzZ735lF9UaDSFXZlYtfSHVtHBMeEYtHiHBzbDsx8+JsHSyXiHOFgEQn7O
         ZbP6OfCD08uejL6pGPDFcWUmZXNp3yniFEmgZJweJ1m5W4MaxNZDocCM8xcOjVPJD/7W
         NXoKuq6D3v9zGRyx45EhuULJiezx87zySFr+BJTvZ6c4BSn4XqgNq+E0gSwpXlFx3bJC
         26D91R7lOts7tfI3OuYEvFBSG0GS5NiNe11iz5T7BbVYcB/vGiDQ6Y8y+1+QPu/ekptX
         SFts+1uJulaGpMNfubaOhl0BSI7OBbUSWZOUQ8ZhmcnFiBNRuQJo6MMnrkaStdlIF5Xp
         nsPQ==
X-Gm-Message-State: AOAM531TZzldTMjj8deI1dMhF3mqeU8Qwv0eJZsxleLBg7chZcNSmqol
	I9H+BQfzOiXy8E553qNldPk=
X-Google-Smtp-Source: ABdhPJwgOcaIZ1hRxOVKujHC+WVxPkIMop+KQtTsjIjlSqJcaUkx45ECi++Kq/VnGwpnc/s1J9UAtg==
X-Received: by 2002:a2e:8708:: with SMTP id m8mr55493lji.339.1616538202805;
        Tue, 23 Mar 2021 15:23:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8503:: with SMTP id j3ls70496lji.6.gmail; Tue, 23 Mar
 2021 15:23:22 -0700 (PDT)
X-Received: by 2002:a2e:8e77:: with SMTP id t23mr69380ljk.484.1616538201921;
        Tue, 23 Mar 2021 15:23:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616538201; cv=pass;
        d=google.com; s=arc-20160816;
        b=broPFVB0MnhVfrcs6cCLIrffMYdfNP86tyTRXBgjcoQXnIBr+/cr4iNM1Kevg2VjpL
         qvEXVDlVl/Xf8CqiuMXw4dG7pfTWYWOxkIr+K6DJxvT36asPUOI3wpKW9u67WOObktwQ
         SrDD0dWyX/MYEiPoWC9oRL1GkFPLc+B7E1kDvtNz+TKPVaqtSUgY1T8/KAThwGKeUE9D
         JILjtHCbq548tE7y1l2MvcL40rO020SQSHUSKSiRndCFL+xpoG1dJRfkC2Scuit7PzPl
         PEjPZuyUgLpna90FF8YTp9gGs4i9dOGeleFDBm3z/Cc+W/d0kl5CWzTk7BfoWDNdqc/z
         h6UA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-language:content-transfer-encoding:in-reply-to
         :user-agent:date:message-id:subject:from:references:cc:to
         :dkim-signature:ironport-hdrordr:ironport-sdr:dkim-signature;
        bh=hs1Ool01KlDVYvQzIxdEyLLNLAYrzRTgGvDKEnlg3u4=;
        b=oHWDd5a/cTI/30NCTxij5XjL2zYP5G9Hzt3HDriE/WenSM8Ig1r8TrzDUeWdemIzwo
         sb3fqUEPdZvjcbUg+uH/lj7ylAO1OeqHCOhEWCx6OWVlZ22JWO1KdQ4C5QWqhNprxiyV
         BjXwQ9W7WqFZb5AuVedFWZDSJmeQFhFRu5pBrGdsecDF3scxqbmR5P5k24evLV8SvkgY
         /ldMtMTGEgxRhQ5eD6IzP8VMqgwaa6uGYn7bx8jYE7JnzKrxr0fqfqHZ/XqKz+TmXQTs
         SHwMZRhe/XDa2B7CSTVKWOATOM8zwoISk3qYhKky8gvGBlho51/ZtfHbBiUKuTfJOJAJ
         ueOA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@citrix.com header.s=securemail header.b=A3JZ0IXh;
       dkim=pass header.i=@citrix.onmicrosoft.com header.s=selector2-citrix-onmicrosoft-com header.b=A73Sat++;
       arc=pass (i=1 spf=pass spfdomain=citrix.com dkim=pass dkdomain=citrix.com dmarc=pass fromdomain=citrix.com);
       spf=pass (google.com: domain of andrew.cooper3@citrix.com designates 216.71.155.144 as permitted sender) smtp.mailfrom=Andrew.Cooper3@citrix.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=citrix.com
Received: from esa4.hc3370-68.iphmx.com (esa4.hc3370-68.iphmx.com. [216.71.155.144])
        by gmr-mx.google.com with ESMTPS id 63si9562lfd.1.2021.03.23.15.23.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Mar 2021 15:23:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrew.cooper3@citrix.com designates 216.71.155.144 as permitted sender) client-ip=216.71.155.144;
IronPort-SDR: 0H/8YqoTh7oHqqIYhSel450ACE4sW71WBnsPN8lcxNv+sl4uTuZkACV052ba1DLEDAJfNvnzdS
 biu4hxcALXRXrWZBhSENjyHVsGTYz7RZOxKoME1L6JkqEEsHTf0dziZXW4hgy/e03ye9lfxCu9
 IH2uInUfQM9A3g3u5GrODk8JyQMohWMuVUYabeLQkwyXtuge/lQjU8Pwzs6KAxH8kxJ7/qkQSR
 PeW7iww6/C8OeK0kFt9f4znEB6tMnwj8tfCx9bynWmMy1yqPPapO33G221NEE+WcwxFrcqIsFO
 dUk=
X-SBRS: 5.2
X-MesageID: 41406143
X-Ironport-Server: esa4.hc3370-68.iphmx.com
X-Remote-IP: 162.221.156.83
X-Policy: $RELAYED
IronPort-HdrOrdr: A9a23:zp0s0K8rU0X/5CjRwEtuk+FRcL1zdoIgy1knxilNYDRvWIixi9
 2ukPMH1RX9lTYWXzUalcqdPbSbKEmyybdc2qNUGbu5RgHptC+TLI9k5Zb/2DGIIUHD38Zn/+
 Nbf6B6YeecMXFTkdv67A6kE9wp3dmA9+SSif3Dymp2JDsKV4hLxW5Ce2OmO2dxQxRLAod8MZ
 Ka6NZOqTbIQwVpUu2QAH4ZU+/f4+DRnJX9bhIcQzIh4g+CjTSngYSKbySw9BEYTj9J3PMe4X
 HI+jaJm5mLntOa7lvn12HV54lLg9eJ8LV+LeGFl8R9EESVti+Gf4JkMofy2wwdgObq01oylc
 mJnhFIBbUI11r0XkWY5STgwBPh1jFG0Q6Q9Xa9jWH4qcL0ABIWYvAx/L5xSRfS50o+sNwU6s
 sitAj4xvkneC/opyjz68PFUBtnjCOP0B4fuNUekmBFVs8mYKJRxLZvjH99KosKHy7x9ekcYY
 9TJfzbjcwmE2+yU2rUpS1GztCqQx0Ib2y7a3lHkMmU3z9KpWt+3ksVyecO901wha4Vet1q4f
 /JPb9vk6wLZsgKbbhlDONEesevDHfRKCi8fF66EBDCLuUqKnjNo5n47PEc4/yrQoUByN8XlI
 7aWF1VmGYucyvVeIKz9awO1iqIbHS2XDzrxM0bzYN+oKfASL3iNjDGYEwykuO7ys9vQvHzar
 KWAtZ7EvXjJWzhFcJixAvlQaRfLnEYTYk8pss7YVSTucjGQ7ea99DzQbL2Hv7AADwkUmTwDj
 8oRz7oPvhN6UitRzvWmx7Ud3TxelHu3J55HaTAltJjirQlB8lpiEw4mF657saEJXlpqaotZn
 ZzJ7vhj+eaqACNjCP1xlQsHiAYIlde4b3mXX8PjxQNKVnIfbEKvMjaXWhT2XCANyJuVs++Kn
 8am31HvYaMa7CAzyErDNyqdkiAiWEImX6MR5AA3oqO+NniYZF9Kpo9QqR+GUHqGnVO6EhXgV
 YGTDVBal7UFzvoh6ngpocTHvvje951hxruB9VVp3LZvUC1vtouWXMfYj6rXaes8EUTbgsRom
 c0374UgbKGlzrqA3A4mv4EPFpFb3nSPKhLFz2fZIJfmqnifSZ5SWviv03ctzgDPk7Rs2kCjG
 3oKiOZPdXGGEBUtHxj3qH2y19sbWmGc0Vsand1jJ1lGQ39ywRO+N7OQpD2/3qaa1MEzO1YCj
 3DbDcICi5Fxty81neu6X2/PERj4q9rEv3WDbwlfb2W52ikL5eQk7oaW9VO+ox+CdzouugXcO
 6WdgOPNgnkA+cx1wH9nAdiBABE7F0f1dXm1x3u4DLmgDoRAf/OLE9nQL9eCdeG9GTgT+uJ1p
 I8rd9dh5rGDkzBLvq9jYfQZHp/DzmWh0icZeQhs4pVsqI/r6EbJeiSbRL4kFV8mCwjJ8L1nn
 4ESKt14Lr9KpZiFvZiDx5xzx4MrpCzN0MlvQz9P/8mcXwsh3HdOcmV47Cgk8tYPmSx4C/xM0
 KY6StT4rPsWDaCz6cTD8sLUC5rQXl5zHRp5+WZcYLMTC2sauFY5VK/dluwaqVURqTAObIeqH
 9Bkpy1tt7SUyrzwwbLuzRnZopI7ma8WMu3RDu2JtQgya3yBX28xo2w4MCyiz/rSTy0L2Qg7L
 c1C3A4X4BkkTktjIo+zy6obLf4y3hVymdj3Q==
X-IronPort-AV: E=Sophos;i="5.81,272,1610427600"; 
   d="scan'208";a="41406143"
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YHSLIfAhC75OoQ4ktq2nrNlxPRv+khO07eCK1wVQ57ZDpZbl9bR7KrO5W7L/4TQhuSCCW/kioek35QcL+8JVAGv+Fg+I0tU2rQ/jB4/aU/TQPfwrwAR4MGvwSozOItbo75Ib8HOZjTk8oK730koFA8k3ioGVOYUuTtql1XTGfdEvEk1VWKhcskstVzj/R6zam2sHixM+VfZBuZfvflNIU/TQf0RcOzEJACgABg05x2jkBU4+o8WAUVLSOSFykH5OnSBFdjpuo62Kk/ZwbfZf0wmc5KWuSF6nQqR+KhZwC9793Wv6hmIIKvPb8gHimtiJjpyu+x7UHFdbTFuMtkKp4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hs1Ool01KlDVYvQzIxdEyLLNLAYrzRTgGvDKEnlg3u4=;
 b=ZstEvqFvZg4AtgfwajbIa27w7urb3SA/FAI5xu+aNnIv8ENDElCEJGj3KOCu15ZSXTGjMp5qSbmWM8vvJzR2gGNQuttg53WK4UU+RoAMQOY6HE9wXZE/COsbc8CEJN61cPuya8gJrIhs4NgLZPOcyYDn+/DsKyjC760naQi/o7Am08isU6NZ+FIUPuN8zgZ9D/xmxIse+PDR8tIPRDKkTomimzG9xxKfequ8mdOostCuOKsVgDC8a7MIET1lYwz1uA/ZULoK18k2fninlv84WxydKxvWXxn7aZtVlQ44kRSlYWn+pskLNifJw8V4dunq4saSDEhdkCnxx8WdVIciSg==
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
From: "'Andrew Cooper' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Subject: Re: Plumbers CF MCs
Message-ID: <00891d85-ef0f-b8bf-6d0e-47ecd4b650ff@citrix.com>
Date: Tue, 23 Mar 2021 22:23:10 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
In-Reply-To: <20210323195358.GB4746@worktop.programming.kicks-ass.net>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Content-Language: en-GB
X-ClientProxiedBy: LNXP265CA0064.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:5d::28) To BN7PR03MB3618.namprd03.prod.outlook.com
 (2603:10b6:406:c3::27)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1b89e422-dcf7-4eb3-c37b-08d8ee4a41e6
X-MS-TrafficTypeDiagnostic: BN8PR03MB5121:
X-Microsoft-Antispam-PRVS: <BN8PR03MB5121CE7A83C628F50AF1DC30BA649@BN8PR03MB5121.namprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2201;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: iZjrNNqIrzTFJRtlKMiwtdv3B2JcToKU9PCpTYa8vcRMwfV3zIOcvGEUqGDmy8tetwlFxfNetYWEPLY6Tj4rQvKsNgGOPvg+awZWopj2r+an7jgIwCscLgxuDbpyqd1ve/xYNoxSpE242vGvmU/95j1J5NuVdkgTGXDj84pAEK9+wzGr1Q5aD2kM6Wizbady0RluDa/aj64GVk7iabZW/tGiBgKn5cgYh+WXjyAg8vOmH2opwBPVRKVvaQSerkiYqmQWAG3mST1+wAw0lAUUBZRK7ORkMuYQiNnUjerSiCFi5TjqzejpwZrrxxPFT3O2ZGDu12mrfKwlekaIOlaWr37DxeAPIeFqY4oIvWPOIFOG7VS2Jsh653OQ16nEt2ljptkEdzGf9Ka3eP89uRSUCZN04OHeGCkQNMO94OT8l8RT388FNhrS9E5WN329cz4J5pWzZ/dyJ+kWm4lfJW+5FIAWV+I77UOwgF/fxpVRR81c3PZ59riOrwU+YEUoxCrd5r1At2F1PkpIdKfMb5UMavBw6/ROQSp0HUQgY6RiKqFkkYRhZEqx1Mj+HeUQMH4xc+rYBx7PQaQ3MQD4c966nFdTDd7ceqMKanbB/zBaQQI9demm187Zi5PzzVO78DG3ZxIKYvoN9Ro0Cpgxn4PzTGaohjoQZs0b35dnf245x8Pr/ZBiAoajvAhf2/0daVAUnHWeZQpZGG2ANqPRfPGsb2yoMAK/4y/YxEYTqp/ENLg=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN7PR03MB3618.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(39850400004)(346002)(376002)(136003)(366004)(2616005)(31696002)(31686004)(8676002)(16576012)(66946007)(478600001)(66476007)(316002)(4326008)(7416002)(8936002)(66556008)(956004)(36756003)(3480700007)(16526019)(6916009)(38100700001)(53546011)(7116003)(5660300002)(26005)(54906003)(6666004)(86362001)(83380400001)(186003)(2906002)(6486002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?Lyt4NW05UGU4RGdNWnpNRFpFMld0dFR0T2RGc254bkRWQWVKZ3hEOHZUWDVQ?=
 =?utf-8?B?TUVoL2tBcWZ6bUZKWU4rdjRLdUtWVTJpVCt5bHBVaEV2UjRpUm5ReWhnWEZD?=
 =?utf-8?B?R28yMDJSN3dYMUFFQjZGQndCVGw1YXR5dnZLOFZlOTVDOEtiZzloNUh6NjJS?=
 =?utf-8?B?dXFTTExTc1ZPTnVVRmRVOWcvcHc4ajhWZXYrSDFoVUxNTnRseHdWZmNNaU1F?=
 =?utf-8?B?bDdzYUEvbkV2c0tvV1ZMWVZ0OWM3SXVoMTVwSVE4c2I1R2k0MVRaaVZwbW13?=
 =?utf-8?B?RTQvcGFIWUVNVk84N2lTckI0N3N3dTYxSWdzZHpyWkVjL004Z2pQb1VZeWUz?=
 =?utf-8?B?dEd5MXozT3lnVkFQa25jY3JTT2dncFBMVjhIN0NoTGc3eDc2Y3pNZmtKWHcz?=
 =?utf-8?B?cHlvZEVqZlFQN09HbkQvK2NZb3VUNy9Dc3Q3ZThUd0p6MGVvVTR5WHdWek1r?=
 =?utf-8?B?MDdzL2RIdjJzd0VsREtSb0N2cmdjczY4Mys2NFVDSTl4WW1maTBQZFV5MndJ?=
 =?utf-8?B?VDhkcjdMdjlkazR1ZTFsNXZPWUZsZDJyOXQ5T1hmeDl3R2tjZDdGb1U1ZXBy?=
 =?utf-8?B?VUcrVnRPQkErOS9yQURIRjJhOThzQk1ENG1IWDlVekIyN1JFOHNJQ2VqbDhJ?=
 =?utf-8?B?YUxoYlBTSzNrbytRNUgxT1puNnByQkdaUGxPOEliMVR2MFVNNHVSNnhFRGc2?=
 =?utf-8?B?K0YxTGl6T3h0enVuSjB1aFNlQTlEZlA3TG1VMUMwRHVBNlhYUU5jSnUzRTJJ?=
 =?utf-8?B?ZHY1RnYzeDhxT3JoZS9NN05vOWh6MkRiUXZlVThZNVVWZnlKYjY0QWxUM0N1?=
 =?utf-8?B?RStHZTduSkJEaGdUQzhpUkxvRFlMWnJtZm0rS1pRWjNDR01QWlczSjJkaDJw?=
 =?utf-8?B?UmRQc2RvcXhiNUUxeWNzakdlTmZ6aVBJelBOM3d1eHVYbHZ2M3NpU1JqWkh2?=
 =?utf-8?B?SnBpbXA0KzhydlBZdUJJcm5PZ3JySVpFQUx2VDlVbUhxaFE2ZEZScmRNT0xN?=
 =?utf-8?B?T2h4aTVYL1VBZEFSOWdlWmRGMGZMTmJ3UEtVSlk4U0ZPMXE2azBiVjJpUW5U?=
 =?utf-8?B?d0tDNTBPWGJpR3NIOG41KzhmMVR6WW0yb3VNTW9RYUNJWjBnSWFuZDhGSGJy?=
 =?utf-8?B?U29YV2FZenFNeXdpWVFuYkNFK0MwcjhpZ0pEUmVyc2dXeTR0MjA3VmJ5N251?=
 =?utf-8?B?YWF2Yzl4NkxHeWRzZFNoeitFUVY4QnBwKzNJcWtyUGFXQjE4RHNZejdqYlV2?=
 =?utf-8?B?REhYWWs0dDRrMFZtL2MwYmNhWWNxeDl2Tk9rV2twN0Jhais1eWxpeS9sa3VY?=
 =?utf-8?B?Zzc2ZlAwYTVRQ1FGRnVlT0NDbjVlQ2lONFdua0NseDRYejhZemcvMFoxYkVI?=
 =?utf-8?B?cUZaYk41ZjUrV1M5enFPNmtoNDZlOGdJZlh1VWhIOFE0eUxibWt1Rm1lVE1Q?=
 =?utf-8?B?Y0xHb1FFLzNxQVlDQjBFTE5kY1NZU05EZWpseTFudzNYeVRuMW94bFZZQWRR?=
 =?utf-8?B?ejkvNzZTUUpmdkZ2c2I5cXdoK3diWFhDWUFoaUxTSlBoTUI3d1ZCVlJjbVFP?=
 =?utf-8?B?eVppT3BYbnRsblNmdXhkdVEzeWkyR2F3MENvUUx3N2tFQU9iQjRTY1V3U2Mx?=
 =?utf-8?B?MGNxSE5hUlN1MnNhVzB1Nm5STitRcG9GVXFnRGdxOWJ5eGJueFYyWVJqUGNt?=
 =?utf-8?B?WjNXUkxkNUdZblBPU0U4ZEtPTUxibFE1THJodzg0WlVseCs5aEVmV3N0b0M2?=
 =?utf-8?Q?pC8pfx8Aon5eZAtqWHljl+4pCOzcIfLxnhaq7fw?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b89e422-dcf7-4eb3-c37b-08d8ee4a41e6
X-MS-Exchange-CrossTenant-AuthSource: BN7PR03MB3618.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Mar 2021 22:23:17.6266
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 335836de-42ef-43a2-b145-348c2ee9ca5b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: C/XZVjfb8XhV8rw70ULolL/gUjT/+8GkubnbU0+i4OSUf+iTJPR+6j/MKiSjgO7LiQBn+gPZZmu4Sk2SMeAGN05iTk2RmaJJ1oOmqlIQKGw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR03MB5121
X-OriginatorOrg: citrix.com
X-Original-Sender: andrew.cooper3@citrix.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@citrix.com header.s=securemail header.b=A3JZ0IXh;       dkim=pass
 header.i=@citrix.onmicrosoft.com header.s=selector2-citrix-onmicrosoft-com
 header.b=A73Sat++;       arc=pass (i=1 spf=pass spfdomain=citrix.com
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

On 23/03/2021 19:53, Peter Zijlstra wrote:
> On Tue, Mar 23, 2021 at 07:29:01PM +0000, Andrew Cooper wrote:
>> For the compiler folk here, the tl;dr is that indirect CALL/JMP (i.e.
>> function pointers, jump tables) and RET instructions may speculatively
>> execute the next sequential instruction(s) before taking the control
>> flow change into account.=C2=A0
> So JMP and RET can trivially have INT3 following in such a way that that
> instruction is never in the actual execution path. This is obviously not
> possible for CALL.
>
> For CALL we can follow with LFENCE (hurts), or if we can get a limit
> on how many instructions deep the speculation gap is, a bunch of NOPs.
> Or possibly nothing at all.
>
> As such it might make sense to have these two cases separated out.

Agreed.

There is architectural execution following an indirect CALL, so we will
only be speculating what we will execute non-speculatively later.=C2=A0 I
can't see any situation where this would be speculatively dangerous.

For indirect JMP, whether you care about stopping speculation depends on
how likely it is that you'll enter case 0 of a switch statement.=C2=A0 That
said, for profile optimised code, the chances are that the hotpath(s)
are in an if/else chain, so I don't think it is worth attempting to do
anything interesting here.

Both the Intel and AMD documents on the matter say to use LFENCE, but
that is a simplified set of instruction to cover all 3 cases.=C2=A0 Given
that we probably want to split CALL away from JMP/RET, then INT3 is the
shortest speculation block at a single byte, and thus has least .text
size impact.

~Andrew

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/00891d85-ef0f-b8bf-6d0e-47ecd4b650ff%40citrix.com.
