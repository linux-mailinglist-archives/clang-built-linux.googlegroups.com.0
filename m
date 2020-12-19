Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBZHK677AKGQESPZO6TI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 545E82DEED5
	for <lists+clang-built-linux@lfdr.de>; Sat, 19 Dec 2020 13:43:18 +0100 (CET)
Received: by mail-io1-xd3d.google.com with SMTP id n9sf3759421iog.6
        for <lists+clang-built-linux@lfdr.de>; Sat, 19 Dec 2020 04:43:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608381797; cv=pass;
        d=google.com; s=arc-20160816;
        b=IskvMlatw4Xc6rtNYCtUuz9DYBpa91pp7ai5y1v9fcpW8qa5dw2CTAT7thQyGSQVCR
         UO50lfaYbh5mR6RQf4Q33LM2GhG6xJ/O2Mn/QTbFgnmzzEh341dsAv1e0vYFn23tUwV0
         TgwLJ9QgQ1oKLNCcDrG3yhknUKERdOmcn+mOuh8Bv5AblrW0Cqat/wlulwN/1ZoyW0ve
         IhOByJBBFpq6qQSO8XwZaE+qbjbSl10Ai6mbazCwYKbxvueNEECB2eUAtC5/eckOL04T
         tzyU1bMUImy6JRer99PWAXQjzpaousdG4tRFEoyuUAhWhJrUhQLynochyO4s6DKmusMA
         q6yw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=SN2wSDB5v8cxEBUQiPmn43bD36525rCbKcvdDBQVJHs=;
        b=K8uRWjrC8MBKwt1/rpDKASpieZYfdzAPMXWar0GwCIy/QVU/xwHuX76/orX4EFTFGF
         LAPooZrXqDQZlrpNU296wyQQmlfpJ1gNbWO2+isNoaTn02to8kAptDikzWFCjkqrIFRh
         cbNj8RQCqrpK4ptnUHAZehLajgXF9LuznetbGjmrK1D/xtLTs22hRm6P0aAMxMtlgxgN
         ZNXwQAxEygPUahH5+Wfj0A+dMvpDTj+bMDmrTcR4sn4wfEixHK33YnSr4WPNLG5DOK4m
         Acj7cJtMBogFWPpPCbKF3u3tzsmU1S26+WhufXrH7ZRThMtIO1pPisq7bSikzWzl3wbB
         sUVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=Ia6Y8RUL;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SN2wSDB5v8cxEBUQiPmn43bD36525rCbKcvdDBQVJHs=;
        b=U0jvAftkL73TkOJdZuOO8wT5AhLYCaqpU2rLJ/RKB4EcfaOXRQZLcCTLO0CnsfCL47
         q3qdLDcGVGBm4DsewWSavTJiKvsM4YCBgjeCKITKQOYPhP2Fqh1Ppmb9OGE2RpcKZdFD
         EKr3jYh8mzCz0qyEjpFwVRF7Ou91TFpY6f55gwLFywSPEmd+OAGUfb41VRvqoEqUAuee
         ckiCP25BKMlL/4smbd70OQ/kfLQyOlSYHcxtxtHiVCI/HAmckD8buXVwLxZkxpFYx1jV
         Ua+Fpa2X9hpUTULyvXgCO17+mHcqb0L9xLergiiYfQacJgRGkA34QHRhih2t8eJuYsQQ
         OLqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=SN2wSDB5v8cxEBUQiPmn43bD36525rCbKcvdDBQVJHs=;
        b=Ro1cIoGQYGNCeI0eTydPp3XKZsxHL+zFJqBTBR7jt6uIniuFkx0AExjzV5QhJcv2kH
         5gr5xVKwQApFOyCtaVk6y3EL1gMgPq3ZUdIkk0LZLJ9XUZKCTbPPNGJz9GUuUdmdFOdj
         xyWzYoOENTFeFFkt6u871GtbYwR+GoYcbK7YuyX/Xb2qIDRJQ6rgTGm6ffHLGKT1STNJ
         Yu47X4oaFwvGA9IfFgOmjYnlk+IwUn0lgmfzzX5Y7jYx3eQUdL/KrDkegogAy4k+8vXv
         J+7DrveXUZDfe25c2R6L+9nsDqlWq2HdjZvOLWg+pLA4ym7zM+SbT5wX6dwVfjxPN5XK
         F6lw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530oGJMCcUejWMBDdEmTgnGh50wiwZYPr+/EdGRxJDvTD3rRqF4F
	VJw032VJPqa6IMKI9YxbE5o=
X-Google-Smtp-Source: ABdhPJweJych9EuxACDvq5G3Sya9/8LCw9Rdj34p64HlooQWtvZx5xQakwVIvamBYKYIlgz/RB2pwg==
X-Received: by 2002:a05:6602:2c41:: with SMTP id x1mr8079764iov.125.1608381797085;
        Sat, 19 Dec 2020 04:43:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:d203:: with SMTP id y3ls8887964ily.6.gmail; Sat, 19 Dec
 2020 04:43:16 -0800 (PST)
X-Received: by 2002:a92:6403:: with SMTP id y3mr8756455ilb.72.1608381796678;
        Sat, 19 Dec 2020 04:43:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608381796; cv=none;
        d=google.com; s=arc-20160816;
        b=lYvVt/EoMrZOVHAP+oPhPfYtfU4Se0uOYguIUOWqYXKLKFZg+lCP/ANY/pn9BRCmTp
         C77MTwpxgD3eWnXzMgOx/N0d41e94XUs7NtU8cK4BpIZG3sIH1+4WIaVU8xwn5yJ/5Fw
         +LC/8i8Mzee/yAy8ThyERDexqptWXQQaxuuDHqKjcnmeXOMUSNV0LT1kbkVBFKaJq5Ct
         U2lSUo5XNgJ3IHJ9H3Hlx68RJ11SGpQUH/mplPvuAaCCMpFwEFASy7yHn4vfTZh6oVWY
         bkTaC1coy69k3SbGAh4ZrpfQ8LqVYM4KpY0Q8EbAM8EKcnMyCBoYRXhZq+AYW+scycNP
         23VQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:dkim-signature:date;
        bh=06gHNDYQgDgwYx7X9H5NTJcp/JVBQOA4DTDftt48hS0=;
        b=jZF0jVYchDJSkYynu9jxhOccMuQSh8b1QcqCPQoeKYA7b387JtDtEGpJysCM9Nb6gp
         GVGtDCh03jnltVW/RGAeS5W6ncV+f0HjS8O0qhBixO4n9fOBoqU9rpkJl7yWZy3Y/xVv
         YqyJFwSR82K11tjDE6n0oWgt7tdDbkfwPfb7NG8G/lYU/vjPmD2bVro8UAVN+CCiC9IQ
         CrBRbGVEC+MVwpEFitik28LOA42tGobE/4WzoYX1i6IOe5d1Q7na98QxO46FqJGDK8Xn
         zN7dD0ZpYtRMJ2LYze/stUebH9kKTA+liAInSp6+5Gis7VNpiWAWLiIVuoGlsdxrsZXy
         xKNw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=Ia6Y8RUL;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b8si1265662ile.1.2020.12.19.04.43.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 19 Dec 2020 04:43:16 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Date: Sat, 19 Dec 2020 13:44:36 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Sasha Levin <sashal@kernel.org>, Fangrui Song <maskray@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	"# 3.4.x" <stable@vger.kernel.org>, Will Deacon <will@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Mark Brown <broonie@kernel.org>
Subject: Re: FAILED: patch "[PATCH] arm64: Change .weak to
 SYM_FUNC_START_WEAK_PI for" failed to apply to 4.19-stable tree
Message-ID: <X931tHcHF8iIjo+t@kroah.com>
References: <1604431094102246@kroah.com>
 <CAKwvOdkE8_1s4xPYU0Gq9Ld9XhkFn1FowJJt5ZF5ve9zT8uL1w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdkE8_1s4xPYU0Gq9Ld9XhkFn1FowJJt5ZF5ve9zT8uL1w@mail.gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=Ia6Y8RUL;       spf=pass
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

On Mon, Dec 14, 2020 at 03:16:34PM -0800, Nick Desaulniers wrote:
> On Tue, Nov 3, 2020 at 11:18 AM <gregkh@linuxfoundation.org> wrote:
> >
> >
> > The patch below does not apply to the 4.19-stable tree.
> > If someone wants it applied there, or to any other stable or longterm
> > tree, then please email the backport, including the original git commit
> > id to <stable@vger.kernel.org>.
> >
> > thanks,
> >
> > greg k-h
> >
> > ------------------ original commit in Linus's tree ------------------
> >
> > From ec9d78070de986ecf581ea204fd322af4d2477ec Mon Sep 17 00:00:00 2001
> > From: Fangrui Song <maskray@google.com>
> > Date: Thu, 29 Oct 2020 11:19:51 -0700
> > Subject: [PATCH] arm64: Change .weak to SYM_FUNC_START_WEAK_PI for
> >  arch/arm64/lib/mem*.S
> 
> Dear stable kernel maintainers, please consider applying the attached
> patch for 4.19.y.  It is adjusted to avoid conflicts due to:
>       commit 3ac0f4526dfb ("arm64: lib: Use modern annotations for
> assembly functions")
>       commit 35e61c77ef38 ("arm64: asm: Add new-style position
> independent function annotations")]
> not being backported to 4.19.y.  It helps us enable LLVM_IAS=1 builds
> for aarch64 for Android and CrOS.

Now applied, thanks.

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/X931tHcHF8iIjo%2Bt%40kroah.com.
