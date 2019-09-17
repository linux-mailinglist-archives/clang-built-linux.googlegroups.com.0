Return-Path: <clang-built-linux+bncBC6MFNV32EFRB47DQLWAKGQEYKQCCJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FEBEB4BB5
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Sep 2019 12:14:12 +0200 (CEST)
Received: by mail-lj1-x239.google.com with SMTP id q22sf278565ljh.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Sep 2019 03:14:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568715252; cv=pass;
        d=google.com; s=arc-20160816;
        b=HerUxxcJ01C/BQN4YPNybmbmrFzOgaSbmXCO+9LASejxwci2AnXzG7gtnRFD2prUQl
         Wb2c7JpJQ3U+qSj4PNU1RtPqwDu645ohfSBxqcwupXyG/E2LPfRLskLv0TS9Gj+qirgq
         eDc+5B2Z/OFxLbNL5lSwDvFcVUrOxRmoJ+shnR/ca64+95Mtif0egatOzSk3ngmC9cBi
         /bA9JzlvC249sYf6uQt+hvgLCk7IpIW2oT6+QaT/jdNSd2sr7LDnZVn/b6EDKe8lwA/D
         iou7sCjKXXcB9rVrJ2+D49AMLbV4MR0dqeSZ7bLmfjOMxob6ZHCP6/EQre4qmr5NWl4g
         MAZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=QGFfr4qj9mUEeqRVTPZWWLuRGuL49t/y0yHpa+O+wZU=;
        b=zx02HQYmJg1fYG7SX7ZVp7bGbQD79SCTKUqV+QwEaDsKn9rXqZxjTjqnd8z1N3aG80
         noaZjPy1dmQatDiIfWNPUgjnaB2IW/JIpAaFgsALL+AKvrRZZLivVGJSk2hq09rs2nz1
         NEqpNkUwtT+vyg8RGKy6Q8wyt57puhviTeUd9DPu6GcoxBymstQLUKTrv7tIYXazTxTY
         gtNi+R/wBDN9ILOnz8DzuzibfxUbniTqBl+zpYU53z++eR4zxSpRcYmFs7Mvfwe6eDDT
         hJ688kzJvItwdKuo84tmK0/b+ZHfn9rFdyaCRhtFMvybHCTxtuNMuVv70/qOwyvJCKXi
         JWzg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@cogentembedded-com.20150623.gappssmtp.com header.s=20150623 header.b="lqyHqJ/6";
       spf=pass (google.com: domain of sergei.shtylyov@cogentembedded.com designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=sergei.shtylyov@cogentembedded.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QGFfr4qj9mUEeqRVTPZWWLuRGuL49t/y0yHpa+O+wZU=;
        b=Owb9dOWTLKK2g0yhVtCiDd3NozKWCopdCIOBR5yO5l5GOEePodkOWHLxjwZWajAWNK
         YK0VbUbKGv7YV7kLgdufFIfABOsnOL6w8CCyx4cCHT9LCKjr+DCKzwv8EuikAVHQ9zGA
         rUBq04rV3DV3QhY4mPDIgsJnHVtg46NwYWoSBVq/eDCGp7H5mlfeYeJqKm0hC7zMUO2d
         npOaKzQzKG5aJURWUsBzJp5HFlZK329QvPkYT7tGwSrq1nm4itVMMXfSTKgtTbu1Ep3M
         1XD/seIi1lHYd4xkKL08gMaYcDV1WzzWidyOoR1Bue+LzRam5mugyUOsbE8bj6Mddt6z
         Uz9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=QGFfr4qj9mUEeqRVTPZWWLuRGuL49t/y0yHpa+O+wZU=;
        b=LI1hwGC2xBkbEndWOQGP1ohrLbgm+dP5Lxj7fG+q156Masg/zm7cKY0+mxYzRtzOh8
         FVFYX2rweAgbxi3MO10A3Pl0iGW0Hvz4VSqrFcXgiQWnjW+cg2kSXQZo14a7Gk+V6/Uw
         QYASjSZ8MUfeFwACz2VUTkNay+DjTuyewBbk4kSYaiP1hOBP40EDEsDsywnTI4bBvt1J
         7V6uMJbngYtpgRL80kkXxt7XQfTdHqmDGGnjVUwgXjL+IJ1JIJkJw6CnR+sGbFNG9xkV
         26FeGrqzq/fzi1ZM0zXIq2mcPyKfUBSQ9c0vh2W3RM9hv0mcZ040t8FTgkGg9pswTjTl
         WyPQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVybvETcf1H2hBdsBJcrrEsrlgiwCHPwnG3ZCIzedIcBaNusr5F
	zSQyFD3UkDVpYL3neEnyFBM=
X-Google-Smtp-Source: APXvYqy5uThFt+enbVpOcZCu3V4WpkUkwGl8rVdmx4FX523KhvHKwinhn29WmleWqvs4LoBnbAqFZw==
X-Received: by 2002:a19:5516:: with SMTP id n22mr1769426lfe.49.1568715251999;
        Tue, 17 Sep 2019 03:14:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:428b:: with SMTP id p133ls273410lfa.6.gmail; Tue, 17 Sep
 2019 03:14:11 -0700 (PDT)
X-Received: by 2002:a19:2d19:: with SMTP id k25mr1766638lfj.76.1568715251516;
        Tue, 17 Sep 2019 03:14:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568715251; cv=none;
        d=google.com; s=arc-20160816;
        b=GxkI5wftvqfzzXGYYwDnrL4YAmPgJKJgTpih1VZSAhGetHZoTShOocCUwRP6+9OGyT
         1xNr8V9C3kGEsBiRKRz26VRKuWBFsZg7Zrdw+juAiBuIcphGWs9seNnlKnwJrD5CPy2y
         /Iv8bAGj8MSft/HocuNN186C2qo3F/9/phRHdD3gRRXEiuBsuyD2j0JGMw/amdv67Xym
         0Y+I1ddyWvwBtNtP6uAvBli2l0Tfw/+aOrIESPm872CnlSfDp1DHhHJgmR5+TZgsCw/p
         pStx3jg8SM1fNmUVWgVn/vFLwwFquP1YfNCSZLlWVu7uX+yN2qy8b95hhffm7n5cZQPb
         K44g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=kjxnCGfbE9oG4rXA0UnyUIJoUg+5vOPeXFD1JNJ7Bxk=;
        b=SHYwS7n0mRddqL2X7QGaKCxyfdb7s/AnHtJCIJHdSBV489qnOyTTVa9K0NjhIz57Z8
         a+C2jrp+omY7oIhTq55dyL18hK7mPrKyxvs3ONGfAElhLnXNiTcMa/u0agwRMUtCorGy
         SmspSaXUCDJJAw1TKUDUXn/4nZNN7pFNE0Wjbi45P89hilPwgkYzR1rD2KLH8yvoWhSL
         N1fHooPgrXVF8uw/cmiMJJ7Sxlq0ODx+gwIHF0nA9vdN82wE8vYf4qa/VVQjb6Kaf629
         6yAC7wKK+1THOAi3lp00fAbLwRkywEiNPKRvahX9A2VqD4W79QMZ7ClJlM1Z1uzeZMGP
         ZPMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@cogentembedded-com.20150623.gappssmtp.com header.s=20150623 header.b="lqyHqJ/6";
       spf=pass (google.com: domain of sergei.shtylyov@cogentembedded.com designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=sergei.shtylyov@cogentembedded.com
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com. [2a00:1450:4864:20::142])
        by gmr-mx.google.com with ESMTPS id u24si357630lfg.2.2019.09.17.03.14.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Sep 2019 03:14:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of sergei.shtylyov@cogentembedded.com designates 2a00:1450:4864:20::142 as permitted sender) client-ip=2a00:1450:4864:20::142;
Received: by mail-lf1-x142.google.com with SMTP id r134so2361374lff.12
        for <clang-built-linux@googlegroups.com>; Tue, 17 Sep 2019 03:14:11 -0700 (PDT)
X-Received: by 2002:a19:2207:: with SMTP id i7mr1644977lfi.185.1568715250889;
        Tue, 17 Sep 2019 03:14:10 -0700 (PDT)
Received: from ?IPv6:2a00:1fa0:6e6:a4e9:5101:fe11:ada5:769e? ([2a00:1fa0:6e6:a4e9:5101:fe11:ada5:769e])
        by smtp.gmail.com with ESMTPSA id g5sm221169ljk.22.2019.09.17.03.14.09
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Sep 2019 03:14:10 -0700 (PDT)
Subject: Re: [PATCH v3 bpf-next 09/14] samples: bpf: makefile: use own flags
 but not host when cross compile
To: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>, ast@kernel.org,
 daniel@iogearbox.net, yhs@fb.com, davem@davemloft.net,
 jakub.kicinski@netronome.com, hawk@kernel.org, john.fastabend@gmail.com
Cc: linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 bpf@vger.kernel.org, clang-built-linux@googlegroups.com
References: <20190916105433.11404-1-ivan.khoronzhuk@linaro.org>
 <20190916105433.11404-10-ivan.khoronzhuk@linaro.org>
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Message-ID: <b9b802b5-3d86-31ed-6929-209c50530b3b@cogentembedded.com>
Date: Tue, 17 Sep 2019 13:14:06 +0300
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20190916105433.11404-10-ivan.khoronzhuk@linaro.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: sergei.shtylyov@cogentembedded.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@cogentembedded-com.20150623.gappssmtp.com header.s=20150623
 header.b="lqyHqJ/6";       spf=pass (google.com: domain of
 sergei.shtylyov@cogentembedded.com designates 2a00:1450:4864:20::142 as
 permitted sender) smtp.mailfrom=sergei.shtylyov@cogentembedded.com
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

Hello!

On 16.09.2019 13:54, Ivan Khoronzhuk wrote:

> While compile natively, the hosts cflags and ldflags are equal to ones

   Compiling. Host's.

> used from HOSTCFLAGS and HOSTLDFLAGS. When cross compiling it should
> have own, used for target arch. While verification, for arm, arm64 and
> x86_64 the following flags were used alsways:
> 
> -Wall
> -O2
> -fomit-frame-pointer
> -Wmissing-prototypes
> -Wstrict-prototypes
> 
> So, add them as they were verified and used before adding
> Makefile.target, but anyway limit it only for cross compile options as
> for host can be some configurations when another options can be used,
> So, for host arch samples left all as is, it allows to avoid potential
> option mistmatches for existent environments.

    Mismatches.

> Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
[...]

MBR, Sergei

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/b9b802b5-3d86-31ed-6929-209c50530b3b%40cogentembedded.com.
