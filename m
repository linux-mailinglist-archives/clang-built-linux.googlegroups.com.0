Return-Path: <clang-built-linux+bncBC2IF264UIPRBUWNSCBQMGQEPK5PPYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id A3B6034FA6A
	for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 09:37:55 +0200 (CEST)
Received: by mail-yb1-xb40.google.com with SMTP id 131sf1336386ybp.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 00:37:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617176274; cv=pass;
        d=google.com; s=arc-20160816;
        b=hzUkYO8y8KUbDjjIZ4kF+0uvqMwguGnhGqQi//laCFggX87Po0I1i6fYwrooPpAiFK
         txRIwemgSu23XD2u70FptocIpOUbz2wexLRHnEB7fM3IIf95CBttSshcJ33m3cKiBzru
         aEKgZnWwwHukOEK6XB7vmwQNmJwFFOBQPKsrotb+LpSpcl/yYIckMnqbh2ejEeQcsmgF
         vwCgrQf6mU5rYANwcKmUvTYoWAsZmVHMw5ec2trLTwwGebzBGc09Ibietcd/6jzOpj/f
         nrWDkT2FmcoS73EUF2FJMunGMkRZfl4NufZnibQkArb8HuNp4Mtyt7+3zRqCuxejwb8I
         7sWQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=IDxnCLjhD3fBVDhgtfTSvON69y/1xjsDB7demdbiBjQ=;
        b=wYjC8L/AIaN8tcIAutK/FP7FQC1iyvtPFULOnNbDJkm2iyv31JrLIhfn1ypdOiVI9f
         WwXdWX30Q9fZ0+6giXKhV1S5NMu+5T/eN6o+lHNrUPG0nowJ1pJ1EvdhZYk+f8TUIjku
         qtdQphmUumfBpTMY7QXY6xpri17A+4wjmzvr7VKrimExxeww538KVuSot4Vnb0T9WWdN
         SFxcvTSUGbwnajkR9ex7pxxrE59v8hE4/8126l8yidUiiBhuqNe2MxdUOPuG1eQpOrmU
         3YAE2to7c3tVXXu1KhphqDzd9BvnSF3V/GVM1W0pZPJoY2+WBdcqUF6zfw4zEMe6Cwap
         lhnw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of enric.balletbo@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=enric.balletbo@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IDxnCLjhD3fBVDhgtfTSvON69y/1xjsDB7demdbiBjQ=;
        b=PAGf2UzcGatbkdpuxZjQjT12W3G98Wf34sCLWsxgfiuIVkao97tsYYASCUemnr6LkE
         JHgg18hKYeuMZDIrnaMUB9ebu6JBnrP+GPveHlvz1qs9PIXUU6T512XMQ+OIoQTs97Oo
         Uq1qfrTxtuB3t9eH+BkwcPpb7zzuEOJRszOLmJdMFJFrAYeOervmsdQPMJ7rX1d0/nc+
         TDZr68BjVaQ/LDFcq3Y8T8PYW03PJmUThs0gTAnYlIi7eM7XoDuVULtPF90CDWT8HzdK
         3/TEFVn9tFrLj5wdLndI4JetRnDgBC2uNE3CDB2pEUZJ30+BKrpobSjtgaUYj1xmgB9C
         tVOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IDxnCLjhD3fBVDhgtfTSvON69y/1xjsDB7demdbiBjQ=;
        b=s2AJLrzDU8zu0V4ckbgchrm9KkA5aTJXmyprg6a0kj8s+eVPIIAUNCzFjm8VHJvHH7
         oVkiIyVZWNHMydiCrNey/aH6Og6UtJ9SqVQjS0fJCq16JKyx77w7WOkuCSm6v/u8+VPN
         5Jm/yDcpKTZbg+hcYmBGC4QNRrLJhKcOfhDySSsrXUt3Sr5OSTpZbstUD+1ucOgUDiIe
         LTz4pigD4WEwXWh1233grjQMZpS+2xfE59SdYCD4vTKlPFK/7DHb6kjyoq6N1JQSnVgT
         e6RwhIti8FIxF4AuVhXwuu70bRjBAh/f+l8srNqCZBN+d6xhfdaB2njPgchbF3wjB72j
         d9pg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530cpiN3lQ2wL0JLBs69mo9VJQbOZzvaVbW0gk+kha7oHcUyRpZ2
	6IgMTG7DQLu/nynz0I31qdc=
X-Google-Smtp-Source: ABdhPJw5OMXWeQBhdwH8cZA3Jkl89/ycZPRXmXZy+jn5WroTOzrskmhGh4W+dVeGgSGkS5fM+0R8vA==
X-Received: by 2002:a25:e617:: with SMTP id d23mr2876535ybh.9.1617176274680;
        Wed, 31 Mar 2021 00:37:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:b909:: with SMTP id x9ls631027ybj.9.gmail; Wed, 31 Mar
 2021 00:37:54 -0700 (PDT)
X-Received: by 2002:a25:ba87:: with SMTP id s7mr2756611ybg.222.1617176274223;
        Wed, 31 Mar 2021 00:37:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617176274; cv=none;
        d=google.com; s=arc-20160816;
        b=gZ5XbmyIaY9pTL9IZbnwZ6IUWm0aijUenThrpd+v2wm02mWd3n9BGMpB3NQTnRsL6/
         +f4xYJl0mCBkcXYsneAlVbNa2zeP7qwXbayIPET3GzIVzbrRJolbGADV3aD9dVFU8njh
         wx6kGhkx2hh667zRM2ZuKCkPVwzqK93yqVHUCww+DGAe8hxsXsDys0Y2PEp0D54CU9x8
         KH1xZmFtKQdTKlqgihrAab/QpD6xKKH7B7ENYGngiRymnR5Gu/Y779+rsZldZyAmPVRZ
         LVNP5rfkI+9q7JdxSkxxQHdF8FyNKWYy31a1APz2vp/OAtyPqK/ydlZZrcrKUA1Lkat0
         hfJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=+mzHZ047Vv5rP9BzVPd9W7MJNU8u8ZG5j2Vx+kRTsI0=;
        b=qaiEDim1l/QcNniMAa2fq2wHgf8oDXzI75u+u8YQRWmq7Y7qwwNdxoVv+ytMDdZe/Z
         /G9AEKfAhre7eVbV0661VVYivveMVdisAkyVY2EX2LHizW3/UWSOQAX97a67TPOcnMPY
         EH7z/tI8JMwk3A1SiY8TalzDNj1RuPrv4Fyfz4jPd2BuFYjxZEZtzGrPW3u/OX/OMsI4
         7DVbVGmU+o0rkDnQ+r30BPBP7UHOQjkcFH/rW5COkxRvUF6OZo7TUnYIBrvRqTGs9EVd
         ANEXHpDMZi265Y+zJd1y4gJ3W5ESZVNG/ZMZxS++djLfzdeCYDbpLgi/AUccLKU6bQ/o
         j00A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of enric.balletbo@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=enric.balletbo@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [2a00:1098:0:82:1000:25:2eeb:e3e3])
        by gmr-mx.google.com with ESMTPS id k6si86157ybt.0.2021.03.31.00.37.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 31 Mar 2021 00:37:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of enric.balletbo@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) client-ip=2a00:1098:0:82:1000:25:2eeb:e3e3;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: eballetbo)
	with ESMTPSA id 637881F45429
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
To: Nathan Chancellor <nathan@kernel.org>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Arnd Bergmann <arnd@kernel.org>,
	Prashant Malani <pmalani@chromium.org>,
	Benson Leung <bleung@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>
Cc: clang-built-linux@googlegroups.com,
	Utkarsh Patel <utkarsh.h.patel@intel.com>,
	Guenter Roeck <groeck@chromium.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Azhar Shaikh <azhar.shaikh@intel.com>,
	Arnd Bergmann <arnd@arndb.de>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] platform/chrome: cros_ec_typec: fix clang -Wformat warning
Date: Wed, 31 Mar 2021 09:37:42 +0200
Message-Id: <161717624818.4118309.17703664770897659047.b4-ty@collabora.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210322115602.4003221-1-arnd@kernel.org>
References: <20210322115602.4003221-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: enric.balletbo@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of enric.balletbo@collabora.com designates
 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=enric.balletbo@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
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

On Mon, 22 Mar 2021 12:55:55 +0100, Arnd Bergmann wrote:
> Clang warns about using the %h format modifier to truncate an
> integer:
> 
> drivers/platform/chrome/cros_ec_typec.c:1031:3: error: format specifies type 'unsigned char' but the argument has type 'unsigned int' [-Werror,-Wformat]
>                 typec->pd_ctrl_ver);
>                 ^~~~~~~~~~~~~~~~~~
> include/linux/dev_printk.h:131:47: note: expanded from macro 'dev_dbg'
>                 dev_printk(KERN_DEBUG, dev, dev_fmt(fmt), ##__VA_ARGS__); \
>                                                     ~~~     ^~~~~~~~~~~
> 
> [...]

Applied, thanks!

[1/1] platform/chrome: cros_ec_typec: fix clang -Wformat warning
      commit: c6e939c63c80c26460b25cf1150ebe8396e8adcf

Best regards,
-- 
Enric Balletbo i Serra <enric.balletbo@collabora.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/161717624818.4118309.17703664770897659047.b4-ty%40collabora.com.
