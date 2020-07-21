Return-Path: <clang-built-linux+bncBCS7XUWOUULBBBPN3D4AKGQE2KL7OTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x939.google.com (mail-ua1-x939.google.com [IPv6:2607:f8b0:4864:20::939])
	by mail.lfdr.de (Postfix) with ESMTPS id CF5CE2273CA
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jul 2020 02:27:50 +0200 (CEST)
Received: by mail-ua1-x939.google.com with SMTP id z4sf1129871uae.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jul 2020 17:27:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595291269; cv=pass;
        d=google.com; s=arc-20160816;
        b=xdSmQqXTSCibdoj0fLdVs+5rgFvCEvC8P6L0xTbYlGB9u37PqPiv2gFellQ5yr1Vii
         Tl6ilBn/Gq51uX9yZuMiHNmUszK5jSbp4ySE0yu7jvB4SeFV1OMMfvAAw37Ds7U+N1zx
         7FF3wDUDbTtYKkP1JaN99m1j+3gBKaAJ8b5NjW5MPmA7H3gakMG4sb+oFeXCG+6OFeQ1
         efIX3FrzCZdddQRb9S7VGEgCNGzGDqU8yRw+NHO0PqO6EbZSTTUCE53umzWDkaQZ3oSC
         mzj/oZmHBbt9HazRjWICsmhbOvhJlFts8XUwmfMTVbiV+wlYAxnGAVmkBM6E4iZKA1CB
         6kdA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=aSrdl39kJ/2VkUPrty/aEUYTl6w9dOA7CABQBwv/b34=;
        b=ZJJNhuKr/SpDwxyWjuZOp0phIlsWWIsMswcnckwjQKzQC7hhyInpkcktaTaHRfouaB
         4I1QELULdrQiMzKEaFaQIZiUbmY1eWKdJM+Rg2EfdoNzKmF9Gv8sumGIaVZELDwjR6V9
         ulg6GW+5sKcITW253mLm0S9kRP66/+qUqznwXHuE0iIaheoBRwysQhCEEkg99ZVdvy1h
         v14aog8iTMIeVdUjRw340P9RV4rt/YyLthMXwCDchz0YE3JQJJSngDYLbaKl2HGSL3uA
         mNKHpiVBnkMjYQcEv3pP+UNmwgEZ8/rbB2FGT2qCSyyvuJzAxaTZ63xBgkgDh5jgJ5Q4
         BQJw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JnOQyrPO;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=aSrdl39kJ/2VkUPrty/aEUYTl6w9dOA7CABQBwv/b34=;
        b=sM+pdRvNbzKZnl8RKSNvQDXJImXuf1hgRISBY7RtjX5NlGR2PovtzyJKZ5bO5ipTxL
         EBZlyAgVJWIc/Hh7Q4PocWpH9MRUc2cqmcske3kZWimHLyo8rsb7+IcxS4J7OKJ2NJbG
         ZWCfiONRCrR4FfzTuDdhOz0prBeu3ptQrMnAAR8lr0y5uV1+5qnDArIGmeg71kya8zZ0
         3HjXrLqVjdHyGArAOo2dVb6KnhEc3UFPYB8pEzSWZHneNugYU3MgiIUBSNxoGJxh35Ur
         5aaodwhdaYw+84+8DETUqYInwA0S1I1WBOFn68Wch/AxYTcSl209E4FcaDG7EjyvSX1V
         bwtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aSrdl39kJ/2VkUPrty/aEUYTl6w9dOA7CABQBwv/b34=;
        b=b4820bRA64nRyvLBmE8t963pnapDQy/KSyq+Mh1o2Svbg5mS5Dkou30rqhEIqTX1xG
         beorXzxhu2n0Z8qaydu8nib+NMjmiRzH+bRcarTErqTYEkHVy2ZEA6w5j3EQ97khIMCB
         PwcUxkQUaDQaoyoD3DvXfPBlFAR58r7GroUgz0rGjB2zVjOK9BFeG+JIaU42c+HgB9+Q
         npnhMTMHkbumuL2NacDzxwqXESXXjknpLD4GyGfDDVcZY7DS+Rf6AWGaRw3q5nJJ6PYW
         puUm0MdmqUBhBEMJ+iIhf6/w39uNGgpNe5FZs0s00amauVet+7uw1WyqlRITKYaCcp4J
         /Hug==
X-Gm-Message-State: AOAM530HKzMYaFV6J3xOLGu2ZojvPoBw3oLgfzaHPZVPiNZ/izo4ogfL
	MYSgvsludn1uRlWdxpjLE40=
X-Google-Smtp-Source: ABdhPJzF+9NIqyTlze6yUseMF8OP+CgJCUsNiVlakIEH6OwhddcrKy702TNB1BmD8FiQYvR54TywGA==
X-Received: by 2002:a67:f455:: with SMTP id r21mr17785485vsn.110.1595291269680;
        Mon, 20 Jul 2020 17:27:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:3117:: with SMTP id x23ls385347vkx.11.gmail; Mon, 20 Jul
 2020 17:27:49 -0700 (PDT)
X-Received: by 2002:a05:6122:32f:: with SMTP id d15mr18941945vko.101.1595291269361;
        Mon, 20 Jul 2020 17:27:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595291269; cv=none;
        d=google.com; s=arc-20160816;
        b=wDbn3In2CAUihRX5X42CBNs0BN2BMNumnWfzkPPmxHok8CBBW/LlpjAUOxcqTFCK0b
         aGpy4DWuhOB1huP4xCkXuNcSY5L1elG8enydtHyh4TzdUgPkzf0PaeaN9yZxI1AP6lVn
         Tb29BX6jHJljMJ3Bj6QyjK7hCk3K7ppL9F0+8202v4l13uvHzSbULvwF3rWvu33IoN8u
         y7MT2Z6z/2BJ3Y4IW/chIg9e/4fzoXCV++in2c3ATaDxTyu5tctPce0kHJTq+hFYtXCx
         tqJorT4wUFw43+VDL7U1Ts4B+8eR7xbFQyScy7RE48wy/Uwb2QvooQRf7IS9/AlLqo9n
         4faQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=eHMkd52N9iG/J38uCcPxIkcFupcNU7Z95N/n272nES4=;
        b=Iahq4yh142y6TG7GQ7kGOgWJZ3aEAr3+mxiJCbJrRx0n9YoTEZSMHuFwSF/tG7qPh+
         LONozEIHBdYfToKOtxIHWEOVVT1CUO12+p7TaCK5fWlhz0+TzAvYLL0CYPNEpxfl8cGs
         wPxU7sHKGFgLDZIPUZwGiDIEWLHl7SK30Rvyle7yQ4MI9ehSfX1I08MQ6BupKkucAgLn
         mUZCA/c/r3obHXWSzr4uX9Ib+75TC5HYlyWLiOPky8PGQr9UnJwMIOHpbPsDWNcXx+Z9
         Otg5wnVs+XlPWUjbCdvgEggMp6qPEyCymHF26p3w5diPW8QWe3p7UBc41ObSC/i84/ql
         HlvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JnOQyrPO;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id g19si39128uab.1.2020.07.20.17.27.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Jul 2020 17:27:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id b92so764415pjc.4
        for <clang-built-linux@googlegroups.com>; Mon, 20 Jul 2020 17:27:49 -0700 (PDT)
X-Received: by 2002:a17:902:8d8b:: with SMTP id v11mr4583554plo.316.1595291268175;
        Mon, 20 Jul 2020 17:27:48 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:a6ae:11ff:fe11:4abb])
        by smtp.gmail.com with ESMTPSA id s89sm768445pjj.28.2020.07.20.17.27.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jul 2020 17:27:47 -0700 (PDT)
Date: Mon, 20 Jul 2020 17:27:44 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Manoj Gupta <manojgupta@google.com>, Jian Cai <jiancai@google.com>,
	Bill Wendling <morbo@google.com>
Subject: Re: [PATCH] Makefile: Fix GCC_TOOLCHAIN_DIR prefix for Clang cross
 compilation
Message-ID: <20200721002744.c5a4dj5t2hfac25o@google.com>
References: <20200720181237.3015826-1-maskray@google.com>
 <20200720181646.GA6160@ubuntu-n2-xlarge-x86>
 <CAKwvOd=tF7j-mTHMKvvmRkxjFZ-a2ah2+4zLY527WtebZzum8Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAKwvOd=tF7j-mTHMKvvmRkxjFZ-a2ah2+4zLY527WtebZzum8Q@mail.gmail.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=JnOQyrPO;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1041
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

On 2020-07-20, Nick Desaulniers wrote:
>On Mon, Jul 20, 2020 at 11:16 AM Nathan Chancellor
><natechancellor@gmail.com> wrote:
>>
>> On Mon, Jul 20, 2020 at 11:12:22AM -0700, Fangrui Song wrote:
>> > When CROSS_COMPILE is set (e.g. aarch64-linux-gnu-), if
>> > $(CROSS_COMPILE)elfedit is found at /usr/bin/aarch64-linux-gnu-,
>> > GCC_TOOLCHAIN_DIR will be set to /usr/bin/.  --prefix= will be set to
>> > /usr/bin/ and Clang as of 11 will search for both
>> > $(prefix)aarch64-linux-gnu-$needle and $(prefix)$needle.
>> >
>> > GCC searchs for $(prefix)aarch64-linux-gnu/$version/$needle,
>> > $(prefix)aarch64-linux-gnu/$needle and $(prefix)$needle. In practice,
>> > $(prefix)aarch64-linux-gnu/$needle rarely contains executables.
>> >
>> > To better model how GCC's -B/--prefix takes in effect in practice, newer
>> > Clang only searches for $(prefix)$needle and for example it will find
>
>"newer Clang" requires the reader to recall that "Clang as of 11" was
>the previous frame of reference. I think it would be clearer to:
>1. call of clang-12 as having a difference in behavior.
>2. explicitly link to the commit, ie:
>Link: https://github.com/llvm/llvm-project/commit/3452a0d8c17f7166f479706b293caf6ac76ffd90
>
>> > /usr/bin/as instead of /usr/bin/aarch64-linux-gnu-as.
>
>That's a common source of pain (for example, when cross compiling
>without having the proper cross binutils installed, it's common to get
>spooky errors about unsupported configs or host binutils not
>recognizing flags specific to cross building).
>
>/usr/bin/as: unrecognized option '-EL'
>
>being the most common.  So in that case, I'm actually very happy with
>the llvm change if it solves that particularly common pain point.
>
>> >
>> > Set --prefix= to $(GCC_TOOLCHAIN_DIR)$(CROSS_COMPILE)
>> > (/usr/bin/aarch64-linux-gnu-) so that newer Clang can find the
>> > appropriate cross compiling GNU as (when -no-integrated-as is in
>> > effect).
>> >
>> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
>> > Signed-off-by: Fangrui Song <maskray@google.com>
>> > Link: https://github.com/ClangBuiltLinux/linux/issues/1099
>>
>> Sorry that I did not pay attention before but this needs
>>
>> Cc: stable@vger.kernel.org
>
>Agreed.  This change to llvm will blow up all of our CI jobs that
>cross compile if not backported to stable.

Thanks. I did not know this.

>>
>> in the body so that it gets automatically backported into all of our
>> stable branches. I am not sure if Masahiro is okay with adding that
>> after the fact or if he will want a v2.
>>
>> I am fine with having my signed-off-by on the patch but I did not really
>> do much :) I am fine with having that downgraded to
>
>Not a big deal, but there's only really two cases I can think of where
>it's appropriate to attach someone else's "SOB" to a patch:
>1. It's their patch that you're resending on their behalf, possibly as
>part of a larger series.
>2. You're a maintainer, and...well I guess that's also case 1 above.
>
>Reported-by is more appropriate, and you can include the tags
>collected from this thread.  Please ping me internally for help
>sending a v2, if needed.

Nathan's draft patch on
https://github.com/ClangBuiltLinux/linux/issues/1099 actually works.
I removed the slash. The words are my own. Since Nathan explicitly
requested a downgrade of his tag, I'll do that for V2.

I'll do that anyway because I need to fix a typo in the description:

$(CROSS_COMPILE)elfedit is found at /usr/bin/aarch64-linux-gnu-
$(CROSS_COMPILE)elfedit is found at /usr/bin/aarch64-linux-gnu-elfedit

>>
>> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
>> Tested-by: Nathan Chancellor <natechancellor@gmail.com>
>
>I tested with this llvm pre- and post-
>https://github.com/llvm/llvm-project/commit/3452a0d8c17f7166f479706b293caf6ac76ffd90.
>I also tested downstream Android kernel builds with
>3452a0d8c17f7166f479706b293caf6ac76ffd90. Builds that don't make use
>of CROSS_COMPILE (native host targets) are obviously unaffected.  We
>might see this issue pop up a few more times internally if the patch
>isn't picked up by stable, or if those downstream kernel trees don't
>rebase on stable kernel trees as often as they refresh their
>toolchain.
>
>Tested-by: Nick Desaulniers <ndesaulniers@google.com>

Thanks for offerring proofreading service! I'm working on the
description...

>>
>> if people find it odd.
>>
>> Thanks for sending this along!
>>
>> Cheers,
>> Nathan
>>
>> > ---
>> >  Makefile | 2 +-
>> >  1 file changed, 1 insertion(+), 1 deletion(-)
>> >
>> > diff --git a/Makefile b/Makefile
>> > index 0b5f8538bde5..3ac83e375b61 100644
>> > --- a/Makefile
>> > +++ b/Makefile
>> > @@ -567,7 +567,7 @@ ifneq ($(shell $(CC) --version 2>&1 | head -n 1 | grep clang),)
>> >  ifneq ($(CROSS_COMPILE),)
>> >  CLANG_FLAGS  += --target=$(notdir $(CROSS_COMPILE:%-=%))
>> >  GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
>> > -CLANG_FLAGS  += --prefix=$(GCC_TOOLCHAIN_DIR)
>> > +CLANG_FLAGS  += --prefix=$(GCC_TOOLCHAIN_DIR)$(CROSS_COMPILE)
>> >  GCC_TOOLCHAIN        := $(realpath $(GCC_TOOLCHAIN_DIR)/..)
>> >  endif
>> >  ifneq ($(GCC_TOOLCHAIN),)
>> > --
>> > 2.28.0.rc0.105.gf9edc3c819-goog
>> >
>>
>> --
>
>-- 
>Thanks,
>~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200721002744.c5a4dj5t2hfac25o%40google.com.
