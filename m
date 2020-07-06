Return-Path: <clang-built-linux+bncBAABBOVBRX4AKGQEI6PSS5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id ED833215BBF
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Jul 2020 18:26:36 +0200 (CEST)
Received: by mail-ot1-x340.google.com with SMTP id 104sf12711098otv.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Jul 2020 09:26:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594052795; cv=pass;
        d=google.com; s=arc-20160816;
        b=eRLJnDOFmkPy9BrWHe1CxJ9Q0E20iJ2ZfIAgH0i2f9IvQJH19MocT+0JlEoD1VPUVA
         y3EfQOlzK+GajAyk06DWSrzuFLuO7e+YKaFr2qWj07U6mbttgUS2+iRgJg8QXnisNvaN
         nUS9Gx4rGqPsuN0m+d2LdFkydQuzWiLyQlut8G0r8JLp+7YiAmOVC6MIqz6D0MiiGjQJ
         hxxPVxaxEYS2jjPP0P7eXC65sfUfjZfeSYP+yfG3dZzp/2VpGDPjgBrRgMHIiRB5SBiX
         9xJfdTl3eo/W4fFNCGddh9/wnwK4tOvvlFu01MCJqwPz0s7n0zbqSKSJg9SfLXJZnSVM
         ttGg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:reply-to:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=aLSeLA6XaQTjiZnsEZa+KGU+eHwYnZDnuS6zNcSdzmc=;
        b=VA78JxfoYBRVXCWmxcmSoWFEx1mXUqv3GVQMXlvQBi3eihYwFM2m0W2THPUT4yD7dq
         0LF0Y96AvHShlBonws2iHITEWf6mJAOcSv8Qkc84rkOXYl21eNQVZUHiSuK3zdsXh62s
         HWgalh4OUuijh4Tx3Esa9wyM3dBDSYeKcS0D72GLIh7oAwGEDMvO3gRpDd1YzICvrrTd
         6R/TFwAhxna6LMh0f9+UIkbqZi5OmkhwxTJpcByn9rcp5rmbpAqM3dmw4a+4j5Rp6G2X
         6GIlBy3i4cnCw6e0j6jw9K3B2rg66BBo2OQO/pqeNhOEPxesOWebqGEVTBiO1Wf2CaLQ
         GKcQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=NWnqF8yN;
       spf=pass (google.com: domain of srs0=6sad=ar=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=6SaD=AR=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aLSeLA6XaQTjiZnsEZa+KGU+eHwYnZDnuS6zNcSdzmc=;
        b=mFZvmMxdda7W/DOb1Dhe+RC5gjhhhREvV6MZw1WVBaeVE/+x7jxRnfs5ijvr02hYNS
         /hy7Ncbo/5ECMtL4hFMlvw2a9MF0yUUQGBJc74h4jlo+tuCF0CzlVjOP/DlCrQsBiQvk
         62jCEdtpf+1pTD9zYGU+SCRO0pR0f0N7w2xf/tGBBRoe9aeFttpgSrgweLHBhAMGRR2Q
         WHNm+vtrPMiTA95e/pdgZchABKlzgZ/A72+b7f+BswigdWdzD7ULrTds7utx+55/4pZL
         S+0GBhMd1qtrLTvXNkBLXBrepxdL4vRZuVJzUzXlDmAiqSXFjW5C/j31X+xf7DRYk03n
         1tCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aLSeLA6XaQTjiZnsEZa+KGU+eHwYnZDnuS6zNcSdzmc=;
        b=QsdJXnxeCeTBvEuU1avLRCyMplhZ5gUBrBQBTR2uK0l7bUhfmibvBT6+AZBEKwAChM
         zIVEw2KhrmxYy29poTcucSn6U8n0ICOkGhz6EyI158vfP+Pgtlto3hefEQ1OFE6dqKSZ
         p5ZX8olNAML7Ry+VevIJDCzxSdWEUxTWTKu+o46Z7RcJDtLHq0DxOs9Xwk6e1OfoqSGu
         U2IA/wml/N4Hn7ap/8eRV1QOyYGxlcDoOVJCWoA9yngJd2dLb6I/3ah03Im7I9RPTcBF
         tLKcNdWgIe1jPtsgd92HYNTGFVq3Y4GaSgCNfB0txPSHLdG5NWNNELZmbxHl9NeEf2eO
         90Hg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533VpXFQbXT9ddUtJBi2H1r2OK54T6x4SZKyEYyBLwokdoO205le
	6gKznCd9XqQBh4+tX+62QnA=
X-Google-Smtp-Source: ABdhPJy12xH0POaps6Q9LS+Kk0L0OwlXyzC7aVzi5XiZCRpMZ3In2hQG0t8oZ1Rwzgq1/BplkExFdQ==
X-Received: by 2002:aca:fd0a:: with SMTP id b10mr20727oii.111.1594052794782;
        Mon, 06 Jul 2020 09:26:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:c38e:: with SMTP id t136ls3264099oif.10.gmail; Mon, 06
 Jul 2020 09:26:34 -0700 (PDT)
X-Received: by 2002:aca:4dc3:: with SMTP id a186mr13847oib.143.1594052794544;
        Mon, 06 Jul 2020 09:26:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594052794; cv=none;
        d=google.com; s=arc-20160816;
        b=oAo3QH/nT3F2O+DdYz9q7ejU1/z3hucWWFHjjrkiJIfO82SVSiwi1Ltlds2KFVnqQt
         9STrHqX/XRwDDnfQGHQ+WrIApBwOt2/HZDP9sbU9QYkPiX/SwP5b9j5CKerssFrbcexv
         TA5FhZpIDDyTai9YWDkPWoTKAUgYebXEMH4ejaLmTdH7Dml0gy4k0CmAPJmKuNj3ZSL2
         TbDIJGvoO/bIiU8zji3xZot98sSBVd18tZ5/GVb9QZpHhl3sX3djQmKIE6M4dw/2IJP1
         PevM8zGfYK3Y6JaJbGO21d02yCZKBURNOPEDBpCorgxyUvw8JPdWmQ43F6mHfXOT4Y2f
         qbTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=W07akqMguiycmzGfKW9YHvOh4JcYNo4T0LgSuHEyAJE=;
        b=ZV2daLlvOV9OVFQO4REy7isj2qbzy/hEiC6b1g/kKcbzASLNaiKR+Q8NI99QFmiuV1
         TQsb/IV6A9xwp7M+7q9p4g6EpcBbX31TCeUteMV+yNzAKGasvKDCwo9ScTlPKRbd0YwF
         iyGtPE5aaoakw9lBRNOfeK1PI0BCAEUVAavIA9YtjDr2yhYxE7ZMOKiSAxQKUqRzAoTu
         15w0z2WgPeoG2JOXIn0q/kV2KnD8+QuPQPQMZsNyG377kWiXZuM3F0+s3F2NG8oTHmW4
         k865qS/Tr89JTVobN6IJkjXb5x/fy2I2BnsHXYJP9k9dQ/NOdSttZvjorvj2lZOc5bl8
         bWZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=NWnqF8yN;
       spf=pass (google.com: domain of srs0=6sad=ar=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=6SaD=AR=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j2si989504otr.0.2020.07.06.09.26.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Jul 2020 09:26:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=6sad=ar=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from paulmck-ThinkPad-P72.home (50-39-111-31.bvtn.or.frontiernet.net [50.39.111.31])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C63D220702;
	Mon,  6 Jul 2020 16:26:33 +0000 (UTC)
Received: by paulmck-ThinkPad-P72.home (Postfix, from userid 1000)
	id B23463521502; Mon,  6 Jul 2020 09:26:33 -0700 (PDT)
Date: Mon, 6 Jul 2020 09:26:33 -0700
From: "Paul E. McKenney" <paulmck@kernel.org>
To: Peter Zijlstra <peterz@infradead.org>
Cc: Marco Elver <elver@google.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Will Deacon <will@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Kees Cook <keescook@chromium.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>, linux-pci@vger.kernel.org,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>
Subject: Re: [PATCH 00/22] add support for Clang LTO
Message-ID: <20200706162633.GA13288@paulmck-ThinkPad-P72>
Reply-To: paulmck@kernel.org
References: <20200630203016.GI9247@paulmck-ThinkPad-P72>
 <CANpmjNP+7TtE0WPU=nX5zs3T2+4hPkkm08meUm2VDVY3RgsHDw@mail.gmail.com>
 <20200701114027.GO4800@hirez.programming.kicks-ass.net>
 <20200701140654.GL9247@paulmck-ThinkPad-P72>
 <20200701150512.GH4817@hirez.programming.kicks-ass.net>
 <20200701160338.GN9247@paulmck-ThinkPad-P72>
 <20200702082040.GB4781@hirez.programming.kicks-ass.net>
 <20200702175948.GV9247@paulmck-ThinkPad-P72>
 <20200703131330.GX4800@hirez.programming.kicks-ass.net>
 <20200703144228.GF9247@paulmck-ThinkPad-P72>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200703144228.GF9247@paulmck-ThinkPad-P72>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: paulmck@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=NWnqF8yN;       spf=pass
 (google.com: domain of srs0=6sad=ar=paulmck-thinkpad-p72.home=paulmck@kernel.org
 designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=6SaD=AR=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
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

On Fri, Jul 03, 2020 at 07:42:28AM -0700, Paul E. McKenney wrote:
> On Fri, Jul 03, 2020 at 03:13:30PM +0200, Peter Zijlstra wrote:
> > On Thu, Jul 02, 2020 at 10:59:48AM -0700, Paul E. McKenney wrote:
> > > On Thu, Jul 02, 2020 at 10:20:40AM +0200, Peter Zijlstra wrote:
> > > > On Wed, Jul 01, 2020 at 09:03:38AM -0700, Paul E. McKenney wrote:

[ . . . ]

> > Also, if C goes and specifies load dependencies, in any form, is then
> > not the corrolary that they need to specify control dependencies? How
> > else can they exclude the transformation.
> 
> By requiring that any temporaries generated from variables that are
> marked _Dependent_ptr also be marked _Dependent_ptr.  This is of course
> one divergence of _Dependent_ptr from the volatile keyword.
> 
> > And of course, once we're there, can we get explicit support for control
> > dependencies too? :-) :-)
> 
> Keep talking like this and I am going to make sure that you attend a
> standards committee meeting.  If need be, by arranging for you to be
> physically dragged there.  ;-)
> 
> More seriously, for control dependencies, the variable that would need
> to be marked would be the program counter, which might require some
> additional syntax.

And perhaps more constructively, we do need to prioritize address and data
dependencies over control dependencies.  For one thing, there are a lot
more address/data dependencies in existing code than there are control
dependencies, and (sadly, perhaps more importantly) there are a lot more
people who are convinced that address/data dependencies are important.

For another (admittedly more theoretical) thing, the OOTA scenarios
stemming from control dependencies are a lot less annoying than those
from address/data dependencies.

And address/data dependencies are as far as I know vulnerable to things
like conditional-move instructions that can cause problems for control
dependencies.

Nevertheless, yes, control dependencies also need attention.

							Thanx, Paul

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200706162633.GA13288%40paulmck-ThinkPad-P72.
