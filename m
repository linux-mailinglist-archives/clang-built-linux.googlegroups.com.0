Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBB74SQGEAMGQEN6GX4QY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id DC5443D7CF1
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 19:59:33 +0200 (CEST)
Received: by mail-oo1-xc40.google.com with SMTP id r10-20020a4ae50a0000b02902621047077esf8643197oot.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 10:59:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627408768; cv=pass;
        d=google.com; s=arc-20160816;
        b=lbfZlQdn/vFBqpLanUFpdOPn+YIVeugNBY4hPtTJ5zzJLS6P8KFB7kGAm3eP+zqBTL
         gYA60LOEZ21PIBA3/K+ICs4pJYv8bE89/C3Q3Z2i193FdYYLh0+IsnfJ3C23oVCwXhnx
         KZMECO13fnWrkXRyUDAlrtICw01QBX6RbDynzIaWOuW/G9KO8NjixB/AYeLy0F28f4tG
         9bf9DZ+2xf/Ryyb6suvL7aH4Hk9wAwn58Y/CMLt3TCE5/9jiAYB3ZM8AedqEAvhD9Dbh
         JCFyD8Y2lMgFuG+i6PjvRU0Gdz732rPvQgNzmjEGH1gWZbz8JI4yZSUROvKjGQeIQEr4
         KzMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=XzxPpVzNodWWFgR7Qwg6xHBKu6mxQvV35NTMf59K8cI=;
        b=KGEmAUyBTCGnGJjW1m+/r/L2Qj7BCB+dccXH3xlkw3jLrDXdnA/b4x7JzKo1OuRUCZ
         GRT6iU9txpIXpNrG0HzLmaeOIY8wQi/OsG/eGOpFxxLUZjxLydgO17Q8GGos5tIb16o0
         soqEJmednhOsWkhjof0ysrQfBFQ1SPJsJzFr1tqqT+1ErgwpgJEti+CEho8WKN84GXg8
         ycMp8R6bdq3OWsg96WNkraqOlC2y0v58v3X2n220i6o7/1P+kvPwpe+z97ZwjPCykYlZ
         ZtIy8ZQ03xrups+pPLNbONOodxMpo05UB8LYWroCwhPrxrapyBI+exUO3fOXGt5rQcx6
         cWIw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=Od+86ods;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XzxPpVzNodWWFgR7Qwg6xHBKu6mxQvV35NTMf59K8cI=;
        b=RwKrU2DMncVM+dmWiYVpmBI8kBpEAt9WklR9DDWRMFm948t9j/YdjBZAHTDyWem5dq
         PhFmces7Z6w7N0QBYyCo199XtVUhfat13Qb1N+SgxBrFsdKY0lXDTy9/5MLijlPZsWF2
         iQZd0v4cPXayN9wGQSJ/Tw51v6AjYO1b+/SUJEXWANcGzj1H5jqvkkWwN/0JkXktJTMv
         D94tzBoGeLDr8aKAOsN5sCgttSKTUvB7UcpQIvS/AVakxgloj2CyFEKckiif0oO5ZOIU
         UMBQG221uxyMI2WnIk/4Kwl9kn3Ub1fc3x6ul2NK5uLr7TzYnE0js/q/6d2kRlY0bReu
         hBfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=XzxPpVzNodWWFgR7Qwg6xHBKu6mxQvV35NTMf59K8cI=;
        b=Ed25TnROAixnWpIICUHi1cY5hY5m+nWtvPjdx5UEjqqDpRMVt8OpXDCYafYx1nY+bZ
         c6/2xNTyRNiDJupnrfspQOMJLzQANzeFZ5b6Lmf06wnJUU2XJo6n/A6adRCNuKmYnPLY
         E+Q2kbt0/ZB7A4qjgr4qGeyA9pDyvXcX2FVXtSy7vHxQ2VlEgaNDQFKohVc296OQ4bDC
         qaIyOjchEW0WH7L0ZDzhzE7xIbfojdcJTQqWI48917DYShayk/UxvPn+kBRdbrP2NKs5
         jib7SEmb4we6Dvxz1aMmlp1oeeRpjyGV25JRbEWXV6zVT0sSDorqVVzgb47JmZq3aguF
         baMg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531+tPkiFXYMSlaWxo03ev2i3FUdyS1Lnt4/XtCRUxAM3ZxGEnh/
	lBLLaNt9g6WIYv0j9xkfJDM=
X-Google-Smtp-Source: ABdhPJzdA6JQsnXUMOb0J68w1SvRX5X+tc16tOcXBADnYKBc/UusuDFcx//e2sALTa2k3VHaTCTOzw==
X-Received: by 2002:a9d:5c8b:: with SMTP id a11mr16962994oti.206.1627408767856;
        Tue, 27 Jul 2021 10:59:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5903:: with SMTP id n3ls7860506oib.6.gmail; Tue, 27 Jul
 2021 10:59:27 -0700 (PDT)
X-Received: by 2002:a05:6808:28d:: with SMTP id z13mr13020814oic.68.1627408767483;
        Tue, 27 Jul 2021 10:59:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627408767; cv=none;
        d=google.com; s=arc-20160816;
        b=iZ5VcgXji7xxrQKwVJ5aOb8AxrR9ciRNXoaX8z0+Mc4BLuJlGcW9ScvdeaAczyzSNT
         /J0bXoDTCejx1rrLikfQA2UgSeaym+BRURedyp6fyLrUghwW6UQ4svOI/RFyyHIo02wJ
         hltJLroBq+fVDbkhhgNARWqmsDjYM3Cm8TT6rd0r0so9fYVmKac3DMvATr1wbkWihZCX
         CFBPt6ZPiXyxFfAEqYgr0hTjlxQQhL0egDJoMsjLYi5yOwb1atkvILSuSo7B8om5JTEG
         zJ4IkZPZz+4X4GqCFRlLgYI+8pNsGiKNUZjs/H4uFczD+BNoV36/TVxsIOdVirpcj1m7
         YzAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=tZHAR5jPoS+SkIAWbqdcSNIaTqXpBuB9yJxojaEvJC8=;
        b=nlDVc9XCgFocu5MdV+gedn/NnKOrHDd5nDm9tkZWCS+W5JVajnytN3IGGtChjQLXeU
         Fvkm9TDZAm4E0227Q1ABh/FRI7LNvXSGhIVoX9f6tK41Xm5e8L8H2jExZBeUnL1lvYN0
         UdQaFMlinOUq89RUak4WOyaC52tQ6qmkA3RJddc3zyVGbZKxgXNxJB/HuG0KNn6XqgiF
         JUb+q6aOw7nFggoMToRXsPNAV6qET8leYTxCs2yHCbx3c2cgLRWYB9uUDPzRMddhXK5N
         JHFWQBPiAVmSq44XE0XJ8hy8jnbyMJY8dxul7moNhwGY9epbl91+YfSSk0iyVkKyYS4w
         7rVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=Od+86ods;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w23si324678oti.4.2021.07.27.10.59.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Jul 2021 10:59:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 355AE60F11;
	Tue, 27 Jul 2021 17:59:26 +0000 (UTC)
Date: Tue, 27 Jul 2021 19:59:24 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Bill Wendling <morbo@google.com>, Nathan Chancellor <nathan@kernel.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	LKML <linux-kernel@vger.kernel.org>,
	linux-toolchains@vger.kernel.org
Subject: Re: [PATCH v2 1/3] base: mark 'no_warn' as unused
Message-ID: <YQBJfAuMJhvd2TcJ@kroah.com>
References: <20210714091747.2814370-1-morbo@google.com>
 <20210726201924.3202278-1-morbo@google.com>
 <20210726201924.3202278-2-morbo@google.com>
 <c965006c-88e1-3265-eb9c-76dc0bbcb733@kernel.org>
 <YP+ZOx8BETgufxBS@kroah.com>
 <CAGG=3QX68umw5Ws9_HuGkqoTNT=Q1+QB7YpSaqw3R_kPsbxwsg@mail.gmail.com>
 <YP+ql3QFYnefR/Cf@kroah.com>
 <CAKwvOdm62a7mrLZb_eciUO-HZj7m3cjgfvtQ=EqRy9Nh0rZOPg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdm62a7mrLZb_eciUO-HZj7m3cjgfvtQ=EqRy9Nh0rZOPg@mail.gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=Od+86ods;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Tue, Jul 27, 2021 at 10:39:49AM -0700, Nick Desaulniers wrote:
> > > > > Original post:
> > > > >
> > > > > https://lore.kernel.org/r/20210726201924.3202278-2-morbo@google.com/
> > > > >
> > > > > On 7/26/2021 1:19 PM, 'Bill Wendling' via Clang Built Linux wrote:
> > > > > > Fix the following build warning:
> > > > > >
> > > > > >    drivers/base/module.c:36:6: error: variable 'no_warn' set but not used [-Werror,-Wunused-but-set-variable]
> > > > > >          int no_warn;
> > > >
> > > > That's not going to be a good warning to ever have the kernel use due to
> > > > how lots of hardware works (i.e. we need to do a read after a write but
> > > > we can throw the read away as it does not matter).
> > > >
> > > >
> > > > > >
> > > > > > This variable is used to remove another warning, but causes a warning
> > > > > > itself. Mark it as 'unused' to avoid that.
> > > > > >
> > > > > > Signed-off-by: Bill Wendling <morbo@google.com>
> > > > >
> > > > > Even though they evaluate to the same thing, it might be worth using
> > > > > "__always_unused" here because it is :)
> > > >
> > > > But it is not unused, the value is written into it.
> > > >
> > > I believe that only matters if the variable is marked "volatile".
> >
> > "volatile" means nothing anymore, never use it or even think about it
> > again please :)
> 
> What Greg is getting at is that the use of the volatile keyword in
> variable declarations is slightly frowned on by the kernel community.
> It's less flexible than making accesses volatile qualified via casts.
> Then you have flexibility for some accesses to be volatile (ie. not
> CSE'd), and some not (ie. CSE'd), if needed.
> 
> Though just because you assign to a variable doesn't mean that the
> compiler generates an access, especially if the result is unused.
> This warning is all about dead stores.  The cast to a volatile
> qualified pointer then dereference is what guarantees the access.
> 
> https://godbolt.org/z/7K7369bGG
> 
> (To be explicit, IMO Greg's point about volatile stores is orthogonal
> to discussions about dead stores.)

I didn't bring up that dirty word, Bill did :)

> > > Otherwise, the variable itself is never used. A "variable that's
> > > written to but not read from," in fact, is the whole reason for the
> > > warning.
> >
> > But that is ok!  Sometimes you need to do this with hardware (like all
> > PCI devices).  This is a legitimate code flow for many hardware types
> > and if a C compiler thinks that this is not ok, then it is broken.
> >
> > So be VERY careful when changing drivers based on this warning.  Because
> > of this, I do not think you can enable it over the whole kernel without
> > causing major problems in some areas.
> >
> > But that is independent of this specific issue you are trying to patch
> > here, I say this to warn you of a number of stupid places where people
> > have tried to "optimize away" reads based on this compiler warning in
> > drivers, and we have had to add them back because it broke
> > functionality.
> >
> > > > So this isn't ok, sometimes we want to write to variables but never care
> > > > about the value, that does not mean the compiler should complain about
> > > > it.
> > > >
> > > Typically, if you don't care about the return value, you simply don't
> > > assign it to a variable (cf. printf). However, the functions that
> > > assign to "no_warn" have the "warn_unused_result" attribute. The fact
> > > that the variable is named "no_warn" seems to indicate that it's meant
> > > to remain unused, even if it probably should be checked.
> >
> > These functions have warn_unused_result set on them because for 99% of
> > the time, I want the value to be checked.  But as you can see in this
> > use, as per the comments in the code, we do not care about the result
> > for a very good reason.  So we just assign it to a variable to make the
> > compiler quiet.
> 
> I think warn_unused_result should only really be used for functions
> where the return value should be used 100% of the time.

I too want a shiny new pony.

But here in the real world, sometimes you have functions that for 99% of
the users, you do want them to check the return value, but when you use
them in core code or startup code, you "know" you are safe to ignore the
return value.

That is the case here.  We have other fun examples of where people have
tried to add error handling to code that runs at boot that have actually
introduced security errors and they justify it with "but you have to
check error values!"

> If there are
> cases where it's ok to not check the return value, consider not using
> warn_unused_result on function declarations.

Ok, so what do you do when you have a function like this where 99.9% of
the users need to check this?  Do I really need to write a wrapper
function just for it so that I can use it "safely" in the core code
instead?

Something like:

void do_safe_thing_and_ignore_the_world(...)
{
	__unused int error;

	error = do_thing(...);
}

Or something else to get the compiler to be quiet about error being set
and never used?  There HAS to be that option somewhere anyway as we need
it for other parts of the kernel where we do:
	write_bus(device, &value);
	value = read_bus(device);
and then we ignore value as it is not needed, but yet we still HAVE to
call read_bus() here, yet read_bus() is set as warn_unused_result()
because, well, it is a read function :)

> That said, we have a very similar issue throughout LLVM that Bill
> should recognize. In LLVM, we have pretty aggressive usage of
> assertions.  Rather than:
> 
> assert(someReallyLongExpression && "error message");
> 
> where that statement might wrap across multiple lines, instead it
> might be clearer to write:
> 
> bool IsOk = someReallyLongExpression;
> assert(IsOk && "error message");
> 
> which looks nicer but now produces -Wunused-but-set-variable on IsOk
> for release builds where assertions are disabled.  The common fix in
> LLVM is to write:
> 
> bool IsOk = someReallyLongExpression;
> assert(IsOk && "error message");
> (void)IsOk;
> 
> The cast to void is technically a use that doesn't result in a dead
> store.  That pattern could be used in the kernel rather than
> 
> int no_warn;
> no_warn = warn_unused_result_fn();
> 
> at least to avoid -Wunused-but-set-variable.  Oh, looks like a curious
> difference between compilers:
> https://godbolt.org/z/GvznMM6o1
> Filed https://bugs.llvm.org/show_bug.cgi?id=51228.  So I guess we
> can't use the cast-to-void to avoid -Wunused-but-set-variable, since
> that triggers -Wunused-result, at least with GCC.  :( Nevermind...
> 
> Though I still think the use of warn_unused_result on
> sysfs_create_link() is worth revisiting.

Nope, not at all, I WANT users to check this as it is something that has
caused problems in drivers and subsystems in the past.

And doing the (void)sysfs_create_link(); hack is horrid, I thought we
were better than that.

Surely there is a "this variable is going to be assigned something but
never used" option somewhere?  This can't be the first time it has come
up, right?

> > > Would you rather the warning be turned off on some level?
> >
> > Which warning?
> >
> > The code here, as-is, is correct.  We already have 1 compiler warning
> > work around in place, do you want to add another one?  How many can we
> > stack on top of each other?
> 
> Isn't -Wunused-but-set-variable enabled only for W=1 builds?

No idea, as long as it is not a normal build option, that's fine.  "W=1"
is for kernel newbies wanting to clean up subsystems and get some patch
counts merged :)

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YQBJfAuMJhvd2TcJ%40kroah.com.
