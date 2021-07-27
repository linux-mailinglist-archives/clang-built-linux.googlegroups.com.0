Return-Path: <clang-built-linux+bncBD66FMGZA4IKROUBRADBUBETTTLTG@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B15B3D7E77
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 21:23:21 +0200 (CEST)
Received: by mail-lf1-x13e.google.com with SMTP id e4-20020a1950040000b029034f05dc854asf6061947lfb.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 12:23:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627413801; cv=pass;
        d=google.com; s=arc-20160816;
        b=rrQJhIMZvRADNeIx7SrtpUp/IDyy3yoIXgD+XBdy67CiWIsUOoUXijv6X+SXLRXDXh
         91L8rgGCn8133s2gvhPmdQLsdlyILSxR4SDxg91u0HtUy020eeWbrhvy/QYYyMjeM2IS
         8iS9jpaDSFbYoou/2QyKSLuQnmPvpn6YU5llrDmDtCYMt0qkpHW1zKP8342NeLqS5bGi
         GogcHvDabo3Zb7cEsdBEi+sEtLjjjNz6HZjGmnxe7CFDA1zR0EYYH8nWl6zQu+gkWtLt
         FyzWg4pCa7We9XVb0hnWF2BLsMMC2z1CPS5Bq+g1BkAeDCZjkjntMbj65iqb7IRzXXsq
         YRpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=rzsu5llSl8pYsKcDPYy0EGNZAd06so2i40c2vKL0Qw8=;
        b=03dhVbKE9wSXYpyueavpWB9BVoBXgGBZXkc06+kYhSoOz/cKCiPzg1EpmwhMoy+EXz
         3hQuOjQryG8X2M30SA0XTXU3CvsvoUrrU91VEoMJjVgrbHPRM4W1+ifGpn1WDvX0pxuW
         9tm/lfUzO+7hIi5jpPm4MFx+zjojIZGFnpusPn77CDvaHZM9e16apJOqb2qavMUepgsn
         XMVYgyEPVqVmJ44YkYHVXpDsL/pSXz+YS6R/TFm5UqSarIMdhW/jCpO3g9kzgQr5rFsb
         4PJQdENtHXsRUH6qT8kO552ZctTKkhaLSYDVMFjDBDTc4yvpLValz+jAXhjs3wQ1z/wC
         nhjw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=frUsetoI;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::52f as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rzsu5llSl8pYsKcDPYy0EGNZAd06so2i40c2vKL0Qw8=;
        b=O4WVqeSHhGWF2L10jTVAUJAdLwuPA/pgJ1io2i6CXRmXD88Kt4fcRx7idUexMnmfok
         k3QWR8vaJ2iiL3HJsG5zGrEGdeTdVxQn6JUrwXxJAQVXX0ryR1a8mbWppVHXR1ajS5XV
         VwpdCPRSgfEw8HKjkEp0gtAfKhKlCkpRy58aDLmqqdgqIWwWb8vSqwAR7iBgNL654KWo
         lTNOzi6QQlpD1ifh0A1WUZYtfdB18Jl4D7B4tWQcNppJsmDU0oTeAenUsxmyhT+7sTgH
         /YgBlKHN3kXsE+8rggUQeq6xZJI5tPXqTFJ8VuaQcoHOHFdUbW08S/8sx7aujo5eD4el
         PXUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rzsu5llSl8pYsKcDPYy0EGNZAd06so2i40c2vKL0Qw8=;
        b=YGVxZY6tSfZI+vZO0Dup/3g++WhuxESFm0Zi+2447f+jaW+gpUtI9JHSP4amu1Q3H5
         YuKCCLApmxnhPD5LgAZYWnQzvBo6bGpI5TawF7I4ObCSUiJnmn0P3Cv54euuRVFqYAjK
         JufZm4sptJ8W59H21k9Ywgursk5rmS9RrXNMrkCg1GunjjRKDbHC/oYiKmDwz0xqUhIQ
         GSTY3ksx+syc8eG8QqIar6wizHn1h7fMu9alqC7f3RZDOZ7CP4blkc5XSPKK7aNJJFWM
         gzfA4GQb5VIdZ1CBPI6D4khVHuJxkstoCzwzl1uUMmdUwL03RZOFVC+Ter2jRS+Mktdm
         nmkQ==
X-Gm-Message-State: AOAM533WidpZNSVUBK/txKa7i7+N+6A29jcTwlOsmvWxPgZPxRfyH3dz
	Yd4M4V+acSJxZCKvL20V9X4=
X-Google-Smtp-Source: ABdhPJxbuBzvaPGas1Voexpb84kjqB02Ez3FQaglsElCSz177bW7mNHGSHYwzBb8uHmyHld4QGZ99w==
X-Received: by 2002:a2e:88da:: with SMTP id a26mr16200964ljk.223.1627413801057;
        Tue, 27 Jul 2021 12:23:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b4b3:: with SMTP id q19ls2672753ljm.0.gmail; Tue, 27 Jul
 2021 12:23:20 -0700 (PDT)
X-Received: by 2002:a05:651c:1615:: with SMTP id f21mr16745088ljq.15.1627413799994;
        Tue, 27 Jul 2021 12:23:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627413799; cv=none;
        d=google.com; s=arc-20160816;
        b=enYA86XFdj13i9D3mnjDwlgdUts/QfSFb7vysUdIvPlFbdUmolglFoOmzokcnApIla
         gblzQ8yoOgIm+nvor7FkYDW+dwQDta3mok479i0wT3qeModPQFRqGjwU23fPcmMdmqno
         U4GK+jANg54YEA4CqtP8f/LF6rjfKQ/aUUCO6WElDZpY0ZH60gwM63BqZROwVQLfv81L
         cx8lkLGGl7GI8lF556Oa9nfuAu9N8D9qo+LS9+KU3oeVslRWpPLSVhe+IWStjJu8bzBS
         qeZZBZxfmHYhsIJXaRGpnGg/WEYmRJxiK0wy/nOcuPaMh2QvBXYOEZ4bT3KV1LCfkuwB
         Swhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Yxc9UYdh/RrHGy639R3FAuPus1O8HTw9ypoYMhCSjgk=;
        b=PLm9A3mRJK3ZD57loEp5zLSc6gfFykHpvkW9g5ZTMo3IyR8q3fStayNaBk4h3dlCEn
         03lb13vZMICrCDHD+HjGcbF1jUqvu1R8yVq8IRFbTML5kpWjDzMbCykdZ61JXwMHoX0n
         hu7u+5evZdPG/qUR2tigW7s72EzGVn539zy6ytCLhSSNF01zKRbCCnTDynOEJ6s6TIIK
         qYNnuLFuRjHvvhVQ9GxLMYgmv57OnOsEprrKd6lXTtjVge6RLxacctLSc2SKx0SFCZCZ
         ImaLexhAd2jUPrVIkCq19p5Q2VhAG2CWAEzxNMvoGN9Hp9nJKcogHHhBmMJ9BAPccOVO
         0D/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=frUsetoI;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::52f as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com. [2a00:1450:4864:20::52f])
        by gmr-mx.google.com with ESMTPS id b15si102726ljf.6.2021.07.27.12.23.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 12:23:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::52f as permitted sender) client-ip=2a00:1450:4864:20::52f;
Received: by mail-ed1-x52f.google.com with SMTP id j2so15908797edp.11
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 12:23:19 -0700 (PDT)
X-Received: by 2002:a05:6402:22f4:: with SMTP id dn20mr28889404edb.335.1627413799406;
 Tue, 27 Jul 2021 12:23:19 -0700 (PDT)
MIME-Version: 1.0
References: <20210714091747.2814370-1-morbo@google.com> <20210726201924.3202278-1-morbo@google.com>
 <20210726201924.3202278-2-morbo@google.com> <c965006c-88e1-3265-eb9c-76dc0bbcb733@kernel.org>
 <YP+ZOx8BETgufxBS@kroah.com> <CAGG=3QX68umw5Ws9_HuGkqoTNT=Q1+QB7YpSaqw3R_kPsbxwsg@mail.gmail.com>
 <YP+ql3QFYnefR/Cf@kroah.com> <CAKwvOdm62a7mrLZb_eciUO-HZj7m3cjgfvtQ=EqRy9Nh0rZOPg@mail.gmail.com>
 <YQBJfAuMJhvd2TcJ@kroah.com>
In-Reply-To: <YQBJfAuMJhvd2TcJ@kroah.com>
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 27 Jul 2021 12:23:08 -0700
Message-ID: <CAGG=3QX+gXDGQQEoSjP++Nj8BbN0kHZ-Hg5rcQOwYWyS+ss5dA@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] base: mark 'no_warn' as unused
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <nathan@kernel.org>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	LKML <linux-kernel@vger.kernel.org>, linux-toolchains@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=frUsetoI;       spf=pass
 (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::52f as
 permitted sender) smtp.mailfrom=morbo@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Bill Wendling <morbo@google.com>
Reply-To: Bill Wendling <morbo@google.com>
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

On Tue, Jul 27, 2021 at 10:59 AM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Tue, Jul 27, 2021 at 10:39:49AM -0700, Nick Desaulniers wrote:
> > > > > > Original post:
> > > > > >
> > > > > > https://lore.kernel.org/r/20210726201924.3202278-2-morbo@google.com/
> > > > > >
> > > > > > On 7/26/2021 1:19 PM, 'Bill Wendling' via Clang Built Linux wrote:
> > > > > > > Fix the following build warning:
> > > > > > >
> > > > > > >    drivers/base/module.c:36:6: error: variable 'no_warn' set but not used [-Werror,-Wunused-but-set-variable]
> > > > > > >          int no_warn;
> > > > >
> > > > > That's not going to be a good warning to ever have the kernel use due to
> > > > > how lots of hardware works (i.e. we need to do a read after a write but
> > > > > we can throw the read away as it does not matter).
> > > > >
> > > > >
> > > > > > >
> > > > > > > This variable is used to remove another warning, but causes a warning
> > > > > > > itself. Mark it as 'unused' to avoid that.
> > > > > > >
> > > > > > > Signed-off-by: Bill Wendling <morbo@google.com>
> > > > > >
> > > > > > Even though they evaluate to the same thing, it might be worth using
> > > > > > "__always_unused" here because it is :)
> > > > >
> > > > > But it is not unused, the value is written into it.
> > > > >
> > > > I believe that only matters if the variable is marked "volatile".
> > >
> > > "volatile" means nothing anymore, never use it or even think about it
> > > again please :)
> >
> > What Greg is getting at is that the use of the volatile keyword in
> > variable declarations is slightly frowned on by the kernel community.
> > It's less flexible than making accesses volatile qualified via casts.
> > Then you have flexibility for some accesses to be volatile (ie. not
> > CSE'd), and some not (ie. CSE'd), if needed.
> >
> > Though just because you assign to a variable doesn't mean that the
> > compiler generates an access, especially if the result is unused.
> > This warning is all about dead stores.  The cast to a volatile
> > qualified pointer then dereference is what guarantees the access.
> >
> > https://godbolt.org/z/7K7369bGG
> >
> > (To be explicit, IMO Greg's point about volatile stores is orthogonal
> > to discussions about dead stores.)
>
> I didn't bring up that dirty word, Bill did :)
>
I brought it up only as a potential reason for the compiler *not* to
emit the warning. We really shouldn't be spending this much time on
it...

> > > > Otherwise, the variable itself is never used. A "variable that's
> > > > written to but not read from," in fact, is the whole reason for the
> > > > warning.
> > >
> > > But that is ok!  Sometimes you need to do this with hardware (like all
> > > PCI devices).  This is a legitimate code flow for many hardware types
> > > and if a C compiler thinks that this is not ok, then it is broken.
> > >
> > > So be VERY careful when changing drivers based on this warning.  Because
> > > of this, I do not think you can enable it over the whole kernel without
> > > causing major problems in some areas.
> > >
> > > But that is independent of this specific issue you are trying to patch
> > > here, I say this to warn you of a number of stupid places where people
> > > have tried to "optimize away" reads based on this compiler warning in
> > > drivers, and we have had to add them back because it broke
> > > functionality.
> > >
> > > > > So this isn't ok, sometimes we want to write to variables but never care
> > > > > about the value, that does not mean the compiler should complain about
> > > > > it.
> > > > >
> > > > Typically, if you don't care about the return value, you simply don't
> > > > assign it to a variable (cf. printf). However, the functions that
> > > > assign to "no_warn" have the "warn_unused_result" attribute. The fact
> > > > that the variable is named "no_warn" seems to indicate that it's meant
> > > > to remain unused, even if it probably should be checked.
> > >
> > > These functions have warn_unused_result set on them because for 99% of
> > > the time, I want the value to be checked.  But as you can see in this
> > > use, as per the comments in the code, we do not care about the result
> > > for a very good reason.  So we just assign it to a variable to make the
> > > compiler quiet.
> >
> > I think warn_unused_result should only really be used for functions
> > where the return value should be used 100% of the time.
>
> I too want a shiny new pony.
>
You do? Ponies cost a lot of money and need ranches to live on and
constant care...a lot of work. Cats are better.

> But here in the real world, sometimes you have functions that for 99% of
> the users, you do want them to check the return value, but when you use
> them in core code or startup code, you "know" you are safe to ignore the
> return value.
>
> That is the case here.  We have other fun examples of where people have
> tried to add error handling to code that runs at boot that have actually
> introduced security errors and they justify it with "but you have to
> check error values!"
>
That's fine, and I fully support this. But when you mark a function
whose return value is 99.999999% checked except for the
I-definitely-know-what-I'm-doing-you-stupid-compiler times, then
you're going to get a warning from the compiler, because you've *told*
the compiler that the return value needs to be checked, but the code
doesn't check it. Compilers aren't mind readers.

The option then is to tell the compiler that "Yes, I know what I'm
doing, stop telling me otherwise" or disable the warning. As Nathan
pointed out, the warning was disabled in an April commit I guess.

> > If there are
> > cases where it's ok to not check the return value, consider not using
> > warn_unused_result on function declarations.
>
> Ok, so what do you do when you have a function like this where 99.9% of
> the users need to check this?  Do I really need to write a wrapper
> function just for it so that I can use it "safely" in the core code
> instead?
>
> Something like:
>
> void do_safe_thing_and_ignore_the_world(...)
> {
>         __unused int error;
>
>         error = do_thing(...);
> }
>
> Or something else to get the compiler to be quiet about error being set
> and never used?  There HAS to be that option somewhere anyway as we need
> it for other parts of the kernel where we do:
>         write_bus(device, &value);
>         value = read_bus(device);
> and then we ignore value as it is not needed, but yet we still HAVE to
> call read_bus() here, yet read_bus() is set as warn_unused_result()
> because, well, it is a read function :)
>
We have a perfectly fine way of doing this, by marking the variable as
"__maybe_unused". There's no need to come up with a convoluted
workaround. Since we don't want to check the return value in roughly
0.1% of the use cases, adding the __maybe_unused attribute isn't a
major headache. And it will prompt someone to really check whether
it's the "right thing" to do or not, which is what warnings are meant
for...

> > That said, we have a very similar issue throughout LLVM that Bill
> > should recognize. In LLVM, we have pretty aggressive usage of
> > assertions.  Rather than:
> >
> > assert(someReallyLongExpression && "error message");
> >
> > where that statement might wrap across multiple lines, instead it
> > might be clearer to write:
> >
> > bool IsOk = someReallyLongExpression;
> > assert(IsOk && "error message");
> >
> > which looks nicer but now produces -Wunused-but-set-variable on IsOk
> > for release builds where assertions are disabled.  The common fix in
> > LLVM is to write:
> >
> > bool IsOk = someReallyLongExpression;
> > assert(IsOk && "error message");
> > (void)IsOk;
> >
> > The cast to void is technically a use that doesn't result in a dead
> > store.  That pattern could be used in the kernel rather than
> >
> > int no_warn;
> > no_warn = warn_unused_result_fn();
> >
> > at least to avoid -Wunused-but-set-variable.  Oh, looks like a curious
> > difference between compilers:
> > https://godbolt.org/z/GvznMM6o1
> > Filed https://bugs.llvm.org/show_bug.cgi?id=51228.  So I guess we
> > can't use the cast-to-void to avoid -Wunused-but-set-variable, since
> > that triggers -Wunused-result, at least with GCC.  :( Nevermind...
> >
> > Though I still think the use of warn_unused_result on
> > sysfs_create_link() is worth revisiting.
>
> Nope, not at all, I WANT users to check this as it is something that has
> caused problems in drivers and subsystems in the past.
>
> And doing the (void)sysfs_create_link(); hack is horrid, I thought we
> were better than that.
>
> Surely there is a "this variable is going to be assigned something but
> never used" option somewhere?  This can't be the first time it has come
> up, right?
>
> > > > Would you rather the warning be turned off on some level?
> > >
> > > Which warning?
> > >
> > > The code here, as-is, is correct.  We already have 1 compiler warning
> > > work around in place, do you want to add another one?  How many can we
> > > stack on top of each other?
> >
> > Isn't -Wunused-but-set-variable enabled only for W=1 builds?
>
> No idea, as long as it is not a normal build option, that's fine.  "W=1"
> is for kernel newbies wanting to clean up subsystems and get some patch
> counts merged :)
>
> thanks,
>
> greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGG%3D3QX%2BgXDGQQEoSjP%2B%2BNj8BbN0kHZ-Hg5rcQOwYWyS%2Bss5dA%40mail.gmail.com.
