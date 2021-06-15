Return-Path: <clang-built-linux+bncBD3ZHYEG5YFBBKHTUSDAMGQEKJ6LXEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id E81263A8CA9
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Jun 2021 01:37:13 +0200 (CEST)
Received: by mail-oi1-x239.google.com with SMTP id b185-20020acab2c20000b02901f6dd5f89fbsf189252oif.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Jun 2021 16:37:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623800232; cv=pass;
        d=google.com; s=arc-20160816;
        b=Cxnhq7S32nEh6Cu9XlDn0VO1/lP33gWAR+FviyVBrcx7+XsXL0ZNv7Ms8OcVNO5/S6
         vGJKPS30KqlviQdXAU0EKGtR1vW1b8UPfod01qmPw2avs06c36Y2ML2X7B7zPdXpRpxE
         S9H8Jhnrx4ujd/x3K2Vh4OTEjN/DzZV74JPU4oANTHnFAFkSwqygaVKyzeWqdygaNmbn
         konyBnFB9JV6HVu4EGbE6DNOBIXQjB0gQrauFq8wFneKHd0esXZ4qUXxuqY2YokCbRhg
         tsaCbw7Nfj9ENaO9uSXe8N595vPhq6FrJWgaDysxlVqxqHzDkH9GKRB4VQbfV93ylpaQ
         exgw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :message-id:in-reply-to:subject:cc:to:from:date:dkim-signature;
        bh=S2JXsezTXZWn3ZzJwwcXYvUA2ZDysIug2avOg/0jG14=;
        b=CQ3b1W7MQkOSnxLQiCxuTpCruwsjCY9bJmlC1CbZ21/xKLuJ9IDZh4dDebNNcR4C27
         M0VwzgWbYkVfk2lVZcarBN8qPkpCsD/vCZqJIp5sZ4ITzENeaPMbnwkHBH7g4Wgrl0Dn
         toAZnX0+hBACKx4XwdAJI00N6gP4ogjwTuPjwZ71qsm0Vh2gfHSEgJqg2UciWoT1Tysk
         9brHHuZam2hQaww+dELY6nUmlHlwWh7o+QU8TYqePE18LBYNoNotqq15XYSQJMWWBdoy
         k9wInjU1Pm9u+9IsrfcfI5mzb31bQmu6VVmiV7EpUG4KuqmuG7uJgLUupjNOOlWhZSmF
         MKHw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=txc3zMVl;
       spf=pass (google.com: domain of hughd@google.com designates 2607:f8b0:4864:20::72f as permitted sender) smtp.mailfrom=hughd@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=S2JXsezTXZWn3ZzJwwcXYvUA2ZDysIug2avOg/0jG14=;
        b=AB3aVDkZj9SKNspS4h6ivryxADUpkeBE6HsXziNGb5whAlO5vEYs9JLGLvbAGPsZtX
         nqqJ0KVxvDuOsf0bHUcgCDQYrKtjzjg+hBptspO7dyRLAreMgW9izQxfz1lkZ5bIx9Zu
         KUQNv+rwoFt3BDbB8yCcvjB3OoirHj/zgsrnyGn1rOj+0Tt93+sit2UQvLAFUfgH8b/a
         qO+7rg6tykIqIElGDAT7vUWUBs4+3QgH0o5DyVw20Uc/nReJX4PH0fukDKWYtfvfsjPF
         tPWFzsdRY2KflkWF4NIkkIey/cViHhz7DKLFSFKSMWN+hqbqt/LBx5FGC1DxFRSJVfqY
         uCBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S2JXsezTXZWn3ZzJwwcXYvUA2ZDysIug2avOg/0jG14=;
        b=MkwqWTsYckO1H2lZUsr096oXGPQ6OFqhXpIKnXp8rphK4Yc+r+zh7nPfU5edBQ37pS
         yVC0Ar1S0HfwFs31u9ZnehdTbjPpYTip290hBzJo45GdzvwgmaSFrR74Ne8l7aN9FgHz
         zLp/JDznPkmNV/+Br+O+wQ44qQ388ejZDd3FtzJi6sxbrdfal9X5vJkag1dPn5V3QTFN
         AU1by08EHN1rzMSizw7nNPzBvn41foOnHMhH7WrKxDZ2OHyuuGBTPAYcFgeryLAGiDGy
         64DpTcJZFecQDcwQuXJTCE4tjxUF1EZ1tOaeF1tj5J2H2OJKzSs3VYD1lHJNEk/2GGgw
         VfZQ==
X-Gm-Message-State: AOAM530Ug4Tok0+9MtdG8Gfffc3GkgTXe5sAUQh59oUNz9TBMAxXsQOF
	4wFeVUT+KPr31cqVTKUSeFo=
X-Google-Smtp-Source: ABdhPJybCzOOa99GpXZk5ekaWzkvFGbsOQ9Fu8biUk+g1qBTImHrtotRFurdG1lmml5SPhggSzBw5A==
X-Received: by 2002:aca:1e07:: with SMTP id m7mr1062883oic.28.1623800232795;
        Tue, 15 Jun 2021 16:37:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:641:: with SMTP id 62ls174011oig.0.gmail; Tue, 15 Jun
 2021 16:37:12 -0700 (PDT)
X-Received: by 2002:a05:6808:9:: with SMTP id u9mr5212394oic.61.1623800232442;
        Tue, 15 Jun 2021 16:37:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623800232; cv=none;
        d=google.com; s=arc-20160816;
        b=vZLf0CsPeP9pilCMVdCJ4IgArUkEka6ZTm56e9Y85nlNo1qyeClEuUrwo8BmkG9obJ
         aGV1ECmM5MJ4vfT+LoEsag93rsPJWk6miQaAcEr63u01TUZHVSdA3k3y1j8b0ZhLf91b
         1HAMWW22+URtVGwBShMxVwqQMdgzjB/p1dgWXqJuL/OICN9k01+6tRZQifLWyKoD35nb
         OdQRUZSqfWcYH8BNPgGYCFa+WJ1aT4+36kr8des+A4VOFtIVUUSYpA+whMRWRsZAQtIk
         0oBcKV6/0bkJyZ1T4i6yV1/EdqPSzRugYUUW+jrAblGS8N4EGDfdLgCjOBHDR1NCET+6
         bkxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:dkim-signature;
        bh=vr8Uam+PF/IjbdmKg/zkS8mw9SD6TDztuyw8DqboKBo=;
        b=C+tj0+ThOpRSO37ToU9eptEgaI0juph1Gv1DI/Qp4fr6XPqoHnm9mffFcT6KI2kjls
         HydXeiGzdmXfFaw/4pnufnyc1FYNnZOh8R5M1zW0Yqz7kn85XhoqgVGOVoCuKXCF5xyB
         VhF3m4weWtH/if/qLHvcb6LSebML5VnBb747eLy/LG+0aPJ/IrSoUzPnbFdKwuQx0ZPk
         Zb2nZj0LMkcTk6UeRF3K+K/vmxCFEzEMl7d3N990Mcrtpj1V+F9bF0Qd614YfZNcjxt0
         KEIx1mpOFOWXpxTFJNbRnFkKXyVPewDwkri5mTqP5TFQtEdsOaAAmLIhI6T7aORjHt/p
         874g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=txc3zMVl;
       spf=pass (google.com: domain of hughd@google.com designates 2607:f8b0:4864:20::72f as permitted sender) smtp.mailfrom=hughd@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x72f.google.com (mail-qk1-x72f.google.com. [2607:f8b0:4864:20::72f])
        by gmr-mx.google.com with ESMTPS id a17si33594oii.5.2021.06.15.16.37.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Jun 2021 16:37:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of hughd@google.com designates 2607:f8b0:4864:20::72f as permitted sender) client-ip=2607:f8b0:4864:20::72f;
Received: by mail-qk1-x72f.google.com with SMTP id f70so702432qke.13
        for <clang-built-linux@googlegroups.com>; Tue, 15 Jun 2021 16:37:12 -0700 (PDT)
X-Received: by 2002:a37:a710:: with SMTP id q16mr2263880qke.15.1623800231793;
        Tue, 15 Jun 2021 16:37:11 -0700 (PDT)
Received: from ripple.attlocal.net (172-10-233-147.lightspeed.sntcca.sbcglobal.net. [172.10.233.147])
        by smtp.gmail.com with ESMTPSA id z4sm176187qtj.68.2021.06.15.16.37.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Jun 2021 16:37:11 -0700 (PDT)
Date: Tue, 15 Jun 2021 16:37:09 -0700 (PDT)
From: "'Hugh Dickins' via Clang Built Linux" <clang-built-linux@googlegroups.com>
X-X-Sender: hugh@ripple.anvils
To: Matthew Wilcox <willy@infradead.org>
cc: Nick Desaulniers <ndesaulniers@google.com>, 
    Nathan Chancellor <nathan@kernel.org>, kernel test robot <lkp@intel.com>, 
    Hugh Dickins <hughd@google.com>, kbuild-all@lists.01.org, 
    clang-built-linux <clang-built-linux@googlegroups.com>, 
    Linux Memory Management List <linux-mm@kvack.org>, 
    Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [linux-next:master 9529/10007] mm/hugetlb.c:1591:9: warning: no
 previous prototype for function 'hugetlb_basepage_index'
In-Reply-To: <YMj5I2vEGaw6X3Ob@casper.infradead.org>
Message-ID: <dd3fa26c-4da7-8611-fe6-92b2a7c83392@google.com>
References: <202106152328.Mh5S48hE-lkp@intel.com> <YMjPXKrHfqZKDisp@casper.infradead.org> <YMjyKtBiQJHN8JXL@archlinux-ax161> <CAKwvOdnh-CSPE9VTkqL3=-yVcePS8FdqTtBVAcV0_fa8sWrmDA@mail.gmail.com> <YMj5I2vEGaw6X3Ob@casper.infradead.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="0-2016070743-1623800231=:14856"
X-Original-Sender: hughd@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=txc3zMVl;       spf=pass
 (google.com: domain of hughd@google.com designates 2607:f8b0:4864:20::72f as
 permitted sender) smtp.mailfrom=hughd@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Hugh Dickins <hughd@google.com>
Reply-To: Hugh Dickins <hughd@google.com>
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

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--0-2016070743-1623800231=:14856
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 15 Jun 2021, Matthew Wilcox wrote:
> On Tue, Jun 15, 2021 at 11:50:40AM -0700, Nick Desaulniers wrote:
> > On Tue, Jun 15, 2021 at 11:32 AM Nathan Chancellor <nathan@kernel.org> =
wrote:
> > > On Tue, Jun 15, 2021 at 05:03:40PM +0100, Matthew Wilcox wrote:
> > > > On Tue, Jun 15, 2021 at 11:58:36PM +0800, kernel test robot wrote:
> > > > >         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.=
cross ARCH=3Darm64
> > > > >
> > > > > If you fix the issue, kindly add following tag as appropriate
> > > > > Reported-by: kernel test robot <lkp@intel.com>
> > > > >
> > > > > All warnings (new ones prefixed by >>):
> > > > >
> > > > > >> mm/hugetlb.c:1591:9: warning: no previous prototype for functi=
on 'hugetlb_basepage_index' [-Wmissing-prototypes]
> > > > >    pgoff_t hugetlb_basepage_index(struct page *page)
> > > >
> > > > So clang requires the prototype to still be in scope, while gcc doe=
sn't.
> > > > Does one of our clangers want to file a bug about that?
> > >
> > > I see the exact same warning with GCC 11.1.0:
> > >
> > > $ curl -LSs https://lore.kernel.org/linux-mm/202106152328.Mh5S48hE-lk=
p@intel.com/2-a.bin | gzip -d > .config
> > >
> > > $ make -skj"$(nproc)" ARCH=3Darm64 CROSS_COMPILE=3Daarch64-linux- W=
=3D1 olddefconfig mm/hugetlb.c
> > > mm/hugetlb.c:1591:9: warning: no previous prototype for 'hugetlb_base=
page_index' [-Wmissing-prototypes]
> > >  1591 | pgoff_t hugetlb_basepage_index(struct page *page)
> > >       |         ^~~~~~~~~~~~~~~~~~~~~~
> >=20
> > Since this is a commonly recurring warning for W=3D1 builds, then this
> > function either should be declared as having static linkage if its
> > uses are local to the same file, or a prototype should be declared in
> > a header so that callers and callee agree on function signature.
>=20
> Oh, you haven't understood the problem.
>=20
> static inline int bar(void)
> {
>         int foo(void);
>=20
>         return foo();
> }
>=20
> int foo(void) { return 1; }
>=20
> The prototype isn't _missing_.  It's just no longer in scope.
>=20
> Since gcc and clang behave the same way here, we should adjust the source
> to make foo visible outside bar.  But this is a case where both compilers
> are wrong.

I guess I'd better start W=3D1-ing - not my habit before, sorry.

I can't tell what's right or wrong for the compiler, but it sure is
odd that if I add a bogus ", int flags" to hugetlb_basepage_index()
in mm/hugetlb.c, then building with gcc (10) and W=3D1 says

  CC      mm/hugetlb.o
mm/hugetlb.c:1591:9: warning: no previous prototype for =E2=80=98hugetlb_ba=
sepage_index=E2=80=99 [-Wmissing-prototypes]
 1591 | pgoff_t hugetlb_basepage_index(struct page *page, int flags)
      |         ^~~~~~~~~~~~~~~~~~~~~~
mm/hugetlb.c:1591:9: error: conflicting types for =E2=80=98hugetlb_basepage=
_index=E2=80=99
In file included from mm/hugetlb.c:14:
./include/linux/pagemap.h:543:18: note: previous declaration of =E2=80=98hu=
getlb_basepage_index=E2=80=99 was here
  543 |   extern pgoff_t hugetlb_basepage_index(struct page *page);
      |                  ^~~~~~~~~~~~~~~~~~~~~~

So, it manages to conflict with no previous prototype!
(I didn't try clang with W=3D1, presumably similar.)

Both gcc and clang with W=3D0 do issue the conflicting types error,
as I hoped and assumed that they would when I put in the prototype.

Oh well, thanks for moving it Matthew: whatever the rights and wrongs,
neither of us want to be generating unnecessary noise.

Hugh

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/dd3fa26c-4da7-8611-fe6-92b2a7c83392%40google.com.

--0-2016070743-1623800231=:14856--
