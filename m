Return-Path: <clang-built-linux+bncBCYIBK4PW4CRB5X4T74AKGQEFJ6RSBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63f.google.com (mail-ej1-x63f.google.com [IPv6:2a00:1450:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E0A621AECA
	for <lists+clang-built-linux@lfdr.de>; Fri, 10 Jul 2020 07:36:55 +0200 (CEST)
Received: by mail-ej1-x63f.google.com with SMTP id do21sf4995994ejc.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 09 Jul 2020 22:36:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594359414; cv=pass;
        d=google.com; s=arc-20160816;
        b=gwR6Z27vFfAHHvTZDWyK/uOoVfU8EnxO2Qq9mgFm6qt2sxVmf1EUK1c1VS9BAzE9Y9
         RsqaSjPp65NUGAham1gcMaJIAnf+2Qp5RhkkJxob0gW+EdG3LFx6cH47/4g1eyKhPgmc
         E6vl1X7elUDxuXnfB3m+eyOFA+jlyAuqfpn9ZjhmzXXc8AkC9La0z4LnlLCaIg5h3nG1
         HkL82xxkbhDPtN4ypyeYnIBrbC5Et/XTCPzYTMJ+/d1glMJhp+5VSttspvKv1/167K5m
         DmXJKH3BiKF9UPUIqZlWKy5f5M4YvKgLxhQTvHMt0tKzlQ8/qoWa72IxTTns0YyQaUC4
         TNSw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=gNulNBA7odPKNNATbNONJk56ttd0h/LhfZIRHIcRa5g=;
        b=bi37rUHs8/U6/t7UUadT9pJdilg4SXYW3rCnKD1S6yCgNnEK55ug/sMjIMKJbUeOpd
         IhUCbet1HfN/spYWJZXYNT7xz6+y+ZpB/uWEsK89keL2lGR0MdIxqYhTe7naSnM0dyTi
         wqXFg6Dfig7ctKfpSH029k9sDko2ki4SUKwYV/OF/zm7JEKaqZc0cb7O1eOpTNCMe25k
         HIZ50Ta4ANDzy2TBre+XgZK2MLO7tJGTNs4/DEFsTlT6PO/oVL5eOAi/d3tmjuuHRrMJ
         wTWPAMciXxgDw5Dt42ZT01U4+qQqBnfSg2a/rDfMkNSwZj8htk28WLAGzUBo9msd1FUc
         UnrA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of josh@joshtriplett.org designates 217.70.183.199 as permitted sender) smtp.mailfrom=josh@joshtriplett.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gNulNBA7odPKNNATbNONJk56ttd0h/LhfZIRHIcRa5g=;
        b=O36UtPnl2o14tGKVH5AK9qO1WgDwXYAovwR8vVqtdjdlGFKAGxewiJIGVqhZamGvn+
         rfwQM/gxFAbYjDIVrgTOEqVZp8tioB5HhZfOThZtxrawVoc8Ic7svR/RSNd7cPpwAJYL
         TX9ZfjdNTdB6NSoEf5RRwSxLErz8Ih/9tUFQ9ZmfAlo+T+r4HE4z0RFsrU2gzs22J1NW
         t44YVzvpXkXG+9k7ADH2mPoqoPcUa8A81N9LuTbC+H1pCNWyFutjq81LhMvpAgr3QZjy
         tJnP6jj069hSlgp5m3OLurPNTF/6iiI/0aicUvL9c4WUAO9QrikRiCRy3nzM1+3E1VhA
         gpGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=gNulNBA7odPKNNATbNONJk56ttd0h/LhfZIRHIcRa5g=;
        b=Mq9h/BaLcxBgKEA9qZ+fPRtOs9bCvsJEV20CELafAD20vdJQ7BW1DQiorRy3HJS6Qy
         3fcU+cteRv0IacIj5uFEJKIUYwOJ9qANYmEgiJ5psIZyq8XLrdIB3NFtYApKhhqzulGJ
         QDbKxBV0s03rdCvKK960HeQfCKfDdlykKW+DlLP6FBmL1zaD+SOwBt417heBJTwNAogR
         gkTbA03ZeQAGTXmbiR8M9PzAy9X0JsXiylrZYM0x9/t3R072qeOleyTOalH92+9lLHrr
         GRZn9pCMg0Roa1+/999qZNKJYwfDwtVKbcqvBnULbfylF4tz/TOShISdDbkRkjJCZL2s
         OUEw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Cj2bhCOd36Q3M+T/zGJ78tdkYFaKUqGHs3cXYb5av4hRJYiQ0
	d7zItn24CyPu9yGLZK4SUk0=
X-Google-Smtp-Source: ABdhPJyU/jTraciJ26QNcLCH1R55buhJSjMUvEXx7OcxcNIvQBXqGpdlgHXAA2x5cAq/PwqCoKDNhw==
X-Received: by 2002:a50:cdc6:: with SMTP id h6mr74866149edj.111.1594359414770;
        Thu, 09 Jul 2020 22:36:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:b2cd:: with SMTP id cf13ls3548571ejb.10.gmail; Thu,
 09 Jul 2020 22:36:54 -0700 (PDT)
X-Received: by 2002:a17:906:5595:: with SMTP id y21mr61399916ejp.61.1594359414218;
        Thu, 09 Jul 2020 22:36:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594359414; cv=none;
        d=google.com; s=arc-20160816;
        b=DnE0VPJw0KJ05KpkVgf9tawictRE6EAVDbkmc7uXu5+bF5H99NMKhZHRe3Pt5MCl3c
         8zf/qO06riPsj2EfqVCXNQjHpmPSqjwsAwL4WfchIvb1rpzsD6dDnl/glBVLKh1cdJ99
         zw0gYNyNgbfsHcco2gZJyvJxGVDRhXsGpStUbJANDdfWiEfGCUi/h2MD2WFJfHYPJMvR
         ktsWWb2ckFpp7ZPHdlOycuysp09Z7IBqaDt872Nd19Sf+C8pNdhJ699SA2mgEix5RFUm
         rkHnxElOo3bIT+VthKWHgqR5mcLDgZlD4tu/WxzmRoTz95oRZgs26g4enkYJZ+4lQpuF
         chNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=6A9Whrldh+ioY+P9HWTU177mm3KlgoTA8jzTfBSCErc=;
        b=Xc4bjfDEyIsQ8u1YgD5QeNlPgP2212MOxaxW1qfrTGwxBrU8F5H6ZxMR6HPhO73ZFL
         rkwHG+kYIXkDDcZRTodWXpQ7HYRioWqtQhjvi/r8eRTvCp6DqnZuuKAlsN9RoFEWJsIB
         dlZm6J/mrF3TF5m+wWfQuChVHRfcEBP41qen4Npy8mDOJNnZgWlOG6leVDoAsLZ4IZJH
         KZ0qVsym8ydN1qBctZxpoKHvXbiRevLZCP/SsBp+1kM6wy/cTlPkqOINag3uMzV9T+HZ
         tsS0Ei+nDx10SzzhaTOuiaosywozaGhGfX1bM3Qp5cw04Q8hwc07XgKbFit7Z6d7KyUH
         ttkg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of josh@joshtriplett.org designates 217.70.183.199 as permitted sender) smtp.mailfrom=josh@joshtriplett.org
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net. [217.70.183.199])
        by gmr-mx.google.com with ESMTPS id x21si278128eju.0.2020.07.09.22.36.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 09 Jul 2020 22:36:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of josh@joshtriplett.org designates 217.70.183.199 as permitted sender) client-ip=217.70.183.199;
X-Originating-IP: 50.39.163.217
Received: from localhost (50-39-163-217.bvtn.or.frontiernet.net [50.39.163.217])
	(Authenticated sender: josh@joshtriplett.org)
	by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 44079FF803;
	Fri, 10 Jul 2020 05:36:44 +0000 (UTC)
Date: Thu, 9 Jul 2020 22:36:42 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: alex.gaynor@gmail.com, geofft@ldpreload.com, jbaublitz@redhat.com,
	Masahiro Yamada <masahiroy@kernel.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Greg KH <gregkh@linuxfoundation.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: Linux kernel in-tree Rust support
Message-ID: <20200710053642.GA7282@localhost>
References: <CAKwvOdmuYc8rW_H4aQG4DsJzho=F+djd68fp7mzmBp3-wY--Uw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmuYc8rW_H4aQG4DsJzho=F+djd68fp7mzmBp3-wY--Uw@mail.gmail.com>
X-Original-Sender: josh@joshtriplett.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of josh@joshtriplett.org designates 217.70.183.199 as
 permitted sender) smtp.mailfrom=josh@joshtriplett.org
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

On Thu, Jul 09, 2020 at 11:41:47AM -0700, Nick Desaulniers wrote:
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

I hadn't planned to attend the virtual event, but this sounds like a
topic I absolutely have to attend. Please follow up if this proposal
gets accepted.

I'd love to see a path to incorporating Rust into the kernel, as long as
we can ensure that:
- There are appropriate Rustic interfaces that are natural and safe to
  use (not just C FFI, and not *just* trivial transformations like
  slices instead of buffer+len pairs).
- Those Rustic interfaces are easy to maintain and evolve with the kernel.
- We provide compelling use cases that go beyond just basic safety, such
  as concurrency checking, or lifetimes for object ownership.
- We make Rust fit naturally into the kernel's norms and standards,
  while also introducing some of Rust's norms and standards where they
  make sense. (We want to fit into the kernel, and at the same time, we
  don't want to hastily saw off all the corners that don't immediately
  fit, because some of those corners provide value. Let's take our
  time.)
- We move slowly and carefully, making sure it's a gradual introduction,
  and give people time to incorporate the Rust toolchain into their
  kernel workflows.

Also, with my "Rust language team lead" hat on, I'd be happy to have the
Linux kernel feeding into Rust language development priorities. If
building Rustic interfaces within the kernel requires some additional
language features, we should see what enhancements to the language would
best serve those requirements. I've often seen the sentiment that
co-evolving Linux and a C compiler would be beneficial for both; I think
the same would be true of Linux and the Rust compiler.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200710053642.GA7282%40localhost.
