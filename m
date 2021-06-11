Return-Path: <clang-built-linux+bncBDZKHAFW3AGBBZU3RSDAMGQEW7WMEZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 98AE73A3CCC
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 09:16:55 +0200 (CEST)
Received: by mail-lf1-x138.google.com with SMTP id bp8-20020a0565121588b02903055a19d65asf1316548lfb.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 00:16:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623395815; cv=pass;
        d=google.com; s=arc-20160816;
        b=GSgyuURUnZ8Ig4C9MwNsxFDXj1Qmyow6HleTUefCnd+F/mV6XkjOeEca9n5mPLAbeO
         FzcjYlWv63CeQL1XZ1ABJnUxOC4tTfyOLVER/hdbOvT338EmmduB/Pbs3U3xyl+TWL9d
         SVeKrVNACtsDymf9uIMHX/OSPpYWs/FwrMz+GiIB3GIJltyompTwX/aJxGZZQsY45sc+
         94wss1KuiYf3fahW1Oy7zPIdsf1zItG0la0FYJyAdJIm0PE7Myew++JL2HoQKV11JSvB
         dkaKkBScsyjI1p7YSb/oX1a3X2fJIXJW3ypa7+276TUu6KbrwIFMreA+2nt+R4MF+KJj
         0IRw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=QVgGB2TrbER1LvqYt9N8dizCHptwDDA5mzBDOiIz9WQ=;
        b=ejSej8Ogei0ZI0aYiM/g22GBNTN3iKjCaQLtgtRfCJI+oGsXkcl32o2pxEWnyNvIer
         tM4C0duoPiE0UgMXh1CypbSu4cX14nX0F8RWbm2NNONJKPmBCM/xD4C5Zf2b5ieKhzDO
         3ZPjKT2woY1zkijU1iGDH8BonzZ9Oql1gwCA2v4IeV8EwluutS+dgy8BYidXj4mK9BSm
         cAygsE++MKXTL8fSkpKWhWhbs1X7vtEpjVUKXiNzMB8hBejUA+8Pr9z/mXNUFKHX0M9C
         AD6YI+/Vltrdy6f3AZBMg7/qhcIfF3xGAex6CxTcIAgveV5IcNk9GAL6gzA8ZSbM5tvc
         FJmA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=WwXQrYAC;
       spf=pass (google.com: domain of pmladek@suse.com designates 195.135.220.29 as permitted sender) smtp.mailfrom=pmladek@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=QVgGB2TrbER1LvqYt9N8dizCHptwDDA5mzBDOiIz9WQ=;
        b=Bva37L1dKtpTWg+GJPv2bSDTZLajUHWgdNUyxpxyQnG+XqoTFpGHp8HgqJnlaK/9bE
         Te7VYn9qhz9ash266vAnk5Pf96m4x9dlhfPJTaJ7a0gHWWAS2ilYYKoP383AC2VWXL08
         JR9in1DT5oVPzaHrXBobT5rb6jrgSWIP/dpyqrBxNWLDBUWMYXf/OBxEGKcNxuU+ldhJ
         sou+v+qiBIKy6Xb8WbWXzOJGnAxdHATeIbTTk2sVcZ//hH5QewM97XcreLq+5ItAm74H
         wdCQt7ksMn5qv8vG9yvSFHEutNMILjOwmmaCzCNW5elSrJErLI2jvlVZxk5mxkUYSEJ8
         0Mdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QVgGB2TrbER1LvqYt9N8dizCHptwDDA5mzBDOiIz9WQ=;
        b=UQtj7N6lGEwpTJLYT28bDXTih103PMg8xHbU2F4EMxBKxD2xq+r9p9jN3I7pSzrtyi
         W2CY+MfleOkFhK9DC7VWRmCPJGGeafe40HatPc9XgXWIJPoSMtBKE4IuTNxkjbSGhBhy
         CUEOBCiMuyWjAnNOby/7VYambh4sOmzriCCwWLYk+VERrTtoQdZ5T0fR2IJMeWQvAaQ5
         ZQtqeSh7l+0blhb5gQ4XK2sGJx5nPzPdj5A66oC2j4rxxqeZaXMuZuWg3xDuL0ZA9B7Y
         Zlw7xvIyHC3PvWHahRwZdjQiedUeSDn12owJjaszmgGPt7LjxmRRRAHZAvoJdoYVIZgr
         xMzg==
X-Gm-Message-State: AOAM533tfxiA95ovycHQtGK1WduMM184SrAmi3p1Uder5Elv244T0UFM
	rwTX8Vt5BGWewzSTufm80gQ=
X-Google-Smtp-Source: ABdhPJx7bHUdXpJ3Edqfx+bLGqN1iUpNwbrXyw9BRIXwY+HhRMWO7z4xl2U5bEZJN3CSmuGO3tCyew==
X-Received: by 2002:a2e:a44e:: with SMTP id v14mr1882814ljn.243.1623395815112;
        Fri, 11 Jun 2021 00:16:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3b0e:: with SMTP id f14ls155170lfv.3.gmail; Fri, 11
 Jun 2021 00:16:54 -0700 (PDT)
X-Received: by 2002:ac2:41cf:: with SMTP id d15mr1656911lfi.574.1623395813815;
        Fri, 11 Jun 2021 00:16:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623395813; cv=none;
        d=google.com; s=arc-20160816;
        b=BE5lYDdjJUM2nKo7VxBk0V4XQ57anDTALYyt7Uc4gCpeEVgfp46LgYRlswWtOZ4g06
         nmOJYIuNmuH9l8Zjgcv3JS++uajEecOFBOPbL9ZVZS/+6CoAizis0IwWZVVuJRxMI2fQ
         9VXKCesiL3/zkUYsBOHivCyCRWRrSQ2Yx2B0DTKRn+P+31i8S+b8IRU+SBmFsTEGGy2t
         eF/eTeZ/HmjsUgsYnfaWqfIZcDo5QDd9uFQBxQxOsDak0VzjEUV90BMTcapmxgmhiDsL
         z5XGxcmmgExQ+uZXMtebpyMrCN5HXjHaLl6PGTZx2l/LooCRAz5ERO4R7nwPgLz9pJ+k
         ePwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=LWLiine9A4Q23kSjldJjbV2EY1RJY8+LEdaIIQmbBNc=;
        b=wIC9coOPLcbq5rixl2cba1NKRu1HPEH0EdYaZV665B7IrsEWyvs+cYzpRS/lqlCYIC
         rLkoB9+iqBfwb/Xwdk3pB435S2jBUwqorZBFjW/pP/t5Qe5AG2YXiq1v775nvTRSGj2v
         3+74ntphlpoZWiPBHDn4FG8bGMKa0MUVzitdyFDF55Osyd4jXc3qUA+sZ2RVI2UUQdv8
         ONzEUgNJEcpz1m/0t5u8pfo1yVWmoSPF+S7tatcio+QEmpauyD5H/5ug/7shbFFvPEUE
         ukB0r8+XqYjaiKL1fPAasgBjdBT2SST2iLF/kcL1aKpzfxT2V6U0sfQnROe/DM8u5SN1
         OZ+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=WwXQrYAC;
       spf=pass (google.com: domain of pmladek@suse.com designates 195.135.220.29 as permitted sender) smtp.mailfrom=pmladek@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
Received: from smtp-out2.suse.de (smtp-out2.suse.de. [195.135.220.29])
        by gmr-mx.google.com with ESMTPS id f6si209088ljo.1.2021.06.11.00.16.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Jun 2021 00:16:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of pmladek@suse.com designates 195.135.220.29 as permitted sender) client-ip=195.135.220.29;
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
	by smtp-out2.suse.de (Postfix) with ESMTP id 2867B1FD2F;
	Fri, 11 Jun 2021 07:16:53 +0000 (UTC)
Received: from suse.cz (unknown [10.100.224.162])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by relay2.suse.de (Postfix) with ESMTPS id 0D321A3B8A;
	Fri, 11 Jun 2021 07:16:53 +0000 (UTC)
Date: Fri, 11 Jun 2021 09:16:52 +0200
From: "'Petr Mladek' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Martin Liu <liumartin@google.com>, Oleg Nesterov <oleg@redhat.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Tejun Heo <tj@kernel.org>, minchan@google.com, davidchao@google.com,
	jenhaochen@google.com, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] kthread: Prevent deadlock when
 kthread_mod_delayed_work() races with kthread_cancel_delayed_work_sync()
Message-ID: <YMMN5IoXyXqoRsBX@alley>
References: <20210610133051.15337-1-pmladek@suse.com>
 <20210610133051.15337-3-pmladek@suse.com>
 <20210610143030.f599946ec11e1eccde6af4f0@linux-foundation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210610143030.f599946ec11e1eccde6af4f0@linux-foundation.org>
X-Original-Sender: pmladek@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.com header.s=susede1 header.b=WwXQrYAC;       spf=pass
 (google.com: domain of pmladek@suse.com designates 195.135.220.29 as
 permitted sender) smtp.mailfrom=pmladek@suse.com;       dmarc=pass
 (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
X-Original-From: Petr Mladek <pmladek@suse.com>
Reply-To: Petr Mladek <pmladek@suse.com>
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

On Thu 2021-06-10 14:30:30, Andrew Morton wrote:
> On Thu, 10 Jun 2021 15:30:50 +0200 Petr Mladek <pmladek@suse.com> wrote:
> 
> > The system might hang with the following backtrace:
> 
> Well that's not good.

Fortunately, the API users normally synchronize these operations
another way. The race should never happen when the API is used
a reasonable way,
see https://lore.kernel.org/lkml/YKZLnTNOlUQ85F2s@alley/

> > Fixes: 9a6b06c8d9a220860468a ("kthread: allow to modify delayed kthread work")
> > Reported-by: Martin Liu <liumartin@google.com>
> > Signed-off-by: Petr Mladek <pmladek@suse.com>
> 
> Was a -stable backport considered?

Good point! It would make sense to backport it. System hang is never
good.

Could you please add Cc: stable@vger.kernel.org or should I resend the
patchset?

Best Regards,
Petr

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YMMN5IoXyXqoRsBX%40alley.
