Return-Path: <clang-built-linux+bncBDN6NFU45ACBBW7GU74AKGQEVHD52II@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D6E0E21C573
	for <lists+clang-built-linux@lfdr.de>; Sat, 11 Jul 2020 19:14:03 +0200 (CEST)
Received: by mail-lf1-x137.google.com with SMTP id c9sf8415626lfr.6
        for <lists+clang-built-linux@lfdr.de>; Sat, 11 Jul 2020 10:14:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594487643; cv=pass;
        d=google.com; s=arc-20160816;
        b=dkbguuQ03CMqg/Sakupzr8K0OWT8G6YsVimJ1zLjAQOlC1xEglJLodo20XbCwaPM+n
         TsgS2wrsvHV8gt5Kh6pcB6XcrASi7MxUa3mBv+CFwN3aWyiEQx41wiK0V0nr5Uz71m4T
         zb2MiWO+SdZgguWpd4ox9GFO0nz78xaHQYwuv4QZ64uPPys/SyuMLIXn3SgoMZ1K55ab
         YoMd4+0odsf//6u/++Yrp63ZG6ySXFsVYU7gj4q6WKLhb4VxNpQHc+m4kJfU2NHm0OJU
         TliIVWxneDgIYGB6tVFhYYO3XL/f121Dn8pnax7owgjRkgDJT5qQyPVmufyw4KVu2eYL
         GLRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :message-id:in-reply-to:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=dpHZt//Qkz5ou/6s2aLZpvHUYjkZH7JetqVsIoRI2Tc=;
        b=YibkLfoNoKvu1etqgxtxbj7t5w+ekehWA0U6f4JqA8cnqZWR+mvDB44Fe5Rc/J8YO2
         vDIhlY++TQjUairx2Cd2WZEG1o4Hr1KXQ1Oco8Nw21qBCkAIOq1Ff0g0IoL77g7vVYpk
         C1PARRioulQrhBvwCr542zY7fswYTAs5Fwu6iEMGFKejhpaZyXkL59ttTt8Md326/MiC
         hgS4n6zcJ9QRoSzCJ6QtkDLa6wMOmsKQBU+na3uOqSU4Nndrv/nxMBbJAoVabCDf0LXx
         UKvOpU7jgZ+XyxVZPLS98OwhjlRK1GZ1RRll6HGZ7zgSHdk2RyuqpsqHXqkpMzNdI9n8
         a3ug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@pobox.com header.s=sasl header.b=wzoZdzhq;
       dkim=temperror (no key for signature) header.i=@ldpreload.com header.s=mesmtp header.b=oh97ADew;
       spf=pass (google.com: domain of geofft@ldpreload.com designates 173.228.157.53 as permitted sender) smtp.mailfrom=geofft@ldpreload.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dpHZt//Qkz5ou/6s2aLZpvHUYjkZH7JetqVsIoRI2Tc=;
        b=kc2/NF2AVqp/MQ53qKpCRTQnGCr1VEYmf7nqCmRV9WobAVsarc0CT9xHT2ukZtOz5x
         cGaqUtezKvdRHIg3TqaUnRJ/OeUrGU0zkTCW6uUnyQcRrG7nbiFLyWrr5zF8eJSmQuyq
         LhIGbQkGtfcDC3tt0NSg3zU3zPu3gARw/c/MzoLrFK/pkMw9/f4QN0tZuzhYXYXPsDN+
         nzOwrDlgzB9QKz8Vi/WvKA8XIg4Yx2IXYVdtPzFU255bZPCeGK7ToyjAeyUK+RPBxNey
         CnOVez9Dx0jEaXy3ptg0VOLS50J1fIy/w4tkOUideWREnDONGWgaPwvMsSaXTWVjPMks
         EKVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dpHZt//Qkz5ou/6s2aLZpvHUYjkZH7JetqVsIoRI2Tc=;
        b=JuB/LjnXc7bSLtxDnqc7z879OIU9/XIGF4gKh3OParoA2YQTDJmNXlNqKwMxu9Rpx4
         FKYcs8iY3GHZF4XZlyX6Tk1fZn8S+YDFDYZcOqBGTZJHXVKhfKDQCrkQ9PlND/cF0MUw
         TSfS0Wps2KjKCp0tZzyxVAwUqF7nukrhZmFhu+PfpYr8KJsJj0WxZus/q8eIczN26g38
         aTf7SU8TdOSEK3o6N+8/3i1qvk4da4y4Uy+1MCSFovnzsgQo69Di9Eu/gJfp6aE6dter
         QvACje/ChpcVP1HqBPi/ZOZrdQ2hkJr1aKZJb78b+jCzHqLF/Lup+44Al0R3TEvGI9f9
         Kemg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533n+vA0Sh4FQFr3nMzrDZHBwdj6ekB30OAMiukRjG9dh86uc9/o
	5fkVvS1jQOEb/08ifgS3+Zg=
X-Google-Smtp-Source: ABdhPJyLJlJYsObvriFvw8+Az6DoyCiwG3XprwXQ4U7Wa6zSWPOTH8SkajKsRi3jawgWd+eznWsstA==
X-Received: by 2002:ac2:5691:: with SMTP id 17mr47903670lfr.209.1594487643323;
        Sat, 11 Jul 2020 10:14:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:4ec1:: with SMTP id p1ls402691lfr.1.gmail; Sat, 11 Jul
 2020 10:14:02 -0700 (PDT)
X-Received: by 2002:a19:4a94:: with SMTP id x142mr48279835lfa.207.1594487642337;
        Sat, 11 Jul 2020 10:14:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594487642; cv=none;
        d=google.com; s=arc-20160816;
        b=Bxksy6X2W2N6ToNr5T6MZFyaTf8JH/Bo6yNKoIV8Ph7KDEMfN3SyFmtpotmQLBqn2N
         I0isalANu9fUZ0b2u8tafJ1FPdjRhqDXYs+AVeF+r+xI12bdZo6MlqOSMMIgvPncRFbq
         W6DxNI5GS56HRrgA4a4IE9BImgimDZXdocup20sJbL+76sd+DUHsKLJzHwFZ+SLQlrae
         oeO+7FPJfheikgcwk9C8EYyvx8cx9WjJ5SGnIgZDWTclK8aOMcLKiuPv7HWYf3yIJ3PF
         IMyolzEJsfQ1FFMALx7+A7BYhBD1XSdSepjgdCnbVthgh/0gmAWNmdG42Gb1wUcPVgat
         xKNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:dkim-signature:dkim-signature;
        bh=dpHZt//Qkz5ou/6s2aLZpvHUYjkZH7JetqVsIoRI2Tc=;
        b=FEYfAd5y28N7Aa7X8RT8UAanWUu//HfvZRMSfKp0EJfeCswh+Ds4iwfbLW346VdT14
         KTSE/O/SpJx54rrVz1SMjTyztI9lsXQ5Rw4tq9niJkdU7EAeEkL/nUyhyPkh0jhnluFU
         PElcOVUEnxv9bkIhqNPYyoukOOSiTiDRWpmLlf9QiGo3wMsGgXt4rrsgUW4vy+ZMoRVf
         xg14+z7id4KIo2gaDj8wAvo+9kdVYvRnupW+zNDzRkwpOkpYzE3aKXbqfGbiwt8gc5DP
         UfaidH7fhDo9ZAiH9kwcLtFfjgmGYsORCgaY7JkVqG/SIatbvTThaSIXkJDyUD/Ih/ob
         VEpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pobox.com header.s=sasl header.b=wzoZdzhq;
       dkim=temperror (no key for signature) header.i=@ldpreload.com header.s=mesmtp header.b=oh97ADew;
       spf=pass (google.com: domain of geofft@ldpreload.com designates 173.228.157.53 as permitted sender) smtp.mailfrom=geofft@ldpreload.com
Received: from pb-smtp21.pobox.com (pb-smtp21.pobox.com. [173.228.157.53])
        by gmr-mx.google.com with ESMTPS id e2si520420ljg.8.2020.07.11.10.14.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Jul 2020 10:14:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of geofft@ldpreload.com designates 173.228.157.53 as permitted sender) client-ip=173.228.157.53;
Received: from pb-smtp21.pobox.com (unknown [127.0.0.1])
	by pb-smtp21.pobox.com (Postfix) with ESMTP id 2C1FADBA71;
	Sat, 11 Jul 2020 13:13:59 -0400 (EDT)
	(envelope-from geofft@ldpreload.com)
Received: from pb-smtp21.sea.icgroup.com (unknown [127.0.0.1])
	by pb-smtp21.pobox.com (Postfix) with ESMTP id 24BACDBA70;
	Sat, 11 Jul 2020 13:13:59 -0400 (EDT)
	(envelope-from geofft@ldpreload.com)
Received: from cactuar.ldpreload.com (unknown [198.27.64.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by pb-smtp21.pobox.com (Postfix) with ESMTPSA id E869DDBA12;
	Sat, 11 Jul 2020 13:13:55 -0400 (EDT)
	(envelope-from geofft@ldpreload.com)
Date: Sat, 11 Jul 2020 13:13:54 -0400 (EDT)
From: Geoffrey Thomas <geofft@ldpreload.com>
To: Nick Desaulniers <ndesaulniers@google.com>
cc: alex.gaynor@gmail.com, jbaublitz@redhat.com, 
    Masahiro Yamada <masahiroy@kernel.org>, 
    Linus Torvalds <torvalds@linux-foundation.org>, 
    Greg KH <gregkh@linuxfoundation.org>, 
    Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
    Josh Triplett <josh@joshtriplett.org>, 
    Steven Rostedt <rostedt@goodmis.org>, LKML <linux-kernel@vger.kernel.org>, 
    clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: Linux kernel in-tree Rust support
In-Reply-To: <CAKwvOdmuYc8rW_H4aQG4DsJzho=F+djd68fp7mzmBp3-wY--Uw@mail.gmail.com>
Message-ID: <alpine.DEB.2.11.2007111307100.4589@titan.ldpreload.com>
References: <CAKwvOdmuYc8rW_H4aQG4DsJzho=F+djd68fp7mzmBp3-wY--Uw@mail.gmail.com>
User-Agent: Alpine 2.11 (DEB 23 2013-08-11)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; format=flowed; charset=US-ASCII
X-Pobox-Relay-ID: E6E95AD6-C399-11EA-9281-843F439F7C89-67873895!pb-smtp21.pobox.com
X-Original-Sender: geofft@ldpreload.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@pobox.com header.s=sasl header.b=wzoZdzhq;       dkim=temperror (no
 key for signature) header.i=@ldpreload.com header.s=mesmtp header.b=oh97ADew;
       spf=pass (google.com: domain of geofft@ldpreload.com designates
 173.228.157.53 as permitted sender) smtp.mailfrom=geofft@ldpreload.com
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

On Thu, 9 Jul 2020, Nick Desaulniers wrote:

> Hello folks,
> I'm working on putting together an LLVM "Micro Conference" for the
> upcoming Linux Plumbers Conf
> (https://www.linuxplumbersconf.org/event/7/page/47-attend).  It's not
> solidified yet, but I would really like to run a session on support
> for Rust "in tree."  I suspect we could cover technical aspects of
> what that might look like (I have a prototype of that, was trivial to
> wire up KBuild support), but also a larger question of "should we do
> this?" or "how might we place limits on where this can be used?"
>
> Question to folks explicitly in To:, are you planning on attending plumbers?
>
> If so, would this be an interesting topic that you'd participate in?

Like Alex - I hadn't decided yet but I'll definitely attend for this!

-- 
Geoffrey Thomas
https://ldpreload.com
geofft@ldpreload.com


