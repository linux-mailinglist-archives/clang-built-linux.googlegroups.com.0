Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBC4PY2KQMGQEWTVBY2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FFA4552D98
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jun 2022 10:55:40 +0200 (CEST)
Received: by mail-lf1-x13f.google.com with SMTP id g40-20020a0565123ba800b004791450e602sf6673464lfv.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jun 2022 01:55:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1655801739; cv=pass;
        d=google.com; s=arc-20160816;
        b=Yo1iPY/D+2g6jdsurNp8lSpFsc2AXXhI6kDBXTs7SqTd6iqQ0hWUdydj5hhVbshdw8
         CdANokeDVbG3D4q0nYfmXqLvGdpD/ddYipCtIOgXkqdNAB59Y+t9GNRgN1wm1tBBmNPF
         aUN89WRZMta6o4IzF4QqNUXn09VZykCk/H8Wlg57L2U8AMRn1dtDUObuzDJJxHTYJwNP
         3AdZ6siGHnAXf19UC9ImJVaccUfSn1CCZAU8pXP3Tx47IW1VlOOWjrf9Tamt70pwA5rf
         NMyKX3/5Pu8caV9lAGyTpd0nfIWTKyqzL0SD//xo0G+NRC4ZL57OeyCzQ1zBXSSvUen4
         lNjg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=5qjUwUpAp5Vac4EZ2zg03Hd4wO4EHsw7bdxSvg6ZPRA=;
        b=WEsIiZsHgGHuNhh03U8ZUsN2ixcZH2wWOQy5raWYv4ruQ2aYdPcZ+ID6NpNpt9Tw5C
         9A2Yp7pc5B8EhigbkC7LOMiCQlADzI++jZkWLcCGr52JFhKYQKrfBnqzZPRefh7yvAo6
         QKfRtS34RJ0XmcCLsFqi8GbFzHNF6GVO0Mn3OhKue7Zl6AzXHLk4LzH4lOTdUUXZpM3+
         6oJpiMw1pCIYNlz3pLnpGSg36SBfFj7RDfvRar5OR8szMJ8wjLmwcqASS0XYnIzmf6U6
         8p1n/1kos/TZ7PUCWNAE9k/x8BIvj0FPnmWiG0vWj5S1li2HS0Opha+khaQzNEiISo/h
         ZIcQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="jf/eZcnO";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5qjUwUpAp5Vac4EZ2zg03Hd4wO4EHsw7bdxSvg6ZPRA=;
        b=EzXzh2y4ggQvuWGmdRYv/KC6G/KTiIym5zNSlv2kwfSC/EHUv8/6LLzoIWZwrYH3zA
         E7CQxdzzlikb2n/NpZSfqqtERRfDQ5lAzA2zWzsauuJms5AKDsdQRUgkjDOl8PiEmDIg
         pZwwTz/7m/lc2ayC2Rd9yiN6KmP/RgSWwcxK2msKGjj4wZzh2eDUk+Hq9ft+ZPWAtCnW
         VsYdTEWzr7VZgiIE9ufP5Loc+uEzEWtE0S5JKOYpPDvrVGuPosIk39s+WpfAjqiExNce
         xalW2+D8ApX4DDKeXnonIK8eNKHQQD5oTSxPmGB7H9/vvLy94h2HfrcPESdqoj9qOakU
         EWrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5qjUwUpAp5Vac4EZ2zg03Hd4wO4EHsw7bdxSvg6ZPRA=;
        b=An+DJZMk5Hs0rOTLSi6n3rfUpbOxSeh25UwmIj9SRm7gbGeEY/OYNKT+pq3Dx7VU+D
         2DIWSaSZR2dn6igHZ+n+KxS3/d8unJTSU5oztzz01ym8xus40aUcqzvQjt3UK7CHDK1J
         FEo/RF7UbGDc7NgNcWHt+BwLx36zkIxLSn0EKLfoZr6AzlvfTHrt8clHPt5Uqa5slTk6
         +9xwxuyvzn34z0IMlOG8v5YKQ3mYjyRHVu+W9kzaMmpJFDyhl6sVwG444R+h/SRjO6Gm
         fwDrxl+57YSkTgDk4WB8hRuhS7nafl1szBfO1IFK5/5RpcVPmDxhAKEd1w1LWKYbmSyg
         lydA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AJIora+kyoffWc5x1hyGVskD+gerjfqErIiJOYrawU96KOU3EWTupw+F
	lVhElDd7e8iDhvGf3MiHbQo=
X-Google-Smtp-Source: AGRyM1tEn1x0SH5od4XM6+xc9KJqULxLhk4dN+s1ZC7Az1Mhr0geelQfI4O32qd1WvTKmWjxiy8mHg==
X-Received: by 2002:a2e:b8c4:0:b0:258:f008:5b75 with SMTP id s4-20020a2eb8c4000000b00258f0085b75mr13895745ljp.189.1655801739307;
        Tue, 21 Jun 2022 01:55:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8e3b:0:b0:250:e7fd:359 with SMTP id r27-20020a2e8e3b000000b00250e7fd0359ls2141265ljk.9.gmail;
 Tue, 21 Jun 2022 01:55:38 -0700 (PDT)
X-Received: by 2002:a2e:b818:0:b0:25a:6e83:cc89 with SMTP id u24-20020a2eb818000000b0025a6e83cc89mr4753290ljo.150.1655801738057;
        Tue, 21 Jun 2022 01:55:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1655801738; cv=none;
        d=google.com; s=arc-20160816;
        b=NMu+FLl6SdaGHP43gRetgcMQh88x0iX56ZtBGTqfPycvmueOm4QGn8xbrU6lbxwCMg
         sI3ts8nAmTZfoU0dN6UTv7lgNTZ2URLePc50hRsvL7xV1u9z+zXW7yh1kV+QMdDydWG4
         /Crzf7iiFxU2dmIn0SJphxUURhZG2I9YptqF50cMW6hKjknjL1nHzfbw8X0AREEmT/hY
         K+5ym9zhwCKhhsF77/Yd21xwfE0XqtAY8XGAeVAscMLyNnm1NdCyC07z+P0mzn+EOm0S
         iNb//HJ0V32XWA8FQggRSEFHDhz4cap/8rzriI4W91MbaI+kJciG8sl9+yU5WtCx6qlP
         kRkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=8X7tUu6ksPe5EBjwxVijboEumVINjPNvUJcCEy7/aa8=;
        b=SfU7yOLzHqV4z+37AFkvgtKwbi6VdTwyN3t109EWfUX0+EbT0nVMxGqG7K5YBTbq8/
         fH1yB106IKC1di+pkX5pFS2qBU3mssW28VsroesSYhsDHMcfa8JnOX/qUK+kYayD80VU
         76NNn+y/c1lNnHDVEarOajmu6XkUsvSPMx5odgwXC288+eeIivJun3NbjIEBhON8AwPx
         rT9TKdgDv2Ma9shcVTk839tjQX/OzBROjaJthuJiI2P+8W80hn3xEqSGTOebzHupopeU
         luQrT8/56rCn5GDYYZ/CMj/vqUM3B5kuwSX/OuEuXtgzA6h0AKi6s0lQogZqQCxvSqNI
         Je6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="jf/eZcnO";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [2604:1380:4601:e00::1])
        by gmr-mx.google.com with ESMTPS id r2-20020ac25c02000000b0047f8c989147si15098lfp.3.2022.06.21.01.55.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Jun 2022 01:55:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4601:e00::1 as permitted sender) client-ip=2604:1380:4601:e00::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 85420B816C6;
	Tue, 21 Jun 2022 08:55:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8212CC3411C;
	Tue, 21 Jun 2022 08:55:35 +0000 (UTC)
Date: Tue, 21 Jun 2022 10:55:33 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Naresh Kamboju <naresh.kamboju@linaro.org>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>,
	torvalds@linux-foundation.org, linux-kernel@vger.kernel.org,
	stable@vger.kernel.org, akpm@linux-foundation.org,
	linux@roeck-us.net, shuah@kernel.org, patches@kernelci.org,
	lkft-triage@lists.linaro.org, pavel@denx.de, jonathanh@nvidia.com,
	f.fainelli@gmail.com, sudipm.mukherjee@gmail.com,
	slade@sladewatkins.com
Subject: Re: [PATCH 5.15 000/106] 5.15.49-rc1 review
Message-ID: <YrGHheX8D0iIz+db@kroah.com>
References: <20220620124724.380838401@linuxfoundation.org>
 <CA+G9fYsvY-0ub_CXbb5is0vRLQ9+SaPS8Op=9mZzCkeccUN+mg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+G9fYsvY-0ub_CXbb5is0vRLQ9+SaPS8Op=9mZzCkeccUN+mg@mail.gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b="jf/eZcnO";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates
 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Tue, Jun 21, 2022 at 02:06:06PM +0530, Naresh Kamboju wrote:
> On Mon, 20 Jun 2022 at 18:36, Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
> >
> > This is the start of the stable review cycle for the 5.15.49 release.
> > There are 106 patches in this series, all will be posted as a response
> > to this one.  If anyone has any issues with these being applied, please
> > let me know.
> >
> > Responses should be made by Wed, 22 Jun 2022 12:47:02 +0000.
> > Anything received after that time might be too late.
> >
> > The whole patch series can be found in one patch at:
> >         https://www.kernel.org/pub/linux/kernel/v5.x/stable-review/patch-5.15.49-rc1.gz
> > or in the git tree and branch at:
> >         git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-5.15.y
> > and the diffstat can be found below.
> >
> > thanks,
> >
> > greg k-h
> 
> Following commit causing regression while building allmodconfig for clang-13
> on arm64, riscv and x86_64.
> 
> > Linus Torvalds <torvalds@linux-foundation.org>
> >     netfs: gcc-12: temporarily disable '-Wattribute-warning' for now
> 
> fs/afs/inode.c:29:32: error: unknown warning group
> '-Wattribute-warning', ignored [-Werror,-Wunknown-warning-option]
> #pragma GCC diagnostic ignored "-Wattribute-warning"
>                                ^
> 1 error generated.
> 
> Regressions:
>   - arm64/build/clang-13-allmodconfig - Failed
>   - riscv/build/clang-13-allmodconfig - Failed
>   - x86_64/build/clang-13-allmodconfig - Failed

Does Linus's tree also show this issue?

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YrGHheX8D0iIz%2Bdb%40kroah.com.
