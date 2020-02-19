Return-Path: <clang-built-linux+bncBDYJPJO25UGBBY4QW3ZAKGQEVXRQCOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id B5B42164E90
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 20:11:32 +0100 (CET)
Received: by mail-ot1-x33f.google.com with SMTP id d16sf751866otp.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 11:11:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582139491; cv=pass;
        d=google.com; s=arc-20160816;
        b=oUwqCDzvjpHO/o1P6kc6tCywI4uKi0tyVNkxrCdD8ZuRNf7ZZnJfIOR7pvmueF0wPE
         6xmSYIeQsTSjP7q+HTuUs0Ai7DT4XSDNPdAG+WJH+DdGEILWqE/A8JI1k4AOlOhs6uOR
         E4ujmmoQMnYueRp+zxkPA5lHR6p/H1N4vAcoPwP+dnEaWvBOnu9pjaaPkbtN4h9aWBZF
         yAxLztG8QJbCRRror69tPStyJqCOi8Y3teffUM8/4bzNW7BHCJgpp3yVw6JpLST2C3ob
         Qv6DxHS0NZnaHnLQD+uNpF5YYW6cpLfxW09DgO+Wb9RB9m062VvSOUByh2XSo04P83EY
         ubyw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=CSbxC/gpa+ifl3o6YYDHHSYAg9OlgrlGNeAlRJ0fK2A=;
        b=ixCfXmv9AkRXIUWfDDs0iQGQS6MarcvC4Fx+VzjalpW0F5XYQkb/GUkEDjKEp0WqxX
         LiJWE8RCOIji7ktylW1A/Fxy43PqyKM6AVE82HHFYUpQbhU9F3tDSDm/KdHTHd4MaaUU
         Va8Rz+CVdu3k0gkV69B8P1nNMvQ5qxdupSCTuDg8vOur8BtgftvORurYMSdjeEB4Qxvl
         aUPshZVo3pqNMnYLX0KNaUkn50mXmxV491c/x1PAdx79ebBaodJuUL8dGBqQrm8c9IPk
         YevkOtodVO6ebnzPoB+AUS2JpZqyJmofwQG75jN3xyu65mgtrK8Sc29Pm70wK+HgCfXj
         DhYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="jcMcqCD/";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CSbxC/gpa+ifl3o6YYDHHSYAg9OlgrlGNeAlRJ0fK2A=;
        b=mHD6Wl5Mbz0OpjFjxuEpgzs9gGotHgeY8CHEw+CmiRKKetNyNkOu5jo55i5wCNmtwO
         nOLcldhUhbvZCa9JKy0TlcrB0rbTuvdqdHrIL9kXSv4LUzQ5Qz6dnvyiTAXeaCdexbVP
         u1QkvQvqiRTU3T9Xnjt7XE0aZEQIbxzc+IkBlIb9M3kFvief58DkMSrDAu2c6LKaKw9Z
         PKxF19IQbAQD9HhgMLRBNiMhbTqAbquxRizQJsETCuw7sFGVlXv7zLw3aSBHE/XcAy/r
         iSTj1sCVWVgaOxRVU1Fc+D4keJyUiddumOVzz1iSjm0egYSaVskJqITSwMNl3FklVNoq
         gHPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CSbxC/gpa+ifl3o6YYDHHSYAg9OlgrlGNeAlRJ0fK2A=;
        b=mEEIshUaUXoTQNMzwIUPesB0mDvRHQWjd53PJMokOETx3nMh3ErlOxUnZAK4O03rJT
         kpC+3MBBcLu1i05WzgopQ1K8IAgpHrB9dvY31mPWWamIN/z0ddvxofwB9zBTlANkJglQ
         TQBLB37KwR706p5Y50BLxuclMPHNfbZTSdJ7Lz2W8hnaurahgCrJ3P4uBYwU3S17zvrW
         kgIk8CgtUkknTv441S1BxxKyxgP9fljEoMkrIzYcl3c+KrVUSj95Jjpwh/5mXSBqFGFz
         8Jlost3SAOUGuD8RWcbNShr1kuAloH9WITneha/I4DMGkFJUiyUP47d84yhRb+n3c7Gg
         0uhg==
X-Gm-Message-State: APjAAAUB/rdqL8XuNjVl+gPlIVlzkbQIFT6Ge3nB27epDmLO99FXg84v
	s0unzaXl7SjaZQ7xdh83GvA=
X-Google-Smtp-Source: APXvYqyU3Wmw5On3RWH+jfmulrzDVcKeiTOxgYL5KMLK3SuGqzZhiQDapOyxUjOGFcwQemSUMWJxcg==
X-Received: by 2002:a9d:a68:: with SMTP id 95mr20067611otg.87.1582139491660;
        Wed, 19 Feb 2020 11:11:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:d549:: with SMTP id m70ls239367oig.10.gmail; Wed, 19 Feb
 2020 11:11:31 -0800 (PST)
X-Received: by 2002:aca:4309:: with SMTP id q9mr678398oia.158.1582139491325;
        Wed, 19 Feb 2020 11:11:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582139491; cv=none;
        d=google.com; s=arc-20160816;
        b=p0VGnw6NqJagPPsi7M4F7dHjLWe7jVhZZXCwWhp8km3Yn4AHj6fg4AvsBKeBp1XaE4
         LIY9PMJfuwh3G14i3NAyUwKooisZ/pO/vHi6oQMY98lonTsk6SbdXQHUicYRjdKI6kxw
         40eyIpNsLteRWFATHp76YyZYyhNYjY6jXE5V3EV1Sh+uYp/6NHjfvjQrR2yH++YRClze
         h5roUr6DoiVtEUTnCaoUl2zHRDL8bigofhvQSW8Vc4RkIA6YLAi4ib+4ulbEmCLHWmcG
         8W09Usu46qHL0dh/qINU96yQSfbvXswjzNEb7N5r88UGHxJOFDObPWFKXSOP8EB8hDL2
         XT8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ap2ctb13s1qbCfj4OTZiKRJIdNv9n1BdWeqlAwLw5Qg=;
        b=SIpdbTh8j4wAHqJPYk6DNvhkjHD4Oq/b2MCahce7LkeatVQGNl0ClKjmmATKXEBEHn
         k+C+zSAtiY5y91bX1i+QsQ8DYuAIb00a4M8EuS7AL2I7FMyoc3pvJj8OmjK6DSQo7xJU
         qabW73OavDh3Zv7zagHCTz/0yjmsIhyIyRaIHMquk6MXxyGqIscOOuNIQM/GiANbrQZs
         0UNX0zyrIn8cz8E81NBL391rPnCCCWrDTjb0AHb2OwZvqe3XF9o1r/0h7OLGGHtZw4ZP
         sM5oSpxigEzW3Om6qMulaVyZoBU+XNElbOG3rW6zoC8cCpAofCRrIWiDdByaMz7217S/
         ge0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="jcMcqCD/";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id j26si44579oie.0.2020.02.19.11.11.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Feb 2020 11:11:31 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id n96so469253pjc.3
        for <clang-built-linux@googlegroups.com>; Wed, 19 Feb 2020 11:11:31 -0800 (PST)
X-Received: by 2002:a17:90a:3745:: with SMTP id u63mr10347452pjb.123.1582139490281;
 Wed, 19 Feb 2020 11:11:30 -0800 (PST)
MIME-Version: 1.0
References: <20200219045423.54190-1-natechancellor@gmail.com>
 <20200219045423.54190-4-natechancellor@gmail.com> <20200219093445.386f1c09@gandalf.local.home>
 <CAKwvOdm-N1iX0SMxGDV5Vf=qS5uHPdH3S-TRs-065BuSOdKt1w@mail.gmail.com> <20200219181619.GV31668@ziepe.ca>
In-Reply-To: <20200219181619.GV31668@ziepe.ca>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 19 Feb 2020 11:11:19 -0800
Message-ID: <CAKwvOd=8vb5eOjiLg96zr25Xsq_Xge_Ym7RsNqKK8g+ZR9KWzA@mail.gmail.com>
Subject: Re: [PATCH 3/6] tracing: Wrap section comparison in
 tracer_alloc_buffers with COMPARE_SECTIONS
To: Jason Gunthorpe <jgg@ziepe.ca>, Nathan Chancellor <natechancellor@gmail.com>
Cc: Steven Rostedt <rostedt@goodmis.org>, Masahiro Yamada <masahiroy@kernel.org>, 
	Michal Marek <michal.lkml@markovi.net>, Arnd Bergmann <arnd@arndb.de>, Ingo Molnar <mingo@redhat.com>, 
	Jason Baron <jbaron@akamai.com>, Catalin Marinas <catalin.marinas@arm.com>, 
	Andrew Morton <akpm@linux-foundation.org>, LKML <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, linux-arch <linux-arch@vger.kernel.org>, 
	Linux Memory Management List <linux-mm@kvack.org>, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="jcMcqCD/";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044
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

On Wed, Feb 19, 2020 at 10:16 AM Jason Gunthorpe <jgg@ziepe.ca> wrote:
>
> On Wed, Feb 19, 2020 at 09:44:31AM -0800, Nick Desaulniers wrote:
> > Hey Nathan,
> > Thanks for the series; enabling the warning will help us find more
> > bugs.  Revisiting what the warning is about, I checked on this
> > "referring to symbols defined in linker scripts from C" pattern.  This
> > document [0] (by no means definitive, but I think it has a good idea)
> > says:
> >
> > Linker symbols that represent a data address: In C code, declare the
> > variable as an extern variable. Then, refer to the value of the linker
> > symbol using the & operator. Because the variable is at a valid data
> > address, we know that a data pointer can represent the value.
> > Linker symbols for an arbitrary address: In C code, declare this as an
> > extern symbol. The type does not matter. If you are using GCC
> > extensions, declare it as "extern void".
> >
> > Indeed, it seems that Clang is happier with that pattern:
> > https://godbolt.org/z/sW3t5W
> >
> > Looking at __stop___trace_bprintk_fmt in particular:
> >
> > kernel/trace/trace.h
> > 1923:extern const char *__stop___trace_bprintk_fmt[];
>
> Godbolt says clang is happy if it is written as:
>
>   if (&__stop___trace_bprintk_fmt[0] != &__start___trace_bprintk_fmt[0])
>
> Which is probably the best compromise. The type here is const char
> *[], so it would be a shame to see it go.

If the "address" is never dereferenced, but only used for arithmetic
(in a way that the the pointed to type is irrelevant), does the
pointed to type matter?  I don't feel strongly either way, but we seem
to have found two additional possible solutions for these warnings,
which is my ultimate goal. Nathan, hopefully those are some ideas you
can work with to address the additional cases throughout the kernel?

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D8vb5eOjiLg96zr25Xsq_Xge_Ym7RsNqKK8g%2BZR9KWzA%40mail.gmail.com.
