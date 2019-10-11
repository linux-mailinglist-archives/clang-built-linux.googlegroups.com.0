Return-Path: <clang-built-linux+bncBC6MFNV32EFRBMUEQHWQKGQE53YT2LQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 124E7D3B92
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Oct 2019 10:49:56 +0200 (CEST)
Received: by mail-lj1-x23e.google.com with SMTP id 5sf1620560lje.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Oct 2019 01:49:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570783795; cv=pass;
        d=google.com; s=arc-20160816;
        b=CjIROyHy8A8tibCKJAUkRImUQiN2M4EeCMJwMGv2LSkvxXIDCFN7ojYVJR76GkFuh7
         x4IeP8FvuyTOXgYwxtl1XRGcw3KVToJyO0pPHA9PcFZAhkIU7ejVgD2S7lPSLH4XVAzy
         8woaejzIXm4C8nsTA9AYg9iK2CUjZvhGfbO5+6lj47jOxND5XoOPipxG4pm2Rqu8Pe/x
         /67nJmNVEpO5mjR0wEIacXSOaKcN1jkMpecljii/9FAo8yGbnWIBsgViJjHcDiId1G3u
         4+0HQXYIpR3l9ZU07k7CX2ouXzER1Jdi7eqKfL/SujUtqJW8yvAYp5/St/aBuQc9AQTn
         KzIQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=s9eFdBJa6zZ897z+UE6jjHOaHpiIEkULYf2vSImPo+4=;
        b=tk3Ky08kn0Pktf8vaFGPmUfgn1Ay4K4QVCqn+JDvru9YZcsD2PdI2ZmO6kDi3IgW7L
         I8t9C7qVAjY/OWmmhOnXP8Woynu9ANdzRRdGcNK/Qu/83/AzJjZneEyJb6XBpRGtun2H
         6/hs3Mcfp+G1p3HyXEkrv222n1L8+b9gtgeCJQaa87MiXG9Mtmhn5/flE3oHrmtXxjnw
         yURhpedFwTEbWtDnIUZh65ak8pYSTlXpSv4N0AK7eDYleWz03ye7VbxrEHvo/jfca+Yv
         o8UBB7ELxEzjjEwYjM5wxnaYLMfQ0VPUjgTUecciySCGiIn6amjsED3TRtov8SpRbNI8
         A3RA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@cogentembedded-com.20150623.gappssmtp.com header.s=20150623 header.b=nb0Zcb4R;
       spf=pass (google.com: domain of sergei.shtylyov@cogentembedded.com designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=sergei.shtylyov@cogentembedded.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=s9eFdBJa6zZ897z+UE6jjHOaHpiIEkULYf2vSImPo+4=;
        b=SK8FIN4eAuAYMQIX6f1nB2waPXbX5gS19OJP3vz++t8VJ/KZ159e+Bg68eJgXsbMwV
         fO3VB3mj0hBFWTyek250hH1bLJfPI1dbEVfXvqGdnOUv3Ht0fLrz/Ce5+lIL7qTWQX0c
         WGCjxxbBjXue0zIAR2ww15F/oFwrEXkaQUj8e6ZkkXJdpfAY61RA71VeYuQryhQlSMFV
         BTZCa8QyGjjUZjhmN7TzU7wkcmG51Y9OHDx3+cvnsKaNqsAPy/0wL7lB21AwU79K8m5n
         KT4ey/qDTOMdYixvsrnEu179qy6Fp/ltlN3mKVn8qEtkiWLcemHSQJGNylLCPwKjK0Ry
         mPdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=s9eFdBJa6zZ897z+UE6jjHOaHpiIEkULYf2vSImPo+4=;
        b=f6eE8ATzC/9SL9B48TqDrv1IYfl05UeItwkkR0aEaZO1aPPw9fZ4UeGuS+bcJnGTI1
         7L0AEsijjSTEJSG0YqZDEMc/tmSpvyWJyTYJRv2LGRA6fLUkhdoMsGXlGNFplE8ChQyt
         IxP0i2dXSZk2Kq8QEBOvIb6LUesIrtphykF64EgTU1eZjEgDnVyInqiQ67ygNNHA5rj4
         trQ0WAP6MS3PeXC63dteY1s/dy7BWcOTtUU3QgdpmYpTCPDFW232zoFIe+4Cf2NrgF61
         YrkHqzJsvisMEs0QVxst74yIA8tEEp6k81kwFBGE+3n2Sd6Nzy+PBOvg1OiWfEQTpjKp
         fHTg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVzXneo5kpszW15403bP/DVee6NvicUGy6k8qX7RT5qGHfWvUk7
	MlH1XDCLiEXaiXMDcSgCXhw=
X-Google-Smtp-Source: APXvYqyvE6sFKQuj4ta0Cp3WTJUH5/fhtgtulYVMc7oif1tAFFfuANjcw76wLJfa3WNfd8bOTQAJSA==
X-Received: by 2002:ac2:51a6:: with SMTP id f6mr8365133lfk.164.1570783794944;
        Fri, 11 Oct 2019 01:49:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9d44:: with SMTP id y4ls872698ljj.4.gmail; Fri, 11 Oct
 2019 01:49:54 -0700 (PDT)
X-Received: by 2002:a2e:9bc1:: with SMTP id w1mr3273086ljj.136.1570783794132;
        Fri, 11 Oct 2019 01:49:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570783794; cv=none;
        d=google.com; s=arc-20160816;
        b=kFOq1QZP1rEupzcFmV2a8pmzy+iEi3PJCdbKhuAvkIM6nOyZiVCc6wJsPJAsoCqX9e
         xXm6zVTJfocfD1rlWcjGJTE/s0qvF+xzW271hhVNXJP6oJBLrfXZLmQ17UGpkwEZ7Knt
         TcM14RFVKQ/sUHOFBD/9HTD084oKXwPESYu+ePMe2qFBkp81lL6GiecprtYkvxXnSMKO
         ZWbuW6OFNjGAD0YtExxieAXG5Qvu+maykjDQUQPm56lP2/KNm+CidgtbXPAXsXsCTWdA
         yepiUjlkQ3V4YZ9OOR7LpDu6xW037q7/J0eYBo3fvIm//Q+C5gUPggyCnzWZeKHKQbk7
         pLRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=ZcGygTCwpeNMQnDZaCGXMswzs4Pr+XRxJbo6OSQ+isc=;
        b=fVMgL74HMdBAgEQv5S6rjYKk8xYpel4d8VCJ+63Iith1VM4RJ29fJj3WGF6oqlLGl0
         IaO9nSJt/0pM2vGS/8+U3tS0ixVbV7RxMg8MJdaa2v/Qyya+bHyw3smS7/Nd+xQWp+iF
         g5edQgoyPfBIq1LzYLhWfzcaUE/uIxee8Fwjf55RyMhxLKMsoDijE3+pseFlnTjerYji
         O+EsHp/Cgtzdm9YpQ1QYVUM3n9atQoUSi4uu945AMB/RDH4Q3YRyL/rrFa+2OS7Zuf1X
         UdtxcBCCA35A6AhAYoyZsrsPP0eXNpi6eH/FY2v8GAXiU8v1cHI1GEdhtVG2pl7ATXqv
         Pyqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@cogentembedded-com.20150623.gappssmtp.com header.s=20150623 header.b=nb0Zcb4R;
       spf=pass (google.com: domain of sergei.shtylyov@cogentembedded.com designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=sergei.shtylyov@cogentembedded.com
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com. [2a00:1450:4864:20::143])
        by gmr-mx.google.com with ESMTPS id z4si206871lfe.4.2019.10.11.01.49.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Oct 2019 01:49:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of sergei.shtylyov@cogentembedded.com designates 2a00:1450:4864:20::143 as permitted sender) client-ip=2a00:1450:4864:20::143;
Received: by mail-lf1-x143.google.com with SMTP id 72so6461412lfh.6
        for <clang-built-linux@googlegroups.com>; Fri, 11 Oct 2019 01:49:54 -0700 (PDT)
X-Received: by 2002:ac2:4830:: with SMTP id 16mr8261983lft.2.1570783793946;
        Fri, 11 Oct 2019 01:49:53 -0700 (PDT)
Received: from ?IPv6:2a00:1fa0:86c:2e5e:9033:59d0:e194:cd55? ([2a00:1fa0:86c:2e5e:9033:59d0:e194:cd55])
        by smtp.gmail.com with ESMTPSA id k28sm1901704lfj.33.2019.10.11.01.49.52
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Oct 2019 01:49:53 -0700 (PDT)
Subject: Re: [PATCH v5 bpf-next 09/15] samples/bpf: use own flags but not
 HOSTCFLAGS
To: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>, ast@kernel.org,
 daniel@iogearbox.net, yhs@fb.com, davem@davemloft.net,
 jakub.kicinski@netronome.com, hawk@kernel.org, john.fastabend@gmail.com
Cc: linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 bpf@vger.kernel.org, clang-built-linux@googlegroups.com,
 ilias.apalodimas@linaro.org
References: <20191011002808.28206-1-ivan.khoronzhuk@linaro.org>
 <20191011002808.28206-10-ivan.khoronzhuk@linaro.org>
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Message-ID: <99f76e2f-ed76-77e0-a470-36ae07567111@cogentembedded.com>
Date: Fri, 11 Oct 2019 11:49:38 +0300
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191011002808.28206-10-ivan.khoronzhuk@linaro.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: sergei.shtylyov@cogentembedded.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@cogentembedded-com.20150623.gappssmtp.com header.s=20150623
 header.b=nb0Zcb4R;       spf=pass (google.com: domain of sergei.shtylyov@cogentembedded.com
 designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=sergei.shtylyov@cogentembedded.com
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

    More grammar nitpicking...

On 11.10.2019 3:28, Ivan Khoronzhuk wrote:

> While compiling natively, the host's cflags and ldflags are equal to
> ones used from HOSTCFLAGS and HOSTLDFLAGS. When cross compiling it
> should have own, used for target arch. While verification, for arm,

    While verifying.

> arm64 and x86_64 the following flags were used always:
> 
> -Wall -O2
> -fomit-frame-pointer
> -Wmissing-prototypes
> -Wstrict-prototypes
> 
> So, add them as they were verified and used before adding
> Makefile.target and lets omit "-fomit-frame-pointer" as were proposed
> while review, as no sense in such optimization for samples.
> 
> Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
[...]

MBR, Sergei

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/99f76e2f-ed76-77e0-a470-36ae07567111%40cogentembedded.com.
