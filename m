Return-Path: <clang-built-linux+bncBAABBAO37D5QKGQE7IENCCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe40.google.com (mail-vs1-xe40.google.com [IPv6:2607:f8b0:4864:20::e40])
	by mail.lfdr.de (Postfix) with ESMTPS id B061D2869D1
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Oct 2020 23:05:06 +0200 (CEST)
Received: by mail-vs1-xe40.google.com with SMTP id y196sf564443vsc.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Oct 2020 14:05:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602104705; cv=pass;
        d=google.com; s=arc-20160816;
        b=fcqUtR3WaZZDQ/JfkbkcGCVFxUhfSJ59W+7gjaoqMXFN9vKcG3Zf1CRl/lrMdAApA2
         +5WjcRCsa0NU4MmNP7VLiLL3M8TuIX2dqRPp/grlVzmoo0Y07vEgCPpoPG9mfDiZih+H
         RX8y4QEPd9+wBR8KirBX2C/xGbjoGr6O6iuQD21Ker+cilqznWzQofS1pu4nVDj/GInh
         cgNX/BmtueaHFPsblquVckQN9n68U8HJ9ByRGwClwxfKeAlAQMPOqSwtKHEDO3LwgI4+
         uJx5yGqVYQT4qf3BAYJKKxWLzBgPLaSX30kAe7HaiynWb3Z3n0WPNimSARXgSVQnEm6Q
         KwZw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:reply-to:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=g/pu7RvFryuy4kH0aCeglJPdRvUN+EPR78vrhUb7EWw=;
        b=wkA6h1qs4wDHd7PbyFl9q3vA1ZCRs8ixr40ovZJPxroQPLYWHfQwBJt8bk/KAmesP5
         9iHlqapgR/OCFAJK92pu7C8qSEtrMNizIQnfwxOvZwOc8zwtupewNs3ukcY/ECPLZS+s
         OrN9j7f6YvTl/2spBChDn+XTsAmvy+7so7uqwVcruLObwaWcCDuXuAL5zwI29ICJqZqN
         11QTCC8Ghz/B/Bmf7F1sLr/SzHP7tgoG6fajPdBwcFa+dn4VQd8f4d4yHDIsoecuCcwJ
         5D9T1CVBsB/BOvpbRhXfIRHC7rWdmxbTrGRHfPb4yptYrBhgCHzY2RRWMznlILVm6Ppt
         i5qQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="VhX4nlu/";
       spf=pass (google.com: domain of srs0=lebj=do=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=LebJ=DO=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=g/pu7RvFryuy4kH0aCeglJPdRvUN+EPR78vrhUb7EWw=;
        b=KZ/RqOBmMQNzsfr5XS/BTLzbozMpSI48+AkH1Fz4lt40rCmnfy/hBCYNAEiaRyY/sz
         eBdbBi9aNBELrzgbKKqRMwBBEa9noy6mh5C7ecV38rdtDh0D+Vx3Y3hA0LjtossrTSai
         1kvy1KRHJ0Osfc8wOLnbu5VBNBVglYf0kn45of0z3LtWwKC8Q7c5lELwmcHD6+HEcSwU
         pt87MPZVLTZeVS12zXT1RIs/OXHaD42pO9er35VxHI6075iupQAfn1bYuNqaWI7FJJm2
         HHkX1lgcvdRAK7uwzb0j8gvx0NguyNC9U5wtQOElXf91DBWxeFK+qb/W9DOx9WpBVuXi
         aoMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=g/pu7RvFryuy4kH0aCeglJPdRvUN+EPR78vrhUb7EWw=;
        b=ibYnYnOadUDlz6c1iF1ldIEtr+wxJKXEv79g/oYg8DMxR3m3b5x+ILlVf91RUC3kps
         UTJsFbhIVhycammw8+br4doIsCeRGfH0DFjqaY6I7JamTUVPN24SEsvlDLmp3w5ULNzV
         gTZ0cv9XhNDSJibHLp6+IB3gdNID9vCAtywVkWgq/MSXoYrNTWZHXSsEQ37FLaHIzgYw
         wWW1yKHY/7+uV/goXXXUeneVobZ+xJcDlT7Pt/ifdFspz93+KpPYIRdWyypxnxRVg8Xm
         sSvShVbayP/G67PZIzOWwlEC1zGv+eCz+PAFS1Hycj2Dkhzj5GOyZ3e3HM8cL+b+Yoiu
         KCGA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ltQk4jxAjWn6D3NVy5UKw+ustpNgbwHWTa+ni5Gr83cSrPpjn
	tEA7eeqF0py3bwiNNtLMRi0=
X-Google-Smtp-Source: ABdhPJwq2uTf5RlHPUFdmgAAtfT2Y4V281i+q0W8wz5ZTpi9RrZ1uobXUb580SSftlRswYzOpPDwKQ==
X-Received: by 2002:a67:e3c1:: with SMTP id k1mr3387645vsm.29.1602104705510;
        Wed, 07 Oct 2020 14:05:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:7005:: with SMTP id k5ls247187ual.2.gmail; Wed, 07 Oct
 2020 14:05:05 -0700 (PDT)
X-Received: by 2002:ab0:5e8:: with SMTP id e95mr3081241uae.72.1602104704970;
        Wed, 07 Oct 2020 14:05:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602104704; cv=none;
        d=google.com; s=arc-20160816;
        b=IC6eI/wI1CV3xvDad1KBWjBkfL9teCZdAaIp8vPMiJuJITYPH+Fmh+0TFpb2LMbCDA
         qMXFkzTXMDj9pHzyUGEMCvb8ukPeRJBHTt6HfipSHeaUUQPVlvx3No57cB//LO5XBwzW
         9amPxBRCTWln/elJtOgoZbESPr8naX+9Z/iTLx4k3GgLvC9JTkc3ibX7QHl8/nerK+oS
         1UZLsQ4+4MsIH/lqcb1YKjgHNdXd+kT5YocspxK54sHOzaJQi1sUu6bB3R3Ty0JvvGN3
         998xa1IlpGgkGRHt5X4okNcCkn75uCQWcA7f2WSbMzv8Eymte3zQn40byuML+72AUaCr
         kOAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=yr5dRQy3yZNe/hF9plLo8qqFJ072CTwPf67k7FEidXg=;
        b=nsiIAGA5K9sBmo+kCfGxgjms5E9/p+e5BCI8zP6sA/an1QCYoiOnrLZUkA5fNv9dAZ
         +ZEMA8XHtXUc+rWWr4zdiwGIQ1w1/iaQiv2Sp0rJ6UxVHDLpUfPpv6aNZQ/Tk0A6qkWH
         O9FlorgT2Liv/2v+Zt9AQttaJ1TJxt9ga2Qv4LWzSzo0PCk2iLlk7UsZEnt42gQvVBOT
         CudWuG64HubM0PK7IvghShM6EDZyBHyyywCJo6teE3tESRLd9Yy4HDe9wnB7xGTQIGq1
         2h1VQJAzwCBKTqtpTLwUZbCuVERbsNpdDQrln9/yEvF5ZRUVH0SYOIIZplL9ni446bFG
         qNJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="VhX4nlu/";
       spf=pass (google.com: domain of srs0=lebj=do=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=LebJ=DO=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t24si338766vsn.1.2020.10.07.14.05.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Oct 2020 14:05:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=lebj=do=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from paulmck-ThinkPad-P72.home (50-39-104-11.bvtn.or.frontiernet.net [50.39.104.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9D40A2083B;
	Wed,  7 Oct 2020 21:05:03 +0000 (UTC)
Received: by paulmck-ThinkPad-P72.home (Postfix, from userid 1000)
	id 4F0763522FA4; Wed,  7 Oct 2020 14:05:03 -0700 (PDT)
Date: Wed, 7 Oct 2020 14:05:03 -0700
From: "Paul E. McKenney" <paulmck@kernel.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Sedat Dilek <sedat.dilek@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
	Lai Jiangshan <jiangshanlai@gmail.com>,
	Josh Triplett <josh@joshtriplett.org>,
	Kees Cook <keescook@chromium.org>,
	LKML <linux-kernel@vger.kernel.org>, rcu@vger.kernel.org,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH v2] srcu: avoid escaped section names
Message-ID: <20201007210503.GR29330@paulmck-ThinkPad-P72>
Reply-To: paulmck@kernel.org
References: <CAKwvOd=s+N4+X94sTams_hKn8uV5Hc6QyCc7OHyOGC-JFesS8A@mail.gmail.com>
 <20200929192549.501516-1-ndesaulniers@google.com>
 <20200930204044.GZ29330@paulmck-ThinkPad-P72>
 <CAKwvOd=nabONrWyYFK7Y06TrKBOyHHfNUiiy69VJQ2NtCpbp5Q@mail.gmail.com>
 <20201002205130.GK29330@paulmck-ThinkPad-P72>
 <CAKwvOdkPMSwQneMLFNg3ihM5zHorFy+uGvzAL7y70+hu_1q24w@mail.gmail.com>
 <CA+icZUW_z5nJ1c69JS7Nm1QknF+CH+sPkhF4g2+L=d=H-vxVgw@mail.gmail.com>
 <20201005184910.GC29330@paulmck-ThinkPad-P72>
 <20201006065623.GA2418984@ubuntu-m3-large-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201006065623.GA2418984@ubuntu-m3-large-x86>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: paulmck@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="VhX4nlu/";       spf=pass
 (google.com: domain of srs0=lebj=do=paulmck-thinkpad-p72.home=paulmck@kernel.org
 designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=LebJ=DO=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
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

On Mon, Oct 05, 2020 at 11:56:23PM -0700, Nathan Chancellor wrote:
> On Mon, Oct 05, 2020 at 11:49:10AM -0700, Paul E. McKenney wrote:
> > On Mon, Oct 05, 2020 at 08:38:42PM +0200, Sedat Dilek wrote:
> > > On Mon, Oct 5, 2020 at 8:29 PM 'Nick Desaulniers' via Clang Built
> > > Linux <clang-built-linux@googlegroups.com> wrote:
> > > >
> > > > On Fri, Oct 2, 2020 at 1:51 PM Paul E. McKenney <paulmck@kernel.org> wrote:
> > > > >
> > > > > On Wed, Sep 30, 2020 at 01:55:48PM -0700, Nick Desaulniers wrote:
> > > > > > On Wed, Sep 30, 2020 at 1:40 PM Paul E. McKenney <paulmck@kernel.org> wrote:
> > > > > > >
> > > > > > > On Tue, Sep 29, 2020 at 12:25:49PM -0700, Nick Desaulniers wrote:
> > > > > > > > The stringification operator, `#`, in the preprocessor escapes strings.
> > > > > > > > For example, `# "foo"` becomes `"\"foo\""`.  GCC and Clang differ in how
> > > > > > > > they treat section names that contain \".
> > > > > > > >
> > > > > > > > The portable solution is to not use a string literal with the
> > > > > > > > preprocessor stringification operator.
> > > > > > > >
> > > > > > > > Link: https://bugs.llvm.org/show_bug.cgi?id=42950
> > > > > > > > Fixes: commit fe15b50cdeee ("srcu: Allocate per-CPU data for DEFINE_SRCU() in modules")
> > > > > > > > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > > > > > >
> > > > > > > I am guessing that this needs to go up with other patches.  If so:
> > > > > > >
> > > > > > > Acked-by: Paul E. McKenney <paulmck@kernel.org>
> > > > > > >
> > > > > > > If not, let me know and I will queue it.
> > > > > >
> > > > > > I could have bundled them up as a series.  I think you can pick it up,
> > > > > > and I'll owe you a beer?
> > > > >
> > > > > It is queued, thank you!
> > > > >
> > > > > When does it need to hit mainline?  (Your default is the v5.11 merge
> > > > > window, that is, the one following the upcoming merge window.)
> > > >
> > > > No rush, this patch wasn't blocking any known issue, just a cleanup
> > > > while I was in the neighborhood.  100 years ago, I was an Eagle scout.
> > > > Pretty sure there was a motto about "leaving things better than you
> > > > found them."  Thanks for help resolving the merge conflict reported in
> > > > -next related to it.
> > > 
> > > Wasn't there a problem with your "Fixes:" tag (Fixes: *drop word
> > > "commit"* commit_hashid ("...")?
> > 
> > Indeed there was, and I have it noted to be fixed on my next rebase.
> > 
> > Perhaps another reason not to rush to mainline though.  ;-)
> > 
> > 							Thanx, Paul
> 
> I am replying here as well so that the relevant parties are in the know
> but I believe this patch should be fast tracked with a cc stable tag as
> this appears to be the root cause of the issue that Nick reported a few
> weeks ago:
> 
> https://lore.kernel.org/rcu/CAKwvOdm4AQhobdkKT08bjPGb15N58QN79XWxEaQt-P5Dk4+avQ@mail.gmail.com/
> https://github.com/ClangBuiltLinux/linux/issues/1081
> 
> I can reproduce the issue on next-20201002 on my Raspberry Pi 4 just by
> booting it up. As soon as I apply this patch, all warnings disappear. I
> asked the original reporters to test if the patch resolves the issue for
> them but I figured more visibility on this, the sooner. The commit
> message might need to be revised if this turns out to be the case to
> make it more apparent that it has a user visible issue, rather than just
> a QoL fix.
> 
> Additionally, it seems like the patch is missing some reviewed by tags
> from Kees, Sedat, and myself. Feel free to add a
> 
> Tested-by: Nathan Chancellor <natechancellor@gmail.com>
> 
> as well.

Good catch, and apologies to all concerned!  I have removed the stray
"commit" and, based posts earlier in this thread, I have also added:

Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>
Reviewed-by: Sedat Dilek <sedat.dilek@gmail.com>

Thank you all!

							Thanx, Paul

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201007210503.GR29330%40paulmck-ThinkPad-P72.
