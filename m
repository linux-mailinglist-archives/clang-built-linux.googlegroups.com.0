Return-Path: <clang-built-linux+bncBCIO53XE7YHBB552Z35QKGQE4DIOVDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A05F27D937
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 22:47:53 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id a19sf4733237pff.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 13:47:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601412472; cv=pass;
        d=google.com; s=arc-20160816;
        b=jCOHsGAfUEPiw4bk7HGbAnOi4PSDWA99d8OWcC8evenUIcT1yUCZAmSZwiyNOR11XF
         u1DcTGsFZgdoN2tlSt3CA31cM78POmvI1FhfyIAtxETYMnlKKw0Y+ptysBdTvZy231pV
         oq6ZmYD1Anr+eTnDfPsaSsj/Blc/rnPli9oMJRPNjpel9EO+ItogOwhG+0hUwyzKngL4
         +pcKTsqjzP43pijP7+/GCrtC2TaprXlfNmXANzz4CJvWTsJ3/b5Ge/F+4VSEpuGTCs/E
         YW+nrnhlDkS2B0skPd1ynPnXTF69uRw/lEbD04aA8SfReT0khSslt4o/LWlfPXJjEFIg
         6dCQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=/6sUVjCydOV7wm53u0JOnIgaOsL6ss6RrSenXdxZqaA=;
        b=CirXsZQVYh4LmhkVrkVvXhUr3xQo0kk4vnVeE0Xv4nduOL0DEChmrZ3M2Y0ecYIRLs
         FZyLJNgBH7NKUYsSM6lmxju97+KXb6X5oLwiWZC4o50DrdGpFy7HM9YleE30/iQlJSM8
         GnWN27YXyQ4O09W/lYOgCeyQ1Xkghx+/64hPjZkgIx19DS501LUQpManTFL+cN263ZkF
         NV1ojKKhK4KBtcSkgtqjVwQk8vxeJ2jOvHwTUMS/speTXKHISFRogZWDEP39GhCGIGaf
         VXFWWxkJ46vUNqMPhwD1bmvLTHSg8XXfWMJ27FoYmfYiMU7TmAV8yndIVjGl0YEOMZo6
         HkLA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vTYMep3x;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f41 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/6sUVjCydOV7wm53u0JOnIgaOsL6ss6RrSenXdxZqaA=;
        b=KZP3m8iLOX1XgC9mmKL7zQ+3EFYX3sIEoPgm5mBF6aEbtllsR+t/ENhAk+M9+KA1kN
         37LIb1+S10te7Hlt3QK1DkJOv83895erVdSh44BZuYsLKikkliMCQGZWjl7+vyk3cOXq
         LEUigNT9wg5qjVq4Ofl3rJPpeaeMsBPaIBPP+zc1yuNr3Smk1DKvnl6yDSCGhNWPEBIg
         NfTINd74DVdxwaRzvtq0LYfeWqRxgL9qQzGm7xHJ+5sgN83s6qa5Jc4inLrjzizkebsg
         Z/b6W+VowIaERGk161JGIwS+YnSfIpSUe2NygPuGsYFntAVKMnxV+ZJOx4R4JqXuMkZD
         wrLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/6sUVjCydOV7wm53u0JOnIgaOsL6ss6RrSenXdxZqaA=;
        b=fzQwQI5AZP/+nsNgIKlQSJPJ96B7mNGH2wQNugfjXLRX+3xHpd1BxfxOfFNMI8WYCo
         A8YRAxTqM+N2olTEwp0yex5fUTfxZjIAczVISPXNNEfSEc5a85BRNtkE9x3Jj6+pxkJZ
         Wj1vtEzeFJlSs1vh+nJ4s24wQyflmYMz9B+McQsNBQ+y3d6M/o8HlhkqduJNLSxynMBp
         Cg3ZnRxEk8/t89mjzUjxWJwW8eryHXlYH5pznqVukWRNLx5/+emf7tCeSCeQEbL/5wZ+
         F4RV1uyM7EO70UwP2VoEgciE5RYPSREmJ6reypWPkTooobeDF1ipqSpKQikexcU2TSKI
         LrPg==
X-Gm-Message-State: AOAM533+9Wf97H1w6O539Cd4fg+Yp/qIGNJ+nKESWe7Q5S42QD8PuKzY
	EB48CuJIOpqE4bYh4Q2C8Z0=
X-Google-Smtp-Source: ABdhPJxLytbpfOH+ohLLq4RidQIXTN1ZOZXs5nYtzCj01b24WtSusG/7Z9cpR7wY8xpLCISwJKW5Qw==
X-Received: by 2002:a63:5fcb:: with SMTP id t194mr4890083pgb.364.1601412472118;
        Tue, 29 Sep 2020 13:47:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:7d07:: with SMTP id g7ls113329pjl.0.experimental-gmail;
 Tue, 29 Sep 2020 13:47:51 -0700 (PDT)
X-Received: by 2002:a17:90b:4b8e:: with SMTP id lr14mr5602667pjb.100.1601412471199;
        Tue, 29 Sep 2020 13:47:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601412471; cv=none;
        d=google.com; s=arc-20160816;
        b=lqvprJqmoJT+yOzKAEmty35X/e+fp58L0TuIO5jHV9+vRqSJWcvKCTzvdFwMJ9PNI8
         auMd3Jh7uA7IrmWNzE7loDKB6LwScuev5GQoWUN3K2muRWwh7AugW17zr5Z1TBJVLhQz
         Uf8C1AlbHhFghJnCS6b8eN8oB2YrZ7EwzPc4duCUDDMeuarVC9kqqa2EFX8DkuBUzjp5
         sWZDL/ZQLbpBcN0D1e8zuonmQ6kMqFinCE8hGClR64kZEmXdxinqiE7wytVhMxx9VB5e
         kkzQslSA6LR/3ZHBksrFJvJGjKRTWqZmMFSu8r0uWbMcrVZof4/ouXEU3uwOnzRZoQbr
         o77g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=V3P4F4QWiuS/mi/zwuxmKRL+xPQc9F0a3ah2tRd6rKw=;
        b=lz4QMG11cRi+IXdK0poBK7gsEyqF4nh6JsLFUGsTGjp3gC7Vs60VP/sIFfzmEQTwse
         yrKX3eO0sKz1iMWMo0/Bc8T+yJ7gCTwPcrLLtv9qhJqJuNfTdJ774TDvoUx7tAJAbHMO
         CL/D9XcB12FBmaNZQFX6IQ5JjwpaI5j/vTnJRvjD1OzEPuxF+1Z24JN1hMhdpZ8bl0mx
         UgcM7Evzh9Ik/C1AJ/+wxqnYdxx6p6DlBVp1EiuYNIlpjGoKQe/AOka0mWU+goH7suqJ
         x4F4ZZkyLYdjj6AvQhLEZwL0JKe1kC8fgIeBEiOLOXdSZC9lKPew52tZKPZm1Ihkox3w
         mzrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vTYMep3x;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f41 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qv1-xf41.google.com (mail-qv1-xf41.google.com. [2607:f8b0:4864:20::f41])
        by gmr-mx.google.com with ESMTPS id z13si559964pgl.5.2020.09.29.13.47.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 13:47:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f41 as permitted sender) client-ip=2607:f8b0:4864:20::f41;
Received: by mail-qv1-xf41.google.com with SMTP id p15so3038970qvk.5
        for <clang-built-linux@googlegroups.com>; Tue, 29 Sep 2020 13:47:51 -0700 (PDT)
X-Received: by 2002:ad4:408f:: with SMTP id l15mr6401654qvp.4.1601412470319;
        Tue, 29 Sep 2020 13:47:50 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id m18sm5964723qkg.77.2020.09.29.13.47.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Sep 2020 13:47:49 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Tue, 29 Sep 2020 16:47:48 -0400
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
	Andrew Morton <akpm@linux-foundation.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	linux-sparse@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Joe Perches <joe@perches.com>
Subject: Re: [PATCH] compiler.h: avoid escaped section names
Message-ID: <20200929204748.GA2683578@rani.riverdale.lan>
References: <20200929194318.548707-1-ndesaulniers@google.com>
 <20200929200801.GA2668747@rani.riverdale.lan>
 <CAKwvOdm=H3GDOPo-dbgsqH7UXzC1twz1h2Rdcidh8OXtFtCY4Q@mail.gmail.com>
 <CAKwvOdmA746irmMVAzs5pJz4XgcWMBA8jWM2Ha1Z5c6hajWzJw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmA746irmMVAzs5pJz4XgcWMBA8jWM2Ha1Z5c6hajWzJw@mail.gmail.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=vTYMep3x;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f41
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Tue, Sep 29, 2020 at 01:30:22PM -0700, Nick Desaulniers wrote:
> On Tue, Sep 29, 2020 at 1:25 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > On Tue, Sep 29, 2020 at 1:08 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> > >
> > > On Tue, Sep 29, 2020 at 12:43:18PM -0700, Nick Desaulniers wrote:
> > > > The stringification operator, `#`, in the preprocessor escapes strings.
> > > > For example, `# "foo"` becomes `"\"foo\""`.  GCC and Clang differ in how
> > > > they treat section names that contain \".
> > > >
> > > > The portable solution is to not use a string literal with the
> > > > preprocessor stringification operator.
> > > >
> > > > In this case, since __section unconditionally uses the stringification
> > > > operator, we actually want the more verbose
> > > > __attribute__((__section__())).
> > > >
> > > > Link: https://bugs.llvm.org/show_bug.cgi?id=42950
> > > > Fixes: commit e04462fb82f8 ("Compiler Attributes: remove uses of __attribute__ from compiler.h")
> > > > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > > > ---
> > > >  include/linux/compiler.h | 2 +-
> > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > >
> > > > diff --git a/include/linux/compiler.h b/include/linux/compiler.h
> > > > index 92ef163a7479..ac45f6d40d39 100644
> > > > --- a/include/linux/compiler.h
> > > > +++ b/include/linux/compiler.h
> > > > @@ -155,7 +155,7 @@ void ftrace_likely_update(struct ftrace_likely_data *f, int val,
> > > >       extern typeof(sym) sym;                                 \
> > > >       static const unsigned long __kentry_##sym               \
> > > >       __used                                                  \
> > > > -     __section("___kentry" "+" #sym )                        \
> > > > +     __attribute__((__section__("___kentry+" #sym)))         \
> > > >       = (unsigned long)&sym;
> > > >  #endif
> > > >
> > > > --
> > > > 2.28.0.709.gb0816b6eb0-goog
> > > >
> > >
> > > There was this previous mini-thread:
> > > https://lore.kernel.org/lkml/20200629205448.GA1474367@rani.riverdale.lan/
> > > and this older one:
> > > https://lore.kernel.org/lkml/20190904181740.GA19688@gmail.com/
> > >
> > > Just for my own curiosity: how does KENTRY actually get used? grep
> > > doesn't show any hits, and the thread from 2019 was actually going to
> > > drop it if I read it right, and also just remove stringification from
> > > the __section macro.
> >
> > Oh, sorry I didn't respond on that thread; I could have sworn I ran a
> > grep for KENTRY back then.
> >
> > $ git log -S KENTRY
> 
> Added by
> b67067f1176df6ee727450546b58704e4b588563 ?
> 

Yeah but nothing seems to have used it. I assume for LTO we use some
other technique to mark functions as used?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200929204748.GA2683578%40rani.riverdale.lan.
