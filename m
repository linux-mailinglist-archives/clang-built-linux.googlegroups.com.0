Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBW4HT3VAKGQEAX3GSRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 88DE880FF1
	for <lists+clang-built-linux@lfdr.de>; Mon,  5 Aug 2019 03:18:19 +0200 (CEST)
Received: by mail-wr1-x43d.google.com with SMTP id h8sf40041580wrb.11
        for <lists+clang-built-linux@lfdr.de>; Sun, 04 Aug 2019 18:18:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564967899; cv=pass;
        d=google.com; s=arc-20160816;
        b=v+rhWdBlZ9WtjXn2o75Q8gW3hQtmuuCsHNI2sqL7l4WI1vbgI4C1fASSrxy/mmhOe5
         /8Cpp1FVsxVEanKzgu19bk5FnXaQSxK8F6/Nlb6HoVeOS6stQt5W//NL4WMNsNch8giK
         qbihq7Q36+pxluVPpa27zm/EzmftC1g6E5czhVi52qs64usin6ED01XUWoJiF3cyk1Ip
         bYbnfVU5tJL/eWv2gZk6zLaHZwS6ftfKnyxd15VDhorHpLQVcXg0+wme7AcI4ubDlxvS
         6hVDxm3TbN0WQggZp4OKmk+XgLikH00rOgQXt0l+zaiYxay5pbCKVxqlcVaokonMgl2m
         igEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=S4fBDU3hP3Y5mMcBhDp4Jdv9MzX+Q1x44FDLoGIxJSA=;
        b=Vp+mBGNGvJgStLOSZum6odxXsJ8hrvmG+XD4SGrsxYo2kl1COTYfq+XJs19I4TT3vc
         zsmtv/ckZKdFLiPCxqUWot3epzqu5Q1T1BAHybGRmppcAQmQLbLAEB02AB/C/R7HgWcQ
         0bQiIU/CjHDktHjtd5DE1Xdc40Yv1fTAiXgRmtK0WSeCOrgzJGokjt2c0y+xxEvKx3z0
         VK+4FBrmIgolBesa/OVncKQVdbLCWOTQnQ2/HIN4EW5OmnLWX3ayW+a14HO+TXUiD57/
         8q1UVQh7ZKkBlMNsKDp6fi09bEyCaNzFQjt9lnEjtqorMkzCXmItqhJ/0O/ucvAynT/p
         mdTA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nxT5g4Xt;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=S4fBDU3hP3Y5mMcBhDp4Jdv9MzX+Q1x44FDLoGIxJSA=;
        b=IQXfzBVcuMQy8Nf+5fjmQgGdt6KTPPb1zrqoDTNCXho3bpnPQcQRCcr8q0ZhK9Y6E9
         ey8jeX4XxunGIDvnXEefU4v1f5rcs9b94GED2uyvjtbypTwc1s1Jr2YDx+N2p508smTX
         vQWZRo2PrM8i1Qe0REzQyvqQ1c4ChHRzPSuANuMzgG49cPYwhJtDXbwBA8i+wk+Dxqxb
         DJhMOrrrW16Ux3ItafGlv3oupfRxHvU4mQ1EesC+fOyy2K5hPa+e78PF9dQPYpG+mOo1
         L+5BdoEsgu6362Xtfl9yHUpDvj2sbbselT3Q0ox5KDqMWrevAdob8pH3DL9wvkddynZH
         76Bg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=S4fBDU3hP3Y5mMcBhDp4Jdv9MzX+Q1x44FDLoGIxJSA=;
        b=Zkf7wTuFz4HRwtDhSLdRutcw78PNYWlAbi25g2yihlCWsXhFQHeslv7rXE0ugWaJ0j
         /XOfGvYRbHCIAg0M3OEC2wWWqExe/2BLXOn0FeiRjqicH0viQiroDl/slOFm4ydDk3b4
         jgI0iOVDZGHuCkbHgKoE3Vs6D1YJjBTa1BrijbD027+Z1werZa64j8XAY4QEExQeHLuu
         /zPJT2Q+bq5vtLPZzBGlCL3sNlCilUaAtdH1Oe6+x1YMoFlItIcDDEh7h22DMRd7ZN5g
         Xm9xzOi24hhOUW6UgQB3ff2fSpdecGkYji0fZtsHN5xdaJOLIiEXnurDLTXpxa1IUJNZ
         Jq7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=S4fBDU3hP3Y5mMcBhDp4Jdv9MzX+Q1x44FDLoGIxJSA=;
        b=uV9CU7af8SPWVwVAsye1ieVHaleRhsJB/UxHp0ntL+WETp2WSDaqhgrM57eJL22zVb
         C+Aq1NewNGc7tD4+Y9caE5EMmUgUKSUmbYGUDR9W6Bmt3er0HoRw9U54ObIPz4MycET2
         KxnJqI+Sk19QWZ0BllJOvJTa38DzRwwkarxKMPMNhS+uGGxyyw7YyWpCpOv2EbVGqKzi
         lYZ+D7m4JJHnBSvjTJSZCK/2GWOl5nbPP4f6dJs0SpjsClauqLb+4hD5mVJyYu62wuQ5
         Y9D0uCIwtyUGf5sXJX5vOA8MYGpLgoMrj8oqQIPvPED4niMJ19GfAtjgcj0Vee+Tf1EC
         h+qQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXFglHuQUe81X1req/714w0+IpaGMb+bLfLMUGtPnLVRHQ6eeu8
	XblterkL4UaBhyAkhu7x1tc=
X-Google-Smtp-Source: APXvYqyLAFPBUwZ17z32FmAG+Hh12RmJbBRKkXWaGrjhfFD1fPbFwVj8LB0Cvh306/jLPXvBTkr8UQ==
X-Received: by 2002:adf:e8cb:: with SMTP id k11mr73615154wrn.244.1564967899265;
        Sun, 04 Aug 2019 18:18:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:5709:: with SMTP id a9ls24123326wrv.12.gmail; Sun, 04
 Aug 2019 18:18:18 -0700 (PDT)
X-Received: by 2002:a5d:4602:: with SMTP id t2mr11666568wrq.340.1564967898880;
        Sun, 04 Aug 2019 18:18:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564967898; cv=none;
        d=google.com; s=arc-20160816;
        b=tI1uYqZS0T8zMUeO+G9phIpjISbmKNzNo7F4RfonnSrROG3xxzBYp+5sHf9AhpTyt8
         tmz6s09IX01AUJ5AFkik6AXNF9HcrFsZDzCMocgdXWvkqWsFNWeOdq+nUjiYKcOk1oKM
         atqyLAZfdtJ5xaMsMg+4Y3hYWfWew2MhI6a4M90zEkggAbRVvOW9wm80KrDFBZx+0666
         +g9Tnloy1oNE5uG2FOvyZAO5bMiNsf4bRhP/hKpzHCpNK73fnT47Xx9Ks8slu68QP50X
         aJ0GGU0aFpZDGrHckHA6co4zUUm3aLGl3MiUwqzf5Un0rnI9qQvUplW50EX9e5bRTRYA
         F+eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=OuVA76lIPJxgsPabWbHp8eFg+xI+TfW22xDF1fY+ibo=;
        b=S77+cWucYWiyWBTJ5jwbcM6kWrqOwDR1pB9gZUlRzsCMJOAB9xgWC+kAb4uPx70r7X
         11+raivb/CYRx+FWCMH9NY1lWE68vdT0NKKMEIHuNTjXrvK7wDDpCx2XgWbxI7ipvxbm
         T6VIGlZFK31wkNa2fa8qnh30Wa3pbSJNQzN/AU6LJjcKV6NDMdF5vswb74EOE2qMZQn7
         /swurkjddIPthteMtigXCOaxIQWGq3PWQXzWTyacFSJ5rg4ITGmq4t1Q1RLeDO+cIVlr
         C70jsHPNpnyf9I1nf2KrefwEfEDboWpkWFzxNsViaSnWpUA8rfo+C+YjOIOxwQTcOMQf
         MVBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nxT5g4Xt;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id z24si341725wml.0.2019.08.04.18.18.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Aug 2019 18:18:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id f9so3747534wre.12
        for <clang-built-linux@googlegroups.com>; Sun, 04 Aug 2019 18:18:18 -0700 (PDT)
X-Received: by 2002:a5d:62c9:: with SMTP id o9mr31637468wrv.186.1564967898243;
        Sun, 04 Aug 2019 18:18:18 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id x20sm186678895wrg.10.2019.08.04.18.18.17
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Sun, 04 Aug 2019 18:18:17 -0700 (PDT)
Date: Sun, 4 Aug 2019 18:18:15 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Joe Perches <joe@perches.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Kees Cook <keescook@chromium.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Borislav Petkov <bp@alien8.de>, "H . Peter Anvin" <hpa@zytor.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Pavel Machek <pavel@ucw.cz>,
	"Gustavo A . R . Silva" <gustavo@embeddedor.com>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Kan Liang <kan.liang@linux.intel.com>,
	Namhyung Kim <namhyung@kernel.org>, Jiri Olsa <jolsa@redhat.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Shawn Landden <shawn@git.icu>,
	the arch/x86 maintainers <x86@kernel.org>,
	Linux List Kernel Mailing <linux-kernel@vger.kernel.org>,
	Neil Horman <nhorman@tuxdriver.com>,
	David Miller <davem@davemloft.net>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [RFC PATCH] compiler_attributes.h: Add 'fallthrough' pseudo
 keyword for switch/case use
Message-ID: <20190805011815.GA110280@archlinux-threadripper>
References: <e0dd3af448e38e342c1ac6e7c0c802696eb77fd6.1564549413.git.joe@perches.com>
 <1d2830aadbe9d8151728a7df5b88528fc72a0095.1564549413.git.joe@perches.com>
 <c0669a7130645a20e99915385b7e712360c31ed9.camel@perches.com>
 <CAHk-=wg1PAJR6ChVXE7O_H2wEG=1mWxi2uc0fH5bthOC_81uTA@mail.gmail.com>
 <49b659d8f88f67c736881224203418f59a5d29ac.camel@perches.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <49b659d8f88f67c736881224203418f59a5d29ac.camel@perches.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=nxT5g4Xt;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Hi Joe,

On Sun, Aug 04, 2019 at 05:39:28PM -0700, Joe Perches wrote:
> On Sun, 2019-08-04 at 11:09 -0700, Linus Torvalds wrote:
> > On Sun, Aug 4, 2019 at 11:01 AM Joe Perches <joe@perches.com> wrote:
> > > Linus?  Do you have an opinion about this RFC/patch?
> > 
> > So my only real concern is that the comment approach has always been
> > the really traditional one, going back all the way to 'lint' days.
> > 
> > And you obviously cannot use a #define to create a comment, so this
> > whole keyword model will never be able to do that.
> > 
> > At the same time, all the modern tools we care about do seem to be
> > happy with it, either through the gcc attribute, the clang
> > [[clang:fallthrough]] or the (eventual) standard C [[fallthrough]]
> > model.
> 
> (adding Nick Desaulniers and clang-built-linux to cc's)

Thanks for adding us.

> As far as I can tell, clang 10 (and it took hours to compile
> and link the most current version here) does not support

Just a heads up in case you want to mess around with clang in the
future, I wrote a toolchain build script for ClangBuiltLinux to help
with the long compile times by cutting as much cruft as possible (and
it is self contained by default, won't install anything outside of the
repository).

https://github.com/ClangBuiltLinux/tc-build

The slimmest working configuration for testing what you did would probably
be from the following command:

./build-llvm.py --build-stage1-only --projects clang --targets X86

> 	-Wimplicit-fallthrough=3
> and using just -Wimplicit-fallthrough with clang 10 does not emit
> a fallthrough warning even with -Wextra and -Wimplicit-fallthrough
> using switch / case code blocks like:

Unfortunately, -Wimplicit-fallthrough does not work for C right now
(only C++), as pointed out by Nick on LLVM's bug tracker.

https://bugs.llvm.org/show_bug.cgi?id=39382

This patch resolves that while adding support for the attribute.

https://reviews.llvm.org/D64838

Your example properly works when that patch is applied and
-Wimplicit-fallthrough is added to the list of flags.

../lib/test_module.c:24:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
        case 2:
        ^
../lib/test_module.c:24:2: note: insert '__attribute__((fallthrough));' to silence this warning
        case 2:
        ^
        __attribute__((fallthrough)); 
../lib/test_module.c:24:2: note: insert 'break;' to avoid fall-through
        case 2:
        ^
        break; 

Hopefully it can get merged soon. I am sure Nathan or Nick can speak
to further progress on that.

> The __has_attribute use is at least clang compatible.
> https://releases.llvm.org/3.7.0/tools/clang/docs/LanguageExtensions.html
> even if it doesn't (seem to?) work.

I was trying to follow along with this thread through the web interface
and kind of got lost, how does it not work? If I apply your compiler
attributes patch with D64838, I see fallthrough get expanded to
__attribute__((__fallthrough__)) by the preprocessor.

> >  - we'd need to make -Wimplicit-fallthrough be dependent on the
> > compiler actually supporting the attribute, not just on supporting the
> > flag.
> 
> I believe that also needs work if ever clang works,
> 
> Makefile:KBUILD_CFLAGS += $(call cc-option,-Wimplicit-fallthrough=3,)
> 
> this will have to be changed for clang as the =<val> isn't (yet?) supported.

GCC's documentation says that -Wimplicit-fallthrough is equivalent to
-Wimplicit-fallthrough=3 so it seems like just making that change would
be all that is needed to support Clang:

https://gcc.gnu.org/onlinedocs/gcc/Warning-Options.html#index-Wimplicit-fallthrough

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190805011815.GA110280%40archlinux-threadripper.
