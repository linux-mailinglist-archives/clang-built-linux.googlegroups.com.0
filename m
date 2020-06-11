Return-Path: <clang-built-linux+bncBDIPVEX3QUMRBXVQRH3QKGQE652MEWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 4483E1F6C00
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Jun 2020 18:14:23 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id u186sf7160816ybf.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Jun 2020 09:14:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591892062; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ic8C5sghZyTD1Ph55S15MHYEhuRyt92iLzAx7YtJrT+gP9iXQDqczZUqjHWYnfns5r
         BCDJDibRADPxdpn3MQa9mj9CpyP33f1nR5LWBcbGRrUFX+COfhFFywN8P/i3kMPik5L9
         VMa/GGhQ5O3xO9XwlfxHWeVC2i0W+W7OM7rFAGP12ufhxCWh7x8vq4UJ4HfmIQv45oW5
         2u/Wj771hCYSoU3yznO2UYJsgryGCCCmHiGlvrdAG2TEyn9nTYb1lwqlL/T7jLyQhXc8
         DH/pFjfbHawoh+lfORTiWNhnm8XqNIO8RnypzzEx1XuY/qqCjvHd9+oe5/zaMTDxRa17
         Xwmg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:organization
         :references:in-reply-to:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=QrjohSfE0vMkUNOIFnW3VRtM0eIOLr55PRDK5TAoUvM=;
        b=i1MdcV/2ZwtWuHulwt9aZXiGEVNS/h/zY/zAp0Bg59ruHYQMgPz8ZGGRiJ29F89t3J
         8GMKmV1DviQJBf/UqFXvHUYwLxeC7wOJRxjNIek3my2t3cB7hgswDcYJzREkzSEVogYs
         /BT5Mv2Yc0geYNwO+Lr3GeFGv2YzFkXrzCoLJdaW3V/fQQxQ9zdXSMGh6K2DRxk+rofJ
         za46J+h3mvILbNN5YKVlsm9nZ5ZcWSjxM3HDfRAgO51fQn5U5Gu14IAeQggXMXVrsx0X
         Bu8mL2FD/LdWoOgtFMe7Z6fY49TQG/4auqRGsDBR06fdaAiBmLnFKimQqz+AYfM+i+8b
         3SiQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of corbet@lwn.net designates 2600:3c01:e000:3a1::42 as permitted sender) smtp.mailfrom=corbet@lwn.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :organization:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QrjohSfE0vMkUNOIFnW3VRtM0eIOLr55PRDK5TAoUvM=;
        b=mya3rKVukOdxTfwz+CHCufKG1NYBJcyWvNi7VXCqBFonGNZjW7EvKXSr1cYfTrUIdM
         /VL+CZxzNbxgHIZQksbi+vE9Ss6XPX19VzmYJrIvo0m1VrKEndJ4FTzLEXUvhGF7pW+0
         +7BCVGIB6en8sZ/EFXV+YAj1gFjPwLa64n/fInlkPrGypovzT0QfXxDVZpHUoUR+eFsu
         T9rTSAR7d/0i5hRkqGWkqFenjsfE3px/T5FQKDBDfoiXob//hmm2fPikF7/Df9dOOtg5
         oIeYokFEt6AEN8/I6lEAgqVAU0gZT8Ou6M6Xq+GVongatfSTv8hdft+wbWwS5mq3nus5
         CuQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:organization:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QrjohSfE0vMkUNOIFnW3VRtM0eIOLr55PRDK5TAoUvM=;
        b=RlnIeHQwZpNDb/0dZy16JT1tVESIz26VbQgRAXpgBwHfB3/YiHJc2hsscAlQa6uraC
         sB3NfXf08t+gGXLSXP5bQLNDMSf0hRMxONMizxTFjP6Jl+UXtrT/8OVKcxtf1e0W15B8
         k6rrlsIGbU8Vd9CuC2XopCX1ZwolQMt8D8Q2DEqyz9bjD4oRhbHE7e0PZG55+mROHdCg
         rzYVS1PECM+PirDSMkckfHMZzESwzfuasXr2PzoIHOlGn5zmKjUtCgbR6fVGj/vY9Ihp
         /DPd8yfAz3qgL1m/OVF2B7ac5IqIoKdj7a8lpNi5V3dZKyQto1OchTI5vafxW3+G4Brp
         n9hQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532/zntmUK9CG88qgAyBPuP/cCrGxm+rRlQZT+gbWmaLI4+14XWF
	FSAff935aIcFoLxI6+dGW8M=
X-Google-Smtp-Source: ABdhPJylwQBOCWf2Rw0YM5LVi7LkFquK1ZH29mWj7+htLBxVzVBpkelgySCTkCtQIeFHwXGTmQ24rQ==
X-Received: by 2002:a25:44e:: with SMTP id 75mr15476518ybe.388.1591892062279;
        Thu, 11 Jun 2020 09:14:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:4192:: with SMTP id o140ls1060920yba.9.gmail; Thu, 11
 Jun 2020 09:14:21 -0700 (PDT)
X-Received: by 2002:a25:d992:: with SMTP id q140mr15975513ybg.213.1591892061924;
        Thu, 11 Jun 2020 09:14:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591892061; cv=none;
        d=google.com; s=arc-20160816;
        b=kqcqsr7a5hM6HDTHxraoGPDQ4rpdbuRPwZxHPp09LTzC8Ki/YCUV9zSY6piQWVLAz6
         wnShB5oUcC17Bg58yD+eUEb06T2XTX/TqWY1+JbVAo7G+6G0KTFOmPSgTdPZ5evPL4AU
         xK6SrctNHvmyR0pnyENfxXY2X8rf014P8qHKDvUgh6cnC1Q79T1kS1uTkaCqd2oDwufY
         TQSMWBI2qzIDM+g5zQYfNKiXk+5INztqWjz1RSxTZ3W9xBh4UH+bcH918IKuRtc3mduQ
         sndGOspTR2nWqxqlE1M33SdjGZ1zuWes38OmP6qFODYMKTftre4VbC9K56wbvUoPH22b
         NVFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date;
        bh=RJW0nlmmpMXl0/C1gXcuPSqP0P5xWcNr4owe5cZK2kg=;
        b=p439lSepjutwKpsAbqXWCAbFK0VlyHQVJ2AEdIidEJlkguqeikadNb2XY7awORHH5/
         gJe2YwF6FXGjNuIVALQLjGiFPkYJhU23QjBNU5nvPLqhj1m5vwgeYO8EMMAMi40QuNwd
         AoEbo1Il0T/H3P6zCbpEMr5EmBsOeLL1GJ+nWVbRX2QnX5JcfU+B68X6RaEnKBUBm1RF
         61qHYQc2rnPCuYcQoFZ+pOMTkr+c18RJlYLLQLpve3FuiDFCe00x2bWXNqwxs8KkR24g
         O4hbuSRtwaXXQYaY52WRsCIe+vgkTn6aF+vFGp/Xle1tfV2lJHWzDnVhvOeYZ8jtunH5
         7OTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of corbet@lwn.net designates 2600:3c01:e000:3a1::42 as permitted sender) smtp.mailfrom=corbet@lwn.net
Received: from ms.lwn.net (ms.lwn.net. [2600:3c01:e000:3a1::42])
        by gmr-mx.google.com with ESMTPS id n63si269108ybb.1.2020.06.11.09.14.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Jun 2020 09:14:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of corbet@lwn.net designates 2600:3c01:e000:3a1::42 as permitted sender) client-ip=2600:3c01:e000:3a1::42;
Received: from lwn.net (localhost [127.0.0.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ms.lwn.net (Postfix) with ESMTPSA id 347976D6;
	Thu, 11 Jun 2020 16:14:20 +0000 (UTC)
Date: Thu, 11 Jun 2020 10:14:18 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: "Alexander A. Klimov" <grandmaster@al2klimov.de>
Cc: Kees Cook <keescook@chromium.org>, Federico Vaga
 <federico.vaga@vaga.pv.it>, Mauro Carvalho Chehab
 <mchehab+huawei@kernel.org>, David Sterba <dsterba@suse.com>, Randy Dunlap
 <rdunlap@infradead.org>, Theodore Ts'o <tytso@mit.edu>, "Darrick J. Wong"
 <darrick.wong@oracle.com>, Pankaj Bharadiya
 <pankaj.laxminarayan.bharadiya@intel.com>, Jacob Huisman
 <jacobhuisman@kernelthusiast.com>, Jonathan =?UTF-8?B?TmV1c2Now6RmZXI=?=
 <j.neuschaefer@gmx.net>, Rob Herring <robh@kernel.org>,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Linus Torvalds
 <torvalds@linux-foundation.org>
Subject: Re: [PATCH] Replace HTTP links with HTTPS ones:
 Documentation/translations/it_IT
Message-ID: <20200611101418.40847b63@lwn.net>
In-Reply-To: <4196faa9-64d3-481b-9c15-bb4abb237c18@al2klimov.de>
References: <20200609201241.81518-1-grandmaster@al2klimov.de>
	<4235548.LvFx2qVVIh@harkonnen>
	<cd260d03-27a4-7794-f58f-21e8e0be9755@al2klimov.de>
	<202006102009.CB14D7F@keescook>
	<8ee16c38-e28b-b4e6-ed30-55a59e216b49@al2klimov.de>
	<4196faa9-64d3-481b-9c15-bb4abb237c18@al2klimov.de>
Organization: LWN.net
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: corbet@lwn.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of corbet@lwn.net designates 2600:3c01:e000:3a1::42 as
 permitted sender) smtp.mailfrom=corbet@lwn.net
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

On Thu, 11 Jun 2020 18:05:37 +0200
"Alexander A. Klimov" <grandmaster@al2klimov.de> wrote:

> Once the doc subsystems patches get applied (or even reach 
> torvalds/master) I'll submit maybe ten patches at once. And the more 
> maintainers apply them...

The first patch is in mainline now.  I'll deal with subsequent ones after
the merge window closes.

Thanks,

jon

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200611101418.40847b63%40lwn.net.
