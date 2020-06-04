Return-Path: <clang-built-linux+bncBCUO3AHUWUIRBKPM4T3AKGQESFYB7UI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B7AB1EE9E6
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 19:58:02 +0200 (CEST)
Received: by mail-vk1-xa3f.google.com with SMTP id g21sf1831795vkk.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Jun 2020 10:58:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591293481; cv=pass;
        d=google.com; s=arc-20160816;
        b=a8gFUcIvWo0e1cmDlxPsA+yEfJI2zlJZXk8m7U3yLtTfrCjWxGKLugbZVNpzJwl4Pd
         Ow52QdpKK8gas1x0GD7ijc98OpGCuaDoVUOlWqHlN1MzRC9MKMsWb5RF4C8dbTMBY1NN
         W4vzeWUL+F9bOkYZ2evF5av4NXg6aBAPJMVba38BlrAmjJ0WfmQLXUcTMUbyTp4yudqf
         7vovRSNsyy5kW/E33kWAzfRM/Us2aM/w0gWdeBpMNAUjSITfzMd12uMyArQDs3vp3VE0
         CVvQRgbG6A2/syXVwUYbISqnNAhg/PWqhXeAWHYByaBz2IPqd7d9RFgqbTUiTekWaIp8
         UEpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=8J5FZOb8VRZZrMcc+P90UmL0hGZJ0PF9OJ0DntGSEE4=;
        b=apR7n7I8VA0LBMkb6L1IHIcufv+0V1Ig13KUdDygNm+AjbMetNZxLgrIwnwyUHAVl+
         WHgZhscksou0RhN8osYgUN/sUL9bRILSg8Poh/nea3Qc11F2lDxrAc3TOqoD9uF4ufbZ
         tYn1nSYFVXu6LAGFwDJTXDZ6bHtkQ+P5zDnhn0X9ThZiCdM839hMxqv2pQVKqZxvACWy
         Yl9iwW2MsfdMyEnDrPmQr9YB0ugWOatwsgMS/EIyUuZfdAI4bIqh72/hy9ZUCb7236tR
         qdOJ8gY6AacxfjT8hn71jF8m3mLnAqs8S1a9/mGcNm6g7whW3Ky/m/3MLuJkegbvSLDs
         BO+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ziepe.ca header.s=google header.b=dp1MW0oL;
       spf=pass (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=jgg@ziepe.ca
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8J5FZOb8VRZZrMcc+P90UmL0hGZJ0PF9OJ0DntGSEE4=;
        b=eGmhNs2L8bHKX8jBH6Ngxgpbyvbw4c6uFO0mGBKPH98ijvPsfHBnA12gjqxwEkFgZK
         3Iq7ZFNluwBH1I0RXS4417nnGPuijj0gNDxdo9ehqpePbhF1+TIQAGZ0PrphE1AlO/fo
         F49x9+sRShDAgZW4MQbEZaQF6JaCWVKgOviVZMmlp74ee6l8axGhPU8qE6xqEjWwi103
         GqWmGgH65AXgWwDqTwdctpEv1tcd0FMSh2ck4obmTHq1uTxdzKgiIU2hH0kaGcaAalwD
         8F3/Mvw5jC9l5Royl84fG5CecVfkEyI9zYezMrWLGNS3hAagsnaJurqXO732SL0c/rlk
         P8GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8J5FZOb8VRZZrMcc+P90UmL0hGZJ0PF9OJ0DntGSEE4=;
        b=c5zLCofuGWCBa8j0yjSBDt0nApxFm1XR8KKJJCgb+6mfSQLanySMQTh6dqgRPSVkR6
         +gyzDE8ZW+FGO6LMHVljM76fgOT/aFRCJoe8umuhGlnyFtqzt78Oyoqx9Hbe3kVIerrj
         gZs+cPydFAW+HFh60T0Q81V2bZ9m0Okkn/pxghcA48P/As5ABrQlSUvsGu/PKFW8ZiGQ
         cwZ0e9InKLu/GAJ/FAku/Hl/QQ8yy1CFAjhxV6as9Ie/b91u2rwrk+SW77qhaadS8P0g
         s6Wr6qiAghpaYEmha2pI6cUhf6EU63be80bTEhxwtswPt84LEITkjoTGejDSxWy9fGK9
         lTrA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5318kBm4aLV2CAK/X+t8glC/NhvjrnsWkmRh0evivPDXw55wvDLH
	0vuC1K61wgLkp4ZvncroyLA=
X-Google-Smtp-Source: ABdhPJyL0Am7N+LI5crb3m/ZC9NwqHbYxhIRoIW+vy6exa7sZIPW+QO1ke6/hLqVoulEXnVjCgxFYw==
X-Received: by 2002:a67:3311:: with SMTP id z17mr4476692vsz.52.1591293481088;
        Thu, 04 Jun 2020 10:58:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:dc6:: with SMTP id 189ls815298vsn.5.gmail; Thu, 04 Jun
 2020 10:58:00 -0700 (PDT)
X-Received: by 2002:a67:cb0f:: with SMTP id b15mr4342600vsl.153.1591293480693;
        Thu, 04 Jun 2020 10:58:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591293480; cv=none;
        d=google.com; s=arc-20160816;
        b=dx236abVp7u7gztsahKE9iDmAmlVkHdOuxWqg+dUpj+dWBl14L7QiJrdyPp+ILG61a
         AQkqSUlsz34ZFJLSeNqCESbx19XM6RonkPwVabBLaljVIvfxUKQPZD8dx0QRZy1s8UtC
         3AanxHM0l3taeFSrMO1WhTZTXhzUJctEXk3n+xxz4h+9Mi7J5O4qfidsMN6N+D3bNBPL
         fjvpLaEcA0l/AFylxFKo93zn8TWihnw8sGxH9wHj9egPMNdFMNkHG5C8gkYegrx09QIi
         AdDc4JX0OjuoxVB4gjSkYj18iIoF+wMSQaQlhpTfbzpzsnc6OfIRtp4JkoLT5oGisgLP
         77qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ylFM7xcrRPttXnSFsxxMsniM496bjo9TahOp0BQ4KWQ=;
        b=QbrKlphboj3x6jmBgw71YOvC3t6R0mOs9L2bAhMPVMsrW9DvA1WGapwwgGg8DTmlvE
         kpEoHeP13XZDgA2tY6ZZck7q+nhRLGYHS8cEaJfR0D0i8iaQcAn2TImAW5xyoV2xzytA
         FjY6LA1nPozJkF8osFeKtWirTUzV4nClBCTftp5sBjtGNvhNOMpy+J2uV5HWo20XRkI8
         3A1HIctDdipaxpiQbkjJP225Ly1GZW3pSJGzRcmHLxty2TODgA8cXkIsqcK/kLESqgya
         5As3u9ps8suUMaD2m3RK+hjJmiUdaxpcS0ZRigrFuRMQNrm7SBccgqMsRtO6hAmFVyLf
         JUCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ziepe.ca header.s=google header.b=dp1MW0oL;
       spf=pass (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=jgg@ziepe.ca
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id i11si398287vkk.2.2020.06.04.10.58.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Jun 2020 10:58:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id g28so7028893qkl.0
        for <clang-built-linux@googlegroups.com>; Thu, 04 Jun 2020 10:58:00 -0700 (PDT)
X-Received: by 2002:ae9:ebd2:: with SMTP id b201mr5788109qkg.409.1591293480332;
        Thu, 04 Jun 2020 10:58:00 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-156-34-48-30.dhcp-dynamic.fibreop.ns.bellaliant.net. [156.34.48.30])
        by smtp.gmail.com with ESMTPSA id t43sm5788444qtj.85.2020.06.04.10.57.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jun 2020 10:57:59 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.93)
	(envelope-from <jgg@ziepe.ca>)
	id 1jgu7r-001H95-GE; Thu, 04 Jun 2020 14:57:59 -0300
Date: Thu, 4 Jun 2020 14:57:59 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Kees Cook <keescook@chromium.org>
Cc: linux-kernel@vger.kernel.org,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Alexander Potapenko <glider@google.com>,
	Joe Perches <joe@perches.com>, Andy Whitcroft <apw@canonical.com>,
	x86@kernel.org, drbd-dev@lists.linbit.com,
	linux-block@vger.kernel.org, b43-dev@lists.infradead.org,
	netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
	linux-ide@vger.kernel.org, linux-clk@vger.kernel.org,
	linux-spi@vger.kernel.org, linux-mm@kvack.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 09/10] treewide: Remove uninitialized_var() usage
Message-ID: <20200604175759.GQ6578@ziepe.ca>
References: <20200603233203.1695403-1-keescook@chromium.org>
 <20200603233203.1695403-10-keescook@chromium.org>
 <20200604132306.GO6578@ziepe.ca>
 <202006040757.0DFC3F28E@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202006040757.0DFC3F28E@keescook>
X-Original-Sender: jgg@ziepe.ca
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ziepe.ca header.s=google header.b=dp1MW0oL;       spf=pass
 (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::744 as
 permitted sender) smtp.mailfrom=jgg@ziepe.ca
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

On Thu, Jun 04, 2020 at 07:59:40AM -0700, Kees Cook wrote:
> On Thu, Jun 04, 2020 at 10:23:06AM -0300, Jason Gunthorpe wrote:
> > On Wed, Jun 03, 2020 at 04:32:02PM -0700, Kees Cook wrote:
> > > Using uninitialized_var() is dangerous as it papers over real bugs[1]
> > > (or can in the future), and suppresses unrelated compiler warnings
> > > (e.g. "unused variable"). If the compiler thinks it is uninitialized,
> > > either simply initialize the variable or make compiler changes.
> > > 
> > > I preparation for removing[2] the[3] macro[4], remove all remaining
> > > needless uses with the following script:
> > > 
> > > git grep '\buninitialized_var\b' | cut -d: -f1 | sort -u | \
> > > 	xargs perl -pi -e \
> > > 		's/\buninitialized_var\(([^\)]+)\)/\1/g;
> > > 		 s:\s*/\* (GCC be quiet|to make compiler happy) \*/$::g;'
> > > 
> > > drivers/video/fbdev/riva/riva_hw.c was manually tweaked to avoid
> > > pathological white-space.
> > > 
> > > No outstanding warnings were found building allmodconfig with GCC 9.3.0
> > > for x86_64, i386, arm64, arm, powerpc, powerpc64le, s390x, mips, sparc64,
> > > alpha, and m68k.
> > 
> > At least in the infiniband part I'm confident that old gcc versions
> > will print warnings after this patch.
> > 
> > As the warnings are wrong, do we care? Should old gcc maybe just -Wno-
> > the warning?
> 
> I *think* a lot of those are from -Wmaybe-uninitialized, but Linus just
> turned that off unconditionally in v5.7:
> 78a5255ffb6a ("Stop the ad-hoc games with -Wno-maybe-initialized")

Yah, that alone is justification enough to do this purge.

Jason

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200604175759.GQ6578%40ziepe.ca.
