Return-Path: <clang-built-linux+bncBDOILZ6ZXABBBEMPQ6HAMGQENSV36GQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id A803347BFA9
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Dec 2021 13:24:50 +0100 (CET)
Received: by mail-lf1-x13c.google.com with SMTP id b35-20020a0565120ba300b0042604bb4857sf2175556lfv.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 21 Dec 2021 04:24:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1640089490; cv=pass;
        d=google.com; s=arc-20160816;
        b=tLfxnqS9NTrtInDsZ9yy9hvBOe2xQAp/i9pSz3VScv5CDF1B2hMvrB9uLrJedndNcv
         vqYFLzK/sJ0Wo8wcK5fkdS1mG7If3qrl5lZfSNZMmWU70Kkn/LMvaOnhZYAD7J/86M1W
         e6GqWb1hMuUbqkBPtAwayjt2z4un3HFnvV9aeIgGzWK1nb//X7gcZq8XBHecTyKTt0mQ
         gpjcC2G2xvNDHa9LL+AeDLSTmX8N+GXXHWuuMtvxr6IgtPJUp64vBsL5LfUClILL3/7M
         hQtWDTGbwcGbAnOAYiQW+6KebppbGfxFGg2yJxBywtI9F5y6XOUyKoNtOvM+ay3jKqau
         4PWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=kLpPVm2HJ6xDH5UYN8vSDhdh+Snf+LqW/CIRc8eBnzE=;
        b=XO3+2CVrueLONL2lyyZy1KeFokx08HasY2vK7rgzVuhp8H0OCfwNMHxu1wgXO5JNDz
         3YPDOUZiGSZNZkbcVTcckozJ4o8JxJMGrXedV1Id91XguyUUufzNFk20COaW1SJaVVw/
         7bsh5w5+EjDoM/VcG77ykswrTyvwSwKCcI7IwiHQPLNnuZ4+ZPrzHV4SarMbO85BU4jm
         m0TNJ3nidKJrPRcSYKXZZwfM612aPddjo50sAqUmx/eZGSKb49HIFaIUYJh7kgZPlAmO
         coNw11vaKho+54BnbvJ9hWtWLKqCyawJmoSKugJZPZmFQwHdxr7uuDLcrw+inW+GL9iN
         49LA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=AcXpAvYJ;
       spf=pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::534 as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kLpPVm2HJ6xDH5UYN8vSDhdh+Snf+LqW/CIRc8eBnzE=;
        b=lZKEkl2WYa4gHkKN2x9FH71VLpgGUMIWnlMGBnPB8iMP4P7B4mF+AHOn2hXWQIg1Sg
         HaJ1iotJG8/rcp237Xn6oOX8oZAK/11F0u8H0kMaO215KLc9nqQ92EzDbaKqC2LHSigw
         Dib+lCwjuEJCHiS2Mf1oqohIositllUGcdB+UAhkroBTYuwUGdhAlarOkAdPOfuLlDGR
         eQecMd8GXIiN3I03+83+4pdxanoz10NDUu6pU4ATGoWnZJvW1SJ6k2EUj2v7q5uktOEU
         v0r2ojfsUgZgNPcm1qoTXUjU9YWobWI7kwBWJ7DTVQZltdl6NxselNfxoO6o40xyXPrd
         aY7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kLpPVm2HJ6xDH5UYN8vSDhdh+Snf+LqW/CIRc8eBnzE=;
        b=Szr01j3zxN6gsEBC1nQopGk+bO78t5r48juU5tqGEAv22i39v9wtaWNwJALUVYFVzm
         KTMU5sMXJ3wkOMvGu25fW/Cg1k+8gjnDLDJW9Hdq/KSwGIQHNbVztWeGfzC0BpuiY14P
         Q0LGcz6dGM19BhjQ4TC/qC6A9T5RZKIZd9Utu3j/xHbfHe5kz2sshWbKob+tMoVwdLG6
         biXE24a9R0vHVf7MuZ3dJrQ9p0OjpFBdk3l0gbN0Ej/KlDWCVdZGkR3uik4mnn42YyaE
         73JUWAOljlMtNly6HPHRaCIpWiF6xay3NrCCTtgEV+5bk3+jrTuxUsnu4dC16DVMdcAM
         K5Fw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5309OzxzgUr42EJQc6ozYA7KGcgld7EmCikkSt/Qh8uCsFktpBMU
	hWyY+mSqcS79ThKFoAlTKdM=
X-Google-Smtp-Source: ABdhPJxNLPsk8BYdSZvhUDGxed/UOiTSLCXl6VfqfIfU41TVQrt2mJiEKeojE7UXs4JqbwtUBXbZAg==
X-Received: by 2002:a19:6714:: with SMTP id b20mr2615765lfc.532.1640089490137;
        Tue, 21 Dec 2021 04:24:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5304:: with SMTP id c4ls96645lfh.3.gmail; Tue, 21 Dec
 2021 04:24:49 -0800 (PST)
X-Received: by 2002:a19:e046:: with SMTP id g6mr2797474lfj.176.1640089489110;
        Tue, 21 Dec 2021 04:24:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1640089489; cv=none;
        d=google.com; s=arc-20160816;
        b=kNGOOkJHEGK/adpO1eWCQ0mnQqhrD4FxtVo6EqCmZQ9NhTS2WA4HB0n9sPofBndHVH
         8ajeiYYQv8zoe20RBFHlr0WrfVMVy7TDcI/8wkthwoEOOd81ZZwr+cm+Wdls1oiob5T9
         JqV0+CA/cD6NkPpYOmzgQ83ekDDCIgh2zYWOanpWji4jWv5NR1FCDHKnSdLrWUXDmfiC
         3uGswYW/iVhaSmJ0K6qXeFmaZrYq05APZy7I3/sbQHvadeumrbv+Fhwmf4wW1MzWMN/i
         q3yU8bSK9I6FvI58gkqBGN5q6v/69XcyCfu7usf8ZTBiebjq/I2ReBJwmcQ10Hfvm2lI
         oX1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=MoTPJgJK0kZOerSu3Jp9Zb+6CJ0WBkqc48qX6OzMzxM=;
        b=MUb5VtY+6hR3l41qO15QiZfAYGZbIenDjTPUPJvNRa0gn6imQq9PLmt8jfU/pI0RDu
         1V1bWC+Bm4pe7O4Rhw83JRfa1pOdHo9SId9XpP/4nGAQ+uhzVw7XhmNTrjoVXlWaO48L
         J5QcxpT2ko291HEYxxF5RTloV3KkDRqoPqV6NCWJNq6z2QGAhC+h49a7/Z1MQ9zZqued
         9WwOgCjYmv9af2ul6mHFSNZUynMM2uwAzQ6gQZRigJavxys0zt1+oxm420ovo501W0y8
         0b9SifbaN9HCeN5v3q9j740RAi8raNPbzy8aUAYwOlEMCujxk2G3qJkOK1PjsQLy45vk
         0Jug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=AcXpAvYJ;
       spf=pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::534 as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com. [2a00:1450:4864:20::534])
        by gmr-mx.google.com with ESMTPS id c14si217141lfv.13.2021.12.21.04.24.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Dec 2021 04:24:49 -0800 (PST)
Received-SPF: pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::534 as permitted sender) client-ip=2a00:1450:4864:20::534;
Received: by mail-ed1-x534.google.com with SMTP id j6so30516893edw.12
        for <clang-built-linux@googlegroups.com>; Tue, 21 Dec 2021 04:24:49 -0800 (PST)
X-Received: by 2002:a17:906:4904:: with SMTP id b4mr2606178ejq.174.1640089488801;
 Tue, 21 Dec 2021 04:24:48 -0800 (PST)
MIME-Version: 1.0
References: <20211217144119.2538175-1-anders.roxell@linaro.org>
 <20211217144119.2538175-7-anders.roxell@linaro.org> <YcBiFomrxSw1eEUB@kroah.com>
In-Reply-To: <YcBiFomrxSw1eEUB@kroah.com>
From: Anders Roxell <anders.roxell@linaro.org>
Date: Tue, 21 Dec 2021 13:24:38 +0100
Message-ID: <CADYN=9K8fD7sSdTy+mCY6dvjutabLnibs3BoAmv1W4sKcPLpXw@mail.gmail.com>
Subject: Re: [PATCH 4.19 6/6] Input: touchscreen - avoid bitwise vs logical OR warning
To: Greg KH <greg@kroah.com>
Cc: stable@vger.kernel.org, linux-kernel@vger.kernel.org, 
	woojung.huh@microchip.com, UNGLinuxDriver@microchip.com, davem@davemloft.net, 
	netdev@vger.kernel.org, linux-usb@vger.kernel.org, 
	clang-built-linux@googlegroups.com, ulli.kroll@googlemail.com, 
	linux@armlinux.org.uk, linux-arm-kernel@lists.infradead.org, 
	amitkarwar@gmail.com, nishants@marvell.com, gbhat@marvell.com, 
	huxinming820@gmail.com, kvalo@codeaurora.org, linux-wireless@vger.kernel.org, 
	rostedt@goodmis.org, mingo@redhat.com, dmitry.torokhov@gmail.com, 
	ndesaulniers@google.com, nathan@kernel.org, linux-input@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: anders.roxell@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=AcXpAvYJ;       spf=pass
 (google.com: domain of anders.roxell@linaro.org designates
 2a00:1450:4864:20::534 as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
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

On Mon, 20 Dec 2021 at 11:59, Greg KH <greg@kroah.com> wrote:
>
> On Fri, Dec 17, 2021 at 03:41:19PM +0100, Anders Roxell wrote:
> > From: Nathan Chancellor <nathan@kernel.org>
> >
> > commit a02dcde595f7cbd240ccd64de96034ad91cffc40 upstream.
> >
> > A new warning in clang points out a few places in this driver where a
> > bitwise OR is being used with boolean types:
> >
> > drivers/input/touchscreen.c:81:17: warning: use of bitwise '|' with boolean operands [-Wbitwise-instead-of-logical]
> >         data_present = touchscreen_get_prop_u32(dev, "touchscreen-min-x",
> >                        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >
> > This use of a bitwise OR is intentional, as bitwise operations do not
> > short circuit, which allows all the calls to touchscreen_get_prop_u32()
> > to happen so that the last parameter is initialized while coalescing the
> > results of the calls to make a decision after they are all evaluated.
> >
> > To make this clearer to the compiler, use the '|=' operator to assign
> > the result of each touchscreen_get_prop_u32() call to data_present,
> > which keeps the meaning of the code the same but makes it obvious that
> > every one of these calls is expected to happen.
> >
> > Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> > Reported-by: Nick Desaulniers <ndesaulniers@google.com>
> > Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> > Link: https://lore.kernel.org/r/20211014205757.3474635-1-nathan@kernel.org
> > Signed-off-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>
> > Signed-off-by: Anders Roxell <anders.roxell@linaro.org>
> > ---
> >  drivers/input/touchscreen/of_touchscreen.c | 18 +++++++++---------
> >  1 file changed, 9 insertions(+), 9 deletions(-)
>
> Also needed in 5.10.y and 5.4.y.
>
> Please be more careful next time.

Yes I will, I'm sorry.

Cheers,
Anders

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CADYN%3D9K8fD7sSdTy%2BmCY6dvjutabLnibs3BoAmv1W4sKcPLpXw%40mail.gmail.com.
