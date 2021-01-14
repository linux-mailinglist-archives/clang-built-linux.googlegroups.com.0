Return-Path: <clang-built-linux+bncBDIPVEX3QUMRBYVNQGAAMGQETUZ3R4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 2214D2F633C
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 15:36:20 +0100 (CET)
Received: by mail-io1-xd3c.google.com with SMTP id l5sf8644718ioj.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 06:36:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610634979; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ro4umqyJk3l8IG38MbUMLjj+MGOMW/Z76VhtEa3SUg4/PqYN+VeQdVKMdv05n/pXu9
         kvdu8t4NwhPO+gTcgaKtz2iOCMhz6MiQc5xXNrmwzslvWA+L5PFDTlwf/Tk1sGxsU1Lx
         RasE94lfsYntalGoktDDpH5n7wu7/t1R6U5gx/0/mtFb2Tpme5aECV8INilsl+gkxifg
         ld91hVH0Pn+8wyhML25V0oMKznXnSYpEPKQR1Vq5+LgJ5+iodqa/y5mVSs7rK9O3VU+Y
         4rTexQdSMCeHFoxbTH8hbnR0/j5Rcv6y0hpwYSLb0DN0/LFjCRfFjVhNWg3aMt8tMDXZ
         gkNg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:organization
         :references:in-reply-to:message-id:subject:cc:to:from:date
         :dkim-filter:sender:dkim-signature;
        bh=SQHwPRUMsW9A6fEm+ntF8SzyhdiQD2cANm3T56OnV4k=;
        b=I2akQD54Qc2SE5fuWT4bPkgUkwlwX/UJzh/H7Xr9K60f9XJGEaI3vKJXmkj9xUCixr
         eQGWx07VRAk3LdUnRtpKk8wMCqDk0vjrKspKQ8aCTGO0+GmMVKe5gzlHqvaT9B4yxG1v
         8BXrlirsMTq+gOu1iSLCMFTmxefTvWmyA7GXPsAXBrtZq6KPcGah907B3+sOAGm35SI4
         CUAbTnQQ4BHt+qtMk2j2T9Yc9ImjGqczXLz+LC1tNSUed/RFwgyz9BW8TsVxGzQRYIW9
         zQyyfPK0TLwjvenXNMWxFkhB112Oq9kg9AfVv6w1w2sNfIW+mkd5Q09RCHn2+Obm58pG
         Z2RQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@lwn.net header.s=20201203 header.b=Ltgp16RW;
       spf=pass (google.com: domain of corbet@lwn.net designates 45.79.88.28 as permitted sender) smtp.mailfrom=corbet@lwn.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:date:from:to:cc:subject:message-id:in-reply-to
         :references:organization:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SQHwPRUMsW9A6fEm+ntF8SzyhdiQD2cANm3T56OnV4k=;
        b=j6pttDGs4Jt/REFZuR9j4K83dfOqbIfTac6Y1Y7aUCxZZPTaMc60kizyLgbHXREbAy
         eFZFVauqEUKdHaL2SOSbUbl+CZvSW2THyjSz6ZuV7OB+LS3rqtjW2EtEdWOrEB/GtiRp
         xRO7YoA6Aw4rAIDyOAKqbn3dycEuy8x5H2wWiUog5oQ12QT944rO+E7ljtbbvKA2XQww
         uXppNulf+8xmAwmKGE0pL6mMrh9cbCM5yZQ4UFirnREUXFa3zHFYLlDYcF2uUOI8s9yX
         EhfwDjSqP2lyawUSG5SYedAlYrLKu8V273MLhomoATA2eRdiWnIaDuyowjeJWBQBfq8I
         qHWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:date:from:to:cc:subject
         :message-id:in-reply-to:references:organization:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=SQHwPRUMsW9A6fEm+ntF8SzyhdiQD2cANm3T56OnV4k=;
        b=BjmlTS8cTGuP5Uu7kWLTx5e1tE1qSae+Nl8eLd3PFOp8Bo7wSkhLe9+WtK/k1xThCK
         h+t4K5J51U3dBXqxIcqRaBcJ/3R2V4LXXCDI1UI1MpzAW2Nh5BzQKCB1PKHn2uGE8omR
         LdB20Syz1geFKkR1Y6B7/r/ar2I8NHXbnjnaRIzdXdWpMgfdI5BKAuzFWG9G5CL5Fh7L
         rOsafuZFNog9ZLn/8Vrcv6BNNX9M/vGJziHVJH5O2lvztsZ+1gKE4G9fDSXDUcxamUz7
         SqY41dTwjLZmX6twLdk+fEUOAUiGei4mzdkvkyKl+M5amju/McsMDcK7DI47wLBwBSF/
         Zu1Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531yBpTndMk/hNQUIjPtvlAIduLOuQq5bLcJlWjWyV+X+jozIIiP
	QzAXX7qdKNwjI5EIlsIMH+U=
X-Google-Smtp-Source: ABdhPJz6FWgMbQA4w4n5vS9BAbphCQgkjxb+s1iLXfLyPaYCh8+Ccx/cQFNsCXvzQtDrjwbAbmls3w==
X-Received: by 2002:a5e:950a:: with SMTP id r10mr5336510ioj.121.1610634979147;
        Thu, 14 Jan 2021 06:36:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9f06:: with SMTP id q6ls855486iot.1.gmail; Thu, 14 Jan
 2021 06:36:18 -0800 (PST)
X-Received: by 2002:a5e:d603:: with SMTP id w3mr5428496iom.65.1610634978563;
        Thu, 14 Jan 2021 06:36:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610634978; cv=none;
        d=google.com; s=arc-20160816;
        b=WC0Rg15GmzZyy2OoGtYdU1BbOXj4+OUYuy/kvGtxOU6Dkiwuj8w5NA+6l1v7otFSJi
         BYQelDQ1trR315ptZsz9arfDieiW6ePRHjLJLQE+DRVFxYNXdKQEmdsQ1hEJUX/yOpKu
         qcyf4atB5S1qegbHZ6Cq27hA/2M00svmyxP35xHVDBq0xGQhU+avx0BqXylxXNTPyxEC
         huLHipUI4nqNwwEZlBTkVcRGGszSWv/t9ZpSCbI7gDP1sbGIXWOvWIN4KDUEzPq3WbnY
         Id+1RzmqAyUyFYM9YPbQwAtowRLbxIMta+ZLs787UUZb4whlQDwzgtDSSYV319UbPww8
         nY7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature
         :dkim-filter;
        bh=F2VJ1UToobXEetmaLg/4ARcDoIjgtCQM7tPnz9vsCDU=;
        b=CsPffHbomfh+HQw+klzicarV3NFieBoO0BlCj731tHz4QvE0UIehb/m5z+QzthoVys
         I1l6KhSQLK0I79gTVRPuJY/y6iVnk8P5QjtNOBA2ZOJAjji/kwSpfceloe19Q5GyQYlP
         wnM91zNKAbjowjPGJg872w0hTnbB/yq2p0Sw2B3bxAjf9CXY2OgCV7HBqqz/0jvrs5h7
         YBiuGkU6fUOAI5IbwpWBRpahfWue6ue7q3J8PUhEp43t9CRQrQ5r0VFpFMfgMw69C7ON
         svaPYS4zj1LC/ldjd8GMvlvwLE+35sC4Cnk3bUxN0XEXhlyYZ2tyTtWcPgNiQgXzg8wE
         EM2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@lwn.net header.s=20201203 header.b=Ltgp16RW;
       spf=pass (google.com: domain of corbet@lwn.net designates 45.79.88.28 as permitted sender) smtp.mailfrom=corbet@lwn.net
Received: from ms.lwn.net (ms.lwn.net. [45.79.88.28])
        by gmr-mx.google.com with ESMTPS id t69si648163ill.3.2021.01.14.06.36.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Jan 2021 06:36:18 -0800 (PST)
Received-SPF: pass (google.com: domain of corbet@lwn.net designates 45.79.88.28 as permitted sender) client-ip=45.79.88.28;
Received: from lwn.net (unknown [IPv6:2601:281:8300:104d::5f6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ms.lwn.net (Postfix) with ESMTPSA id 44FAC6139;
	Thu, 14 Jan 2021 14:36:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 ms.lwn.net 44FAC6139
Date: Thu, 14 Jan 2021 07:36:15 -0700
From: Jonathan Corbet <corbet@lwn.net>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Masahiro Yamada
 <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>,
 clang-built-linux <clang-built-linux@googlegroups.com>, Linux Kbuild
 mailing list <linux-kbuild@vger.kernel.org>, Linux Doc Mailing List
 <linux-doc@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, Miguel
 Ojeda <ojeda@kernel.org>
Subject: Re: [PATCH] Documentation/llvm: Add a section about supported
 architectures
Message-ID: <20210114073615.6b9add58@lwn.net>
In-Reply-To: <CAKwvOdnJ0VUjTX-cyLgtHvy68DHG1VMj7s0huk_FKh1E9pH9Cg@mail.gmail.com>
References: <20210114003447.7363-1-natechancellor@gmail.com>
	<CAKwvOdnJ0VUjTX-cyLgtHvy68DHG1VMj7s0huk_FKh1E9pH9Cg@mail.gmail.com>
Organization: LWN.net
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: corbet@lwn.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@lwn.net header.s=20201203 header.b=Ltgp16RW;       spf=pass
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

On Wed, 13 Jan 2021 17:19:59 -0800
Nick Desaulniers <ndesaulniers@google.com> wrote:

> Patch looks fine, but `make -j htmldocs` seems to be taking forever
> for me so I can't render it. Is this a known issue?
> 
> $ make -j htmldocs
>   SPHINX  htmldocs --> file:///android0/linux-next/Documentation/output
> make[2]: Nothing to be done for 'html'.
> WARNING: The kernel documentation build process
>         support for Sphinx v3.0 and above is brand new. Be prepared for
>         possible issues in the generated output.

Sphinx 3.x is *way* slower to build the docs, alas.  One of many
"improvements" we got with that change.

jon

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210114073615.6b9add58%40lwn.net.
