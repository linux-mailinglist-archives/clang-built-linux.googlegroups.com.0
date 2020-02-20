Return-Path: <clang-built-linux+bncBDYJPJO25UGBB4FSXPZAKGQERFQTZ7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93d.google.com (mail-ua1-x93d.google.com [IPv6:2607:f8b0:4864:20::93d])
	by mail.lfdr.de (Postfix) with ESMTPS id 25D191666DA
	for <lists+clang-built-linux@lfdr.de>; Thu, 20 Feb 2020 20:09:38 +0100 (CET)
Received: by mail-ua1-x93d.google.com with SMTP id o13sf865001uad.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 Feb 2020 11:09:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582225777; cv=pass;
        d=google.com; s=arc-20160816;
        b=M8hymgwo/PpdA16YRpbKkfHF8+RHKWi+JRyNwFmE4lTXcVok7jO/ulk0USksDwFV1D
         wuPoclD6DkGrf0kg/B/Cg7pLDufQ7ABE3MzeMULDsbj4pkQAyK7o8ykz9f5Fpto1u262
         quChh1ow+V0EuJpTd9qThOzIp7QdruBracE9uQISuA4FWZ4BgaU4RW5pWNERCbQiXkIF
         ZBtyddIuUNNddHSm2wBIW1deRAqfAIdXH2XqL/cYNYaAyey7fRN6JWONN6DRm5s8RO0I
         3z3mlQQCAH4nMD38JImfPWCKHJG/Y6c62loWZVPG8eN2qjr0fzXt1hod2vx7MSrYIgr6
         MYgw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=fddD9ZnNV0J5xuMvX6Y0e8EGMgHVBKyclYVHFw4tlSo=;
        b=hKO64+ENT8N/alcoCC9BLIbWUdRL4RgXih3p5IpY1n2n+YEYIjjKHdEFHU1M48HYk6
         YeujRrtJIhhqWTm3TD85C9/RkwHn0e85FS9E1qQbqDBwmJ9z4dtbkTy+xQYYx8OvYrLK
         sCi2A5yobwNqnDzmkn8kiWktIS9hEMJUf2oJtYz4q1n/Q/n7RrI4gYCrbDyqB6ykRQJq
         tnUsp2KbEWfDQWTxdrB5PDMRE36p16zdG/fGRVIsYcPMVTbkP4daN9Ol0QEZEN7ilYtP
         uY0UN0Os/8W9CK6o6TkTn9BE87e1y1UpNPQuJKEWxIuhFMrMjJqusHvK1X3ETBoUHuRi
         xsRg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IPshY4hq;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fddD9ZnNV0J5xuMvX6Y0e8EGMgHVBKyclYVHFw4tlSo=;
        b=OBQTZgG7Fd1l4Cf6Kc0onzjv6cZNeIgTuH916uSWv4iaHTcULaI5wBbtug7cD4zyOK
         4rKoacZLknkAuQflRRWLAGQUt6uFpmaN9Wbi+luqnA1KbLyrg4XwbFKMvYAkm58D0zEj
         dNk8ixPHpEK5iYeq/g6THvxbkcEqeDSONEL5rLTxXMY4OLJ3ulXHIwHJGsOvs97fNJtm
         t5ZIslMIhehox2To8d66f/JJxJ1rfpefrj7+a3g76FK0N4ixRgynz1EjElYyJJ1nui31
         Kn228d6GdPr2gPryQpHMFapXc5fk5i5w8wFklCgsAjhML6vIsr4AoHi6DxSUiL1Cppkz
         1LWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fddD9ZnNV0J5xuMvX6Y0e8EGMgHVBKyclYVHFw4tlSo=;
        b=iecq/VeGQ1UMsREWuGNTrkjHo/2KqFEfoAI2UZz2JK/YvGYc1MQENYY0Biy2lj6jG3
         eb+YDrsl1WFCTY7ystdqCrBkcQpDjBSxQPPN1h4GgUbAx4Y7EIPwQNWRmcRmDp2LDEO1
         8E1CbyHbn/GOQhp4c8pnJBuvHS7aMYmmNF0L0cYP6/lLyXLcgXiKrwSovPBJYUQtHCwL
         vWvt1h2w2NHsBcD94IFyqLeOrwVXV6/24w1/gMgCEjkuntr1BoKugWDSsV58fvfmOsA2
         pyaAir1B8XxFfF0GmhaC+M6COiBWJVpISj/oxeMzgBq31beMI81PlwVEM8YpQEN22yds
         HmKQ==
X-Gm-Message-State: APjAAAWz0Bv/B7UM953QFuZVEyCD1lM5tSpTHD5faw9Ujwc7rBz8QqCb
	suMTCzlmvTfy2AYink8PHRU=
X-Google-Smtp-Source: APXvYqyRlQqrJ86kY9oECpdTMA/oDqeDToNeq13L0NDmigM9IQtGSAHSlfZDQ9O8C0GvE0bBEAngyw==
X-Received: by 2002:a1f:604e:: with SMTP id u75mr14601629vkb.78.1582225776988;
        Thu, 20 Feb 2020 11:09:36 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:20a9:: with SMTP id y9ls1551894ual.9.gmail; Thu, 20 Feb
 2020 11:09:36 -0800 (PST)
X-Received: by 2002:ab0:70b6:: with SMTP id q22mr17508769ual.78.1582225776604;
        Thu, 20 Feb 2020 11:09:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582225776; cv=none;
        d=google.com; s=arc-20160816;
        b=emfbd3ljv5M0cObrz1IK/b1dToR6w4BF8gwUBbcLPJAH12K/jZR8Qs2SFXzK4TtZcr
         4W5Lz9ix7QiwNEGrJZWe1shJX9AXWRGQwF7zJBISPJVH1bhFXtNnvKDJF+X6BPZDcI2L
         ShR07VF+TkCNc9K0GbgOKrNekRlab8nR/0PBPq4ng4UKFjYFsLRzpS9Y5yber8tT9hY2
         pFD3W1HN/S47mOvxorrekIBmbAcJZD+pCy4ZL4rUeyuW9yTKoVmkE2AK1DMLwifWAoni
         oNTFuWv0IfHCOm+puKOya0jo4gBKUUjwiM5m0DBum9kVbR81pmI/jWoYGBaRBY7Ss5us
         zncA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=mrly7V6dbK4/Jt5t8XEVPETkT0pUle6CTcq6TpnuQrY=;
        b=oo8UZ5xD/th+E7g3/HYXhaAodvDU9sPH0ixXqzuGifYWVb8ZNIG1WIenUXBDOi6cy7
         dapjdKbTiIOrJEBtsW6TRCpgabp3RU7vSh5wL6MCslwjB8xuqdKeAdwswEOgbwje7NnJ
         NCqHZ+WqowJqJ9Qrd2hb3SBCri0e7yvapP0RGzdaIt5ih2cQj3Yox53OfT08taL06Bzs
         ml94FPXwgtOKPubsEG1cW0JuNP4SFd/uRSr1QsCLfBaOlDeNIyqt3TanNZrEFYVRf/mu
         ZUMEvB/wrGvD2G/CrXNA4CgKdidw7l+wNykxX6xqMcejxWkU6USLi0Ildkve9dYBef9G
         KI5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IPshY4hq;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id t76si11072vkb.1.2020.02.20.11.09.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Feb 2020 11:09:36 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id g3so2386694pgs.11
        for <clang-built-linux@googlegroups.com>; Thu, 20 Feb 2020 11:09:36 -0800 (PST)
X-Received: by 2002:a65:6412:: with SMTP id a18mr9118931pgv.10.1582225775613;
 Thu, 20 Feb 2020 11:09:35 -0800 (PST)
MIME-Version: 1.0
References: <f18c3743de0fef673d49dd35760f26bdef7f6fc3.1581359535.git.jpoimboe@redhat.com>
 <158142525822.411.5401976987070210798.tip-bot2@tip-bot2> <20200213221100.odwg5gan3dwcpk6g@treble>
 <87sgjeghal.fsf@nanos.tec.linutronix.de> <20200214175758.s34rdwmwgiq6qwq7@treble>
 <CAKwvOdmJvWpmbP3GyzaZxyiuwooFXA8D7ui05QE7+f8Oaz+rXg@mail.gmail.com> <20200220004434.GA5687@intel.com>
In-Reply-To: <20200220004434.GA5687@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 20 Feb 2020 11:09:24 -0800
Message-ID: <CAKwvOd=p18z8yxfuOBgpOheZOUzmgAfzvVD-5Kuz=VqKCUpOKw@mail.gmail.com>
Subject: Re: [tip: core/objtool] objtool: Fail the kernel build on fatal errors
To: Philip Li <philip.li@intel.com>
Cc: Chen Rong <rong.a.chen@intel.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=IPshY4hq;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
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

(everyone else to bcc)

On Wed, Feb 19, 2020 at 4:44 PM Philip Li <philip.li@intel.com> wrote:
>
> On Wed, Feb 19, 2020 at 02:43:39PM -0800, Nick Desaulniers wrote:
> > On Fri, Feb 14, 2020 at 9:58 AM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> > >
> > > On Fri, Feb 14, 2020 at 01:10:26AM +0100, Thomas Gleixner wrote:
> > > > Josh Poimboeuf <jpoimboe@redhat.com> writes:
> > > > > On Tue, Feb 11, 2020 at 12:47:38PM -0000, tip-bot2 for Josh Poimboeuf wrote:
> > > > >> The following commit has been merged into the core/objtool branch of tip:
> > > > >>
> > > > >> Commit-ID:     644592d328370af4b3e027b7b1ae9f81613782d8
> > > > >> Gitweb:        https://git.kernel.org/tip/644592d328370af4b3e027b7b1ae9f81613782d8
> > > > >> Author:        Josh Poimboeuf <jpoimboe@redhat.com>
> > > > >> AuthorDate:    Mon, 10 Feb 2020 12:32:38 -06:00
> > > > >> Committer:     Borislav Petkov <bp@suse.de>
> > > > >> CommitterDate: Tue, 11 Feb 2020 13:27:03 +01:00
> > > > >>
> > > > >> objtool: Fail the kernel build on fatal errors
> > > > >>
> > > > >> When objtool encounters a fatal error, it usually means the binary is
> > > > >> corrupt or otherwise broken in some way.  Up until now, such errors were
> > > > >> just treated as warnings which didn't fail the kernel build.
> > > > >>
> > > > >> However, objtool is now stable enough that if a fatal error is
> > > > >> discovered, it most likely means something is seriously wrong and it
> > > > >> should fail the kernel build.
> > > > >>
> > > > >> Note that this doesn't apply to "normal" objtool warnings; only fatal
> > > > >> ones.
> > > > >
> > > > > Clang still has some toolchain issues which need to be sorted out, so
> > > > > upgrading the fatal errors is causing their CI to fail.
> > > >
> > > > Good. Last time we made it fail they just fixed their stuff.
> > > >
> > > > > So I think we need to drop this one for now.
> > > >
> > > > Why? It's our decision to define which level of toolchain brokeness is
> > > > tolerable.
> > > >
> > > > > Boris, are you able to just drop it or should I send a revert?
> > > >
> > > > I really want to see a revert which has a proper justification why the
> > > > issues of clang are tolerable along with a clear statement when this
> > > > fatal error will come back. And 'when' means a date, not 'when clang is
> > > > fixed'.
> > >
> > > Fair enough.  The root cause was actually a bug in binutils which gets
> > > triggered by a new clang feature.  So instead of reverting the above
> > > patch, I think I've figured out a way to work around the binutils bug,
> > > while also improving objtool at the same time (win-win).
> > >
> > > The binutils bug will be fixed in binutils 2.35.
> > >
> > > BTW, to be fair, this was less "Clang has issues" and more "Josh is
> > > lazy".  I didn't test the patch with Clang -- I tend to rely on 0-day
> > > bot reports because I don't have the bandwidth to test the
> > > kernel/config/toolchain combinations.  Nick tells me Clang will soon be
> > > integrated with the 0-day bot, which should help prevent this type of
> > > thing in the future.
> >
> > Hi Rong, Philip,
> > Do you have any status updates on turning on the 0day bot emails to
> > the patch authors in production?  It's been quite handy in helping us
> > find issues, for the private mails we've been triaging daily.
> Hi Nick, this is on our schedule in a new 2-3 weeks, sorry not to update
> your in another mail loop earlier.

No worries.

>
> What I plan to do is to cc you for the clang reports when 0-day ci sends
> to kernel patch author. If you notice something may be related to clang (since
> we always integrate newer clang version), you can help filter it out. How
> do you think?

If you would kindly cc our mailing list "clang-built-linux
<clang-built-linux@googlegroups.com>" we'd be happy to continue to
triage and provide suggestions.  That level of indirection better
allows us to deal with subscriptions and change of email addresses
without having to disturb you.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3Dp18z8yxfuOBgpOheZOUzmgAfzvVD-5Kuz%3DVqKCUpOKw%40mail.gmail.com.
