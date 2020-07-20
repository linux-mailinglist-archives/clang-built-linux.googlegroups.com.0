Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBGO22P4AKGQEOLRDIZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc38.google.com (mail-oo1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id D8729225523
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jul 2020 03:02:18 +0200 (CEST)
Received: by mail-oo1-xc38.google.com with SMTP id m1sf6881132oom.23
        for <lists+clang-built-linux@lfdr.de>; Sun, 19 Jul 2020 18:02:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595206937; cv=pass;
        d=google.com; s=arc-20160816;
        b=XWmMeLb4iT/5e115IvuQ9mkfiDkX/vwe59U0H1m72+C0E9UMws9c13cW0JiQuE3TwB
         uItkD4SnHRRniMlu7us5stZvMZfqZCUAMrc4UkhHGb0DyuJ6x2LL2pFwmME28Prvm4BC
         aQef9MI2q0zJl6W6jw1cGj1GRRJHFT1wK9rs37BBGRnX2Mx+S8CBfAIsiwockctZRL+x
         ugabEDVZnPvfRzQvV69UShgTENbjQL9sXvJJJCz9IcA98KSt+xrwp6UqU5gxyuXbs+U4
         +8kGKKCx0JvDTKS7NXabTeXdc0B0SdPJHd0/JK3QWa6a//rnuXcb5L1mATnnZJHp8Xcz
         MnMg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=mN2Ra6AEPr20/83hKxO0T65Z1oWy4XGHjVuc0DwZblk=;
        b=DYK6dO1d9Xl2mkmlJJgwO3ASlAGFOL5HRmt1g7hzwF3rgK2ikcoqHwwK2QKdL3lfNU
         oaTfngsa6LWNFvBtZQnoS153B7UKEyoQhTjgo6Rx43rlQ2zw8S2wiokkiLSpkph1T4Xr
         e6Y++wVzJMIOjX9lZ00FqR4HJ9mee2pJAero79GFezuCqMNv1CPxDQ7Sobx6RCn3ee5J
         zx83jCULVJ3SNjOQhzGvHD+4cNF6Zmq0ecb8KafzZ8wCNqogffAug1o2IYzbGthyadOL
         OroB4ZZdDy86ndGabOrok55m+tGu4PlIdmALLTpDKIowLWe2AEoTc0r/VH5dIFBjoWze
         rZhw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=YzaOgEgb;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mN2Ra6AEPr20/83hKxO0T65Z1oWy4XGHjVuc0DwZblk=;
        b=TxCcEwaDKt9eUof7d3ZbW+SziTIaxSzcFJYrYxk4z+fKeeC175OcU3vQVc3mtu2664
         iWx031wiMepTZ/XN7jwFSQFThEaMHLILskJGXhsmiy+hjy02NwVd2svMqW5rSqM/9Q21
         3yEUqtL3k+avgGQ7SyQNkCEfsgLCrJ6QP9+BTCfaEdtmIAWBwaVyM+ZkzQb7LreC7LPP
         C15p2qMelwyv964UX62PaE+727w8K5c+30fzCiBm85TGU9TxA/fjHoqNuisoLDTKCGbG
         5Zh04AcDr5C6voJqjHlvkoXXPSiGK6pW375wdNdvwCi2PNZhnIq249ONARLs97UOA++B
         nd3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mN2Ra6AEPr20/83hKxO0T65Z1oWy4XGHjVuc0DwZblk=;
        b=hkSc1RFWVGqpEogWawtXvHGle92ZrTTeUymlhZWOJayXBSZQpmJlvnmlbOjxrzYkZF
         ZR5Zp1wHZwv60Dqbs4KhmTebb9ykm4RJ1aP9NoRUoA1C4JpR1hJfUNErQAKH4nZL6lbK
         wU+YjOv+jBDyIE95tprtQMfOIXKZ2QoNZQduAC8dfqAyNTcUopJftvXhzWB709A0iAb7
         5siIRhTQOr+7qvRaWYl3ZmzADiBGgtvxgCI2DaNoViRIklc14VhkUKKXDklAyxvAjfnq
         7aHNiFuisOHtFTCLQXz+hvTMrWAF75noNf/59FZQ6cw+FZDiikkA4OYo03rzJIkALub5
         PjRQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530XpZeLfXUjsV/oMuQUpZQ0PtTob3NfAvWUucVINYJsB0wCvvEi
	luuVqXnEN6uYTZoIQcRvtcA=
X-Google-Smtp-Source: ABdhPJwxZ5bGLEvvXM18FElVgqeCtsSoqqKnJdG+Y3W90RNi+XZ0ZkQvHvOt5qxekNXwc2E4CY+EvA==
X-Received: by 2002:aca:c391:: with SMTP id t139mr16629690oif.57.1595206937352;
        Sun, 19 Jul 2020 18:02:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:72ca:: with SMTP id p193ls2532407oic.2.gmail; Sun, 19
 Jul 2020 18:02:17 -0700 (PDT)
X-Received: by 2002:aca:750c:: with SMTP id q12mr15995170oic.61.1595206937105;
        Sun, 19 Jul 2020 18:02:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595206937; cv=none;
        d=google.com; s=arc-20160816;
        b=M282liszJRF7YB8ZFMReirhjLXnnN5XD9EqlQjYogOQdtdcQtJ0X2KYg0BdrcbNNnX
         VTlThVHLAbpsdY4prDzQLC2TK/XcgPP9ZOZvvfAG6vt+2eKE4UpqHpjbWf5H9xuXnp7W
         j0fKS9RSjHzFXnK3AcgJ+ghDmejRZlGvhXStFHrqKZ44b1ci4vf7zHxw7McvsHvWfHXV
         eNFVUTP1jEPgR43p4efEWM/FdFHktfr3RyLDl+IB9lR+MGVH664FZImgchlJ8m9OFU+g
         /9MPqWSD23SyqgVsitW6Pt2VK9XpnKMay65fqKK0AJs77WzrbSVMXXMPv2kRrEFsaSey
         Ueww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Ca542pBq1PPBrcky+qLS22aaKt8lZZIIoQ77Avc1ldc=;
        b=jvQc9b7mgGggMsBkim1yn/OOEkA9vkPg0F2k8qQhZSnLO4Riq1qDmbZiyARP07sLC6
         ioWBisx8R9fSuHEpy7yYaX1EpFNqB998eJJuK7cAHxwqsJlFNT7q7ewyofn/6Gt4404T
         sYQ9edwNAZzQEPI+bNlqJ12xX3O/hJT4dn2OnMIkDHwklHp4eCCQbCH2zumMJ9xQKHzk
         7ZBCu7Bgg/kFUtVrE9ET1/AVs4I9Q3J+MWdOLZbaEq+oIPZ286+fiWRtxUKUr67I5u2r
         wVAn6xg0sE/fIwUSU+ljBWhIx/nIbIi/f89peDdci/TCH1yk2OpXfHG1dZC9lpTUAZjq
         THww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=YzaOgEgb;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id l6si737478oib.5.2020.07.19.18.02.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Jul 2020 18:02:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id t11so8206124pfq.11
        for <clang-built-linux@googlegroups.com>; Sun, 19 Jul 2020 18:02:17 -0700 (PDT)
X-Received: by 2002:a63:cb03:: with SMTP id p3mr16640113pgg.444.1595206936363;
        Sun, 19 Jul 2020 18:02:16 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id r2sm14441026pfh.106.2020.07.19.18.02.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Jul 2020 18:02:15 -0700 (PDT)
Date: Sun, 19 Jul 2020 18:02:14 -0700
From: Kees Cook <keescook@chromium.org>
To: "Daniel W. S. Almeida" <dwlsalmeida@gmail.com>
Cc: corbet@lwn.net, paul.walmsley@sifive.com, palmer@dabbelt.com,
	aou@eecs.berkeley.edu, gregkh@linuxfoundation.org,
	tyhicks@canonical.com, jpoimboe@redhat.com, jkosina@suse.cz,
	tglx@linutronix.de, steve@sk2.org, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] docs: process/index.rst: Fix reference to nonexistent
 document
Message-ID: <202007191802.E3B03B06B0@keescook>
References: <20200718165107.625847-1-dwlsalmeida@gmail.com>
 <20200718165107.625847-5-dwlsalmeida@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200718165107.625847-5-dwlsalmeida@gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=YzaOgEgb;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444
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

On Sat, Jul 18, 2020 at 01:50:59PM -0300, Daniel W. S. Almeida wrote:
> From: Daniel W. S. Almeida <dwlsalmeida@gmail.com>
> 
> Fix the following warning:
> 
> WARNING: toctree contains reference to nonexistent document
> 'process/unaligned-memory-access'
> 
> The path to the document was wrong.
> 
> Signed-off-by: Daniel W. S. Almeida <dwlsalmeida@gmail.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202007191802.E3B03B06B0%40keescook.
