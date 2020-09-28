Return-Path: <clang-built-linux+bncBCMIZB7QWENRB2H2YX5QKGQERASEN2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3c.google.com (mail-vk1-xa3c.google.com [IPv6:2607:f8b0:4864:20::a3c])
	by mail.lfdr.de (Postfix) with ESMTPS id D9EC527A736
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Sep 2020 08:06:33 +0200 (CEST)
Received: by mail-vk1-xa3c.google.com with SMTP id h196sf3656vke.8
        for <lists+clang-built-linux@lfdr.de>; Sun, 27 Sep 2020 23:06:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601273192; cv=pass;
        d=google.com; s=arc-20160816;
        b=Yrs5vsnFOrqjG0Rus5+KyBDmuW+9ROwzbsFctN1jFTvPY2UERhT0baDX3l/9JnIqeS
         X91IozKLLCHzftm0QLThpJNZMP9A1OX55n+NAHUhCr+9slX4aPsftg98mXVBMG8WtbEF
         gQjr7OPcS9IssLOlXmUBBtLS/i8ZXxDM3p1X+rzdlQjN7rySx7sZJ2oCepiVkZdJZpzo
         Qzsb59yn1iFhssR37dc5rMXH28L6hzdQNewO5cxEgB4qCRsjV4pLP/6p0mXCPQmVLYXc
         LZj5MdMWs1B3pT7lJDYkGS0yorAZllpRT65jniYmPYjLZgI6Y1FAFMNl8akojqDGAcVU
         IigA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=3gWjMnVlC3uexcW+TK3mkwgtUoQATVU9JOb2i3Hxy/U=;
        b=vV3lPyCkwjLCMzLVCycqgrIOCFf0jMkoDf2F5M8gP1xGFXcWJPyVgcH59v+1e0c+W8
         S9xZ2FfiBFZ2hxZRSC5q9CECGDVk90DQRfXKHCJEicR+8O01mQt3cR4I6mnZmjEmDwK7
         lrJh+bIYWbmBksET6czzy9j7c3vOBxCK+Wvz+U4qEx+4p4LI+Ty5zJX5DBq8EKwrzuNi
         AmoeXNhSjZcQqrDDXXBrfJUMN5ZYn5udbKfVH3kdbjv6Wf87JPCrGcA7fw8WbAIHSZCD
         12tdvd5ykuHW+ACbSgcVE24jxQuvKOrZYmdBOk87aSkYPPjp+62Kv0lsKcjhKzZRFPCR
         Km8w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=b9szbW2T;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3gWjMnVlC3uexcW+TK3mkwgtUoQATVU9JOb2i3Hxy/U=;
        b=CIgc8Bw85afJEPecqGeJ//Q+DPKBI8Z81w6TzsDP9WWtecymdRxRW76jwTS/p/OIO6
         Xo4PAv31hAC5Nvx1PytnH7ElTFGYUywURugD41OxqyjwPuYeAsktcB8y53CFTwKekkO5
         HaxK76ZDJdorEEkfwJFIUf4S61JaAke1AmbckUS3p8frnI0pQX02fiXGlm+HA6zq4/JJ
         eKFiC2r/m/Y65F4/h6NTjm3jRqQltXQzcHEGWHWhvqjwBVFpG3X57WV2NLmtVLR+QMtN
         FWrluRw7mfnyE1ibqIxzY1ohpqT0OoocxKn96P75h+kuyEuelcY3Z8S5UDg+0k8b6UtH
         sEQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3gWjMnVlC3uexcW+TK3mkwgtUoQATVU9JOb2i3Hxy/U=;
        b=je0zpdPZr7T0SsQjsUMWxRqo/a0bCKmdDzw8Tqrao6L7XdtVIINrBN7Jsj519rIJEe
         HaKwwkmir54FxUS6jYknvr9G8JMlPRW968/Ic2HvPIYlmaS52B3gBqIoAJ+gDFKCcsp6
         hrSBHBkReuRfwBO+KyZj7oeVfVsyqa4DbaNXY6QZGo69jL+/pxrojJoDWO8wZONYEkoM
         ndbmmUPkpe8B/t0rAv+CG+rm1pPcplu6tE+rzD1Mh7EXtIMLkxaGE6EWlE8t/KXd5KB2
         5+eoSYzHu+ZXY4xAK+SBSA7jKZkZUu99JqUf8yRPyjBlf3oZKqi/M9KzvFRSPmaxhP70
         uUeA==
X-Gm-Message-State: AOAM53266w5pGbegxvN/fMpBA7J8S35Bj+TScQOu8j6S61u0+gZfAVO8
	BGNWm9DOm04HHVAfG4+seC8=
X-Google-Smtp-Source: ABdhPJyLrpFo04YxsDVyA4VsizsV30FNhl9jhPvXFH7tutX2Re7PSNGcCm4OkXGmzPjxH0MYWabQIQ==
X-Received: by 2002:a67:cb02:: with SMTP id b2mr4259877vsl.37.1601273192661;
        Sun, 27 Sep 2020 23:06:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f7c4:: with SMTP id a4ls4437vsp.10.gmail; Sun, 27 Sep
 2020 23:06:32 -0700 (PDT)
X-Received: by 2002:a67:ea4e:: with SMTP id r14mr61746vso.42.1601273191974;
        Sun, 27 Sep 2020 23:06:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601273191; cv=none;
        d=google.com; s=arc-20160816;
        b=HAhPWKN/wdyqZEiCf5XTSwfL1ehy1QK8bVmoEvaHdWHyOEpQ+Xf16DhtdI43prpy5S
         AeKiVLFUdY8LB/LKTOUwAUYcch/cFJSSYJi7BhuEf2OgJJOlhoG8GjzS2gRXKMAS3F6+
         NrHLdFa+FjUodx0uLb+zwfV43fmMtxWbt7qHdNkyJRkz6C4bHU9m8NnIIVnAo9Hzzl3Y
         CMhwuY77stYyEvxHN+1r3pVVQKPwBR0cSxTyMOjvlgpA3B6GZrwRa+wJvYWBWSnyoLLi
         0inXKUQYe+lamTAm75PX8dihfv94uK54DTLud6YrfXjvbkT6z3GaeEHCVmytDCpGkJ1l
         TG6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=QFn+0NLLcstHF4oViRUUZIB6ljirkEV5COOiFgccFNU=;
        b=GFiDc2j3NspBgT9wkSUTEk0oCpRcj99/h8FuqNajaUU9YAQFMly5YGXoQR4ss0JUNV
         NprZAPvm5rxzECQn3fFkA7L0s3G3SxXUXWbdNeeZhAaosxzoRD5R2fC0oHY0CuaE2AoG
         av58QU+cY4ICfANpz8Hhid4fvQhP/Ka382qNr2KyeI1zDRWf2Fwk60iBBlafBJRuU64F
         QJZjon7hU/mSQ6Yx03P/lEneN2Uwx2wH+3aoLG2h16tLdr7YFOII/E+pv/Ndjv28hcad
         pYYsQI6dghVKMrDDQWHv0fnaUiVQDuA6hD9fpF3ObnoaNUhaKJ3wRsfjoprEjIixmBCA
         OgeA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=b9szbW2T;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id s11si2841vsn.1.2020.09.27.23.06.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 27 Sep 2020 23:06:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Received: by mail-qt1-x844.google.com with SMTP id b2so7271803qtp.8
        for <clang-built-linux@googlegroups.com>; Sun, 27 Sep 2020 23:06:31 -0700 (PDT)
X-Received: by 2002:ac8:4658:: with SMTP id f24mr126882qto.158.1601273191291;
 Sun, 27 Sep 2020 23:06:31 -0700 (PDT)
MIME-Version: 1.0
References: <00000000000052569205afa67426@google.com> <20200927145737.GA4746@zn.tnic>
 <CACT4Y+Zxt3-Dj6r53mEkwv24PazPzTxQ7usV1O+RB0bk2FzO8g@mail.gmail.com>
In-Reply-To: <CACT4Y+Zxt3-Dj6r53mEkwv24PazPzTxQ7usV1O+RB0bk2FzO8g@mail.gmail.com>
From: "'Dmitry Vyukov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 28 Sep 2020 08:06:19 +0200
Message-ID: <CACT4Y+ZZH76qg810RzGp6FDLTxJWVqZgkrXSxqgq7AjpPYG9XQ@mail.gmail.com>
Subject: Re: general protection fault in perf_misc_flags
To: Borislav Petkov <bp@alien8.de>, Alexander Potapenko <glider@google.com>, Marco Elver <elver@google.com>
Cc: syzbot <syzbot+ce179bc99e64377c24bc@syzkaller.appspotmail.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Alexander Shishkin <alexander.shishkin@linux.intel.com>, 
	"H. Peter Anvin" <hpa@zytor.com>, Jiri Olsa <jolsa@redhat.com>, LKML <linux-kernel@vger.kernel.org>, 
	Mark Rutland <mark.rutland@arm.com>, Ingo Molnar <mingo@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>, Thomas Gleixner <tglx@linutronix.de>, 
	"the arch/x86 maintainers" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dvyukov@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=b9szbW2T;       spf=pass
 (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::844
 as permitted sender) smtp.mailfrom=dvyukov@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Dmitry Vyukov <dvyukov@google.com>
Reply-To: Dmitry Vyukov <dvyukov@google.com>
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

On Mon, Sep 28, 2020 at 7:18 AM Dmitry Vyukov <dvyukov@google.com> wrote:
> > On Sat, Sep 19, 2020 at 01:32:14AM -0700, syzbot wrote:
> > > Hello,
> > >
> > > syzbot found the following issue on:
> > >
> > > HEAD commit:    92ab97ad Merge tag 'sh-for-5.9-part2' of git://git.libc.or..
> > > git tree:       upstream
> > > console output: https://syzkaller.appspot.com/x/log.txt?x=1069669b900000
> > > kernel config:  https://syzkaller.appspot.com/x/.config?x=cd992d74d6c7e62
> > > dashboard link: https://syzkaller.appspot.com/bug?extid=ce179bc99e64377c24bc
> > > compiler:       clang version 10.0.0 (https://github.com/llvm/llvm-project/ c2443155a0fb245c8f17f2c1c72b6ea391e86e81)
> >
> > All below is AFAICT:
> >
> > This compiler you're using is not some official release but some random
> > commit before the v10 release:
> >
> > $ git show c2443155a0fb245c8f17f2c1c72b6ea391e86e81
> > Author: Hans Wennborg <hans@chromium.org>
> > Date:   Sat Nov 30 14:20:11 2019 +0100
> >
> >     Revert 651f07908a1 "[AArch64] Don't combine callee-save and local stack adjustment when optimizing for size"
> > ...
> >
> > $ git describe c2443155a0fb245c8f17f2c1c72b6ea391e86e81
> > llvmorg-10-init-10900-gc2443155a0fb
> >
> > The v10 release is:
> >
> > $ git show llvmorg-10.0.0
> > tag llvmorg-10.0.0
> > Tagger: Hans Wennborg <hans@chromium.org>
> > Date:   Tue Mar 24 12:58:58 2020 +0100
> >
> > Tag 10.0.0
> >
> > and v10 has reached v10.0.1 in the meantime:
> >
> > $ git log --oneline c2443155a0fb245c8f17f2c1c72b6ea391e86e81~1..llvmorg-10.0.1 | wc -l
> > 7051
> >
> > so can you please update your compiler and see if you can still
> > reproduce with 10.0.1 so that we don't waste time chasing a bug which
> > has been likely already fixed in one of those >7K commits.
>
> +Alex, Marco,
>
> There is suspicion that these may be caused by use of unreleased clang.
> Do we use the same clang as we use for the KMSAN instance? But this is
> not KMSAN machine, so I am not sure who/when/why updated it last to
> this revision.
> I even see we have some clang 11 version:
> https://github.com/google/syzkaller/blob/master/docs/syzbot.md#crash-does-not-reproduce
>
> Is it possible to switch to some released version for both KMSAN and KASAN now?

Interestingly there is a new crash, which looks similar:

general protection fault in map_vdso
https://syzkaller.appspot.com/bug?extid=c2ae01c2b1b385384a06

The code is also with 4 0's:
Code: 00 00 00 48 b8 00 00 00 00 00 fc ff df 41 57 49 89 ff 41 56 41
55 41 54 55 65 48 8b 2c 25 c0 fe 01 00 48 8d bd 28 04 00 00 53 <48> 00
00 00 00 fa 48 83 ec 10 48 c1 ea 03 80 3c 02 00 0f 85 51 02

But it happened with gcc.

Also I found this older one:
general protection fault in map_vdso_randomized
https://syzkaller.appspot.com/bug?id=8366fd024559946137b9db23b26fd2235d43b383

which also has code smashed and happened with gcc:
Code: 00 fc ff df 48 89 f9 48 c1 e9 03 80 3c 01 00 0f 85 eb 00 00 00
65 48 8b 1c 25 c0 fe 01 00 48 8d bb 28 04 00 00 41 2b 54 24 20 <00> 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00

I think there may be dozens older ones here:
https://syzkaller.appspot.com/upstream#moderation2
e.g. this one where code also looks strange:
https://syzkaller.appspot.com/bug?id=651c61721c822bfdcdae8bfb9320e4a9b4bd49c9

Maybe it's just a random silent memory corruption in the end?...

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACT4Y%2BZZH76qg810RzGp6FDLTxJWVqZgkrXSxqgq7AjpPYG9XQ%40mail.gmail.com.
