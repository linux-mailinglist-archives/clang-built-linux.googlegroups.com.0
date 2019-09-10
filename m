Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBDPS33VQKGQE4XDZRYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DC4CAEDD8
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Sep 2019 16:54:05 +0200 (CEST)
Received: by mail-lf1-x139.google.com with SMTP id m17sf3449245lfl.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Sep 2019 07:54:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568127245; cv=pass;
        d=google.com; s=arc-20160816;
        b=PkPnE1n272PV8mG5OWx1pAoS1bBCPgpNp8ap3UYyNEVz6KwiM8URfAiPXdmZM4yqQy
         aYym2JtGjjonOVO2W8qQSc+1KOgHNv1q9YRBUE8qjwNow6QzyiG1P5U/uy38OQkJoEyP
         ym/StAAfcQiC84zS2EVWqBT+5k1l7lkupB8yMnm7WejiKRrNpLnIws35A8g5XkkHmVIl
         CmQRgpklVI9UE1FsB8PMOoesCgHvbdRQl98xoWXpWzres45J/A8i514RBfQhvWS3PwFl
         OKX+5EZe6Ex0T13tuR2qdIt+tP/UTut7hAEtsmBnuRZdzNqpUW56dTBV69f1ADY3tx64
         Cncg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:mail-followup-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=a9ky4G0UHAGcUviPNUjQkMF+6KVPwpXHXFxiO7XsrbY=;
        b=xRGt9FRIyQs0WQzkOHZz1b413SKR74jQWZr+q3xqpqMbWAEwtfiG+Hk2Xrv46R9zCw
         jEnG6hai+/wk3fiJcD5ERR3CJl20G3BvaJ5eVTXloMP9vcagjuwZ3EnMJhVwqW3RnF01
         lj5F54916tS5b2vTGGSX5hmuOV6mIdrsG6Gd/3Vdlwtv+XTtnF6BwZxFvbgXuLevfOJ9
         zqoF7dRhFcu6CUmFAqpEc/piaHAsUuUwPmbdL58BS7CMo00a55meU4nbQEFGGYYIffgz
         yv2EVmtRdU7SrqAD4/OgZrXFmUKxstPaAjTB7Kx/soPkUg2BXDbrPQBrdkxZyEaA+/BT
         cc/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=G8tnCttE;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=a9ky4G0UHAGcUviPNUjQkMF+6KVPwpXHXFxiO7XsrbY=;
        b=MwI0I2Q/6ZS6t1BCDXkukF3x5KpxmaZ9dgkizwL+G9oQoRcXgImaG0LKay50dnbXkf
         fMLLE4Zd4h8294E3DGrEn5QzaZRD2piZh5p3i9RVaFbOUrIoAhXUEgrVTB/KIkcVXCy1
         pz3mJuwfecVTnUmK4xYXVyBTo6eORAE5SzOzrLuDqfWW1kqGWMZT0i66lXmJDu9E2nya
         +fG5z1eIh2wUdNqdOZpZIeolqS7My3sGudHnBE9why5aXv2mGtEAXzvCL6XHm/f9PV39
         Sqc1XeYCNmHNsXWfsB/kQPacurb9d/RtEXCDbqPqIOgoIcgKsUIt+rsGcuwHZlQNF5p4
         w4fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=a9ky4G0UHAGcUviPNUjQkMF+6KVPwpXHXFxiO7XsrbY=;
        b=B82+ByhbKg1nrt5SabkU+UXC0SUTOku8RyYR1FiQbIiCyJtmK1kbkVrxRxY7x9b6Y8
         xsA6K6fQkXVvvFrPN+5Xs0s9eCy81wiwCz/YWPlCvX5LoBjUrclY4cl50mkeIM0vk+Aq
         LUKJ02XfDk/L5zMKiubOxsHySnikDIpurVtP/1R3z256XANucfE+CX+vfyvG6Pr3mSie
         M2m3Apx6HfYMhm7re0SXeHQ16F2xYhk5XVCmt9xcWn5SN5jo4Ll/zJoEwYcYuIyE0lbe
         VmJf4v8GKaR3q7KM6tCfskVQprPafs9K9AOa2B1IS7cm0XxfWlOgMeUhxwAi/dA4p3Ks
         ysgQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUWUBbM3NoWskeQcZGN1kCpMjunMZvZ3tcohJ3nLWDpkR+Ere0+
	wzCZd+scFUGEqU2tgl9kKnU=
X-Google-Smtp-Source: APXvYqwTbBvLjaCUZ+TvpwEv24fXV4iTUA3n5LyQpOEFZcSWagHr3s8KCVUPEapCTs4Qwg49D9jMRA==
X-Received: by 2002:ac2:43b8:: with SMTP id t24mr1781337lfl.24.1568127245060;
        Tue, 10 Sep 2019 07:54:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:7d0d:: with SMTP id y13ls2148223ljc.5.gmail; Tue, 10 Sep
 2019 07:54:04 -0700 (PDT)
X-Received: by 2002:a2e:6d12:: with SMTP id i18mr20029358ljc.223.1568127244617;
        Tue, 10 Sep 2019 07:54:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568127244; cv=none;
        d=google.com; s=arc-20160816;
        b=zEL8So29yyPGBCS8MmdVtQInKgmuTItTTa6qU8MUR7kyNdIO8cutNXIPJDGbCFkLCV
         KK3We6gB/pDTHNF1wREXEwYAeZXNuckgcI4gzSoXoaRm7PUqaIhjlVCZt37RWd2TKZ4r
         AggSNjE3MJZke1uYdXzNB73WvPKJXwSwrVdlbilKZRVaKGp/csVaCx5+Vc8fG52rP76x
         J5UcgR0KGqZ2sJVuUBkiRT01+MOuP7MF5ttNAprek+C1h8xrtnk9tmeZzga3pWhZgygl
         v3NdT33Z1ZErG1t480Q3p9HDb9nd2KkiURBTSRc9nXDWXq745XlTvoK2WpNs8DwYVO47
         EFjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=nuroSq5xVvvzh+v0qlo9GQuTkiKTTTkV0acBTH9xBxw=;
        b=udzTQE6c4uXd8ek08yj/EQm+t7Aa8RrSkleJcVmAl4XOJQpgpBd0fUotJpuoPj7WLs
         C8XAj09Shu5QQFJA0RYRo3SyRb5QUU6RFjUraQWRWjiwGdnGBOHsWntJ4Dl6ptZpzZ1d
         VFEhlhiRWhyaBZsHZzD1493B0pA1/A4j7Q8w/GxNn849tpLhL/xo0p/fu2qHSxznmc0b
         Y6ydPhxiVjrfdxjQwF3/1hjwgob9gUK2e12wz0TMlGatvTtGvpEl9hFaxY9XF5GoPXc8
         R1pGPTtPFw+F1KTSD5m7BGEXG2WVAMXKFqzDTwm+Z2FQspR/1TcKlUhotRBSEQaGLbrS
         RriA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=G8tnCttE;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com. [2a00:1450:4864:20::242])
        by gmr-mx.google.com with ESMTPS id x18si809922ljm.4.2019.09.10.07.54.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Sep 2019 07:54:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::242 as permitted sender) client-ip=2a00:1450:4864:20::242;
Received: by mail-lj1-x242.google.com with SMTP id q22so12194461ljj.2
        for <clang-built-linux@googlegroups.com>; Tue, 10 Sep 2019 07:54:04 -0700 (PDT)
X-Received: by 2002:a2e:9081:: with SMTP id l1mr978301ljg.33.1568127244223;
        Tue, 10 Sep 2019 07:54:04 -0700 (PDT)
Received: from khorivan (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id l9sm3853105ljg.79.2019.09.10.07.54.03
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 10 Sep 2019 07:54:03 -0700 (PDT)
Date: Tue, 10 Sep 2019 17:54:01 +0300
From: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
To: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Cc: ast@kernel.org, daniel@iogearbox.net, yhs@fb.com, davem@davemloft.net,
	jakub.kicinski@netronome.com, hawk@kernel.org,
	john.fastabend@gmail.com, linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org, bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH bpf-next 01/11] samples: bpf: makefile: fix HDR_PROBE
 "echo"
Message-ID: <20190910145359.GD3053@khorivan>
Mail-Followup-To: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>,
	ast@kernel.org, daniel@iogearbox.net, yhs@fb.com,
	davem@davemloft.net, jakub.kicinski@netronome.com, hawk@kernel.org,
	john.fastabend@gmail.com, linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org, bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com
References: <20190910103830.20794-1-ivan.khoronzhuk@linaro.org>
 <20190910103830.20794-2-ivan.khoronzhuk@linaro.org>
 <55803f7e-a971-d71a-fcc2-76ae1cf813bf@cogentembedded.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <55803f7e-a971-d71a-fcc2-76ae1cf813bf@cogentembedded.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=G8tnCttE;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Tue, Sep 10, 2019 at 01:46:48PM +0300, Sergei Shtylyov wrote:
>Hello!
>
>On 10.09.2019 13:38, Ivan Khoronzhuk wrote:
>
>>echo should be replaced on echo -e to handle \n correctly, but instead,
>
>  s/on/with/?
s/echo/printf/ instead of s/echo/echo -e/

printf looks better.

>
>>replace it on printf as some systems can't handle echo -e.
>
>   Likewise?
Like some, better avoid ambiguity, for me it works fine - is not enough.
https://pubs.opengroup.org/onlinepubs/9699919799/utilities/echo.html
 "A string to be written to standard output. If the first operand is
 -n, or if any of the operands contain a <backslash> character, the
 results are implementation-defined"

I can guess its Mac vs Linux, but it does mean nothing if it's defined as
implementation dependent, can be any.

>
>>Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
>[...]
>
>MBR, Sergei
>

-- 
Regards,
Ivan Khoronzhuk

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190910145359.GD3053%40khorivan.
