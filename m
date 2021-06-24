Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBT432KDAMGQE4O3YQEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3e.google.com (mail-vk1-xa3e.google.com [IPv6:2607:f8b0:4864:20::a3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 72B1B3B307F
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Jun 2021 15:51:12 +0200 (CEST)
Received: by mail-vk1-xa3e.google.com with SMTP id y18-20020a0561220552b029024ead7b5960sf389199vko.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Jun 2021 06:51:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624542671; cv=pass;
        d=google.com; s=arc-20160816;
        b=OzpniCGrREtuFETaSHPcjWJxbrC6GcD2paSXnoPV8ZxmYdfFcSKEhVgDFAs03AsR55
         2BTbkTyQWe8x94IEAYzquYU9VYCQXRYF0+KHlAfr/wTh/xiJK72zfiMMssGenorRL4ul
         ubv1afHp5Qj9wjQ1KOrygNnQkQmKnBLHvDHct+3MxEWI/rpFz46sJf/9WVZFsJ1lDxLH
         jrH4fGVxufLgqnW9xNPkSPJiKDfV/89YQxTo3O2QNgrwmB4l+oqUVvKdZaDWxtlh/OSx
         SlojU7XqXWVJhuakvjjGtsvRtQki5wbVAAzBvv9DOEuZ8cwBN8vXKCSq1GlJi+DaC9E1
         EVZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=JYV2fQ4/cVrGi4B3tKMmk5Aug45UQTPPaktjAWt8Pjo=;
        b=dCLnm5DAfGlziw0g3VPj1IqYpuiz/+j3uvUnwgQ3wAfLWiKVKxQptSjybut/nOKJtq
         sDXSu0x5cPXbTle+WbkUDBIqr22TzoNdyf82sWAkqyVADKXxb+aCtWKsjESRxdShg9DS
         jjt/QI1YLVFvMB31Ay/gJ8/J0MoFbMHQidMLndmfAFvj/KlUs5tGJvcoWiMzb3BRMs3a
         rS2cqcZj9MtTm0CPjw3SRO4Kf2IFJrib4iu1ucUBbwZ/agQhwUKn/ocwbFclNibVTD4w
         FDRvfouwlWNMhF25HVmmdWbSvXFumDIvDD0rZah0YmCsUhNGK378IQY3cEu//Qop8Cbo
         Ar6A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=hzixfj2l;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JYV2fQ4/cVrGi4B3tKMmk5Aug45UQTPPaktjAWt8Pjo=;
        b=imDcFJxeuatssgutjowmoRzwFybgDm9AGH8Gu2EdTcjjqh4tMCInzgJSGZ/mv2qmlA
         oAlA9CLVnTp3BAul9vbB3r+xeo4z4ixOvG9SnCqKGYs9k01vu4zunxVeWVhTGZQFnCSO
         /O4F1AP8Weur4CjJ6keHLbnNyxejjs9KTSZ5DphhqF5hLeFM9sGn9zyTQSE7loPCIsCV
         7ab8owW8d1yu0EEpbDF/1/+sF8Pwew7x6F7jQP2TEsdYgLWQbL+BoQeUqGoCAZqx0m2S
         qZZaxJTrMMSvIingvmEkdjVkNc3DSK92tBjNd3FhLTxpoW9ZH3tACxkUHrLOmJK9B6Vw
         n4tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JYV2fQ4/cVrGi4B3tKMmk5Aug45UQTPPaktjAWt8Pjo=;
        b=o1rJIFH0m8EemWUqAbvx70j8wV2hnP/WUq5qqRM1eDpn/iNFeVgorN3bDu0kRYCE/0
         +PSle9SfRJTspTHVfTWFiQQMVFNsyanME7sF+BpjHASPZRzRjPx0EI1ogf1fLLLbfkcG
         hFDY6F0VCuBEIhKL7jjLA1CwmyMAllArrHH4j8hdgKy6MKfumeFhItCyqaXKp14kEwlD
         CFNlL7T08zrEwCaLS4bvfRU/KmyeEjKAje8+rqYRQIxNC67hrQ3qPAQBNKoE3Hv6rtIA
         Ge3c+5Tt4kp6l316pyIxmrlAD0bjpyUK1x/48yL5XQWRnhcPBb7QPp/ii6uBvYJu0erZ
         Aaxw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531PWyi0pMac9NC8+j4DTYsvlTl7hGhmaJ4sjfX/wXiPe6K2tlFH
	6Lk/ZWlxYZxWTOGHEUIt89Y=
X-Google-Smtp-Source: ABdhPJyeglvkG/akFiGfCeO+az1uNCMW9SvB8SGWISVTutRuySxML3ZNxxt1WZLom4djXDp+xJBapw==
X-Received: by 2002:ab0:718b:: with SMTP id l11mr5324791uao.117.1624542671194;
        Thu, 24 Jun 2021 06:51:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:32ce:: with SMTP id y197ls618685vky.7.gmail; Thu, 24 Jun
 2021 06:51:10 -0700 (PDT)
X-Received: by 2002:a1f:a897:: with SMTP id r145mr2671960vke.25.1624542670641;
        Thu, 24 Jun 2021 06:51:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624542670; cv=none;
        d=google.com; s=arc-20160816;
        b=xZVH5NgbqwuXc7ZNKYL2eqELccSX2XrT4TczBNOmukElc4Ugwp5xITjGP2ASR0U3I3
         ZcxqUlrmwT8oVDWsNCnwuQzVr4fTFcWFVN+1V1oLhwTa6R6H2mnsuxwThDHfq6JvjSLc
         2mWMSUnWP45+EppXXeI4J54sspxKO6XnlV+dUb64tbersFVv47S+f4qlWGk58Z+M4cTx
         L0YoOEijHaj1FJrg+YnpYmYulYGMug4aq30eJtHQIOG/5jeZUBNRni0J2JqtfEY8TTS6
         kXwukrg+HQy7ZuvTZUzJZpdWL8SHReN1FxZpVisivFe5oEgMqHAyNmX6PdsU+HRfTOo1
         20EQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=BELVNGxoK7977WH/WUU3QKC4SkXEEPL3focdm2HH738=;
        b=gmd+45bYfeF+pZ6sjlpqWWnHEAq+vzdRkItX1vPPMLKbYsimnnROoxsr6oj+YyD/0m
         NEGutz9/sw2eMjlqP0hA6+qbXxJtCMu+N4FWdWipRXSaNJKGBSyI/b25dIzDu+H+42kO
         /c5+B/6MlkitTNXJhon85i+jb6mXzZ+TnFyS5CGCnHNrPg/qTUTEHVGi5w5HlzQ3Kxua
         KoqIKocF7IrYB207ezfJR+omdaM6tF9R4Ag8PVhVzjHcM63b/UfnSQ5fSgoMao4afRAM
         BiQ1JI5DmwpZmU809Q760Y6mgDaDHkQZYnyAM5xIoVwVjVq0K1X+l5IZMZrp+3frH+tr
         C81Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=hzixfj2l;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y2si428355uaa.1.2021.06.24.06.51.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Jun 2021 06:51:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7961B613EA;
	Thu, 24 Jun 2021 13:51:09 +0000 (UTC)
Date: Thu, 24 Jun 2021 08:04:41 -0400
From: Sasha Levin <sashal@kernel.org>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, stable@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 4.4 to 4.19] Makefile: Move -Wno-unused-but-set-variable
 out of GCC only block
Message-ID: <YNR02aQT3f9Naap/@sashalap>
References: <20210623172610.3281050-1-nathan@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20210623172610.3281050-1-nathan@kernel.org>
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=hzixfj2l;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Wed, Jun 23, 2021 at 10:26:12AM -0700, Nathan Chancellor wrote:
>commit 885480b084696331bea61a4f7eba10652999a9c1 upstream.
>
>Currently, -Wunused-but-set-variable is only supported by GCC so it is
>disabled unconditionally in a GCC only block (it is enabled with W=1).
>clang currently has its implementation for this warning in review so
>preemptively move this statement out of the GCC only block and wrap it
>with cc-disable-warning so that both compilers function the same.
>
>Cc: stable@vger.kernel.org
>Link: https://reviews.llvm.org/D100581
>Signed-off-by: Nathan Chancellor <nathan@kernel.org>
>Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
>Tested-by: Nick Desaulniers <ndesaulniers@google.com>
>Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
>[nc: Backport, workaround lack of e2079e93f562 in older branches]

Can we just take the above patch instead?

-- 
Thanks,
Sasha

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YNR02aQT3f9Naap/%40sashalap.
