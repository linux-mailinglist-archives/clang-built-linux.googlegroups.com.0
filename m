Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBHMHVPUQKGQE5AZJJIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3450967D93
	for <lists+clang-built-linux@lfdr.de>; Sun, 14 Jul 2019 07:54:39 +0200 (CEST)
Received: by mail-pl1-x63b.google.com with SMTP id n1sf6985434plk.11
        for <lists+clang-built-linux@lfdr.de>; Sat, 13 Jul 2019 22:54:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563083677; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ckm+5oO+Z/U6z7E4TOzE/9dlrNe608K4BrsWw30mV+iySIePzQByMiEYHWYKqCOTf9
         ZiWTWu7d7Xpe4JfCcnhAunv9VRRU03Zv2QeOr07VzHqP2Whf5MEzriEH0wCzHQIFJrl6
         dnU+9PZOTRHGRoTBntB77iEDdjfY4ZZnHOFzVt7XovKFN3Bv6G+WtEcgLW7eQiqWKzGX
         uK7siJx+owMiP4d00icm6/i+UUz5C8s+LHEIGK33m52zfYUO97mUfV66lGw7CnWGCJnE
         3TwdKv1nSJYvjswvdsYW5j6Bu90uaWFNJaoZ/JhWYuYdwvo3jZnjbgS0MtWQ/lierV+O
         caYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=oeOnFTKUZ5x3tBWn7aMriefub9EhGx3vikrZzKLAY54=;
        b=FTX9cmG4QdyvmyEx/ypA/ouFYGvvyVvSGwyMaQKp1gQXF9nMcblQCPQWGTKPJZ5wZW
         M44wTXc1kLuPw3f0oxPyHoVs0UeMU+guwx3BSwajRPWjnDovI1yve3hOkK+i3njzAAIs
         PV52vCsMx30AH4FiceAiZmcVswSTpUielJtMrnmxbbVhEsdAiWPW+WMgosGlS3wB+nRf
         Vh0n4Ul4YFEcOPFzwaYY9/rnHb5NsN73NjgZRtcGOaV2lFfkuNfeVCDwTih4O7F77RjO
         7wxgzJewf+jd8ga8tU8oBVt4SLdoygZiaKTwbV5Eiebx98fif8V6pr++FgB1DjaT0+N6
         syxQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=guFfydS1;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oeOnFTKUZ5x3tBWn7aMriefub9EhGx3vikrZzKLAY54=;
        b=D1rmSzrAy7USQxDroRa8NuP3tr/0fuUbGOEW7F9DHTJCoOxFtAvdzHMCHQcEIOaulj
         Toi8GMQTkwY1MfORgaPyee9bbOGDd/NM8rTE8dF/HIC6fEQfjUqB79Duh8OxdA8BAqEQ
         Hswzp1SjouIXn0MYuyXRmFg5jfjcTo9xxU1a36JbI9G2xvTw5r+2cbujYji7wWDhMt8C
         gs3XCB+79Am3G1WnTvBF8jp02bAqYIqqcSxoVeZot1nXTA0Wcg4KI+zfI3SLMrPDecL7
         fvGB6e+YEXD/syGfwTfLSkF7qCEmSyJoafyWeydcR+cVaqfeUm4VvqATdEG6eHXFMvpW
         zHyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=oeOnFTKUZ5x3tBWn7aMriefub9EhGx3vikrZzKLAY54=;
        b=sXPyjj9s3B4gbla7C+X6Uss99PDFYLvZTWQfX4ho4LJ3c4d1Txdw1yXoK6msFJiwmw
         D6+8FTBv4VAM9o6oiN3RDPabdAfUb7N2oXqWQJUQ8dklqohve+rz7lmY+rksOZ/d24g0
         FoY7uIp2x3R2DNZTLarGYPTggqE6ETtS0qtRjkvNYQylYsPpf7JbA+g3DEGSsl0qOk0J
         00Yr9Ow2rjYlBw+f4N8TkGDkgfYdFWmlMPNUP0+V9LVq1FrH1kdImSXhL0IrD7JIDU/6
         HWUc62i2oTbbgyciFbYRnGNxGT6WrnDe7eHtA15DT0eCjyw0oPFfZTNvc9cbT3YedyaY
         c3sw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVJ91PvgjYVcjXnMH/W0fmo5M/vpEw2ObrtzKjdTq9OWLGxeDWA
	cQzLRUcJ1cMIKotiGwF0yz8=
X-Google-Smtp-Source: APXvYqyJwLq+ekLjKqYJ29tch7oHl+qbUq+cHeHnDCnIitV+qrnQ7UmbNkfKEIjVzleyB0XJWk9kRA==
X-Received: by 2002:a63:f510:: with SMTP id w16mr20623681pgh.0.1563083677175;
        Sat, 13 Jul 2019 22:54:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:1021:: with SMTP id b30ls3653485pla.1.gmail; Sat, 13
 Jul 2019 22:54:36 -0700 (PDT)
X-Received: by 2002:a17:90a:b115:: with SMTP id z21mr21979356pjq.64.1563083676891;
        Sat, 13 Jul 2019 22:54:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563083676; cv=none;
        d=google.com; s=arc-20160816;
        b=DjluV4kBZiPFlRCfMlAfgl2GRTgWaJ4OMQXipGfKoVl86ZVvj6xGZ5vGsoHtSJ3A+/
         e4GlHBs1WU5sO0d97E0dDtAuFieJMJ2MKGRy1jCoSSs6CnKco+28aNoBOZkLf95Mz62a
         BvUdl0NbkihbaLhX7T8wU2PIe88ITdWdreEkj3wAo9muDuuoldnETx/c+Cos3Xl1a/5b
         XJDuebinuvbRVeEAQFRVgkFFilLacPmvolPbDsK5M9gomugt0WuWVYkd+bWlncaxP94+
         P5h/XTxaEgRl83DgxgtIYYcu+u88Aseos2/ufbNP2sLcsJQ5BjVVymOxlAtMcBAETP/Y
         WQ+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=tsV5KaFraI5DJv0UdPxIg5/xULUv6gfzgjpaH1OT8kQ=;
        b=0GqASX/IXxtmf7dnJ9H8kEtySKafVHfNmqRR8NsnscgTeGA/WUpSnUMCwtoy1uQJQc
         NgHDawkPFTUN0jw/txcbS2Q1r8VOvXAahYzqW6v3QME65p4bNb1Ab1akcsaXQQJBIMgA
         dCBsUDFtfTsoDo1DIpXIBbXlgjy0lsW+xWSfJLgiM/yKAzPllZJl159HIaY1wuIsaAtB
         LdCrJAER1jRzIK9GtNfDAZWFOHj1QUohe5jDXyE7Y0cLa29w8R3VDSMAvFcLNIX0QsAG
         LXqtdP49s3kgVyfa1vaVl46FE4LC+ZURZxdTiVuGKLXMFFQODQru0tJMsoztjPPKALrD
         BXjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=guFfydS1;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s193si459366pfs.0.2019.07.13.22.54.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Jul 2019 22:54:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1036020838;
	Sun, 14 Jul 2019 05:54:35 +0000 (UTC)
Date: Sun, 14 Jul 2019 07:54:33 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: kbuild test robot <lkp@intel.com>, Sasha Levin <sashal@kernel.org>,
	kbuild@01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com, stable@vger.kernel.org
Subject: Re: [linux-stable-rc:linux-4.14.y 9981/9999]
 arch/x86/kernel/ptrace.c:659:22: warning: ISO C90 forbids mixing
 declarations and code
Message-ID: <20190714055433.GA8005@kroah.com>
References: <201907140611.AydIXYEe%lkp@intel.com>
 <20190714034125.GA90669@archlinux-threadripper>
 <20190714034554.GD90669@archlinux-threadripper>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190714034554.GD90669@archlinux-threadripper>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=guFfydS1;       spf=pass
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

On Sat, Jul 13, 2019 at 08:45:54PM -0700, Nathan Chancellor wrote:
> On Sat, Jul 13, 2019 at 08:41:25PM -0700, Nathan Chancellor wrote:
> > On Sun, Jul 14, 2019 at 06:55:15AM +0800, kbuild test robot wrote:
> > > CC: kbuild-all@01.org
> > > TO: Dianzhang Chen <dianzhangchen0@gmail.com>
> > > CC: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
> > > CC: Thomas Gleixner <tglx@linutronix.de>
> > > 
> > > tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-4.14.y
> > > head:   728f3eef5bdde0f9516277b4c4519fa5436e7e5d
> > > commit: 55ac552ebd34f9687cc1bdcb07006bf7f104dc99 [9981/9999] x86/ptrace: Fix possible spectre-v1 in ptrace_get_debugreg()
> > > config: x86_64-rhel-7.2 (attached as .config)
> > > compiler: clang version 9.0.0 (git://gitmirror/llvm_project 87856e739c8e55f3b4e0f37baaf93308ec2dbd47)
> > > reproduce:
> > >         git checkout 55ac552ebd34f9687cc1bdcb07006bf7f104dc99
> > >         # save the attached .config to linux build tree
> > >         make ARCH=x86_64 
> > > 
> > > If you fix the issue, kindly add following tag
> > > Reported-by: kbuild test robot <lkp@intel.com>
> > > 
> > > All warnings (new ones prefixed by >>):
> > > 
> > > >> arch/x86/kernel/ptrace.c:659:22: warning: ISO C90 forbids mixing declarations and code [-Wdeclaration-after-statement]
> > >                    struct perf_event *bp = thread->ptrace_bps[index];
> > >                                       ^
> > >    1 warning generated.
> > > 
> > > vim +659 arch/x86/kernel/ptrace.c
> > > 
> > > ---
> > > 0-DAY kernel test infrastructure                Open Source Technology Center
> > > https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
> > 
> > Hi Greg and Sasha,
> > 
> > I was going to reply to this on the GCC version of the thread but I
> > don't really see a way to get the original message or the message ID
> > from the web archive since I'm not subscribed to that list :(
> > 
> > https://lists.01.org/pipermail/kbuild-all/2019-July/062379.html
> > 
> > This is not an issue in Linus' tree because he fixed it manually during
> > the merge:
> > 
> > https://lore.kernel.org/lkml/CAHk-=whhq5RQYNKzHOLqC+gzSjmcEGNJjbC=Psc_vQaCx4TCKg@mail.gmail.com/
> > 
> > I would say that it isn't unreasonable to fold that fixup into the
> > original patch, with a note that it came from Linus' merge upstream:
> > 
> > 223cea6a4f05 ("Merge branch 'x86-pti-for-linus' of
> > git://git.kernel.org/pub/scm/linux/kernel/git/tip/tip").
> > 
> > Cheers,
> > Nathan
> 
> Re-adding our list, which I messed up when adding stable. Sorry for the
> noise :(

Ah, didn't realize it was fixed during the merge, will do the same thing
here and tweak the original patch.

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190714055433.GA8005%40kroah.com.
