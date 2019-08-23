Return-Path: <clang-built-linux+bncBCUO3AHUWUIRBHPO77VAKGQEGPSHBDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id 96A199B1D5
	for <lists+clang-built-linux@lfdr.de>; Fri, 23 Aug 2019 16:24:30 +0200 (CEST)
Received: by mail-qk1-x73b.google.com with SMTP id o4sf9126644qkg.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 23 Aug 2019 07:24:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566570269; cv=pass;
        d=google.com; s=arc-20160816;
        b=VVqYmWdOO/PiNfkf4AgTD05mDOiBHq/n50Vq5SNdYMujtTHySG7P0hWKEFYuIe8g+1
         zNtNBG6I9YFaeCcnlOPy7hEQwl93usyk/Gj/of14UEKye4kuaZKsQTFD0Osydx3Y7oUf
         nTMCB39Ei8B/MnFkHolpceioynS6FP8LWmJKc1ccEuNTymYh5dofCzx5uJ8wbX/uE6iU
         GiE6F5qu07Euxe+JkiGpPgUsyoP82EzU4xHxqCfe1KgjUhTj4QqrEU5iYHPHocXOCSp0
         YkRVQcWLf7qsT8QpKVRiXarlFGf0QkikItPgWbw+t+/ZdO1qZ3DcXtEv/HVubHlard2u
         0oxQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=tqrHPI2xD8LFuTa8LI8W8EDdh1T0jl4puFTazGBb+rE=;
        b=pNG/3Q1k7GF4vV8RP6ucFmtLO4HOrmwgeMX5A/0gVC/FCJjH9IRhL3/42gSLDKK9Nw
         Gbe8DV75aEJIX3byRyoJ+t0uGhCUwSe1JWgDzAcc6X64hkez65QL6NunOGBKMlMlq183
         YodmN9njdImkgfk+2v5+bUrggK7+VDTt9n+1EXkwtoeLjHVidyh0dWp8nIgqRhoOkU+3
         nNUgPBgKlvONm41AKmwUvPCUYvX7y46Zda+3na1FrFwcaZtNl+1LhPM6LqI2u9ub7vDd
         ylBorkVrFLovOZavvS5KRyle0iceOQ+WUY+whuXYj7IYUfx/XrnsO3XMGguRsoLgki/y
         Z1Gg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ziepe.ca header.s=google header.b="ZI/ikWc8";
       spf=pass (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=jgg@ziepe.ca
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tqrHPI2xD8LFuTa8LI8W8EDdh1T0jl4puFTazGBb+rE=;
        b=hHFAFi98N+PHD4iEHsdGfKI0HXICNkpVAgMEvWI43Gr23+qPxSG4u9hxcYAbvplXjf
         lHA7mwId90uD8DLDlu8gUPKZM9MytWXuLwBtUBPN98BJH0iENAaIim5E1amksiEOs4iF
         Dh/2E6D6k9gAl/4qdjRg/7uIANSSTuPGWArPhwDGUeUQQ53q0Mu94lJfzWHa7wLLrPo4
         SQgF3a5gFYrHXFXLr8481Fvs9ln/RyUd0i+N0DGyobZ6Kr3uHfdHuHDSM2B7hea9eWTQ
         0vUBbRUUEVAsbeAHWOm+gXRPcizJ/QDa/9CCBwWSvx/Cj7d2bWDp4/ie02HdY5kDYdtN
         azEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=tqrHPI2xD8LFuTa8LI8W8EDdh1T0jl4puFTazGBb+rE=;
        b=UPTC7duIf7M457OUOS3MnLLVlJtfjCV2ydQCuo//6C+ATpOJ0iUk65l2lIshEkqz6a
         g8HafGJqma2I6pSPMaCDZW9sIIv34lV+s0fbpD/NODOOoC92gS2ULmrPe2ahHqLRRyhF
         t8j6QQgiOCdEu+KErrw19kK5ljEsJBvS+91a63t8j/K6GzE9y78KpfuK0nCadrmiqOKh
         x4WYLF3hxMJ0Km5wCzm+b3Sk0HdC527rZ7J/uTH1/EVWaPoTeTfk0DqIwXiHI9Y4Koq1
         QxU3ONJpp8re3i6zIofMm+atG8m8QeERyZzaWozJyBTZG7OPFJdNQ36In1iqsMrY0YJP
         gL0A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVCnccyPs72TvoROW3vOSzJlO4DLFuRh/t2pqsAaU04sN5dMcEK
	hUHGkqClKTejtzAM8v1p3EM=
X-Google-Smtp-Source: APXvYqxJ6QRxZgCoZ1UtztgI97QurVcsw7jLpLvZBSlDVHGb9ibq+yzQbyKp3lXTSEaWPMs3ORq9Dw==
X-Received: by 2002:a37:649:: with SMTP id 70mr4232623qkg.208.1566570269552;
        Fri, 23 Aug 2019 07:24:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:4a96:: with SMTP id x144ls3297712qka.15.gmail; Fri, 23
 Aug 2019 07:24:29 -0700 (PDT)
X-Received: by 2002:a05:620a:6cf:: with SMTP id 15mr4089878qky.98.1566570269125;
        Fri, 23 Aug 2019 07:24:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566570269; cv=none;
        d=google.com; s=arc-20160816;
        b=VuzgJeCPO0p6sr222vkJMMT/HRIziFBJi1+usWPlv62Q9PEV5k6ps4+lpOCvICdsrI
         uDN6QQtJKfvwJSwoUzgHFzBKEw4vlD6t3oRqkCjBM5jMHrP8A1Me8zfPmUu2zHB0sOTY
         3B9IJ1CT0eOmVoTYEX8StNPLDxs2dt2cktTyCvwAsFT8aJWpwxpAtJiLUQ53L2ofk2oy
         m+5qhLAc4f+SnIC3DYTjzEx4pMn0fQbiKUTrSa5toMWgvGw6w5CVs1LRFK5sehJUmgu3
         DD9KmER+y1yYhtzUp/OBEONAuvuGd1O9JXXflvAlr5kTsR0I/thi8YFKJ2GUY5NxTEhc
         x51w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=RZxP956OaKkH9WuNbAGH2Ye8Wz/eWZMm/eoqzNqOOhE=;
        b=GWMzVBz6PkHoxOSIwVIW4GZ1gainDbfD+5jGUN4sFn/gWLIeACYn8WPeIxLNe78Jgn
         aj3U/QU9hNtEVDHWEp3ZNjcw987xYvWD+6bzCD3ji5NWaoKcuTYPok4Tr/DipGHMEe3z
         88bzqfG4ACMUV7io2eN2xSI2HHo8iMgBpa4Vh+Da4ZfLtXJ+rpE7Ib2aBR1OSbPk7RQJ
         hSEaqcWOyBuGo0HqDd8CTuDP7XfFvTzS1Kb11cW+dWFBa66rU7UPgahrLmHng1wLMao+
         DZn9O+KKC101zqShAe/tY608zFRUpVB+z/zRmAInR845bh3RNMejRtb2NYN2v86o4L1n
         EgIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ziepe.ca header.s=google header.b="ZI/ikWc8";
       spf=pass (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=jgg@ziepe.ca
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id c79si186148qke.4.2019.08.23.07.24.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Aug 2019 07:24:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id d23so8345090qko.3
        for <clang-built-linux@googlegroups.com>; Fri, 23 Aug 2019 07:24:29 -0700 (PDT)
X-Received: by 2002:a37:a142:: with SMTP id k63mr4187227qke.487.1566570268736;
        Fri, 23 Aug 2019 07:24:28 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-156-34-55-100.dhcp-dynamic.fibreop.ns.bellaliant.net. [156.34.55.100])
        by smtp.gmail.com with ESMTPSA id j11sm773547qtn.20.2019.08.23.07.24.28
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 23 Aug 2019 07:24:28 -0700 (PDT)
Received: from jgg by mlx.ziepe.ca with local (Exim 4.90_1)
	(envelope-from <jgg@ziepe.ca>)
	id 1i1AUN-0007Wh-LJ; Fri, 23 Aug 2019 11:24:27 -0300
Date: Fri, 23 Aug 2019 11:24:27 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Bernard Metzler <BMT@zurich.ibm.com>,
	Doug Ledford <dledford@redhat.com>, linux-rdma@vger.kernel.org,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] rdma/siw: Use proper enumerated type in map_cqe_status
Message-ID: <20190823142427.GD12968@ziepe.ca>
References: <20190710174800.34451-1-natechancellor@gmail.com>
 <OFE93E0F86.E35CE856-ON00258434.002A83CE-00258434.002A83DF@notes.na.collabserv.com>
 <20190711081434.GA86557@archlinux-threadripper>
 <20190711133915.GA25807@ziepe.ca>
 <CAKwvOdnHz3uH4ZM20LGQJ3FYhLQQUYn4Lg0B-YMr7Y1L66TAsA@mail.gmail.com>
 <20190711171808.GF25807@ziepe.ca>
 <20190711173030.GA844@archlinux-threadripper>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190711173030.GA844@archlinux-threadripper>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: jgg@ziepe.ca
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ziepe.ca header.s=google header.b="ZI/ikWc8";       spf=pass
 (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::744 as
 permitted sender) smtp.mailfrom=jgg@ziepe.ca
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

On Thu, Jul 11, 2019 at 10:30:30AM -0700, Nathan Chancellor wrote:
> On Thu, Jul 11, 2019 at 02:18:08PM -0300, Jason Gunthorpe wrote:
> > On Thu, Jul 11, 2019 at 10:16:44AM -0700, Nick Desaulniers wrote:
> > > On Thu, Jul 11, 2019 at 6:39 AM Jason Gunthorpe <jgg@ziepe.ca> wrote:
> > > >
> > > > On Thu, Jul 11, 2019 at 01:14:34AM -0700, Nathan Chancellor wrote:
> > > > > Maybe time to start plumbing Clang into your test flow until it can get
> > > > > intergrated with more CI setups? :) It can catch some pretty dodgy
> > > > > behavior that GCC doesn't:
> > > >
> > > > I keep asking how to use clang to build the kernel and last I was told
> > > > it still wasn't ready..
> > > >
> > > > Is it ready now? Is there some flow that will compile with clang
> > > > warning free, on any arch? (at least the portion of the kernel I check)
> > > 
> > > $ make CC=clang ...
> > > 
> > > Let us know if you find something we haven't already.
> > > https://clangbuiltlinux.github.io/
> > > https://github.com/ClangBuiltLinux/linux/issues
> > 
> > What clang version?
> > 
> > Jason
> 
> You'll need clang-9 for x86 because of the asm-goto requirement (or a
> selective set of reverts for clang-8) but everything else should be
> good with clang-8:

The latest clang-9 packages from apt.llvm.org do seem to build the
kernel, I get one puzzling warning under RDMA:

drivers/infiniband/hw/hfi1/platform.o: warning: objtool: tune_serdes()+0x1f4: can't find jump dest instruction at .text+0x118a

And a BPF one:

kernel/bpf/core.o: warning: objtool: ___bpf_prog_run()+0xd: sibling call from callable instruction with modified stack frame

Jason

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190823142427.GD12968%40ziepe.ca.
