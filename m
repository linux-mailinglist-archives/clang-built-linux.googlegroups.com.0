Return-Path: <clang-built-linux+bncBCSPV64IYUKBBWN456AAMGQE3JTMX2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-f59.google.com (mail-wm1-f59.google.com [209.85.128.59])
	by mail.lfdr.de (Postfix) with ESMTPS id CD8B530F29D
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 12:45:29 +0100 (CET)
Received: by mail-wm1-f59.google.com with SMTP id n17sf1553542wmk.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Feb 2021 03:45:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612439129; cv=pass;
        d=google.com; s=arc-20160816;
        b=D2aYHZjtK7gy9U0fLPNC+coZESuYDFDhc9GABQzYp/VTQepXrAmgLc/LZEonV8Gb+P
         NivdHsWTZMKlRu7adcNbRro0MHGOs+NXXOdcrq3uyBDYtTl/ghx4tfG1BiBLIJn3moP0
         Q+M6TcQLPgxtVswsU6gFrZvCkXno2BH64yzm26wbg8YnGMiGqpH5mL9sQz3q+8kXDj09
         dfQCiNF/DWRmGUqekVtNX7DwOqhTqQ3VS/kpBZqggcT9tPVyv9CJ48GL/CkvR20fPez3
         ld2ASqMRcZmToy2e0qEFWnPpTMWUutIdDzC4sD+dRXo1EhITuO1WtM2cEEre6eDmCHMN
         Uq0g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:sender:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=PuUWtB+6AK+RFQUPgX1umtpQn+9knBl595WeBJRSnh8=;
        b=BjJnMYlZbhCrqjaJLfeQnRU0fdNsfWXnstDT4EZFsHvwvQBqTbAXmgru9/ISI+f/LP
         PzSShkZXeFobdQfYhh19g7VBexykzzeZtedZfUDYEHvj3wjklYnk1/I+0++f0DMU18sT
         +5sS7MR9u+FX7IMm5506zTQjv2uEJCVPK5Mx8831qv1KDAHBuiVQD/9z9Gl7igRzwpW2
         31Zg5vdPXPOX43wA61BF9RvPth4235uSLF699pDlmr+hSgCcZKxa8iFSbngZcm+jiCUS
         0JN0TnhjOmYhdIQay86TJatUhlP5JuozJy/rsf3Rf867VPcWFoZtAeAVgfqVLNM+xaUM
         q9Xw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=dFRjefJB;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:32c8:5054:ff:fe00:142 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent:sender
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PuUWtB+6AK+RFQUPgX1umtpQn+9knBl595WeBJRSnh8=;
        b=Cc7t1mfZG/HCI8BsVIkLSNqa6gCYlpSwA6vzuDP19qGjnH5wYCeMuIZV6JY9T/RPLu
         XYqHdKKim9W1mmAFsIPQIrxXyOnzd8GmgGN+sm3Qwr8wBQpf5Ao3nkvR0lcjScTLyuMO
         5kBaW2YTh8PMDx+2Iopgsv2qGQBS11GuDIevRySGewI1tZxeIt46y5g6bGwgPaLVwtVH
         DQe6asu2QJGJrfKsQVPNAvac/8nuWSiVy7TCUa3zHM46EmPRwxGoYTktYcRWIxKO+IhE
         QKLpMQ/vwFgLWCRpPRznS9iAlqxoLRPq8yiOwlY2iUbyZZ5Ij+N4l+ZY1Rur4kRKCUh1
         SgeQ==
X-Gm-Message-State: AOAM533e8savxrpbCYnfHrn0wvj/Bw5S27Gif86TMFl3yJ6FpU7uL0bm
	K6xWlZRHgGnuJk/8SSC8w68=
X-Google-Smtp-Source: ABdhPJz2Nxr7BjEcOspnb6qgsi6z5QT0lPR6r7ED1HKcyFjWAPl37y1PXP0HBuT9BhC18l1WtHej/Q==
X-Received: by 2002:adf:cf04:: with SMTP id o4mr8850939wrj.412.1612439129527;
        Thu, 04 Feb 2021 03:45:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4485:: with SMTP id j5ls6650150wrq.1.gmail; Thu, 04 Feb
 2021 03:45:28 -0800 (PST)
X-Received: by 2002:a5d:414c:: with SMTP id c12mr9116459wrq.251.1612439128794;
        Thu, 04 Feb 2021 03:45:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612439128; cv=none;
        d=google.com; s=arc-20160816;
        b=XGPic5aRaP6xREl/je5Q9DDnXUvXEz3SHe8eDqfhbAFiQGMpdhrqzMaLiU/H//UZ+f
         de0b9UpSAWQ5SFpslfAXNNZJWqLHH4hrxaLB2n7f5NEhYBGyA9thxXtVtLKFRtafirxo
         CAsnScWRNqZN8iL+7+qO7lVRkN3ukibMGdSjgMHEgljJE1VWOvZuJPPeZkFH2yKVcYpI
         HqvGjYo+IlsRXkGNAJpDJyBwfvMLNo5yEEr1hH844Bupp6OpyjFFnGRRY11Ibu+habRO
         4BulKoqJDVuJ1sOmG0XHp8+9IyxnoORvKeNzodzc7VFNjjErD+DZo7opzABr9vzT8cgA
         Mq/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=sender:user-agent:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:dkim-signature;
        bh=JGhVURvln/aI2r9tiRPahDvAcS6/jkWSFn2D77VPLeU=;
        b=BCqs5aAzo4lTgcWjXzCR1Pu1uCwK5S3+xm4asaLIM7eEY70/4Z7Exn4jann9tCv7Qz
         VHv5/pBs9NgBQzUtLpp61buuGzoOFbPFVZGdxoJ+QKFCgeKj4mBsbuZRoXTk9u6MXpNa
         BsIVl2qD/qvzSy8F3H0ZNHyD+mj+RDLaNYrdi7grVvaKWbBhal0JUMFMnZlV+GttTRO/
         dd1wvw8PMynQtaJhg4cNycTqB6o6XYhY6+oNUSMuAyTLpkh7jMFccUuc1D54WaesSIDt
         tn0L3AaVse3cEo0TJbtpe8Wj/9mZwWS/xB+EzckMpYbyou4L5lxvpartaJpwL/Eurkaq
         Ouaw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=dFRjefJB;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:32c8:5054:ff:fe00:142 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk. [2001:4d48:ad52:32c8:5054:ff:fe00:142])
        by gmr-mx.google.com with ESMTPS id w11si346124wrv.0.2021.02.04.03.45.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Feb 2021 03:45:28 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:32c8:5054:ff:fe00:142 as permitted sender) client-ip=2001:4d48:ad52:32c8:5054:ff:fe00:142;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:39068)
	by pandora.armlinux.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <linux@armlinux.org.uk>)
	id 1l7d4d-0006V8-GY; Thu, 04 Feb 2021 11:45:23 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1l7d3c-00058V-FB; Thu, 04 Feb 2021 11:44:20 +0000
Date: Thu, 4 Feb 2021 11:44:20 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Guillaume Tucker <guillaume.tucker@collabora.com>
Cc: Ard Biesheuvel <ardb@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Nicolas Pitre <nico@fluxnic.net>,
	"kernelci-results@groups.io" <kernelci-results@groups.io>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: next/master bisection: baseline.login on rk3288-rock2-square
Message-ID: <20210204114420.GW1463@shell.armlinux.org.uk>
References: <601b773a.1c69fb81.9f381.a32a@mx.google.com>
 <6c65bcef-d4e7-25fa-43cf-2c435bb61bb9@collabora.com>
 <CAMj1kXHMw5hMuV5VapcTeok3WJu1B79=Z3Xho0qda0nCqBFERA@mail.gmail.com>
 <20210204100601.GT1463@shell.armlinux.org.uk>
 <CAMj1kXFog3=5zD7+P=cRfRLj1xfD1h1kU58iifASBSXkRe-E6g@mail.gmail.com>
 <c0037472-75c8-6cf9-6ecf-e671fce9d636@collabora.com>
 <46373679-a149-8a3d-e914-780e4c6ff8be@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <46373679-a149-8a3d-e914-780e4c6ff8be@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-Original-Sender: linux@armlinux.org.uk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass (test
 mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=dFRjefJB;
       spf=pass (google.com: best guess record for domain of
 linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates
 2001:4d48:ad52:32c8:5054:ff:fe00:142 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
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

On Thu, Feb 04, 2021 at 11:32:05AM +0000, Guillaume Tucker wrote:
> Yes it does fix the issue:
> 
>   https://lava.collabora.co.uk/scheduler/job/3173819
> 
> with Ard's fix applied to this test branch:
> 
>   https://gitlab.collabora.com/gtucker/linux/-/commits/next-20210203-ard-fix/
> 
> 
> +clang +Nick
> 
> It's worth mentioning that the issue only happens with kernels
> built with Clang.  As you can see there are several other arm
> platforms failing with clang-11 builds but booting fine with
> gcc-8:

My gut feeling is that it isn't Clang specific - it's likely down to
the exact code/data placement, how things end up during decompression,
and exactly what state the cache ends up in.

That certainly was the case with the original regression.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210204114420.GW1463%40shell.armlinux.org.uk.
