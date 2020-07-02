Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBBXX673QKGQEIENEXIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe39.google.com (mail-vs1-xe39.google.com [IPv6:2607:f8b0:4864:20::e39])
	by mail.lfdr.de (Postfix) with ESMTPS id 01BE82127A1
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Jul 2020 17:21:44 +0200 (CEST)
Received: by mail-vs1-xe39.google.com with SMTP id s67sf793444vss.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Jul 2020 08:21:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593703303; cv=pass;
        d=google.com; s=arc-20160816;
        b=F7suC4uhOlljczRj69jOTTdIiH+58CEMdBPQPbS5tmwA4OPjsoGk4RdEHlQOXC0LYr
         RKDCMAIQKHRjQObsi/kMMESa6WWOURMp+Swgg4JAxrkfHFVEZLjFO/5zZWH6lhd7USJk
         JxKECmjeZDOz8NhNQe5Kt2fMUMGi0yuEIxvVnaYYqg/OdXBC9n8lO3P/zYDvWBxtulhI
         OCfQcoGtKQB33vEZO2vTseL3ubiNKZn4U9siHLqeGTwCsarEbOqkyn2fC9afEvwU4JIS
         9BFX9igjWyO6IPkAfysxA6L46N/2CWpU5NcjBny1UwGnLjcwuXt9QSPPbH9GrtVpt/ly
         RcmA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=XhNAoAXoe3Re6XAAed+ZVeEIMA/PmcwpWAO3XF/WvsA=;
        b=Sqq7nqN7KMDlxwB5IKdVlABNzDPoZ6oD8Qe/gg6X+g+ftDMRiOCRaVrDMFqJsIoLxV
         V/yLfMXsx1dlLd8UVvh/emvntRdeNP+DPEktPaYkTrorFkZstyOYAk6c5XtGkKC16bAL
         Z2XQ1M5R5IdBhmdvnPuI9xnAr6Lbvdhze+1oW5PfPQPHsLJVQIeTMHErkWboCqXsE+8B
         3uKM5MJYPlivNLL5DoODNCdObzDLY1jEkrFc94alvp/FMAlbI5UlzaE7PZcptUcT1JWA
         yUSARNV6gRxLDbtcwGho5X/ZEQD4j3kXCOK2RJPvQOLnbhWhl4S28XCbXdPEP1rtCUJz
         RwhQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=fz3Jh9Eb;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XhNAoAXoe3Re6XAAed+ZVeEIMA/PmcwpWAO3XF/WvsA=;
        b=ESHnpab+fR1D4V5Glz/ctyQOhqfcb3Dly9MqLN2Sz1CWHJtDa+WYIAu6Hb4cD/NRff
         3M5OHL2mui6uu6+jsHX7ITGJdpxV7FURVn84ZFbrMY+Tkp5i37c4fE7i5EUFUFp1fNe2
         EI1t37zi/LCULG1NN35TxTTw6PlK/AtpyHmYvBntyHbBo3CDaFuvpFGgnh6huB/KgCeD
         b6defyPYKYX7hUC2BpVVt4iBNpdpkhDA7KVBRkQFGXcX9s24Xwp642xAq7ktRpzut4WB
         sMvrjUPch0nC8Kpj4feLM/KkehayNWViHKkCTxK6ttn86omoOXY2HESWikiuVs4rPBdG
         rqgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=XhNAoAXoe3Re6XAAed+ZVeEIMA/PmcwpWAO3XF/WvsA=;
        b=fe64PFY2+f4153LO0GFjH80vQu0kwylTTZoTQBuCzohggSiyuFL4NfS8NsmVRsH6k/
         Ttjn5I5KBNU1ZEy8NBRyWsveR22sl4562wQfuepMtMWr48JxKw8APBoEdV2DKaND8R2d
         IPbx/ma3tPFFgJbwkyOHEc6snBAs7luB9cY78+HGdguTFFxJOWTqH2R0+zT2BArhHhy4
         K9NfnMZtuIgbsnsBFC2fRYLt1knDvHD2sdLv9CmSFM1aZUcq/JxdAt/1jkN7enUWyLkf
         V9VYCeYG2Grx/o/DG0BZiby14/WUe2uh/ptZG1zxQjIYgZjclH/nIKw2hzh+fjtCFwlh
         ApVg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53202+XxmRbqHlURdNSOLO1jZg3qJhvlCM1zBB3jTmZqqSaLhsOo
	2fk5Roy0jFZgc7cQs2i5bz4=
X-Google-Smtp-Source: ABdhPJz16l3DD23nmghHnTwqwA1olgHZmdU9DrZ+4Wp10nJf8Tp525FbP3D1nHYxO7Y4SJ0cKwh8xA==
X-Received: by 2002:a67:6e05:: with SMTP id j5mr16457987vsc.196.1593703303000;
        Thu, 02 Jul 2020 08:21:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:3244:: with SMTP id y65ls785460vsy.10.gmail; Thu, 02 Jul
 2020 08:21:42 -0700 (PDT)
X-Received: by 2002:a67:ed41:: with SMTP id m1mr23325795vsp.189.1593703302638;
        Thu, 02 Jul 2020 08:21:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593703302; cv=none;
        d=google.com; s=arc-20160816;
        b=Pj64i3QRzMc3EVgjdXPPcSZJmlwvVM5hUyl6a+lBpUafrYBeCaDU5EcPP+63/QfG4+
         7ajjyBpT9gNorAqSN+sjZ13XiwLFfQoMsUZDBvYbgBdP+U6C59Aa30D26yibH132EDyk
         BwGi6ChT+mkTyKDL8pkEdjAlazt3K6NDOH0u0R3pUPUKor6qb9Muhqz6RI27kA/L60ap
         5xzR+KAirnaRnzgkN8lFVMG4c0Bmipn72CvOQpfNoxgMC6rsxGyvXj21W+AKULSjjnHC
         BoziGMn+3IUF67yU5RclNwTm98YBaiNqb+8BvisT9feT2IFm6TnE2RZmTsoSxHCZfbAE
         8BIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=85NgcoW6jBNBGz0tQzl+oqewL1I9o/iwYquf90s0iyI=;
        b=g24g40N5FI398aKS43rTllUFOgD5OSLZVx+t9/gp3cN8h40aqgFQ89GHRR4x1VIvf/
         y55SV36txmMkt+M0vyb/1s2vasmzPIIQk3O6H4nwtUhaoMTE9IZTATrdx1X/7hjqxCBk
         r62a1kcV5YZLz6ZBYm5ji5hSVe4NxaUymhrxd+hnRCPryI7kNeDPbPPtCgs7gkNAKU5T
         HEzEAQ19Pxj6FHsAXi0X2PSpF7tvBSVOpDXAhg9SVerGETHHyB+z78+L/Rissv44Ct+B
         Sd+reZGqPd2F3bK5lbHuKUXVBQnNDWTejJY06GYHNVc+Ni+guSErtigZFdFDWKaQzu6Y
         L/oQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=fz3Jh9Eb;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id y7si291073vko.5.2020.07.02.08.21.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jul 2020 08:21:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id s14so11433796plq.6
        for <clang-built-linux@googlegroups.com>; Thu, 02 Jul 2020 08:21:42 -0700 (PDT)
X-Received: by 2002:a17:90a:cb0e:: with SMTP id z14mr31267430pjt.140.1593703302136;
        Thu, 02 Jul 2020 08:21:42 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id c19sm8151174pjs.11.2020.07.02.08.21.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2020 08:21:41 -0700 (PDT)
Date: Thu, 2 Jul 2020 08:21:40 -0700
From: Kees Cook <keescook@chromium.org>
To: Mark Brown <broonie@kernel.org>
Cc: linux-kernel@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Alexander Potapenko <glider@google.com>,
	Joe Perches <joe@perches.com>, Andy Whitcroft <apw@canonical.com>,
	x86@kernel.org, drbd-dev@lists.linbit.com,
	linux-block@vger.kernel.org, b43-dev@lists.infradead.org,
	netdev@vger.kernel.org, linux-doc@vger.kernel.org,
	linux-wireless@vger.kernel.org, linux-ide@vger.kernel.org,
	linux-clk@vger.kernel.org, linux-spi@vger.kernel.org,
	linux-mm@kvack.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2 08/16] spi: davinci: Remove uninitialized_var() usage
Message-ID: <202007020819.318824DA@keescook>
References: <20200620033007.1444705-1-keescook@chromium.org>
 <20200620033007.1444705-9-keescook@chromium.org>
 <20200701203920.GC3776@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200701203920.GC3776@sirena.org.uk>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=fz3Jh9Eb;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Wed, Jul 01, 2020 at 09:39:20PM +0100, Mark Brown wrote:
> On Fri, Jun 19, 2020 at 08:29:59PM -0700, Kees Cook wrote:
> > Using uninitialized_var() is dangerous as it papers over real bugs[1]
> > (or can in the future), and suppresses unrelated compiler warnings (e.g.
> > "unused variable"). If the compiler thinks it is uninitialized, either
> > simply initialize the variable or make compiler changes. As a precursor
> > to removing[2] this[3] macro[4], just remove this variable since it was
> > actually unused:
> 
> Please copy maintainers on patches :(

Hi! Sorry about that; the CC list was giant, so I had opted for using
subsystem mailing lists where possible.

> Acked-by: Mark Brown <broonie@kernel.org>

Thanks!

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202007020819.318824DA%40keescook.
