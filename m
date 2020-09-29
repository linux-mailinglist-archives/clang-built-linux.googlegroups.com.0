Return-Path: <clang-built-linux+bncBDYJPJO25UGBBP6AZ35QKGQEIP4WFFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id B8F3E27D972
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 22:59:44 +0200 (CEST)
Received: by mail-qv1-xf37.google.com with SMTP id 99sf3307979qva.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 13:59:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601413184; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ddq69y08AcByUqYQTi+NohBGD35yzwfHejVe6nOds2AvlTUIjBAE1nWnqOtt/MxaOl
         QoCc+NP3goFdynxFUl1XYrtt1LEXtbUChbR7nf0D6kIL5kUZlYBgTN4Xq7UQDFPz30M+
         7/jCht/T8hBzwsMJWQIV5vqhWpnUviUEclRvs4Rmu4AXJHoVfoIIGDfGQjZXycTiIJ1F
         F3sjnrWWupYSyFcFvNuSCcJ1B06tlt2GaAahXYmSFI5BtMhGVaa4mBUiMFo25S2P7rjt
         KvSDzF+oOdpTsfuLlquXFmH43SI8XlVHLmWGjpTGY2xgwVY869EjEfNJygZwv14Av6n1
         AqIQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=0o8rNqOgjDOJEs2vmdExf06qJX7+VstwnT2BugwXYqQ=;
        b=ERO0mSNjXrdq/KE6yH1TbAOdPHCaYCDsxIm2A7GgsG7SIokBlFYe5rfIgNti5yiAZO
         O0ayhAME8CdzyZDjiyIc9bI9V11ZgizxZq6gPgW5aRqeplmpzFHwCliMmpt7f6kCO4cO
         2jVidoAQPuBQEkQBiuvn5fnfmBRKiqvW5P7b1t3T7YwSqriARnkWQa40GiclH7ZZ6WIO
         HmqOK1Jec55TGe1zdnbZ6yd81HoyVafB3c7LL+jgmRm46bpaIRKeWnhDuyEDLcYB9XIR
         yDtLzAX+rzX0oE5mQwfFriUEzLdpbK0WxEvPb3eYBnupPZigH58J8Bo1X4w2+rOcH1N8
         rdhQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XKwEiCwm;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0o8rNqOgjDOJEs2vmdExf06qJX7+VstwnT2BugwXYqQ=;
        b=Oinb5JcP0FlO6fiTk+6FnjM/wci42e799TjGSZI7qHZio3Z9tE29JO2F85H4K0RBHC
         gO2QXC69UDKrp0nsKeIeMBYuFOIK4diOk4wMTqIFh6+2tlSedqyAkM4m+4FZ4SATSTaw
         6dKCWNqmO/znduwXpZ9V7wciNg/GGXDnqQ8HqAlZG6YVc3g0BKFZprU8DSD2BZgE41lc
         a+zx+NWALuvuGNrjjrCANlQJjWA1oXE5AYPj+KmEtkSaJNvdLGpFNoZiztL4PZH/4hHe
         S2TRNQ1vegGDY51+RFHDaZBvGaxSDG1VwTwTT88OUUQLNA1OiXbJl/cTg9ILyh/cK2LJ
         o+cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0o8rNqOgjDOJEs2vmdExf06qJX7+VstwnT2BugwXYqQ=;
        b=kEisNy23OEDJzIQKXlslma60cB8IeCdK2zVTTGNUE+U8a8k+r8z1wSXGj55lM7xFZ/
         kpsKXV9VlhZqW5wohbMQgEK2Qj/rPFtI6TNMdz9iSOir4/6cCw+fX9l+W7RiOZXNWsmr
         aOB+qF/5+XbMnQNC1ZLocyZ0xtyFEqJ4/+48lTJlnBa3gWjxAk8ElBHJ6rk8PJpjNEsk
         WX0Ac9pzhECB9YQ5JFvq1bRjwbinnJ7HzJz9JQJ40Z269Sg4KVw5ylsCWZ4JmJLUDy8U
         uAB3M9ZQt+ojFpXgbAmTg3k+AhMFUWeJtNag3W7P3WatfyXGPUqrE+aH+r1HuibyoWug
         0z9g==
X-Gm-Message-State: AOAM533ta9+RIIdHWnUsKY+kHJ0hLeiuYTtgG80IAxeWx7bAXJMRsLiU
	TV8mr9UO3tvy8xJybgNS3qk=
X-Google-Smtp-Source: ABdhPJwbqOzZzy/2UaVPp0QSKnk9KeM5zib7zeAiylWOu9N932Q4kUPXnxgd1vjPxpwxnXHoRCLqAA==
X-Received: by 2002:ad4:57a7:: with SMTP id g7mr6382870qvx.10.1601413183768;
        Tue, 29 Sep 2020 13:59:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:f50b:: with SMTP id l11ls5317261qkk.6.gmail; Tue, 29 Sep
 2020 13:59:43 -0700 (PDT)
X-Received: by 2002:ae9:e8c2:: with SMTP id a185mr6521771qkg.435.1601413183330;
        Tue, 29 Sep 2020 13:59:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601413183; cv=none;
        d=google.com; s=arc-20160816;
        b=n15RqC9AqGlO/BS2HjvSUMCLkq7ZN0v3cyfhD9qBU75fI8QBvGNA4Jr2DQmZewnhg5
         /q96+HANfqe+iNzB6+LpkdVPoNH8+lOWUtjof4uX2zuyiNxP5Op7Bpq4P7UybtT6+DTT
         Z+1qJYvb+fFoSN0jkKj+ocmvwgQAAYGKNrzZyRSll0BjYi4O3Lr1gPYqjSKFJXDZBel6
         dPjdWlTiJPlRRzPDaxXvoOsplNz8z2CCNgAuouCUOFii3El/X1qX+8tn+k2pZrD//WCi
         OipWNhrPGowX1eaSNH53qFZ1cSct7VDqdKjlRNBfd78qDoBNT8f9SoqTAWXmKBaMZJS1
         TCBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=j96NedzGrWve7hqjmdtY+y6fO2Eq0jqMR0Z821xkzTY=;
        b=fjW8884X6H7n6e6tKEeQKQ6xqKtJKIh2JVOBTlTLNm7j1GbNzQh+kIP1ACsHLyUKDX
         NduZ5PpinKiC3Q8ck8gNJhoGusR02sCvEfn2kt6CaQfUQz9xY1v8z677g6z3TvMBJJeP
         ftX3DDTCicrP+rURTbhDQ+QriwbOlHTvXzG5F0iR2ASoafoCga2/NYOiHds0zV6cqT6K
         jzbYXC81k0WBTNUyyaqm7IgJkFXdxgso7bADSj9JwzdAYT5rci03zR+W/FZCdoUCEvqD
         qimaaBsdYEIBR8I+rJJOGW8CpTA0tK4dcMNKtLKLBx0cPbY9nlZep17c9TXh8ZJqAXSI
         IVXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XKwEiCwm;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id a27si379232qtw.4.2020.09.29.13.59.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 13:59:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id k8so5942779pfk.2
        for <clang-built-linux@googlegroups.com>; Tue, 29 Sep 2020 13:59:43 -0700 (PDT)
X-Received: by 2002:a17:902:c151:b029:d2:42a6:2fb with SMTP id
 17-20020a170902c151b02900d242a602fbmr6414637plj.10.1601413182230; Tue, 29 Sep
 2020 13:59:42 -0700 (PDT)
MIME-Version: 1.0
References: <20200929194318.548707-1-ndesaulniers@google.com>
 <20200929200801.GA2668747@rani.riverdale.lan> <CAKwvOdm=H3GDOPo-dbgsqH7UXzC1twz1h2Rdcidh8OXtFtCY4Q@mail.gmail.com>
 <CAKwvOdmA746irmMVAzs5pJz4XgcWMBA8jWM2Ha1Z5c6hajWzJw@mail.gmail.com> <20200929204748.GA2683578@rani.riverdale.lan>
In-Reply-To: <20200929204748.GA2683578@rani.riverdale.lan>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 29 Sep 2020 13:59:30 -0700
Message-ID: <CAKwvOd=Pj1FiFxKwbGu1g-LjabHqbct4_HF2BpEj4Su6+Fv-Gw@mail.gmail.com>
Subject: Re: [PATCH] compiler.h: avoid escaped section names
To: Nicholas Piggin <npiggin@gmail.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>, Andrew Morton <akpm@linux-foundation.org>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	linux-sparse@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Joe Perches <joe@perches.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=XKwEiCwm;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444
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

On Tue, Sep 29, 2020 at 1:47 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> On Tue, Sep 29, 2020 at 01:30:22PM -0700, Nick Desaulniers wrote:
> > On Tue, Sep 29, 2020 at 1:25 PM Nick Desaulniers
> > <ndesaulniers@google.com> wrote:
> > >
> > > On Tue, Sep 29, 2020 at 1:08 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> > > >
> > > > On Tue, Sep 29, 2020 at 12:43:18PM -0700, Nick Desaulniers wrote:
> > > > > The stringification operator, `#`, in the preprocessor escapes strings.
> > > > > For example, `# "foo"` becomes `"\"foo\""`.  GCC and Clang differ in how
> > > > > they treat section names that contain \".
> > > > >
> > > > > The portable solution is to not use a string literal with the
> > > > > preprocessor stringification operator.
> > > > >
> > > > > In this case, since __section unconditionally uses the stringification
> > > > > operator, we actually want the more verbose
> > > > > __attribute__((__section__())).
> > > > >
> > > > > Link: https://bugs.llvm.org/show_bug.cgi?id=42950
> > > > > Fixes: commit e04462fb82f8 ("Compiler Attributes: remove uses of __attribute__ from compiler.h")
> > > > > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > > > > ---
> > > > >  include/linux/compiler.h | 2 +-
> > > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > > >
> > > > > diff --git a/include/linux/compiler.h b/include/linux/compiler.h
> > > > > index 92ef163a7479..ac45f6d40d39 100644
> > > > > --- a/include/linux/compiler.h
> > > > > +++ b/include/linux/compiler.h
> > > > > @@ -155,7 +155,7 @@ void ftrace_likely_update(struct ftrace_likely_data *f, int val,
> > > > >       extern typeof(sym) sym;                                 \
> > > > >       static const unsigned long __kentry_##sym               \
> > > > >       __used                                                  \
> > > > > -     __section("___kentry" "+" #sym )                        \
> > > > > +     __attribute__((__section__("___kentry+" #sym)))         \
> > > > >       = (unsigned long)&sym;
> > > > >  #endif
> > > > >
> > > > > --
> > > > > 2.28.0.709.gb0816b6eb0-goog
> > > > >
> > > >
> > > > There was this previous mini-thread:
> > > > https://lore.kernel.org/lkml/20200629205448.GA1474367@rani.riverdale.lan/
> > > > and this older one:
> > > > https://lore.kernel.org/lkml/20190904181740.GA19688@gmail.com/
> > > >
> > > > Just for my own curiosity: how does KENTRY actually get used? grep
> > > > doesn't show any hits, and the thread from 2019 was actually going to
> > > > drop it if I read it right, and also just remove stringification from
> > > > the __section macro.
> > >
> > > Oh, sorry I didn't respond on that thread; I could have sworn I ran a
> > > grep for KENTRY back then.
> > >
> > > $ git log -S KENTRY
> >
> > Added by
> > b67067f1176df6ee727450546b58704e4b588563 ?
> >
>
> Yeah but nothing seems to have used it. I assume for LTO we use some
> other technique to mark functions as used?

Nicholas, do you recall why KENTRY was added in
b67067f1176df6ee727450546b58704e4b588563?  May I remove that and the
addition to INIT_DATA from that commit?

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DPj1FiFxKwbGu1g-LjabHqbct4_HF2BpEj4Su6%2BFv-Gw%40mail.gmail.com.
