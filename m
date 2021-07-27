Return-Path: <clang-built-linux+bncBDYJPJO25UGBBVNQQGEAMGQE36WQ2UA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id E35143D7E37
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 21:02:45 +0200 (CEST)
Received: by mail-wm1-x337.google.com with SMTP id j11-20020a05600c190bb02902190142995dsf930018wmq.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 12:02:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627412565; cv=pass;
        d=google.com; s=arc-20160816;
        b=QCU7MBhb1L/nRks465SCtylSomCkuP54z7O9aqCW3nc50qGqhO7uU0LsZZevY5/bPU
         /Rp61XS5fCSaDtBD4RnhKkUkNAVFnu4HByXd0YgyQG8iHCz0gFMyKVzcaPfzno5dN4b2
         ensMssVbNLz+/AVIeAWgQxM0Bs/GekiJS0ZMZwo1nhF7MLwqDwhGRd93biSfEbGXNKLX
         6NxQPCPGOD/Q1YoLboUUQ+G7PaYOBoLNVCNjqufK62CNdUL+y0pRh3dcJwFUJHwtbxtr
         1es227Qwat1HaQwTds0PiqWnt1RiqmkHRys728O4b0V6UyW+QLD3cubciR8yRwZWWYpc
         qF3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=55YjrbOfWuNjJspmV3Lvo9VO5KTlkn5H62MjgDBrCMU=;
        b=LRtRp21KTHToyfsKQjNQeqWP8pfwKIVvUHYz0XHkaLcwboBLrDmseNHHLBYVmkE9Ty
         ivtKeOzoRHnoZXI6/aG4VwFSs+3SdT5yLHqV8Lu+uXwPIBbaHffuLT+h/U5jHq6dSg/E
         cgvgyFZoqtCH1QnRaN1OSXU9OCrg1gKJzLFpvQ9nVb7JSaWVrGmdU5LcoG10RE+qb7q+
         Ha2gpA7SGp/Iw+DBu1CwNYyhRHMDfv9DYg6f7GQSPgN9t9yd/+DvtXRtPqTbCrSE8QtS
         EzshJFvlWFiVk/k2NV9LFo925iSlk2KCFJ5YGjIXkCgD/VLObHf1FXuv9QBxzVxASQHG
         y3kQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sT2KLROv;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=55YjrbOfWuNjJspmV3Lvo9VO5KTlkn5H62MjgDBrCMU=;
        b=c98xAparwIQ4K12Wivji8Gc5H8FcHBNch/2stanrtGWMKVeka70dg8Qw55EMAEq/fo
         68UeLzOI45yOe4IZ6b4T93xOaH6JTPf2dveJjZJK8Q5Cm3TwCKY9ZXHSt/ND4T8ua8oh
         xfzGw1VY+2LaiqL1BPzKIZLutDgJnJJxVr4GH2cu7kDEAkuZwi5BtTbZ/Dvmi0cpy1kT
         Gm7Cw5HWjiw9EseN75pufJrBCfkz+BxUvHWbEG0sHjl4LtDfAPd+9qKZES2xdjErWGQy
         AIP4U3/L0BcIYgM4vPya3J34dZOKf4z+qFOZsbogqeVQKC4cxhe+e+gsWyrg5W7sHHlY
         1Qag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=55YjrbOfWuNjJspmV3Lvo9VO5KTlkn5H62MjgDBrCMU=;
        b=rQHCZgmOyOD6wKvDYg51/Q+FYuy2HGu0h8HD9GhTZLdS9qst4WHSO/ymQwsIbbkre5
         GGe7zzTtW/HcarSaUwpC0hD2fGP0m2qt5OD2DwrYNzu7H1ST2N4RP3ICxoEbai5XTJ2c
         Nwj1biNrfUc85bLOBZn+8oMZrpqZiH7Uzk36MwIPF8PpidYj3A9W6z0EAhCcpR4JSXco
         5XJ2begR0IDR9uFbf7hYbckG//nObsSUbODYonPEsmLA3sIGT9XdkCdFEDybaFWpL9pc
         O4EBr2M74NrmPybJZ40o/m64RJOBA0nas5WTBVi6SyO6jSQe3O054l3dbILHtu8+JvzU
         kqVg==
X-Gm-Message-State: AOAM533ApZEFbpF9btI+SCrVIXHkjA9LTrifxIa5NpumDq/j0PgOy2jD
	UFAb5d4S2hRJ1gQOjpdK2mE=
X-Google-Smtp-Source: ABdhPJzDFs9dYosKblrjL2jvDI8Fa00MQt22Rx9fYSEaDz84zlua7q3QRpEM5dA/OMehtBAHUB6XSQ==
X-Received: by 2002:a5d:4562:: with SMTP id a2mr1087646wrc.347.1627412565706;
        Tue, 27 Jul 2021 12:02:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4dd1:: with SMTP id f17ls1274899wru.0.gmail; Tue, 27 Jul
 2021 12:02:44 -0700 (PDT)
X-Received: by 2002:a05:6000:232:: with SMTP id l18mr8925417wrz.24.1627412564906;
        Tue, 27 Jul 2021 12:02:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627412564; cv=none;
        d=google.com; s=arc-20160816;
        b=E9aXbHyXJs2WVRZXsaPEyawWeYSDZV3b7IXmSjtL+drk63Fx2vrbbPPr+EqG2BeDO4
         uG/tS2qn7N8OpDKcOHdMRVs3qXJgtw2bwxLF97TYfnSnsadmMctgKjvxSHnAbrTVVO4d
         LDmkR37l2OL7rzgS475SRSS9zZymvnFaZzjQdT+fjN1heCeCvDqA0K216EmkL0iV2kFh
         rtmztj1DqC3TlJlJelH7oEaPePwd9hOrVTum2vl6MjCo84iiyMK4hFcHKTGGxCkvfO/O
         fITVH8XZbbAjxEe9rPpAnYXYNE8nueB08gQOnrqgbNmaG7vlqEGtVLJe0eRAYKGPMRei
         sUSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=mcEEZ5DizsTOmmJZcJXignnsvoK6Y8UwOPAH4fOFfVg=;
        b=RnKuvlK1dEKAdsA2qjKNuWZ+6jn7AjKVM5kRbk3Xq6b6zuoY1esNhX9/fQ/Yg9zYSa
         nM0jY5jiTTKVF3VBPoEwV0ihLL9St1Jsvd4wm3/XV1iMsSD8OzFCoTturdaUMQFlaWEw
         Zu3191B97R82n6u7XUu1qY0l6RmQ5fkGwij84c3e+XFkq8OrzvA1HeELyGoB3yJkhZk8
         sQ5FSgOypVPjz6+izk8qPZ5tOXccDfkBkOtQWm6+JfWrTU1X1WLvG2SHw3/H9YguMAbj
         jNq/G9HdXqmEWHDjfBzu0xDzimXtQotT5chpNN8QoErOk/fT6zDJyw/2xUiz9tTUW1Fa
         tuqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sT2KLROv;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com. [2a00:1450:4864:20::12f])
        by gmr-mx.google.com with ESMTPS id f17si169937wmc.2.2021.07.27.12.02.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 12:02:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f as permitted sender) client-ip=2a00:1450:4864:20::12f;
Received: by mail-lf1-x12f.google.com with SMTP id r17so23464687lfe.2
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 12:02:44 -0700 (PDT)
X-Received: by 2002:a05:6512:3296:: with SMTP id p22mr17292681lfe.543.1627412564309;
 Tue, 27 Jul 2021 12:02:44 -0700 (PDT)
MIME-Version: 1.0
References: <20210714091747.2814370-1-morbo@google.com> <20210726201924.3202278-1-morbo@google.com>
 <20210726201924.3202278-2-morbo@google.com> <c965006c-88e1-3265-eb9c-76dc0bbcb733@kernel.org>
 <YP+ZOx8BETgufxBS@kroah.com> <CAGG=3QX68umw5Ws9_HuGkqoTNT=Q1+QB7YpSaqw3R_kPsbxwsg@mail.gmail.com>
 <YP+ql3QFYnefR/Cf@kroah.com> <CAKwvOdm62a7mrLZb_eciUO-HZj7m3cjgfvtQ=EqRy9Nh0rZOPg@mail.gmail.com>
 <YQBJfAuMJhvd2TcJ@kroah.com> <CAKwvOdkbgr5uPBUC815nrJ_-fHQD2KEYmZ0E8qZRBLL9uQ2WFw@mail.gmail.com>
 <YQBUKrCWpM3uDp/Q@kroah.com>
In-Reply-To: <YQBUKrCWpM3uDp/Q@kroah.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 27 Jul 2021 12:02:33 -0700
Message-ID: <CAKwvOdkmwAYCyWYoSntLhJkMTN7UU=09hROABDU8eN193n8-qg@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] base: mark 'no_warn' as unused
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Bill Wendling <morbo@google.com>, Nathan Chancellor <nathan@kernel.org>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	LKML <linux-kernel@vger.kernel.org>, linux-toolchains@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=sT2KLROv;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f
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

On Tue, Jul 27, 2021 at 11:45 AM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Tue, Jul 27, 2021 at 11:31:38AM -0700, Nick Desaulniers wrote:
> > On Tue, Jul 27, 2021 at 10:59 AM Greg Kroah-Hartman
> > <gregkh@linuxfoundation.org> wrote:
> > >
> > > On Tue, Jul 27, 2021 at 10:39:49AM -0700, Nick Desaulniers wrote:
> > > > If there are
> > > > cases where it's ok to not check the return value, consider not using
> > > > warn_unused_result on function declarations.
> > >
> > > Ok, so what do you do when you have a function like this where 99.9% of
> > > the users need to check this?  Do I really need to write a wrapper
> > > function just for it so that I can use it "safely" in the core code
> > > instead?
> > >
> > > Something like:
> > >
> > > void do_safe_thing_and_ignore_the_world(...)
> > > {
> > >         __unused int error;
> > >
> > >         error = do_thing(...);
> > > }
> > >
> > > Or something else to get the compiler to be quiet about error being set
> > > and never used?  There HAS to be that option somewhere anyway as we need
> > > it for other parts of the kernel where we do:
> > >         write_bus(device, &value);
> > >         value = read_bus(device);
> > > and then we ignore value as it is not needed, but yet we still HAVE to
> > > call read_bus() here, yet read_bus() is set as warn_unused_result()
> > > because, well, it is a read function :)
> >
> > Such wrappers are trivial with __attribute__((alias(""))):
> > https://godbolt.org/z/j5afPbGcM
> >
> > At least then it's very obvious if someone adds more call sites to
> > such an alias. Then that calls for closer inspection in code review
> > that yes, this is one of those 0.01% of cases.  Since they occur 0.01%
> > of the time, I don't expect such aliases to occur too frequently.
>
> That is just, well, horrible.  Seriously horrible.  Wow.

Yeah, well, that's how I feel about warn_unused_result_except_I_didn't_mean_it.

> And that is the "documented" way to do this?  That feels like an abuse
> of the already-horrible-why-do-they-do-that-for-variables use of the
> alias attribute.

You could also use #pragma's to disable the warning locally, with a
good comment about why it's ok to ignore the return code.

> How badly are compiler people going to complain to me about this if
> it's in this file?
> I can take a patch for that, but I feel the comments involved will make
> people, including myself when I have to look a the code again in 5
> years, even more confused...
>
> ick, I feel dirty...
>
> greg k-h

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkmwAYCyWYoSntLhJkMTN7UU%3D09hROABDU8eN193n8-qg%40mail.gmail.com.
