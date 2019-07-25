Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBN5447UQKGQELVAGNKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x539.google.com (mail-ed1-x539.google.com [IPv6:2a00:1450:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A948754A0
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jul 2019 18:52:08 +0200 (CEST)
Received: by mail-ed1-x539.google.com with SMTP id e9sf21360543edv.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jul 2019 09:52:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564073528; cv=pass;
        d=google.com; s=arc-20160816;
        b=OWaCc5sPAqbA8rTP6vBXpNhjzzTWuV3fMPjgEkJ4PllZE9eqJoAFAXb2GxbBampPGE
         HAUbuTLLHd5u2AunVXnt4cEtnj+7uuowQ6qqv7xpUYVpxc0JWMj4dvwWtc8aZ8pNh7wK
         +OadvBcadmQaJFRLn/3k/cWv3qikD5ql3Med+H32a40myv6S2G9+2aEA4DXeNEtolCJh
         17LrPZHv7zv3yY78Dnfl23peVVAOVoqjBoSKl03Ko2KU/5050Y69IZc4BegVB8OEQqW+
         N/xjQHgUuta4o0sPNiNohE2N09xAP6loVfofMU0SsOi7q/9WgqBODFS5fBCdTBlOsys2
         N1eQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=JqkHvaa5EEOxtuw+SmThBFL9wG4Cdmj+nVgta+QGeiI=;
        b=u8fxF9FFOpGTfeMB9o5wI4HXw+SGXPUWgo9kkk019gaEJOS4nbi4i/84yr8hQXyvce
         ZoC+S79Yo/7gAstjxLz8RrFUXOf9SEaXbgpNRmIlHLbQUWNRPDPy4qOW2Bo9BLyOyhWO
         UpWABl+bo3TbtWsIXBIadW5oXgaa37OSEaSALoedJnfyECrKAe4Wfc4f4+UdGid7dNFY
         NXKjFjt1SUGuTcOVj5TttJT2LgABuvJcoam3COAAvBJ8fWHErws73orvLvJH4zvmJtd/
         laRlliX23gl0pRlNplxqtagpsrH+SQCPNoAt15/iiknATDJhLwDxhGPvQtm3tKkYGpdV
         g5zA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=h0PmMI87;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JqkHvaa5EEOxtuw+SmThBFL9wG4Cdmj+nVgta+QGeiI=;
        b=JILsiMvdDmUYv9VS5aEEUs0qLrMEPXxww34G7DrAMqQGSbbYs6Dep0n2FiWnsiqtkr
         LbVRC3ogKZmK5x6OLcQBvg9osERK/t5V0M90rTviY4tszcWk00GblEs1TnoVFsMAvWRS
         /Hn4UIflXQ62mALA+rRvlqAvUlcfxxP+3iobG/L1/ft3cDt76XWOzqVHQNn/J8lc1llT
         oCCJSXmjRAnX1cqiB+U9qG1ie9fZvg4i98YYQgX9UeW+LIIqoorM3evupODRPYJkuzl3
         JKkBgmqAXQCkTzbN4Jnk+nB8sOCUh9/rjjzOcZ8EHvfEcRUcVbQUKXuSKMLdlHf9IRPI
         GlNQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JqkHvaa5EEOxtuw+SmThBFL9wG4Cdmj+nVgta+QGeiI=;
        b=OQ5EsptToHNCxzzcRw/P5S9DR1ZAolWjvuRu0n5h3Cljo1lbbGxhwCwhpMuchQuQjH
         Zeii6DnOtJqsDghs9H+SKKHHthKEJrI7NZtw64hw7IMvpw9BD5J22z20v4EVBjSSxd+2
         VXkHooqUc0YlCrjcWQkFJ/bpWdrQiqd475Rz+HLMx7P4tRErjKTwSwH08JUI8lJuBPtP
         fMKRmFvCBsfImNfygFPMj0gs4/Ie9fiiVmApxIdsuPgodj14coXjpy6LkWBT3YTpQsQQ
         BU7X+VM/z3WFWQ5h4e1KRQmZNlvx6EI+nqlJ0gu4adwKk77qfywlSuGUkbUjt5Grnhd1
         e2rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JqkHvaa5EEOxtuw+SmThBFL9wG4Cdmj+nVgta+QGeiI=;
        b=OFaYOFyY3lcE0Xd91pxZIw+6OjFdpJKSr1tRKyzp1Ylv63j4M0OmpaPNBuUiS0Uczs
         O5rc6U5W+hibmVknuW8XHJJUqyyaLjthYbpb56GffKoUxRYrGCuusMWuvavTtX1gJoDx
         TNLd9Yrbb3O26PbxBrQDR+fARSfyB9OgoTadVk4X+3bdD18Xu4KelIIxcq+cbXHsLPaC
         av+Qnpk4ZXuyQq0I0ABAwFd5c8klBHk5t59ACwBfMKCyA6p9e1cJB7a7G3xmafIKlog1
         VdS2MfWXCNwtUDf/u5L1c9ss7RaheATBPXv3/fgdiTHRO2RWk0oWVqFbryqLF4sFC93h
         MQgw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWKNpf4iBYdYsPBezjOOVBMB80AZg0imt9xb+pSeDTLHWOSHdYy
	aLDRP7zgyi21Q70s0YLzOP4=
X-Google-Smtp-Source: APXvYqzxas18WJxq/bV7wvRB8rIfy8fig3LoWpy+3/baSxE/LL3pY/NmshG7fMIkfhRKX5TiHQIGlw==
X-Received: by 2002:aa7:d4cf:: with SMTP id t15mr78033788edr.215.1564073527958;
        Thu, 25 Jul 2019 09:52:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:8908:: with SMTP id e8ls11926412ede.4.gmail; Thu, 25 Jul
 2019 09:52:06 -0700 (PDT)
X-Received: by 2002:a50:f4d8:: with SMTP id v24mr78705031edm.166.1564073526953;
        Thu, 25 Jul 2019 09:52:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564073526; cv=none;
        d=google.com; s=arc-20160816;
        b=ZwJ39VdSmOgKmtZyU45cgtT2UAIN7hzQq163hKL8w0Lnboa9JYevcrIW0DvbVztgX/
         TiU9EHp/pnTe4EwwhV/j2g08FsmgKMwuyet9PbiFEVTCv3fhq46qOLjxK8QdyBfU9m30
         EVOrVFAV/tHeVJBwzc3fNBcu8etekd+F39CIUX+pP/V0ViFAf+1tKWvwW/44YJ6BZh2+
         /wZDU1ecauD0Vl3OGm2rac/mvkMkphEX2my9wfSu5o7OFKKyFv/NFdXdK7osoHbugG6o
         PfbJFZ+pCFJ/Ga2kPMIWHtuFCfSRq3xuzfN7xGxMc4we598P1PG6qsTFMtk+hWefBwGj
         BxYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=sWSygQdm+2XmycE+O6VucDWGigtecSiZnncaGKMjkHM=;
        b=NV5lcbo+jb8bIqk+BnJ15Ry0G3wPzPj0VVCSAZioZoV7aT4rv8shJCgMXUiThaNjzR
         KszoQKVzUTao1lUCdBMU7TLFUwk4wU57Dp3rsO71LSA8XWTW4qWc9ayTdUPMrRla7sig
         OyOW9Gyhqi6khlwUen9XCdsHGMKLZnsNJwzAg1cyjGRA+rQG/sxEZBewrI6YkEYBopEH
         pAznwFQY2iKb5718FQiFx1TJp7M2pm+reHIl6lWVgb4jN0Z2Lsgup/FnJpPdCAIYav4y
         ZOW1FY2PIdR77obl6fPEV0X1QO25lQKEMQ6feRIn6J+7N691EnR7yGn3UzhDOepKiEuA
         yNUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=h0PmMI87;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id k51si17066edd.0.2019.07.25.09.52.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Jul 2019 09:52:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Received: by mail-wm1-x344.google.com with SMTP id f17so45342792wme.2
        for <clang-built-linux@googlegroups.com>; Thu, 25 Jul 2019 09:52:06 -0700 (PDT)
X-Received: by 2002:a1c:a686:: with SMTP id p128mr17812705wme.130.1564073526252;
        Thu, 25 Jul 2019 09:52:06 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id g131sm34894700wmf.37.2019.07.25.09.52.05
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 25 Jul 2019 09:52:05 -0700 (PDT)
Date: Thu, 25 Jul 2019 09:52:04 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Stephen Boyd <swboyd@chromium.org>
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>,
	Michal Marek <michal.lkml@markovi.net>,
	linux-kernel@vger.kernel.org, linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Peter Smith <peter.smith@linaro.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH] kbuild: Check for unknown options with cc-option and
 clang in Kbuild
Message-ID: <20190725165204.GA80773@archlinux-threadripper>
References: <20190724235030.131144-1-swboyd@chromium.org>
 <20190725051857.GA53904@archlinux-threadripper>
 <5d39cda7.1c69fb81.6e01c.0e70@mx.google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <5d39cda7.1c69fb81.6e01c.0e70@mx.google.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=h0PmMI87;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Jul 25, 2019 at 08:41:25AM -0700, Stephen Boyd wrote:
> Quoting Nathan Chancellor (2019-07-24 22:18:57)
> > Hi Stephen,
> > 
> > Was the second Kbuild in the subject line supposed to be Kconfig?
> 
> Sure. I'll change it to Kconfig.
> 
> > 
> > On Wed, Jul 24, 2019 at 04:50:30PM -0700, Stephen Boyd wrote:
> > > If the particular version of clang a user has doesn't enable
> > > -Werror=unknown-warning-option by default, even though it is the
> > > default[1], then make sure to pass the option to the Kconfig cc-option
> > 
> > Hmmm interesting, I did not even know that was possible... Is that a
> > clang configuration option or an out of tree patch? Looks like it has
> > been on by default since clang 3.2: https://godbolt.org/z/mOmusu
> 
> I asked and it turns out that we force this flag off in the ChromeOS
> toolchain so that we can compile the multitude of packages in our system
> that assume various GCC specific warning flags. I guess this is easier
> than patching all the Makefiles out there.

Ah, that makes sense. I forget that most versions of clang have to
compile thousands of packages and such.

> 
> > 
> > > command so that testing options from Kconfig files works properly.
> > > Otherwise, depending on the default values setup in the clang toolchain
> > > we will silently assume options such as -Wmaybe-uninitialized are
> > > supported by clang, when they really aren't.
> > > 
> > > This issue only started happening for me once commit 589834b3a009
> > > ("kbuild: Add -Werror=unknown-warning-option to CLANG_FLAGS") was
> > > applied on top of commit b303c6df80c9 ("kbuild: compute false-positive
> > > -Wmaybe-uninitialized cases in Kconfig"). This leads kbuild to try and
> > 
> > Prior to 589834b3a009, how did cc-option work at all if
> > -Wunknown-warning-option wasn't enabled by default? I assume that clang
> > would just eat any unknown flags while returning zero so it looked like
> > the flag was supported?
> 
> Yes. But just warning options?
> 
> > 
> > > test for the existence of the -Wmaybe-uninitialized flag with the
> > > cc-option command in scripts/Kconfig.include, and it doesn't see an
> > > error returned from the option test so it sets the config value to Y.
> > 
> > It might be worth explicitly saying somewhere in here that clang will
> > not error on unknown flags without -Werror + -Wunknown-warning-option.
> 
> I think it warns on unknown flags, just not unknown warning options
> (-Wfoo), so I didn't mention this.

Ah right, duh (it's in the name of the option...), sorry wasn't
thinking.

> 
> > 
> > > Then the makefile tries to pass the unknown option on the command line
> > > and -Werror=unknown-warning-option catches the invalid option and breaks
> > > the build.
> > > 
> > > Note: this doesn't change the cc-option tests in Makefiles, because
> > > those use a different rule that includes KBUILD_CFLAGS by default, and
> > > the KBUILD_CFLAGS already has -Werror=unknown-warning-option. Thanks to
> > > Doug for pointing out the different rule.
> > > 
> > > [1] https://clang.llvm.org/docs/DiagnosticsReference.html#wunknown-warning-option
> > > Cc: Peter Smith <peter.smith@linaro.org>
> > > Cc: Nathan Chancellor <natechancellor@gmail.com>
> > > Cc: Nick Desaulniers <ndesaulniers@google.com>
> > > Cc: Douglas Anderson <dianders@chromium.org>
> > > Signed-off-by: Stephen Boyd <swboyd@chromium.org>
> > > 
> > > Change-Id: I3bb69d45bb062d1306acbf19bc0adfb60f706442
> > 
> > I assume that shouldn't be there?
> > 
> > Overall, seems okay to me (took me a sec to understand the bug,
> > certainly a very specific one). It might make sense to explicitly add
> > somewhere in the commit message that this syncs cc-option behavior
> > between Kconfig and Kbuild as a whole, as I didn't understand that at
> > first. Thanks for the triage and sorry for the breakage!
> > 
> > Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> 
> I reworded the commit text a bit now and I'll resend it soon. Thanks for
> the review.
> 

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190725165204.GA80773%40archlinux-threadripper.
