Return-Path: <clang-built-linux+bncBDYJPJO25UGBB64ZZH5QKGQESN2UYSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 49B0827B6B1
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Sep 2020 22:52:14 +0200 (CEST)
Received: by mail-io1-xd3f.google.com with SMTP id h21sf1485317iof.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Sep 2020 13:52:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601326333; cv=pass;
        d=google.com; s=arc-20160816;
        b=a3oyvvTynKTYk22pVzgVKw3cdpBc9xKYhqshK33txuRJm1tY5r57E2tqaaATn0j6Qs
         vnB/8FZSPaU+qv8fhQt8MwICGZEbqb6Kjftp8PLOC+3zvBqlr5PBqyZvo+8ZeZZ4Xixm
         kK3ea9VyhG1RWZ25PdMQsrGF3+N9gWcLSA8uO0sozbBVP0vryklnQuthXG8CjdMejxIE
         Y3q3GD0DQII670u3R2nIlvg9/DRIXhgRIoBJs+ybY/dSgQ0e/ygn4SNuRgk6jkJ7TYNV
         sSUN7jUIjn1+YIeHmQfizzP39T6dPJOEcvSt+A3M0vElmq92tuvVeExtXDGDsq5cIKLf
         VIgw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Db0yrr40i/hVzlUB565Vy571BAmP/hjLbQ4R98tVOYs=;
        b=sQxmkSdzkCxUAE+zIZyc4E9f6hGMvoqlX8FltFEhuW9kkAns1GRVvgbUz6D2uzyYbj
         y1vgLaSaHoaB7hkjEwhVydUtTjYktD+tySqH5U1OlfVW1XqmVyckpFXwC2tt3Pwh5bSI
         gKTL2EE5BEC82m9alas2ZxZjtjuTsxzm1h646Ld6cU3jSq4rqQhQTNMQm90vQHA/aKpu
         80xbbPSOaH9LNqjZw1yRvvPILNZNWlqwxyvPgmdFwYVwmXYm7Kj8NFg0EyMM119CR0na
         GGjLxdV5K3lNoCi/gdj22OUFbcwjw3rSOG7Yj8YWADPOau/zyhXkYG7u53Iw9v9/TMgv
         FrVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qhphk1yO;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Db0yrr40i/hVzlUB565Vy571BAmP/hjLbQ4R98tVOYs=;
        b=ju3ohlxVULMdoPfpmNoVMKthXWmcaWiWqa64hVfPnU+ueIDXPJh7Bp7d3FUwhfPx1X
         EAgHm9mDy9KFgR/Edb2F7qZncrpMBP3DpzSkBeFo/0CGx+c+5BwAiaPrUEqpMRfoB/8r
         JZ+M365JNpN5T2N/SZdM/qZffFskYvFUTOfFwGLBzrgpPAGkror494wEdp9p7WtPRMzw
         Beqi5ofEfdGb2m6QXjxloIfWjqwV+cHMvvsyvPOh1H//o+3khfzj8OzftxXQj77GQpfK
         GPglJiSQb0jkJ2vBxIJLweS+9Ipahn11GWNL87w8R8ZUJ1SkynGM/C1RgYZcYp/7GYs5
         N3oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Db0yrr40i/hVzlUB565Vy571BAmP/hjLbQ4R98tVOYs=;
        b=AmNUfzRim7x31zLNKtoX1X8UI6/1WAmPYgqEmBvfghzHIFj2v2JSKVoP43nIl4wern
         ZvdlO1eSIKl4sjcw4VEziiBXXt87hFp6rEA3i8haEePw6/wCxZs+hTCyU9TFPj2Er3Ed
         4yvX+3+yIWi7KgODCplWnMwSpxycXRUFCHyebaEzVtvB4m8PBxnXwuycmudk66iAAu5O
         yROFw7TVCkCeQvIA08wJlzJ4OjGTRGxMMw+YkNP5tXL7c4yzfQpNIyqOdvOjxiQ6q3F7
         Bp9MHZ8qnGbukVbsjjkzwwQ0iIc5NQyhNPzfM1artzjpc5ZEHuY+5ZNlSrrs7BnQAL92
         636w==
X-Gm-Message-State: AOAM531OBbKqIlfmv4sjVDbx8uyIoKiZOpAbTeENBm2eMgXLZa5o9bNl
	GUrq8uqivYYx2nSpCxvP2KY=
X-Google-Smtp-Source: ABdhPJz64G7+qWE9aHJB/wZBCae1iEy8OR1pHnDUn50VBPy7IGdT/OwU5Ui4he3XRMYpOd7ggw7dSg==
X-Received: by 2002:a92:a04a:: with SMTP id b10mr169717ilm.279.1601326331773;
        Mon, 28 Sep 2020 13:52:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:c805:: with SMTP id v5ls675600iln.1.gmail; Mon, 28 Sep
 2020 13:52:11 -0700 (PDT)
X-Received: by 2002:a92:d312:: with SMTP id x18mr186532ila.263.1601326331389;
        Mon, 28 Sep 2020 13:52:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601326331; cv=none;
        d=google.com; s=arc-20160816;
        b=WD8yc2IZ+LXrhn4YKtAjWycFyAusYUXS5tNJjcxiKS672ZpEH6JYl4gN2Sdn6vJC2n
         7gzKWjFAcqSsOprfjHxHFxpOQrRroNlUqMCF8Ly0TATf/1P7soFxDrOg5TWltJ/umWvf
         uZrHc8ykVqe6g0IGvxPzhsqpmbLPrf7HfeW4JZEASOnp/udNG32dQarOFO+coer3EANz
         AjEBpG+/3e+dDzs7XjSRK8uY60okSmPUU0Z+9wntvKpcsK9ZJXHjpYhT8yJ2UDCmx73A
         jIVpVtnjm3yJ1YtfCiYIE526d3xQj6wvy8Xx7u7btm1Btpgylm//LKvE9pqfiDXH8UMg
         +M6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=E18yvgxr+dgDZ8P7S30cmV0usuEJVg+uMENH9hDolXk=;
        b=KzPVmNPB/cT924/QehqffY+IvAwL+KHaFZ1fS6/vviFZRwBCwvdLCBYrZgKV5yOAxL
         KmdPj06IgBhGIrfae2DuCQbaJ6nvx/9WaXrmUOpM6vhhU3GJSEw60mCiYQdcnqh+DjWe
         QLFARcquQzTSxJKzC/SncegGVDK7StpOGsap1WAtmdAieRIHFBf5MM+j6ZgMzO3JMFc1
         pe5puLS8frF0Sfz+lo9QxaqMSksusdqJyaREXKQrwxIDmBgsrksUMgmk19pJMVpakpO/
         VzovNngCPcJbbgz2e1j8RWmgCujnGvdxXx3Tz1UnFGZaccg8HlRi8gYqtcO1+YsdjP0b
         J2Wg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qhphk1yO;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id a5si213157ilr.3.2020.09.28.13.52.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Sep 2020 13:52:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id o25so1981616pgm.0
        for <clang-built-linux@googlegroups.com>; Mon, 28 Sep 2020 13:52:11 -0700 (PDT)
X-Received: by 2002:a63:28c9:: with SMTP id o192mr617964pgo.381.1601326330804;
 Mon, 28 Sep 2020 13:52:10 -0700 (PDT)
MIME-Version: 1.0
References: <00000000000052569205afa67426@google.com> <20200927145737.GA4746@zn.tnic>
 <CACT4Y+Zxt3-Dj6r53mEkwv24PazPzTxQ7usV1O+RB0bk2FzO8g@mail.gmail.com>
 <CACT4Y+ZZH76qg810RzGp6FDLTxJWVqZgkrXSxqgq7AjpPYG9XQ@mail.gmail.com>
 <20200928083819.GD1685@zn.tnic> <CACT4Y+bPFASnmFRKpQ=KY1z+RnTbGmkPU3aikzdXZpKkV03D9A@mail.gmail.com>
 <20200928085401.GE1685@zn.tnic> <CACT4Y+Z4Y6SJJ6iYBhVRiknrWBAD6gGhQXiXLhxPniDNBFJGsA@mail.gmail.com>
In-Reply-To: <CACT4Y+Z4Y6SJJ6iYBhVRiknrWBAD6gGhQXiXLhxPniDNBFJGsA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 28 Sep 2020 13:51:58 -0700
Message-ID: <CAKwvOdmTm2rVdc2JTSVVadKP3DONRcPXSE-s3tFPqHgCSieH7Q@mail.gmail.com>
Subject: Re: general protection fault in perf_misc_flags
To: Dmitry Vyukov <dvyukov@google.com>
Cc: Borislav Petkov <bp@alien8.de>, Alexander Potapenko <glider@google.com>, Marco Elver <elver@google.com>, 
	syzbot <syzbot+ce179bc99e64377c24bc@syzkaller.appspotmail.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Alexander Shishkin <alexander.shishkin@linux.intel.com>, 
	"H. Peter Anvin" <hpa@zytor.com>, Jiri Olsa <jolsa@redhat.com>, LKML <linux-kernel@vger.kernel.org>, 
	Mark Rutland <mark.rutland@arm.com>, Ingo Molnar <mingo@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>, Thomas Gleixner <tglx@linutronix.de>, 
	"the arch/x86 maintainers" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=qhphk1yO;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541
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

On Mon, Sep 28, 2020 at 3:34 AM 'Dmitry Vyukov' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> On Mon, Sep 28, 2020 at 10:54 AM Borislav Petkov <bp@alien8.de> wrote:
> >
> > On Mon, Sep 28, 2020 at 10:40:19AM +0200, Dmitry Vyukov wrote:
> > > I meant the kernel self-corrupts itself, that just wasn't detected by
> > > KASAN, page protections, etc.
> >
> > Well, Nick already asked this but we're marking all kernel text RO early
> > during boot. So it either is happening before that or something else
> > altogether is going on.

On Sun, Sep 27, 2020 at 11:06 PM 'Dmitry Vyukov' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> Interestingly there is a new crash, which looks similar:
>
> general protection fault in map_vdso
> https://syzkaller.appspot.com/bug?extid=c2ae01c2b1b385384a06
>
> The code is also with 4 0's:
> Code: 00 00 00 48 b8 00 00 00 00 00 fc ff df 41 57 49 89 ff 41 56 41
> 55 41 54 55 65 48 8b 2c 25 c0 fe 01 00 48 8d bd 28 04 00 00 53 <48> 00
> 00 00 00 fa 48 83 ec 10 48 c1 ea 03 80 3c 02 00 0f 85 51 02
>
> But it happened with gcc.
>
> Also I found this older one:
> general protection fault in map_vdso_randomized
> https://syzkaller.appspot.com/bug?id=8366fd024559946137b9db23b26fd2235d43b383
>
> which also has code smashed and happened with gcc:
> Code: 00 fc ff df 48 89 f9 48 c1 e9 03 80 3c 01 00 0f 85 eb 00 00 00
> 65 48 8b 1c 25 c0 fe 01 00 48 8d bb 28 04 00 00 41 2b 54 24 20 <00> 00
> 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00

If this is related to vdso's, they seem mapped as `r-xp` (not `w):
$ sudo cat /proc/1/maps | grep vdso
7ffc667f5000-7ffc667f7000 r-xp 00000000 00:00 0                          [vdso]

map_vdso() in arch/x86/entry/vdso/vma.c doesn't map the VMA as
writable, but it uses VM_MAYWRITE with a comment about GDB setting
breakpoints.

So it sounds like the page protections on the vdso can be changed at
runtime (via mprotect).  Maybe syzkaller is tickling that first?

map_vdso_randomized() does call map_vdso().  Maybe if we mprotect the
vdso to be writable, it may be easier to spot the write.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmTm2rVdc2JTSVVadKP3DONRcPXSE-s3tFPqHgCSieH7Q%40mail.gmail.com.
