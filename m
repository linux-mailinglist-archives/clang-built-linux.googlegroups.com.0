Return-Path: <clang-built-linux+bncBDYJPJO25UGBBL6XX77AKGQEJSUDLMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id E048C2D34DA
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Dec 2020 22:10:08 +0100 (CET)
Received: by mail-ot1-x340.google.com with SMTP id v50sf8005938otb.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Dec 2020 13:10:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607461807; cv=pass;
        d=google.com; s=arc-20160816;
        b=aCqRtncv6L874N2XXK0yCrcCXTqAUme7GOXDC8mRkVF+12Uri+up8TaegN4MW4HgOV
         RjS6ygbU9rDYz55KjTRXuojxNSJxhyEGrYluSzxpPyOX9qXYvykBGm02/m9fVJFg4kc5
         qw14+vxUavy8cNbONV3en2XuKxSpUNQzdgFif44lhJF3L75iu+0WqDg9dxflaITyo5+x
         8LrWOFFHqeO4Wy/mNhziLFeg8aQ5c5iMuWebDLuODu3wYPnQyaY4diM11Xn7lRuLHo8s
         AYwqJ2jzQgLnoFVgceJq1PhD28coO2KMb7+hsPcLTw0iEJnw2+Zrazy6OSq/zY88lYah
         PZiQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=kPz3q6x2+H7RM1+0m35mGvIeUhqDvcU4tiKV13IyudE=;
        b=hyZkPu2iUoqUOUyt5O5Wciv+U/YaO1NybLtZ+1YUp7awX9upKUWj1q8OgMYowJkCWw
         WfRV+84h33gsr/CrxLQa8WvQE+vKxmZHi6jx4bFuTxzsVnVUF/ntYJNs76V6xymFaqMx
         OPbqpPVjnRBkQhOq1ntKDekiA6zo7JTWmjUkeNJID/BuW/dCz88eqNUjQQRLONYemuHu
         KgxdLyOR48kJn5gfDFPSw+VSMVk1ZU6szwBlAAVUSNlE2ICluLzVEgHgFtHlXjpIXTzb
         KEFxz+IYsj9aahqYOddvyqLhQYOcp8zW+sWN+Hp/Tdy5gD16XQHKBJFykp3XuWY9BSFv
         wtTQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=P0U7Ogd8;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kPz3q6x2+H7RM1+0m35mGvIeUhqDvcU4tiKV13IyudE=;
        b=I1M+DUoZK1eAhL6yTBAXQHsZinVZbhfMj5Pv0o1/XAl45NMHgEeBaUhPnOCBXJdkqe
         1zKn/Kd237sXtOtZ5ZkurHQo4FGzncKt+Lp6YvsHKdxPa3fvoL9HMmykQuI0sSidHkkH
         3hxP648iEabl2grHqmpD0V5iOuwv8MFOfxd8am3y+MJtW/fEryr3hq3sFGnwYeFaN+Pc
         26H96fMAYwqr30AXJ+htLhSXrcG9tIN7mMpdQSDsnFCWsFv4W0zSvJPmtig5e6PNINWd
         hhMOkEhv+f89sWGh86FJiNQ54LakN7jlBzrHKxX+VyX8N4pKrJ6yuQ/c4D2mHf5aPbpQ
         IA0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kPz3q6x2+H7RM1+0m35mGvIeUhqDvcU4tiKV13IyudE=;
        b=UIbJzjNpPJAAdOr57uPGn0mYhsGvrbsS7X/8sveh4jx8Wz1lliUa8SRRzMC3m+S//r
         4ZNzKqPxtWbvomb/ZEhafRbv1nVHnplOxSY9LwwqIsG6dz3QmQXYDzqH7p0Dtr9BmsVZ
         e5BJRil/r87hpWTcvDg6fjH8ZeHIKe6m2+4Xb0O9gmAfaPhI1N7jEIZMjBh+iSuM0Taa
         AdApVcOoCewEgAb4Zlt1DhYwEzSMztDh9fTyIHll0/8bz0XQ9ldh+48DimaIH4+lgkQd
         B0U+eee7S/UB0k9EOiKtrhlbOmMPFayvVId9SCI3CXIFRM6Rv2wERpXcdn1TGf08HNRB
         Uosw==
X-Gm-Message-State: AOAM531cOFou3lngP3Tiz+EyJcfzRY0ur+7EwL73lHXjl4yh6SPqwS0T
	bXb/ZoztlEZKnGSySPxE3mY=
X-Google-Smtp-Source: ABdhPJzX3MqUaWxs8R0f+Pc2LGKTsxtZ/vlb1T+EhhP+LAhW7T59Q+OAlhUAD44kXgLqe1JkPgKzxw==
X-Received: by 2002:a05:6830:cf:: with SMTP id x15mr11697111oto.55.1607461807610;
        Tue, 08 Dec 2020 13:10:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:230d:: with SMTP id e13ls5599806oie.1.gmail; Tue, 08 Dec
 2020 13:10:07 -0800 (PST)
X-Received: by 2002:aca:5d42:: with SMTP id r63mr3203427oib.94.1607461807185;
        Tue, 08 Dec 2020 13:10:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607461807; cv=none;
        d=google.com; s=arc-20160816;
        b=lDBfwFG2A1a5wiqPHt1x+beIyry++Uo0LC8sY2Ax14SvTsi05twMVKJ5DJC/brmseu
         O6fEvQlMlU+tY7fd/reBsE+6SeksOanGyC5bIAupvOP93e647oWvf9rq6YOYVWsJdwDA
         HefDamxttuoiP/37aT0z1hoi9KNWH+adcw9hEVMpc3p8nMyCLLFgKo/XydILy8zxTted
         n07B0HEH7jt+pdLN+/8kRh2bCOrJerIDLms2NlsJ0jVwINkvTyzSZ+10rfHdje87tcmX
         m5V/SSi1szBYiHe13ndoZyZQ17rVRguxnei1ch4UtOE4bRHuhOB084OFpgJYF/bfi4KG
         Mq7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=JlsOI1fRDP5hh5RRN78La/q8WBPdxUn50gvC+PZHts8=;
        b=BjX1hPCi4MSEBJOCKv4k3ypGpeyBobchZo7soLUwsflkgllGuHJ2/95NPWiIqaQZ+5
         LVzZKBYt0PDCTyG3/054nrcfakoPvZyUnCKuDWK5l/P9bPtcCKKWzE+apM2uegUP2jdP
         eLav+BYnwy+M//16SRlFLxLCBw31x9HGtb0WbEEf03w9G9+rrNq4pMcISvxN6lxCd59+
         wfWyazR3zaM5cDObssuQDqlQamtb7YpX1M3j4zF1zs3sktFmoxsCVNJh5pTOO1LQjLZs
         e0pmM28KIYmGOPU0wWGqEN14g41CxQkEUnnSV/sHOOajHcBcfbzTiqkoiPujqLTZ71jT
         3yqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=P0U7Ogd8;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id u2si8852otg.1.2020.12.08.13.10.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Dec 2020 13:10:07 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id g18so13368606pgk.1
        for <clang-built-linux@googlegroups.com>; Tue, 08 Dec 2020 13:10:07 -0800 (PST)
X-Received: by 2002:a63:3247:: with SMTP id y68mr4840pgy.10.1607461806350;
 Tue, 08 Dec 2020 13:10:06 -0800 (PST)
MIME-Version: 1.0
References: <20201201213707.541432-1-samitolvanen@google.com>
 <CAK8P3a1WEAo2SEgKUEs3SB7n7QeeHa0=cx_nO==rDK0jjDArow@mail.gmail.com>
 <CABCJKueCHo2RYfx_A21m+=d1gQLR9QsOOxCsHFeicCqyHkb-Kg@mail.gmail.com> <CAK8P3a1Xfpt7QLkvxjtXKcgzcWkS8g9bmxD687+rqjTafTzKrg@mail.gmail.com>
In-Reply-To: <CAK8P3a1Xfpt7QLkvxjtXKcgzcWkS8g9bmxD687+rqjTafTzKrg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 8 Dec 2020 13:09:54 -0800
Message-ID: <CAKwvOd=hL=Vt1ATYqky9jmv+tM5hpTnLRuZudG-7ki0EYoFGJQ@mail.gmail.com>
Subject: Re: [PATCH v8 00/16] Add support for Clang LTO
To: Arnd Bergmann <arnd@kernel.org>
Cc: Sami Tolvanen <samitolvanen@google.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, linux-pci <linux-pci@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=P0U7Ogd8;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Tue, Dec 8, 2020 at 1:00 PM Arnd Bergmann <arnd@kernel.org> wrote:
>
> On Tue, Dec 8, 2020 at 5:43 PM 'Sami Tolvanen' via Clang Built Linux
> <clang-built-linux@googlegroups.com> wrote:
> >
> > On Tue, Dec 8, 2020 at 4:15 AM Arnd Bergmann <arnd@kernel.org> wrote:
> > >
> > > - one build seems to take even longer to link. It's currently at 35GB RAM
> > >   usage and 40 minutes into the final link, but I'm worried it might
> > > not complete
> > >   before it runs out of memory.  I only have 128GB installed, and google-chrome
> > >   uses another 30GB of that, and I'm also doing some other builds in parallel.
> > >   Is there a minimum recommended amount of memory for doing LTO builds?
> >
> > When building arm64 defconfig, the maximum memory usage I measured
> > with ThinLTO was 3.5 GB, and with full LTO 20.3 GB. I haven't measured
> > larger configurations, but I believe LLD can easily consume 3-4x that
> > much with full LTO allyesconfig.
>
> Ok, that's not too bad then. Is there actually a reason to still
> support full-lto
> in your series? As I understand it, full LTO was the initial approach and
> used to work better, but thin LTO is actually what we want to use in the
> long run. Perhaps dropping the full LTO option from your series now
> that thin LTO works well enough and uses less resources would help
> avoid some of the problems.

While all developers agree that ThinLTO is a much more palatable
experience than full LTO; our product teams prefer the excessive build
time and memory high water mark (at build time) costs in exchange for
slightly better performance than ThinLTO in <benchmarks that I've been
told are important>.  Keeping support for full LTO in tree would help
our product teams reduce the amount of out of tree code they have.  As
long as <benchmarks that I've been told are important> help
sell/differentiate phones, I suspect our product teams will continue
to ship full LTO in production.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DhL%3DVt1ATYqky9jmv%2BtM5hpTnLRuZudG-7ki0EYoFGJQ%40mail.gmail.com.
