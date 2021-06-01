Return-Path: <clang-built-linux+bncBDYJPJO25UGBB4W33GCQMGQE22PHF4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 12535397908
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Jun 2021 19:27:15 +0200 (CEST)
Received: by mail-lj1-x23e.google.com with SMTP id z19-20020a2eb5330000b02900eeda415d13sf4587495ljm.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Jun 2021 10:27:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622568434; cv=pass;
        d=google.com; s=arc-20160816;
        b=za3DieGSm0cWTliU7wlqlHDDh+ZwMMg2BafulCaX00WBjrK0ZDsKqNn/PyaVgTxlbe
         yE+tOtfFDvD4uH35A7im6+3nNEa6y1MIRJdLS+gtPwR9vWGOE+SWeNdLgMQHoFOuQ4O2
         G/rjr3+wE6Jbv5RrtRWREgGxfgyG/hrrPZz3jJac+CG0V9j7RSJ7t0ZNsGITSxEEjLYa
         6VDUlTmBjv4EBbQ2eOTxBJPLOPLqlkuAKnyheTCw+aw38mWQ35BhKWfj3O7ZpbpR1zko
         E1RUlFBKwIbnQS2M3rnspW53ceZBHpuv994mlhRfTV3icS5VbTUFilPq317wz8y1SafH
         eZqQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=vL6PAuiaqw1eP7DMZocpjfykZ1fXkhwinfyjFrB7TXo=;
        b=MTS2Ad3FHOo4CE/BNf/9lmKNRr30rYJUS1WeUIAWlB8EKPLRqSxhk/UMdS7/ETq6dW
         U/0ssOBLBxpXuRNZNdAdlHbbovLsgGu3xG+2D6GbXGJFdID7618mfQVy5E1sfv5+MNYc
         1bp+E9XFMuSLq6LoG5AUZ4JopP98FixOWwE0um+spU3dyjqTA99IZH2BX/eG/3FoR22O
         l35du4A1r4N/MDykKrgbdgoIWiTUYWMNavGK66TR5tzWls5tSZU6IfXtv8W4G53xfIlU
         xO8pNaQN15CnrZNz1EB2QCu6ZcZD2XgU4uvGOMridJJ4LFTiei1iwlrIL8fNd68URG1Z
         LSmg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BjI7QZCY;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vL6PAuiaqw1eP7DMZocpjfykZ1fXkhwinfyjFrB7TXo=;
        b=BhHHVw+Xx4sPemMyp9jX1bViH94FbWFF5eWFOY/evRxcT2RF/MXL5PzDU7VWBpQopz
         5Ku3sE402ACRXBkeNRDdj73KykzAMQEYjtisdb/r0WqpbONUr4wuKKhJwmflGwdRsC0T
         76LPnxZmFSWoe8klhZyfDQKgdkBRHw1c9g0kxpAKDFGrkMTllxtSmJg5WrkLlpnpeJUA
         hc+Thalxp/l4t9WBID7mBkdEbCqA9pQg9pCRuMPEWcw7mTbH7Io1SU1aCK/KpbzuEV2T
         iws33h4AeT7C9ADI4K6WqsIbESNMAei6BCvFP/PQIXU9oMWz2zyg5RuOGl1k7DUt9o/3
         7P5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vL6PAuiaqw1eP7DMZocpjfykZ1fXkhwinfyjFrB7TXo=;
        b=r5ebmPJLPiryNtMU18xeHbHAbbD7oRkhJVnTmS79p1BoFZQL8ojy4WyPutmAiElCr7
         D15cOnqbe5ZrewkM4+K1zye9BGNMK3tgbGiwEEzjNvPmQapjMaXsIbdaYHl0kiB6kT7W
         2aVJWk8zHCd6W+meRoDwj9ff6OPzgKivOXifsd9/DOsGz9QLjTdF4DgXiu/SxH9+HxQa
         5hq4LKXPfH/Mp228bXJF+u0RLfk3XXi1FmBl2/dwNrzKUVfmktq0W0LtHY2XoESKyo++
         SYbRj0D7+mdfn+Rsn0ldde4z7NLJEKBJ3slmn4XxDHnZlRaRwFsYsO+a9xX4pO5Kam4W
         hSmw==
X-Gm-Message-State: AOAM532AVws8fFvjMofmPJH4QZXkttGF8kHIF8Tk77y32tsRV6zBOpa3
	hCn80R+lreYmVK91cakGM4s=
X-Google-Smtp-Source: ABdhPJz70KPqTuA6ZEGV4K9erh11heO9qiE01NabpFgeJNXcPoUEzQtTUBHWpzgc4xOfKutT6smm/Q==
X-Received: by 2002:a05:651c:1189:: with SMTP id w9mr22065504ljo.4.1622568434621;
        Tue, 01 Jun 2021 10:27:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3b99:: with SMTP id g25ls851600lfv.2.gmail; Tue, 01
 Jun 2021 10:27:13 -0700 (PDT)
X-Received: by 2002:a19:4083:: with SMTP id n125mr19110902lfa.585.1622568433463;
        Tue, 01 Jun 2021 10:27:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622568433; cv=none;
        d=google.com; s=arc-20160816;
        b=ooYvTdixusNTPRe0iCv/0YqBwoNLAMk0tXeEH8o3ChsLTa8Nnd29EX7zXR1N+9pM8L
         Wj2q7T33xtlh/cfq8H/yWPyiKyypFYyxYbLClg/a/evyd2tJqPL5LeXINS+gqU5zeGp7
         SZfcbRYsXOA6Ih6ZlrhgfZTuRRMx2zBplW52huMvDkkPknGXqUrXH9K/JawOThKNs2Tl
         TPQgemPkCVzfKMO3kE9iOlC+EA+A1aS8Jf1ByMSlKs94V9pKYDAvx1cGWPJwWoZJOXtG
         LoVaBqfSzdTnQIHq9Dhc7VRc31sxKR9XHe4F9AbCLwesrMEmrN+vkTZUsXxhFbNWOwWh
         IIvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=KXyiLrt5rjR2XXxMJ6HL5j9PQjASHrR7d1OT6g4GOgw=;
        b=F1sgBa1l6acyLKVeNNuFPqtsq4kGaM7QBX8hKTEKNIdDjB67ydLzlBtDZCS7CNXO6Y
         nnmu1SReU1rT8nLKeekn3G15m3grhJjQp/VaLsM1pjV5nH5orrUunaUY7u1bzrKcuiO9
         Kg4OytmT5qZ6G5V4CPhTL7fvnBwQ3sorjYsO1l8egwXFSnmutr95bADYkMbosVQWZaPG
         qQOf62XjwKM0uGtwNiLynFonZyOywOfqBeq7EtB2RJVCKZXVMsH31HbOU/5vwI+/iqk0
         EI2Kgt7Tt4fyNW2JTDrMd7i44kmjwAceksYinUHN7InhGo51SG/TwifKIKREM9mgjExx
         fEVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BjI7QZCY;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com. [2a00:1450:4864:20::22a])
        by gmr-mx.google.com with ESMTPS id i184si438358lji.1.2021.06.01.10.27.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Jun 2021 10:27:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a as permitted sender) client-ip=2a00:1450:4864:20::22a;
Received: by mail-lj1-x22a.google.com with SMTP id e11so20278344ljn.13
        for <clang-built-linux@googlegroups.com>; Tue, 01 Jun 2021 10:27:13 -0700 (PDT)
X-Received: by 2002:a2e:b6d2:: with SMTP id m18mr21170894ljo.233.1622568432839;
 Tue, 01 Jun 2021 10:27:12 -0700 (PDT)
MIME-Version: 1.0
References: <20210528200821.459214-1-jarmo.tiitto@gmail.com>
 <YLU0VAoWG7qa7u24@Ryzen-9-3900X.localdomain> <CAGG=3QXtisfabaiVP6y_3sjGsM7cQmPhur8Zqor4qkGrbiXpBA@mail.gmail.com>
 <2450763.S1xdTQMYLV@hyperiorarchmachine>
In-Reply-To: <2450763.S1xdTQMYLV@hyperiorarchmachine>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 1 Jun 2021 10:27:01 -0700
Message-ID: <CAKwvOdmk34yQQow_kMLeF32OpfcP4O0SrPx3gMO3KQvgE8uZ9Q@mail.gmail.com>
Subject: Re: [PATCH 3/6] pgo: modules Add module profile data export machinery.
To: jarmo.tiitto@gmail.com
Cc: Bill Wendling <morbo@google.com>, Bill Wendling <wcw@google.com>, 
	Sami Tolvanen <samitolvanen@google.com>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Jessica Yu <jeyu@kernel.org>
Content-Type: multipart/alternative; boundary="00000000000010bb5205c3b7a7dd"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=BjI7QZCY;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a
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

--00000000000010bb5205c3b7a7dd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 1, 2021 at 6:26 AM <jarmo.tiitto@gmail.com> wrote:

> Kirjoitit tiistaina 1. kes=C3=A4kuuta 2021 11.33.48 EEST:
> > On Mon, May 31, 2021 at 12:09 PM Nathan Chancellor <nathan@kernel.org>
> wrote:
> > > On Fri, May 28, 2021 at 11:08:21PM +0300, Jarmo Tiitto wrote:
> > > > PGO profile data is exported from the kernel by
> > > > creating debugfs files: pgo/<module>.profraw for each module.
> > >
> > > Again, I do not really have many comments on the actual code as I am
> not
> > > super familiar with it.
> > >
> > > However, fs_mod.c duplicates a lot of the functions in fs.c, which
> makes
> > > maintaining this code even more difficult, especially against LLVM PG=
O
> > > profile data format changes. I just want to make sure I understand
> this:
> > > does PGO currently not work with modules? Or does this patch series
> just
> > > make it so that each module has its own .profraw file so individual
> > > modules can be optimized?
> > >
> > > If it is the latter, what is the point? Why would you want to optimiz=
e
> > > just a module and not the entire kernel, if you already have to go
> > > through the profiling steps?
> > >
> > > If it is the former, there has to be a better way to share more of th=
e
> > > machinery between fs.c and fs_mod.c than basically duplicating
> > > everything because there are some parameters and logic that have to
> > > change. I do not have a ton of time to outline exactly what that migh=
t
> > > look like but for example, prf_fill_header and prf_module_fill_header
> > > are basically the same thing aside from the mod parameter and the
> > > prf_..._count() calls. It seems like if mod was NULL, you would call
> the
> > > vmlinux versions of the functions.
> >
> > Functions definitely shouldn't be duplicated with only minor changes.
> > We should determine a way to combine them.
> >
> > As for whether the original PGO patch supports profiling in modules,
> > the answer is "it depends". :-) I believe that clang inserts profiling
> > hooks into all code that's compiled with the "-fprofile..." flags.
> > This would include the modules of course. In GCOV, it's possible to
> > retrieve profiling information for a single file. Jarmo, is that the
> > intention of your patches?
> >
> > -bw
> >
> Thanks for replying Nathan and Bill!
>
> My original motivation for writing this patch was the realization that no
> profile data could be obtained from modules using the original patch only=
.
>
> My insight when testing the original patch was that the compiler indeed
> does
> instrument+profile all code, including any loaded modules. But this is
> where
> the current instrument.c falls short:
> The allocate_node() function may consume nodes from __llvm_prf_vnds_start
> that are actually in a module and not in vmlinux.
> So llvm_prf_data *p argument may point into an module section, and not
> into
> __llvm_prf_data_start range.
>
> This can result in early exhaustion of of nodes for vmlinux and less
> accurate
> profile data. I think this is actually a bug in the original patch.
>
> So no, the PGO does not currently work with modules. And it somewhat work=
s
> for vmlinux.
>

Hi Jarmo,
Thanks for the series! Would you mind including the above in a cover letter
in a v2? (You can use --cover-letter command line arg to `git format-patch`
to generate a stub).  The please explicitly cc
Sami Tolvanen <samitolvanen@google.com>
Bill Wendling <morbo@google.com>
on the series? Finally, please specify the cover letter and all patch files
to git send-email in one command, so that the individual patch files are
linked on lore.kernel.org. This makes it significantly easier to review and
test.


>
> My code confines the llvm_prf_value_node reservation to vmlinux or module
> in
> instrument.c based on where the llvm_prf_data *p argument points into.
>
> My next intention with the patch is that vmlinux and each loadable module
> exports their own, separate profile data file in debugfs/pgo/ like the
> vmlinux
> already does.
> So no file level information like in gcov. Only per whole "module.ko" and
> the
> vmlinux binary.
> This way you can inspect what each module is doing individually using
> "llvm-
> profdata show mod.profraw"
>
> For PGO final build I intended combining the profile data from vmlinux an=
d
> all
> modules with "llvm-profdata merge" into single profile for optimized buil=
d.
>
> I agree fully that the current code duplication is bad.
> Maybe I should pass in the mod->prf_xxx sections in a struct to the
> serializing functions?
> In that way, the struct can be initialized from either module or the
> vmlinux
> sections and all serializing code can share the same code.
>
> Either way, thanks to your questions and info I can try an write better
> version.=F0=9F=98=83
>
> I have learned a lot, thanks.
> -Jarmo Tiitto
>
> > > > Modules are register into the profiler via module notifier callback
> > > > similiar to gcov/base.c. Note that if module does not have
> > > > __llvm_prf_xxx
> > > > sections required the module ignored.
> > > >
> > > > Also there is no "reset" support for yet for these files.
> > > >
> > > > Signed-off-by: Jarmo Tiitto <jarmo.tiitto@gmail.com>
> > > > ---
> > > >
> > > >  kernel/pgo/Makefile     |   2 +-
> > > >  kernel/pgo/fs.c         |  54 ++++--
> > > >  kernel/pgo/fs_mod.c     | 415
> ++++++++++++++++++++++++++++++++++++++++
> > > >  kernel/pgo/instrument.c |  12 +-
> > > >  kernel/pgo/pgo.h        |  11 +-
> > > >  5 files changed, 466 insertions(+), 28 deletions(-)
> > > >  create mode 100644 kernel/pgo/fs_mod.c
> > > >
> > > > diff --git a/kernel/pgo/Makefile b/kernel/pgo/Makefile
> > > > index 41e27cefd9a4..662b7dfdfbe9 100644
> > > > --- a/kernel/pgo/Makefile
> > > > +++ b/kernel/pgo/Makefile
> > > > @@ -2,4 +2,4 @@
> > > >
> > > >  GCOV_PROFILE :=3D n
> > > >  PGO_PROFILE  :=3D n
> > > >
> > > > -obj-y        +=3D fs.o instrument.o
> > > > +obj-y        +=3D fs.o fs_mod.o instrument.o
> > > > diff --git a/kernel/pgo/fs.c b/kernel/pgo/fs.c
> > > > index 575142735273..5471d270a5bb 100644
> > > > --- a/kernel/pgo/fs.c
> > > > +++ b/kernel/pgo/fs.c
> > > > @@ -227,15 +227,15 @@ static unsigned long prf_buffer_size(void)
> > > >
> > > >   * Serialize the profiling data into a format LLVM's tools can
> > > >   understand.
> > > >   * Note: caller *must* hold pgo_lock.
> > > >   */
> > > >
> > > > -static int prf_serialize(struct prf_private_data *p)
> > > > +static int prf_serialize(struct prf_private_data *p, unsigned long
> > > > *buf_size)> >
> > > >  {
> > > >
> > > >       int err =3D 0;
> > > >       void *buffer;
> > > >
> > > > -     p->size =3D prf_buffer_size();
> > > > -     p->buffer =3D vzalloc(p->size);
> > > > +     /* re-check buffer size */
> > > > +     *buf_size =3D prf_buffer_size();
> > > >
> > > > -     if (!p->buffer) {
> > > > +     if (p->size < *buf_size || !p->buffer) {
> > > >
> > > >               err =3D -ENOMEM;
> > > >               goto out;
> > > >
> > > >       }
> > > >
> > > > @@ -262,7 +262,8 @@ static int prf_open(struct inode *inode, struct
> file
> > > > *file)> >
> > > >  {
> > > >
> > > >       struct prf_private_data *data;
> > > >       unsigned long flags;
> > > >
> > > > -     int err;
> > > > +     unsigned long buf_size;
> > > > +     int err =3D 0;
> > > >
> > > >       data =3D kzalloc(sizeof(*data), GFP_KERNEL);
> > > >       if (!data) {
> > > >
> > > > @@ -270,18 +271,41 @@ static int prf_open(struct inode *inode, stru=
ct
> > > > file *file)> >
> > > >               goto out;
> > > >
> > > >       }
> > > >
> > > > +     /* estimate amount of memory needed:
> > > > +      * can't vzalloc() while prf_lock() is held:
> > > > +      * CONFIG_DEBUG_ATOMIC_SLEEP complains.
> > > > +      * So first get buffer size, release the lock,
> > > > +      * vzalloc(), re-lock and try serialize.
> > > > +      */
> > > >
> > > >       flags =3D prf_lock();
> > > >
> > > > +     buf_size =3D prf_buffer_size();
> > > >
> > > > -     err =3D prf_serialize(data);
> > > > -     if (unlikely(err)) {
> > > > -             kfree(data);
> > > > -             goto out_unlock;
> > > > -     }
> > > > +     do {
> > > > +             prf_unlock(flags);
> > > >
> > > > -     file->private_data =3D data;
> > > > +             /* resize buffer */
> > > > +             if (data->size < buf_size && data->buffer) {
> > > > +                     vfree(data->buffer);
> > > > +                     data->buffer =3D NULL;
> > > > +             }
> > > > +
> > > > +             if (!data->buffer) {
> > > > +                     data->size =3D buf_size;
> > > > +                     data->buffer =3D vzalloc(data->size);
> > > >
> > > > -out_unlock:
> > > > +                     if (!data->buffer) {
> > > > +                             err =3D -ENOMEM;
> > > > +                             goto out;
> > > > +                     }
> > > > +             }
> > > > +             /* try serialize */
> > > > +             flags =3D prf_lock();
> > > > +     } while (prf_serialize(data, &buf_size));
> > > >
> > > >       prf_unlock(flags);
> > > >
> > > > +
> > > > +     data->size =3D buf_size;
> > > > +     file->private_data =3D data;
> > > > +
> > > >
> > > >  out:
> > > >       return err;
> > > >
> > > >  }
> > > >
> > > > @@ -363,6 +387,8 @@ static const struct file_operations
> prf_reset_fops =3D
> > > > {
> > > >
> > > >  /* Create debugfs entries. */
> > > >  static int __init pgo_init(void)
> > > >  {
> > > >
> > > > +     pr_notice("Clang PGO profile data available.");
> > > > +
> > > >
> > > >       directory =3D debugfs_create_dir("pgo", NULL);
> > > >       if (!directory)
> > > >
> > > >               goto err_remove;
> > > >
> > > > @@ -375,6 +401,8 @@ static int __init pgo_init(void)
> > > >
> > > >                                &prf_reset_fops))
> > > >
> > > >               goto err_remove;
> > > >
> > > > +     prf_modules_init();
> > > > +
> > > >
> > > >       return 0;
> > > >
> > > >  err_remove:
> > > > @@ -385,6 +413,8 @@ static int __init pgo_init(void)
> > > >
> > > >  /* Remove debugfs entries. */
> > > >  static void __exit pgo_exit(void)
> > > >  {
> > > >
> > > > +     prf_modules_exit();
> > > > +
> > > >
> > > >       debugfs_remove_recursive(directory);
> > > >
> > > >  }
> > > >
> > > > diff --git a/kernel/pgo/fs_mod.c b/kernel/pgo/fs_mod.c
> > > > new file mode 100644
> > > > index 000000000000..0808d44227f1
> > > > --- /dev/null
> > > > +++ b/kernel/pgo/fs_mod.c
> > > > @@ -0,0 +1,415 @@
> > > > +// SPDX-License-Identifier: GPL-2.0
> > > > +/*
> > > > + * Copyright (C) 2021 Jarmo Tiitto
> > > > + *
> > > > + * Author:
> > > > + *   Jarmo Tiitto <jarmo.tiitto@gmail.com>
> > > > + *
> > > > + * Based on the clang PGO kernel patch by:
> > > > + *  Sami Tolvanen <samitolvanen@google.com>
> > > > + *
> > > > + * This software is licensed under the terms of the GNU General
> Public
> > > > + * License version 2, as published by the Free Software Foundation=
,
> and
> > > > + * may be copied, distributed, and modified under those terms.
> > > > + *
> > > > + * This program is distributed in the hope that it will be useful,
> > > > + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> > > > + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> > > > + * GNU General Public License for more details.
> > > > + *
> > > > + */
> > > > +
> > > > +#define pr_fmt(fmt)  "pgo: " fmt
> > > > +
> > > > +#include <linux/kernel.h>
> > > > +#include <linux/debugfs.h>
> > > > +#include <linux/fs.h>
> > > > +#include <linux/module.h>
> > > > +#include <linux/slab.h>
> > > > +#include <linux/vmalloc.h>
> > > > +#include "pgo.h"
> > > > +
> > > > +/*
> > > > + * PGO profile data reporting for modules:
> > > > + * We maintain one debugfs pgo/<module>.profraw file per module.
> > > > + */
> > > > +
> > > > +
> > > > +DEFINE_MUTEX(prf_mod_lock);
> > > > +LIST_HEAD(prf_mod_list);
> > > > +
> > > > +struct prf_mod_data {
> > > > +     void *buffer;
> > > > +     unsigned long size;
> > > > +};
> > > > +
> > > > +/* these are trivial, but each one differs a bit */
> > > > +static inline unsigned long prf_mod_data_size(struct module *mod)
> > > > +{
> > > > +     return mod->prf_data_size;
> > > > +}
> > > > +
> > > > +static inline unsigned long prf_mod_data_count(struct module *mod)
> > > > +{
> > > > +     return mod->prf_data_size / sizeof(struct llvm_prf_data);
> > > > +}
> > > > +
> > > > +static inline unsigned long prf_mod_cnts_size(struct module *mod)
> > > > +{
> > > > +     return mod->prf_cnts_num * sizeof(mod->prf_cnts[0]);
> > > > +}
> > > > +
> > > > +static inline unsigned long prf_mod_cnts_count(struct module *mod)
> > > > +{
> > > > +     return mod->prf_cnts_num;
> > > > +}
> > > > +
> > > > +static inline unsigned long prf_mod_names_size(struct module *mod)
> > > > +{
> > > > +     return mod->prf_names_num * sizeof(mod->prf_names[0]);
> > > > +}
> > > > +
> > > > +static inline unsigned long prf_mod_names_count(struct module *mod=
)
> > > > +{
> > > > +     return mod->prf_names_num;
> > > > +}
> > > > +
> > > > +static inline unsigned long prf_mod_vnds_size(struct module *mod)
> > > > +{
> > > > +     return mod->prf_vnds_size;
> > > > +}
> > > > +
> > > > +static inline unsigned long prf_mod_vnds_count(struct module *mod)
> > > > +{
> > > > +     return mod->prf_vnds_size / sizeof(struct llvm_prf_value_node=
);
> > > > +}
> > > > +
> > > > +/*
> > > > + * Raw profile data format:
> > > > + *
> > > > + *   - llvm_prf_header
> > > > + *   - __llvm_prf_data
> > > > + *   - __llvm_prf_cnts
> > > > + *   - __llvm_prf_names
> > > > + *   - zero padding to 8 bytes
> > > > + *   - for each llvm_prf_data in __llvm_prf_data:
> > > > + *           - llvm_prf_value_data
> > > > + *                   - llvm_prf_value_record + site count array
> > > > + *                           - llvm_prf_value_node_data
> > > > + *                           ...
> > > > + *                   ...
> > > > + *           ...
> > > > + */
> > > > +
> > > > +static void prf_module_fill_header(struct module *mod, void
> **buffer)
> > > > +{
> > > > +     struct llvm_prf_header *header =3D *(struct llvm_prf_header
> > > > **)buffer;
> > > > +
> > > > +#ifdef CONFIG_64BIT
> > > > +     header->magic =3D LLVM_INSTR_PROF_RAW_MAGIC_64;
> > > > +#else
> > > > +     header->magic =3D LLVM_INSTR_PROF_RAW_MAGIC_32;
> > > > +#endif
> > > > +     header->version =3D LLVM_VARIANT_MASK_IR_PROF |
> > > > LLVM_INSTR_PROF_RAW_VERSION; +     header->data_size =3D
> > > > prf_mod_data_count(mod);
> > > > +     header->padding_bytes_before_counters =3D 0;
> > > > +     header->counters_size =3D prf_mod_cnts_count(mod);
> > > > +     header->padding_bytes_after_counters =3D 0;
> > > > +     header->names_size =3D prf_mod_names_count(mod);
> > > > +     header->counters_delta =3D (u64)mod->prf_cnts;
> > > > +     header->names_delta =3D (u64)mod->prf_names;
> > > > +     header->value_kind_last =3D LLVM_INSTR_PROF_IPVK_LAST;
> > > > +
> > > > +     *buffer +=3D sizeof(*header);
> > > > +}
> > > > +
> > > > +/*
> > > > + * Copy the source into the buffer, incrementing the pointer into
> > > > buffer in the + * process.
> > > > + */
> > > > +static void prf_copy_to_buffer(void **buffer, const void *src,
> unsigned
> > > > long size) +{
> > > > +     memcpy(*buffer, src, size);
> > > > +     *buffer +=3D size;
> > > > +}
> > > > +
> > > > +/* extern u32 __prf_get_value_size(struct llvm_prf_data *p, u32
> > > > *value_kinds) */ +
> > > > +static u32 prf_module_get_value_size(struct module *mod)
> > > > +{
> > > > +     u32 size =3D 0;
> > > > +     struct llvm_prf_data *p;
> > > > +     struct llvm_prf_data *start =3D mod->prf_data;
> > > > +     struct llvm_prf_data *end =3D start + prf_mod_data_count(mod)=
;
> > > > +
> > > > +     for (p =3D start; p < end; p++)
> > > > +             size +=3D __prf_get_value_size(p, NULL);
> > > > +
> > > > +     return size;
> > > > +}
> > > > +
> > > > +/* Serialize the profiling's value.
> > > > + * extern void prf_serialize_value(struct llvm_prf_data *p, void
> > > > **buffer)
> > > > + */
> > > > +
> > > > +static void prf_module_serialize_values(struct module *mod, void
> > > > **buffer)
> > > > +{
> > > > +     struct llvm_prf_data *p;
> > > > +     struct llvm_prf_data *start =3D mod->prf_data;
> > > > +     struct llvm_prf_data *end =3D start + prf_mod_data_count(mod)=
;
> > > > +
> > > > +     for (p =3D start; p < end; p++)
> > > > +             prf_serialize_value(p, buffer);
> > > > +}
> > > > +
> > > > +static inline unsigned long prf_get_padding(unsigned long size)
> > > > +{
> > > > +     return 7 & (sizeof(u64) - size % sizeof(u64));
> > > > +}
> > > > +
> > > > +static unsigned long prf_module_buffer_size(struct module *mod)
> > > > +{
> > > > +     return sizeof(struct llvm_prf_header) +
> > > > +                     prf_mod_data_size(mod)  +
> > > > +                     prf_mod_cnts_size(mod) +
> > > > +                     prf_mod_names_size(mod) +
> > > > +                     prf_get_padding(prf_mod_names_size(mod)) +
> > > > +                     prf_module_get_value_size(mod);
> > > > +}
> > > > +
> > > > +/*
> > > > + * Serialize the profiling data into a format LLVM's tools can
> > > > understand.
> > > > + * Note: caller *must* hold pgo_lock and hold reference to the
> module.
> > > > + */
> > > > +static int prf_module_serialize(struct module *mod, struct
> prf_mod_data
> > > > *p, unsigned long *buf_size) +{
> > > > +     int err =3D 0;
> > > > +     void *buffer;
> > > > +
> > > > +     /* re-check buffer size */
> > > > +     *buf_size =3D prf_module_buffer_size(mod);
> > > > +
> > > > +     if (p->size < *buf_size || !p->buffer) {
> > > > +             err =3D -ENOMEM;
> > > > +             goto out;
> > > > +     }
> > > > +
> > > > +     buffer =3D p->buffer;
> > > > +
> > > > +     prf_module_fill_header(mod, &buffer);
> > > > +     prf_copy_to_buffer(&buffer, mod->prf_data,
> > > > prf_mod_data_size(mod));
> > > > +     prf_copy_to_buffer(&buffer, mod->prf_cnts,
> > > > prf_mod_cnts_size(mod));
> > > > +     prf_copy_to_buffer(&buffer, mod->prf_names,
> > > > prf_mod_names_size(mod));
> > > > +     buffer +=3D prf_get_padding(prf_mod_names_size(mod));
> > > > +
> > > > +     prf_module_serialize_values(mod, &buffer);
> > > > +
> > > > +out:
> > > > +     return err;
> > > > +}
> > > > +
> > > > +/* open() implementation for module PGO. */
> > > > +static int prf_module_open(struct inode *inode, struct file *file)
> > > > +{
> > > > +     struct prf_mod_private_data *data;
> > > > +     struct prf_mod_data *pinfo;
> > > > +     struct module *mod;
> > > > +     unsigned long flags;
> > > > +     unsigned long buf_size =3D 0;
> > > > +     int err =3D 0;
> > > > +
> > > > +     mutex_lock(&prf_mod_lock);
> > > > +     data =3D inode->i_private; /* see: pgo_module_notifier() */
> > > > +
> > > > +     BUG_ON(!data);
> > > > +
> > > > +     /* grab the module */
> > > > +     mod =3D READ_ONCE(data->mod);
> > > > +     if (mod && try_module_get(mod)) {
> > > > +             // Is it live?
> > > > +             if (mod->state !=3D MODULE_STATE_LIVE) {
> > > > +                     err =3D -EAGAIN;
> > > > +                     goto put_unlock;
> > > > +             }
> > > > +
> > > > +             pinfo =3D kzalloc(sizeof(*pinfo), GFP_KERNEL);
> > > > +             if (!pinfo) {
> > > > +                     err =3D -ENOMEM;
> > > > +                     goto put_unlock;
> > > > +             }
> > > > +
> > > > +             mutex_unlock(&prf_mod_lock);
> > > > +
> > > > +             /* estimate amount of memory needed:
> > > > +              * can't vzalloc() while prf_lock() is held
> > > > +              * and prf_module_buffer_size() only works while it i=
s
> > > > held..
> > > > +              */
> > > > +             flags =3D prf_lock();
> > > > +             buf_size =3D prf_module_buffer_size(mod);
> > > > +             do {
> > > > +                     prf_unlock(flags);
> > > > +
> > > > +                     /* resize buffer */
> > > > +                     if (pinfo->size < buf_size && pinfo->buffer) =
{
> > > > +                             vfree(pinfo->buffer);
> > > > +                             pinfo->buffer =3D NULL;
> > > > +                     }
> > > > +
> > > > +                     if (!pinfo->buffer) {
> > > > +                             pinfo->size =3D buf_size;
> > > > +                             pinfo->buffer =3D vzalloc(pinfo->size=
);
> > > > +
> > > > +                             if (!pinfo->buffer) {
> > > > +                                     err =3D -ENOMEM;
> > > > +                                     goto out;
> > > > +                             }
> > > > +                     }
> > > > +
> > > > +                     /* try serialize */
> > > > +                     flags =3D prf_lock();
> > > > +
> > > > +             } while (prf_module_serialize(mod, pinfo, &buf_size))=
;
> > > > +
> > > > +             prf_unlock(flags);
> > > > +
> > > > +             /* success! */
> > > > +             pinfo->size =3D buf_size;
> > > > +             file->private_data =3D pinfo;
> > > > +
> > > > +             module_put(mod);
> > > > +             return err;
> > > > +     }
> > > > +
> > > > +put_unlock:
> > > > +     module_put(mod);
> > > > +     mutex_unlock(&prf_mod_lock);
> > > > +out:
> > > > +     return err;
> > > > +}
> > > > +
> > > > +/* read() implementation for PGO. */
> > > > +static ssize_t prf_module_read(struct file *file, char __user *buf=
,
> > > > size_t count, +                     loff_t *ppos)
> > > > +{
> > > > +     struct prf_mod_data *pinfo =3D file->private_data;
> > > > +
> > > > +     BUG_ON(!pinfo);
> > > > +
> > > > +     return simple_read_from_buffer(buf, count, ppos, pinfo->buffe=
r,
> > > > +                                        pinfo->size);
> > > > +}
> > > > +
> > > > +/* release() implementation for PGO. Release resources allocated b=
y
> > > > open(). */ +static int prf_module_release(struct inode *inode, stru=
ct
> > > > file *file) +{
> > > > +     struct prf_mod_data *pinfo =3D file->private_data;
> > > > +
> > > > +     if (pinfo) {
> > > > +             vfree(pinfo->buffer);
> > > > +             kfree(pinfo);
> > > > +             file->private_data =3D 0;
> > > > +     }
> > > > +     return 0;
> > > > +}
> > > > +
> > > > +static const struct file_operations prf_mod_fops =3D {
> > > > +     .owner          =3D THIS_MODULE,
> > > > +     .open           =3D prf_module_open,
> > > > +     .read           =3D prf_module_read,
> > > > +     .llseek         =3D default_llseek,
> > > > +     .release        =3D prf_module_release
> > > > +};
> > > > +
> > > > +static void prf_module_free(struct rcu_head *rcu)
> > > > +{
> > > > +     struct prf_mod_private_data *data;
> > > > +
> > > > +     data =3D container_of(rcu, struct prf_mod_private_data, rcu);
> > > > +
> > > > +     debugfs_remove(data->file);
> > > > +
> > > > +     kfree(data);
> > > > +}
> > > > +
> > > > +static int pgo_module_notifier(struct notifier_block *nb, unsigned
> long
> > > > event, +                             void *pdata)
> > > > +{
> > > > +     struct module *mod =3D pdata;
> > > > +     struct prf_mod_private_data *data;
> > > > +     char fsname[MODULE_NAME_LEN + 9]; // +strlen(".profraw")
> > > > +
> > > > +     if (event =3D=3D MODULE_STATE_LIVE) {
> > > > +             /* does the module have profiling info? */
> > > > +             if (mod->prf_data
> > > > +                       && mod->prf_cnts
> > > > +                       && mod->prf_names
> > > > +                       && mod->prf_vnds) {
> > > > +                     /* add module prf_mod_private_data entry */
> > > > +                     data =3D kzalloc(sizeof(*data), GFP_KERNEL);
> > > > +
> > > > +                     fsname[0] =3D 0;
> > > > +                     snprintf(fsname, sizeof(fsname), "%s.profraw"=
,
> > > > mod->name); +
> > > > +                     mutex_lock(&prf_mod_lock);
> > > > +
> > > > +                     data->file =3D debugfs_create_file(fsname, 06=
00,
> > > > directory, data, &prf_mod_fops); +                     if
> (!data->file)
> > > > {
> > > > +                             pr_err("Failed setup module pgo: %s",
> > > > fsname); +                             kfree(data);
> > > > +                             mutex_unlock(&prf_mod_lock);
> > > > +                             return NOTIFY_OK;
> > > > +                     }
> > > > +
> > > > +                     WRITE_ONCE(data->mod, mod);
> > > > +
> > > > +                     list_add_tail_rcu(&data->link, &prf_mod_list)=
;
> > > > +                     mutex_unlock(&prf_mod_lock);
> > > > +             }
> > > > +     }
> > > > +     if (event =3D=3D MODULE_STATE_GOING) {
> > > > +             /* remove module from the list */
> > > > +             rcu_read_lock();
> > > > +             list_for_each_entry_rcu(data, &prf_mod_list, link) {
> > > > +                     if (strcmp(data->mod->name, mod->name) =3D=3D=
 0) {
> > > > +
> > > > +                             mutex_lock(&prf_mod_lock);
> > > > +                             /* remofe from profiled modules */
> > > > +                             list_del_rcu(&data->link);
> > > > +                             /* mark it stale */
> > > > +                             WRITE_ONCE(data->mod, NULL);
> > > > +                             mutex_unlock(&prf_mod_lock);
> > > > +                             call_rcu(&data->rcu, prf_module_free)=
;
> > > > +                             break;
> > > > +                     }
> > > > +             }
> > > > +             rcu_read_unlock();
> > > > +     }
> > > > +
> > > > +     return NOTIFY_OK;
> > > > +}
> > > > +
> > > > +static struct notifier_block pgo_module_nb =3D {
> > > > +     .notifier_call =3D pgo_module_notifier
> > > > +};
> > > > +
> > > > +void prf_modules_init(void)
> > > > +{
> > > > +     register_module_notifier(&pgo_module_nb);
> > > > +}
> > > > +
> > > > +void prf_modules_exit(void)
> > > > +{
> > > > +     struct prf_mod_private_data *p;
> > > > +
> > > > +     /* unsubscribe the notifier and do cleanup. */
> > > > +     unregister_module_notifier(&pgo_module_nb);
> > > > +
> > > > +     rcu_read_lock();
> > > > +     list_for_each_entry_rcu(p, &prf_mod_list, link) {
> > > > +             /* delete nodes */
> > > > +             list_del(&p->link);
> > > > +             WRITE_ONCE(p->mod, NULL);
> > > > +             call_rcu(&p->rcu, prf_module_free);
> > > > +     }
> > > > +     rcu_read_unlock();
> > > > +}
> > > > \ No newline at end of file
> > > > diff --git a/kernel/pgo/instrument.c b/kernel/pgo/instrument.c
> > > > index 464b3bc77431..98cfa11a7b76 100644
> > > > --- a/kernel/pgo/instrument.c
> > > > +++ b/kernel/pgo/instrument.c
> > > > @@ -139,11 +139,11 @@
> EXPORT_SYMBOL(__llvm_profile_instrument_target);
> > > >
> > > >  /* Counts the number of times a range of targets values are seen. =
*/
> > > >  void __llvm_profile_instrument_range(u64 target_value, void *data,
> > > >
> > > > -                                  u32 index, s64 precise_start,
> > > > -                                  s64 precise_last, s64
> large_value);
> > > > +                                      u32 index, s64 precise_start=
,
> > > > +                                      s64 precise_last, s64
> > > > large_value);
> > > >
> > > >  void __llvm_profile_instrument_range(u64 target_value, void *data,
> > > >
> > > > -                                  u32 index, s64 precise_start,
> > > > -                                  s64 precise_last, s64 large_valu=
e)
> > > > +                                      u32 index, s64 precise_start=
,
> > > > +                                      s64 precise_last, s64
> > > > large_value)
> > > >
> > > >  {
> > > >
> > > >       if (large_value !=3D S64_MIN && (s64)target_value >=3D large_=
value)
> > > >
> > > >               target_value =3D large_value;
> > > >
> > > > @@ -176,9 +176,9 @@ static u64 inst_prof_get_range_rep_value(u64
> value)
> > > >
> > > >   * defined in compiler-rt/include/profile/InstrProfData.inc.
> > > >   */
> > > >
> > > >  void __llvm_profile_instrument_memop(u64 target_value, void *data,
> > > >
> > > > -                                  u32 counter_index);
> > > > +                                      u32 counter_index);
> > > >
> > > >  void __llvm_profile_instrument_memop(u64 target_value, void *data,
> > > >
> > > > -                                  u32 counter_index)
> > > > +                                      u32 counter_index)
> > > >
> > > >  {
> > > >
> > > >       u64 rep_value;
> > > >
> > > > diff --git a/kernel/pgo/pgo.h b/kernel/pgo/pgo.h
> > > > index a9ff51abbfd5..2840da63c7cd 100644
> > > > --- a/kernel/pgo/pgo.h
> > > > +++ b/kernel/pgo/pgo.h
> > > > @@ -212,17 +212,13 @@ struct prf_mod_private_data {
> > > >
> > > >       struct list_head link;
> > > >       struct rcu_head rcu;
> > > >
> > > > -     void *buffer;
> > > > -     unsigned long size;
> > > > -
> > > > -     char mod_name[MODULE_NAME_LEN];
> > > >
> > > >       struct module *mod;
> > > >       struct dentry *file;
> > > >
> > > >       int current_node;
> > > >
> > > >  };
> > > >
> > > > -/* Mutex protecting the prf_mod_list and entries */
> > > > +/* Mutex protecting the prf_mod_list */
> > > >
> > > >  extern struct mutex prf_mod_lock;
> > > >
> > > >  /* List of modules profiled */
> > > >
> > > > @@ -231,10 +227,7 @@ extern struct list_head prf_mod_list;
> > > >
> > > >  extern void prf_modules_init(void);
> > > >  extern void prf_modules_exit(void);
> > > >
> > > > -/* Update each modules snapshot of the profiling data. */
> > > > -extern int prf_modules_snapshot(void);
> > > > -
> > > > -/* below funcs are required by prf_modules_snapshot() */
> > > > +/* below funcs are required by prf_modules */
> > > >
> > > >  extern u32 __prf_get_value_size(struct llvm_prf_data *p, u32
> > > >  *value_kinds);
> > > >
> > > >  extern void prf_serialize_value(struct llvm_prf_data *p, void
> > > >  **buffer);
> > > >
> > > > --
> > > > 2.31.1
>
>
>

--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdmk34yQQow_kMLeF32OpfcP4O0SrPx3gMO3KQvgE8uZ9Q%40mai=
l.gmail.com.

--00000000000010bb5205c3b7a7dd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Tue, Jun 1, 2021 at 6:26 AM &lt;<a hre=
f=3D"mailto:jarmo.tiitto@gmail.com">jarmo.tiitto@gmail.com</a>&gt; wrote:<b=
r></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">Kirjoitit tiistaina 1. kes=C3=A4kuuta 2021 11.33.48 EEST:<br>
&gt; On Mon, May 31, 2021 at 12:09 PM Nathan Chancellor &lt;<a href=3D"mail=
to:nathan@kernel.org" target=3D"_blank">nathan@kernel.org</a>&gt; <br>
wrote:<br>
&gt; &gt; On Fri, May 28, 2021 at 11:08:21PM +0300, Jarmo Tiitto wrote:<br>
&gt; &gt; &gt; PGO profile data is exported from the kernel by<br>
&gt; &gt; &gt; creating debugfs files: pgo/&lt;module&gt;.profraw for each =
module.<br>
&gt; &gt; <br>
&gt; &gt; Again, I do not really have many comments on the actual code as I=
 am not<br>
&gt; &gt; super familiar with it.<br>
&gt; &gt; <br>
&gt; &gt; However, fs_mod.c duplicates a lot of the functions in fs.c, whic=
h makes<br>
&gt; &gt; maintaining this code even more difficult, especially against LLV=
M PGO<br>
&gt; &gt; profile data format changes. I just want to make sure I understan=
d this:<br>
&gt; &gt; does PGO currently not work with modules? Or does this patch seri=
es just<br>
&gt; &gt; make it so that each module has its own .profraw file so individu=
al<br>
&gt; &gt; modules can be optimized?<br>
&gt; &gt; <br>
&gt; &gt; If it is the latter, what is the point? Why would you want to opt=
imize<br>
&gt; &gt; just a module and not the entire kernel, if you already have to g=
o<br>
&gt; &gt; through the profiling steps?<br>
&gt; &gt; <br>
&gt; &gt; If it is the former, there has to be a better way to share more o=
f the<br>
&gt; &gt; machinery between fs.c and fs_mod.c than basically duplicating<br=
>
&gt; &gt; everything because there are some parameters and logic that have =
to<br>
&gt; &gt; change. I do not have a ton of time to outline exactly what that =
might<br>
&gt; &gt; look like but for example, prf_fill_header and prf_module_fill_he=
ader<br>
&gt; &gt; are basically the same thing aside from the mod parameter and the=
<br>
&gt; &gt; prf_..._count() calls. It seems like if mod was NULL, you would c=
all the<br>
&gt; &gt; vmlinux versions of the functions.<br>
&gt; <br>
&gt; Functions definitely shouldn&#39;t be duplicated with only minor chang=
es.<br>
&gt; We should determine a way to combine them.<br>
&gt; <br>
&gt; As for whether the original PGO patch supports profiling in modules,<b=
r>
&gt; the answer is &quot;it depends&quot;. :-) I believe that clang inserts=
 profiling<br>
&gt; hooks into all code that&#39;s compiled with the &quot;-fprofile...&qu=
ot; flags.<br>
&gt; This would include the modules of course. In GCOV, it&#39;s possible t=
o<br>
&gt; retrieve profiling information for a single file. Jarmo, is that the<b=
r>
&gt; intention of your patches?<br>
&gt; <br>
&gt; -bw<br>
&gt;<br>
Thanks for replying Nathan and Bill!<br>
<br>
My original motivation for writing this patch was the realization that no<b=
r>
profile data could be obtained from modules using the original patch only. =
<br>
<br>
My insight when testing the original patch was that the compiler indeed doe=
s <br>
instrument+profile all code, including any loaded modules. But this is wher=
e <br>
the current instrument.c falls short:<br>
The allocate_node() function may consume nodes from __llvm_prf_vnds_start<b=
r>
that are actually in a module and not in vmlinux.<br>
So llvm_prf_data *p argument may point into an module section, and not into=
 <br>
__llvm_prf_data_start range.<br>
<br>
This can result in early exhaustion of of nodes for vmlinux and less accura=
te <br>
profile data. I think this is actually a bug in the original patch.<br>
<br>
So no, the PGO does not currently work with modules. And it somewhat works<=
br>
for vmlinux.<br></blockquote><div><br></div><div>Hi Jarmo,</div><div>Thanks=
 for the series! Would you mind including the above in a cover letter in a =
v2? (You can use=C2=A0--cover-letter command line arg to `git format-patch`=
 to generate a stub).=C2=A0 The please explicitly cc</div><div>Sami Tolvane=
n &lt;<a href=3D"mailto:samitolvanen@google.com">samitolvanen@google.com</a=
>&gt;</div><div>Bill Wendling &lt;<a href=3D"mailto:morbo@google.com">morbo=
@google.com</a>&gt;</div><div>on the series? Finally, please specify the co=
ver letter and all patch files to git send-email in one command, so that th=
e individual patch files are linked on <a href=3D"http://lore.kernel.org">l=
ore.kernel.org</a>. This makes it significantly easier to review and test.<=
/div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
My code confines the llvm_prf_value_node reservation to vmlinux or module i=
n <br>
instrument.c based on where the llvm_prf_data *p argument points into.<br>
<br>
My next intention with the patch is that vmlinux and each loadable module <=
br>
exports their own, separate profile data file in debugfs/pgo/ like the vmli=
nux <br>
already does.<br>
So no file level information like in gcov. Only per whole &quot;module.ko&q=
uot; and the<br>
vmlinux binary.<br>
This way you can inspect what each module is doing individually using &quot=
;llvm-<br>
profdata show mod.profraw&quot;<br>
<br>
For PGO final build I intended combining the profile data from vmlinux and =
all <br>
modules with &quot;llvm-profdata merge&quot; into single profile for optimi=
zed build.<br>
<br>
I agree fully that the current code duplication is bad.<br>
Maybe I should pass in the mod-&gt;prf_xxx sections in a struct to the <br>
serializing functions?<br>
In that way, the struct can be initialized from either module or the vmlinu=
x <br>
sections and all serializing code can share the same code.<br>
<br>
Either way, thanks to your questions and info I can try an write better <br=
>
version.=F0=9F=98=83<br>
<br>
I have learned a lot, thanks.<br>
-Jarmo Tiitto<br>
<br>
&gt; &gt; &gt; Modules are register into the profiler via module notifier c=
allback<br>
&gt; &gt; &gt; similiar to gcov/base.c. Note that if module does not have<b=
r>
&gt; &gt; &gt; __llvm_prf_xxx<br>
&gt; &gt; &gt; sections required the module ignored.<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; Also there is no &quot;reset&quot; support for yet for these=
 files.<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; Signed-off-by: Jarmo Tiitto &lt;<a href=3D"mailto:jarmo.tiit=
to@gmail.com" target=3D"_blank">jarmo.tiitto@gmail.com</a>&gt;<br>
&gt; &gt; &gt; ---<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt;=C2=A0 kernel/pgo/Makefile=C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A02=
 +-<br>
&gt; &gt; &gt;=C2=A0 kernel/pgo/fs.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=
=A0 54 ++++--<br>
&gt; &gt; &gt;=C2=A0 kernel/pgo/fs_mod.c=C2=A0 =C2=A0 =C2=A0| 415 +++++++++=
+++++++++++++++++++++++++++++++<br>
&gt; &gt; &gt;=C2=A0 kernel/pgo/instrument.c |=C2=A0 12 +-<br>
&gt; &gt; &gt;=C2=A0 kernel/pgo/pgo.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 11=
 +-<br>
&gt; &gt; &gt;=C2=A0 5 files changed, 466 insertions(+), 28 deletions(-)<br=
>
&gt; &gt; &gt;=C2=A0 create mode 100644 kernel/pgo/fs_mod.c<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; diff --git a/kernel/pgo/Makefile b/kernel/pgo/Makefile<br>
&gt; &gt; &gt; index 41e27cefd9a4..662b7dfdfbe9 100644<br>
&gt; &gt; &gt; --- a/kernel/pgo/Makefile<br>
&gt; &gt; &gt; +++ b/kernel/pgo/Makefile<br>
&gt; &gt; &gt; @@ -2,4 +2,4 @@<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt;=C2=A0 GCOV_PROFILE :=3D n<br>
&gt; &gt; &gt;=C2=A0 PGO_PROFILE=C2=A0 :=3D n<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; -obj-y=C2=A0 =C2=A0 =C2=A0 =C2=A0 +=3D fs.o instrument.o<br>
&gt; &gt; &gt; +obj-y=C2=A0 =C2=A0 =C2=A0 =C2=A0 +=3D fs.o fs_mod.o instrum=
ent.o<br>
&gt; &gt; &gt; diff --git a/kernel/pgo/fs.c b/kernel/pgo/fs.c<br>
&gt; &gt; &gt; index 575142735273..5471d270a5bb 100644<br>
&gt; &gt; &gt; --- a/kernel/pgo/fs.c<br>
&gt; &gt; &gt; +++ b/kernel/pgo/fs.c<br>
&gt; &gt; &gt; @@ -227,15 +227,15 @@ static unsigned long prf_buffer_size(v=
oid)<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt;=C2=A0 =C2=A0* Serialize the profiling data into a format LLV=
M&#39;s tools can<br>
&gt; &gt; &gt;=C2=A0 =C2=A0understand.<br>
&gt; &gt; &gt;=C2=A0 =C2=A0* Note: caller *must* hold pgo_lock.<br>
&gt; &gt; &gt;=C2=A0 =C2=A0*/<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; -static int prf_serialize(struct prf_private_data *p)<br>
&gt; &gt; &gt; +static int prf_serialize(struct prf_private_data *p, unsign=
ed long<br>
&gt; &gt; &gt; *buf_size)&gt; &gt; <br>
&gt; &gt; &gt;=C2=A0 {<br>
&gt; &gt; &gt;=C2=A0 <br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0int err =3D 0;<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0void *buffer;<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; -=C2=A0 =C2=A0 =C2=A0p-&gt;size =3D prf_buffer_size();<br>
&gt; &gt; &gt; -=C2=A0 =C2=A0 =C2=A0p-&gt;buffer =3D vzalloc(p-&gt;size);<b=
r>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0/* re-check buffer size */<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0*buf_size =3D prf_buffer_size();<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; -=C2=A0 =C2=A0 =C2=A0if (!p-&gt;buffer) {<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0if (p-&gt;size &lt; *buf_size || !p-&gt=
;buffer) {<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0err =
=3D -ENOMEM;<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto o=
ut;<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; @@ -262,7 +262,8 @@ static int prf_open(struct inode *inode,=
 struct file<br>
&gt; &gt; &gt; *file)&gt; &gt; <br>
&gt; &gt; &gt;=C2=A0 {<br>
&gt; &gt; &gt;=C2=A0 <br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct prf_private_data *data;<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned long flags;<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; -=C2=A0 =C2=A0 =C2=A0int err;<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0unsigned long buf_size;<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0int err =3D 0;<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0data =3D kzalloc(sizeof(*data), GF=
P_KERNEL);<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!data) {<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; @@ -270,18 +271,41 @@ static int prf_open(struct inode *inod=
e, struct<br>
&gt; &gt; &gt; file *file)&gt; &gt; <br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto o=
ut;<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0/* estimate amount of memory needed:<br=
>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 * can&#39;t vzalloc() while prf_lock()=
 is held:<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 * CONFIG_DEBUG_ATOMIC_SLEEP complains.=
<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 * So first get buffer size, release th=
e lock,<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 * vzalloc(), re-lock and try serialize=
.<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 */<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0flags =3D prf_lock();<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0buf_size =3D prf_buffer_size();<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; -=C2=A0 =C2=A0 =C2=A0err =3D prf_serialize(data);<br>
&gt; &gt; &gt; -=C2=A0 =C2=A0 =C2=A0if (unlikely(err)) {<br>
&gt; &gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0kfree(data)=
;<br>
&gt; &gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto out_un=
lock;<br>
&gt; &gt; &gt; -=C2=A0 =C2=A0 =C2=A0}<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0do {<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0prf_unlock(=
flags);<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; -=C2=A0 =C2=A0 =C2=A0file-&gt;private_data =3D data;<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* resize b=
uffer */<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (data-&g=
t;size &lt; buf_size &amp;&amp; data-&gt;buffer) {<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0vfree(data-&gt;buffer);<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0data-&gt;buffer =3D NULL;<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!data-&=
gt;buffer) {<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0data-&gt;size =3D buf_size;<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0data-&gt;buffer =3D vzalloc(data-&gt;size);<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; -out_unlock:<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0if (!data-&gt;buffer) {<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0err =3D -ENOMEM;<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto out;<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0}<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* try seri=
alize */<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0flags =3D p=
rf_lock();<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0} while (prf_serialize(data, &amp;buf_s=
ize));<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0prf_unlock(flags);<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0data-&gt;size =3D buf_size;<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0file-&gt;private_data =3D data;<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt;=C2=A0 out:<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return err;<br>
&gt; &gt; &gt;=C2=A0 <br>
&gt; &gt; &gt;=C2=A0 }<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; @@ -363,6 +387,8 @@ static const struct file_operations prf_=
reset_fops =3D<br>
&gt; &gt; &gt; {<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt;=C2=A0 /* Create debugfs entries. */<br>
&gt; &gt; &gt;=C2=A0 static int __init pgo_init(void)<br>
&gt; &gt; &gt;=C2=A0 {<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0pr_notice(&quot;Clang PGO profile data =
available.&quot;);<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0directory =3D debugfs_create_dir(&=
quot;pgo&quot;, NULL);<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!directory)<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto e=
rr_remove;<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; @@ -375,6 +401,8 @@ static int __init pgo_init(void)<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &amp;prf_reset_fops))<=
br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto e=
rr_remove;<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0prf_modules_init();<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return 0;<br>
&gt; &gt; &gt;=C2=A0 <br>
&gt; &gt; &gt;=C2=A0 err_remove:<br>
&gt; &gt; &gt; @@ -385,6 +413,8 @@ static int __init pgo_init(void)<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt;=C2=A0 /* Remove debugfs entries. */<br>
&gt; &gt; &gt;=C2=A0 static void __exit pgo_exit(void)<br>
&gt; &gt; &gt;=C2=A0 {<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0prf_modules_exit();<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0debugfs_remove_recursive(directory=
);<br>
&gt; &gt; &gt;=C2=A0 <br>
&gt; &gt; &gt;=C2=A0 }<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; diff --git a/kernel/pgo/fs_mod.c b/kernel/pgo/fs_mod.c<br>
&gt; &gt; &gt; new file mode 100644<br>
&gt; &gt; &gt; index 000000000000..0808d44227f1<br>
&gt; &gt; &gt; --- /dev/null<br>
&gt; &gt; &gt; +++ b/kernel/pgo/fs_mod.c<br>
&gt; &gt; &gt; @@ -0,0 +1,415 @@<br>
&gt; &gt; &gt; +// SPDX-License-Identifier: GPL-2.0<br>
&gt; &gt; &gt; +/*<br>
&gt; &gt; &gt; + * Copyright (C) 2021 Jarmo Tiitto<br>
&gt; &gt; &gt; + *<br>
&gt; &gt; &gt; + * Author:<br>
&gt; &gt; &gt; + *=C2=A0 =C2=A0Jarmo Tiitto &lt;<a href=3D"mailto:jarmo.tii=
tto@gmail.com" target=3D"_blank">jarmo.tiitto@gmail.com</a>&gt;<br>
&gt; &gt; &gt; + *<br>
&gt; &gt; &gt; + * Based on the clang PGO kernel patch by:<br>
&gt; &gt; &gt; + *=C2=A0 Sami Tolvanen &lt;<a href=3D"mailto:samitolvanen@g=
oogle.com" target=3D"_blank">samitolvanen@google.com</a>&gt;<br>
&gt; &gt; &gt; + *<br>
&gt; &gt; &gt; + * This software is licensed under the terms of the GNU Gen=
eral Public<br>
&gt; &gt; &gt; + * License version 2, as published by the Free Software Fou=
ndation, and<br>
&gt; &gt; &gt; + * may be copied, distributed, and modified under those ter=
ms.<br>
&gt; &gt; &gt; + *<br>
&gt; &gt; &gt; + * This program is distributed in the hope that it will be =
useful,<br>
&gt; &gt; &gt; + * but WITHOUT ANY WARRANTY; without even the implied warra=
nty of<br>
&gt; &gt; &gt; + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.=C2=
=A0 See the<br>
&gt; &gt; &gt; + * GNU General Public License for more details.<br>
&gt; &gt; &gt; + *<br>
&gt; &gt; &gt; + */<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +#define pr_fmt(fmt)=C2=A0 &quot;pgo: &quot; fmt<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +#include &lt;linux/kernel.h&gt;<br>
&gt; &gt; &gt; +#include &lt;linux/debugfs.h&gt;<br>
&gt; &gt; &gt; +#include &lt;linux/fs.h&gt;<br>
&gt; &gt; &gt; +#include &lt;linux/module.h&gt;<br>
&gt; &gt; &gt; +#include &lt;linux/slab.h&gt;<br>
&gt; &gt; &gt; +#include &lt;linux/vmalloc.h&gt;<br>
&gt; &gt; &gt; +#include &quot;pgo.h&quot;<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +/*<br>
&gt; &gt; &gt; + * PGO profile data reporting for modules:<br>
&gt; &gt; &gt; + * We maintain one debugfs pgo/&lt;module&gt;.profraw file =
per module.<br>
&gt; &gt; &gt; + */<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +DEFINE_MUTEX(prf_mod_lock);<br>
&gt; &gt; &gt; +LIST_HEAD(prf_mod_list);<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +struct prf_mod_data {<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0void *buffer;<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0unsigned long size;<br>
&gt; &gt; &gt; +};<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +/* these are trivial, but each one differs a bit */<br>
&gt; &gt; &gt; +static inline unsigned long prf_mod_data_size(struct module=
 *mod)<br>
&gt; &gt; &gt; +{<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0return mod-&gt;prf_data_size;<br>
&gt; &gt; &gt; +}<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +static inline unsigned long prf_mod_data_count(struct modul=
e *mod)<br>
&gt; &gt; &gt; +{<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0return mod-&gt;prf_data_size / sizeof(s=
truct llvm_prf_data);<br>
&gt; &gt; &gt; +}<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +static inline unsigned long prf_mod_cnts_size(struct module=
 *mod)<br>
&gt; &gt; &gt; +{<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0return mod-&gt;prf_cnts_num * sizeof(mo=
d-&gt;prf_cnts[0]);<br>
&gt; &gt; &gt; +}<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +static inline unsigned long prf_mod_cnts_count(struct modul=
e *mod)<br>
&gt; &gt; &gt; +{<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0return mod-&gt;prf_cnts_num;<br>
&gt; &gt; &gt; +}<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +static inline unsigned long prf_mod_names_size(struct modul=
e *mod)<br>
&gt; &gt; &gt; +{<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0return mod-&gt;prf_names_num * sizeof(m=
od-&gt;prf_names[0]);<br>
&gt; &gt; &gt; +}<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +static inline unsigned long prf_mod_names_count(struct modu=
le *mod)<br>
&gt; &gt; &gt; +{<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0return mod-&gt;prf_names_num;<br>
&gt; &gt; &gt; +}<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +static inline unsigned long prf_mod_vnds_size(struct module=
 *mod)<br>
&gt; &gt; &gt; +{<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0return mod-&gt;prf_vnds_size;<br>
&gt; &gt; &gt; +}<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +static inline unsigned long prf_mod_vnds_count(struct modul=
e *mod)<br>
&gt; &gt; &gt; +{<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0return mod-&gt;prf_vnds_size / sizeof(s=
truct llvm_prf_value_node);<br>
&gt; &gt; &gt; +}<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +/*<br>
&gt; &gt; &gt; + * Raw profile data format:<br>
&gt; &gt; &gt; + *<br>
&gt; &gt; &gt; + *=C2=A0 =C2=A0- llvm_prf_header<br>
&gt; &gt; &gt; + *=C2=A0 =C2=A0- __llvm_prf_data<br>
&gt; &gt; &gt; + *=C2=A0 =C2=A0- __llvm_prf_cnts<br>
&gt; &gt; &gt; + *=C2=A0 =C2=A0- __llvm_prf_names<br>
&gt; &gt; &gt; + *=C2=A0 =C2=A0- zero padding to 8 bytes<br>
&gt; &gt; &gt; + *=C2=A0 =C2=A0- for each llvm_prf_data in __llvm_prf_data:=
<br>
&gt; &gt; &gt; + *=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0- llvm_prf_value=
_data<br>
&gt; &gt; &gt; + *=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0- llvm_prf_value_record + site count array<br>
&gt; &gt; &gt; + *=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0- llvm_prf_value_node_data<br>
&gt; &gt; &gt; + *=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0...<br>
&gt; &gt; &gt; + *=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0...<br>
&gt; &gt; &gt; + *=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0...<br>
&gt; &gt; &gt; + */<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +static void prf_module_fill_header(struct module *mod, void=
 **buffer)<br>
&gt; &gt; &gt; +{<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0struct llvm_prf_header *header =3D *(st=
ruct llvm_prf_header<br>
&gt; &gt; &gt; **)buffer;<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +#ifdef CONFIG_64BIT<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0header-&gt;magic =3D LLVM_INSTR_PROF_RA=
W_MAGIC_64;<br>
&gt; &gt; &gt; +#else<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0header-&gt;magic =3D LLVM_INSTR_PROF_RA=
W_MAGIC_32;<br>
&gt; &gt; &gt; +#endif<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0header-&gt;version =3D LLVM_VARIANT_MAS=
K_IR_PROF |<br>
&gt; &gt; &gt; LLVM_INSTR_PROF_RAW_VERSION; +=C2=A0 =C2=A0 =C2=A0header-&gt=
;data_size =3D<br>
&gt; &gt; &gt; prf_mod_data_count(mod);<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0header-&gt;padding_bytes_before_counter=
s =3D 0;<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0header-&gt;counters_size =3D prf_mod_cn=
ts_count(mod);<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0header-&gt;padding_bytes_after_counters=
 =3D 0;<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0header-&gt;names_size =3D prf_mod_names=
_count(mod);<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0header-&gt;counters_delta =3D (u64)mod-=
&gt;prf_cnts;<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0header-&gt;names_delta =3D (u64)mod-&gt=
;prf_names;<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0header-&gt;value_kind_last =3D LLVM_INS=
TR_PROF_IPVK_LAST;<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0*buffer +=3D sizeof(*header);<br>
&gt; &gt; &gt; +}<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +/*<br>
&gt; &gt; &gt; + * Copy the source into the buffer, incrementing the pointe=
r into<br>
&gt; &gt; &gt; buffer in the + * process.<br>
&gt; &gt; &gt; + */<br>
&gt; &gt; &gt; +static void prf_copy_to_buffer(void **buffer, const void *s=
rc, unsigned<br>
&gt; &gt; &gt; long size) +{<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0memcpy(*buffer, src, size);<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0*buffer +=3D size;<br>
&gt; &gt; &gt; +}<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +/* extern u32 __prf_get_value_size(struct llvm_prf_data *p,=
 u32<br>
&gt; &gt; &gt; *value_kinds) */ +<br>
&gt; &gt; &gt; +static u32 prf_module_get_value_size(struct module *mod)<br=
>
&gt; &gt; &gt; +{<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0u32 size =3D 0;<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0struct llvm_prf_data *p;<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0struct llvm_prf_data *start =3D mod-&gt=
;prf_data;<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0struct llvm_prf_data *end =3D start + p=
rf_mod_data_count(mod);<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0for (p =3D start; p &lt; end; p++)<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0size +=3D _=
_prf_get_value_size(p, NULL);<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0return size;<br>
&gt; &gt; &gt; +}<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +/* Serialize the profiling&#39;s value.<br>
&gt; &gt; &gt; + * extern void prf_serialize_value(struct llvm_prf_data *p,=
 void<br>
&gt; &gt; &gt; **buffer)<br>
&gt; &gt; &gt; + */<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +static void prf_module_serialize_values(struct module *mod,=
 void<br>
&gt; &gt; &gt; **buffer)<br>
&gt; &gt; &gt; +{<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0struct llvm_prf_data *p;<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0struct llvm_prf_data *start =3D mod-&gt=
;prf_data;<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0struct llvm_prf_data *end =3D start + p=
rf_mod_data_count(mod);<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0for (p =3D start; p &lt; end; p++)<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0prf_seriali=
ze_value(p, buffer);<br>
&gt; &gt; &gt; +}<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +static inline unsigned long prf_get_padding(unsigned long s=
ize)<br>
&gt; &gt; &gt; +{<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0return 7 &amp; (sizeof(u64) - size % si=
zeof(u64));<br>
&gt; &gt; &gt; +}<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +static unsigned long prf_module_buffer_size(struct module *=
mod)<br>
&gt; &gt; &gt; +{<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0return sizeof(struct llvm_prf_header) +=
<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0prf_mod_data_size(mod)=C2=A0 +<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0prf_mod_cnts_size(mod) +<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0prf_mod_names_size(mod) +<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0prf_get_padding(prf_mod_names_size(mod)) +<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0prf_module_get_value_size(mod);<br>
&gt; &gt; &gt; +}<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +/*<br>
&gt; &gt; &gt; + * Serialize the profiling data into a format LLVM&#39;s to=
ols can<br>
&gt; &gt; &gt; understand.<br>
&gt; &gt; &gt; + * Note: caller *must* hold pgo_lock and hold reference to =
the module.<br>
&gt; &gt; &gt; + */<br>
&gt; &gt; &gt; +static int prf_module_serialize(struct module *mod, struct =
prf_mod_data<br>
&gt; &gt; &gt; *p, unsigned long *buf_size) +{<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0int err =3D 0;<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0void *buffer;<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0/* re-check buffer size */<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0*buf_size =3D prf_module_buffer_size(mo=
d);<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0if (p-&gt;size &lt; *buf_size || !p-&gt=
;buffer) {<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0err =3D -EN=
OMEM;<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto out;<b=
r>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0}<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0buffer =3D p-&gt;buffer;<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0prf_module_fill_header(mod, &amp;buffer=
);<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0prf_copy_to_buffer(&amp;buffer, mod-&gt=
;prf_data, <br>
&gt; &gt; &gt; prf_mod_data_size(mod));<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0prf_copy_to_buffer(&amp;buffer, mod-&gt=
;prf_cnts, <br>
&gt; &gt; &gt; prf_mod_cnts_size(mod));<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0prf_copy_to_buffer(&amp;buffer, mod-&gt=
;prf_names,<br>
&gt; &gt; &gt; prf_mod_names_size(mod));<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0buffer +=3D prf_get_padding(prf_mod_nam=
es_size(mod));<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0prf_module_serialize_values(mod, &amp;b=
uffer);<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +out:<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0return err;<br>
&gt; &gt; &gt; +}<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +/* open() implementation for module PGO. */<br>
&gt; &gt; &gt; +static int prf_module_open(struct inode *inode, struct file=
 *file)<br>
&gt; &gt; &gt; +{<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0struct prf_mod_private_data *data;<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0struct prf_mod_data *pinfo;<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0struct module *mod;<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0unsigned long flags;<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0unsigned long buf_size =3D 0;<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0int err =3D 0;<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0mutex_lock(&amp;prf_mod_lock);<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0data =3D inode-&gt;i_private; /* see: p=
go_module_notifier() */<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0BUG_ON(!data);<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0/* grab the module */<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0mod =3D READ_ONCE(data-&gt;mod);<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0if (mod &amp;&amp; try_module_get(mod))=
 {<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0// Is it li=
ve?<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (mod-&gt=
;state !=3D MODULE_STATE_LIVE) {<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0err =3D -EAGAIN;<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0goto put_unlock;<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pinfo =3D k=
zalloc(sizeof(*pinfo), GFP_KERNEL);<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!pinfo)=
 {<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0err =3D -ENOMEM;<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0goto put_unlock;<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mutex_unloc=
k(&amp;prf_mod_lock);<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* estimate=
 amount of memory needed:<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * can&#39;=
t vzalloc() while prf_lock() is held<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * and prf_=
module_buffer_size() only works while it is<br>
&gt; &gt; &gt; held..<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 */<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0flags =3D p=
rf_lock();<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0buf_size =
=3D prf_module_buffer_size(mod);<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0do {<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0prf_unlock(flags);<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0/* resize buffer */<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0if (pinfo-&gt;size &lt; buf_size &amp;&amp; pinfo-&gt;buff=
er) {<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0vfree(pinfo-&gt;buffer);<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pinfo-&gt;buffer =3D NULL;<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0}<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0if (!pinfo-&gt;buffer) {<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pinfo-&gt;size =3D buf_size;<b=
r>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pinfo-&gt;buffer =3D vzalloc(p=
info-&gt;size);<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!pinfo-&gt;buffer) {<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0er=
r =3D -ENOMEM;<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0go=
to out;<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0}<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0/* try serialize */<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0flags =3D prf_lock();<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0} while (pr=
f_module_serialize(mod, pinfo, &amp;buf_size));<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0prf_unlock(=
flags);<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* success!=
 */<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pinfo-&gt;s=
ize =3D buf_size;<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file-&gt;pr=
ivate_data =3D pinfo;<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0module_put(=
mod);<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return err;=
<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0}<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +put_unlock:<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0module_put(mod);<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0mutex_unlock(&amp;prf_mod_lock);<br>
&gt; &gt; &gt; +out:<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0return err;<br>
&gt; &gt; &gt; +}<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +/* read() implementation for PGO. */<br>
&gt; &gt; &gt; +static ssize_t prf_module_read(struct file *file, char __us=
er *buf,<br>
&gt; &gt; &gt; size_t count, +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0loff_t *ppos)<br>
&gt; &gt; &gt; +{<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0struct prf_mod_data *pinfo =3D file-&gt=
;private_data;<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0BUG_ON(!pinfo);<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0return simple_read_from_buffer(buf, cou=
nt, ppos, pinfo-&gt;buffer,<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 pinfo-&gt;size);<br>
&gt; &gt; &gt; +}<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +/* release() implementation for PGO. Release resources allo=
cated by<br>
&gt; &gt; &gt; open(). */ +static int prf_module_release(struct inode *inod=
e, struct<br>
&gt; &gt; &gt; file *file) +{<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0struct prf_mod_data *pinfo =3D file-&gt=
;private_data;<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0if (pinfo) {<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0vfree(pinfo=
-&gt;buffer);<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0kfree(pinfo=
);<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file-&gt;pr=
ivate_data =3D 0;<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0}<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0return 0;<br>
&gt; &gt; &gt; +}<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +static const struct file_operations prf_mod_fops =3D {<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0.owner=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =3D THIS_MODULE,<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0.open=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0=3D prf_module_open,<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0.read=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0=3D prf_module_read,<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0.llseek=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0=3D default_llseek,<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0.release=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D=
 prf_module_release<br>
&gt; &gt; &gt; +};<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +static void prf_module_free(struct rcu_head *rcu)<br>
&gt; &gt; &gt; +{<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0struct prf_mod_private_data *data;<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0data =3D container_of(rcu, struct prf_m=
od_private_data, rcu);<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0debugfs_remove(data-&gt;file);<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0kfree(data);<br>
&gt; &gt; &gt; +}<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +static int pgo_module_notifier(struct notifier_block *nb, u=
nsigned long<br>
&gt; &gt; &gt; event, +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0void *pdata)<br>
&gt; &gt; &gt; +{<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0struct module *mod =3D pdata;<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0struct prf_mod_private_data *data;<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0char fsname[MODULE_NAME_LEN + 9]; // +s=
trlen(&quot;.profraw&quot;)<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0if (event =3D=3D MODULE_STATE_LIVE) {<b=
r>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* does the=
 module have profiling info? */<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (mod-&gt=
;prf_data<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0&amp;&amp; mod-&gt;prf_cnts<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0&amp;&amp; mod-&gt;prf_names<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0&amp;&amp; mod-&gt;prf_vnds) {<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0/* add module prf_mod_private_data entry */<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0data =3D kzalloc(sizeof(*data), GFP_KERNEL);<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0fsname[0] =3D 0;<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0snprintf(fsname, sizeof(fsname), &quot;%s.profraw&quot;,<b=
r>
&gt; &gt; &gt; mod-&gt;name); +<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0mutex_lock(&amp;prf_mod_lock);<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0data-&gt;file =3D debugfs_create_file(fsname, 0600,<br>
&gt; &gt; &gt; directory, data, &amp;prf_mod_fops); +=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!data-&gt;file)<=
br>
&gt; &gt; &gt; {<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pr_err(&quot;Failed setup modu=
le pgo: %s&quot;,<br>
&gt; &gt; &gt; fsname); +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0kfree(data);<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mutex_unlock(&amp;prf_mod_lock=
);<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return NOTIFY_OK;<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0}<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0WRITE_ONCE(data-&gt;mod, mod);<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0list_add_tail_rcu(&amp;data-&gt;link, &amp;prf_mod_list);<=
br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0mutex_unlock(&amp;prf_mod_lock);<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0}<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0if (event =3D=3D MODULE_STATE_GOING) {<=
br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* remove m=
odule from the list */<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rcu_read_lo=
ck();<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0list_for_ea=
ch_entry_rcu(data, &amp;prf_mod_list, link) {<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0if (strcmp(data-&gt;mod-&gt;name, mod-&gt;name) =3D=3D 0) =
{<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mutex_lock(&amp;prf_mod_lock);=
<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* remofe from profiled module=
s */<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0list_del_rcu(&amp;data-&gt;lin=
k);<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* mark it stale */<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0WRITE_ONCE(data-&gt;mod, NULL)=
;<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mutex_unlock(&amp;prf_mod_lock=
);<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0call_rcu(&amp;data-&gt;rcu, pr=
f_module_free);<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0}<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rcu_read_un=
lock();<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0}<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0return NOTIFY_OK;<br>
&gt; &gt; &gt; +}<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +static struct notifier_block pgo_module_nb =3D {<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0.notifier_call =3D pgo_module_notifier<=
br>
&gt; &gt; &gt; +};<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +void prf_modules_init(void)<br>
&gt; &gt; &gt; +{<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0register_module_notifier(&amp;pgo_modul=
e_nb);<br>
&gt; &gt; &gt; +}<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +void prf_modules_exit(void)<br>
&gt; &gt; &gt; +{<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0struct prf_mod_private_data *p;<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0/* unsubscribe the notifier and do clea=
nup. */<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0unregister_module_notifier(&amp;pgo_mod=
ule_nb);<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0rcu_read_lock();<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0list_for_each_entry_rcu(p, &amp;prf_mod=
_list, link) {<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* delete n=
odes */<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0list_del(&a=
mp;p-&gt;link);<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0WRITE_ONCE(=
p-&gt;mod, NULL);<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0call_rcu(&a=
mp;p-&gt;rcu, prf_module_free);<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0}<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0rcu_read_unlock();<br>
&gt; &gt; &gt; +}<br>
&gt; &gt; &gt; \ No newline at end of file<br>
&gt; &gt; &gt; diff --git a/kernel/pgo/instrument.c b/kernel/pgo/instrument=
.c<br>
&gt; &gt; &gt; index 464b3bc77431..98cfa11a7b76 100644<br>
&gt; &gt; &gt; --- a/kernel/pgo/instrument.c<br>
&gt; &gt; &gt; +++ b/kernel/pgo/instrument.c<br>
&gt; &gt; &gt; @@ -139,11 +139,11 @@ EXPORT_SYMBOL(__llvm_profile_instrumen=
t_target);<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt;=C2=A0 /* Counts the number of times a range of targets value=
s are seen. */<br>
&gt; &gt; &gt;=C2=A0 void __llvm_profile_instrument_range(u64 target_value,=
 void *data,<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 u32 index, s64 =
precise_start,<br>
&gt; &gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 s64 precise_las=
t, s64 large_value);<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 u=
32 index, s64 precise_start,<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 s=
64 precise_last, s64<br>
&gt; &gt; &gt; large_value);<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt;=C2=A0 void __llvm_profile_instrument_range(u64 target_value,=
 void *data,<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 u32 index, s64 =
precise_start,<br>
&gt; &gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 s64 precise_las=
t, s64 large_value)<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 u=
32 index, s64 precise_start,<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 s=
64 precise_last, s64<br>
&gt; &gt; &gt; large_value)<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt;=C2=A0 {<br>
&gt; &gt; &gt;=C2=A0 <br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (large_value !=3D S64_MIN &amp;=
&amp; (s64)target_value &gt;=3D large_value)<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0target=
_value =3D large_value;<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; @@ -176,9 +176,9 @@ static u64 inst_prof_get_range_rep_value=
(u64 value)<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt;=C2=A0 =C2=A0* defined in compiler-rt/include/profile/InstrPr=
ofData.inc.<br>
&gt; &gt; &gt;=C2=A0 =C2=A0*/<br>
&gt; &gt; &gt;=C2=A0 <br>
&gt; &gt; &gt;=C2=A0 void __llvm_profile_instrument_memop(u64 target_value,=
 void *data,<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 u32 counter_ind=
ex);<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 u=
32 counter_index);<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt;=C2=A0 void __llvm_profile_instrument_memop(u64 target_value,=
 void *data,<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 u32 counter_ind=
ex)<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 u=
32 counter_index)<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt;=C2=A0 {<br>
&gt; &gt; &gt;=C2=A0 <br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u64 rep_value;<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; diff --git a/kernel/pgo/pgo.h b/kernel/pgo/pgo.h<br>
&gt; &gt; &gt; index a9ff51abbfd5..2840da63c7cd 100644<br>
&gt; &gt; &gt; --- a/kernel/pgo/pgo.h<br>
&gt; &gt; &gt; +++ b/kernel/pgo/pgo.h<br>
&gt; &gt; &gt; @@ -212,17 +212,13 @@ struct prf_mod_private_data {<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct list_head link;<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct rcu_head rcu;<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; -=C2=A0 =C2=A0 =C2=A0void *buffer;<br>
&gt; &gt; &gt; -=C2=A0 =C2=A0 =C2=A0unsigned long size;<br>
&gt; &gt; &gt; -<br>
&gt; &gt; &gt; -=C2=A0 =C2=A0 =C2=A0char mod_name[MODULE_NAME_LEN];<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct module *mod;<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct dentry *file;<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0int current_node;<br>
&gt; &gt; &gt;=C2=A0 <br>
&gt; &gt; &gt;=C2=A0 };<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; -/* Mutex protecting the prf_mod_list and entries */<br>
&gt; &gt; &gt; +/* Mutex protecting the prf_mod_list */<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt;=C2=A0 extern struct mutex prf_mod_lock;<br>
&gt; &gt; &gt;=C2=A0 <br>
&gt; &gt; &gt;=C2=A0 /* List of modules profiled */<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; @@ -231,10 +227,7 @@ extern struct list_head prf_mod_list;<b=
r>
&gt; &gt; &gt; <br>
&gt; &gt; &gt;=C2=A0 extern void prf_modules_init(void);<br>
&gt; &gt; &gt;=C2=A0 extern void prf_modules_exit(void);<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; -/* Update each modules snapshot of the profiling data. */<b=
r>
&gt; &gt; &gt; -extern int prf_modules_snapshot(void);<br>
&gt; &gt; &gt; -<br>
&gt; &gt; &gt; -/* below funcs are required by prf_modules_snapshot() */<br=
>
&gt; &gt; &gt; +/* below funcs are required by prf_modules */<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt;=C2=A0 extern u32 __prf_get_value_size(struct llvm_prf_data *=
p, u32<br>
&gt; &gt; &gt;=C2=A0 *value_kinds);<br>
&gt; &gt; &gt;=C2=A0 <br>
&gt; &gt; &gt;=C2=A0 extern void prf_serialize_value(struct llvm_prf_data *=
p, void<br>
&gt; &gt; &gt;=C2=A0 **buffer);<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; --<br>
&gt; &gt; &gt; 2.31.1<br>
<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr">Thanks,<div>~Nick Desaulniers</=
div></div></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAKwvOdmk34yQQow_kMLeF32OpfcP4O0SrPx3gMO3KQvgE=
8uZ9Q%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://grou=
ps.google.com/d/msgid/clang-built-linux/CAKwvOdmk34yQQow_kMLeF32OpfcP4O0SrP=
x3gMO3KQvgE8uZ9Q%40mail.gmail.com</a>.<br />

--00000000000010bb5205c3b7a7dd--
