Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBB2XCZP5QKGQEXQWZQEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 55B4727BF9C
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 10:33:48 +0200 (CEST)
Received: by mail-lj1-x23d.google.com with SMTP id 26sf916175ljp.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 01:33:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601368427; cv=pass;
        d=google.com; s=arc-20160816;
        b=JKdIaukZ/7zYJE9nzQ22+O2tEGkXhpEIiHzq5kaqiES3RIoXIt3t4h8Dz0huGX+uaC
         CqU2RxoBY5LfXV8DbqZ/BHBtVqOqLA5y9ia1M0MPC1aN3wjLJEzQlRQcS4NKyhgj+mwd
         MDpZRru8MxyGAIsVjIzVMFcFt25wSHoaL6+2XzQz1xvzDIW/wprwSLv+1YvLCjB7dMiF
         Hq7We00HJbHunqEMboi6pmFxOJzf8K2thl/YQS+oPFIPTKliWMCE4aHXCkyB8Tv4rujI
         sudARiWzp2JRnIKSz+kE+mp9uJeFDQRT1kS7TDH/yZpXv97qFCZdI6ePe4gQ21E/2sFZ
         gyiw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=iWLYMHqJv1vWNQk8wrZik1XrCTq8jLBna3DHGZuoJDM=;
        b=H0IqZDPVPnWL3yhz+mAKXA2hGU8gADpcXAfhcZQO+SfqH/1irpDEx8wi2DB8W4R9fH
         T9RRAkoUJz7R9cybK5y27zRVvgGjYUUeAcf9j9eEwae2Ccsf/57yJW2idgV7O5Y4NlPI
         rK8ChXi5KXE5n3LngLlCvZCOs0tigt9sp4cEuf9kA6tz0IVgSMIWPCjfcxbdWHQkjfVc
         8502FatcIBonw1lwhdcroKmVsgQ5sv4Pn2+fvPfaOXGiWl4gtjt7M+lvgyNuhOwZuGlI
         S5AkoyL8FGAFf4eg1aB5DpCiJVHCIJl75ypyOsU13D6SV1oNMVgp/lKCh9Hw9dtFZLNI
         wrDA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=ApxB9Ise;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iWLYMHqJv1vWNQk8wrZik1XrCTq8jLBna3DHGZuoJDM=;
        b=AReGaK8af5D1xtl4a99O7I3PQspbMhQ+mqB39u9ZGnowMiKV32IHXcbUgZnAuIK0pE
         tlgsDE1dRr4s/q/sINXjiH5HsEoz4qDaEi6KgU9q6x11qGf0oW1m3vJ5JP5Z3sPjbcAT
         00+czIWHOgic7ftrAABjgLa8JidOuAZkipbI83cSl5YPwLZZiUgC9/YlnqEaO5M1uIB7
         YQ2IHiJLi4h9OpQM/0Zk4O/tQtZxpGYYcXWsYFs4f2V+ab9QA0mri97MQXE66Pdo2Yph
         agi+pu7pyoIzznOyn1JSvCbIAgpzvBxJxjklhZjJF5H/rA9TmzUYDCeZPs1Nr65S06Xj
         lYDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=iWLYMHqJv1vWNQk8wrZik1XrCTq8jLBna3DHGZuoJDM=;
        b=kJB0A2yFX8mmciJVnbRnjaqSu/+V2Ox+aswV4S5xcR3FdgNUGhzW0OHphu2z+aIh8M
         Z5pD4Fymo5MXVrpxUFgTIxYP7DjbDiHkmHNQ6/cdnN9H/E8oixfGJDeSZgQe/DBG9ORo
         k+QZ7898ts7V/sYGebKEuNnnUmImGGZXA5Ks76HDLaS4D31CsIXRgWrpx3H66laAh5r7
         Bm/elC9cngzmtMnGsI75rGmAPk7BSdhio2JbvuQoTlfeFNUfQI359f3sF/YKYOYIX3jB
         tueLapIAKsIMbA9RjA60Hx/v7HmX4deOA9mOU+xFieaBrN09zEhLcpNiEORAMCt1Mr2U
         ofOA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533dwbMXDFn1cxc4vSwHBZ2UrwxrEOVS58ojYk4dPPNsS8Q59FTy
	C8MgLy6904Xl+lmDTTnYlME=
X-Google-Smtp-Source: ABdhPJwBk/Bd/V+VDd3ZlGpQJn0NwOwG6/FhsZVLRHNylGy3UmlewX1hJiZdm/dCL4AHGqT7Sjznjw==
X-Received: by 2002:a2e:760d:: with SMTP id r13mr757873ljc.67.1601368426826;
        Tue, 29 Sep 2020 01:33:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:93c7:: with SMTP id p7ls34387ljh.11.gmail; Tue, 29 Sep
 2020 01:33:45 -0700 (PDT)
X-Received: by 2002:a2e:700d:: with SMTP id l13mr754749ljc.230.1601368425595;
        Tue, 29 Sep 2020 01:33:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601368425; cv=none;
        d=google.com; s=arc-20160816;
        b=cJ9Lu5NhcCRP7v2L/ufqAZK6wDJTSfcdXWXAWveW9pqItKzvVQYZeTrH+2piPj6up/
         Lw1soMOwLk7hzSEeiwlAHwvxsq3MGIHTvDi2H9wEGl7qYiD1n1NWsl2Whv6NorQb7WVE
         DbKrOWMoY0+pXbsyXmOqLOhKBuBlu6AcQhMhAu9l7ZuiqdTx0X0rVXhYr8qWm4SZI/40
         2OuokK2jBvV75npx2+4lTNwhsZndk2GiVMsaG+ln7mD899BnXhWyoclCs59wi/m3Ewv6
         J22OcOGdgNkaDzG975sQYN9IwgqU7eChUbz66rc0b1TCzHEcekcxN+7EPabqReSP5vbV
         YwcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=zRkl9psdawzE3dNwfpL675Lq6bA7FNwxEYbUX2Cq0Jc=;
        b=tpShz6r4agsQGwpzN+7D/82xI3xk2saBURyZFY1aN6Hc5BLY2IXBSxedPTlqc4G2Gw
         mvMzCoQhwIJZdKHQcCKeeA6ZM5cHD1XwhEFL1YeAgEF9+2iBxdcqBYMNGZb/bA0FS4ox
         mVC/hvrqCy1T5OdtgXDuebduri5gw3oSpEstlqvBeFSZi56rSh4ritsOSVOXz1oMe61k
         prMSwJQz9G5/Jjq8AvInAQl6UNOseIURef7d6KT2VdJ0IqC5WF+tdiFFmUqtABSUwd7I
         pwFwHvybBuhyvtZYBcLKpyFcOwFczmm2PTHU84XW1aKs7YKASTDy2ybSYkjuap7DAp0z
         s7Ng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=ApxB9Ise;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [5.9.137.197])
        by gmr-mx.google.com with ESMTPS id f23si242219ljg.8.2020.09.29.01.33.45
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Sep 2020 01:33:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) client-ip=5.9.137.197;
Received: from zn.tnic (p200300ec2f0ead00a43ad9adcc23f8e0.dip0.t-ipconnect.de [IPv6:2003:ec:2f0e:ad00:a43a:d9ad:cc23:f8e0])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 86BC31EC0380;
	Tue, 29 Sep 2020 10:33:44 +0200 (CEST)
Date: Tue, 29 Sep 2020 10:33:36 +0200
From: Borislav Petkov <bp@alien8.de>
To: Dmitry Vyukov <dvyukov@google.com>
Cc: Alexander Potapenko <glider@google.com>, Marco Elver <elver@google.com>,
	syzbot <syzbot+ce179bc99e64377c24bc@syzkaller.appspotmail.com>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	"H. Peter Anvin" <hpa@zytor.com>, Jiri Olsa <jolsa@redhat.com>,
	LKML <linux-kernel@vger.kernel.org>,
	Mark Rutland <mark.rutland@arm.com>, Ingo Molnar <mingo@redhat.com>,
	Namhyung Kim <namhyung@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	the arch/x86 maintainers <x86@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: general protection fault in perf_misc_flags
Message-ID: <20200929083336.GA21110@zn.tnic>
References: <00000000000052569205afa67426@google.com>
 <20200927145737.GA4746@zn.tnic>
 <CACT4Y+Zxt3-Dj6r53mEkwv24PazPzTxQ7usV1O+RB0bk2FzO8g@mail.gmail.com>
 <CACT4Y+ZZH76qg810RzGp6FDLTxJWVqZgkrXSxqgq7AjpPYG9XQ@mail.gmail.com>
 <20200928083819.GD1685@zn.tnic>
 <CACT4Y+bPFASnmFRKpQ=KY1z+RnTbGmkPU3aikzdXZpKkV03D9A@mail.gmail.com>
 <20200928085401.GE1685@zn.tnic>
 <CACT4Y+Z4Y6SJJ6iYBhVRiknrWBAD6gGhQXiXLhxPniDNBFJGsA@mail.gmail.com>
 <20200928202353.GI1685@zn.tnic>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200928202353.GI1685@zn.tnic>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=ApxB9Ise;       spf=pass
 (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted
 sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=alien8.de
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

On Mon, Sep 28, 2020 at 10:23:53PM +0200, Borislav Petkov wrote:
> 2020/09/28 22:21:01 VMs 3, executed 179, corpus cover 11792, corpus signal 10881, max signal 19337, crashes 0, repro 0

Ok, so far triggered two things:

WARNING in f2fs_is_valid_blkaddr	1	2020/09/29 10:27	reproducing
WARNING in reiserfs_put_super		1	2020/09/28 22:42

you've probably seen them already.

Anyway, next question. Let's say I trigger the corruption: is there a
way to stop the guest VM which has triggered it so that I'm able to
examine it with gdb?

What about kdump? Can I dump the guest memory either with kdump or
through the qemu monitor (I believe there's a command to dump memory) so
that it can be poked at?

Because as it is, we don't have a reproducer and as I see it, the fuzzing simply
gets restarted:

2020/09/29 10:27:03 vm-3: crash: WARNING in f2fs_is_valid_blkaddr
...
2020/09/29 10:27:05 loop: phase=1 shutdown=false instances=1/4 [3] repro: pending=0 reproducing=1 queued=1
2020/09/29 10:27:05 loop: starting instance 3

so it would be good to be able to say, when a vm encounters a crash, it
should be stopped immediately so that the guest can be examined through
qemu's gdb interface, i.e.,

-gdb tcp::<portnum>

or so?

Thx.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200929083336.GA21110%40zn.tnic.
