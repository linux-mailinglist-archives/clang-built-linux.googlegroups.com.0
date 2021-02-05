Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBDEO6SAAMGQEHQ2XCSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EEE1310707
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Feb 2021 09:51:25 +0100 (CET)
Received: by mail-yb1-xb40.google.com with SMTP id f127sf6252909ybf.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Feb 2021 00:51:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612515084; cv=pass;
        d=google.com; s=arc-20160816;
        b=cdXHpzW6OjM4DKiUT4dHh0Od0G8HijpSxrT4ardlobXSzSsfmZC3NxD9A0IN+289me
         79DZVIS+aYgJYex8nuhQH/rsXwvv3xPg9/IEqTN1vjhNPZP8BNh3MWd/OYf1v1M5jc4s
         XX2QxwfcjKG9e1TP50bQQmKiVyAUSGu+5bAlKJvY0Z3uK4wVfBICtc4vfM5J/knWP4Lx
         59DctdoRI3lpterMuuwHThfy7644mct1GmAmdhZxptFqYqjvA48AyjD3IAKhdHpXrV9h
         VZwh1EW9NgtfabS5uDngfk3DsrQ2Seg6JdiPRrzbWzGipyV9ws+InDFeZEAc8lBzT3cm
         Ihmg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=yk7GoPH0kyRbEuGlhtcteke7QYmXa2gsTAmM48PSfig=;
        b=Og08hFYwzl4XX9UGbTjxZyZvc971wYNXFVY5b3PDT67qbr0deHD3gBtbYK4hPzIMez
         11I+BFNu+GcuPFPeDSedY56gGWeGEpVF/6K6HXsZqo6mzX9Tafj8XjL5rYVchtZY4QCA
         MhIskP8FiNu3JzCZ1oVC/3Y3ZbpqfIkkMU88Tf3BPa8rmz9cpn2KFj3htZlRPuR511vY
         372kfTi3G/5hKoPGjvKw4TwHSeufJkflT/ltnnQiEO+2RXa+ZeqyqMGodP2nrJ05I/ZQ
         MPfS/oEbJH4j9XdLMWgKBLlfq2hxXPHEJ/6cxv7zjDjdUfIathniV7nXCZm8THjxR+NN
         z9VQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="P/YyfDAf";
       spf=pass (google.com: domain of srs0=tnco=hh=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=tncO=HH=linuxfoundation.org=gregkh@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yk7GoPH0kyRbEuGlhtcteke7QYmXa2gsTAmM48PSfig=;
        b=ojklkMYhkQMQm40d/iP8tlwYgeEA9eaP8Fw4q24RD9kMBowquTwkMBxW6XTfBWpQvq
         OmxV6Ax1JCtbpDfa0joHDMqy06Ea5oK28H/t/bGeCWMEb0u2/QTIeRhQ30YMqB/A5r8c
         6bFSKpNcji67oyNXs/b283Zz9+fsKLBGZBwBCwnJ4FYyFTC4FoQ81VoYrBcM8QXOihRx
         KG0d0JseJXfwuaJzRel/+UdcPshZ7o7l7LXRzkhHXhCRRN8fFpJ/aKCPFAoKymsgW4V5
         T76A6/CtEMgmifLm2xWzBVjj/BnVifmTmfZY5dV6gjlRMQXiO1aUSIFEjIPaA9h0vh1t
         Wxjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yk7GoPH0kyRbEuGlhtcteke7QYmXa2gsTAmM48PSfig=;
        b=oIln9LUGiayP90hQNJTfYH1TPx99m0LVVJuUXklg/48qIpiifrnceZyURrteZoUfcj
         /0Ucuhmvzfb3phZEgDyNSuVBR+BrCABM+lXS5AtfM/fEMT4JnxRt5bL5foZ7LyGCkfmJ
         ZD5EvjHotnCWCwViw5zlsIwFizYCYtvLyOTSjohIe9xjsg/WsROHRwg7Cd57Nf2X4Fdc
         hZQbB9aySAX+Lz53E9TV+Ad8ccdh8VPUtRv/S0nmbHjCm9vtbMda9X/WNLinm5y+ogPz
         jTgrgmeDKUKIEXCMOJzrEtvmLbshrl1zTO/5HN4w9ZEhk3WUyP/CQ5a+2/2qsddzc1OM
         X2HA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ruKd2pBOtCxLg2Iq0sADF6+i/c8xLC/u/Epu6HN8uq+Z5RJWZ
	5L4Dnl2HRkWpCEQOyH+K89o=
X-Google-Smtp-Source: ABdhPJz0SZscc24vozIc/foXzAFzsfXOOFsB1O7cHxXMu66yXN8dq06rPLIB+BXt5pU1gIGtRX9XQw==
X-Received: by 2002:a25:5583:: with SMTP id j125mr4518372ybb.307.1612515084105;
        Fri, 05 Feb 2021 00:51:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:1244:: with SMTP id 65ls3958021ybs.11.gmail; Fri, 05 Feb
 2021 00:51:23 -0800 (PST)
X-Received: by 2002:a25:a89:: with SMTP id 131mr4713979ybk.429.1612515083778;
        Fri, 05 Feb 2021 00:51:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612515083; cv=none;
        d=google.com; s=arc-20160816;
        b=YhqB0isxj0amMNBgDUHKLKjZZfxWH7dJtk/k4QeyuMxwgvirGOsc2CeoOcpDllqxHV
         zUx9L6fP7WIkqEPa+p1fsPzyB9/aQTKkNRblu9d1xoMExtmAFh56apibUgnTp8j8G425
         LEsx7FCs0GDO1S20m0Oqmv0AC3c5u/xZWWKK727ipu/6jN6cKXu/Fn3jhfwQK3+0mTT3
         cbuE6ueJaGhPcFkhW/HNUE/BkmLJsEwNBa0Ch5YFn2pNn9uVn2hS4yGLlZMKFiSUyS52
         SIgecjnuA4z8K7HjnisOr5FjvCoVda21H45fUrxfYWTepebVNcDare99Z5Pi/GJuklpl
         fWFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=sSNL9ge6L+zIqfEG8vbxqO+cKe7RN4705BYDzdHjWZw=;
        b=MN0fsViLHGMEBhDqk4fWELsWoZznhvDza39YgyCv2+FoMBy8Xcu5DrAdSKySuQa4lx
         tZWtmSGEILvzeUfD2jscpQySDP/Ittq9OdmifV4GXXGh/uQGSZVF+nA4XUeghN9R/AZI
         cBwWYc4BtrftpFs0Sojw8Qn0INtwS1PQdoa8JL4jZU/fM39V4HSp5YQVSBXxFRr0Nodr
         pVJM5HuGFcaN/QmTOldDUZJfFp8Dr0+4FzsSaYBzg8b31YDE46t9DdWazPkWcntHHtpM
         TA/oFL6sLnEAMmAC0xvpo0X256xgo6i8hQJbOQC4WaLiCBz4tNFjASCEyTCYw28cAx17
         WNww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="P/YyfDAf";
       spf=pass (google.com: domain of srs0=tnco=hh=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=tncO=HH=linuxfoundation.org=gregkh@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c10si525435ybf.1.2021.02.05.00.51.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Feb 2021 00:51:23 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=tnco=hh=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id CE9F264F45;
	Fri,  5 Feb 2021 08:51:21 +0000 (UTC)
Date: Fri, 5 Feb 2021 09:51:19 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Sasha Levin <sashal@kernel.org>, stable@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: Apply 28187dc8ebd938d574edfc6d9e0f9c51c21ff3f4 to linux-5.10.y
Message-ID: <YB0HB+tcBT30QdLM@kroah.com>
References: <20210205041351.GA2494386@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210205041351.GA2494386@localhost>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b="P/YyfDAf";
       spf=pass (google.com: domain of srs0=tnco=hh=linuxfoundation.org=gregkh@kernel.org
 designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=tncO=HH=linuxfoundation.org=gregkh@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Thu, Feb 04, 2021 at 09:13:51PM -0700, Nathan Chancellor wrote:
> Hi Greg and Sasha,
> 
> Please apply commit 28187dc8ebd9 ("ARM: 9025/1: Kconfig: CPU_BIG_ENDIAN
> depends on !LD_IS_LLD") to linux-5.10.y, as it fixes a series of errors
> that are seen with ARCH=arm LLVM=1 all{mod,yes}config. CONFIG_LD_IS_LLD
> was introduced in 5.8 so it currently does not need to go back farther
> than 5.10.

Now applied, thanks.

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YB0HB%2BtcBT30QdLM%40kroah.com.
