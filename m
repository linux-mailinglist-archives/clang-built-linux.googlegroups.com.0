Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBB6G53LUQKGQET74TKDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3e.google.com (mail-yw1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 807A871223
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jul 2019 08:53:45 +0200 (CEST)
Received: by mail-yw1-xc3e.google.com with SMTP id n139sf31325875ywd.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 23:53:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563864824; cv=pass;
        d=google.com; s=arc-20160816;
        b=dGUtAHFeIr0q6TcDB8p7gcEhd/aJ0/+SZrb/y3SaYQgbR739cSx3ssRsgZozdChcNd
         fgs7dcuXBOYc6ObvhrwHe3Any0DKO6QsPvmgGOpm3cE94bKP3WdgPMEkzXATDVkOIxsK
         JER87s2+WXsls3jBhtLsgwRqx6YXFo4APSztz2Vdva23l1JqIZunlktEQgdikNCyGlpH
         L2hpgPri9UsWLwyzuv+4G74iny/tZw8NlNfHwKXc11sORCtMTW+V38xINf959OZQ1Udv
         SAr7RHoiQRuSynxhfJ2OFl88OD7UcaICThHdW0vbpS1hxJf5hykMXTrbCAJpdeU4dAZm
         AiNA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=OE1DsSLyB0+OuFmpKqoJUujH9K9LkCo31oIiiehQurk=;
        b=Zs91kv9s4AFtGAy1BjChTktVf3M3N0LjT0QBGXCMfV7K4U9lVIKzD8TOZwCib/GRIi
         84bR32wMAhTvA5rD5Hss8IGE1FtOKsAB69+pjT2ygSODXpgTCtbSv+GWCS1rRY566pEa
         /ZTYa+l8gSPT6Z64khkMRL69TZdSKmGZ/K+BXQs1Qvf32hnIa1Drc6PK4ZFGxm+hXzDa
         siZlKsUm1h+hNFH/SxFBMGbtEN7cUziP6tv5gB3tE3ZPhKeS8LHrYYP/LB7kHAtuLDuI
         3LMFOuABJsHRshx8O6Zgoluee2Inx7XZU7EbzL1nwy6EavVCks0r7xl89rUMrAyG8Ey+
         Yajw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=OnYj3zTB;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OE1DsSLyB0+OuFmpKqoJUujH9K9LkCo31oIiiehQurk=;
        b=Ph9qsOUXvu/DUv72Js6+52Ebi9Tq1b4SXayd0ZFjYK3+TVqJPtpieAf8YI8zy8tNLc
         v+G1dB/UgFqtmjQfSUAzVH8RMQuAKvNg2bP51MgBnWH0iZ/TbXSVEzYeh+X28FQ4YnBd
         Djb+mjg2e3f0yRrQCVPdNuFBJr58ZJTaE+e6MKKah59kij0sqlig3U0dN5eKAk/+pkO4
         jsDmUdhzgnEXn7nEZUrybOi6+h836jjvviDclmg7pdGbyBR1ZahXYI37uMbsrBNFpsLe
         e3XCVWbu6TLkzot4mMbeXy4s0PTeIrycF3eJ98hRQfFSENomkqv+zfEkpero6+8nfe/I
         rPYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=OE1DsSLyB0+OuFmpKqoJUujH9K9LkCo31oIiiehQurk=;
        b=pDj2GUTvv3Uyl4RsWF/yHd1kXpGwRvsz3DJfbky42J/qwI1pSioF5R6XZwqhv35lJr
         omJ0QhbR60q3P1HqwVy05wHJX13E1hNYVYFfAeU+TBtbSwBBeRy63NAjANsqmW5Mn8d+
         GKBzZhM+/sW6Jrn3mf8ZBIiHMGh9msTycBLBuCUTlnV9dVmlk4jh4gQ7mQefyrgFnD17
         /KW7MAHybSc7sPnVDtImz8ObONyKft8i6o4TyVEUH3NPlKUX3HnnzVwFBRiZ4FXwH7CM
         0MgYsRD3HNKn73ylUxEx7QGYD798WYUvLpgXv61uAWNQFs5jQGSlCpFBdOR0La+6G/Ke
         tN6w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW32Ika1C+TdpG9sFNk27gfgOV3TTzD83Fm4LuOL15xmQmI7Uef
	h8jzex/fvcq5Zbb5L/QopgI=
X-Google-Smtp-Source: APXvYqy02cwEqhhPkOb2tH9gMvcq+BbFK3p4meq171AYYUWugSgYBQabNy3i6RbNDBRbvCASDxkocg==
X-Received: by 2002:a25:d907:: with SMTP id q7mr3229890ybg.348.1563864824199;
        Mon, 22 Jul 2019 23:53:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:a50a:: with SMTP id u10ls5542363ywg.1.gmail; Mon, 22 Jul
 2019 23:53:43 -0700 (PDT)
X-Received: by 2002:a81:a18b:: with SMTP id y133mr44613382ywg.239.1563864823930;
        Mon, 22 Jul 2019 23:53:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563864823; cv=none;
        d=google.com; s=arc-20160816;
        b=QhUvf8dBml/+FkQm92R0n8kjSXiIvvgNMG9UghLkhEU+p7iFWnW+ltL0OJaeHYLA3o
         M/x39fC7+z9H7uwf1frSbvlTuWLML84yl7gAszrJsoyouwCdpPDNmc5rYH5xm0mEWTlx
         BERvbc40rwzDfiaqKfp7R4CpebvN0CHmVnfeoBtHXvKqQkHVKaTdk4fMy/C8y2NzUDda
         MxsvQbGBeYlsY2Jferko+Lri3kOdgVvJ92//Xn0wWjRcyOAsujkmRs6SZCj6iLHRm7pG
         xoX0rW+s1vdfIgVKtDKNxi9DuUQR162w+KEZrsShXQRqqmVaYg0PALgKqDLh90z5lFPN
         fD3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=OCWXHYd0MZaOyCQ0quFgjxIBTkz7UEcAqcM4arvJkXk=;
        b=RvY3LZfw5NojH46Jxq3PX3LSC3iuM7KeQk9bOl4FJUBiOtWsL7uBTc6Y8tSYKwCdbk
         cyIhL5Aecw/iADRxapeMdcFYo5C51qPFHNnxu5+U6KrHMNPN1HnzMeShjKuv3sSUB84/
         KEq3h8joj83YWhY5gfEdIT4WNMg+afc4qyrbv4twAHPDncU7k6fJEZgblsuHPtk6CaK/
         TpdyDMJTgP94TbM+IPw0qFMKpDimDh5/BFmgVeGCJPbIOv3G94vkXar/P8e692rVyvns
         A1X2wM71v7pKucwAhaQn0sGxi9P9HHS7D4v77QjMAk+oIw6F/g4ZsMLtNNCCVQjn1x4W
         f1qg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=OnYj3zTB;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r1si2446075ywg.4.2019.07.22.23.53.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Jul 2019 23:53:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5773D2190F;
	Tue, 23 Jul 2019 06:53:42 +0000 (UTC)
Date: Tue, 23 Jul 2019 08:53:40 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: kbuild test robot <lkp@intel.com>, kbuild@01.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [driver-core:debugfs_cleanup 23/49]
 fs/ocfs2/dlm/dlmdomain.c:2038:14: warning: variable 'ret' is used
 uninitialized whenever 'for' loop exits because its condition is false
Message-ID: <20190723065340.GB27629@kroah.com>
References: <201907230730.0LT4uPHR%lkp@intel.com>
 <20190722234341.GA111107@archlinux-threadripper>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190722234341.GA111107@archlinux-threadripper>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=OnYj3zTB;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
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

On Mon, Jul 22, 2019 at 04:43:41PM -0700, Nathan Chancellor wrote:
> On Tue, Jul 23, 2019 at 07:32:40AM +0800, kbuild test robot wrote:
> > CC: kbuild-all@01.org
> > CC: devel@driverdev.osuosl.org
> > TO: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
> > 
> > tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_cleanup
> > head:   d3f8c6d526d1397e2953c7c3adfd2bb18daaf92d
> > commit: d1b9fa51a7d2cbbfb7e52b3ae3c24959034d269c [23/49] ocfs: further debugfs cleanups
> > config: x86_64-rhel-7.2 (attached as .config)
> > compiler: clang version 10.0.0 (git://gitmirror/llvm_project 3d68adebc579720a3914d50e77a413773be34f16)
> > reproduce:
> >         git checkout d1b9fa51a7d2cbbfb7e52b3ae3c24959034d269c
> >         # save the attached .config to linux build tree
> >         make ARCH=x86_64 
> > 
> > If you fix the issue, kindly add following tag
> > Reported-by: kbuild test robot <lkp@intel.com>
> > 
> > All warnings (new ones prefixed by >>):
> > 
> > >> fs/ocfs2/dlm/dlmdomain.c:2038:14: warning: variable 'ret' is used uninitialized whenever 'for' loop exits because its condition is false [-Wsometimes-uninitialized]
> >            for (i = 0; i < DLM_MLE_NUM_TYPES; ++i) {
> >                        ^~~~~~~~~~~~~~~~~~~~~
> >    fs/ocfs2/dlm/dlmdomain.c:2056:6: note: uninitialized use occurs here
> >            if (ret < 0 && dlm) {
> >                ^~~
> >    fs/ocfs2/dlm/dlmdomain.c:2038:14: note: remove the condition if it is always true
> >            for (i = 0; i < DLM_MLE_NUM_TYPES; ++i) {
> >                        ^~~~~~~~~~~~~~~~~~~~~
> >    fs/ocfs2/dlm/dlmdomain.c:1952:9: note: initialize the variable 'ret' to silence this warning
> >            int ret;
> >                   ^
> >                    = 0
> >    1 warning generated.
> 
> Hi Greg,
> 
> 0day's clang builds spotted this. The warning is a little misleading
> but it is legitimate; the removal of the dlm_create_debugfs_subroot ret
> assignment causes this as ret is no longer guaranteed to be initialized
> in the "regular" function flow. Initializing ret to 0 or adding a ret = 0
> above dlm_create_debugfs_subroot should resolve this (everyone has their
> various opinions on the proper one, I'll leave it up to you).

Thanks, I'll fix this up.  This branch is still a "work in progress" as
the patches have not been submitted upstream for them, so I appreciate
0-day telling me when I messed up :)

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190723065340.GB27629%40kroah.com.
