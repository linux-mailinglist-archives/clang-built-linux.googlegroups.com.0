Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBE5LR2EAMGQE4BS2L3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 726F73DB315
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 08:00:52 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id x14-20020a170902ec8eb029012bb183b35csf7038067plg.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Jul 2021 23:00:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627624851; cv=pass;
        d=google.com; s=arc-20160816;
        b=UYzqmdLXV5XRCion65poWyYFb6jYw4iiRje48aX5ovXMkY1w0ZZrvtgsxzYZJgy0Ul
         Zq0n22anwdomWV4Ldai8vxnBBzBiwOuI1qT6p/oFDzworY66UmK+S2YFd0ek3UNP3jmx
         kEPtMP5h5uj/pNPX4sMJPhPJ1got1bZsu8+bNfU9dUzRX5SdDGtkEriv5vIn/32x7OT8
         7LP2b5tPVwrADludxjFo8EWVETL4ca592sDSxNB8epgIs5q09PBJ41J1uCQIvL3XTlsL
         yqyepFNJjJGtzjirvEAHqkdcf2UHBmwiwNVOzwkm6fOHF5WVYBzTGk0j4C54dAgPsIEC
         B5Iw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=7tDwJvXP9LZ0Wn0NFVnn3zIq6dEVG2XAQ5MLSXp8698=;
        b=OzoF1SJE4PhsFFgOAaPwN+pAVCpZJ+sq4dm0u/p6A9DC8U5rkTP+WM0CJJDk380u5L
         jOcedoka9UUc/yx1HCkXYrefyMvzW/v64Wqy8MGSUtJaZA0jmtRGr8BPYIkwbjiNWK9N
         NGGXSGTSTj4BcD/J7RHMkAiYIsqqUMIlku/W/EX+w94nD6U1syXLU+wlkcEngXWdMFCW
         3hckwFuEZMYSQlVdVEaJRrdCVXAmnG9DzP3mTrCaC2/gKepT3fJRQmPiYqtR4d2s0dI7
         WLWK4Hrm9HRhq9/1ltKGzHHFaM+0GlQPDqssAsYQbCi8yDu5CkT0QV98m79n4drrbcAg
         0QIA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Fh6OENhJ;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7tDwJvXP9LZ0Wn0NFVnn3zIq6dEVG2XAQ5MLSXp8698=;
        b=gHcqcGUI+mwn97E1wdSvTaADK5nPr4felN+aM5H2Ibd3i5NL1tAovvu7gv5AGF6khW
         Ts5NpZPrfE6iBvuPB8Rg2+CNpimZeEcnjZIHNPo0Yaos4qCQveH57q2ff1/UF6CcChCh
         dxgb24Pwyftd3FU69sCq5/P+CvEUTK4lrDdna/jQuT0tz4gNcSRChyNb82Rn9ojzUCa/
         wHeanfq98DGBMG3a4pJYFmIJIMAf642UR9OOH9iwgllVooADZWALBR96tinjKTx24D4Y
         AEs8OsQNA/R8QV/4Vj359l8oaEA/UUdT1O/Hh/xm2WyV+wtr8+Ggo5UIp0Kf/nJFVr0F
         ZXVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7tDwJvXP9LZ0Wn0NFVnn3zIq6dEVG2XAQ5MLSXp8698=;
        b=s/qZpZTr8Tu2vuNksVOoJOXtMX7zNC/SgdjuDCl7zCLmzyLkyuDPCz8B4PDsv7WKxe
         vIZQdBEF6irQUjZhCE6SGkgJ2L6kCprphStEO4EQFPf5CZ9AYrQFQc/5mfUOpEFiwe5V
         fGU/vEMYKkcu7TM3injuEktSgSzbnbyeEv104SsUgKQ0l9iopOK9aroo7wyMYQGqs6Eq
         jC+MJRjFBCmXFXOUDYS6C20v6LMxemRHrP0v5utZJdZbAOIRv1l4R72yF1Rf3vdQ5L7U
         s7jAkgxcCSpx9tn5ENUfO3uNTV2beF5s1JRsQGn3HljUlKeiOcJ3DcXwVqrpM/aFNkJY
         QvTA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530SsZx6r/nZOyeFbHYa3EuFqHuDszskvHrbIL28W4A3mVltu0Wx
	RMiAx+5XynEeVDPlfh/yU6Q=
X-Google-Smtp-Source: ABdhPJwBnjQaWvavRmSN73wnOLo3mw0wUV5ZPrQwNWUDYcXIjSGTthBqP0bAGlzfH+SFEKLhAZXrCA==
X-Received: by 2002:a17:90a:ab07:: with SMTP id m7mr1279782pjq.27.1627624851109;
        Thu, 29 Jul 2021 23:00:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:5256:: with SMTP id s22ls302160pgl.11.gmail; Thu, 29 Jul
 2021 23:00:50 -0700 (PDT)
X-Received: by 2002:a63:ef12:: with SMTP id u18mr837436pgh.331.1627624850479;
        Thu, 29 Jul 2021 23:00:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627624850; cv=none;
        d=google.com; s=arc-20160816;
        b=iT1AJbJS/KGAghvV/bj+halSM1gblfclvHs8UksrNOi0HCWaIZlXytTHBH+DJcJvMw
         8QJ5Nj+Qpw5PyGP9iYD9FMcRIDl7i/hysJpZTQMiCxyyrlhwShoydkMBxjMNn6xuzlAA
         QlXkXfTXVpdxwZ+0rWkTyA+RCwtzaBxs/9nuGiQPJVhVq/JzTtquTA5KgOwLspo/Fkay
         Qnop8CjfrGf/EvOGxkQLFYqVxCjHISn+nKi4fPgq9pOHnnNEIqd5jbSB2dGCuG5yZyak
         Y/ypqgvDvU1JCGUChj2UePxvjJqGLKMKbz1dXvIdq5UKqk+1prAvfUuYMdeq+5ct5zlV
         XNkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=AkhIE+Z/B9o86qJ2h9HZNEp9cxXi2bxRLjCixTXYrfc=;
        b=ulpMvHhcVjFY7ubUIOAOWcgrPQSqQ4oVpnhf8jvDBhErOnAAtSgOoZermB2G47xvAk
         NxOB+F8zT0J6QSbFN1yXFSM8J1x3z5MtfvU+1dHZcO/m0cJ+m/SyQZHVb2NqMALrI6jE
         KIQbYh38o71xtXIYKOKN+alRrRCACfAiFgEANqKYDqiJ4+Fls1JdZVjnIVFFivkK5Htj
         MNMVS9SQU2eTypqtWwDoNvjAUuomqF2fxpzKjXbAcLA3g65P5c5evSmtFVr0O5pXWKm1
         gcD/E2fFi7W70ICei05qKGq31zN6TZoepiL1fNxnVLq8hxCG5aebcKg49DAKpEGKxtXn
         3OCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Fh6OENhJ;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com. [2607:f8b0:4864:20::1032])
        by gmr-mx.google.com with ESMTPS id 14si77290pjd.0.2021.07.29.23.00.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jul 2021 23:00:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032 as permitted sender) client-ip=2607:f8b0:4864:20::1032;
Received: by mail-pj1-x1032.google.com with SMTP id m10-20020a17090a34cab0290176b52c60ddso12812587pjf.4
        for <clang-built-linux@googlegroups.com>; Thu, 29 Jul 2021 23:00:50 -0700 (PDT)
X-Received: by 2002:a17:902:a411:b029:12b:a4eb:5fcc with SMTP id p17-20020a170902a411b029012ba4eb5fccmr1190139plq.22.1627624850214;
        Thu, 29 Jul 2021 23:00:50 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id a22sm723870pfv.113.2021.07.29.23.00.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jul 2021 23:00:49 -0700 (PDT)
Date: Thu, 29 Jul 2021 23:00:48 -0700
From: Kees Cook <keescook@chromium.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dsterba@suse.cz,
	Bart Van Assche <bvanassche@acm.org>,
	linux-hardening@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev, linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com,
	nborisov@suse.com
Subject: Re: [PATCH 01/64] media: omap3isp: Extract struct group for memcpy()
 region
Message-ID: <202107291952.C08EAE039B@keescook>
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-2-keescook@chromium.org>
 <20210728085921.GV5047@twin.jikos.cz>
 <20210728091434.GQ1931@kadam>
 <c52a52d9-a9e0-5020-80fe-4aada39035d3@acm.org>
 <20210728213730.GR5047@suse.cz>
 <YQJDCw01gSp1d1/M@kroah.com>
 <20210729082039.GX25548@kadam>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210729082039.GX25548@kadam>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Fh6OENhJ;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Thu, Jul 29, 2021 at 11:20:39AM +0300, Dan Carpenter wrote:
> On Thu, Jul 29, 2021 at 07:56:27AM +0200, Greg Kroah-Hartman wrote:
> > On Wed, Jul 28, 2021 at 11:37:30PM +0200, David Sterba wrote:
> > > On Wed, Jul 28, 2021 at 02:37:20PM -0700, Bart Van Assche wrote:
> > > > On 7/28/21 2:14 AM, Dan Carpenter wrote:
> > > > > On Wed, Jul 28, 2021 at 10:59:22AM +0200, David Sterba wrote:
> > > > >>>   drivers/media/platform/omap3isp/ispstat.c |  5 +--
> > > > >>>   include/uapi/linux/omap3isp.h             | 44 +++++++++++++++++------
> > > > >>>   2 files changed, 36 insertions(+), 13 deletions(-)
> > > > >>>
> > > > >>> diff --git a/drivers/media/platform/omap3isp/ispstat.c b/drivers/media/platform/omap3isp/ispstat.c
> > > > >>> index 5b9b57f4d9bf..ea8222fed38e 100644
> > > > >>> --- a/drivers/media/platform/omap3isp/ispstat.c
> > > > >>> +++ b/drivers/media/platform/omap3isp/ispstat.c
> > > > >>> @@ -512,7 +512,7 @@ int omap3isp_stat_request_statistics(struct ispstat *stat,
> > > > >>>   int omap3isp_stat_request_statistics_time32(struct ispstat *stat,
> > > > >>>   					struct omap3isp_stat_data_time32 *data)
> > > > >>>   {
> > > > >>> -	struct omap3isp_stat_data data64;
> > > > >>> +	struct omap3isp_stat_data data64 = { };
> > > > >>
> > > > >> Should this be { 0 } ?
> > > > >>
> > > > >> We've seen patches trying to switch from { 0 } to {  } but the answer
> > > > >> was that { 0 } is supposed to be used,
> > > > >> http://www.ex-parrot.com/~chris/random/initialise.html 
> > > > >>
> > > > >> (from https://lore.kernel.org/lkml/fbddb15a-6e46-3f21-23ba-b18f66e3448a@suse.com/ )
> > > > > 
> > > > > In the kernel we don't care about portability so much.  Use the = { }
> > > > > GCC extension.  If the first member of the struct is a pointer then
> > > > > Sparse will complain about = { 0 }.
> > > > 
> > > > +1 for { }.
> > > 
> > > Oh, I thought the tendency is is to use { 0 } because that can also
> > > intialize the compound members, by a "scalar 0" as it appears in the
> > > code.
> > > 
> > 
> > Holes in the structure might not be initialized to anything if you do
> > either one of these as well.
> > 
> > Or did we finally prove that is not the case?  I can not remember
> > anymore...
> 
> Yep.  The C11 spec says that struct holes are initialized.
> 
> https://lore.kernel.org/netdev/20200731140452.GE24045@ziepe.ca/

This is, unfortunately, misleading. The frustrating key word is
"partial" in "updated in C11 to require zero'ing padding when doing
partial initialization of aggregates". If one initializes _all_ the
struct members ... the padding doesn't get initialized. :( (And until
recently, _trailing_ padding wasn't getting initialized even when other
paddings were.)

I've tried to collect all the different ways the compiler might initialize
a variable in this test:
https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git/tree/lib/test_stackinit.c?h=for-next/kspp

FWIW, there's no difference between -std=gnu99 and -std=c11, and the
test shows that padding is _not_ universally initialized (unless your
compiler supports -ftrivial-auto-var-init=zero, which Clang does, and
GCC will shortly[1]). Running this with GCC 10.3.0, I see this...

As expected, having no initializer leaves padding (as well as members)
uninitialized:

stackinit: small_hole_none FAIL (uninit bytes: 24)
stackinit: big_hole_none FAIL (uninit bytes: 128)
stackinit: trailing_hole_none FAIL (uninit bytes: 32)

Here, "zero" means  "= { };" and they get padding initialized:

stackinit: small_hole_zero ok
stackinit: big_hole_zero ok
stackinit: trailing_hole_zero ok

Here, "static_partial" means "= { .one_member = 0 };", and
"dynamic_partial" means "= { .one_member = some_variable };". These are
similarly initialized:

stackinit: small_hole_static_partial ok
stackinit: big_hole_static_partial ok
stackinit: trailing_hole_static_partial ok

stackinit: small_hole_dynamic_partial ok
stackinit: big_hole_dynamic_partial ok
stackinit: trailing_hole_dynamic_partial ok

But when _all_ members are initialized, the padding is _not_:

stackinit: small_hole_static_all FAIL (uninit bytes: 3)
stackinit: big_hole_static_all FAIL (uninit bytes: 124)
stackinit: trailing_hole_static_all FAIL (uninit bytes: 7)

stackinit: small_hole_dynamic_all FAIL (uninit bytes: 3)
stackinit: big_hole_dynamic_all FAIL (uninit bytes: 124)
stackinit: trailing_hole_dynamic_all FAIL (uninit bytes: 7)

As expected, assigning to members outside of initialization leaves
padding uninitialized:

stackinit: small_hole_runtime_partial FAIL (uninit bytes: 23)
stackinit: big_hole_runtime_partial FAIL (uninit bytes: 127)
stackinit: trailing_hole_runtime_partial FAIL (uninit bytes: 24)

stackinit: small_hole_runtime_all FAIL (uninit bytes: 3)
stackinit: big_hole_runtime_all FAIL (uninit bytes: 124)
stackinit: trailing_hole_runtime_all FAIL (uninit bytes: 7)

> What doesn't initialize struct holes is assignments:
> 
> 	struct foo foo = *bar;

Right. Object to object assignments do not clear padding:

stackinit: small_hole_assigned_copy XFAIL (uninit bytes: 3)
stackinit: big_hole_assigned_copy XFAIL (uninit bytes: 124)
stackinit: trailing_hole_assigned_copy XFAIL (uninit bytes: 7)

And whole-object assignments of cast initializers follow the pattern of
basic initializers, which makes sense given the behavior of initializers
and direct assignment tests above. e.g.:
	obj = (type){ .member = ... };

stackinit: small_hole_assigned_static_partial ok
stackinit: small_hole_assigned_dynamic_partial ok
stackinit: big_hole_assigned_dynamic_partial ok
stackinit: big_hole_assigned_static_partial ok
stackinit: trailing_hole_assigned_dynamic_partial ok
stackinit: trailing_hole_assigned_static_partial ok

stackinit: small_hole_assigned_static_all FAIL (uninit bytes: 3)
stackinit: small_hole_assigned_dynamic_all FAIL (uninit bytes: 3)
stackinit: big_hole_assigned_static_all FAIL (uninit bytes: 124)
stackinit: big_hole_assigned_dynamic_all FAIL (uninit bytes: 124)
stackinit: trailing_hole_assigned_dynamic_all FAIL (uninit bytes: 7)
stackinit: trailing_hole_assigned_static_all FAIL (uninit bytes: 7)

So, yeah, it's not very stable.

-Kees

[1] https://gcc.gnu.org/pipermail/gcc-patches/2021-July/576341.html

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202107291952.C08EAE039B%40keescook.
