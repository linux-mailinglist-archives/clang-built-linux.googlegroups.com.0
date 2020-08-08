Return-Path: <clang-built-linux+bncBDZIFAMNOMIMVFN37ECRUBEI3L7EO@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 580FD23F818
	for <lists+clang-built-linux@lfdr.de>; Sat,  8 Aug 2020 17:54:51 +0200 (CEST)
Received: by mail-lf1-x13e.google.com with SMTP id i6sf1656903lfd.13
        for <lists+clang-built-linux@lfdr.de>; Sat, 08 Aug 2020 08:54:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596902090; cv=pass;
        d=google.com; s=arc-20160816;
        b=QxWgVJdecn/9czf+96Cdofjip/xLmDZJvDMG97TRcBixUlnF6uPBalXkm5Al+/ROGj
         9ZpTe1tsRgRDu05W0CbAQaAnsWIByipW753ZOC7Huscc1atPEwpaV1MOAW3E9HkCjAqR
         A92OPCo6P945J6HyDf/LxnDD4e4jzR+C/j9oh4ZEeP4IYKS1k+RVZXk4s8kB3SwFJCGP
         QSXIaN7J6YtV5squluKwpPApMS7TA+4h+htljIsxEjZ0Mhp7BAI5J4x0zdk9NCKMdf4T
         5wGwmgEYh7k1CqKw1XDaymwLsEV9SeCMsYLhCJ/YmTLlQ1AR4/MQESMsXpQs7MExepvV
         G53Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:mime-version:user-agent:date:message-id:autocrypt
         :from:subject:cc:to:sender:dkim-signature;
        bh=wObBuTi52qyp9mcDDnhNO5WVX64RLGFj6aNXS+niiyU=;
        b=NnbSGP5Q9GX5XvnOvST4FYoBsszQ15Lb5rpggfMqjCQsTmaacLHC4caTHMX370KsQR
         1Wp0JH3ofgYuuV8Yts6cTK/0IIw1QDGtgtIREWbBC2eWaRmxsXi1RiihXdtHTTM9kmco
         7XD5zGtLvSenOU+qVajAvzE6wWucEspD2832e95SFZ2aJ6Ufc/I0gXXghM7xF1gK7iJ+
         quIXtL2mQaxim1PCYXt+LCxx0CuvgJbGVNrrAdAhfrRHsRuqq0xhjkLk21uXm3f+fmi/
         eR04y+PTYTzq+VUDgZ1eB/wyrB71SC3ZT4BRIfQe5OLk5juUMMP31SCWfSGgW05z+Hc5
         6fng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@web.de header.s=dbaedf251592 header.b=Oe8PvcWf;
       spf=pass (google.com: domain of markus.elfring@web.de designates 212.227.15.3 as permitted sender) smtp.mailfrom=Markus.Elfring@web.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:subject:from:autocrypt:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wObBuTi52qyp9mcDDnhNO5WVX64RLGFj6aNXS+niiyU=;
        b=TKp53N92K5Irh9q3kN/+5yS1DQiODlR5NywsiqTTOeOUykG8pJCR/KrO3vDC2jxRki
         R6kLw/b3UFmWmsQUngm2q3/i8qQlYOBGbghgIKMyDXRGCzxoW0ff9+dhLeJwCc3md7Q6
         BCcIj1G/Q4g/fGe5PRclYLTAXL2yLbYBnjBf2icokCkFkRuKs1wMPGs/BVkJLD38Xkie
         rtVuccsd8Y1gVUpPSoXQUADo80ZQW/eTuEkDznGkevjf8L0nZlD3XrVmvoMNPDY4vBua
         1eHz9dZRtgjjzYQf47Pp47dYrUz2GYqt00d4z0ki3IUmEwCLhg+k3ndwdlLEDeOIhHMS
         hFGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:subject:from:autocrypt:message-id
         :date:user-agent:mime-version:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wObBuTi52qyp9mcDDnhNO5WVX64RLGFj6aNXS+niiyU=;
        b=H+1sCGH/3Y+vrCZ0ibV8mJzAJYdJ+en27R8eAJXixK0rBT2EauSaUAisXi6uEDQwDO
         5aZ0uoXDxsWl4auBUhTmucC07nm74/LC3NSo77F9MHW3l1ff16JvKSPROVhyoDbhW0ov
         2IZZAdqfln0ve78u5F1PuReC/AYW1ETg0giWzdi+0pPfoEkVO5L/dgKh13aUtGI6yi4F
         DN2DOxZaFKvAPhfCfv03xpSbNLkrq84PIeduJmuRcsiSNRxUaMX+D7f4K4jkdoYF/lzg
         I2kJwwlchXtXiBPwEkXJdbb2SBTA3UQ/O4sgYkHUqiidi7UOnhe5XFBYpm1QtzOnDCVb
         hSkw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531LeqIiCYFXgfTdOWCtCpRyBPCSzC4kt9pJTScWgxdF58uclUBx
	o+qD9Os2UmXehF/fXYxnRxA=
X-Google-Smtp-Source: ABdhPJzcVUyWR3ktgQBMJesr0BHLCDKZ3MKRC0qcINsDqPrm6YP9P37FNO1N22uZUwHHHX1kGJy62w==
X-Received: by 2002:a05:6512:36c2:: with SMTP id e2mr8833615lfs.98.1596902090684;
        Sat, 08 Aug 2020 08:54:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b4d3:: with SMTP id r19ls2493241ljm.3.gmail; Sat, 08 Aug
 2020 08:54:50 -0700 (PDT)
X-Received: by 2002:a2e:9a15:: with SMTP id o21mr8599824lji.419.1596902090115;
        Sat, 08 Aug 2020 08:54:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596902090; cv=none;
        d=google.com; s=arc-20160816;
        b=d8THmLuE7bU4M5LdKT9f9H3KULYQB1h7wpCqgJETdpuCQLVo+dlKaQbtB8OBEnK8ay
         1FV0GC8Xhjl25iNRx4fPhRSswAkMYmo53P02r0qrnOgDlK0ipO4Ac4uerAzx744zEIlt
         Ve9cw8cyNfIDx6jAy8d26NmAVwIsIL68VtBwzg68a5qb1uWmeUKjH38Zj6Z8LsHgeTsC
         bbysL0EfOWSRQaEMDNN5mMLXah3/bA2k4mACiBeGagunsjrMS+Iy3leDns0jYlgXinbG
         eQgNurJ1F96MEq430A7BVxpz9WddYT6AVfXa/fii7K9n2UJzNR0S6jMTrDk3jY2EBntQ
         KLiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version:user-agent
         :date:message-id:autocrypt:from:subject:cc:to:dkim-signature;
        bh=KR6/ELPGEYtF90o1FzYnrD6EJQDG9B0MJEyPLvWwm8o=;
        b=Kdmy9H/Ufa3uPc+ZeEOV8wyx1RhyltKKebY/bR5JZ6vxGPNDErQ9OQfSOYtC0zYeBp
         chTzUG+0oeAKwTz4UMeer82givuYM3IgFLPWZwbtAVdC46H01SNAyXKesid8+4HG8vNx
         HjP+KvNYOpeFD6AL/06+TfsW57HKiUs94ukeNNB1zqoSCEWDzOI+IPnHDN5egR2NQlWZ
         c9gwxqLu83bFxrMoYsjRB70o5lYORKUVwMZZWZLmiTCYhyOdK31CEuQbqlfsiQVIUC7g
         08l+Q6RHZLgNr8bdTANg6YWf82YJRgP+fojD1aAEmLx0KSbOxxMDtMo+/1TeaXDRHkpS
         Gn2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@web.de header.s=dbaedf251592 header.b=Oe8PvcWf;
       spf=pass (google.com: domain of markus.elfring@web.de designates 212.227.15.3 as permitted sender) smtp.mailfrom=Markus.Elfring@web.de
Received: from mout.web.de (mout.web.de. [212.227.15.3])
        by gmr-mx.google.com with ESMTPS id o13si518499lfc.0.2020.08.08.08.54.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Aug 2020 08:54:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of markus.elfring@web.de designates 212.227.15.3 as permitted sender) client-ip=212.227.15.3;
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([93.132.130.91]) by smtp.web.de (mrweb003
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0Lxwjk-1kpaEM2JFM-015IZy; Sat, 08
 Aug 2020 17:54:46 +0200
To: Xianting Tian <xianting_tian@126.com>, linux-ext4@vger.kernel.org
Cc: clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
 kernel-janitors@vger.kernel.org, Andreas Dilger <adilger.kernel@dilger.ca>,
 Theodore Ts'o <tytso@mit.edu>
Subject: Re: [PATCH] ext4: use kmemdup_nul() instead of kstrndup()
From: Markus Elfring <Markus.Elfring@web.de>
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <78b0ca31-9097-c70f-85db-df22866872a7@web.de>
Date: Sat, 8 Aug 2020 17:54:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-GB
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:QQDNRt1MKDkEYOw1K80S8e5DBjbC+ZcPe5nxWDp8vsSTWldsNnE
 b7R3yLTaELdAwqn2TeVyv3uMioX3ZyiQ51xJENDvLMt1ZlB53PWbcKRY7hXTg+xTKETTfUU
 7KjgUgNiY/G5CJAJ4UjHm6zg2Vi6lkPujkiJX7f4Edgmo8x8Yqh0EOntM0FRNSW74lfkctl
 laKPmu8dEXnGXfjNljoYg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:YHGaDIpj/Rg=:4iwXMjKb1y+V4r6zJmsWB0
 AZeitcI6yN+VZe0IIgNgxdh6zeo0m48jRY3Ml0Qs5XvSW/xYkmejk5ZVYxfpa7u//f/g5O1dP
 S41swoaZe8n6ErzDlC4XlLSZUJVVL0DCf9PQ5CaoSx/9eJy669WCvD1sZ1S03yvF3WCtL/NHR
 dUnLWoOIU9VcMLCvEzYA4zyyxIcVOcJm+0MLIUqT1T5IAWgTdbRWprXzHVcPyUDeNngYz2g1E
 xBvZEgmU0wKucYcBsiYQv5vVKS1biSxtHmivundM9WMMtQtAwmf+gvDwglMzv+bjqSaQ3Y3HI
 y+6p+fwSK+jNDGd32Apy8QCCtrgiqhKL+hlD8gg7aa7S2+BCH2m+ve76TPtOvRckWlmHGytNb
 2qHNYQqZI+lTbHnvFfgHReXNHWsKt5ShOSHZrjQPbCoZsmFRPxBym7oZJMolM6lxhodOA1WFn
 TqEwnnu0DliBhVHJzLuogDYtAj38XUf5AjgDqvCBDo7ljt+OQMzdk8D5Ad9AWDWupekxb8nf2
 /PQ8ODv4wU3tELBwLznB4F9Ny+sGG0uF+t4rQFxQifyCsI4Dglp4VxK7J05F0L88Tm969AY5Y
 ISnq8GPCcR3/EMShVQ1OzAg+StZ5Q6mu4dt0EJSpn6R9U2Wqz8m8xAEO6c06Ovfn/dbZTsqBg
 H+R9FfxBPoRyGMq3jYUC9K4s67GnkXYSpgvLgNMuBpRHBu73se6zijSdu2FKnn3NJcp7rnwLQ
 M+WKfhUP2QPQQMmV+1Yo60rxZB8T6Hg8Xgbzurhpg9vcFKzB8uOQ8GrnScdHcyNCFiFJ7DO+i
 1tQ61an+ESJT6P3Fi1rcg6tKMyQauZ6zbHLim0qvEepoW96YoWLA/xkAVFRqC6T9UNCJZI492
 YjKeDV5DK2PCQ9kG9JimpVt2rVuhnRhYmHrBmB+UEymfV9RH1vPJpJAgha2dgJc4YCCfFdtR/
 ui/l/0EPxAMPisy4YlZNPwbde7Mip134nNPlyQWEMjaRPzVL2w0q+aU/YY9lzIpZ6KvAID8AN
 VfuaUcZ4mGfhxqqi0oitnTaM+yWfJNBDkHJbdxN0JvXE77b6QbXoPtNl3lrmeptQRfWBOgsQn
 Ue32d1a6ZN6soSxETfMoxpGoCzhxTysNkmDpkx+EuFYm8VA/0y7y1Hxk1D1lbQSkuh3qzWR1p
 ZzxQ2ZI8jTiM4T9ETp0IMtdQlaf+ppTOFyhkmRh4lf9z9z0kf4cNmzTbSYNnkG9t9AJqdRA+O
 E3o3M3/MlkVE1yOvl21YA+T/57HEJHE7bkcsfcQ==
X-Original-Sender: Markus.Elfring@web.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@web.de header.s=dbaedf251592 header.b=Oe8PvcWf;       spf=pass
 (google.com: domain of markus.elfring@web.de designates 212.227.15.3 as
 permitted sender) smtp.mailfrom=Markus.Elfring@web.de
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

> kmemdup_nul() is more efficient than kmemdup_nul() if

Please avoid a typo for this change description.

=E2=80=A6 than kstrndup() if


I propose to add the tag =E2=80=9CFixes=E2=80=9D.

Regards,
Markus

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/78b0ca31-9097-c70f-85db-df22866872a7%40web.de.
