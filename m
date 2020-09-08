Return-Path: <clang-built-linux+bncBDZKLXNI4ACBBWMJ4D5AKGQETDPAHJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id E423226229C
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Sep 2020 00:25:29 +0200 (CEST)
Received: by mail-lj1-x23a.google.com with SMTP id n24sf205412ljc.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Sep 2020 15:25:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599603929; cv=pass;
        d=google.com; s=arc-20160816;
        b=Kj/+TuBF1qgR8+rm4Iktu8MR4gEoLY9X/6Ju/9SE9K13RzYhw0cExiSZ6rsUb8wlhz
         MDfFnpXxdoZSplEVWNM8F8eRKKSzowKtYmDiA5wbOsgP9hx2G+/QSUSfyDPfKIMXAhm3
         uwnNP1Y1u+MFXmxPV7QWO+M0afb8vW5shHBLfFiLsveAwXCAgyAe6IF7CjXo95SzEqoJ
         o0H+xkMzh+q5O6VkObTTnrHnWRkhY9f34+wGIUMg4k+b95i054lKTVCo7e8aoWDmSAAj
         s2Beyz5VgAjMrtgsB0XlPxTCf2cunC53cgEd4LmJR9hOA5aAPZXQBWoIrfeKAjFq5Jgc
         y1eA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=KCjIjvWRJxvGDSzASu1w2ykdJgM1gEJursZQOZzeKyo=;
        b=HH2v7VtN3JMlaiqM4t/lXW+LAIljFSxKGwq4axnpbdWth/mc4bQ1YaW/KnQxtEza00
         qLH51inYwQ+zOmjoD+PCUnyfKggRqUfs8jjqyKvt0GQK6WE9/UHHPmD1tHwKno6IspCY
         VPA3PGVn/mgPqaWbrHLhh9a76OSDKWMbPs3Gc8Cvh98p9Dq5LR+/5OV4Mi0KFDqeI74v
         DB9jNw0I3DL6nmV0z9SZCCITRRzV4X2G6tFU7Eg3Jp32f8h0rOHqipKdCCBO+yYMNX92
         szsTyC5cDCMWc22gtH+SURxtRAtEwJg8xaW4Uw5T9TCsJhP6oEFjytIBZTSr+C2CiVUb
         EptQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of pavel@ucw.cz designates 46.255.230.98 as permitted sender) smtp.mailfrom=pavel@ucw.cz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KCjIjvWRJxvGDSzASu1w2ykdJgM1gEJursZQOZzeKyo=;
        b=k9Dbi3LEiPdCJP8zb/mYbcFDDIHW/EREUkjN0lDvr6jCXoD4XTZ1arHu11saUHHiYk
         6pKxkz217MIFgq1YgZaWSsgw5b185s98RwYJGaLOCk7lVWRLEBfnZHD+kUudEhr/5xLr
         K/Q9ivWIuU6xzflTxk93jiQo5uW3i4IQm6e3UyDdDKSOTfwpnhb1yH+jHgNDNXsk6wWX
         689drtXZIY3cMHOvuf5541yPN8IRCNcheuzo1eE/QvRwlTDYV4UrQR1Zc0luUSHHVnIT
         92cyLefUJSt3H6kVJPUg22Xan/1iQpFvi/6GJkmZVB1Mek72bH95tRVvqj7c2xJr2qGK
         N+zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=KCjIjvWRJxvGDSzASu1w2ykdJgM1gEJursZQOZzeKyo=;
        b=RlQFs6lZTVg2rXsnTEkAGTTkLFz3+M43k5tChxu74+8bnG1XW8CZMTojqjd7AgAFhB
         Ol8JhyJq3ciy4jSedyd70Yu9g8HK1JKdli5S5zvnhNDJdIHGectnWjyBj2G7x88y7oPI
         LRCdQmR5UDp5xH9cTFfIrGdZYYOIwipVGa9VulcHvJgkgRnXV9ExK61ZlWBiBZTkcBP2
         yVtKCFfMAbgxW/GSgwYFQEAtIhWHfhFaOaaWkixVJqp3OrvlZ+Biy/AI+s0qK9Aeh5I5
         nzp08KKiMFMu1XllQMCQEoUii0HcwO6dfkIStiF/LC+219iCQVwMwF5zCawcmw8Cv7O3
         4c8g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5312N7+wlek1GehVZXJdEzbbOUg2DGJqRkTjHCDwhOxuRnmBdXFn
	RL+L3h/kUNebC2RMllmyZEU=
X-Google-Smtp-Source: ABdhPJxQDjzjHyhhLv0gwR1hN6gTH5kCqSr3+RQQwdeTIyQ+JetPTslXbn89RBqHQA/oX4Noz8w+NQ==
X-Received: by 2002:a2e:91c5:: with SMTP id u5mr339025ljg.278.1599603929408;
        Tue, 08 Sep 2020 15:25:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5c44:: with SMTP id s4ls90575lfp.3.gmail; Tue, 08 Sep
 2020 15:25:28 -0700 (PDT)
X-Received: by 2002:a19:5e5d:: with SMTP id z29mr521836lfi.32.1599603928249;
        Tue, 08 Sep 2020 15:25:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599603928; cv=none;
        d=google.com; s=arc-20160816;
        b=w92ROckd9Gnpf06eyAL7OuYoCgRsNIcbt5lD3yQ7XdUUmR6GL+qsHJvmVFwOLjXY2F
         esPeK0F9ha5xnxMIOztoXmtrCxOhdIpa6eV8UySgigdHTwrSQXuPo5HlJtNigKz8R3Ud
         bvkJJR3Onvw+GTZO5m8IHZdBzC1HJI1qb1oxsY5L+92QP0FuRnoWBCKFcQUk7trJMyUF
         nbI0U74jYaNIEc4K5XJugL1/4upl/5uZSkARkHjjV+Tlh+p4Nuv6IV33TYSeqeihgDFO
         2AfXN+0/d/S9/oQq54BWCKDiBSINGG9qRkM30aoFSOQEl4JrSt/TqVwdxeN+x/jVnd6y
         DkRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=Q7C+QE9jqF0sIr/3Y5lDHE0rrVOftZzdB0z7ye+dRz4=;
        b=q1MyBSS78uyE5IeO254wI2RrZoPUfVEQfbmteSja1gpUfQ8fDkjKfZoOdiAwP5YI9Z
         U4cXhNazdUTSGhgYfNr02bl3qDo0gcKJY7DnKCmgDPa3cbqIp0t+CLqXdI2+6gLkH1No
         0aw8uylwoBKvYF+PhguMYxiViH6KLhevZHSp3RIfIJLLxumWVXvudTzlTzsCO3rFRdWj
         Ovrc6Z2Xepd9VAn3X2cKqDRwesrsu5l54hbxUZFfcxCJ95B6+MzeosxpMzLjKmtIuxl2
         oGO3xRFgZqUV3mfUhd+FszvUgD9wP6FrndXmuadkr5NP7QnwThie0MdazTmUik+ZROjm
         uCzg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of pavel@ucw.cz designates 46.255.230.98 as permitted sender) smtp.mailfrom=pavel@ucw.cz
Received: from jabberwock.ucw.cz (jabberwock.ucw.cz. [46.255.230.98])
        by gmr-mx.google.com with ESMTPS id r6si30204lji.4.2020.09.08.15.25.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Sep 2020 15:25:28 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of pavel@ucw.cz designates 46.255.230.98 as permitted sender) client-ip=46.255.230.98;
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
	id D96C01C0B87; Wed,  9 Sep 2020 00:25:25 +0200 (CEST)
Date: Wed, 9 Sep 2020 00:25:24 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Segher Boessenkool <segher@kernel.crashing.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Thomas Gleixner <tglx@linutronix.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Ingo Molnar <mingo@redhat.com>, Arnd Bergmann <arnd@arndb.de>,
	Borislav Petkov <bp@alien8.de>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	"H. Peter Anvin" <hpa@zytor.com>,
	"Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>,
	Zhenzhong Duan <zhenzhong.duan@oracle.com>,
	Kees Cook <keescook@chromium.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Juergen Gross <jgross@suse.com>, Andy Lutomirski <luto@kernel.org>,
	Andrew Cooper <andrew.cooper3@citrix.com>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Will Deacon <will@kernel.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Subject: Re: [PATCH] x86: work around clang IAS bug referencing __force_order
Message-ID: <20200908222524.GE1005@bug>
References: <875z9dioll.fsf@nanos.tec.linutronix.de>
 <20200820130641.GA536306@rani.riverdale.lan>
 <87zh6ohm03.fsf@nanos.tec.linutronix.de>
 <20200821230435.GA56974@rani.riverdale.lan>
 <CAKwvOdkoB+fT9tt7vgg1R6J-NEr77EWP5X8nFat_L-HvEzWGzA@mail.gmail.com>
 <87eenzqzmr.fsf@nanos.tec.linutronix.de>
 <20200822035552.GA104886@rani.riverdale.lan>
 <20200822084133.GL28786@gate.crashing.org>
 <CA+icZUVf9a8LC2Mf0cFymYQfALWs6bVfR1v1nRbxKaLAyU6NkQ@mail.gmail.com>
 <CA+icZUWGHo3mkN4=ZYeU37p8KJhxTXS5QKcAvq_HaqTHmFkw2g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+icZUWGHo3mkN4=ZYeU37p8KJhxTXS5QKcAvq_HaqTHmFkw2g@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Original-Sender: pavel@ucw.cz
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of pavel@ucw.cz designates
 46.255.230.98 as permitted sender) smtp.mailfrom=pavel@ucw.cz
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

On Sat 2020-08-22 11:51:56, Sedat Dilek wrote:
> On Sat, Aug 22, 2020 at 11:23 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > On Sat, Aug 22, 2020 at 10:42 AM Segher Boessenkool
> > <segher@kernel.crashing.org> wrote:
> > >
> > > Hi Arvind,
> > >
> > > On Fri, Aug 21, 2020 at 11:55:52PM -0400, Arvind Sankar wrote:
> > > > Cc Segher.
> > > >
> > > > Segher, we were looking at gcc PR82602, where IRA could reorder volatile
> > > > asm's (reported on ARM). The fix was backported to gcc-6.
> > >
> > > I know ;-)
> > >
> > > > Do you know if
> > > > there is any reason the problem couldn't occur on x86 on older gcc
> > > > without the fix?
> > >
> > > No, I see no particular reason, at least GCC 5 seems vulnerable.  (The
> > > GCC 5 release branch was closed at the time this bug report was made,
> > > already).  There is no reason I see why it would work on x86 but fail
> > > elsewhere, either.
> > >
> >
> > [1] says:
> >
> > Current Minimal Requirements
> > ...
> > ====================== ===============  ========================================
> >         Program        Minimal version       Command to check the version
> > ====================== ===============  ========================================
> > GNU C                  4.9              gcc --version
> >
> > - Sedat -
> >
> > [1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/process/changes.rst#n32
> 
> [ CC Miguel Ojeda (Compiler Attributes maintainer) ]
> 
> There exist gcc-4.8 and gcc-4.9 for Debian/jessie where EOL was June
> 30, 2020 (see [1] and [2]).
> 
> In the latest available version "4.9.2-10+deb8u1" I see no PR82602 was
> backported (see [3] and [4]).
> 
> I am asking myself who is using such ancient compilers?
> Recently, I threw away GCC-8 from my Debian system.

I do have 4.9.2 on some systems. They work well, and are likely to compile
significantly faster than newer ones.

Please don't break them.

									Pavel
-- 
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blog.html

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200908222524.GE1005%40bug.
