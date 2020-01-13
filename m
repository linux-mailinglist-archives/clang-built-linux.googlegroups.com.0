Return-Path: <clang-built-linux+bncBDYJPJO25UGBBWFM6PYAKGQE64XND3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 46B97139AE2
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jan 2020 21:43:06 +0100 (CET)
Received: by mail-pf1-x43c.google.com with SMTP id l17sf7336226pff.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jan 2020 12:43:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578948184; cv=pass;
        d=google.com; s=arc-20160816;
        b=anVprVapvZtGqUp9Ck9R0LAzHciD2ndEbGWOzeEvKIHXMVpTHV9nkDEWbD+LdBCCeW
         XpCQENPQPe0DtYgR2RVCvX1hHIm0fH9opAgoyYT68q4qVsMz0D6l3knvzbrcnnAkncDo
         XAMSZ4wqtZ+F5554A0dbXsbuSu2Q4BcD08bsvgdzh7a+M+ISnro72+bh4ixUNa8BE8s7
         dpTQU3dlQ4OVeWAXdp3OV/z6lDgRBiEjVPSNJlum0kDp2fS2lOfJWGh8AgJwNFJ9l/1/
         pGnPSulbBTGa1OqEVZV7LgmGvBkAKf/TZEBl6sPxD/Py1KkFVPhoX+JPaUW3VnDpSaHa
         9+BA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=aeoF1FtPDX1jHYQexkzGI3ADn/t0JiPg/UrcGZEwr1c=;
        b=wqOUVrAFoeOQrHj8L5Cy6qiJfPTW1eoNet+aXgF8DWCHcUFWwIoumpn8z+2ZtSyAai
         FRVrwhCGcE9GBlGhcyDlBwCzJ+jye7rb3DCZVsEEYGl3JZB6v5BEeWZWbeksgSAMoC8r
         NtA1/1PWX8L50siI0WPETL3ueGGY9VHHQWq3PdzSSigeEF6aBHztu8AhL7vkHh+/EOwV
         Rh7crGoDYhu9hbbL0Od1IFOr6MAeggsx+EuPKATo7sLW85otROeJjeu6LpLwHh0bj722
         017wmBdJl8nJw2xGJ/VQ7Zxdz5RTeE4vaC7M+tIHU10QB1gfnaNujr/xwmYaWz9u6tdg
         nxZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=O3+h5M+P;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aeoF1FtPDX1jHYQexkzGI3ADn/t0JiPg/UrcGZEwr1c=;
        b=YZgIRTZ0DF2+Qn/lcxzl+/nRCn/e+AZxFX/H+QwTbGa0BE//QN/QhycWly/UOfH+0m
         GbkmJgoEv2M+u6dcEe8fra3lBc1rwcMWT07/VarDY6Ls5kqNwkZqfnVeE+kNTGYwRJij
         02gxkBM+ORNOI9tBQI7+tKBy+5X4c+ms7I1tQuWvrw9z0n52iW/7dSo9Ir6kyIhn0unt
         o2KR2nZEvCY0Zt89RrlYw+aTmhHhpjzUrp+/IdxlT5vMbC2lxzgbOT6UEpzYpSgVE5hG
         hH8tu9xHMdipyXOTjoxPqo4OYYrg6YSC0AOo8Mfwq1LUsdx0jt/EASoGQU06C5vdRKxg
         yAzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aeoF1FtPDX1jHYQexkzGI3ADn/t0JiPg/UrcGZEwr1c=;
        b=EJSfLNrzQFZXr4zxwBgdaXqalyTnjkRrurISbVUlXKmBcNSw9cvJCcRGcX76aH5ikN
         IO3M8IwiCGpH7rXso2cdNiqKNMo7NpYmHsTEjR69voQnl5RMhyOmEr28wDXz80gFmbYU
         jjO1vua5atosGJ3uwb9rLT8kiJ/EwQa2DIWJERzsHjfq553nn343JhxGMYCykKRu7ZqV
         7+sUNkp+Wgeb0YE4/hCbhvLHF275wBE9UfoUtlV8bI/WRJM9vYc/WLrN1E0bo78pk6pQ
         0txVtRzeHfm1eCS1Jl0Vh8gGCJLu1panEd7cub6B0pQewYsmThSn2OKBvGwtg0nm6/8G
         JC1w==
X-Gm-Message-State: APjAAAXrEvth38FVLxmuDcPxEzRw4liVSZPR2Bd3u+HlIYmzQHeowpph
	e7xYZEV/Z4vy5My9K/tryWo=
X-Google-Smtp-Source: APXvYqxxs290Fe5Hn18NORZr1ix/JCls5DDJrUdGhZRVAb2vpdZAAkfWr4xyHKyQfm45/lp5z6IMKQ==
X-Received: by 2002:a17:902:9a42:: with SMTP id x2mr16818409plv.194.1578948184589;
        Mon, 13 Jan 2020 12:43:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:8c94:: with SMTP id b20ls140533pjo.0.gmail; Mon, 13
 Jan 2020 12:43:04 -0800 (PST)
X-Received: by 2002:a17:902:462:: with SMTP id 89mr16071349ple.270.1578948184118;
        Mon, 13 Jan 2020 12:43:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578948184; cv=none;
        d=google.com; s=arc-20160816;
        b=tYivBv6GDUP2TMflAfVs+niO6POk2f1GqIfC56aJdAwMwmp9tsZA74kXSB1uTNbVRI
         /O20tUK4NYqXSE5BN2XCJr1761dfmXJDUuaa1m1mz7SfilSEb18eMuQB0va7X+neIkmz
         2kIQOc+tZgldBv/gFcFwkcCex+O5h5TooRogMcg99cFk5ApS575KPKQVR9aC8dZbu0UK
         zB80Xlq05shIs2Kowc+6bfSLoCmvjm5A62weZ396OWpj6ZedbdaHPvjwj3phbwWs0bdV
         Mlnbw6WIMGlUEBWcdx5xCbyWBWbRFSRLYI8Cc+1vetHL/PTeFWNZAekGxnNW/aHNjRaI
         A/9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=kmH2wkdxoDz+MVjeFcYLAtjzwvmERQ9jAmmQZRFkGoQ=;
        b=dRCwYqjnw76FdWbTqPGqh0AazjG5UtLGyTJC/udvnYEH3FvazAsSrk0qE1RHvAKKEo
         jhDNoE4TxlPZtRQM70xO+CFBrEUxBleHdgXe0dPUpaZk7cjv117gkcixaADo3uH8awp8
         DkrUfSeFfqQd5ZBdKSPNYLs1JSgphja72FQOlfjzDjoUGBBah8thjiARrLmYKIS2ykPu
         UpfgQT4LzMa1dZWAXbWSI4IhXQS7IiXdqAvA/f8x89VIWl9rm/+8crPKyXgVSIMrKunt
         k/EMsS8BUFIKyzdZPOPrB4WLPydx2D7tYBer8oS5fXTW6P0FPVuXcKy3XednFOi+CRBR
         R12A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=O3+h5M+P;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id y13si32075plp.0.2020.01.13.12.43.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Jan 2020 12:43:04 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id x6so5420033pfo.10
        for <clang-built-linux@googlegroups.com>; Mon, 13 Jan 2020 12:43:04 -0800 (PST)
X-Received: by 2002:a62:18f:: with SMTP id 137mr21142927pfb.84.1578948183673;
 Mon, 13 Jan 2020 12:43:03 -0800 (PST)
MIME-Version: 1.0
References: <202001112058.4xALCb72%lkp@intel.com> <CAKwvOdmQovj9tDQ=MsAmNU_ghGqVnS9hAUNSWo_y2ACbhm8sZw@mail.gmail.com>
 <1578946267.31031.8.camel@kernel.org>
In-Reply-To: <1578946267.31031.8.camel@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 13 Jan 2020 12:42:52 -0800
Message-ID: <CAKwvOdkOth0_OWHF3zn88B+iy=Tz0vKtjVCH4akj3rKynkzfoQ@mail.gmail.com>
Subject: Re: [zanussi-trace:ftrace/synth-event-gen-v2 10/12]
 kernel/trace/trace_kprobe.c:974:17: warning: passing an object that undergoes
 default argument promotion to 'va_start' has undefined behavior
To: Tom Zanussi <zanussi@kernel.org>
Cc: kbuild@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kbuild test robot <lkp@intel.com>, 
	kbuild-all@lists.01.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=O3+h5M+P;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Mon, Jan 13, 2020 at 12:11 PM Tom Zanussi <zanussi@kernel.org> wrote:
>
> Hi Nick,
>
> On Mon, 2020-01-13 at 09:20 -0800, Nick Desaulniers wrote:
> > Hi Tom,
> > Below is a report from a 0day bot build w/ Clang, can you please take
> > a look? (Apologies if this has been previously reported).  In the
> > past, -Wvarargs warnings are usually related to the last parameter of
> > a va_arg function undergoing implicit promotion (which is explicitly
> > UB, IIRC).
> >
>
> OK, looks like just changing the param order should fix it, thanks for
> the report.

Yep, IIRC, that was the fix in the past for previous occurrences.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkOth0_OWHF3zn88B%2Biy%3DTz0vKtjVCH4akj3rKynkzfoQ%40mail.gmail.com.
