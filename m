Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBUEZ77WAKGQEZP35HEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id EFDAAD35D5
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Oct 2019 02:29:04 +0200 (CEST)
Received: by mail-lj1-x239.google.com with SMTP id h19sf1382135ljc.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Oct 2019 17:29:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570753744; cv=pass;
        d=google.com; s=arc-20160816;
        b=EYINFOEog6FVS5SnX1uKJyIYemgcdveRLpmHbek/5sfwUijxoUfsP/L475X/lbBF9c
         it8AWyfYfN4NJQSElcrhgq07Bjkkmuk9VYciwX2jZIHN2P2VIAx4brbdBMgZ90T6Uvyq
         iLz8myXkq7DJVwIyZgKiSfX/1yR+bemi3iPf51JuJDHw3w9ukhrc2MVHADIR2aePl+md
         iCxq4qZJsNjEtR17V9XlwdyERVU1OjeuJffaEoeEiQTfLcS9s/JpyTaybPqcXzB6cND1
         BXehNNU7uEgB/vbrxJdqBsZaDtDH072mnntE3cDtX0XcHO1fsaj7iU7mbLZZduKiX5KO
         cekw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:mail-followup-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=pWQl6iyC7gehra7etLXJDFqP0sUlcAxqCjjPY0svKrU=;
        b=q+jFlWFtaQK+sVTmEg35SpC+0yipARxtJPmZmdalltAThJ1Yv8lyO1gfrJh7JUIbtu
         khB9PgP1l/6DqlWIcDaZkqT9m2WbUzCkmQkAiQwMYOKTdN/qNGGYUSMEeBZWzLbqzV7T
         pXgrkawtIzRO3f77cGIoejx8mVevYq8dXNMKi8Ncn3dfZmpk93gudJ7HklWgLKNRRMFX
         ZOiacKFI2Gi2Fry7v/XNVyXYXCXMvQ1ejqa2qXa1KfZZebqBTHf8jW++nBZ1F8xCAW1j
         LpL2rybh6DpueEjkHjvWQTOcYJ9TsKNLjjlwfIV4CWlJjv9MwGmxb9ZAHnCbEtmM/5We
         5meA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=ctOBcBUR;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pWQl6iyC7gehra7etLXJDFqP0sUlcAxqCjjPY0svKrU=;
        b=ONG2cGfX8BKjp3Te1T47DFy380A8SJI/11vo4qw0GL2+0P9JbJJktcK4bV+iDJZtge
         AKjIQqXavjyLykMozfkU6US7eyzLl++8Xm+7hV4ITrXWvWYmEiGD7h1NG8SUh7pSOlNr
         8weo7IOq7tOpphmyUZB42aijCZqzmT/eppz4LFhTCKiY0DS5r7PZh5klyYRqaXbnwFVR
         e5A+gKJxEyulvn71/pB4t9SzU2YMbnW5HJqrksXmf+9WZAJqrlKB8XQD/rI7qpxjFbd6
         dfAgyf5sfmit9r9cVqkql986wqW+A0Ke6lK/P9/RleoxUBb5pG42TmSXZMZMPV0bg6oV
         IzbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pWQl6iyC7gehra7etLXJDFqP0sUlcAxqCjjPY0svKrU=;
        b=XI4Txbw7bbjd8jpOZI/OgdK+9ZII82kdsQYVYxWKOb7iEf6bbi6Dd3pKQCxh7bgXvg
         9IOr6Fi+Xaicnwp7tzdAWWPWkNQoqm9J+rm2ZP0KHaUUc3JTaoAPkObeH38sne8OpGXr
         5R9+Tq9vAK056TeLfqO+9sKd0p1+sWXPIZPhXsPSDijCLoDPJC6gYFgmGTzOheK2E4XK
         /I0vEpUZLoCTNaWOGipr0IJDiXSQwZX1vVz8yUueJQ/jc0jYeS6dlr98jml6s0vg8BoY
         7TwdVe2jgEbPURnify23WG0bxd54Avt2jsuTrR7byRot1nt8x2iRyq0MfmQD0nQVfuLG
         g8PA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWR3XCHG/bzsOP+0dyXKCzRM25ddk6v7hCAuPt1I9PlzDH9s5nc
	pW1z6XGBjaW95tLurry6+Z8=
X-Google-Smtp-Source: APXvYqxOuXJO+5nVCEQd5dxv186iHeUBw0nMXp0mZneQLE6IktsfyHmtUxmOTJ4p7ByA+X6EE/kPuA==
X-Received: by 2002:a2e:5812:: with SMTP id m18mr8053686ljb.182.1570753744566;
        Thu, 10 Oct 2019 17:29:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:42d1:: with SMTP id n17ls544034lfl.5.gmail; Thu, 10 Oct
 2019 17:29:04 -0700 (PDT)
X-Received: by 2002:a19:7011:: with SMTP id h17mr660152lfc.145.1570753744107;
        Thu, 10 Oct 2019 17:29:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570753744; cv=none;
        d=google.com; s=arc-20160816;
        b=Y6KIHz1stmakMKg5ZmRbnD0L+HZg/4XSNtVUMQlOgjzueyZAtgNedML2DyQMil9P4o
         fwRFTShYIkbhHsgsDg1V6Cp7cNwjnAyGl75afdfTX/lm8DG4O8d5wloamcVe0BD0s2nD
         /62toNzikWpSGVtnsui290MpGNW+7r2X0QCKHHY57ovzhTzkgYYRCyUZhkmXqAVXtEpA
         DdAvl2AbeOrLi4dQ+LkjH6uF85jtk7qRyfXFbtoMeMXwA7pv0Q/Dut4urWMXaoq8eMl6
         l0swxpgr24TQ8Qrt9jB4Bvpqu8xhdjZIK/1Q+kxH4Xh18Wxj9R47Xj/orpawrKb2SmsQ
         ahDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=4WsWgFcQX+4hcpk8fzSs1Uvm+uJ+nhztEkt8zqmznqg=;
        b=kbIA9DU5hvox60PLaVE0BtJoaDK7gQ3nQXdn38dVTywumuqOP9gsbwatf0DP77Et6V
         hOrbapLaXRgy7HoZqyEj6U60Z+Txe+DkFre29hoDnb613SHoAOXz2KCOT5zAsI9AqQUD
         udl7xQxU7LmpAd3m3KEphqUQKVDX757pK+5Jo9HEGDffvSf6VC93HtZY+M2qaJeUr11Q
         zz7I4GjNdNxV79aUnr9y331IpuAYRoM0H6Tq8qF/vABqWRbw37UjSEvBCLiVlQI+wpJZ
         jbapSGPINUJWVkrMEWeBscmP3S+sy84gLrWN2jTOzV9ldauR6LB+Q5HwDzIfzQFjN2uj
         zwcA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=ctOBcBUR;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com. [2a00:1450:4864:20::244])
        by gmr-mx.google.com with ESMTPS id o30si41726lfi.0.2019.10.10.17.29.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2019 17:29:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::244 as permitted sender) client-ip=2a00:1450:4864:20::244;
Received: by mail-lj1-x244.google.com with SMTP id b20so8034287ljj.5
        for <clang-built-linux@googlegroups.com>; Thu, 10 Oct 2019 17:29:04 -0700 (PDT)
X-Received: by 2002:a2e:9ad0:: with SMTP id p16mr7677917ljj.179.1570753743905;
        Thu, 10 Oct 2019 17:29:03 -0700 (PDT)
Received: from khorivan (88-201-94-178.pool.ukrtel.net. [178.94.201.88])
        by smtp.gmail.com with ESMTPSA id c26sm1785025ljj.45.2019.10.10.17.29.02
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 10 Oct 2019 17:29:03 -0700 (PDT)
Date: Fri, 11 Oct 2019 03:29:01 +0300
From: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
To: Daniel Borkmann <daniel@iogearbox.net>
Cc: ast@kernel.org, yhs@fb.com, davem@davemloft.net,
	jakub.kicinski@netronome.com, hawk@kernel.org,
	john.fastabend@gmail.com, linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org, bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com, ilias.apalodimas@linaro.org,
	sergei.shtylyov@cogentembedded.com
Subject: Re: [PATCH v4 bpf-next 00/15] samples: bpf: improve/fix
 cross-compilation
Message-ID: <20191011002900.GA4121@khorivan>
Mail-Followup-To: Daniel Borkmann <daniel@iogearbox.net>, ast@kernel.org,
	yhs@fb.com, davem@davemloft.net, jakub.kicinski@netronome.com,
	hawk@kernel.org, john.fastabend@gmail.com,
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
	bpf@vger.kernel.org, clang-built-linux@googlegroups.com,
	ilias.apalodimas@linaro.org, sergei.shtylyov@cogentembedded.com
References: <20191009204134.26960-1-ivan.khoronzhuk@linaro.org>
 <20191011000056.GD20202@pc-63.home>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20191011000056.GD20202@pc-63.home>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=ctOBcBUR;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
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

On Fri, Oct 11, 2019 at 02:00:56AM +0200, Daniel Borkmann wrote:
>On Wed, Oct 09, 2019 at 11:41:19PM +0300, Ivan Khoronzhuk wrote:
>> This series contains mainly fixes/improvements for cross-compilation
>> but not only, tested for arm, arm64, and intended for any arch.
>> Also verified on native build (not cross compilation) for x86_64
>> and arm, arm64.
>[...]
>
>There are multiple SOBs missing, please fix. Thanks!
>
>[...]
> 5 files changed, 218 insertions(+), 99 deletions(-)
> create mode 100644 samples/bpf/Makefile.target
> rename tools/lib/bpf/{test_libbpf.cpp => test_libbpf.c} (61%)
>Deleted branch mbox (was 9f35d1d0c8f0).
>Commit 9f35d1d0c8f0 ("samples/bpf: Add preparation steps and sysroot info to readme")
>	author Signed-off-by missing
>	committer Signed-off-by missing
>	author email:    ivan.khoronzhuk@linaro.org
>	committer email: daniel@iogearbox.net
>
>
>Commit 1878c1de4607 ("samples/bpf: Use __LINUX_ARM_ARCH__ selector for arm")
>	author Signed-off-by missing
>	committer Signed-off-by missing
>	author email:    ivan.khoronzhuk@linaro.org
>	committer email: daniel@iogearbox.net
>
>
>Errors in tree with Signed-off-by, please fix!

Done.

-- 
Regards,
Ivan Khoronzhuk

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191011002900.GA4121%40khorivan.
