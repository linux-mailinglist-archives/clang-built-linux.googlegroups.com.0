Return-Path: <clang-built-linux+bncBDBOHT7QWQORBSVWWSDAMGQEZKS46FQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 5581F3AD4E5
	for <lists+clang-built-linux@lfdr.de>; Sat, 19 Jun 2021 00:16:43 +0200 (CEST)
Received: by mail-ot1-x337.google.com with SMTP id c10-20020a9d75ca0000b02903f63362f6f3sf6713696otl.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Jun 2021 15:16:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624054602; cv=pass;
        d=google.com; s=arc-20160816;
        b=SU9nIPD/2SSJ2yofLH+wTKwdAvmLLMDrxE4xO1s0PgI6iYdw1e36mxr1aE8b3jCeBp
         8KYjr5EqALYPq3FOKEPGV+hAi5r/leSWzorHJIsg872bXV/bVZOX7G4MhdrfaWIYhDIR
         AYWiy+uA6qPLmaGnMGx2Lqjns8M2t4FIKJfxyzAwziVUEFGWU09aOKyrRi2wwAc05vij
         DicBVUHOq4UghLcgSMuw7xppZnBFyE4tVHQUrAOIiubuHbekO2IwP1YeGUxz7Vf7LMG5
         cdH4+yDk3+/vrg0XAUoKNt2Cy0+fiiHPZE+oEzViz95othACZyNfuEE+tIkaxEujhWd7
         7Rkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=F9WASa25oVJsC8L4C3J4gtpqEorm72ilUcA4ZWIjqnM=;
        b=trd5rP6Y3Po9ytp62rtTVV+3tMJDRm1U18XNdyyTEO3j+X0dCKOsl0tbvgd1cy1tHx
         6hRJuDE4IsdtZfe0CUKOkYUiQgoxApYYG/xMrrWhkwFpgXa0K0xJHu0Acg/wq69rmWLW
         ZORqUv1V6NaZq6IvTFldwItkJeqcJsxC64Be29uU3w/rCkFdTEXgptaSUmdLSRg/6AMB
         DDrlAXNfn9nnpcF8jb+JqikZ6w3cuGRIWRgCnr+DMG8R6b3CLmg8lpUtspTyVKutaGPo
         8LZm7FlcgBzFkir++vW8k2bMLFuu0E9KX5Q6UTX3JA2ZboS9e8f3ydv1nIkSR9Xkdn7T
         U9Bg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of moritz.fischer.private@gmail.com designates 209.85.210.178 as permitted sender) smtp.mailfrom=moritz.fischer.private@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=F9WASa25oVJsC8L4C3J4gtpqEorm72ilUcA4ZWIjqnM=;
        b=Qn/jsxOvlWxVmI0sKQ76iwcwEZ9JNO5moIvbSIo2oosamwu6qw2mP+pDSwCp6ns91S
         JoOaYI0GVMfS8TKhKlAUP20ig6NDbdxheyiAQ3Y3/cZm3vPUWQD5tKmjzkvxqNw3cbb8
         WjezYC5K46cI2Su/4Ywf4VP2dvpIoLLlvlLPRTEtrYYh0GWy5RgbLTU0a05SfHb5uiBs
         zW/Vh7PNx2r+wn8Pd+2nEigIeOmk0ICuiwvxAb7QPbgGOOZkQLCaylboeCeJ+C2BoFhX
         opF20zDU1mfEpTUnpNhowUIJRvm2PS1cSSkQTuqEDoZlp1KA8tWzU3Zw7SU7IawNo0Sj
         CQAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=F9WASa25oVJsC8L4C3J4gtpqEorm72ilUcA4ZWIjqnM=;
        b=gcfb1W753IYfel0i4cO4VD6/j44HQMoe08fEqNyo/T8G1pperwHYxaxT1iTwqdFdB+
         IswrMkzd0O0niDMeW4DSvpYd16GTwpDEVEi24PnarPHegFryNeXceXQVvtqXsuGctP2L
         IAIm2jFQmFdE9GLyR3/cP/c2WrWXLxJDX6BmzuNNg8fxx5EDV4x7MetSX9BYkj1+OJv2
         CJsZkhWlVTgl43kVoPciQJksOVnmj7nXqnAqxOKn2g+7j09BMgV3TeT3fV1J9WOnLuCa
         tYYp1T+DKKh/+WVLck3hNXcG4Rla2kD4g0WrO9qKyfPQDJNFIpOaVSF+HSm3EMOmxjXg
         1QNQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530BKBaqlOlB6Zij8GxpLk8Cczp1Ei0GqL860AAUWj2Bd3B4PnV4
	I1w8vZGJJgaZdHS7ruS4jnM=
X-Google-Smtp-Source: ABdhPJx/upQK6sfaPKfDvTwx/67ZbXJVyzaeecLzaSDQW384y+zZ/JyZghC9UUia2RmSBcQhg00iEw==
X-Received: by 2002:aca:47d0:: with SMTP id u199mr8877815oia.12.1624054602074;
        Fri, 18 Jun 2021 15:16:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5754:: with SMTP id l81ls3519438oib.9.gmail; Fri, 18 Jun
 2021 15:16:41 -0700 (PDT)
X-Received: by 2002:aca:f488:: with SMTP id s130mr8397317oih.5.1624054601733;
        Fri, 18 Jun 2021 15:16:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624054601; cv=none;
        d=google.com; s=arc-20160816;
        b=RyGtZm/UxGy5Auc504wPMr9LJjn7P7GY8rUQIaN5TOM7bYfoZ0LX/FvXfRBWMwE6AF
         Wzn0Wo2AL64mK/l8+rhGvDtNF2FFDLTeOpa+oSTaskOxybk5/IiFGY+wXcprpsOU1YOV
         ZoiLd+W7jirJsuaqvpv7j/+tKlea/NPXQj/b0yOlHxQouz2R4Wrx/yfGJgQVVrcpl2Rn
         8Ensi0+qnzmELrrqXJiPYfdljL/SqYJixZWqQQ4PZEEkDtnaYWKGh0I3QLaxeEgcEbNi
         LKC2+C4bh7evine1827T/iOZgZ+oNm0K5qsea+QnsFo2Cu5U1TrZBT8+SSNUoya6Yf9K
         Ey0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=ZAkqGYlPgRY7bOYVpEhLehN8sEmdwgHj9LqOTpebF78=;
        b=k2UbDyweniq4HfNxNs1633pFiDPYHPiGs+j/UupfXgUGa+jdfWSz1nKTIFlTPr4zgQ
         MG/kyK5bbkVdzwsKf5YK7bvfAUzuIy95bVP0zSHWzEalzuohuGZqC3z4dINsHEvhPO1a
         qjXO8BmK8AWkUfA/qwQijsJ6905WimujyREZiBP8PcKQBdJQyiHsjemPKFV0v9H6PU3M
         vJ6VrVxTxZg82vbCyy/HOOdwcOrnTw21BrGE+6a/9mR1tGa4muRfqvYLe2Ku5z7CxxIx
         y628AXPAk8FPFigYYOzNCdORrhtmiCkfeG+TNrLuEA4fo1ubWxpmPXstsK0ZrwJoYhhh
         UxBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of moritz.fischer.private@gmail.com designates 209.85.210.178 as permitted sender) smtp.mailfrom=moritz.fischer.private@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com. [209.85.210.178])
        by gmr-mx.google.com with ESMTPS id a17si782853oii.5.2021.06.18.15.16.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Jun 2021 15:16:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of moritz.fischer.private@gmail.com designates 209.85.210.178 as permitted sender) client-ip=209.85.210.178;
Received: by mail-pf1-f178.google.com with SMTP id a127so8782092pfa.10
        for <clang-built-linux@googlegroups.com>; Fri, 18 Jun 2021 15:16:41 -0700 (PDT)
X-Received: by 2002:a05:6a00:1913:b029:2ec:8f20:4ea with SMTP id y19-20020a056a001913b02902ec8f2004eamr7257709pfi.3.1624054601073;
        Fri, 18 Jun 2021 15:16:41 -0700 (PDT)
Received: from localhost ([2601:647:5b00:1161:a4cc:eef9:fbc0:2781])
        by smtp.gmail.com with ESMTPSA id h24sm9051063pfn.180.2021.06.18.15.16.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jun 2021 15:16:40 -0700 (PDT)
Date: Fri, 18 Jun 2021 15:16:39 -0700
From: Moritz Fischer <mdf@kernel.org>
To: Moritz Fischer <mdf@kernel.org>, g@epycbox.lan
Cc: Arnd Bergmann <arnd@arndb.de>, kernel test robot <lkp@intel.com>,
	Tom Rix <trix@redhat.com>, hao.wu@intel.com,
	Michal Simek <michal.simek@xilinx.com>,
	gregkh <gregkh@linuxfoundation.org>, nava.manne@xilinx.com,
	Dinh Nguyen <dinguyen@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
	Xu Yilun <yilun.xu@intel.com>, fpacheco@redhat.com,
	kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH v2 4/4] fpga: lattice: reorganize to subdir layout
Message-ID: <YM0bR7xsbrh9xXg5@epycbox.lan>
References: <20210609142208.3085451-6-trix@redhat.com>
 <202106182017.Xg2OCNbw-lkp@intel.com>
 <CAK8P3a1RAYBq_qv2mr_pPmVG8siwXF-GZrGOR90_CSBqMUEizQ@mail.gmail.com>
 <YM0aTuGVtP7yj+cx@epycbox.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YM0aTuGVtP7yj+cx@epycbox.lan>
X-Original-Sender: mdf@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of moritz.fischer.private@gmail.com designates
 209.85.210.178 as permitted sender) smtp.mailfrom=moritz.fischer.private@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Fri, Jun 18, 2021 at 03:12:30PM -0700, Moritz Fischer wrote:
> On Fri, Jun 18, 2021 at 02:27:29PM +0200, Arnd Bergmann wrote:
> > On Fri, Jun 18, 2021 at 2:25 PM kernel test robot <lkp@intel.com> wrote:
> > >
> > > All warnings (new ones prefixed by >>):
> > >
> > > >> drivers/fpga/lattice/machxo2-spi.c:377:34: warning: unused variable 'of_match' [-Wunused-const-variable]
> > >    static const struct of_device_id of_match[] = {
> > >                                     ^
> > >    1 warning generated.
> > 
> > This is almost always the result of an 'of_match_ptr()' that should be
> > removed, I have not
> > checked this instance.
> > 
> >        Arnd
> 
> I think the of_device id is missing a #CONFIG_OF
> 
> @@ -374,11 +374,13 @@ static int machxo2_spi_probe(struct spi_device *spi)
>         return devm_fpga_mgr_register(dev, mgr);
>  }
> 
> +#ifdef CONFIG_OF
>  static const struct of_device_id of_match[] = {
>         { .compatible = "lattice,machxo2-slave-spi", },
>         {}
>  };
>  MODULE_DEVICE_TABLE(of, of_match);
> +#endif
> 
> - Moritz

Scratch that, you're right. Sorry for the noise.

- Moritz

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YM0bR7xsbrh9xXg5%40epycbox.lan.
