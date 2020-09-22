Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBJNBVH5QKGQEA7HAERQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x340.google.com (mail-wm1-x340.google.com [IPv6:2a00:1450:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id BDEC527491F
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Sep 2020 21:29:41 +0200 (CEST)
Received: by mail-wm1-x340.google.com with SMTP id m19sf1290249wmg.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Sep 2020 12:29:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600802981; cv=pass;
        d=google.com; s=arc-20160816;
        b=OXVMf7jf8rE9hE3GNJKqaBHBaRtd/ZBl59ZiYIsAolabpy4mlsqxUhqBybzPo2ygv3
         HKxWlhSOQv0mRA4xi0Rfq6898RnrgIYkEAzNDOgVAsZWHfSBwbcTU1Znhj4DyoISxQAC
         eNao30R3FPJKNhnJ3GYOBtPXqbqa2GMwu9OdE44TOe0LvlCU73J5SFbrNrlKheeLwCy4
         nCBMb69qfCeBO+2m0zIZc4gzRwT5jyvh/ofqf4bjgLQpmxxv1tPJkHJXNeJ0PuJk4wnj
         kio9OEMoU4FPJzewbEW4SvUmKFHI3flDXyF2V/kCDAL/ouRPWoZxWkNqgwkL2P+Q8Z+M
         v49A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=9dV+lrFH81cH7NFOuSXnZOtXhfs3lm5fpKh+8nldj+E=;
        b=k6TL1GftGqN1Jxd8X7x21vxSooO8RKOVjT8KXgdfyb6r7Jzj76YKWWvkOOZ59Q2pRG
         o5AwkX5QkdCh75mmf+9PhO2yTcV6Ew5G4YuVFUM3Ya8bjxuykq0jTdCkDsgb+gzy9w1t
         jYxTiiA/AGeJERxjfg62boFQuy7D4ARmN8s+RvO9XEV2bzfMMiSZ+Ud1W1HkGkKKQ/L5
         lMfnqCOVMbwHVVGhn32dud+10u5pnZLDHrXY7PJO5RySwuu4KJLopHR5SIRoYd4VCjmK
         3uno4rUQkzHXTjXG6vVmKu6yudmu6sWqeAd79lmVuoelDaRxJyfhAblOpMHgsjiQGN1S
         MzRw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=PAFHpidZ;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9dV+lrFH81cH7NFOuSXnZOtXhfs3lm5fpKh+8nldj+E=;
        b=WgJT48VsWFDm2sglwhtEPnWUXCfRo3Qr0lFKEXK23izsSeydl2/IuKGb3v22JYx9rQ
         z+g8wLldg965lDKZwEG7L6tKiR7IwQLGafP7tfRASFpg7F+cvmXsw7A7SI7LeTS1hgu/
         c3Om/US7dZsXC7i1AwkcmXy1O1Jo110LM0tLsSzFz6Ne7SWVOrMAXDgcMLBrspZrRM/n
         DEKgY+luW4mXLJJX50wl1IXloKE5MBvog9icEdaj9upmYd4V0vFNpY1G7rYafLm13Fu3
         0A3ReWKTmOzeidgEDZFvgRKbnAF4100rEAaj3DPMw/W7O+DAEV/c8k1FLa0BxT1xJ+8S
         Wmsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9dV+lrFH81cH7NFOuSXnZOtXhfs3lm5fpKh+8nldj+E=;
        b=bmoRcprp0mMMf5ctVdmnVJvFBkrBiGdoHWvTFgeTbiLbayyoNNSstavpRHop38t5H2
         7DEvfYCPVh6r0U7l33TQ4BEHR2TdsOXqfVSMXkuj2FWOwdiuraX3eCjvgGf56EA1K0eL
         F/KFI+FaPmlDMskIwEKVdrWdLnd4GfdK6OFyPfMFambSAwc8xC/gbLhaqwJFI5S3FRHd
         HoDtK1QNRipsG3YR9SIISRRWuHILIyF3/6WZiT1weBmo6R7dZq6mfriP7ZQio+0TI40g
         s1tLv8pMeALCEPAbosO1Yxx0RTdCr1aa7RpMD4lCNfxAFb+5vH66IzRFAhXVbrZxIlb7
         m1Yg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533gGWv75IHWtalpxudDr8+TN0rlMuw3q/aptiSD5o/a4/bnhlLu
	emavTc4gEQnPsIY2mdo25ZY=
X-Google-Smtp-Source: ABdhPJwtx0b9sO5Ach8FCGfBbSkjsODA0Ht0678Ul3vvMLxDMMys2/gKUle7YfIlBKWlRaS5wB9+Lw==
X-Received: by 2002:a1c:2d86:: with SMTP id t128mr2706214wmt.189.1600802981451;
        Tue, 22 Sep 2020 12:29:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6000:8:: with SMTP id h8ls618455wrx.3.gmail; Tue, 22 Sep
 2020 12:29:40 -0700 (PDT)
X-Received: by 2002:a5d:6912:: with SMTP id t18mr7405273wru.326.1600802980600;
        Tue, 22 Sep 2020 12:29:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600802980; cv=none;
        d=google.com; s=arc-20160816;
        b=COTGVZFyBEh3+44d5U4tyUAKIwgvRgGmGjrnVyr128ssawlFnklcRZXfgdRxdVbmv0
         P6927wosC2SBSY9E61PamZVNjjxnYyQVonCX4v77YfsVlK14wiwZhXVFvUcP3wf7vf7n
         T8S4FecGJH4ZBkXeO6unJopzyOlOaD1qr9VH7u/KG3B/vyzYE78ESr9zqM1Y55C0jqif
         aopAV/8RDT3vMRNJ8pvQIqj7t06vlACqjawXPgawoEPnW4qMlV30abv8UdShch6NgoGr
         6FjKonyk/nPBZIStNk9pku+CraH/JuIaaV+qDGGwcrrWYkOo2PHcaPDb97rI5qrnOMZu
         oTOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=sDjTaVZjD8FQHQZVC8YDJ3mI9VAs4nKAd6yLsx8Kys8=;
        b=mQGqj6vOPInKofST3XEkFetFPK5/c5X7BVVTSY0aqd5w6a5R/VFX9jKC1dQd3zT3ap
         x+O0dLtAps9QU3yvSMeLAR5mT6RBShfAML/YEi4hJykYg4l9wc+AS4+w4ZLV9CeJFi92
         Gh4fl7y0RynatBOleOJacdMFHL5STJkM6kg9rUAfLJTz/BzGzX5OShaBDeTMxJjIrYdM
         WAF9MNw6iaFMVZID0BduiZOigpITzBYbNOillJj9G/aLlfqEqZf0c8quAbYT6xADR2SG
         C0QmWyEuXmrLsXZNWLxMuaOPmfFGudBMFeZEERX70Z/CvuuakWmLJgM8jb+2ZjXOxnV+
         XTRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=PAFHpidZ;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [5.9.137.197])
        by gmr-mx.google.com with ESMTPS id d19si118965wmd.0.2020.09.22.12.29.40
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Sep 2020 12:29:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) client-ip=5.9.137.197;
Received: from zn.tnic (p200300ec2f0bfb005490ac4baf047eb3.dip0.t-ipconnect.de [IPv6:2003:ec:2f0b:fb00:5490:ac4b:af04:7eb3])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id E092F1EC027B;
	Tue, 22 Sep 2020 21:29:39 +0200 (CEST)
Date: Tue, 22 Sep 2020 21:29:34 +0200
From: Borislav Petkov <bp@alien8.de>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>,
	Dmitry Vyukov <dvyukov@google.com>,
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
Message-ID: <20200922192934.GR22660@zn.tnic>
References: <00000000000052569205afa67426@google.com>
 <20200919110831.GD7462@zn.tnic>
 <CACT4Y+ZhofJhNjfav22YNVpxtH4_+3Qaut6rOiqv4MLNU5mcEg@mail.gmail.com>
 <CACT4Y+b9ZCKJkOmwbEC6sZxEQ-9g2g=-v4+X0aWv7AsrZo7utA@mail.gmail.com>
 <CAKwvOdmKcn=FNzwtBZ8z0evLz4BXgWtsoz9+QTC6GLqtNp1bXg@mail.gmail.com>
 <20200921221336.GN5901@zn.tnic>
 <CAKwvOd=E11KriNqeVv2-Tvq5sQy=4vyBzDEH22D5h5LgBeFsVw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=E11KriNqeVv2-Tvq5sQy=4vyBzDEH22D5h5LgBeFsVw@mail.gmail.com>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=PAFHpidZ;       spf=pass
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

On Tue, Sep 22, 2020 at 11:56:04AM -0700, Nick Desaulniers wrote:
> > Gnight and good luck.
> 
> Ah, that's a famous quote from journalist Edward R Murrow, who helped
> defeat Senator Joseph McCarthy (Murrow's show See It Now dedicated a
> segment to addressing McCarthy).

Good. Finally someone has recognized this - I use it from time to time
in mails but no one would pick up on it!

And how relevant it is again...

https://www.youtube.com/watch?v=vEvEmkMNYHY

> Sometimes I fund uncanny parallels between claims of what a compiler
> can do on LKML "without proper regard for evidence" and McCarthyism.
> Falsifiability is an interesting trait. That's why I try to advocate
> for sharing links from godbolt.org as much as possible.

LOL. Good one. :-)

I'll take a look at the rest of your reply tomorrow because brain is
fried for today.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200922192934.GR22660%40zn.tnic.
