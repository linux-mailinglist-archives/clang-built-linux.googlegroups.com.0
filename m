Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB2GLSWEAMGQEPGESVTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 6004E3DC677
	for <lists+clang-built-linux@lfdr.de>; Sat, 31 Jul 2021 17:02:01 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id g11-20020a25ae4b0000b02905792fb55b0bsf13935454ybe.9
        for <lists+clang-built-linux@lfdr.de>; Sat, 31 Jul 2021 08:02:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627743720; cv=pass;
        d=google.com; s=arc-20160816;
        b=TxxeNnaxRk2fkwhsxQuavBCfGsNL1ZJIk+fxi/RyNCHrPmgH+AuFxcOdvClYEo3o8W
         wKKPZXMehptM13Q51cLueOnJW7+a7A+NOvJ+9KCmGMagT0zrHdEgZsgunXtnqoAhsTZa
         SYtvcWWLrfKSXuC7f7lk903rj32+wAcG4VJnw7yUGmBuF9Vu3BCOGXwMufzFm11nzPPA
         I+Fnaui6UYBQ5J07+Zcjn3Pqq1hrx9MC6+8cTCVPKgC2GyBEZRbO5xGk68wmdHH/0yDq
         4gHbmgQD3EfunuxXhLQKPWZJ6Fk1QNmcDaxtg8U5CLm85Cbr9UxIMwtNQE3CcVWqt+d3
         RCyQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=s9jao1jN1mNzHJxZZ5KHbTzCkuMw37Spe2/ctUb7EHA=;
        b=JC49aEVVUx7ABcxZvQ+Hb50NB+1FCzUZ7uX6qadEcVLLZybqpmkhJcdIM9yvN5JxaD
         vpraFYwZ/zdlzzGpY5KIEWWuicqD2FBdpffMnwR+lj97w5OUvjqV5SBaj/VybiTwnLrv
         5NzAu2Ojc+E6n2IPv/7JYpKJbCzJ17QCgajceVH+odq55U/9ObMDgIS/Ye+3SX4W5fR6
         NrT7E5HAMzzbKWhL/iILUybRv7k7ftZN9/i25Zf6C5+GXRxLi5zAyRG4v/DNjgkORFoB
         cZAbV2rgdNFkUQuMcXXCgrbIGJ/aaQNE8V9w6091xWaIuuTSqdx9WwjO+gbierxidL/I
         fRQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="Jx/NovSJ";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=s9jao1jN1mNzHJxZZ5KHbTzCkuMw37Spe2/ctUb7EHA=;
        b=jV6Q7Uw4w/oduhq475rS4f+0octkg9YlT1fayNyYY6NOoVtRCQ+n9TusFNBvbNwWd4
         Xiasy92QCpZAyYkv4NOWXG4BPgbLsz10FdOYDKLfCK1G6qjIPBiFikLVbceOz/O81W86
         Ft5oWS5U9yyHvQItq5eV3NxvB7HWJgsLgPbll/nkiyS0pzjmlJdbarDyEXeHwRsd9k8V
         ytRCK5gTj3eINbk7aNyIuQiAHRj0uunh+2QKO4YfffndytCmvGmdevumGX7X7ts7HL9Q
         3FZSut5U8PFJ2Yaz8lDNNK95YWk5h77iw5QZND4UFNj3k3FggjHGN4kXeBCAbeMzGLeP
         lLyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=s9jao1jN1mNzHJxZZ5KHbTzCkuMw37Spe2/ctUb7EHA=;
        b=a5QWC41SeCmmjat+ZsO9TWTs7ztMSKrTQjP5Gc7aM9LsZORits0+0Y1RANL+1LSIsU
         TQJ2d2Cz68MAbWSDQwH3fyWZiB6J0N7Qb2qqsgLPTuMzivmEwPJyWDhUR6FgiquwtSFp
         GQM3vn9/BqEraYDYpe44WZlCdRnluXGjEFdcG3fUmvg4cSmXcgFtTubEBUMwno/I2osR
         OI7BnADnCIW39m4FO4uYGEvkw2mP/4hLaMxpT6RTVMh0HKWeVJW60WeI6SsHH4XKyZva
         iRetsWlW64gY9VxoiVdF6lbk0eON/Karl7XFpG81bH5iuQdPKrLzScgUVp0TYTO1JbD4
         Dxag==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5325q5zjCk0By0Cdnlf7+PJPh4gDCxotC+mUBEBYCRfPXYoYdWqq
	XxKfBkpZEfgRbHRTUED5rUU=
X-Google-Smtp-Source: ABdhPJzgRfstsEAOvl3hEdPFhM7bC/1CuWYxuDuWza4zEWW3FxHTkgpiYvGg6TYsnd5myKzrlpVTpQ==
X-Received: by 2002:a25:ced0:: with SMTP id x199mr2697634ybe.323.1627743720300;
        Sat, 31 Jul 2021 08:02:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:6e04:: with SMTP id j4ls2213489ybc.7.gmail; Sat, 31 Jul
 2021 08:01:59 -0700 (PDT)
X-Received: by 2002:a25:b993:: with SMTP id r19mr9689106ybg.445.1627743719843;
        Sat, 31 Jul 2021 08:01:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627743719; cv=none;
        d=google.com; s=arc-20160816;
        b=Rx+iu0U12d/t2syKeJQfdem3m7Rjse7eFgCN1+OBZMqL0NTKbrIa4GFNfHI+u05JGF
         Hx1+zZas0zmiUhQ2N2KW1j+GkzjDG8PbohGm9gl4a4bSc0GjWAW85wOKKF0FRbuaOWDO
         YXrjEiQr3eeV56wi2xVVjl7rsRDxfSM4LzXdfEm2/LvAPwTUiqboUj1cOpjpYZ/j9pUY
         n1kOBDBwzvP2/9kB+bcxRtpRKUxM+hg/DH3E+fWsHGOOBpDEu8RcHxG03jcL9vwcU8V9
         3f4d3yzexmnPW21r8+MDed5vtBXcGKxvnrmT8JlBagLGDNoQ2QjAdR20n6qlsCdTyqH5
         VpdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=6NzNWl7LhGEt5gulXFub5aIXRWGd7b+RfXfHU7IL/eI=;
        b=txSiDm4+kAUG2ynRah4WBoovHTujElq8S9G4RRi1hFI4SfH3VU+zGtO4sKgwfIM0bz
         8E1OtnxsAROwT/wYZ4osfvSbfnG224uxbbvjnkJBQkofGpowfpqWbQOmOpOEt5MZrjhM
         W0NweflvHkwUVTfPNRwjQiW2uGalfcvnGe61Bl1LQDHBv5flR2OftuSbjtC0gTagpgG5
         LUuIANxRx/RZxLiuMWRgiQ30BndJg2Svnw+6VSvMsZdRYDc1VuZ1FOOU67g54eHhRNN/
         dlw4nqjzLyC2e69HNgv+L6aNAX5Fs3CMFREs7f/6aOAGvLSrAfJMLW6Yaxu/4qdzUshW
         NMIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="Jx/NovSJ";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com. [2607:f8b0:4864:20::636])
        by gmr-mx.google.com with ESMTPS id z205si424628ybb.0.2021.07.31.08.01.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 Jul 2021 08:01:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::636 as permitted sender) client-ip=2607:f8b0:4864:20::636;
Received: by mail-pl1-x636.google.com with SMTP id t3so12469821plg.9
        for <clang-built-linux@googlegroups.com>; Sat, 31 Jul 2021 08:01:59 -0700 (PDT)
X-Received: by 2002:a65:53ce:: with SMTP id z14mr2617394pgr.275.1627743719538;
        Sat, 31 Jul 2021 08:01:59 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id jz24sm1857832pjb.9.2021.07.31.08.01.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Jul 2021 08:01:58 -0700 (PDT)
Date: Sat, 31 Jul 2021 08:01:57 -0700
From: Kees Cook <keescook@chromium.org>
To: Jakub Kicinski <kuba@kernel.org>
Cc: linux-hardening@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev, linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 54/64] ipv6: Use struct_group() to zero rt6_info
Message-ID: <202107310801.D50070F@keescook>
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-55-keescook@chromium.org>
 <20210729115850.7f913c73@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210729115850.7f913c73@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="Jx/NovSJ";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::636
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

On Thu, Jul 29, 2021 at 11:58:50AM -0700, Jakub Kicinski wrote:
> On Tue, 27 Jul 2021 13:58:45 -0700 Kees Cook wrote:
> > In preparation for FORTIFY_SOURCE performing compile-time and run-time
> > field bounds checking for memset(), avoid intentionally writing across
> > neighboring fields.
> > 
> > Add struct_group() to mark region of struct rt6_info that should be
> > initialized to zero.
> 
> memset_after() ?

Oh, hah. Yes. I will adjust for v2.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202107310801.D50070F%40keescook.
