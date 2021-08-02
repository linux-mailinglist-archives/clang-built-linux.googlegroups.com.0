Return-Path: <clang-built-linux+bncBDE6RCFOWIARBRGOUGEAMGQEY4DKVSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id D1C263DE1C8
	for <lists+clang-built-linux@lfdr.de>; Mon,  2 Aug 2021 23:44:36 +0200 (CEST)
Received: by mail-wm1-x33d.google.com with SMTP id a18-20020a05600c2252b02902531dcdc68fsf165184wmm.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Aug 2021 14:44:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627940676; cv=pass;
        d=google.com; s=arc-20160816;
        b=lFPguZY2MkBMu1xAqPXJ7QXfmyMeAUFfTGGLJocVmViPk30Z38daeToX3ZWqxTmWKu
         XZrgPYlZdUOWpX2TezCZ1ioT2MDNpNKG4fpRTzmGtJ6lNGqih4c8X4LnHqaDEqofsJo2
         WB3YDwOLkDNZUGa49X6G+SscdU3C20/MO70PNdqQun8mHnIv3PpEW6y7Ml63zTXZVDY1
         8YLFVMBqp/XF6ykgverD4LQ4c2/RdwEad3mZ5V2C86lac5Qa81xnNYH7qSzLcVf18GDf
         cE2+E2vw3utlKVtjVfXXFlt4d81p2a/sBLHEsMZFQ3wehPUgB/X/x0NhGJmoySCWfFFb
         EmGg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=VL2398ttmiQ9TTInVdfSZXb2HUYbzWiM+yYRBqlQ4iU=;
        b=A12bcWX+93L8FDmVEoR60Mm9JUIJjIQRXRADDS2M2QS7a4rFfY9C4KVvkgTB1jUSSl
         K3BbHSBz6KhRzh0DHIkfQudct2eGOR3DQ4v5DyfqihiO2Sxl9V/JzGWsg/PpzcMSs/Xd
         3T59SZFEqqEFk1aFH9VKzXLBIeX7u/AU57k6ThICa/od9itMAeF2CBjZdJ231rrSHbJd
         4m4e8ltwp2LHSmecMImD8pnrcvhELj0QokMWg5M1jA9sMCnvrcACz/zKVKBdp5/mY+h5
         2htFvA719lloqgHv0g6jZS4nHTic1yQ5asMRlTOi2rX2oELGaz3vtGZx3/dltIVN+NDV
         KbJg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="sVhHg/iq";
       spf=pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::230 as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VL2398ttmiQ9TTInVdfSZXb2HUYbzWiM+yYRBqlQ4iU=;
        b=cPQAe8HErAf0H33slJtRT4BNeY39mnO0MjwH09CoiYKW3gjyabjgbZuyAsPm3gFTwZ
         hrr4qDgsdysNdciiPVI7tsX8gEObrhVqcN+g6blQcKj4bhR7Tugpm+Whc6TuiIsasHs7
         dEW+IKb29HhgC/IE3/EGGNvqaaO2HeZIqdivdYhSNmi/zNzLupR33xTjzYHeVQEWLvwi
         9xYLt2GA4oHIdSq3ZxKRNe4UTfNol4+zPI9ALngXXHEufHWwRVWK4dlKMI7nSWl6dUCB
         GYiqQc9FAG9fawQWpM9qJEfcjPvlDY6IvFEjxAQhTZzoIM8BkrjQ3h9Vo4k5aPhUG1zz
         ugTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VL2398ttmiQ9TTInVdfSZXb2HUYbzWiM+yYRBqlQ4iU=;
        b=RMqMCQA9HPMqxDFmlOrbG7YqAym+zOU8sxEV4YRm3+ZLXNPE/vhiuMbgFVTI6xikt0
         MQuTpH3qJXni7VgxsT7jWup0GfbcJWvbSAIQHbJPEQtwh08e3e21BqDDRUdn8xJVakD7
         OFZSyyzbdEWhevtZQcnfYMGynhWE2zlWAudIfyo1VQA8frMQ4gQZR37oTz8tLfzCShRu
         w5Y56cfPPH5tmqg9OcvpBTB+vzsVTpBPtYQzib+qJdHX0u484PIEf0M3ebER8LcEgobW
         3c8y9gdXuA4s2BdlBFdNIyuYWw213D2p5/EUZQh6rtyJmtqwlnLmnuOAlSVNnsI9yzI/
         6knw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5315uCRpntkzowalWo1QmjAZYOBzfTfJM2Hi+iQdo1MxneZVVwOV
	lwB6MsdBuKf2AoV8zi5SmBQ=
X-Google-Smtp-Source: ABdhPJzus26hqfat2QqhNoNArDjvX38DirBokV3eWB9EpZ0BFlc7fhb/vNYatsANoVFYDARxIt4FsA==
X-Received: by 2002:a05:600c:4eca:: with SMTP id g10mr897141wmq.60.1627940676542;
        Mon, 02 Aug 2021 14:44:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:4fc1:: with SMTP id o1ls320648wmq.2.canary-gmail;
 Mon, 02 Aug 2021 14:44:35 -0700 (PDT)
X-Received: by 2002:a7b:c316:: with SMTP id k22mr900753wmj.56.1627940675665;
        Mon, 02 Aug 2021 14:44:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627940675; cv=none;
        d=google.com; s=arc-20160816;
        b=WImnaoYpvVPmRnDVyVdA593JkgxibTfJJPIVR0wvUrTg3o9tyhPgOcwTAnoF9L7WKW
         BVKCtwbUzfM0GoxGgaqHGIf70erKIzT+2pb8nUpHBRmxi+1LZ3RTHT9PKon5JgLKM7Nm
         j+OYAEJ1TPsGH8PPVnbkTgFrDM/OjbLrAXKkUrJhAUg6zn6Y/XcVq90sbLIPlcbvvCL1
         9QABN9Oh8nGGeP5CUdU1ca+QR+qye2pBmn7uikA34YlKmX7tSCH3SXV/8GYLkJywEV4Q
         6ZJHYWEcjM1i97URhmi3mFPociOmRrW3Ld3ALjdro/Y6xel0/eo8FJFH3b4MgiJ4blkq
         SpfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=h1Zn1dHNcAo55UWjf9UAwAe/+iNEFF6IvInOoH/fLVM=;
        b=ZyOAEJhkE3e+b01MqTynDdbOsa8mlDYGss/CADWkBgSv+idn+LbyPWxMRxOBPRa+ZI
         0KkpK0YQVv3YfVNPctoKAUmTLeXp3JrsggEAomjlNXIxbY8nHAv1GtPlbKbZEJIUWkRV
         KbztHVq+ZHA6K0A/BAMP5gq+TptYHPwCnhJC4r4cIbpHypL+GfXf1/8m00mMwbjbandy
         yqezyXW2bk5MvAr1lShD+4swAiDqyoqw4D2KsWPfIKXB/7jaxnXGX8NJ4h0EH9KIWmwa
         k7JD0d/HMXyEb4PFKwOvBAjEh5vJ6EgxgT4Ljqapprl0JTqz92h//d6fWLYrk5/aWoT+
         L2sQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="sVhHg/iq";
       spf=pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::230 as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com. [2a00:1450:4864:20::230])
        by gmr-mx.google.com with ESMTPS id y16si64522wmq.3.2021.08.02.14.44.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Aug 2021 14:44:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::230 as permitted sender) client-ip=2a00:1450:4864:20::230;
Received: by mail-lj1-x230.google.com with SMTP id e5so25729301ljp.6
        for <clang-built-linux@googlegroups.com>; Mon, 02 Aug 2021 14:44:35 -0700 (PDT)
X-Received: by 2002:a2e:888f:: with SMTP id k15mr12570930lji.326.1627940675101;
 Mon, 02 Aug 2021 14:44:35 -0700 (PDT)
MIME-Version: 1.0
References: <1406720038.945.1627915387982@localhost> <a41ca429-9480-9ecf-242b-5e68fade3c10@kernel.org>
 <YQhGFU85Q4k1dKfe@sashalap>
In-Reply-To: <YQhGFU85Q4k1dKfe@sashalap>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 2 Aug 2021 23:44:24 +0200
Message-ID: <CACRpkdahn4C-JEPD8VHWA7BgX9=tZ8UVB67w-B-wGZioTaBv_Q@mail.gmail.com>
Subject: Re: [CI-NOTIFY]: TCWG Bisect tcwg_kernel/llvm-release-arm-stable-allyesconfig
 - Build # 4 - Successful!
To: Sasha Levin <sashal@kernel.org>
Cc: Nathan Chancellor <nathan@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	linaro-toolchain@lists.linaro.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Arnd Bergmann <arnd@linaro.org>, 
	ci_notify@linaro.org, "stable@vger.kernel.org" <stable@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: linus.walleij@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b="sVhHg/iq";       spf=pass
 (google.com: domain of linus.walleij@linaro.org designates
 2a00:1450:4864:20::230 as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
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

On Mon, Aug 2, 2021 at 9:23 PM Sasha Levin <sashal@kernel.org> wrote:
> On Mon, Aug 02, 2021 at 10:28:02AM -0700, Nathan Chancellor wrote:
> >On 8/2/2021 7:43 AM, ci_notify@linaro.org wrote:

> >Greg and Sasha,
> >
> >Please cherry pick upstream commit 7e2bb83c617f ("power: supply:
> >ab8500: Call battery population once") to resolve this build error on
> >5.13.
>
> Queued up, thanks!

Thanks for pinpointing this patch Nathan!

Yours,
Linus Walleij

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACRpkdahn4C-JEPD8VHWA7BgX9%3DtZ8UVB67w-B-wGZioTaBv_Q%40mail.gmail.com.
