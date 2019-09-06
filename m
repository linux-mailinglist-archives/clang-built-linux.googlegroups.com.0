Return-Path: <clang-built-linux+bncBDYJPJO25UGBBEG6ZPVQKGQEDUMQ54I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id B5305AC359
	for <lists+clang-built-linux@lfdr.de>; Sat,  7 Sep 2019 01:43:13 +0200 (CEST)
Received: by mail-qk1-x73f.google.com with SMTP id t26sf8534033qkt.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Sep 2019 16:43:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567813392; cv=pass;
        d=google.com; s=arc-20160816;
        b=fVFRwf5/423VnfGdfWoYueLFas9EDfuwj1mZuzeANk86YHJXEpYWIT+hpfcfwunKN5
         N3BT5Cg1RFabBlyaqlprQBTc3YHlU6qmc01T8/Lti4yzvinWGp9qNWguJtZBxoMMcK3N
         7+1FCc/m8B74hhkhI1qwXZRZUydZ9D8+Q1zsEXsKkEInNVUc7lgVIJDOe9333siGT1IS
         qzT6sMlMSvBMkS6SIgX0mGZ1ffzJvs0VvFk46z+77PZXNYSYLnW1/pz3Dm9A8LHKT/C4
         S+jMdLCHhEEgcQm2Jrtl4Ny2JPNVcFrFVlfoQX6zzBFCSb0Jo+tloPiK+2AkAILG6s9b
         LKxQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=le6HlFLerqNqZy+pGDVcEFBDPqNrQEsRxb+hhGDmX6k=;
        b=0AKc9C76YIufsAGQhNWS/Qvw9XrALbdxa9Erx2mxL6VdN76wW99HVWW1FdTfNRoKlB
         qqCnsc94aa+wrjzOr3AgiOFSFC1IQXEMfuJe6eMrELdQYpA5Vh1/vN8VbQCwF+4962/i
         EIzKNgETfLhloV4bJNHtbS2yM7RYGJw5zZDmyHb8Drfn++RZ10WoC5dj5aNluCoH5Jgx
         VXAWr/XBvkxXrwc9rBTElkVctgGcJJRx15vq+AFFrdpa87xTvxDLIjpChrJscgoUEUXi
         F/NwWiA/j1+l+0w8qm8krOaqSQw0+0FEk9M4nOJxUZpEUuWlewAuE16KpjiEmJKfUf8c
         31LQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QluWeNZe;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=le6HlFLerqNqZy+pGDVcEFBDPqNrQEsRxb+hhGDmX6k=;
        b=lBrHCJDY4JE/JnZwQUgW4fnxjUJ+6JtxYNxhW3VSAXuBmw1CDCeh1AojMOe51a7C8U
         RPaVSGGjn43WULob7rgU3/CqleD2hvyKFB0+MqeDJYM3J6XprBg2h/3fH3O2pLWIgVMu
         l/3OWmlgBAjHUqOqKGLtdPK3pWkO2MVnFaZPsKQbw5ym6ykG1iR5tbeK3ASaFlWo7uqI
         evTQixJXXjuoN8ZvywFud/3xkNH1kug8JKosD9YzmZCYjISnaVqRT+3APO0zv9lQauhh
         y5UGMbE26Hc8LHx+rxgXzMhj2UYL42ln8KzNkM0WPeV3w0AmxKAcQOBA5a5R068Is/X8
         kArQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=le6HlFLerqNqZy+pGDVcEFBDPqNrQEsRxb+hhGDmX6k=;
        b=f91CuI47kprZn4FVIJWqHYEeXjUR2p6NTBtw5OtsXvSxSoQ6dOm9h1YfYrYDG1NI38
         B1QnHBSWOgDDYSSjDnO6TQFNR3kYItabguPnB2mG00/44rkqQYNkSNKrrZJOrBJrgjYv
         1uaD0KBKSrYV+F62t4cUhc1eKkPn4AsQ6amh6x0gqurUuWTbdwtH2JtZjc70zjtuwgQF
         YpFyq9TJ4X3B/qompmJpYo9zro30Xj8JsNBcAbaom1O5wWlIAU+moRnhuyo/xBeppZWB
         f1DoffC2DipNrSPc4IjGZ243HYubXyh+pjOoZU8KZF3SndVPjWuct7Qz8chnp3N8R1/m
         qMgg==
X-Gm-Message-State: APjAAAWSkQWkXFbBqPusnou8Yk6bjFUwlQ3kvYz3OhMcsgYTbsuRxgqS
	6p+hReQZMJUMGQY2fp4Ivgc=
X-Google-Smtp-Source: APXvYqyyCMbbEtcWqIr2MjsTZeJfbLEycMG600AOlGXNgJpJzbZfNryPHuZv6ASwKu1i8810EwhW9w==
X-Received: by 2002:ac8:4658:: with SMTP id f24mr11286034qto.93.1567813392605;
        Fri, 06 Sep 2019 16:43:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:1a73:: with SMTP id q48ls352911qtk.14.gmail; Fri, 06 Sep
 2019 16:43:12 -0700 (PDT)
X-Received: by 2002:ac8:2216:: with SMTP id o22mr11802739qto.125.1567813392361;
        Fri, 06 Sep 2019 16:43:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567813392; cv=none;
        d=google.com; s=arc-20160816;
        b=xu7c1I6nA7/KGgd+XSKKub9MbXJ4N6Nrsb7CprYCwIhgt2za6jJJGRySLHg8z91Fkf
         DYcjbgwfW8X45oww9zkGA0dW9b5XBsmfzqT68RHh3BVVwlia5701ZhHOOKls+eE38VCt
         htZdd4nJ29RRKKsE7GAuGf61Oj4P2DwITtMG63hv1qJz7lHpQG28ERp8APgZBNtbyQSI
         +L6yE9wGt59FlcvV2LL2nnROzJDrHdUceqTtGmI/Q+/Sj97/N8gqWLOt8yTd7aOJhZvw
         B23Hwvh3rmfcmq0uO0vKqbJ+sOexyKi6RP5BZdWpUNFYX0/m8DUT2Xi8/ULfZLsGrOdP
         ZVnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Zo5YswUAz6JsJFVtIEd53vHJMhrVmB8v1kbjcYdOKCQ=;
        b=pHJGrts2MvxRWRAqxni6OrXx3qcBZoMXEAtySQNQYJFqoh7RLarZGNTAQNXBs/j/vL
         x+zLyKcKCI1QtT031L+b/lRR7Ohn56ix1vbOUkxy1ebdVlwDhaeItY+PB3wU/XQy7qt5
         ZbO9g5OEM93zmTGXnH9P3Vixh8n3T4gyhVQ6mFTVUSMYPG7ZeE/pQQvnuCBZaGe7RB+S
         kOYuf5kF7GsuO4XqB1UYoT8eWA3QeDdnGtKDL5CH6GCIESbSSLTR0CpwHG5Skvqdth3B
         IZrD/VeorslxLSOU+ioGKM2O0RceQAeX4FETIi95DZvJRMIyk1W2Rl193LaFeVuJbdzh
         mDxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QluWeNZe;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id t53si453181qte.2.2019.09.06.16.43.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Sep 2019 16:43:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id w11so3922606plp.5
        for <clang-built-linux@googlegroups.com>; Fri, 06 Sep 2019 16:43:12 -0700 (PDT)
X-Received: by 2002:a17:902:7296:: with SMTP id d22mr11780120pll.179.1567813390944;
 Fri, 06 Sep 2019 16:43:10 -0700 (PDT)
MIME-Version: 1.0
References: <a5085133-33da-6c13-6953-d18cbc6ad3f5@rasmusvillemoes.dk>
 <20190905134535.GP9749@gate.crashing.org> <CANiq72nXXBgwKcs36R+uau2o1YypfSFKAYWV2xmcRZgz8LRQww@mail.gmail.com>
 <20190906122349.GZ9749@gate.crashing.org> <CANiq72=3Vz-_6ctEzDQgTA44jmfSn_XZTS8wP1GHgm31Xm8ECw@mail.gmail.com>
 <20190906163028.GC9749@gate.crashing.org> <20190906163918.GJ2120@tucnak>
 <CAKwvOd=MT_=U250tR+t0jTtj7SxKJjnEZ1FmR3ir_PHjcXFLVw@mail.gmail.com>
 <20190906220347.GD9749@gate.crashing.org> <CAKwvOdnWBV35SCRHwMwXf+nrFc+D1E7BfRddb20zoyVJSdecCA@mail.gmail.com>
 <20190906225606.GF9749@gate.crashing.org>
In-Reply-To: <20190906225606.GF9749@gate.crashing.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 6 Sep 2019 16:42:58 -0700
Message-ID: <CAKwvOdk-AQVJnD6-=Z0eUQ6KPvDp2eS2zUV=-oL2K2JBCYaOeQ@mail.gmail.com>
Subject: Re: [PATCH v2 4/6] compiler-gcc.h: add asm_inline definition
To: Segher Boessenkool <segher@kernel.crashing.org>
Cc: Jakub Jelinek <jakub@redhat.com>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	"gcc-patches@gcc.gnu.org" <gcc-patches@gcc.gnu.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=QluWeNZe;       spf=pass
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

On Fri, Sep 6, 2019 at 3:56 PM Segher Boessenkool
<segher@kernel.crashing.org> wrote:
>
> On Fri, Sep 06, 2019 at 03:35:02PM -0700, Nick Desaulniers wrote:
> > On Fri, Sep 6, 2019 at 3:03 PM Segher Boessenkool
> > <segher@kernel.crashing.org> wrote:
> > > And if instead you tested whether the actual feature you need works a=
s
> > > you need it to, it would even work fine if there was a bug we fixed t=
hat
> > > breaks things for the kernel.  Without needing a new compiler.
> >
> > That assumes a feature is broken out of the gate and is putting the
> > cart before the horse.  If a feature is available, it should work.
>
> GCC currently has 91696 bug reports.

Fair.

>
> > > Or as another example, if we added support for some other flags. (x86
> > > has only a few flags; many other archs have many more, and in some ca=
ses
> > > newer hardware actually has more flags than older).
> >
> > I think compiler flags are orthogonal to GNU C extensions we're discuss=
ing here.
>
> No, I am talking exactly about what you brought up.  The flags output
> for inline assembler, using the =3D@ syntax.  If I had implemented that
> for Power when it first came up, I would by now have had to add support
> for another flag (the CA32 flag).  Oh, and I would not have implemented
> support for OV or SO at all originally, but perhaps they are useful, so
> let's add that as well.  And there is OV32 now as well.

Oh, I misunderstood.  I see your point.  Define the symbol as a number
for what level of output flags you support (ie. the __cplusplus
macro).

>
> > > With the "macro" scheme we would need to add new macros in all these
> > > cases.  And since those are target-specific macros, that quickly expa=
nds
> > > beyond reasonable bounds.
> >
> > I don't think so.  Can you show me an example codebase that proves me w=
rong?
>
> No, of course not, because we aren't silly enough to implement something
> like that.

I still don't think feature detection is worse than version detection
(until you find your feature broken in a way that forces the use of
version detection).

Just to prove my point about version checks being brittle, it looks
like Rasmus' version check isn't even right.  GCC supported `asm
inline` back in the 8.3 release, not 9.1 as in this patch:
https://godbolt.org/z/1woitS .  So users of gcc-8.2 and gcc-8.3
wouldn't be able to take advantage of `asm inline` even though their
compiler supported it.

Or was it "broken" until 9.1?  Lord knows, as `asm inline` wasn't in
any release notes or bug reports I can find:
8: https://gcc.gnu.org/gcc-8/changes.html
9: https://gcc.gnu.org/gcc-9/changes.html
Bug tracker query:
https://gcc.gnu.org/bugzilla/buglist.cgi?bug_status=3DUNCONFIRMED&bug_statu=
s=3DNEW&bug_status=3DASSIGNED&bug_status=3DSUSPENDED&bug_status=3DWAITING&b=
ug_status=3DREOPENED&cf_known_to_fail_type=3Dallwords&cf_known_to_work_type=
=3Dallwords&query_format=3Dadvanced&short_desc=3Dasm%20inline&short_desc_ty=
pe=3Danywordssubstr

Ah, here it is:
https://github.com/gcc-mirror/gcc/commit/6de46ad5326fc5e6b730a2feb8c62d09c1=
561f92
Which looks like the qualifier was added to this page:
https://gcc.gnu.org/onlinedocs/gcc/Extended-Asm.html

I like many of the GNU C extensions, and I want to help support them
in Clang so that they can be used in more places, but the current
process (and questions I have when I implement some of them) leaves me
with the sense that there's probably room for improvement on some of
these things before they go out the door.

Segher, next time there's discussion about new C extensions for the
kernel, can you please include me in the discussions?
--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdk-AQVJnD6-%3DZ0eUQ6KPvDp2eS2zUV%3D-oL2K2JBCYaOeQ%4=
0mail.gmail.com.
