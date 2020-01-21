Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBPEGTXYQKGQEGZXKQ5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD7F14444D
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jan 2020 19:30:21 +0100 (CET)
Received: by mail-yb1-xb3b.google.com with SMTP id o82sf3101970ybc.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jan 2020 10:30:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579631420; cv=pass;
        d=google.com; s=arc-20160816;
        b=TohCjQrKnAd89dttvUJYtNo+be2XYMUFI0ux4T6aiqYU5cFyb0bU/3EvxmumSjWQEn
         AuqNlw2W4L+5eeNbfeSwbv2C+wbdd4jOB9CzUl4cEDRVLAqlblrvBvWs9aRyXRh3BWzh
         KA0nrCn1OSUHqVZE18O215CoMWiFUSFJ/IwXF4kUk5RhPzDVcnmxURnAF8eVtPuGvfEG
         P6q/vxZ5WJVShHUtJAPFfI2TYGBHNyjcZS3jjVhIocp0rdGAhQwGPa57J8ypJahmL0Ce
         cHPXNyfDryfZEb82PsG1OrypwCtmcHG/CppTKulIvUz0Ha8rjLftvoVGLVzLjD4xRMus
         bj4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=LFEPlqrNwrwZ5OusWtQV5mtGJEIW+cO0V7zHj/qQG4E=;
        b=kSOyQKyS4cj9DUCo8PQnymS1XNAP5EW+4MMZe5bG/ucvBB2gY0b5dcgc2cevcIKFV8
         4lG8JJxpAI1iNiYaF67P/1eAQUfuWUCYwwFRzKrrRQKcsl+0/XZ1nfhUhVs0VFrUZ3Oo
         9l8p00XlaSTVSZnYnOR9ZmP15KeGyZg2Bas//c5HiPCfs8C9LiiBGDTVLhKwT1nPIGEt
         5e3hXqJh+tmWxq1Gqr8SGx8u3xwzvQPLRfBzPDFzfN8eAxZyjMzyD9TpV4N86cx6OxJ3
         jP2FWmOyYg/dDujn0vNbxbPLA1yz33mOSCYbn67PW5hwP1S0ysZHZUcefgVOdKbeeB2y
         rNqQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=WoEpqp79;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LFEPlqrNwrwZ5OusWtQV5mtGJEIW+cO0V7zHj/qQG4E=;
        b=TcPJN9WfY34QUCcI8Izrz6ACSwEDsqjWawV9NFkqZiDm1rV+AYPopN/qmJ73QykySK
         7TMYCJKe49Qu28SSGUyLb/c9o9eV3K0YOPTg/W3cLUbi5IPgPKniXTjJ9Qnty3kfomQZ
         dBvuz3SmhTpuwIesfM3SAEx8TDuTL49wGLiGu5yYSSp0oPLDsOqCfQAUuva56cjfpaok
         WZR1XiPiM1vyvVjW0OHE+pQzn2CjXwx6K00u1/1w68AbiN6qspRmr4uKIjfSQEJuqsCQ
         ZEozjWpkVGGBAC7wlAiA/5BB8jpAW2qDX2IKomrxZOvmLFBpiLqit/dB7epfPg06lM3d
         iNpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LFEPlqrNwrwZ5OusWtQV5mtGJEIW+cO0V7zHj/qQG4E=;
        b=QezFs8ymBUSu/71FEWBPUWo+cP3QpNsoxdg88rC3LhDn2FcVY2vF8X3yV8q6WIuaqQ
         0Il37THpCOpVF9xGeRuRxccc0zHGT4IprgeusuYbkiMUjUBvGbclZniuyrDr94gmitVU
         OCXT1+El1B6aKwAdttIa8YtMWzuqZCqFY/eptWMWKisNv0J8CtpziLgFId1Fm1LV6hNJ
         XRwaeB/U7ovR0jOyaOd3yvW93tTqgqmzUuQHc/l8TraA7v6ZRIXJ8/JVE7S9wj7xiUUb
         uCzSK06V8TBi0RN/n4URN/LbLQj9/MIlERiMbYJPZwyLxQOVZq4vMueJnrJjW92tRJsy
         3KDA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUhbX3EFtTiXjsCySWEuuT0ZfSwLUIqCrt/N0JqXGpP6BoNYi2H
	MGE2bYbEbfMXMTUMixwukec=
X-Google-Smtp-Source: APXvYqzXecd5IRL1M0acUhQA9H470v/dA1W4XOqo49cdRbdyiUZJghZUj9avvTVQZj/JdGf/QHBjXg==
X-Received: by 2002:a81:6507:: with SMTP id z7mr4460661ywb.77.1579631420114;
        Tue, 21 Jan 2020 10:30:20 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:ca8c:: with SMTP id a134ls3741138ybg.0.gmail; Tue, 21
 Jan 2020 10:30:19 -0800 (PST)
X-Received: by 2002:a25:c50d:: with SMTP id v13mr4871709ybe.496.1579631419748;
        Tue, 21 Jan 2020 10:30:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579631419; cv=none;
        d=google.com; s=arc-20160816;
        b=sw9QXjBNb5zCd3JmD/pN9UNcjlE7/fuq4TAWIcSwLUBAGwUQnjxhyYoZpIqAGk6FBF
         GIOMGtyXIOdl+9DZXaz1AH44gw804AXYFQe4qBwAq93hsmMuY6JVffSFqtyX/IGiyGQa
         Yt+6Io/vVCXQ4jY9ctIYCp1Wj1aSlhfH+P2Tfh2uwfr9E2lX+S66hSOzItaOX8kJ/xNC
         qxDnPFeMhJJFEDevFL+2RmGtqE0DwcOADY57+ApAZQvi12VWDQ8w8AjpYVPk+1q/xF7i
         E9HsNsl31lQD89DBZLr6yWeeh1wLiuavnvNrmqusZWgH3XbNaJyH94B0HRD+StFnRhpF
         ZEfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=n6ph8C+aXX0HI0FhHPqndGPmUHr5PUk3iM34mdtK754=;
        b=RbDvdF1LhVzHVU3aj2F9GWYd1PxTcDRxB5v9iIpDnWn84nOVW6KwrTrTkQoj7GvpX8
         gt+nJ6O3oJiH53ccjKosAvhm/xG28V79xUo4iZb4krafa1Yym1bWRdV3m37pHwluI+Db
         Ki2UOYM98MHsPtQmHx2pwb5Uw9dgY7NSOmpXWS8YewG16uoQEQLrO53TbB1vLghceDwp
         b0l26UrCMENGn3dmSZp8neK8fYwpk2/GFsRz7NQWKoEX7w48RLYxA5M7KMvArY5ZFufb
         TZa1f4u+rJ7ZpbZbSTXQ4qvjEMktd+uu/SGALkvOX2YscGY4Vs2vTfG3cTR7dXQCZYxK
         01Dg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=WoEpqp79;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [207.211.31.81])
        by gmr-mx.google.com with ESMTPS id n67si1954261ywd.3.2020.01.21.10.30.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Jan 2020 10:30:19 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 207.211.31.81 as permitted sender) client-ip=207.211.31.81;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-203-uxQgXMv6MISRi-IAIju01Q-1; Tue, 21 Jan 2020 13:30:15 -0500
X-MC-Unique: uxQgXMv6MISRi-IAIju01Q-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A2643800D4C;
	Tue, 21 Jan 2020 18:30:12 +0000 (UTC)
Received: from treble (ovpn-122-154.rdu2.redhat.com [10.10.122.154])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3115639A;
	Tue, 21 Jan 2020 18:30:11 +0000 (UTC)
Date: Tue, 21 Jan 2020 12:30:09 -0600
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Will Deacon <will@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Julien Thierry <jthierry@redhat.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	LKML <linux-kernel@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Peter Zijlstra <peterz@infradead.org>, raphael.gault@arm.com,
	Catalin Marinas <catalin.marinas@arm.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [RFC v5 00/57] objtool: Add support for arm64
Message-ID: <20200121183009.253yh6aehvnvxoew@treble>
References: <20200109160300.26150-1-jthierry@redhat.com>
 <20200112084258.GA44004@ubuntu-x2-xlarge-x86>
 <d5bf34f0-22cc-ba46-41b4-96a52d7acfa4@redhat.com>
 <20200121103101.GE11154@willie-the-truck>
 <CAKwvOd=_PqQWUvd_WZRpEr+T==3w6LpsHKBz3E9ybaQ0javVkw@mail.gmail.com>
 <20200121180632.GA13592@willie-the-truck>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200121180632.GA13592@willie-the-truck>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=WoEpqp79;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 207.211.31.81 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Tue, Jan 21, 2020 at 06:06:34PM +0000, Will Deacon wrote:
> On Tue, Jan 21, 2020 at 09:08:29AM -0800, Nick Desaulniers wrote:
> > On Tue, Jan 21, 2020 at 2:31 AM Will Deacon <will@kernel.org> wrote:
> > >
> > > On Mon, Jan 13, 2020 at 07:57:48AM +0000, Julien Thierry wrote:
> > > > On 1/12/20 8:42 AM, Nathan Chancellor wrote:
> > > > > The 0day bot reported a couple of issues with clang with this series;
> > > > > the full report is available here (clang reports are only sent to our
> > > > > mailing lists for manual triage for the time being):
> > > > >
> > > > > https://groups.google.com/d/msg/clang-built-linux/MJbl_xPxawg/mWjgDgZgBwAJ
> > > > >
> > > >
> > > > Thanks, I'll have a look at those.
> > > >
> > > > > The first obvious issue is that this series appears to depend on a GCC
> > > > > plugin? I'll be quite honest, objtool and everything it does is rather
> > > > > over my head but I see this warning during configuration (allyesconfig):
> > > > >
> > > > > WARNING: unmet direct dependencies detected for GCC_PLUGIN_SWITCH_TABLES
> > > > >    Depends on [n]: GCC_PLUGINS [=n] && ARM64 [=y]
> > > > >      Selected by [y]:
> > > > >        - ARM64 [=y] && STACK_VALIDATION [=y]
> > > > >
> > > > > Followed by the actual error:
> > > > >
> > > > > error: unable to load plugin
> > > > > './scripts/gcc-plugins/arm64_switch_table_detection_plugin.so':
> > > > > './scripts/gcc-plugins/arm64_switch_table_detection_plugin.so: cannot
> > > > > open shared object file: No such file or directory'
> > > > >
> > > > > If this plugin is absolutely necessary and can't be implemented in
> > > > > another way so that clang can be used, seems like STACK_VALIDATION
> > > > > should only be selected on ARM64 when CONFIG_CC_IS_GCC is not zero.
> > > > >
> > > >
> > > > So currently the plugin is necessary for proper validation. One option can
> > > > be to just let objtool output false positives on files containing jump
> > > > tables when the plugin cannot be used. But overall I guess it makes more
> > > > sense to disable stack validation for non-gcc builds, for now.
> > >
> > > Alternatively, could we add '-fno-jump-tables' to the KBUILD_CFLAGS if
> > > STACK_VALIDATION is selected but we're not using GCC? Is that sufficient
> > > to prevent generation of these things?
> > 
> > Surely we wouldn't want to replace jump tables with long chains of
> > comparisons just because objtool couldn't validate jump tables without
> > a GCC plugin for aarch64 for some reason, right?  objtool validation
> > is valuable, but tying runtime performance to a GCC plugin used for
> > validation seems bad.
> 
> I'm only suggesting it if STACK_VALIDATION is selected. It's off by default,
> and lives in Kconfig.debug. I'd prefer that to "cross your fingers are do
> nothing differently", which is what the other option seems to be.

I don't know what the right answer is here, but keep in mind that
objtool is on by default for x86, so don't be surprised if that
eventually happens to arch64 too.

Short term it might be ok to disable jump tables with objtool enabled,
or to disable objtool when clang is in use, but long term we'll need to
figure out a better solution.

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200121183009.253yh6aehvnvxoew%40treble.
