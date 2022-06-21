Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBB4F5Y2KQMGQEBC63M2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id DD37D552FCE
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jun 2022 12:35:29 +0200 (CEST)
Received: by mail-io1-xd38.google.com with SMTP id m65-20020a6b3f44000000b00669c2aae17dsf7375329ioa.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jun 2022 03:35:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1655807728; cv=pass;
        d=google.com; s=arc-20160816;
        b=LCGvVl4/c6r8rGbVVsbasuYomryU1fLPy6oJUoXgPwssx6fEhCDgU3XtIPWRYDSdGD
         kptlVPA7urBRsgSJEpkomH25fdTDWqtsT21yuM6Er2owXwjoX4frKaGceY+yOO6ppw2R
         2k7+NVaEqOQAsAxi8ALG0/YSP8gOkAPiy9Izu6gBHb8zc0CeGNnSQeH2EFJSyJ6lGyF/
         kwEbCM/bk+as4RuD24A/UnwyIbFHPa4izMMYzN4Dg8wgkKHbb3co9VscHCRsshJ2gEBX
         5HIAX9iahIMW9J9BFDXFXE5qCtK14t4vv8RJi7FX5DVeTu2erDOaNO5FW4BfXeROEyNT
         U/Wg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=3zlBxs8cSrLNgOMjmRM7+Sgflc74oMfdvevnisbpBDs=;
        b=aP7jwiG4WN7j215tsdwsGeLeb5Byf58cIqXIToqyO5NGC00UFYjApwkl1yVFd6hd/G
         rpa7XLK8RTuTckaKwKga0BJ5UUzoJmu5K+Tyv34p7obJsfHygQMH/Rmw+K3Aa8/g56mW
         dFBRqWla0a4I7BRBujKfd4iuq86ZtvyyEwHzDchZJ0TJP8N5acdBX5G1+yaWAAY86ck6
         pkl5fRvqkccQCD6poUAn/XR8Sah2QhUyKByzXHyn0/GZTp5XlTUGYxUqXbRaqy/PTwE1
         V1bJ69PX17XnB4GdMnt57BYLm7YfmfltYV+HvPdL6NQRnxBcnhU5M3WMU3vsd924jztR
         wLgA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=Ii6wg2yx;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3zlBxs8cSrLNgOMjmRM7+Sgflc74oMfdvevnisbpBDs=;
        b=CWXpHdfPBZSXywX/XFpRluwrhZYCbcCyxXNmioG6wt9640Pkx5kcfbzrati9g6rrcV
         LpKJnex1JkMs1+p2XQyB/u4q/a4C+fPcaz0yjWuEArsuD+8FX3U/SDIjrzdWWagEG+Dw
         KtPEelMsgaxpejTwjG03YIPCmzEOdXnyKRsw/uNruzRMSZiNwvSMXjstWww/mxo0EtjQ
         Nen2jbswLNIgXuI/Z7m6W7v6A7h4biJtc0G2evMrlQ5d3gtFcPvhQl6RU5GUca4a5EiX
         Z/55mCvW7SNVeVqN67o0TWWPXcMvkz8tZgc0hDjixARH9+B+fStZFDd3XlibkgvB8IkP
         lhRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3zlBxs8cSrLNgOMjmRM7+Sgflc74oMfdvevnisbpBDs=;
        b=4tKSyNNfhnA/N03DN7tL7Z9qx+3DGEydEKklwJkg7Kd6iwgURX9JiLQr3nfM/E1ZiL
         U+UV4w8Cx6TWW+rAcS7jD7PBGB9b/BlyotafNEUTfOW5QhqwzyN3BkKtEzYXD2rzMHc5
         U0ogGPm/oHcXAJI4NMzVRF8Fj6Qr0aBjm1IN/5MRlDxCCVu90kU3utQqYXDMQsZffJqq
         dqp0s9vZBcJp0WjAcD15QDMMj2c6DfuvGFGMPN830kGhCTwpxFLkd2tcjQL9RLTsZx7+
         fwZajLLgf0YdNh2CDmhZem4IUpfEpxaQqTxhuffe+ir39sqxcjXdWE4nZNrgnCJaBQeZ
         y3QQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AJIora+eLxijRLe9GexG/uWgECYq5uvnWk+iE8tlvrY7vdmSZVcApory
	0I9A6VdwZsVqN/URpSvSR74=
X-Google-Smtp-Source: AGRyM1s4449mQ8T4EwTH5bJlkIgee6bhug9qKL0kgiPtepmRiN6VQ1OwLmbaqJyNvFtU45sSJZxF2w==
X-Received: by 2002:a5d:9748:0:b0:669:4785:75bd with SMTP id c8-20020a5d9748000000b00669478575bdmr14205359ioo.93.1655807728718;
        Tue, 21 Jun 2022 03:35:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1a26:b0:2d5:3242:a411 with SMTP id
 g6-20020a056e021a2600b002d53242a411ls2114887ile.6.gmail; Tue, 21 Jun 2022
 03:35:28 -0700 (PDT)
X-Received: by 2002:a05:6e02:17ca:b0:2d3:e6bf:7724 with SMTP id z10-20020a056e0217ca00b002d3e6bf7724mr15888212ilu.312.1655807728260;
        Tue, 21 Jun 2022 03:35:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1655807728; cv=none;
        d=google.com; s=arc-20160816;
        b=tDLxlhKEuZudCMW4JKe5iVu1J2HczRNTKXj2snQQEibqfYxJ+LrLsYzr73WWZ+doaH
         H/mEUtBfpFM5zk95ZrprtTormJb3tgTkw2wmheZUVVe2by1vb1d7Ma0ZAp1U5Cg5MX00
         wKFwe0R9Uip+KZadHEOTMNVzljJnjTFBTtD4x7NW7NX1WGD6WcESVsOvZrrgd4rQuGNa
         s36Kb1lULZnHYlAmP+dhCDG3Cz14me9B9dqsDXDdB6BjKiNVzKXAKvwQuerd7HLQ+m1E
         y5l+wkexpfJb1h0ufGM2VDx0VsMXdnggAQLmg5SLyKNAwJ/Kov9CpKB3GEGGZA5G6Puw
         0IEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=hr7lfR3cmKIyO8knh9wJ0zjVbYDsJJQ0mKciMB1c2vs=;
        b=O2eiJt+b+AdSKexyiwD2Gs8pJiY3tjqRy1yW07LVIy85futvl9MLBZyKgYz3MGtKVk
         dKhhEB2NelITLTagZFklB2kLkmdDerB+qWOaEecGZTpK7jyg69kHE/FZZQqSVRXZ2k+s
         EHYTpM++qgwh41XnOnjvbmx/AB88iLbmTrFlbpC8MLeQIZK0na1YUkeLfUTJnGlCQpBF
         CrwGtELWQq9wVDgTXpJttdepxh4Iaj6MeDVisXT7ixI/jP0KNxf6NChSA8K8tAlbYiGi
         1VU14ixC0Ir7wZlOET3vQFgvsByS6t8LFHEsym5XwJy8YB8tLczHfh0waQIGGD739lmP
         ugcA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=Ii6wg2yx;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [139.178.84.217])
        by gmr-mx.google.com with ESMTPS id r16-20020a0566022b9000b0066999ec58b4si729980iov.3.2022.06.21.03.35.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Jun 2022 03:35:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) client-ip=139.178.84.217;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id CD2A7616A3;
	Tue, 21 Jun 2022 10:35:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81E4AC3411C;
	Tue, 21 Jun 2022 10:35:26 +0000 (UTC)
Date: Tue, 21 Jun 2022 12:35:23 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: "Jason A. Donenfeld" <Jason@zx2c4.com>
Cc: Naresh Kamboju <naresh.kamboju@linaro.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	torvalds@linux-foundation.org, linux-kernel@vger.kernel.org,
	stable@vger.kernel.org, akpm@linux-foundation.org,
	linux@roeck-us.net, shuah@kernel.org, patches@kernelci.org,
	lkft-triage@lists.linaro.org, pavel@denx.de, jonathanh@nvidia.com,
	f.fainelli@gmail.com, sudipm.mukherjee@gmail.com,
	slade@sladewatkins.com
Subject: Re: [PATCH 5.15 000/106] 5.15.49-rc1 review
Message-ID: <YrGe64z7Al+V3bvB@kroah.com>
References: <20220620124724.380838401@linuxfoundation.org>
 <CA+G9fYsvY-0ub_CXbb5is0vRLQ9+SaPS8Op=9mZzCkeccUN+mg@mail.gmail.com>
 <YrGHheX8D0iIz+db@kroah.com>
 <YrGTT/MLbCuHanhB@zx2c4.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YrGTT/MLbCuHanhB@zx2c4.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=Ii6wg2yx;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217
 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
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

On Tue, Jun 21, 2022 at 11:45:51AM +0200, Jason A. Donenfeld wrote:
> On Tue, Jun 21, 2022 at 10:55:33AM +0200, Greg Kroah-Hartman wrote:
> > On Tue, Jun 21, 2022 at 02:06:06PM +0530, Naresh Kamboju wrote:
> > > On Mon, 20 Jun 2022 at 18:36, Greg Kroah-Hartman
> > > <gregkh@linuxfoundation.org> wrote:
> > > >
> > > > This is the start of the stable review cycle for the 5.15.49 release.
> > > > There are 106 patches in this series, all will be posted as a response
> > > > to this one.  If anyone has any issues with these being applied, please
> > > > let me know.
> > > >
> > > > Responses should be made by Wed, 22 Jun 2022 12:47:02 +0000.
> > > > Anything received after that time might be too late.
> > > >
> > > > The whole patch series can be found in one patch at:
> > > >         https://www.kernel.org/pub/linux/kernel/v5.x/stable-review/patch-5.15.49-rc1.gz
> > > > or in the git tree and branch at:
> > > >         git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-5.15.y
> > > > and the diffstat can be found below.
> > > >
> > > > thanks,
> > > >
> > > > greg k-h
> > > 
> > > Following commit causing regression while building allmodconfig for clang-13
> > > on arm64, riscv and x86_64.
> > > 
> > > > Linus Torvalds <torvalds@linux-foundation.org>
> > > >     netfs: gcc-12: temporarily disable '-Wattribute-warning' for now
> > > 
> > > fs/afs/inode.c:29:32: error: unknown warning group
> > > '-Wattribute-warning', ignored [-Werror,-Wunknown-warning-option]
> > > #pragma GCC diagnostic ignored "-Wattribute-warning"
> > >                                ^
> > > 1 error generated.
> > > 
> > > Regressions:
> > >   - arm64/build/clang-13-allmodconfig - Failed
> > >   - riscv/build/clang-13-allmodconfig - Failed
> > >   - x86_64/build/clang-13-allmodconfig - Failed
> > 
> > Does Linus's tree also show this issue?
> 
> Linus' tree got rid of the pragma with:
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/fs/afs/inode.c?id=874c8ca1e60b2c564a48f7e7acc40d328d5c8733

That isn't going to work on 5.15.y at all without a lot of hand tweaking :(

> and then a subsequent cleanup:
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/fs/afs/inode.c?id=e81fb4198e27925b151aad1450e0fd607d6733f

That doesn't work on 5.18 either.

I guess I'll go revert the 5.15 patch here for now and let others sort
it all out when they want to build 5.15 with gcc-12.

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YrGe64z7Al%2BV3bvB%40kroah.com.
