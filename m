Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBGGX22DAMGQEOILXZGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id C14C83B4128
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Jun 2021 12:10:33 +0200 (CEST)
Received: by mail-oo1-xc40.google.com with SMTP id d12-20020a4aeb8c0000b029023bbaaddcbbsf5488109ooj.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Jun 2021 03:10:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624615832; cv=pass;
        d=google.com; s=arc-20160816;
        b=i4vxtDII1Hwoxs/g/gME26lEMQ2/cyjEY8RIGMK/O//XPoL0zbgWsb4VCKb6a7Hspe
         0rcUuGXPLolmFius+AdN/u66R9peZcBGbrzQVA2s/fPdOSYMGwiv1ZvILiKirL7hKBIi
         85IC01nZVMHz/hVY8JNSYVoCrnRbnYHAsEX9kr7RS831XuIDllxY3cPjXdKqK3BWeQLF
         Dou1HifLHCeGqghz2+/JtWjXJUPTgGhe+7aSnc7CViHzwKhQHO8RnqcqSA0Z+MEF0j6/
         d77FHbanoLaB2OThi6sibQwpiAPEvtLIBEj+CmyXsHqXWGTO+gRIIqxvsJt4CwRPqKw5
         cnXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=PWvFyEMaBew3Z3rWHFFLNGHo0fz8iAlTAujYmfA9uRE=;
        b=lQc6jEGifrAtxE4nvL5XWE6RxnAl4Z04HVLoRRiRl4wFpeR//Pls12cuoJ5/1rGrML
         s+SpLD9oCuimTBXuKB+7vftB9UO591D5Kz6BKwmJFBGxqHR3XJ14uFKt7vRkXVidd9/I
         0h66rq43CCLpWyxcp+ZtE4WMt6sArXXdYKa9u0JtrovnjWqQWn/ZiXwQOviNftznyU1a
         QhPO0ZMPslvq/Rg4WOt1p205HWCczCjOtZxc6T7Kv/Mh2DlzTfpQ9VGk7Si4e2zH29Op
         yDwYAHf1Tw4M8TSt455NA81xwR+YjefdLuPGrlDOyb9gpNXCpwzyp6xtYj+1NnVTJOME
         90rQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=Ro7vdmrt;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PWvFyEMaBew3Z3rWHFFLNGHo0fz8iAlTAujYmfA9uRE=;
        b=UX8NSRZyhchFq7IiEd7T+CEnrrizTbjCYFieFoj1t0Hoie6Auy0YJGiKsxou4s8UrF
         /dQvxXODTmDjxdhaDhtcF0JPLb/LbGIe5V+3/xlX/JT8rvvzK146gJYCR1XGP/HvQRp0
         xtRg93ysjIRhD/diamDDdRKr2fnH/tYnvxM3TUJbUbKK/0ouAR8Jd9MqkMuECGpbs5ff
         pCrIFcYMP+M4WLw87d1T3rUz3HMIRimLOAE7CRmuczkzLHOd0pDSKZGP+YtznXU5HnOA
         5J0QXaUU/HhXXgLyNbeo7Yf5bAggng1bdfJvMqoZAHnCnIn6dIiZpAJpVWzSuC5L7PyV
         VY/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PWvFyEMaBew3Z3rWHFFLNGHo0fz8iAlTAujYmfA9uRE=;
        b=PWLXNhgGYEHctDk3nUfx4iUhMbIUFK/qIupm5KmR2URua1hg3HVTQ1g+mtz1H0D8tg
         ZpUHDeMMmdJ70mRzb0FUtRBxc0rqoHyDqMbXd2w6/OBfNnXu5dN+GZGG/oH992aH/hmL
         MbQOklpkVAHCLufu+4mSXOCEETl9/Gpe1K+g7DH/HJllw2EgiQ736b+pigQUgrdPwCSR
         fwGXCxCL6OCLs1YVT6XRKlLfIditLBcRK+Ngw8UK3kfZQbed8Ac9mvrL+x/ymY+eK/HZ
         SHplPk4s+v2wM4+VgljvdhYWN8FQ/FC1dongMvPIUtrNOuRQIfiUlHeSqfqxO1EUukVn
         hqww==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532k+LXZU4cv0wlYo1WO9RYFYzmuU4wTQcJBvK0/e4ZzVJ0snz9a
	CbMnoVLkczQxKGhIUrbdu/E=
X-Google-Smtp-Source: ABdhPJz3QA6ZyCVXVvQmcwOUZfECNk86Zg477772x6KagkE/gjBPNyyNr97NMatrh+2KWURDXRp9fg==
X-Received: by 2002:a4a:a18e:: with SMTP id k14mr8380626ool.29.1624615832556;
        Fri, 25 Jun 2021 03:10:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1f24:: with SMTP id e4ls3234281oth.4.gmail; Fri, 25
 Jun 2021 03:10:32 -0700 (PDT)
X-Received: by 2002:a05:6830:545:: with SMTP id l5mr8717932otb.270.1624615832195;
        Fri, 25 Jun 2021 03:10:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624615832; cv=none;
        d=google.com; s=arc-20160816;
        b=RgNaWOk+HoGmuPsFqjLTGwlsm8lJ7mSJq3Y+kQUMwRvMpqpdeVXUMOXnc4OuLTXGRL
         02mFYgYMvbXFxQKV1niyXP4+dPrJ5lAiaWhfQ+HOYvS0XO8Oq5FY6ck+HeY18uBF/3IE
         k4V3JRlyTHZgDnQwA/TQKxdQHpGOsyB4KQRVLMCy74/Enc5ASYijZKwo/clv4pRz7TyH
         cTswK8W1FZO9nZUrczM2rk5ufGJOEFmtgVMPj4izAQG/lA5Jc2tkN1Cl5n9y1eGGl20Q
         1TFeV0P2mtA7mZcgssEyvaSkN2K5K8xvnfbuv5PSlOMCJrdnS6H0ECFtDOR2tUEDzq+q
         lXRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=RXCqGuKmHEMuxaBawEx/fPO1D7uKdxlvyjPt9IkCQDc=;
        b=ko0G+2vlsy4YatlmbnSNreFaP11G4X5VJZL73Vroe1mxCzTOGUYRJQ4M20MRkTzYoh
         xgiL8h2IlgmaZDtrEib0H4LZm4Oinjwy6LyrsyU8enSkivQRpJaeD/YOo2FpfRClPlWL
         LkwXNzWcxK4WT29QYr+1xnLKRz73PEsRXvJfxXplPMUqk2jDIhaRHC88YPYEyAA3QgK7
         UgA5QzdoNHyoqbsZ9cuHyqqJVGZoDwf6p3maQ362ogeZf4hr4oI2kweut67c0Ijk/yQZ
         X/sI8hFHmBJr0NPEhuMSqQGYuRsPEf5XYjBgaTe1A2eUYfnQrrayPkCY7ybuQlGU2UAK
         e/TA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=Ro7vdmrt;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v22si126770otp.0.2021.06.25.03.10.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Jun 2021 03:10:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id D03D761428;
	Fri, 25 Jun 2021 10:10:30 +0000 (UTC)
Date: Fri, 25 Jun 2021 12:10:29 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Sasha Levin <sashal@kernel.org>, stable@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 4.4 to 4.19] Makefile: Move -Wno-unused-but-set-variable
 out of GCC only block
Message-ID: <YNWrlag5xpdpBMM8@kroah.com>
References: <20210623172610.3281050-1-nathan@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210623172610.3281050-1-nathan@kernel.org>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=Ro7vdmrt;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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
> commit 885480b084696331bea61a4f7eba10652999a9c1 upstream.
> 
> Currently, -Wunused-but-set-variable is only supported by GCC so it is
> disabled unconditionally in a GCC only block (it is enabled with W=1).
> clang currently has its implementation for this warning in review so
> preemptively move this statement out of the GCC only block and wrap it
> with cc-disable-warning so that both compilers function the same.
> 
> Cc: stable@vger.kernel.org
> Link: https://reviews.llvm.org/D100581
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> [nc: Backport, workaround lack of e2079e93f562 in older branches]
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> ---
>  Makefile | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)

Now queued up, thanks.

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YNWrlag5xpdpBMM8%40kroah.com.
