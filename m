Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBUF7V3WAKGQEDAKJINA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id E453BBE322
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Sep 2019 19:11:45 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id c24sf4373955pfi.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Sep 2019 10:11:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569431504; cv=pass;
        d=google.com; s=arc-20160816;
        b=evmIEkfAgTqR03Qy4aaz6SQU+mcjrb/+csZ90KJP4OaKL1VBDINWK9PWg1ht4NesKb
         2rArBfHhX6Jw3JGDxZjA1mSTjgV2asvBqbuE3WEYQSHveBprDn1L6m+H1YnR7ItTWOpd
         u3uebpyJvFNZlqE6HmPNz2WpgbI9qrUAZ2vW8HQ2Jcd8LBxRTu0VFbt4UHsK/li0Hd4c
         hGbpoIxUFw9T9l9uiJRAPgRNruOMPs+sZjA9+r/tzmvOzII1yqwC+wSafFuqqr8RLJ1+
         0bY6HtOWstRkpa2QybDAOhqwQcDIw2kMnO2B27VUihl0wQVRvJFDutPttkS3Sk81QFQI
         /4QA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=i+SpZbidsnO3GfTq7nw1jRXkfBsymfb+LjGig6D2Kwk=;
        b=JAyTbqupOJXnluVPbkwmITuS78hOPdUFLIjaYpS0/K+qrKI6Qjq22pv32Rqtg5ksC8
         DmlUrmjHZ1AMjPe7XAjBBvxLttsPIpkCatn5gTD9lFRqR1/ilG/1PuWflJ9x9Lodg81p
         IrTl+kz3iPk4X2yG6PnzdZpyHR1o+tVZUmGg09Ha/X8J8zoarBF0atXyTphK/gYhDHmz
         jsLWyj/C/08ekN/WoEAUR4CnhU5e8kjwKGGUXpT2Bg3aKPm/pEz3mRbrx3SOttBACFhF
         XULRlYOeqSmSOmoy8oUaK6dn1UN1KYu9xzPs6ahHThEMIz1Da3XIIleBYWlCV9bpQp8H
         v74g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="Xl1/PYm/";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=i+SpZbidsnO3GfTq7nw1jRXkfBsymfb+LjGig6D2Kwk=;
        b=GuIFWo9f0QxL7HsA53WTUXsvS5eD5N4jHKfViY0bPtNXI1iywCGGn2ghEjX/NOACDV
         Rcipe2KgC0ZANAk8QLTSTXGcNFiJYQ4mJINbi417iDpdQQ8poFT8NzJuBhdTt6wiERq1
         rtP87ikJyucGhL74/HRcB3O7+rReUuv/yEcXMUK/F750AQZBrf6bU/tDIe/UESosDKXF
         lEjsimQeY3rO+9s2jX3mrT96M3TTJAzwrL5C1EiV36Hqqul1B+mlnnlJ364ybeqol7X8
         2JI4oXbdm3aPS+SoM20jBsdHnoTJWeYN5l0LxYbRVraKonpOU6UGuaaY75UqXpH8gx4u
         CrXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=i+SpZbidsnO3GfTq7nw1jRXkfBsymfb+LjGig6D2Kwk=;
        b=IOuAYsAPcI2+Qa+MINe0xxFs3k+eADWbM7Jf1i9YXJmkBLe6vKXx9Uvep+ib53giBD
         dxeGkQpPwLSzTyRzvzYzMMGrkRSEIMpiwHX1TMmBZJY24jCQKm2hS+0QqIBtpUJDxEr+
         3QIm4phN9rOwUiGim9igocEr3bCdPg0RhbDQ6h5fmRN8tpd9vdZXzn9AJjXDQQ72eIWx
         oBfbCzavc81r2DdjElJsJKaHbTE2Zp8YMY3Wr3yex7DYbSl33hH4cJXYENxJNwfBi8Zw
         ohywDvdC7F8U7nwIQwR9QXpiiurmmwQhysma4hGUch147wksdvdbUrvPE+kU6B12bOEU
         WtmQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXrQ7UR6ouAJ/I9SyhufbQ8iVXSPUPI7eYo7TvLvhZEGzaCpq2q
	ao2Sd9DIV090oDXGJGBYMEY=
X-Google-Smtp-Source: APXvYqy1wO0KoJHLgyO1jaZM7r/b4ChvD4TgZWmP0/O5KulY/v8F3Ffd6YnngPZ1wBvO0QGU0GeQfw==
X-Received: by 2002:aa7:9835:: with SMTP id q21mr11136836pfl.122.1569431504378;
        Wed, 25 Sep 2019 10:11:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:76d1:: with SMTP id r200ls1635693pfc.3.gmail; Wed, 25
 Sep 2019 10:11:44 -0700 (PDT)
X-Received: by 2002:a62:3c1:: with SMTP id 184mr11160735pfd.209.1569431504068;
        Wed, 25 Sep 2019 10:11:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569431504; cv=none;
        d=google.com; s=arc-20160816;
        b=zzJBA8r+IL1z5SpkBvPSP6Ao/baEZ3hE5+5hqt+8TeEx88hE9r7j5ymJ705d1O7bTX
         Gu7n+0GhCw1/0DVVbXl2UW5OccdXzIT6jIxWAbSo6GyhFz/8ssCaCf//iBHYKneWaIlp
         vBWjZdiNn+kxDtSKyOU74zGnEotbdDffr6zSVxYMqXsrCt0o8mInhLYm+CxnG/gmNvpC
         nzW6K90NcmireO6ebYZhrAo+LH0BaN8u66r5gRHaUrbaEWTKXYlTeQrpAb8dWunE4fdd
         C6FweeijMT3CTikkuhnpIbKeGu2Kp97qyJi+pZF2SMr4bulAn78OQDb6OlKxsUowD9Dv
         7YPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=fRGYV8zX0qRkQ5xSwr1938vnQ1/EHZBKFLW1MbgvOPg=;
        b=WTB3FBK2a71/E2WgJVREB5SGw0XANnPsgZw+Zv3iSPJkQZUpG8CyLegcEU8UAqSwco
         2E/SNc6tZ4nWoyWpLHy9UcL9pdxutxXBFDFodQghopFFm3TicxTAeb/JsjTVV5gpcKT/
         4EyBsVrfn+6q/QfCrg6LgNWOz+E71/8sflorFxBxVbPrRK6lfsChdvGJ2bHXY0NIpJno
         Ql3LNiOgTAERQ3FhXrum7N5tdQowjMZzZgJF5cjoOOG/c03Q0ZpfOoMNBDuOM9nxwTZ7
         xqvsFopqW4DJ5eOMOU7+RP4mDw9wGljhBYYMH7JZwu0iSPaF+/Vm75fieBRJRe79gTjp
         Tzyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="Xl1/PYm/";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m44si109987pjb.0.2019.09.25.10.11.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Sep 2019 10:11:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 539DF214DA;
	Wed, 25 Sep 2019 17:11:43 +0000 (UTC)
Date: Wed, 25 Sep 2019 19:11:41 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Sasha Levin <sashal@kernel.org>, Josh Poimboeuf <jpoimboe@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>, stable@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: Request for inclusion of f73b3cc39c84 ("objtool: Clobber user
 CFLAGS variable") in -stable
Message-ID: <20190925171141.GC1499213@kroah.com>
References: <20190925164047.GA471117@archlinux-threadripper>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190925164047.GA471117@archlinux-threadripper>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="Xl1/PYm/";       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
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

On Wed, Sep 25, 2019 at 09:40:47AM -0700, Nathan Chancellor wrote:
> Hi Greg and Sasha,
> 
> We received a report of an objtool build failure with clang related to
> -Wunused-parameter [1], which turned out to be related to the distro's
> CFLAGS. Josh patched this up in commit f73b3cc39c84 ("objtool: Clobber
> user CFLAGS variable"), could it be added to -stable whenever
> applicable? Looks like it will pick cleanly to 4.19 but it can be
> applied to 4.14 with context differences.

Now queued up, thanks.

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190925171141.GC1499213%40kroah.com.
