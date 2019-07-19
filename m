Return-Path: <clang-built-linux+bncBDYJPJO25UGBB65AZDUQKGQELZVOA4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 880366EAD6
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jul 2019 20:48:28 +0200 (CEST)
Received: by mail-qk1-x73c.google.com with SMTP id j81sf26955007qke.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jul 2019 11:48:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563562107; cv=pass;
        d=google.com; s=arc-20160816;
        b=QPlEsxZzCHoOdAc/zNVCps/hpjzXsQG4j5E245C/JEzI0uVEztdbtdSGmAgm8u90uf
         kZlmN4lHRlAVDFrg/FSGjPVz2lOhHV6n2rIvnwdD0sp8WHP7zxCvO19QsOYZkBu/WHkS
         k/mRyM1fJ1qHMyRpd5PRZMQ9T3k9hACWndfqDdy7daUGnWtvO2XDe4QbmgZo0noQvtEI
         OPzZOxv4RkC6fW7YamaJuI7rlPGqbj2Hr8Ap8h4XnQYDpsflNftVDREt3vfWU8DSgfpD
         5Y66X+kuEozH7+hCUhj5zDlWAX/l7j6fZ+PEI3ugVeDu3dJJFyxmBV832q3HM+jqLYrC
         K1rw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=cxhGJRKzaYvX+7U48gtnyyk9Ex8V+SjNvcE0nqcu19Y=;
        b=arU8YFt9nQqKBUHqm6UEfew29EOWxOtatSUr/6mFjNwA3/6TSHXyVbWJBrE2tu9keZ
         s1D4Y2InHywwxEIe5lZBW1kojIFCwmru/Oz5Pp7Uv3j8CI8KjzOji58+Xugedqy7fzsr
         Fyp+WTjJ4tgmayBS7gjPWmvxHTaIwsgMmqhg9/pR1N919i+GHBvrLg8sJB3yAH8LQiSn
         2jXU90qwAuw2M0Nxzey/027+K4gTa5BdjbNy5iHwnjIoi/O/LCoE/WHAz3xsyMK8zxT6
         Z4PskuXpXZAbJ00tAVsvWYYUo9mWvsKrUjtj4XVObaac5+CSaDX4O2nl/jI7wRpQCpte
         xbVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="B/dZ2wts";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cxhGJRKzaYvX+7U48gtnyyk9Ex8V+SjNvcE0nqcu19Y=;
        b=XoTqud8BFMYobEEaZDuw+DLFk+OlbXjVdX+l4FD+YohCblnsYScW7+yMHc/YY7wnQ1
         rhgY/mMdAtsj9ibeBypFsC54dU0UXDNRX4q8dtpzIApvti6zuk2TECg6Ppg/bjtnjkDn
         UHQZsPeIMQSzMYFctsnV0BbxJ+6fm/b3kW2zOtkBVFICwfmj7FpJnTNe1j3ugh5s2esL
         nzHpCdFuD/CCgMne0ZS7VXu2Uw8Q+yu3nZCIG1Xy583Z6SQJ6dXBCtU8MVeax7F3/owb
         elvpXOVsM6b/WTIf5jZNLRa5kKR3GkZjN0xDu2SDd9ovwgMLuohVJsD8to2GeE4GvSS2
         BTdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cxhGJRKzaYvX+7U48gtnyyk9Ex8V+SjNvcE0nqcu19Y=;
        b=EUXC8aCEWifMyVKPo8pcRwVvihnh+7AXdkijkqGYgqe2GAfkYaHycaFGhi/ILfp2/E
         ysxP5y/Wo+OHXCiaYAoLmoL5a0dZic4kzfgWLrIWul7UecNk6xzAf1cWfNG46l9wQsEf
         rTJjdOVWJiaoH11aEFfYdU3Mx+JvlMQL5x1FkIzGnsaXCvuOgX6PM8sTQgP9eSONF1Rh
         PAxI5AV18WdvsPjiOw/ECQXLBHWzKpDWMJg0hESTAwlJSxBEz7KRIiW/hrHlwME1beUk
         FoOMJFpZrZMt7208SsIqx2/OMvR0aAYxk/WMeqg0K4GLgeXo/3IOKVpZoO6JB8d6oDro
         cnsA==
X-Gm-Message-State: APjAAAV+kCJdTHS0mI6lhjVqdp8N3pZNGgA+I19Y84VAfAO8N9m4c5Lo
	UEhhwaDt5txFNADxdARju74=
X-Google-Smtp-Source: APXvYqzuTAc/LgKGeFrve0rSm3D3ds7+8xeJp9tQMHWSU2M2NxPT3t22jAucfmEXJI1Rwf+oTBQJzA==
X-Received: by 2002:a0c:ea34:: with SMTP id t20mr21170600qvp.11.1563562107368;
        Fri, 19 Jul 2019 11:48:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:540b:: with SMTP id f11ls5289606qvt.0.gmail; Fri, 19 Jul
 2019 11:48:27 -0700 (PDT)
X-Received: by 2002:a0c:e908:: with SMTP id a8mr39197482qvo.214.1563562107146;
        Fri, 19 Jul 2019 11:48:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563562107; cv=none;
        d=google.com; s=arc-20160816;
        b=KTeoh3FGWax6+L9UwCrMU8sh86nC4fTT0yR1D877MWgj+s/JQ/rhpCUWVvB1984xzb
         X2ddG3Yu0Va8WIe+QhQhe0XY/nc7KqmzTtDRxVRykyAn4TzwtGjnBi7Pf7FbNyFpp1Kp
         xR+VsY8RBD5JgKgzF84uHcVeDfsrLIbGJ08924DUG9a4ugCauU1lJv98+T1rfN31rfyH
         qBp8WbD5Q06s3mC/NbD8dOrKOSOGGsJSMGX3wB1kEIjrRAmJG5HivNV/BBZpnuDAPYqe
         ZsW4EjhqirWTbQlUVrmOOpUKmUBeABjh0U3NUWCX9qEwucPwAIT1isFczCN8TnJGoiIo
         Chhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3nwlthOc7MxXovC0OJU24IiiEzL2wO7sN9o+o7pxsw0=;
        b=eSMSpP5qZkSYAUmjOU8LN3KO9WCAT7PiE/ok2292cssM8p9WlBN9pc3A6JkzsHz7MI
         IpttCrJjcO24ebv+qZ84Zyh9CeHM6ljmB4KgKug41SVlu3QjEJ/+FqiqZBCvDQdLKQWJ
         mN+nbnoGg3txHjpAYJ15eZ+DLgxUCz7RoKDmoDLJJHTPoST9WT1RsMT4wEMvYnZHF0zg
         P5URFnQoD1AfVdP20/4Vs84NGp1UJAWvN90P/6JysRaS7lZueLP5a6nAaPLh2n51/+pR
         oz8XgoK5SATDsLQsHxv7xqvzUGzz1RUlCt/Qb7T7ilwc/VeNkDm+HCoSEJrhZHXC31OW
         4QTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="B/dZ2wts";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id o6si1718419qtj.3.2019.07.19.11.48.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Jul 2019 11:48:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id 4so9058596pld.10
        for <clang-built-linux@googlegroups.com>; Fri, 19 Jul 2019 11:48:27 -0700 (PDT)
X-Received: by 2002:a17:902:9f93:: with SMTP id g19mr57916456plq.223.1563562105892;
 Fri, 19 Jul 2019 11:48:25 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8P3a12cVdrEXdgWkHGHP6O04mz5khaB7WgQ1nvOptaUTu_SA@mail.gmail.com>
 <CAKwvOdmoD1wVFLdWRXTA=c-p4oc6HDxsfhXq5wQpD-8oFUfNNQ@mail.gmail.com>
 <20190719183125.2tuhcch2rtanxvyn@treble> <CAK8P3a1hxEAnuqt=ajUf4ETCOY9ckEEVZVrG1c+SV=bn2_Ga-Q@mail.gmail.com>
In-Reply-To: <CAK8P3a1hxEAnuqt=ajUf4ETCOY9ckEEVZVrG1c+SV=bn2_Ga-Q@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 19 Jul 2019 11:48:14 -0700
Message-ID: <CAKwvOdkC16irbGpP=cA8eEPvBWj+6mSgVgo+rs1ofDLNufWWzw@mail.gmail.com>
Subject: Re: warning: objtool: fn1 uses BP as a scratch register
To: Arnd Bergmann <arnd@arndb.de>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Craig Topper <craig.topper@intel.com>, Simon Pilgrim <llvm-dev@redking.me.uk>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="B/dZ2wts";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644
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

On Fri, Jul 19, 2019 at 11:44 AM Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Fri, Jul 19, 2019 at 8:31 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> >
> > On Fri, Jul 19, 2019 at 11:23:16AM -0700, Nick Desaulniers wrote:
> > > On Fri, Jul 19, 2019 at 11:10 AM Arnd Bergmann <arnd@arndb.de> wrote:
> > > >
> > > > A lot of objtool fixes showed up in linux-next, so I looked at some
> > > > remaining ones.
> > > > This one comes a lot up in some configurations
> > > >
> > > > https://godbolt.org/z/ZZLVD-
> > > >
> > > > struct ov7670_win_size {
> > > >   int width;
> > > >   int height;
> > > > };
> > > > struct ov7670_devtype {
> > > >   struct ov7670_win_size *win_sizes;
> > > >   unsigned n_win_sizes;
> > > > };
> > > > struct ov7670_info {
> > > >   int min_width;
> > > >   int min_height;
> > > >   struct ov7670_devtype devtype;
> > > > } a;
> > > > int b;
> > > > int fn1() {
> > > >   struct ov7670_info c = a;
> > > >   int i = 0;
> > > >   for (; i < c.devtype.n_win_sizes; i++) {
> > > >     struct ov7670_win_size d = c.devtype.win_sizes[i];
> > > >     if (c.min_width && d.width < d.height < c.min_height)
> > > >       if (b)
> > > >         return 0;
> > > >   }
> > > >   return 2;
> > > > }
> > > >
> > > > $ clang-8 -O2 -fno-omit-frame-pointer -fno-strict-overflow -c ov7670.i
> > > > $ objtool check  --no-unreachable --uaccess ov7670.o
> > > > ov7670.o: warning: objtool: fn1 uses BP as a scratch register
> > >
> > > Thanks for the report and reduced test case.  From the godbolt link, I
> > > don't see %rbp, %ebp, %bp, or %bpl being referenced (other that %rbp
> > > in the typical epilogue).  Am I missing something? Is objtool maybe
> > > not reporting the precise function at fault?
> >
> > I haven't looked, but it could very well be an objtool bug (surprise).
>
> Actually the reproducer may be wrong. I reduced the test case using
> 9.0.0-svn363902-1~exp1+0~20190620001509.2315~1.gbp76e756,
> and this contains a link
>
>          testl %ebp, %ebp
>
> I get the same thing with clang-8, but godbolt.org shows it only
> with clang-8 (see https://godbolt.org/z/g1lZO0) , not with trunk.
>
>        Arnd



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkC16irbGpP%3DcA8eEPvBWj%2B6mSgVgo%2Brs1ofDLNufWWzw%40mail.gmail.com.
