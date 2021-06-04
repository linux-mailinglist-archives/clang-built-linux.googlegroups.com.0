Return-Path: <clang-built-linux+bncBDIPVEX3QUMRBVOB5GCQMGQEHBHW3CI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA7B39BE76
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Jun 2021 19:20:23 +0200 (CEST)
Received: by mail-io1-xd3f.google.com with SMTP id w17-20020a6b4a110000b0290492680338ecsf6679857iob.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Jun 2021 10:20:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622827222; cv=pass;
        d=google.com; s=arc-20160816;
        b=z/bCKhIRzSvUqWQhfY5ASIr6Uul1xIC9kGsFAt/O3VROqd4pNpcCJottENp1Z8lQdc
         RUHoopWUiyeeIfXtysi/EjNWwyHU/bG87XxvHnsLeIzLBTg2/FqlNpT6QAGa7WdMCenL
         FHuEMHcFB3PVpPL/rIO06LFsUJRsZ+UzJQ/nBwLmYhHJ5J15F1o/03nsJi9BONZM53rr
         azecFCmJkGuMES79On42XbYzzJnRNAyuPPjngwX//NZarnEfugYXUs05nGpgcMEhpqN6
         ZrXkLto+7PO64X566oQSsD1nWJy1sM9qyNiKDwS70jsnbQzERM1fD14K3mgW1rq2ryHr
         b04Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=WEI4jtgY199imDHHzWs1KTvcITApd8c1GMEhUCPWSAI=;
        b=wW5dcd9AwJ1q91sRz3R4hIHp9GELnr+NayWTsK81elu+WFUuknQnyCG78xgDXQhcU1
         A0pWdx7yVUI8aM4zh2AseITc55VlBHKqwd18O9XirVrqFBC0ekV5XGrTw3hFrnLxdjPn
         X+TSJL+s5kyGHBeEdg+wZKOCDcp6sZeBUq0FhCwaXWVHT6JFkhghmcRDZ7w4KsRN/Ldu
         0OB7fJiQA0HEKWExE25qVJnaz2AbfrkutvsUFFHyvLcPflD0nW1uBYJy40fZKtU5ndbQ
         Q8vyc/kZ+r+FCQUnvI92oZjj/l4B6qkVF6r2hzU/JErz8i6ENHKIgA7GtFiaszQ9PiUZ
         uuiQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@lwn.net header.s=20201203 header.b=nTTJ26Hk;
       spf=pass (google.com: domain of corbet@lwn.net designates 45.79.88.28 as permitted sender) smtp.mailfrom=corbet@lwn.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WEI4jtgY199imDHHzWs1KTvcITApd8c1GMEhUCPWSAI=;
        b=l3xDt10xKSLIEb1T/P0qdaq3eImRdSTIPWTsuZGyZvvmBLFvBGYP6+MDhyyPJ2EALz
         YQ48MSK13n0seSXIuwf1eGU6x1thwDndhcliI7Z93TI1O6CqI6LtXYyTO4MNm+gg2XfA
         PYiKMQ/hvk/SBxQnLDB5FxdL8l+gRQBnyGfxWKbypfHOk5/39rZOWAtDokMyCHLIudVC
         FUEjhJpYDWece82XufTQgt2Pap1fYBkwPKrqbKzkGIG3hAWw63EPn2MW//T+hgapqiYN
         3Mw1EIS4eNfD8vVtBRR0cJptDodjFDO16c/zxowiU0GvKFy9nT3yGdWMN9QqlTUfREME
         TZzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject
         :in-reply-to:references:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=WEI4jtgY199imDHHzWs1KTvcITApd8c1GMEhUCPWSAI=;
        b=G1AtSWvD+Om64TeIFghU/WFTy5pm2l1h1UVlvWQmCrgYmPrCNnIhqm00/nXXlbd94b
         e562CRgFJ8mML4Jn30LXgDn5yZv1NOdPOc0PADAd0XH3BhHbrA00XUIYF7s3focBwNlp
         4re+Zq52R70iHLfEf0loaBsVnjpapBiVyQor0Fx/+LnuNSfbLh8CDMu8aKFU8qrczqHj
         OsIlb5kpOJBVtLylh21lYXCJINISyEky7J8mLYRQgDoIEsKu1Qa5nNEO4m24NkUOX9U1
         y3GBsr5/kUxbsTowRkFeENHgYM8bcO/AaVUZNisCa5+GPdD0EzoiTgCzFUbs9ueCOW0j
         ZTkA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532kcV9esVAHibQor2dt5qiRSWrCY4EkroU7M7r8Q0YKjilnZEZw
	sxbNtAGBLSClt5IU3ZDA2CU=
X-Google-Smtp-Source: ABdhPJyikpuiNqNwW1zxEqoTEDi2JMaVSDl26cluMdahpRgkIyMXXo9rwjOGcAiQbgPQ4+fCNfI3ZQ==
X-Received: by 2002:a02:cebc:: with SMTP id z28mr4983500jaq.127.1622827221486;
        Fri, 04 Jun 2021 10:20:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:444e:: with SMTP id a14ls2024513ilm.2.gmail; Fri, 04 Jun
 2021 10:20:21 -0700 (PDT)
X-Received: by 2002:a92:c24b:: with SMTP id k11mr4680852ilo.303.1622827221153;
        Fri, 04 Jun 2021 10:20:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622827221; cv=none;
        d=google.com; s=arc-20160816;
        b=xJcwBhXqL94YmNwSw90SOHZlmwuJeepVzhLjdfBKxj2iGEPkUK3Fv9sZzVN69G3Www
         3SjDKnBedrYpNSe8Hbc0f6nt49aK9LyysfmblH+YDqiirfABmwYBFVUFuNQlyMpZeeGj
         Lma3evGEO0+iUibvAHJ/uFfeHteL5H0TGx7SCzcusoElE31sI55kCxwvCnkdef93aF+B
         UuVIi4PTmv5nJvRncmdJpTcE/U27dtTGN7i5UPGz13plAFKMLn/0wxtF/dmzKlbUCL1K
         0STd8D/CVZrpTymWct+Zv8DsbPlaHIifSk2BYVswZrHMsrxJEMh7ysA7DZqUXxeyyV6c
         oVxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:dkim-signature:dkim-filter;
        bh=x0gZ/+V+J/EpZw6CTyYmGuRUO4eDuSK+FswFXgyN9e0=;
        b=Lq8u80YUO7H5N+x1Bn1xNYOn+2Zb+PvFVUl0zHmGmHtwm+ZI3H+HPM4r+Axwvm/yPw
         ycLDzcgQoioqTEnAURTFa8cTMZhdHutw9LcZw21+jYAJdndzL2miHhqbPcUvHqwghZX5
         9yny3X9JxtdRona5B0gqffWXuPnQoOceXUbk0szhLlGdVbAbTV/JuhmM3A15tjTk4y07
         UwcapcVNpDIjPhrk+ajKEu3svWh1ybNHNYUI7i8Wk7Bke4JS1KIGWvHH3l6KkmB8BOPw
         NFqwt8EgB2FiSrv6xztVhxzIPFsus88i3cyPWidv7//7cTxQ9kimPRJDNNHE1n3XdWR2
         yDGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@lwn.net header.s=20201203 header.b=nTTJ26Hk;
       spf=pass (google.com: domain of corbet@lwn.net designates 45.79.88.28 as permitted sender) smtp.mailfrom=corbet@lwn.net
Received: from ms.lwn.net (ms.lwn.net. [45.79.88.28])
        by gmr-mx.google.com with ESMTPS id m11si294853iov.0.2021.06.04.10.20.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 04 Jun 2021 10:20:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of corbet@lwn.net designates 45.79.88.28 as permitted sender) client-ip=45.79.88.28;
Received: from localhost (unknown [IPv6:2601:281:8300:104d::5f6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ms.lwn.net (Postfix) with ESMTPSA id 440D74A6;
	Fri,  4 Jun 2021 17:20:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 ms.lwn.net 440D74A6
From: Jonathan Corbet <corbet@lwn.net>
To: Wan Jiabing <wanjiabing@vivo.com>, Alex Shi <alexs@kernel.org>, Paul
 Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>, Wu XiangCheng
 <bobwxc@email.cn>, Fangrui Song <maskray@google.com>, Bernard Zhao
 <bernard@vivo.com>, Wan Jiabing <wanjiabing@vivo.com>,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org, clang-built-linux@googlegroups.com
Cc: kael_w@yeah.net
Subject: Re: [PATCH] [v5] docs/zh_CN: add translations in zh_CN/dev-tools/kasan
In-Reply-To: <20210603141127.101689-1-wanjiabing@vivo.com>
References: <20210603141127.101689-1-wanjiabing@vivo.com>
Date: Fri, 04 Jun 2021 11:20:19 -0600
Message-ID: <87r1hhzgvg.fsf@meer.lwn.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: corbet@lwn.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@lwn.net header.s=20201203 header.b=nTTJ26Hk;       spf=pass
 (google.com: domain of corbet@lwn.net designates 45.79.88.28 as permitted
 sender) smtp.mailfrom=corbet@lwn.net
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

Wan Jiabing <wanjiabing@vivo.com> writes:

> Add new zh translations
> * zh_CN/dev-tools/kasan.rst
> and link it to zh_CN/dev-tools/index.rst
>
> Reviewed-by: Fangrui Song <maskray@google.com>
> Signed-off-by: Wan Jiabing <wanjiabing@vivo.com>
> ---
> Changelog:
> v5:
> - Fix some aligns below titles.
> v4:
> - Fix a space missing.
> v3:
> - Fix aligns and inaccurate translation.
> v2:
> - Delete spaces surround with English words.
> ---
>  .../translations/zh_CN/dev-tools/index.rst    |   2 +-
>  .../translations/zh_CN/dev-tools/kasan.rst    | 417 ++++++++++++++++++
>  2 files changed, 418 insertions(+), 1 deletion(-)
>  create mode 100644 Documentation/translations/zh_CN/dev-tools/kasan.rst

Applied, thanks.

jon

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87r1hhzgvg.fsf%40meer.lwn.net.
