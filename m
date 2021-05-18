Return-Path: <clang-built-linux+bncBCJZRXGY5YJBBLMXSGCQMGQED2KYOOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc38.google.com (mail-oo1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A3A38830D
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 May 2021 01:20:15 +0200 (CEST)
Received: by mail-oo1-xc38.google.com with SMTP id p4-20020a4a48040000b029020eb67f7264sf1676618ooa.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 May 2021 16:20:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621380014; cv=pass;
        d=google.com; s=arc-20160816;
        b=nd4Ak2ksPpVtj3y9bZG9imYbf4pKJPZOT7YWBP5NWPe8r5Y+AmYVWoptjdfimmQpUF
         Nikh9+F2Lq+jeuFQHRsbXeZoHOQVS9lkm8lJGd/lEAZmLE2Xjo5tZCm8ZzuYI98nUvN7
         eNZsQaXQNQTQEU59tqgzMwKPA0Rm81aTIlW33b1+xnmPxwZFoVoxqnAqIAtekECKHM/o
         qfU5Jc5EDdqQplLvr4KLKZuRgWWgUxNbnyboLtu1PGLlMW60tInh78jApLFMBqvJUmH8
         QBpp/e9zTJM2m+eCv4LcxzCBxJ4LwvRBzjuXULusG6VJ6zVO2vV4Vy1w9fyXBmqkFE6d
         ldIA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:reply-to:message-id:subject:cc:to:from:date
         :sender:dkim-signature;
        bh=4ERZtYB7kWM+dIQzwYqR9UQ4sNfSWW+i0rqsmK7RKa8=;
        b=FkzsIuGK2h4uZc280kbqaFZARDWnYj5HeO43QL2Nnca646AZG2QnCtaZ42qPY95oXz
         dyNQaAtQNqxi8rBOJ1s6/5Wb3jlesRT9WdCl9+AwPC7usBI+17itCWWv5KpLUtprv9F/
         n2nYdp8YErJsrypsWvUfJJFGIPGkPw5KCl1oCgK6X4QzJtZpQiGv0+dbd0tNjhC6cPRl
         TM+lo+EtiocjkmOdc9xTDTLnF7sggR72kTsJnpmkALMnkD/cb4pD/ZAEOz8FMBS3hBrC
         +L9JyMNHdNwCNDfty5zn21fG1de0/QZYZRNU54t6NA6wu5z/Uh8umrAB+LDJufrF2zcC
         eY1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=LB8tvo8I;
       spf=pass (google.com: domain of srs0=vemi=kn=paulmck-thinkpad-p17-gen-1.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=VemI=KN=paulmck-ThinkPad-P17-Gen-1.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4ERZtYB7kWM+dIQzwYqR9UQ4sNfSWW+i0rqsmK7RKa8=;
        b=ALVE+JCyezgwWAQm7/tP+5nIJSOWwTs5qT2nTuApTzC8GkSMdQaoPOKj+fNFUdzfwf
         NCsk6sPzDKa5/bCDPmW+e3/uZIG1rZjWK0y1pSLBrpIXi8ShPwgljq8qX291GfKix43t
         23vem4YPYmo7WRODrgKJ5NtskPwbU/Y6Ac7f2w1m1vmrFW+QP3iQDvXfJvr6XY1bEKwO
         NDSZinrLT8/e9EF/zqaW2RVKY6b8Nm4j36KoY8OxSNReNIFl8WtregjpbLzlrcGkHfX+
         tw1c/zfQEJJEuEpc4SdNiUaXv0AXiEMS/6zfs7T/cieo/a0IdoedC5jW8o/jwOKG9BZa
         I0jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4ERZtYB7kWM+dIQzwYqR9UQ4sNfSWW+i0rqsmK7RKa8=;
        b=Wxk7bXRmx7UB936bNWEfiyAMxvKHfBvmBTlEeC08mgvrdg5cLCW2ynFWGH2YWQaKjQ
         8LwrSWRt+qMEheRpDag6TjauCEs1JUxt7gKKakBZYXOXigL5xFyimCLh8nccH/rMCRiS
         bawGosQZlHH59VhTYbE4N2fBJVowIj9CfzeFelfdWgV7Bip+pOTh+F7QUYSiFRz/yX/Z
         6m6NAvi76z7L6gZsG5AdYUD6+H8DH0bAh3zAJbtd7iHdHymXV4i875O2dXpUsLyTwJtK
         QevqvmZ5nArgll2QCC/i0+E/AVv/sCdVJbtoxieAkqiF4t5LRgk5MHQ+7XnxhWDOPzJU
         lNAg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533zSR5cDc1atoLCt08V6PNUPMJvJPs/oheiXRX63bnaBlLx3kYP
	cPYtTSQ2yzOJk3YsqgnYexI=
X-Google-Smtp-Source: ABdhPJwclB06ZK9zy+HFC8YJH/sQUl5nBd3bBpUVxMxt3fIn8Xlh5Ugoa1tLPd5YOLtZbwdwut9Bzg==
X-Received: by 2002:a9d:6c81:: with SMTP id c1mr6161316otr.248.1621380013979;
        Tue, 18 May 2021 16:20:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:4303:: with SMTP id k3ls1499641ooj.10.gmail; Tue, 18 May
 2021 16:20:13 -0700 (PDT)
X-Received: by 2002:a4a:8706:: with SMTP id z6mr6269081ooh.41.1621380013646;
        Tue, 18 May 2021 16:20:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621380013; cv=none;
        d=google.com; s=arc-20160816;
        b=eMH2DQW87dCKiq14+rEjkzLXLX9b0nK4aGC6XfMS0qkkh0V2BQVuIbpqjnHhcs3X6m
         wWR4qfCDC+qA5gfN2MS4NqK2WL+UkdlG9Gdu3FgLsLddvrx6X67ulRlKJbW5sHxQHioT
         h5aEhqKApFPQb4VCQnMLvVXfrwTBqg6Xydi9y6Qu4CjUqsQO8X/PqGz/wvQBTQanXZ55
         6E5bLTAAlOVxgqCD7t3jajFktCcOtoMjAsuxK8QRvxAkxrQX1XeNpw0qefZxwMR67ckb
         I5D/Bou/SxLzITcoAB6MdNdRYtu32OSWsCWX14X6nSh6VcEjeFSrAA3ROIP/7e1r7Xe9
         za5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=aLUI75Dpi4IC9OegSu4OzqJl6UaBUSAsSgBD8zulNCE=;
        b=iKWCrGb7spLV5PYyVhwWXl+51ffphmVrFb+GoBGppHzwKK99/gSuhsxm269juEXfpJ
         lqViBRyh6SPNIxNDcrVmmf6yx19eYmwvpDKz5ZQINQN61eqUlNklzxkvfRqLV7QdUN4I
         UxwMyHJkZdaYMwnK7pJloO8x8LMgFfI15SofGTifoIX0eSEJvXI/K1ZqiPHhCM92fHag
         jkfDJUWvT27IEtVXKlbGcpfNV8nzQjjGnlpH5a0wHD0Yaz1z6yYsfwt1Q/knId8BQqjp
         HCMpVJgZjjCEi9I52W0BnvgYhRRjTh4EqXa0AuYs8iwK5Kg9Nr2u/Ws/SIPAyLtpkhGo
         cKiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=LB8tvo8I;
       spf=pass (google.com: domain of srs0=vemi=kn=paulmck-thinkpad-p17-gen-1.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=VemI=KN=paulmck-ThinkPad-P17-Gen-1.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 88si1796471otx.3.2021.05.18.16.20.13
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 May 2021 16:20:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=vemi=kn=paulmck-thinkpad-p17-gen-1.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id EBB6061059;
	Tue, 18 May 2021 23:20:12 +0000 (UTC)
Received: by paulmck-ThinkPad-P17-Gen-1.home (Postfix, from userid 1000)
	id B862D5C013C; Tue, 18 May 2021 16:20:12 -0700 (PDT)
Date: Tue, 18 May 2021 16:20:12 -0700
From: "Paul E. McKenney" <paulmck@kernel.org>
To: Marco Elver <elver@google.com>
Cc: Arnd Bergmann <arnd@kernel.org>, Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Dmitry Vyukov <dvyukov@google.com>,
	kasan-dev <kasan-dev@googlegroups.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] kcsan: fix debugfs initcall return type
Message-ID: <20210518232012.GA2976391@paulmck-ThinkPad-P17-Gen-1>
Reply-To: paulmck@kernel.org
References: <20210514140015.2944744-1-arnd@kernel.org>
 <0ad11966-b286-395e-e9ca-e278de6ef872@kernel.org>
 <20210514193657.GM975577@paulmck-ThinkPad-P17-Gen-1>
 <534d9b03-6fb2-627a-399d-36e7127e19ff@kernel.org>
 <20210514201808.GO975577@paulmck-ThinkPad-P17-Gen-1>
 <CAK8P3a3O=DPgsXZpBxz+cPEHAzGaW+64GBDM4BMzAZQ+5w6Dow@mail.gmail.com>
 <YJ8BS9fs5qrtQIzg@elver.google.com>
 <20210515005550.GQ975577@paulmck-ThinkPad-P17-Gen-1>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210515005550.GQ975577@paulmck-ThinkPad-P17-Gen-1>
X-Original-Sender: paulmck@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=LB8tvo8I;       spf=pass
 (google.com: domain of srs0=vemi=kn=paulmck-thinkpad-p17-gen-1.home=paulmck@kernel.org
 designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=VemI=KN=paulmck-ThinkPad-P17-Gen-1.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Fri, May 14, 2021 at 05:55:50PM -0700, Paul E. McKenney wrote:
> On Sat, May 15, 2021 at 01:01:31AM +0200, Marco Elver wrote:
> > On Fri, May 14, 2021 at 11:16PM +0200, Arnd Bergmann wrote:
> > > On Fri, May 14, 2021 at 10:18 PM Paul E. McKenney <paulmck@kernel.org> wrote:
> > > > On Fri, May 14, 2021 at 01:11:05PM -0700, Nathan Chancellor wrote:
> > > 
> > > > > You can see my response to Marco here:
> > > > >
> > > > > https://lore.kernel.org/r/ad7fa126-f371-5a24-1d80-27fe8f655b05@kernel.org/
> > > > >
> > > > > Maybe some improved wording might look like
> > > > >
> > > > > clang with CONFIG_LTO_CLANG points out that an initcall function should
> > > > > return an 'int' due to the changes made to the initcall macros in commit
> > > > > 3578ad11f3fb ("init: lto: fix PREL32 relocations"):
> > > >
> > > > OK, so the naive reading was correct, thank you!
> > > >
> > > > > ...
> > > > >
> > > > > Arnd, do you have any objections?
> > > >
> > > > In the meantime, here is what I have.  Please let me know of any needed
> > > > updates.
> > > >
> > > 
> > > Looks good to me, thanks for the improvements!
> > 
> > FWIW, this prompted me to see if I can convince the compiler to complain
> > in all configs. The below is what I came up with and will send once the
> > fix here has landed. Need to check a few other config+arch combinations
> > (allyesconfig with gcc on x86_64 is good).
> 
> Cool!
> 
> If I have not sent the pull request for Arnd's fix by Wednesday, please
> remind me.

Except that I was slow getting Miguel Ojeda's Reviewed-by applied.
I need to wait for -next to incorporate this change (hopefully by
tomorrow, Pacific Time), and then test this.  With luck, I will send
this Thursday, Pacific Time.

							Thanx, Paul

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210518232012.GA2976391%40paulmck-ThinkPad-P17-Gen-1.
