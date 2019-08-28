Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBNVYTLVQKGQEWXLHXJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id D3347A062D
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 17:22:31 +0200 (CEST)
Received: by mail-io1-xd3c.google.com with SMTP id t8sf22564iom.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 08:22:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567005750; cv=pass;
        d=google.com; s=arc-20160816;
        b=fAAltd1T3glDh+7vv22C2EcUNyT5s1VpM+msENTib3+qiRliYfNWDW700B0lMVo7pb
         nQ6CNR8XNRjwchngGJ+hVYeRXjDJ5WMXOdoWBY83esW594xwpc5/qj23NvM+iFbbkWRq
         J4bhr40B0S8/ghYyleFHfWiDuMNxEGzD/QWqyhXciYuWvNnI/RBoVAs4IjLVjspMjO5v
         FchnN5wyWllrHzs7duuUf7emwuv0sGPn+2D/7A5rNOG5Nhkp8A5GsUzvN4/DN86RDb3U
         Rzs1hL/SCqDS9UhqGA03/8aPY1rd1oY7SCb4TaPsGSKqt/OsUBbdepp/NTTM9G6kChyk
         n9gQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=qt3W0JiTqSB8R+xXsBMxCuDcxP1X/3rcsDFV6YCkEO8=;
        b=NFHLrEFjPYaThKjd87dg+RJ9z403bgTvEQCiT77AgkwauyDErzFqj9ZfWby649LEC5
         +XiB6saCBeDgbdlm0+NLt+q/DW1LoBEUIaVsA2lfXaJV4botAszHh+or8MebuJlmAIyW
         7whQYKe3JZiROZjCd1YD7LbuNWEICYypzwwwbkTnglssoUVkoMQA4lI/N9Kc7q/Ta8wT
         YSovF9Yz9dnZphtDXyWHtqysAw0l6T5YtP7zdaY438WMU1ATLhO6k7mWBwJxfwxbSxzt
         OVUgfH7k1HHrIl5EnRMUdBpyxzP40YvpD9Iwa1jN752EY9UzjtE32dZ84JHq0tKu1vEq
         6ahw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qt3W0JiTqSB8R+xXsBMxCuDcxP1X/3rcsDFV6YCkEO8=;
        b=dLFHFMd4y7Cx0ELkzxw0KjgG+C66SpApldMV1j9649TZu6f11tqdip/71GtVFipsvb
         JcEqaDxWH+dBa5AHwKGBNmVDzWmkMfdAEGqBll0ngXyGDK9apjM6BJNPmVC2oTseGCLW
         ngevMIIxp8dBYlp58RLXJErMSSzqTH0Athjz9QivRjyi2rcFzcNDT5d/dLI3ZCXyHmN5
         xv9uxYyDYR5A/w3utMe7hDG13Jbjw3YqhYzkiqFkyAwojTCoZnEDBWZ82Cg2s/x9L6pk
         zXG7nW/IwTgu0U3V9bZTZHQ9H43nEfGC6woqFFO6vMMshIpGwgfiiHMDckOzHDxMMX5F
         hIfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qt3W0JiTqSB8R+xXsBMxCuDcxP1X/3rcsDFV6YCkEO8=;
        b=UlQTvRtW46tOPLi3fg2o5lXJYSuqaI0pud+ptmOY7gUuo/s12w96Yjq3sWuoVvSkvc
         cE3Z1/X6ezVt0FF6jlj/qzW/xv66/C9MEhZkWw0/DC6nIWPkgzuaXyn1U4HJsn1tg7M/
         e1cOkiYkHRV+RkibHo60/J4RKicHUMIX2OhYNl5D1F27gPdY0N7sXYLzYqKm8h44SOqi
         34fTdp7kJc7P2v4XKl6x8Xv4TxrtP6coNOUEGRdMQfHjuZpFWhZlQwT/rqbnKmcE9Q+F
         6S0sG4cMsIxLF182W/jcbuCLv1wsjmEwnp9y7JW4fLwdvHaJ5N2WsSoec4hvNyxADt+4
         InPQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUhyICQYcbjDqqnMCliaa5qbifn9Pg5jW2PyvCL4vum+xfnlSrw
	9ppUww1gjMpU95mhhDI3Lno=
X-Google-Smtp-Source: APXvYqwBdmpu5L++YTLn9OIbkquJ+utDLR94G1owLQU20BNkw+kCAh9TTFvLKLKy8dI1UFfBVN0tPg==
X-Received: by 2002:a6b:fd19:: with SMTP id c25mr4686104ioi.267.1567005750505;
        Wed, 28 Aug 2019 08:22:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:8b99:: with SMTP id p25ls872407iol.0.gmail; Wed, 28 Aug
 2019 08:22:30 -0700 (PDT)
X-Received: by 2002:a5e:8e4a:: with SMTP id r10mr5224517ioo.100.1567005750264;
        Wed, 28 Aug 2019 08:22:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567005750; cv=none;
        d=google.com; s=arc-20160816;
        b=w6NN83JP3iHlIrZZnxHk66F3aIrBwWTJFw9xlt7WLogZBpj5YNTthmRAjMjtUtJiAx
         O+joF1P1uNoc6hohy1pcGbrrtleOtRcg3z1PCn2kaTj1Q9xvyW/UCz5Y//779QuNBXo3
         Fiye6FczcGEPuDiPqt9S3R0+ssfWWST3TjZBxOABEDvja0b0inTiYK9R3WlBOMCNhDdD
         GbOkUQtC3LmoYUxKRopLthGAnutY1p1A/4Ko9O+I6IVq50YOKuOyJpdw3iCOM47WDIKQ
         5W52XzDF7ryXjha5SzGtgXOwILJlz4sdWF8M/Ho3lxin3v/6pXfY7z43Pb/nrLZU8XS4
         CQ+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=WCVunb/x2cI3C0CgoEN+vX6M/6jiwsURTYyBw3gGjsA=;
        b=cNnK2ExZILVNKTcMxYXp7TX5A7yIjxFP++3dzpt/9c4QjJMJFKC2gX0IxfpBO+c5Jg
         OtariygH3Tiz+hnOFPISQPSEEiH3qIgT14buZ6GsNxParXE6ow3FMvYa1brbFYRKhgdA
         c8BKbqa5hUnnegMLsKt/vOyH9QZaB9wJyYRAk6wAb/FLert/BN10NF59hYXwIdLHC5Qh
         KpKV53G26WYOAQLKkPJt7WTSMMvYj0ERiiB3fLBR37IaTB+pUbPj8/hxbOdsYMifw5Jg
         ORaX6JfZ49GdFSLHXX+jRwA/V/4KV3PROwveHUg8TeY8xXCJo8kzHll3txWQXqchIX6u
         qGyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from mx1.redhat.com (mx1.redhat.com. [209.132.183.28])
        by gmr-mx.google.com with ESMTPS id i4si103823ioe.3.2019.08.28.08.22.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Aug 2019 08:22:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) client-ip=209.132.183.28;
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id D58423C92D;
	Wed, 28 Aug 2019 15:22:28 +0000 (UTC)
Received: from treble (ovpn-121-55.rdu2.redhat.com [10.10.121.55])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 313D25DA8B;
	Wed, 28 Aug 2019 15:22:28 +0000 (UTC)
Date: Wed, 28 Aug 2019 10:22:26 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Ilie Halip <ilie.halip@gmail.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: objtool warning "uses BP as a scratch register" with clang-9
Message-ID: <20190828152226.r6pl64ij5kol6d4p@treble>
References: <CAK8P3a3G=GCpLtNztuoLR4BuugAB=zpa_Jrz5BSft6Yj-nok1g@mail.gmail.com>
 <20190827145102.p7lmkpytf3mngxbj@treble>
 <CAHFW8PRsmmCR6TWoXpQ9gyTA7azX9YOerPErCMggcQX-=fAqng@mail.gmail.com>
 <CAK8P3a2TeaMc_tWzzjuqO-eQjZwJdpbR1yH8yzSQbbVKdWCwSg@mail.gmail.com>
 <20190827192255.wbyn732llzckmqmq@treble>
 <CAK8P3a2DWh54eroBLXo+sPgJc95aAMRWdLB2n-pANss1RbLiBw@mail.gmail.com>
 <CAKwvOdnD1mEd-G9sWBtnzfe9oGTeZYws6zNJA7opS69DN08jPg@mail.gmail.com>
 <CAK8P3a0nJL+3hxR0U9kT_9Y4E86tofkOnVzNTEvAkhOFxOEA3Q@mail.gmail.com>
 <CAK8P3a0bY9QfamCveE3P4H+Nrs1e6CTqWVgiY+MCd9hJmgMQZg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK8P3a0bY9QfamCveE3P4H+Nrs1e6CTqWVgiY+MCd9hJmgMQZg@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.39]); Wed, 28 Aug 2019 15:22:28 +0000 (UTC)
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as
 permitted sender) smtp.mailfrom=jpoimboe@redhat.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=redhat.com
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

On Wed, Aug 28, 2019 at 05:13:59PM +0200, Arnd Bergmann wrote:
> On Wed, Aug 28, 2019 at 11:00 AM Arnd Bergmann <arnd@arndb.de> wrote:
> > On Tue, Aug 27, 2019 at 11:22 PM 'Nick Desaulniers' via Clang Built Linux <clang-built-linux@googlegroups.com> wrote:
> I figured this one out as well:
> 
> > http://paste.ubuntu.com/p/XjdDsypRxX/
> > 0x5BA1B7A1:arch/x86/ia32/ia32_signal.o: warning: objtool:
> > ia32_setup_rt_frame()+0x238: call to memset() with UACCESS enabled
> > 0x5BA1B7A1:arch/x86/kernel/signal.o: warning: objtool:
> > __setup_rt_frame()+0x5b8: call to memset() with UACCESS enabled
> 
> When CONFIG_KASAN is set, clang decides to use memset() to set
> the first two struct members in this function:
> 
>  static inline void sas_ss_reset(struct task_struct *p)
>  {
>         p->sas_ss_sp = 0;
>         p->sas_ss_size = 0;
>         p->sas_ss_flags = SS_DISABLE;
>  }
> 
> and that is called from save_altstack_ex(). Adding a barrier() after
> the sas_ss_sp() works around the issue, but is certainly not the
> best solution. Any other ideas?

Wow, is the compiler allowed to insert memset calls like that?  Seems a
bit overbearing, at least in a kernel context.  I don't recall GCC ever
doing it.

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190828152226.r6pl64ij5kol6d4p%40treble.
