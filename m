Return-Path: <clang-built-linux+bncBCM33EFK7EJRB36J4LVQKGQEKPANQIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 04C2DAF70D
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Sep 2019 09:40:32 +0200 (CEST)
Received: by mail-wm1-x33a.google.com with SMTP id x16sf303978wmk.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Sep 2019 00:40:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568187631; cv=pass;
        d=google.com; s=arc-20160816;
        b=1JGMioUs1ksW9wO5mZvNg7D9Y6qWphMzV+3yrma/6cXPEPZnDn3NogXucjCRTy/0E4
         8EkTIODVoY3SUkPaqEf2nDwP1S21D1T+L1MWwrGryAAv2mDg4fMuFDvT1P95OH08C+sM
         fBlEKAKaZYkt2YI8MxLWNCayHrdAKviHhOk0s3LwJk/nyZ608jvnCH+H/nr7ztSMNp/h
         4VI8Ar/khXqBSpPBiTBugCY0gbQQjWPv+fZKWWL2E3U+n7K9O2ER27bvloF29qQwZZFq
         1tkCtUgwEU02bZ5k+7tdaND9oeC7OhTo2Ms+9wy6Zx3BeSUd2Ckvg2bxEOpml6U3Z38N
         z4bw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=ITDvywPaF/TE7okBN268fyyEYCkwui+yFfEy1t8OBJk=;
        b=xPavelgX4jc38hg3YEuXTQSv0cwIox7DParddIpkavnBy6BqFH/rp3S02nSZkALbgT
         2vXZ+Z2wZ5OxJxLMpTkA3/YaFpAfuOReeNVHDtEKPtDd7LcmyG1S4Hh/F4UMgkLv4oi3
         2LB1TgS6CEdvCYW9ZEcR8v6nTh/Oxw4CAGF/5Tgq2v1nv20fZfAFC2Z9AG5zyrJ56XXF
         cXOTjYxEHLVD3kZKqc1CSASvyHZuQzdUjLlkymFHj/OIDUBfUbkHkrT3hR5IbmRdHgzP
         YancOQ7+xMQ1ZzsFRWG5YEJt3oOkWIVsiSrerk9zh7n+DJqxHUqMfHDEw8S9I1rUcqXm
         4osg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UpBQbVsn;
       spf=pass (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=ilie.halip@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ITDvywPaF/TE7okBN268fyyEYCkwui+yFfEy1t8OBJk=;
        b=Gxf7LaTbrbI/uzuNxGq3YrCi3ZItN1HIL7MAZiHDLzqOLFICe5GE3pXOiZWM4vkGmJ
         0uDs9ZifxePQ5Gbw0mpmlCFH0UcF0AN0cqMcIAWzR4xlvW8gC5aE0K5Pq9SEGizHAzpJ
         f+WJULxXiuG/g2I6oJNKueYXHTdr/7v+PjWl2JNzv5bgkKM7FQyEy9TN/amlfBdGo7H4
         S6W0OSHQ8V/sLwsaFlZFphgYQHXJ0CDLTrZS60SuetqFsrBXUTldF1NLdOZpAr/4vYx6
         ouCF5kbiby3ySH/2EdFr0bAavf1N04+/2OfAWaPoaWgIS1SV0M28x2zPE989gg2I/JpN
         DUcw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ITDvywPaF/TE7okBN268fyyEYCkwui+yFfEy1t8OBJk=;
        b=kQKX2zsTE/5vsOhvQAwBrNjvn54PVrs0l015hcY9oeUowetq9VxofUHH4CLkRnmMch
         qrjvg9OUEoHVYfFLp0MjBsdd56rl9wPhVlkTVXas+yWrYDOD1yTS5ljJy/J0ho8+07b1
         7Fxv6TpEyiLI+7dq1PQzZ9wF00pniB/+4nXpJyE6fLfhaz7WDZ8dPHspctmfb5i85ML0
         1yfQ8DifUDzEphuA+8GN1+Vb1jjz2PlxGWYXVXhziMHYI5Fk6CaKoF2GGgPD2Y9zhz9f
         Zm0I9Px8an++GFROi/KAity81MLIVL5ZhAIuohasSjlSblHZgOxJy/MGzXD5FNOw42R9
         Cfzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ITDvywPaF/TE7okBN268fyyEYCkwui+yFfEy1t8OBJk=;
        b=ObZjPGjHyA5k+O3C7I6/aaWGGsuccCDN2F7WE41S5Dow3g9qoWL3fj24uBtNmOcgJS
         ybkFETm7UA+uqM+bQuWKJ/hz7htZnPj2ca1VNxJhcm+ltQ0jPghibYYGIjeU6OdZDayl
         kUTIDLU640k3fdhka4zrbCg9N7Z8E9i4Dw+KSC1J2Q7P/tPLBzSdmFJh0b4Bh63Um6cn
         OjCMGmBIPW+FdI8BHcVcwqev4TSdPdp5YCTyqJDlJ6qOhwLkR1ECRBRtRHU8Ac8Iqmuy
         EY7n+PsZ0ERKiNs1Ep65FZKSKYVuUJKFE9iJjUoXaXj+fwJhMc5h7kRer9uWxeMb7mWI
         3/cQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXDsIJ0u6p3dD/nmR9hdVnto8JSjlmEQtqdjDugX5iZcEOpJVPY
	RXmyXn8zaP5ZJdzUEJbaiEI=
X-Google-Smtp-Source: APXvYqwWAmHKmyRmn0BoVcX67Yi+aP574KwzTRGv3XjX5td8iBW1sw3+WGEe/b3GgQ2H3fWRb26kGA==
X-Received: by 2002:a7b:c401:: with SMTP id k1mr2615700wmi.62.1568187631669;
        Wed, 11 Sep 2019 00:40:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4c42:: with SMTP id n2ls143400wrt.8.gmail; Wed, 11 Sep
 2019 00:40:31 -0700 (PDT)
X-Received: by 2002:a05:6000:14d:: with SMTP id r13mr9935553wrx.136.1568187631137;
        Wed, 11 Sep 2019 00:40:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568187631; cv=none;
        d=google.com; s=arc-20160816;
        b=q1K6ko3WWv6l6i/6z23fmyy3DWI8FL3e4Qt778Vkkf4HZ3yiK8GMwa+aorL9CLOQyn
         uiY6h+ts3JiwfVkzW5r5nG8Bf4ukhKphPpwfHIUz2Fex1obxKYiMRggDudo2mcdvS9w6
         GYTYmPFw38uefAer4itmGwRBuntxrDeS1Zh7XUtWnaMKdf4mUy2CkDTWwRRvHNmhHE/Z
         P/318p/3pQqfXwei3UZS7EEf6YnMR1snEsK4+SctNEDqT2ilAahlt5Agmd61HXdTWtyN
         XCjmUokqLFfhNITtEfL4HAC9AHYftupqQo7TGyQeBEb37QOii9Ltk2fkYse9MQzFZMT4
         YhhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=yGNk1RwgDOsyCCRD4DtS7SLFCAJ4uRNecHgJg3xepp4=;
        b=uSi/1ohf03nUmWgkRyo71BSVehOmpulmFMKw4hQaiz2sfCYqrhdg6ogNcbhXiEDitS
         /ZN+kPOaTwSbWpcIs3LSOHhJvEPrq8as3e03erBKyFTmxYx3EHAzaLHPZ7lrQ6EP2gVh
         n7SE5uL7y28wGXmuOwlEQscLSXaNYzgEQBmtFzlSmc9Jnfr6a51TQN86uOMvX/zMUsU2
         LFdB+Op3eIbBU2LRc9N+n2Nl/8Wnrf0vPiXLrUSHstcjjRwSGnL4jwp/5YKLcFFU3549
         KcxBwpYhEny5DNx1U2OKT2CIjIYtSt7HctID0faOQfkr8dHPFhWW18VOKS3rQH/b0Oxm
         GgvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UpBQbVsn;
       spf=pass (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=ilie.halip@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com. [2a00:1450:4864:20::142])
        by gmr-mx.google.com with ESMTPS id m18si86527wmi.1.2019.09.11.00.40.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Sep 2019 00:40:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) client-ip=2a00:1450:4864:20::142;
Received: by mail-lf1-x142.google.com with SMTP id j4so15620670lfh.8
        for <clang-built-linux@googlegroups.com>; Wed, 11 Sep 2019 00:40:31 -0700 (PDT)
X-Received: by 2002:a05:6512:6c:: with SMTP id i12mr23245659lfo.40.1568187630837;
 Wed, 11 Sep 2019 00:40:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190826095828.8948-1-ilie.halip@gmail.com> <20190911070314.GE17142@dragon>
In-Reply-To: <20190911070314.GE17142@dragon>
From: Ilie Halip <ilie.halip@gmail.com>
Date: Wed, 11 Sep 2019 10:40:19 +0300
Message-ID: <CAHFW8PTS6DQCmJKOC0PK=4A6zjOZm6Krhr6MTqB1c8kZ8++hNw@mail.gmail.com>
Subject: Re: [PATCH] bus: imx-weim: remove __init from 2 functions
To: Shawn Guo <shawnguo@kernel.org>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, linux-arm-kernel@lists.infradead.org, 
	Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ilie.halip@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=UpBQbVsn;       spf=pass
 (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::142
 as permitted sender) smtp.mailfrom=ilie.halip@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Hi Shawn,

I think you can disregard this patch; the issue was already fixed by
Arnd[1] a couple of days after I sent it.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git/commit/?h=for-next&id=3b1261fb72c7dc6a9e4604ef1ea01d6bb67cc3d1

Thanks,
I.H.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHFW8PTS6DQCmJKOC0PK%3D4A6zjOZm6Krhr6MTqB1c8kZ8%2B%2BhNw%40mail.gmail.com.
