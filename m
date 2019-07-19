Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBAUZZDUQKGQE7R5PYKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EED06EAAC
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jul 2019 20:31:31 +0200 (CEST)
Received: by mail-oi1-x238.google.com with SMTP id l5sf13007631oih.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jul 2019 11:31:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563561090; cv=pass;
        d=google.com; s=arc-20160816;
        b=uk2w4jPOduxQ7N5yaerT3nmnYEo8bi9OrreL4cPv0R0/WsufIwSQ/Hes+VCAwec4h9
         hkFwySrOSAMu6ep64RMFPqmnJLB4mUefGUl12olYOaHevxv92lIDwNximP5gD1o01Pd1
         IKVTcquQcdGIFPWJLkGUdn8kGLnMGjrUlyocfZMiUHURcAeysj60EwyooUlQzdyySmgv
         WNXmJCK1u+17essbz3TNjT/EoDaVtgHtHD+oKDAWbvswSXC5fY7DSL8+DgKm2pdkzHdd
         u2n3TFrUiyJJOMXCRwebZW8RhnKuqt0sJFByM9/f7BQBg/Ux9vXtnrF2bJKtAGsX5pWw
         8waQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=L58RzxO74a9Xa1gKSII7W+dwg1p07pR1lQ125xNjEoI=;
        b=oPW8YY2IixVeqx/73tSw3FdiIyNT3IkdQinitKBlrdc0W6FCLW8MhDf7mVYjHvxgQr
         WLL/pmyDYdupPiVGw5DEcsgSVoF12wFM51stoLGT0N5xm3EP/fEwX7DhtGCO3T52Z1Xn
         HYm++dhYXw4bBf/cf+AA+HQtd9j0zfK0ULxaMXqg3RbEtkhXbguElpqHNrcIlvPxf0/G
         REyKC8fvsHwZGL7kmS3IskxTAO3H6+wUINnmWNMRQkSovt3rwDzgOkwsM9k8HN1nTYT+
         QSqSo5N0RtgMrnIntZtGSzQbkK2USe2/npMqpSzSoaXx81w0OIetm7A7I4b9SI/ILg6x
         XSFA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=L58RzxO74a9Xa1gKSII7W+dwg1p07pR1lQ125xNjEoI=;
        b=s8EPvf6k+sMFMws9Nxg7q5ywSW6Skt7OhoJXHShUiqPVeBCkb2Vu9ziqz9bthGDSdr
         hxEa91EhLwYDewL7abcGY5wdxjXJmqd/it0CUikJcO9vVF3+FHvQc1Hd7bopN7vnHSPZ
         +z12hbwnacte2wDaICVjfhY9LFh+VocZ0S66BKs64miEKBwuyVpFqGhqewhUDGX58z7j
         zdjapv+rAi+6l8d4iUZwqJtRTZIvtm+0EIWNn6zPU95optLkPJCqFnFD6+hA85jRNYnW
         FkBf+03Or8yvXczLQVAk4LZav040HFzASqpGSxZpzbo3qbOR1HZm3nVk3x94RYquoebr
         D2fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=L58RzxO74a9Xa1gKSII7W+dwg1p07pR1lQ125xNjEoI=;
        b=BBV2V1ohZpv7xXT3WvwXx9VQTK2u/tDPnMrnQcS3hx/e5iJRJM65R26mT4ZCQtjC0X
         yncFMt0ZMA2D6oGKNJ3b3jdPyJ72cmiTHmONnuYx+6tHe7H5E4GBcdUyoDqcwhMoB04Q
         ko4w1tAYJVPBRw0mhqcF6s0uJoHGQT7NLZN6SCKxclsUfDcftvqP88MVjSMIy9zqx6Ym
         h1+awzj8qT4nfHIfa6LEXGXr2YfYOHC547vutzN8rmbEjoNQZWhOs15uxR1Re5aZV8aO
         gfdV/miYAhPQhEjiLzaUX/pX/4GGqTf3M3Avi1KVQA3H5KftBEjkgDR6Epgqy5jxlKyY
         wQGw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUVvMpP12aaCb0XT6ROOehKgz0JYL0hZgI8kLekDORQxxGhG6Qe
	/5iXFd7GAAonESmANspyQs8=
X-Google-Smtp-Source: APXvYqwrJNPlT54y2Jkv6MUWpaa9qGa9Q8sX1Hk2eNn0I7m9aXWw1FiwsHTXKa/QT5dgE5JhbryLbg==
X-Received: by 2002:a9d:6a92:: with SMTP id l18mr38607242otq.294.1563561090184;
        Fri, 19 Jul 2019 11:31:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:2489:: with SMTP id z9ls6188642ota.9.gmail; Fri, 19 Jul
 2019 11:31:29 -0700 (PDT)
X-Received: by 2002:a9d:3f62:: with SMTP id m89mr41698894otc.44.1563561089815;
        Fri, 19 Jul 2019 11:31:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563561089; cv=none;
        d=google.com; s=arc-20160816;
        b=BTPfY5m55dKVvitBg3yyTejqQYxoE2MuCieOKVriXq0ASY+qQWijUm34DBTEIkLdiv
         bSuANJRh8p+lhGod1rgX+QMjADeb8p8wSqRNV9T2xVKcbC00qO2e9aac0gDXzibNUjzZ
         zI+WcYnImpWufvuWvMBHUE7u0XkraBrjiV9CjdKOJBihc4dtxr7TLuVAOBFrXecZ6R82
         +Zk4tCK42AHUqZa/1JRy21wcfKnBuJ3hDSYBWnUNbVlQK/FiWzYtytZvM8+T3tNNjzJ+
         G1sA1DZ2znMx3iDFsqM3G7C54TnNtK+y42hvG/y50MUl2TyKJo3deXtHONK+nH/r4qXV
         4K6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=jrawNIxbJqBSPxNnuvAsf025XKXKIK07qx9f9RMRE88=;
        b=kztVRZEXl6gtv07zhk/ywwaKf6tzhaC91TvfzcoIqJlD6DZOAfBbeMbuxVXeCUYmcu
         6xnxAu1hatynQ17Rdemkt7LxyVC0Tsh6tAvmeYH79EfCUTqOvnGY2qDfUxawvrqrdYth
         Sdr5Y4KdNkm90wseCORc/J3j6I+Ddjv3f745EgN71353wQlYKPxffTs73+7YPUqwZBcg
         1AYZMetQo8pJIkhMjvSK3zfFTQvAUYwDr1Era98nvfTsNWoMB16r1mCNPQSLeFd21DSt
         J9lT4TU+58zmwFfm7H++gZWkF0THrgj60Myc2eEv9VAXACnoi7nLTBWBxBPkZeXc8+wJ
         JO+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from mx1.redhat.com (mx1.redhat.com. [209.132.183.28])
        by gmr-mx.google.com with ESMTPS id q82si1699512oic.1.2019.07.19.11.31.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Jul 2019 11:31:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) client-ip=209.132.183.28;
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id A3141A3EA4;
	Fri, 19 Jul 2019 18:31:28 +0000 (UTC)
Received: from treble (ovpn-122-211.rdu2.redhat.com [10.10.122.211])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C052610190A1;
	Fri, 19 Jul 2019 18:31:27 +0000 (UTC)
Date: Fri, 19 Jul 2019 13:31:25 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Peter Zijlstra <peterz@infradead.org>
Subject: Re: warning: objtool: fn1 uses BP as a scratch register
Message-ID: <20190719183125.2tuhcch2rtanxvyn@treble>
References: <CAK8P3a12cVdrEXdgWkHGHP6O04mz5khaB7WgQ1nvOptaUTu_SA@mail.gmail.com>
 <CAKwvOdmoD1wVFLdWRXTA=c-p4oc6HDxsfhXq5wQpD-8oFUfNNQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmoD1wVFLdWRXTA=c-p4oc6HDxsfhXq5wQpD-8oFUfNNQ@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.30]); Fri, 19 Jul 2019 18:31:28 +0000 (UTC)
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

On Fri, Jul 19, 2019 at 11:23:16AM -0700, Nick Desaulniers wrote:
> On Fri, Jul 19, 2019 at 11:10 AM Arnd Bergmann <arnd@arndb.de> wrote:
> >
> > A lot of objtool fixes showed up in linux-next, so I looked at some
> > remaining ones.
> > This one comes a lot up in some configurations
> >
> > https://godbolt.org/z/ZZLVD-
> >
> > struct ov7670_win_size {
> >   int width;
> >   int height;
> > };
> > struct ov7670_devtype {
> >   struct ov7670_win_size *win_sizes;
> >   unsigned n_win_sizes;
> > };
> > struct ov7670_info {
> >   int min_width;
> >   int min_height;
> >   struct ov7670_devtype devtype;
> > } a;
> > int b;
> > int fn1() {
> >   struct ov7670_info c = a;
> >   int i = 0;
> >   for (; i < c.devtype.n_win_sizes; i++) {
> >     struct ov7670_win_size d = c.devtype.win_sizes[i];
> >     if (c.min_width && d.width < d.height < c.min_height)
> >       if (b)
> >         return 0;
> >   }
> >   return 2;
> > }
> >
> > $ clang-8 -O2 -fno-omit-frame-pointer -fno-strict-overflow -c ov7670.i
> > $ objtool check  --no-unreachable --uaccess ov7670.o
> > ov7670.o: warning: objtool: fn1 uses BP as a scratch register
> 
> Thanks for the report and reduced test case.  From the godbolt link, I
> don't see %rbp, %ebp, %bp, or %bpl being referenced (other that %rbp
> in the typical epilogue).  Am I missing something? Is objtool maybe
> not reporting the precise function at fault?

I haven't looked, but it could very well be an objtool bug (surprise).

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190719183125.2tuhcch2rtanxvyn%40treble.
