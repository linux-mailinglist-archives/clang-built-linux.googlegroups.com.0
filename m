Return-Path: <clang-built-linux+bncBD4LX4523YGBBG6UQGEAMGQEYZB4MDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id 29D533D7EFE
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 22:18:37 +0200 (CEST)
Received: by mail-pj1-x103b.google.com with SMTP id f1-20020a17090a8e81b029017720af1cf6sf263731pjo.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 13:18:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627417116; cv=pass;
        d=google.com; s=arc-20160816;
        b=YQCHX1hkhxDerD68RvR/vCwgCsBKWHX0v1O3yAiYMhrXemT07Ug/IYJV4X4tB8HRPz
         6sS4ZXXovR38LRij64Yevce0s/DWrQomebXVVTsS2yDfcFNhR8yWPQla2xmHql2xDJwx
         jY9It/BzBxiBz41s6AE+Bq2AFfaDHqVbMYSHk8XjyfJn1OsZPdqkCSNrGOoOF3af/Ruc
         HD1XHkycrJYKKsOdH1i3ks5mFlQRFo4hKapTx23QO2A1jkSbAivwWtwM3jPmqUg/s6yY
         nrqpYyXe5LFMKOkFWTbyq22LIUEY9NCoyShXUjz7l16fMhTvfAv8vlVLz5KWxXHqVd/a
         OTtQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=a4RlR937w/UHsQZ+0Shb0ro9UnnFGRFQlUnVV3TgeQY=;
        b=ploNVKMu7Lm1apve8oIzNgL10K2hyJV2ZXzUgevHh0QGWaocYfRpyqBqpV/v3I8DTO
         YzWKMkgA0TXKPDoYMK8iKTKK8J69cL1TQwhmP7poWj0IPOR4vjQOM8J/1zaAHx5XTklE
         5Y8BQQslYXhDdaiPLyiyPxPQoAcYzeYomre7sLULKSfXOcy77F+fH0GCkUIM8WMTbqtF
         34oVKCgcpEl6A1RtEhWs2gr+HHWU5o9ns5msDIXL+1gRQhGolana9/pLDzUG10cF7Wq0
         MnPst/ZqVcSSS7PaiBHynYkhoMsdzWbhu1ORK31Na6x3LX89gj4y1xPl9QsiTVQRA6PM
         /qpg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=a4RlR937w/UHsQZ+0Shb0ro9UnnFGRFQlUnVV3TgeQY=;
        b=IrIFZTBf2T2N3+JsjPUhWJNaXSAycDm1JNtUH54/l6USxVBWqiGw0iEY9AvFThb7GG
         RdBAKqm8Nt5rBcKkYHKp5qNSjmhhTTtTKjU9WtPis2U/Nktb+bNkZhPF3ybVJZ2+c47h
         JrOJ6cqaKJyp6vhFutqoUM8pLh1WQkEZlbDexmZaA8ssNzaH7dboRKRaHrAscIPEyu2X
         cjEA5LxDZ6jccbcC7M4mX0fIVkYiAFfdQVcX1wPoXwFcjdI5W9TYkM9fhHVC/sLkD3ps
         kE4Ahpjks4FcL60XNy5Yzx5PXNU+8dsobJ1nNdynMgr1X7tVU3HUeoa4CmnU0sMdOm6c
         +C+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=a4RlR937w/UHsQZ+0Shb0ro9UnnFGRFQlUnVV3TgeQY=;
        b=qKhQEWlwQPf64MCLgyxzqACBhjyn0M9DUgvqiR+F2/HOrD4L/srBPwM5zuwRMcA8IP
         E0vLNH36HkzxcPMJwEm5+LB9/JCa2LW5Oil5KHYSHP7yWxYHYTzTva4l9CZM3rDtvGiZ
         9MEfgzfasmTb8W+Jy3VPevXq+wfBzE7wh6sYiv4rCvkQKAJ1+y0rHvQz/3XyOYHgXYuj
         WYwPODTq4+eR8wx6kW08xsd0vX2+7FdF1h7GqhELkpVdx7AnicpOcbFQ86dewOzNtyLD
         vf6HSj4vRmOzJ3D1rdTrbD/wbwx5sTn8WKqBVBKhaXI6JHm3nr+IuMI5dfKjbq29vn++
         VgvA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533FAoWcgtWs5ucbPJ6ewRR+JQ+x09egh48hQh2RSHe2eW9xLz7L
	oehk1LFDngfDxHmnRLybEsY=
X-Google-Smtp-Source: ABdhPJzPyK5QayTgZe7PyZZXeVPn1qYJ1F4jgPW3YTwpZbHF5iB+on4vI+g65yrrZLHMXN2V2u65PA==
X-Received: by 2002:a65:6489:: with SMTP id e9mr25197016pgv.409.1627417115851;
        Tue, 27 Jul 2021 13:18:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ed82:: with SMTP id e2ls11176037plj.2.gmail; Tue, 27
 Jul 2021 13:18:35 -0700 (PDT)
X-Received: by 2002:a17:90a:f486:: with SMTP id bx6mr1785532pjb.26.1627417115088;
        Tue, 27 Jul 2021 13:18:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627417115; cv=none;
        d=google.com; s=arc-20160816;
        b=pAuwfl8wcfUF5EyvNmdLGErMN7rK1k5ADHwSyHB2fF1FHigLyVKwbbEwC6jGtHeaOz
         eH/RauAxlY7Ix6C8f09IQpyox6ipkSbQnYpUBjsAikIUgOQiXzCCu+V/n2xIGeUvOYtQ
         XXQzcm2El0jB3EkYwJHJ8h3+LagS2DwfcKsoEMR+mb1C9f/fzNHun/9SXkdap3DixUiK
         k/5/FtusiWlZDwEgtlTrLO7hVFlhf51tQFO6eK3ccvPDf4ElNsqqCGUVman4NCHHlwFr
         jyigsxC0ckejmGpbJHe6cGMPiH34bygprv992wJ7EPb2RjC2Z7otsQ6Bi9hP9hayH6LW
         3e4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=OUF6YpFqjle/wEU+YyvqiwgXbhiy7OL7/NvwhyoQHNY=;
        b=y7E37Dsp7+ht6vNujoqqQcYzgngd9b1l6th1l0bnFAHAmMBJB3OXKBJsgKRaPuZ5nV
         Q/PIixQFXpGzTlXObVVbkZB+vcDg4SnfmFEgBrW4dHlR8JPbBLEo4Y3YPCJ7Y3P9Q52i
         B3mK1CReLZTdviDhrRisDe0PEkJkW/YY8R5IiTZiu4EKj5RQpJgHlfBHeYR6Eukh9t2x
         xchflnpyOEqbjgpvXU0LozyF+UlTZ1uEc4wFVPBmQBCySwUmx2y0BltYwhioOoZ0r6tz
         ApxmU2Ed7l2KM1z84hWMXZ/NLVJcdSYdcQ30+HxjK3WmRS3dQiA3gJd47rybe+AqKM+a
         qMgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTP id gg14si50300pjb.1.2021.07.27.13.18.32
        for <clang-built-linux@googlegroups.com>;
        Tue, 27 Jul 2021 13:18:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 16RKDTXL032385;
	Tue, 27 Jul 2021 15:13:29 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id 16RKDS4x032383;
	Tue, 27 Jul 2021 15:13:28 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Tue, 27 Jul 2021 15:13:28 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        Bill Wendling <morbo@google.com>,
        Nathan Chancellor <nathan@kernel.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        LKML <linux-kernel@vger.kernel.org>, linux-toolchains@vger.kernel.org
Subject: Re: [PATCH v2 1/3] base: mark 'no_warn' as unused
Message-ID: <20210727201328.GY1583@gate.crashing.org>
References: <20210714091747.2814370-1-morbo@google.com> <20210726201924.3202278-1-morbo@google.com> <20210726201924.3202278-2-morbo@google.com> <c965006c-88e1-3265-eb9c-76dc0bbcb733@kernel.org> <YP+ZOx8BETgufxBS@kroah.com> <CAGG=3QX68umw5Ws9_HuGkqoTNT=Q1+QB7YpSaqw3R_kPsbxwsg@mail.gmail.com> <YP+ql3QFYnefR/Cf@kroah.com> <CAKwvOdm62a7mrLZb_eciUO-HZj7m3cjgfvtQ=EqRy9Nh0rZOPg@mail.gmail.com> <YQBJfAuMJhvd2TcJ@kroah.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YQBJfAuMJhvd2TcJ@kroah.com>
User-Agent: Mutt/1.4.2.3i
X-Original-Sender: segher@kernel.crashing.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as
 permitted sender) smtp.mailfrom=segher@kernel.crashing.org
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

On Tue, Jul 27, 2021 at 07:59:24PM +0200, Greg Kroah-Hartman wrote:
> On Tue, Jul 27, 2021 at 10:39:49AM -0700, Nick Desaulniers wrote:
> > I think warn_unused_result should only really be used for functions
> > where the return value should be used 100% of the time.
> 
> I too want a shiny new pony.
> 
> But here in the real world, sometimes you have functions that for 99% of
> the users, you do want them to check the return value, but when you use
> them in core code or startup code, you "know" you are safe to ignore the
> return value.
> 
> That is the case here.  We have other fun examples of where people have
> tried to add error handling to code that runs at boot that have actually
> introduced security errors and they justify it with "but you have to
> check error values!"
> 
> > If there are
> > cases where it's ok to not check the return value, consider not using
> > warn_unused_result on function declarations.
> 
> Ok, so what do you do when you have a function like this where 99.9% of
> the users need to check this?  Do I really need to write a wrapper
> function just for it so that I can use it "safely" in the core code
> instead?
> 
> Something like:
> 
> void do_safe_thing_and_ignore_the_world(...)
> {
> 	__unused int error;
> 
> 	error = do_thing(...);
> }
> 
> Or something else to get the compiler to be quiet about error being set
> and never used?

The simplest is to write
	if (do_thing()) {
		/* Nothing here, we can safely ignore the return value
		 * here, because of X and Y and I don't know, I have no
		 * idea actually why we can in this example.  Hopefully
		 * in real code people do have a good reason :-)
		 */
	}

which should work in *any* compiler, doesn't need any extension, is
quite elegant, and encourages documenting why we ignore the return
value here.


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727201328.GY1583%40gate.crashing.org.
