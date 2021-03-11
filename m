Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBKEAU6BAMGQEOHZJJZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3f.google.com (mail-vs1-xe3f.google.com [IPv6:2607:f8b0:4864:20::e3f])
	by mail.lfdr.de (Postfix) with ESMTPS id D1ACD336CA5
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Mar 2021 08:00:57 +0100 (CET)
Received: by mail-vs1-xe3f.google.com with SMTP id 2sf5625133vsq.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Mar 2021 23:00:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615446056; cv=pass;
        d=google.com; s=arc-20160816;
        b=eFsUTDggQgW0HbB6zNjEr8JWj03/0XvUGvoiVNhJSfhh2EMz8PF2b1ILLPq/14+rl/
         uOxe/856BygeZ8onIZ2w2bygCM5Y6rsv4jXim6HOkCN+qEvdcI7rsOPFhb+m8ZQx89WE
         QUbspvXmSTaJHpIEw37pc2YDoLhSugpCIhAS0+bS9gH1DVWn20O3TplM2UsrY1Or6VVh
         F0H528cWAXVYmcsrgqum+RHMuUzGaDFwrJqFOHloX8WsmXJvPP8yRUpDF89lPbpkSxTD
         9uGOpiTZ1fCpIlc7p4CXnf53ivaMS2K6WkdZC+HGCzvIEO1GKRGgLJQczu0U/QhDph/H
         6CXw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=+sL0SwIfpCTDJd0b+MwkAn0sSIAIWsuGDik7vGFH6TI=;
        b=dxPFJ2zmq9FWyQ2n9E2jXyb0kRJdocHQDX1BS3+0XhhNNND8AzWccYgo3hQrheUvrR
         Mpg2vk/gWDjg+qvCV6hmN3wEbtHHKKhGE60MjI6jr7Q8wsxbZz2UU28Laj+dcbE5AJ1I
         3pt2ijuvrj+x6pWboLwcqKVEnOZIXBvZvD1nfn7+ljBLKUcTa9Rf34YyEQe+sM3FynPC
         ZcXX9u2E2B30YhMPK7UUAKCTARybPvxB3aWcec9OvXZXTbsHVXS2jqqFHkRNaUJXHsOD
         kiV956Zd19R8yoi0LI0B3HPszwgwwaTajH6w2xjNZMR+5DiNhX0Sq/9sah0J1SI/N1fQ
         iQdg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=gOyb0lpl;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+sL0SwIfpCTDJd0b+MwkAn0sSIAIWsuGDik7vGFH6TI=;
        b=EwulA4fZL6cYXvZeR6qwXVe5gx/LvmM8moDmX6psO6KfhKd3XafscIb0FwuvWcxous
         AoymJHaSOrcNrdL+ljX/U4f18b9Bb4xz10IR+rs4TMJgINcXjy49Okv+ZZiCHuM8eiD1
         nW4xSLrPDlea+D2rVKN8if15ce3vDLLx8iCo/rND37lUErP4PvjXjRkx1s7cGa59vYjP
         bHu++bQCZ5kyWs9dpUWEl2GClfPwmsJ2lEeCiTWntVTcqCWEZsyxdpB6nM91ILHTTEL9
         Xy9GFrhL1IIViG4Naji71DID0Qvr1etAyAmnu0D7siJ1zZ8cNleReRH5DtfxNKd73MAI
         Ookw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+sL0SwIfpCTDJd0b+MwkAn0sSIAIWsuGDik7vGFH6TI=;
        b=l1kdsE/+X5crDnopahVjk1EuR0YZyFT43cBbxYlouYIffFAlB8Gy4yyJmIGj2wLlKP
         eqV5xVsD+lIIZ15dWGIYqeJIinbtkWS3/gdnmufZeVaoqQoY92PyRrjwJDea357Px3Ip
         rjaYWiTsdiYj0NCNIvr1AT25P6P8NNsutWkmMntHwsE7V7AK/YnFglgJ3cW1x81j7jGu
         EfespP3Fro+OCFyk2vH54eXTRJFL4ZChy3lQ5trjR3ZL87kkHjzMgfCDGUZDBVXC6pXu
         tPYyanVPSAhkBxveCMW14poaaiNmP3PJa7LOydN9uwypPKoGqcff3mGpuod/Fn0zMRf6
         QwGQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Uaci/cTiGKWZ84/K1pVeWrJ0DFj2RUc8NCmYcKFpOOrIj7BML
	0PcOvHgUZcaBRUi9gpzrEvc=
X-Google-Smtp-Source: ABdhPJwq7s6vMTavHSDpuz7EHSbJUHQV/oWt6d2cJ3O4eg8fm/LIoSzpGaOGdmX9afcuSkclDNpWJw==
X-Received: by 2002:ab0:1c06:: with SMTP id a6mr4254172uaj.6.1615446056442;
        Wed, 10 Mar 2021 23:00:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:69c8:: with SMTP id u8ls371830uaq.2.gmail; Wed, 10 Mar
 2021 23:00:55 -0800 (PST)
X-Received: by 2002:a9f:2021:: with SMTP id 30mr4162043uam.66.1615446055893;
        Wed, 10 Mar 2021 23:00:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615446055; cv=none;
        d=google.com; s=arc-20160816;
        b=OlM9NvpMv3E9xgH0gP7m9TGwF/Upm8j3MpmSeJhDT2Kc0z1j+7nuGgdfZyfjuoVDUx
         9R6Q7X8vDvUwrZB9d9ohgPtoUy+qgK2g2c/l+zEUus4XeUX9oQs6MoJeTk0iyzh+38uh
         sPL9W29bCG1HOGnNN3nHQgc+LQ2Z9gt4htRvNauLjfurciuniuEcFpQpP689tv9S22m0
         lVTM3HG5/5wP58BIHefZ6Z/dUH9ZOanUb6uHh0zXVWxU0o+BLV8pVfMs9AGQZ6z78Pam
         VoD4GgZLVbNgsZCK8bZlwUIOf3vuJs9DMLl5LlsifOjXw6+MDRCiD6D7L37Guu92qomX
         C7FA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=JDvDXn9XlBpzHpMHprXNgoZgBaND+44JM6FI43cPtqQ=;
        b=AzGk49kLdzEjEviwsqV16zivR1se8bLLFWdIPralVeDjraVW54UGPy/+ZaPxV58Ak5
         jjNmbwSIilwOiPDne6hxQRNl2H7Xs9+EYbylZtp0xEXRYStAPxAN58WjHZtxtYjhiC59
         MHs5BN7zA65li+F0dF9CRPhqWcg/f9PUoi9VJqLENMz5BHXWnFpFJs51wxoIhCQ0v2Xj
         91/IBdHBR3Yl0NCb8QJXUudq6wF4+CmdWhQQjxxygkLXOt+EmnzFlHjExc7jqOQ+2Lv3
         8UsRD6A5vutEMLxNWVXD6o6HiOs2BF/qw3xwU68KVVClkoapTkn5zTIG2CFyszzj6K/2
         cBHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=gOyb0lpl;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n3si122665uad.0.2021.03.10.23.00.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Mar 2021 23:00:55 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id E66C664E46;
	Thu, 11 Mar 2021 07:00:53 +0000 (UTC)
Date: Thu, 11 Mar 2021 08:00:51 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: "# 3.4.x" <stable@vger.kernel.org>, Sasha Levin <sashal@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: commit <sha> upstream. vs git cherry-pick -x
Message-ID: <YEnAI2xuoaM+B04f@kroah.com>
References: <CAKwvOdmAEKQmi-Hy4Gi33t4nb3mCuKUd_qmbEdwrkRwezAWpiA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmAEKQmi-Hy4Gi33t4nb3mCuKUd_qmbEdwrkRwezAWpiA@mail.gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=gOyb0lpl;       spf=pass
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

On Wed, Mar 10, 2021 at 02:37:03PM -0800, Nick Desaulniers wrote:
> Hello stable maintainers,
> While working on some backports I'm about to send hopefully today or
> tomorrow, I was curious why the convention seems to be for folks to
> use "commit <sha> upstream." in commit messages?  I know that's what's
> in https://www.kernel.org/doc/html/latest/process/stable-kernel-rules.html#option-3,
> but I was curious whether the format from `git cherry-pick -xs <sha>`
> is not acceptable? I assume there's context as to why not?  It is nice
> to have that info uniformly near the top, but I find myself having to
> cherry-pick then amend a lot.  Or is there an option in git to
> automate the stable kernel's preferred style?

There is no option in git, but I do have a script:
	https://git.kernel.org/pub/scm/linux/kernel/git/stable/stable-queue.git/tree/scripts/c2p
that takes a git id and turns it into the format we use.

I think Sasha has one somewhere as well that does it in a nicer way
(mine is in perl and hard-codes a lot of stuff).

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YEnAI2xuoaM%2BB04f%40kroah.com.
