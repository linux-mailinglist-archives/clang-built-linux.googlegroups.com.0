Return-Path: <clang-built-linux+bncBCT6537ZTEKRBJGH6OCAMGQETKIQV7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id A86E437F40B
	for <lists+clang-built-linux@lfdr.de>; Thu, 13 May 2021 10:30:28 +0200 (CEST)
Received: by mail-lj1-x23c.google.com with SMTP id z14-20020a2e964e0000b02900e9ad576f5asf8700299ljh.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 13 May 2021 01:30:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620894628; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZlpwiJxNT+34rLeNqjBQ+XSSWpE648KQZeD95q3SNcR5Yoq/SOXBMBvkoI2KCUg79l
         9W7uCjBQmaosN0YrWyfC/20nKDigM7YRnH2URWChPzwCnDEiQUS2wzH6Ggh6OklkTBZn
         DqK/tike1FVh6dYNhJnFAVSS6Nxcek35pnyb8ZTC4nwlQCnl+uFGiD5+zTa+tDB+RGtG
         X82MBdblv/zS+49kUw5JYnBvTMTyy4ihAliWJgptsilvAhYuj68JWLnoII1+ZM8N0QwH
         1lHNdtPcjcg3TLVpyvaumt1IwTkAcw6RwzatxAW4UtHzBA8g8Rdo4Rx+0UdLPgSwZ8t2
         GkmA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=LTBt9x/DAktvEMpG62wKL5y95zJujxMTAb7SsAASmP4=;
        b=auSQZaNXUhNAM2Oi6KHgErsvAT2wTJMe9jFDzg9AQZo2O30hg/O3l+NE27L7Cle1Cq
         1vMAXsX2iqHqQmkQsPh1Xm7QREX4oVu3CCqLum539ajoVkOJXiAQ2kMKUCUPz19hSZtM
         TKg9jh7ivroSaiIvmwkEXQo3gk9+XX7Zkj5QU5MEJinMWvzHKM7Vv/DovbSXSBQTqpqm
         hnW1Q+9XzeCZ2jPfhGH8iqp235Yjye1L+dgF5KNBEbudJb9u2uUQaRzWQD9INk1mjoUh
         +t4tQp75v42Ps77w7zLrMRp3wyaS4Pgz4wldpfGPlj4yUQ1AKN2rIayC9Wpf613rWPmM
         BLsg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=zzy81YRw;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::529 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LTBt9x/DAktvEMpG62wKL5y95zJujxMTAb7SsAASmP4=;
        b=Bzk/7xzDRifojnlS4wHUEefMo72gGBbHDq+TTW6mHq8II/KUaHFh1EM8tqbazxMJpl
         uBF669JiqUWpRfZV5/O0A+madbZvPpo+ln9v5Dcx+HfDB5HTTRsSYx4DR6fm57nw/vGt
         XmGaxAiHkVJAcVuXGwWH+X05F+za2OSzr9Vdij3fQw9TrUrSDBGUWnf4AVAJmlkyOfcQ
         nF+WzLhuyRLPX3olkKS9YW4WxG3BEVoAEi/V0wQiwIxQefCKoesy0vM4BvCJPVYiuUax
         2qTpPLqOvkVb9SkWLE2V7AhUq9AZCBkhb5f3jWZImWOi4Y4KDG3nOd68Kvse611xXZWl
         iIzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LTBt9x/DAktvEMpG62wKL5y95zJujxMTAb7SsAASmP4=;
        b=LLKqPmbS4KmqURqXFIzFC8qf0CupFiDUjq9F5fV6+NUne80K9rimKebvvMXxUtbnRf
         i6rz7gMCoWaY6TKS6pMf4/nu5SeB/tELshWcHMKgOk7tSITr+EBeNEVK9S8FtnAeKpOK
         pQtAKNwRrN7aNa/pyGZgMFQHNwp0xuuImo2GbaWDyxYN1Qp08lgLBg2Rq4TBAAtSpFLz
         p1/vu0YJuUlIGco13Oq3Ns2Yp9pqeE27y91zY5RSd+s0XNgN5n2nHpByLlx04PRYiBq5
         svQwK/m1IG9VvkeASBJy1az+5/MzAF1U8gyK/SkipU476ZG80huSzp1oDYkUCZqqYg2X
         mVOw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533fTUS5H4Hy295Q3W7w8X7Hy0jaF5OXjx1uSqxBDlDgROuWm1Sf
	FMXTEmNJnG4HbflymgbbGIA=
X-Google-Smtp-Source: ABdhPJxALClmyXvd9kRvUUpnR2AIurcyWEINH5C1PFB4vspCdH6kimRp1duvKDasD1xanwHtqD4RKA==
X-Received: by 2002:a19:7417:: with SMTP id v23mr29101230lfe.323.1620894628263;
        Thu, 13 May 2021 01:30:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5592:: with SMTP id v18ls3137850lfg.0.gmail; Thu, 13 May
 2021 01:30:27 -0700 (PDT)
X-Received: by 2002:a05:6512:2038:: with SMTP id s24mr28060499lfs.15.1620894627250;
        Thu, 13 May 2021 01:30:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620894627; cv=none;
        d=google.com; s=arc-20160816;
        b=pAviK+rpR2KGRjHruA2RfNJ8xRdqXqPcpWa0LiueDRHGDRELn8VpclCtng3MLEkhG1
         JZwrST6l7y4KyCWjQEkb3e/7DCbCQNYE/MmdPGnAgojVGF8f7BYxfBHAWvlPfaS66cQx
         UJN6ok9iYGucjCrim1oZ2Ej7cX4lNKymqO4LOYYnAdVMNrgU+BPXdKxHGc9kIGpyRDe7
         Xguaui95LxIZ6qhX1Xf5HNUbae+xM5BdhlDSHLmuTPibr6itUr2IK6jry7G4u6l9qR8f
         7tgDY6l/vl4v/gx0B95d4kfU89uZ2n9RZXxNGDt6uX5vzopWraxY/XQ6MvrKUBPE42cm
         ahlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3zRdMo99sBcPVkYh7kqt4rJWFtQ+AE7arsx+IsmBxYQ=;
        b=PMNa8a9Z6NivFwNbkVqBDNsBoOrU9bF1IC94SyROW2wGuWrOWC9eNCAM6f+X8gmyaf
         91hT+T/6pDAITW0jNqntthByqFfgfR6i2OMQnB/LAdQMQqkqbQD7Y6lp8VFGrVW8neSg
         8TF/GfXfZmgWbb5qaK6tg8U8FewsP8xH541BPJeBnuv/Mxs8UViP6RiWvyAK4jGqu2+e
         3KNyEuF3SU5PKaTalc5T85s2RTEzssfh4z5nSZ2kpjE85PDCgnV/eOgMFum5e4+Ng0WW
         kkdpmXeNaFvjLBnVgumoILF/oXPU++aCjxCFuckT7PbiNSCDc1KqMs/LJ499+BtkQcYA
         Dn5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=zzy81YRw;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::529 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com. [2a00:1450:4864:20::529])
        by gmr-mx.google.com with ESMTPS id e9si122943lfs.4.2021.05.13.01.30.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 May 2021 01:30:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::529 as permitted sender) client-ip=2a00:1450:4864:20::529;
Received: by mail-ed1-x529.google.com with SMTP id c22so30068844edn.7
        for <clang-built-linux@googlegroups.com>; Thu, 13 May 2021 01:30:27 -0700 (PDT)
X-Received: by 2002:aa7:c6ca:: with SMTP id b10mr33639738eds.221.1620894626895;
 Thu, 13 May 2021 01:30:26 -0700 (PDT)
MIME-Version: 1.0
References: <20210512144837.204217980@linuxfoundation.org> <CA+G9fYufHvM+C=39gtk5CF-r4sYYpRkQFGsmKrkdQcXj_XKFag@mail.gmail.com>
 <YJwW2bNXGZw5kmpo@kroah.com> <CA+G9fYvbe9L=3uJk2+5fR_e2-fnw=UXSDRnHh+u3nMFeOjOwjg@mail.gmail.com>
 <YJwjuJrYiyS/eeR8@kroah.com> <8615959b-9054-5c9f-0afa-f15672274d12@kernel.org>
In-Reply-To: <8615959b-9054-5c9f-0afa-f15672274d12@kernel.org>
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Thu, 13 May 2021 14:00:15 +0530
Message-ID: <CA+G9fYuR0OwYG1fmbro2N4FOk-nw61BJHQmd-B7Jbg+mDhsSAg@mail.gmail.com>
Subject: Re: [PATCH 5.12 000/677] 5.12.4-rc1 review
To: Nathan Chancellor <nathan@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Sasha Levin <sashal@kernel.org>
Cc: open list <linux-kernel@vger.kernel.org>, Shuah Khan <shuah@kernel.org>, 
	Florian Fainelli <f.fainelli@gmail.com>, patches@kernelci.org, lkft-triage@lists.linaro.org, 
	Jon Hunter <jonathanh@nvidia.com>, linux-stable <stable@vger.kernel.org>, 
	Pavel Machek <pavel@denx.de>, Andrew Morton <akpm@linux-foundation.org>, 
	Linus Torvalds <torvalds@linux-foundation.org>, Guenter Roeck <linux@roeck-us.net>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"Maciej W. Rozycki" <macro@orcam.me.uk>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
	Huacai Chen <chenhuacai@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: naresh.kamboju@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=zzy81YRw;       spf=pass
 (google.com: domain of naresh.kamboju@linaro.org designates
 2a00:1450:4864:20::529 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
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

> I think you just need to grab commits c1d337d45ec0 ("MIPS: Avoid DIVU in
> `__div64_32' is result would be zero") and 25ab14cbe9d1 ("MIPS: Avoid
> handcoded DIVU in `__div64_32' altogether") to fix this up.

I have cherry-picked these two patches on stable-rc 5.4, 5.10, 5.11 and 5.12
and the MIPS clang builds PASS.

- Naresh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BG9fYuR0OwYG1fmbro2N4FOk-nw61BJHQmd-B7Jbg%2BmDhsSAg%40mail.gmail.com.
