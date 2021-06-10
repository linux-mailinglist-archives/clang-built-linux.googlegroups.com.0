Return-Path: <clang-built-linux+bncBDGNZTVZVAFRBKM2RGDAMGQEBS4TAGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id E32ED3A3228
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Jun 2021 19:34:35 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id a26-20020a631a5a0000b02902205085fa58sf257008pgm.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Jun 2021 10:34:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623346474; cv=pass;
        d=google.com; s=arc-20160816;
        b=V+zxKu70vSBqfUYg1veHFD2SLYJx+BzPUCh6XPOrXmvU6fEemgMsTaXa0Jy3HzbKf7
         Nvlv29uNtXo7mCHyNbdLkc0wgGLrNiNTMeCFnQlQaQD8PKM5aUxV6gtmDidCqbuOqxLf
         o0XfXjrpUrd0vtJsYizU4ZRhHcFOnzcvXluwPBGKpku/8kEcYWUEhmfyOJiANYFWtOGs
         fg/sQ1wenyFhd2QSh3O/ms3mlYlCEdVOLD+0xDuEYGW6LkmCoh+czr3Q2LXsa1iMgP11
         hlae63dJHj2/y54oRssdU8bAjMVlhAv6baWW3BTfC42+XrB0cFRVEdHVpHkyNwwuWLA5
         ED2w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=G+ZPzMl61AutZn0JR7rQ+ODzZdfqpNVn7of46+z70F4=;
        b=0v9eVKS/XnAWHPi5sve7jM2UyAHAepDKVYXrR4owGY60P6vcDQ/uy5O+btNtIfVkHf
         PrzSeTuFprI+mzgEL83EQ/RSxNuQDhogmnMz/7l6bN2Y2630beuQB8Yu4QAMEwK2g2/w
         QHUCtwlj2SEZaLuR7nsb9DZ2TMJalalB60S7smUVqTfb35qLnoqee0rdgfRPJ9kn8mbo
         QKbm2qmVOEMQC4aOa5EC4Gsj1bQzlZHcJ8D1XQ/d7NVcAlITgVrLA3volc+ORT/2VwZv
         OrPXaxFIatPxNGlYgvBmy3Tak4nyUYOUloJNhr64Er+CXTtuO9emYDNW+XD/f6K3UBkW
         6Pfg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=hZHxlhun;
       spf=pass (google.com: domain of robh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=robh@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=G+ZPzMl61AutZn0JR7rQ+ODzZdfqpNVn7of46+z70F4=;
        b=dbIaI6OEL/iBp01+kwCJltCh6scMGH9yY30JozM8OjF9pvnxgCWXJb+1ewkS1dHkWt
         t4sVrz5PCkPLBC1endnve+Ru3y2zw8AGqb/Po90X/Ke8rZyETn9LXA/GqrKe+8PqN+Vx
         ujWmU7+jpmTp8EyFZl1cC8t+sgM1rbkYjP0gICXokA12RxrmdpG+PcBIhXqcfEhYy8IR
         nIaybLcTLSZzp3NhVo2caBtmoxXz6+V5NPFW9KzkKVYyTC74hb//qmkStb/ppMFlWc6j
         7fhr4rsYQwKAp+mq7r0OS3JgcBvDrn+zhCspvt0m1hbOtP8MdetVPp2SK4w0W2LstuOT
         /1Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=G+ZPzMl61AutZn0JR7rQ+ODzZdfqpNVn7of46+z70F4=;
        b=IHYlC+Y9k+ua/GGTC/fLMTo7cGHDn7+qgxHHALskOn9ebld1NqKsZZpDbQ7l0Nn/NB
         6Yzo6mhR6MyfkMQIFKFw29PzLUdcGnYi5cfrcn5q4/qOaOxQ88llLNJFf6Cy6rmlklPC
         xORsafgus+DkgWj6/nmz28w3atPGglZdsZjK5N1+ATzcUFJHDDm8P+R/pK24jdFnCCtH
         ztqh3Leajr0LWnEpIEP4ltoVzH2SqKiC8mYI/B6CpqafaJD87LTX8TDW1/iN4coBg0xo
         6l+eKc3zn98k1i+xOTTq6h70ddOwQR/AgidOqgy/FKFari4om/9JwaxyeubMqF9MTai/
         Km/g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Shz1PS6ms8asrQUdfj1i+RiNWRlbejluPxrON8QV9eq6DJ13T
	kZTCg38aJH3IvrjrmKuYt9E=
X-Google-Smtp-Source: ABdhPJwHMLnsXPUFuL85icafbhC4ocsd7DsbnnT/5hFvFTocOhhPlhmWoutU1uV1KjTovgF1OMY7RQ==
X-Received: by 2002:aa7:8f0d:0:b029:2f5:2b72:2388 with SMTP id x13-20020aa78f0d0000b02902f52b722388mr4046893pfr.44.1623346473985;
        Thu, 10 Jun 2021 10:34:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b708:: with SMTP id d8ls3862081pls.3.gmail; Thu, 10
 Jun 2021 10:34:33 -0700 (PDT)
X-Received: by 2002:a17:90a:db14:: with SMTP id g20mr4503763pjv.31.1623346473377;
        Thu, 10 Jun 2021 10:34:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623346473; cv=none;
        d=google.com; s=arc-20160816;
        b=0zIWAgfxhBnWmxYhKj4bj4fU5amsXK6w+Ij1+bHNyYjnyw0oKAn8nGOiGOPzH/9LXb
         PpcXPovU3kw9xOAfESsMNnAcDA9Uo+Aw5lkJupWZ4f5s3TEgOw60Brd2ZmHZZ5nO0gUn
         DSp7YKFyq9cjETrvrXcXVQcBMOy9gXlvEOUFgT5Ybj2Qlg0iuphs17GWYM2FSwQtWj+7
         PVDsnr1X9IKNNpAbIgT5Po9LrxGE7H3To5/yWcJzgPi86vfhqUTBe2kd+CxVXGfXzEXY
         kDJ4+CdJrhqFuLq5uFvNPUlBzwUwvjT/0JGRusRWo0/AE9k3xSkgFAUQBjsmjBM4etVs
         6ybw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=P+jVaPkYfsSbn6aIwBkLG3SSMpzgZOehwPkqFqsQHIE=;
        b=U8JykpOr+SP5CUR8L8uBVt2qiKyQZGLWsLJUWsjTigpBdpRIYCFoqg/KNIzUcZECv4
         bTpP4Va0qDNt8kz1a7bdRzWjlHWLaleFXdArYvYnl+HBDaQHIJqCU5Q+jqb92hqmpJg3
         6rGf+wZvQEOGU+4DN4OxmviErNTVaMsUfS69lkxBDdT+fGrxgNRaiW3axxuCHMLNRQxe
         NfABfXoTfad9iYKr2/uzyBmTHG9KJ6o6N98x2ZQyGxx9M7exnQBhQEorF/oUCeR1+SX1
         OKZsk43pd4c/l/GKw4zJslMkzyBFZ5b64kvShJRS2+lM64FKklMT8qoXOjswWh9z18vg
         ktvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=hZHxlhun;
       spf=pass (google.com: domain of robh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=robh@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c23si413822pjv.2.2021.06.10.10.34.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Jun 2021 10:34:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of robh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 18587613D0
	for <clang-built-linux@googlegroups.com>; Thu, 10 Jun 2021 17:34:33 +0000 (UTC)
Received: by mail-ed1-f51.google.com with SMTP id u24so33978209edy.11
        for <clang-built-linux@googlegroups.com>; Thu, 10 Jun 2021 10:34:33 -0700 (PDT)
X-Received: by 2002:aa7:cb19:: with SMTP id s25mr641483edt.194.1623346471674;
 Thu, 10 Jun 2021 10:34:31 -0700 (PDT)
MIME-Version: 1.0
References: <20210610171553.3806-1-nramas@linux.microsoft.com>
In-Reply-To: <20210610171553.3806-1-nramas@linux.microsoft.com>
From: Rob Herring <robh@kernel.org>
Date: Thu, 10 Jun 2021 12:34:18 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKcypxO+6X3MgjGGvBYELcOi34TjoscMMrkB4PApquuQQ@mail.gmail.com>
Message-ID: <CAL_JsqKcypxO+6X3MgjGGvBYELcOi34TjoscMMrkB4PApquuQQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] ima: Fix warning: no previous prototype for function 'ima_add_kexec_buffer'
To: Lakshmi Ramasubramanian <nramas@linux.microsoft.com>
Cc: Mimi Zohar <zohar@linux.ibm.com>, Thiago Jung Bauermann <bauerman@linux.ibm.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, linux-integrity@vger.kernel.org, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, tusharsu@linux.microsoft.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: robh@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=hZHxlhun;       spf=pass
 (google.com: domain of robh@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=robh@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Thu, Jun 10, 2021 at 12:16 PM Lakshmi Ramasubramanian
<nramas@linux.microsoft.com> wrote:
>
> The function prototype for ima_add_kexec_buffer() is present
> in 'linux/ima.h'.  But this header file is not included in
> ima_kexec.c where the function is implemented.  This results
> in the following compiler warning when "-Wmissing-prototypes" flag
> is turned on:
>
>   security/integrity/ima/ima_kexec.c:81:6: warning: no previous prototype
>   for function 'ima_add_kexec_buffer' [-Wmissing-prototypes]
>
> Include the header file 'linux/ima.h' in ima_kexec.c to fix
> the compiler warning.
>
> Fixes: dce92f6b11c3 (arm64: Enable passing IMA log to next kernel on kexec)
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Lakshmi Ramasubramanian <nramas@linux.microsoft.com>
> ---
>  security/integrity/ima/ima_kexec.c | 1 +
>  1 file changed, 1 insertion(+)

Acked-by: Rob Herring <robh@kernel.org>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAL_JsqKcypxO%2B6X3MgjGGvBYELcOi34TjoscMMrkB4PApquuQQ%40mail.gmail.com.
