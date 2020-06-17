Return-Path: <clang-built-linux+bncBAABBBOXUX3QKGQEKKLOQJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C82B1FC322
	for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 03:01:58 +0200 (CEST)
Received: by mail-qt1-x83a.google.com with SMTP id k23sf473364qtb.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jun 2020 18:01:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592355717; cv=pass;
        d=google.com; s=arc-20160816;
        b=PJlYl0b4rleOENf4tWypr6q9NMw2hk7FdtJeve6m5bcTFZK+16IpAgLFCo0EdKbEpc
         stcIOpYte6/RZWcST/Gy0L2BDr0eck6Kzp4f/qwJFBvW7ATl18n60D/S/zI7qT70ZdZb
         MPU3AeAx9tjzWVodvijGlVTgrNu4KRkF3L56/L6mjuXcsx5uyeGrff4vhJBmiLyTAg9j
         OO+nQIfn97/KYYpkY0TTBAGR7LnYZHOCI5BF+cKP6lEbjzWsrRCV1B4O/+JG+qSuQbsS
         IA7+wx/OGoo9MSoRqSat321AhIMo0hgt+rjZa0uTheKmMz7Xw1wPbBnYtF2bTgOqhqrt
         lxSw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:mime-version:subject
         :message-id:to:reply-to:from:date:dkim-signature;
        bh=/MsHkx5nowZfQZZnKKr6bLcm4YKbS0uwRNdrASzYynE=;
        b=AGuNwv24RxNERtSYXCclLgd1FfGHcl5kUlhsWzy3tUC5FamyD2vDBOBiaI+Tb4q68Q
         DiXbLd+33Fm44dn3LVsEtlZonFs1gezOux/8iCtOlAzM4idRactmepV6KBeQAy2TPvB+
         OyrkS9peAroRS4hVo0D0lo+L00GALiYXqV22r3BeBittTyWASskcY19tXPXbdF/mdZZh
         hQrZ8EQC2ORb39QgEP17kYkOCQRc9NRETlAziMXYShasskIE61KtO33IT4W0keY8tigU
         pHBWaRGSES0WwFNTRPnjqc4UKx0G89pOISMB4i+nhqU8z6ygg2X8vR1PsET1CuNWCez4
         gx+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=BL8m319O;
       spf=pass (google.com: domain of c4s777@yahoo.com designates 66.163.191.148 as permitted sender) smtp.mailfrom=c4s777@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:reply-to:to:message-id:subject:mime-version:references
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/MsHkx5nowZfQZZnKKr6bLcm4YKbS0uwRNdrASzYynE=;
        b=O1Fa+hPki7cpMs8IqCapckT/PAaJZKvKGhOev6Mf4zlLG7ALxJbRtA3uJpUUErHhpy
         R3lfNlynh9S2bgiqGQvTdyUEQb2FOwEJcCrr9uUOKYRQRX9xLlA8bFOsdAjM6LmRvDVP
         X0INWykwzTvqEof63LWc8b1b/eXK647tWH8tUSt9yi8BihAKSmKSOn54j47dQwN+xoD2
         pitCHD7imncAIngKvF128NCb+bNf52ehjO8Vy9lMy6A4VuVi2J8rlpkO2xs1eBGFisXK
         Bno4xADRRyLtSLUsnfs5BlE2bsVf+Lc7sicWRx3v3LWxiPKuJ9kUQkdjUN+dkVmJn4p6
         R33A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:reply-to:to:message-id:subject
         :mime-version:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/MsHkx5nowZfQZZnKKr6bLcm4YKbS0uwRNdrASzYynE=;
        b=EbA0jpJErXMITdN0rMeJqNJ9IlpEwcrEOMwAvw+q/BHcf5n2L62KyivDnn8q80Ra2c
         szuqb++Vwn88jQfAstbZsPx0uc+ZSus2Kd+kD/XXVIgyAAHZ+WHxTg2ZuRp9j2hiO7vK
         Id+oV2NsJimcyKgkXQy7jw1hvZjYvK77qYd4TDNNP2JFVHaBHlmqipjq5fsoiTIgSniu
         4S0rwFy6nVGrGPKFYi8DePrm8dZpv7M+KmKLeLo6+jbACgf3kOe0JX0NYDr2uou6OvYS
         Px1L+NG8PrKT6NcwUmW95EmFUmzldU4v76mrs/xcRy2ITy3iyFWvtz9+3bwY6xoXtaFE
         GI6Q==
X-Gm-Message-State: AOAM532/lWO8cnTE0ZDSGwSXHEv5KbDHdSvwugZPC6SVOLKFaoT8Odvq
	sOpnSR/+2KmI/fOWqzi4XxU=
X-Google-Smtp-Source: ABdhPJyKxTaFPCh1KaONtXUez60CP48oYd5nBFb2z3KPiVs85YuTeDKiG6/dJFocAtJjR/gvHWY95g==
X-Received: by 2002:a37:9b0d:: with SMTP id d13mr23820540qke.351.1592355717137;
        Tue, 16 Jun 2020 18:01:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:fd8e:: with SMTP id p14ls93305qvr.0.gmail; Tue, 16 Jun
 2020 18:01:56 -0700 (PDT)
X-Received: by 2002:a05:6214:846:: with SMTP id dg6mr4850879qvb.210.1592355716867;
        Tue, 16 Jun 2020 18:01:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592355716; cv=none;
        d=google.com; s=arc-20160816;
        b=sYH4l58O2VVau1Im23Gd9Vat5+DL+wCcfg1SmZ561ZQZgMHW/0rlrIJ1ha6R1USgnA
         V8nH+lvklvQnn4rxvuktblKFIQXkxoES//DjmU12CY1q4ouYStElpg4ps5zpdWuEP2hE
         vMprdQTgmkDtQDxTxvsD0uz6uL83z32Jd6yP5yliH0GymULahrdgQaAviLexPog1r0gF
         mJilxnhjFG0IT4VcH4pPYdDdnOp4GeQwRFVJ2NsRp9DMtW3Hd5FDrb7+oQDNePsgQ5Cm
         /p/XebLG9/FiEA/3+X8cNEHpP/mOUZpRdX8LNGzEMPnh8IHTGtQSDxmibtnwQG5TFyse
         AeNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:content-transfer-encoding:mime-version:subject
         :message-id:to:reply-to:from:date:dkim-signature;
        bh=Px2/M3vekXXiQj4GPgvk7rPkk/0W8XdZRSMt8AMkUsI=;
        b=e2ZTmYgOVxwoGzDHTJ319B1eTjCl6+pslK5PaoGc9OGnJXS3IkahS7qiDoDyygdTmh
         BNkAXLLNDNoOUv4Qphp8TBgSgniNqRdFK4/MNC5cwDdbsHaduMUVqdGxbOvUsPtl71hU
         T5x5q5Nyz0GqFpd3oZP8wxkMrWOFmyVTfw1qWpZrseGAE/AwW4n0P+7VNuZHo0pG90lE
         FaFZwzy6MZ9mI+QiliVv9LJTsMuChpBoBBx18mcXdJxMzT8yFbvmqMS+OHi/tjXrKaOz
         XwJM/lcEN3Am8zIi7ozU7IO0KOjSss7NGjBF0E4J22qGNxMqqTeW5aa5w91twsVdZfNb
         agfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=BL8m319O;
       spf=pass (google.com: domain of c4s777@yahoo.com designates 66.163.191.148 as permitted sender) smtp.mailfrom=c4s777@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Received: from sonic304-22.consmr.mail.ne1.yahoo.com (sonic304-22.consmr.mail.ne1.yahoo.com. [66.163.191.148])
        by gmr-mx.google.com with ESMTPS id v199si1204666qka.5.2020.06.16.18.01.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Jun 2020 18:01:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of c4s777@yahoo.com designates 66.163.191.148 as permitted sender) client-ip=66.163.191.148;
X-YMail-OSG: c2dqb7MVM1kaZ47WUo0ZSJ_qEL8bkvg7lHhque7lAFqxmUm_LVo_9poAHOs8dH9
 6f.FwPQ_asYE2Vb5CdvhCJBL6gtddjiyU0sUxnfWEL.jqaUjS8DqLeqi1x0bNix7.fMXIxrqX9aI
 NxSjPJDOkthgd4dwyyzRQEIbhY5qA9R7GsIbIkBxTLGg08nIdFqmGMmpHq13r8KXh9ASGC0GEMTG
 _u5MvkNJo063ts11AVbFbYJmWbhod2wNMaldDosK1gVYBElX1PKg4DhR5lW3jRkXm29mJ5b3kZ.v
 Z_N1SpsYhNMu0fNk.z15GO.ZjlDMJqU1bmFhOgNqYaQjQA0obDQE3RUaIrfzVASo.aBQfFghiKzC
 hvR8FTbJNjR8PufU9t4AEqxK19CPhJ.GTlX0wCuEGk50PiNIJq2S5cco_Z16xgWgJeJzly.MssXy
 tWWzu6vjoGfV0550.dhhtc8vxpQW4Jz5aA.xCLz_FYuVWroJvX4bOv59xPSmm05mN8rnydcNzrom
 _6N0zVsFgkgeKZvxyl7JYz0epwUvxD2gsDLQoZIFqMuqMZ8kViy2LNvI1fnqLsTjlrt3BmPyDIBz
 CeahmJa1Wcbk6d25UU1c9lMDvmDsvzJxB1YIVgkzQMmNZ2KXf7BKbT_S5X47L0fGFSdIcBIw6nRh
 Eb3wDoAxFoMd_6VjkAmkfj4fqnVGIBopxOkodfHncIYEokowg5hGilbV5.KrTHSlsP.m9zlTGfE3
 ScAFlK23uOoB7MShIzlrV9w1.k8EzWeLKg2n4Wh4p7QR_Hns_h.KpYUKrLqCbo2BlUttKT3p7GZh
 _CoMYOFc7l6fXMPrLYY3kPM34Ct1UD37AezSRlMudRtT2THmLjPpMfwvTfnEM9fB8sp57RntArpH
 7XeEupcayr66.hRtobOkTbzXuO2Kokw74bfUVutRRf9snWa0rlz42OEaXzjgvKC36SWmj3QGRb0R
 KI.waLvUfLj0TUam5SRDXEZ8ay4X8O7JD4uJuwhXak.bvdIBgCXRmhTYIi38MXwbY8WIMqsRAGUU
 TZm7dycvxWBP8grtbUf.Cj2gRVUTdCm3bqHwROOPO3cHrGMjfULw8mphOGuKcML9fiuJmqxedVqu
 sWcPEEsUB5Tg5iB2AcrJwV2DOB7ZUQ1AhdqM6kxffqYK2D7WhK3Dd7H.S0ZvzS4vLIX2qsdN4VJC
 hetGpQwUw4g6gu_RPyyncJXf6EtupLD9ID0YNjCseU3yXtCIE5.ihfdkWx5X2i5k0gF8UeV0RWKX
 D67pzS2M76nOlIIIDRts2ZcvOjiyIAk_UYa6vcuGFgl0tHvTETi.gWcH6
Received: from sonic.gate.mail.ne1.yahoo.com by sonic304.consmr.mail.ne1.yahoo.com with HTTP; Wed, 17 Jun 2020 01:01:56 +0000
Date: Wed, 17 Jun 2020 01:01:54 +0000 (UTC)
From: "'Christy Wilcox' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Reply-To: c4s777@yahoo.com
To: c4s777@yahoo.com
Message-ID: <1163854822.1973914.1592355714620@mail.yahoo.com>
Subject: Re: Hello,
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
References: <1163854822.1973914.1592355714620.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.16119 YMailNodin Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0
X-Original-Sender: c4s777@yahoo.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@yahoo.com header.s=s2048 header.b=BL8m319O;       spf=pass
 (google.com: domain of c4s777@yahoo.com designates 66.163.191.148 as
 permitted sender) smtp.mailfrom=c4s777@yahoo.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=yahoo.com
X-Original-From: Christy Wilcox <c4s777@yahoo.com>
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

 Hello,,
This is Christy, I hope you are alright. I have been trying to reach you, did you get my message? please respond back to me as soon as possible thanks

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1163854822.1973914.1592355714620%40mail.yahoo.com.
