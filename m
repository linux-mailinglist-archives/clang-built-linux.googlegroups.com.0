Return-Path: <clang-built-linux+bncBCKYNX7Y3IMBB2HHWP7QKGQEIFOMTAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 20BC92E7CC1
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Dec 2020 22:40:57 +0100 (CET)
Received: by mail-wr1-x438.google.com with SMTP id r8sf9293219wro.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Dec 2020 13:40:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609364456; cv=pass;
        d=google.com; s=arc-20160816;
        b=J0hNW47vg989aXNE5UuiUgsCtaAZzsw48okozkNSLjHcC2D9x5kDDOpyEW+PuUZz7A
         qEQA2Ypc7NrAUA58D02N5jlgxTcRTLBo3BwrsYuMsAs+BUlz8KJfT+ZAT7DHZ80YXSHL
         nQV8NFfyhm1rcpkQ2AKkQSzxHgmb2/8gxGD9/4UJuQ6cYgW4FdeUpJBrDs3IMe8C7wee
         OnZmKdbB9O6VMIhwLPskO+jBf6Oly2e9syUUNF+8M13XroCLBENRRBZNEH58rgJDPEea
         pW7aReWSEQYGslQx0q3uHGuCLfF+CNd/dV77lW49D31ZBJi1oP4hvYTkHVSTamZs9oXh
         va+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=tilnUVvktEtBxcYFt0Cvcrmchml3LCqtsxDe6hA10Kw=;
        b=AJgwmRLJv606y9MI7fTP0+Pwm+OPzBYpdusLXDuyK8lpXylBFBhTUeh+oy8FPWfbaB
         kNFoXNdFNz1gFmfSQlx2V7wjYjbw/2dNxIRWR8owy1H41j3FanP2ULn98DxPpkUkq+Ke
         H/YbKobemHYwjmc8m8hsKCQO9Mt6bErhuK1ufSuMGHo41Eoa2+G+nahh7j0WyxwhLg9a
         hn4/qqk33zoH3wZOVfRX/5bx8VtJmEMfsWm2iffMZBGFYLjrVr4vWNPXjkcdAN5cceGh
         vzFGmkU0tL53T7q6weYE+Iirf/HTlXeR1EpadCBaIxLeEcoGtBAQ3GnnJ0JfCf8UDyzV
         oPmA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of alexandre.belloni@bootlin.com designates 217.70.183.195 as permitted sender) smtp.mailfrom=alexandre.belloni@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tilnUVvktEtBxcYFt0Cvcrmchml3LCqtsxDe6hA10Kw=;
        b=qWGOycd7yUCa+TdkgcV3EZVM6guN59SLmZFKoGrYhu1IxnZy+Ty7cFo0NdzWE/jF0u
         2ewXlh1kzwfh6le5aNlckgHcXpnSiZMp3XGPmzOoRKE62DzoLcWiWQv7brPW5aqZd54R
         NI92lADyDMylUrpkVKiIZUWAbbmDqYfHMrbgu/zROKQnm8FMrJzy6h3+H4CNOy0+bDan
         zsvpXs4iqptFV4kfbLx92FEAM9CMUmG4p89DiDQZPmCbph2zchwWLJP+uZtHrcoVyPtN
         ko8Xdb4lBzi6PAbLb0LeEAy8XxedJdFYG5EFdZC7mJHGmIIUvoar7j+StV2n/1iSJAUy
         4i4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=tilnUVvktEtBxcYFt0Cvcrmchml3LCqtsxDe6hA10Kw=;
        b=IadjbcW7D9aW08pToqNkm0d4j2UWBL5E/5krxd5UvxAsil0gFVo6UNTeB0bkCS8X+G
         InFpszH1DsHLEvZnbyo8H+ddfiSAXSnT45V75BFStJ027nh2RhkBqIlKYXM4rK/NH9fE
         IQm0a6z4h4aYN9mdov1TOwxFO8GgsgprOOCFyTM8kD9mQ58uj8mtLErssNJxTtQF/Cd1
         DKk9DBHiegi/na8ziYrUaksANqCu4sRjw6Fyl/iSqqP8TQuhIQvtgCsgbiuMQgVY+PpP
         9gbembTBMMCBrWKGOrVgN6UrmHksTm0wJMzyd2k5A65tUgPlQI5Srn2pDdIUo9J+rPCH
         Y64Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532IHfcI2hqMWhGNGhV4B5sTxGtM6/Gs4jyaoEVfO1/OgsRqXm5l
	+JFCyPehyvfPQIysXMPXk60=
X-Google-Smtp-Source: ABdhPJzYlScDqqe3U/Ko9+P9kN7gkaXdp0Svr4U1/VVE3mse7fVLR9/9jE8LG8G87fwGBxqfcq1wRw==
X-Received: by 2002:a1c:3b85:: with SMTP id i127mr9536106wma.150.1609364456806;
        Wed, 30 Dec 2020 13:40:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:eb0e:: with SMTP id s14ls3604908wrn.2.gmail; Wed, 30 Dec
 2020 13:40:56 -0800 (PST)
X-Received: by 2002:adf:dc10:: with SMTP id t16mr57207366wri.345.1609364455922;
        Wed, 30 Dec 2020 13:40:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609364455; cv=none;
        d=google.com; s=arc-20160816;
        b=GWGoKBJh3w+d+O2o1Tq24+ZLEviOLRnlIxOcND1mhe+VJT1tQZarKZ4kcTHUwze0Z+
         Vaaqb+OLahACNj8SI+szYbrTAhj3WVsTaA8cO3SpOZ1y3NXXH6W46v6YGf8e++TlJ7yU
         ZpRyAvj+rsOaUqEioxVu4K23NFNbak2w08rKEyqk/8m+llc+dax0rbOb6EyRtw5omwm3
         oIKutNKz5RZvSnOq0M1+3azLNdNvL0OcOpv+HxLEpGcTmTqdY105bMx7c36f6yWNY//c
         WEDVfpqb5WIId4efi5brWtPM9OdPMcXYQ3/AZ0VKIHVJxyqEm8a353gLesAYd697hCi6
         UcXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=Znbi/QBRH1r/lzW0u+lmklydV+9M9GWrvc4dMx661O0=;
        b=AppqKYO/3Kq9EbKDa9jQORZOR7v4Jj1w9z0I+Hj6kE++iuL0yNjoUw6A+MhDZSrsPO
         y8MStXYgBVN2Pi0wnZSoz9wcsH5V3Wwg0asMnvsm+1RkwC/1MoQCFQ7gW6nx/FbTuJs4
         ZK3ojckI5ltnLE724vXq8q4zp56z13wxvuWeTaHgXjDJJMfrPiJqBxELh6S9a1XWeu3S
         D53dySbnFgMMWoDLimOAV9jgbFzrKonaS9+eSdNLIMApxMn3G8U/7dMcbyIAeW95IJMh
         ZMBP9qCz10A95Hq3Xv8DQCZaUYnz5lCVEqpoD6XThxQ02NvpwK9o/wFTjfZeIZXGcqiX
         HXKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of alexandre.belloni@bootlin.com designates 217.70.183.195 as permitted sender) smtp.mailfrom=alexandre.belloni@bootlin.com
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net. [217.70.183.195])
        by gmr-mx.google.com with ESMTPS id n8si1547755wrr.0.2020.12.30.13.40.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 30 Dec 2020 13:40:55 -0800 (PST)
Received-SPF: pass (google.com: domain of alexandre.belloni@bootlin.com designates 217.70.183.195 as permitted sender) client-ip=217.70.183.195;
X-Originating-IP: 86.202.109.140
Received: from localhost (lfbn-lyo-1-13-140.w86-202.abo.wanadoo.fr [86.202.109.140])
	(Authenticated sender: alexandre.belloni@bootlin.com)
	by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 4CC4860003;
	Wed, 30 Dec 2020 21:40:54 +0000 (UTC)
Date: Wed, 30 Dec 2020 22:40:53 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Nicolas Pitre <npitre@baylibre.com>
Cc: Arnd Bergmann <arnd@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Boris Brezillon <boris.brezillon@collabora.com>,
	Arnd Bergmann <arnd@arndb.de>, linux-i3c@lists.infradead.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] i3c/master/mipi-i3c-hci: re-fix __maybe_unused attribute
Message-ID: <20201230214053.GB110311@piout.net>
References: <20201230154304.598900-1-arnd@kernel.org>
 <orno9ppp-no44-4rp5-s6-58n46rsps045@onlyvoer.pbz>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <orno9ppp-no44-4rp5-s6-58n46rsps045@onlyvoer.pbz>
X-Original-Sender: alexandre.belloni@bootlin.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of alexandre.belloni@bootlin.com designates
 217.70.183.195 as permitted sender) smtp.mailfrom=alexandre.belloni@bootlin.com
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

On 30/12/2020 16:23:56-0500, Nicolas Pitre wrote:
> On Wed, 30 Dec 2020, Arnd Bergmann wrote:
> 
> > From: Arnd Bergmann <arnd@arndb.de>
> > 
> > clang warns because the added __maybe_unused attribute is in
> > the wrong place:
> > 
> > drivers/i3c/master/mipi-i3c-hci/core.c:780:21: error: attribute declaration must precede definition [-Werror,-Wignored-attributes]
> > static const struct __maybe_unused of_device_id i3c_hci_of_match[] = {
> >                     ^
> > include/linux/compiler_attributes.h:267:56: note: expanded
> > 
> > Fixes: 95393f3e07ab ("i3c/master/mipi-i3c-hci: quiet maybe-unused variable warning")
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> 
> Acked-by: Nicolas Pitre <npitre@baylibre.com>
> 
> This might be the 3rd patch from 3 different people fixing the same 
> thing. Looks like I3C maintainer is on vacation. Please feel free to 
> send this trivial fix upstream some other way.
> 

Isn't it already upstream?
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=95393f3e07ab53855b91881692a4a5b52dcdc03c

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201230214053.GB110311%40piout.net.
