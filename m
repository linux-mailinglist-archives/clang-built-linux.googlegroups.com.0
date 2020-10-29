Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBB4OB5L6AKGQEQZYK5LQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id F26E829E9DC
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Oct 2020 12:01:07 +0100 (CET)
Received: by mail-oo1-xc3d.google.com with SMTP id g9sf1043495ooq.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Oct 2020 04:01:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603969265; cv=pass;
        d=google.com; s=arc-20160816;
        b=KP+6UFk2wSWiUmQAl9nUu2GjBWzHImQf3n+gUI2uBq84NHBcFDxmz29yXKq/bhmsWf
         RlenY826h+7U8TQftrivSDHMgvZZs2OalQepBenK8acXxc/m3Vcgi6Mc2kjO0nTUy3RB
         dfJshbuAkkOZ2XhWhglUnQiLhceLG/epz7IdtF23rfcSU2exuSAWqedZygp5sIhw3DN1
         P9lu05KanDUVfJO/2mdXE65WXPYgdTGKZrni/Vhm+tCPoasO6NbqvVhUsTDsf5UyNz9h
         SMdqwU/9HOZla9WRUWkoAJRlCjt90eIuR4qYGzDeAZQJyJ9TH5dwqchB0LUHph3+cz59
         Zaaw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=+QCGK7cso8HkSrzaTIAXzgCnRHWAChbhMDGwwc1+a0s=;
        b=bLjwIG+FmJe5onCBdZYcN+f0dnMcIX9rPI9+r34PNQrJNzwXnbojbR4OMBF1JT3Gk+
         ujHqKecZ7/SasUx8IePVsvSYaqqH7vRn0p+KvI8yWoxpx/oS30llle26l6Wg1wmZRnsQ
         A8kREJ7R0LfTD2+wmefRpMTrxSBo7Jw7U7NcesxULGoQiNu5kc/qrpMhA4HRQ/Iq6LMv
         meehFHfzUY8wpagBfpWlSxXNT8xAqCyy04r1Agoduz6ky87cbhWZ7C1h8KjTjwxM2n75
         m86jR6jj62C8YmPALPj3ORL/l2bf4h/5Y9feuZNxu0YNkgbEqbe/YYubgRYFYcnCX6ps
         huXQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=vkGu2R5X;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+QCGK7cso8HkSrzaTIAXzgCnRHWAChbhMDGwwc1+a0s=;
        b=RQQuHdWUGDi7BU/4Pm6X7j/MlZlqtqkYciGOiS3AWkXEk3AHVLPCejY+RLxp2ZBN6c
         KUdIcfsSdsqVHShRjZJNYrcE3Z/LTEHSbiWKoh+NM9e8ILZiDFiIofmtDbD2kgnebDPt
         jLtDQgXp87nV5HhGmpY28+CPlQLROFUdI2yD1zwV4TmDnrczDlHM93RCPOl+Dca05qZC
         82ZE/JKZo7vGIQ0brekKmJNv2xr1pzbV3cACjKAkU3moqhFLFAMWdPsSL4CNq8XfdKHt
         TajdSDe9IfhsuSdaE2dl8v77SdUZ2VI1LJiGXXfySeb4M2kLzF8nhKcTFnGAJV82FpEg
         +C7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+QCGK7cso8HkSrzaTIAXzgCnRHWAChbhMDGwwc1+a0s=;
        b=WvDz8CR1TYcgHlNJGYij+g7Tua2kVMV+rfKNxS0cwRk0bDxRIkuS5TCmDGj7BoudtX
         G/+SVuI456mqcOrEU2D18raqURDfQb6KEqCl34k7MkpSfgKcGy1IW3nfNXkErgXzXylU
         naI7vV+YKkCRHBgqq5oaHyDzHkSSJhLSZyKosrhq6RkhYLLXZZ05ZZS3tXewusdMmw8U
         3NrmGLGw2vPofbNxlyEX2wn5ZTKAiekAM0VX3izRSoSNHVoF4UwEPYVt03u9k8+tPmuH
         2oXRMTl+oaktIe/QRCUqP7STwbERi7b1OxaPoBR0BDk1aXZZwtk5Du8F6xpdnnmCONn+
         ZrvA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5316wCV3KleIvP9b+PNxk1z+B7dzZHiKktxjo5Np0FAhi3mOCLR1
	rbYCRPQ61CIZ1MrwWxrDREA=
X-Google-Smtp-Source: ABdhPJxFCBeoIdIJ25uWN/zV7ySUCqlAHrVKTpTrzzTjb7aKaKx4+PkFYSKISToZHXm+HCk1Wzfk0A==
X-Received: by 2002:a9d:bb2:: with SMTP id 47mr2855788oth.160.1603969265445;
        Thu, 29 Oct 2020 04:01:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:5c0b:: with SMTP id o11ls597328otk.2.gmail; Thu, 29 Oct
 2020 04:01:05 -0700 (PDT)
X-Received: by 2002:a9d:684b:: with SMTP id c11mr2877641oto.194.1603969264989;
        Thu, 29 Oct 2020 04:01:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603969264; cv=none;
        d=google.com; s=arc-20160816;
        b=ilYsODoNIEB2fhL5ugTDnAjURcjKVPIjdW005hTMaTv9PJbFgCoHwSlK7iaiz4Mlz3
         qhTv4rZY9NglU0b24wj6GMEKFpB0qX3P39U/re3ySHRjLWr2704DBEZGbVdO1uAdpAKq
         yRNtTxGW2gL8mX9/tzsJYxIOxlBtXHxG/IZ7Lm/XpVTCQ6kFCBsOTlNZiBaGnRL2haMO
         4SS/a4GHIvAfVsq963w3BkCLRXP7N/1Y6FRijZrvQlSS4uiXASW3q13Rl3J/XRpkzCUk
         LbwsAsZRfxlNiF6VSIwcii+RAIFr9r+0lDV1V6f+vRT+rYPdYsoheHtNwuJ0NrFaw0PA
         sGxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=K3nql5yHju7rfPTphlcSsU/TqtaFnCRWjVRJiMFBNsE=;
        b=Y279MliIhGuTRFbX4993fvtJ79vdv+f+dFtII5I3jlx/laIO96jmzLHsmR0txVqv0Z
         Gfwnzut3j7GlIA/YKsChkWWuG+Yyaqygs68CfVMhkR+tJ0WMTLPwYI9T+i0EUtdxJzzo
         qPnGIesKSrlnR5c7nbykeerZO0xTRu1+qhYCsBSwLWFjkETRIdibYb3bCQre0DZ9zUdP
         u3gI3d1CwPPchsy10IxxK+/uJOuyWrrHdm+HFLUA55UOr2SubZm8JX2j7YQ5IV92j4cs
         apWUJtQ8jSmX8YHAxJE0sWK3DGAkca5SawW7C6hnZhTHlvON+tqTyy/EH8YXP6KO1PIi
         U3qA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=vkGu2R5X;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v11si157040oiv.0.2020.10.29.04.01.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2020 04:01:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 204CF20727;
	Thu, 29 Oct 2020 11:01:02 +0000 (UTC)
Date: Thu, 29 Oct 2020 12:01:53 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jian Cai <jiancai@google.com>
Cc: Sasha Levin <sashal@kernel.org>, "# 3.4.x" <stable@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Manoj Gupta <manojgupta@google.com>,
	Luis Lozano <llozano@google.com>, arnd@arndb.de
Subject: Re: Backport 44623b2818f4a442726639572f44fd9b6d0ef68c to kernel 5.4
Message-ID: <20201029110153.GA3840801@kroah.com>
References: <CA+SOCLLXnxcf=bTazCT1amY7B4_37HTEXL2OwHowVGCb8SLSQQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+SOCLLXnxcf=bTazCT1amY7B4_37HTEXL2OwHowVGCb8SLSQQ@mail.gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=vkGu2R5X;       spf=pass
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

On Mon, Oct 26, 2020 at 06:17:00PM -0700, Jian Cai wrote:
> Hello,
> 
> I am working on assembling kernel 5.4 with LLVM's integrated assembler on
> ChromeOS, and the following patch is required to make it work. Would you
> please consider backporting it to 5.4?
> 
> 
> commit 44623b2818f4a442726639572f44fd9b6d0ef68c
> Author: Arnd Bergmann <arnd@arndb.de>
> Date:   Wed May 27 16:17:40 2020 +0200
> 
>     crypto: x86/crc32c - fix building with clang ias
> 
> Link:
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=44623b2818f4a442726639572f44fd9b6d0ef68c
> 

It does not apply cleanly, can you please provide a properly backported
and tested version?

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201029110153.GA3840801%40kroah.com.
