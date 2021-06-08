Return-Path: <clang-built-linux+bncBDYJPJO25UGBB47I72CQMGQEXPH3ULA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F63839FED4
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Jun 2021 20:18:28 +0200 (CEST)
Received: by mail-lf1-x13a.google.com with SMTP id o138-20020a1941900000b02902a5ff0b6936sf7942297lfa.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Jun 2021 11:18:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623176307; cv=pass;
        d=google.com; s=arc-20160816;
        b=JMwzVPMqp+gGpCrrUw9CM/2bkAmmDCB2am/5oGZsHXyk8FPnbkKXAKOU/we3SfzpFC
         33LKJysDk+6TRpncewY8eK6RFlyGwv3qK3g7zmRlTxrf7z1TmfsZxHjeuV8JPkuk2vzN
         i2J14Shgqxms+DI1gLiqQY+ukoiXCd5rnVPpbu8D8PuMDpqtmRJ7mTUWTgs12oBRd9lf
         aFgVCXwxh5fmhMoSQUuzsisgnXElw8hHGlJyURGxO9lkjR2VOccilfONWbgLA0vO5ayZ
         /N9N+iRLYYqO1xtQyACfGNFfsNPca4aN0ucGphp1L281Km7ekKte8IDacD07Lk8nN4tm
         /ilg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=fMChmB3M+BltYr9OpNTOwADjzdgC8JjHDmi8cOMuicI=;
        b=jndNmlkDiCCUrccuCnCDorf7S73PIa8NpvJUs/gNeEV0U0hMOow/ydsTGfhHST4KAU
         EoXEjSoOdJFasYK0SbOLC8pPLoUytUoN54RqL9ad6YSdI/SbB0lcgifj5bqsOQO5guOY
         J4szL6pPvUdcdVKnH36UssJvPy+b44Ii5sKi4458ybllAEUJ43TOZlXlkc3D2L2kqV01
         JdhG6y4QyiuPonSlko/n+CEiU0ZQef3zuODOfI+KK8u2iBxhvov4D2cZCme4W6PvJbR7
         SFbLJ84tjBb/Qd5vnnnFllbag6IgoUu5irKDVc9of5DXBCLnqSSgZXlafcBCXqJzXdvu
         hTvQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iLG7QObB;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fMChmB3M+BltYr9OpNTOwADjzdgC8JjHDmi8cOMuicI=;
        b=DY8sYEumbLzsaPVx3Ja5GdNZ3ojFQUKYKwP112pEa+eg3wnZ74NEPn/NfQxnI7is9A
         NHA3fckhC+ZIikZKZJ03j8EeqPbpjKfOAUsx9Mpk3PPqYoZly9YeKC9gzOoEo+DKOj9Z
         uBTqa7yz0mErKGjthOLmg9Ar65yePgrLneCLGkl6poQxL7TIJA1M4d6otcbJtuAGtbyZ
         nbcFCkzWB8I+kD0H2iYHcXgGSS3TwHOapLWK2hoI21w1qzYjL5drlYQkbysJhJsIjOkt
         X2IqtYz7f5DU2wI4NNsfl5aQpPPo+B4970HxCc4D/KLsn9Roza24OQ2BHsaQjjZtEvnc
         3q4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fMChmB3M+BltYr9OpNTOwADjzdgC8JjHDmi8cOMuicI=;
        b=BRo2sLv8z2sYy7u4P5CwK35XzhSbrLTJqCe2OcxReFEIAjykbRgPzHOoq3+R2hZJGi
         wRogmIK9KDUPTTJHImjqReU6//wlJCC5LnqW4BPAZdjkG/0JLko2e0XQlgVo0nNItLse
         FgNKkieL9YHRCstRVdcoOazn399+oQYZrsULe22DnaJE+STQ5evaWJ6sIh21F4UNFycj
         7QDLAQNBimjxgk0l/PapeM8A9Q9iWG5PF6jOx1q7gmcHDn9Ka2gflr1wxDKvaS1QQLlv
         dzkEyQxAXENCaFBV9Pa/r6ptLnSGPFtT08DKZqkVu1UWkwtbKdFB82L1yMwOMXjwN5Jr
         clvA==
X-Gm-Message-State: AOAM531inMzfaG4n1Ez/QfUFqo99mO5E4O9YtnJrp5DYTiDw8T/V+1je
	aX4AatCVroUobPxkNuTQ+ZM=
X-Google-Smtp-Source: ABdhPJw8nBRF52o93clc2faLf/1mUv8h/oJZmnJlK0/11eiaT5rHxlt1/EKezxE76jGhrn/nchVlUQ==
X-Received: by 2002:a2e:2a86:: with SMTP id q128mr17631507ljq.119.1623176307848;
        Tue, 08 Jun 2021 11:18:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:2204:: with SMTP id i4ls1174976lji.8.gmail; Tue, 08 Jun
 2021 11:18:26 -0700 (PDT)
X-Received: by 2002:a2e:9a0d:: with SMTP id o13mr2354838lji.440.1623176306849;
        Tue, 08 Jun 2021 11:18:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623176306; cv=none;
        d=google.com; s=arc-20160816;
        b=p5CvwCKoDBzygp8YTj3i5cAzL9t7DEisBChWT2uWVsBLy3HTxsR3UtXO7anq0tvc6w
         jb8WwnBHHMtbvkj9/kkNPVAb0Ilz3P3QcIBcg38AIxFeCDN3ddHjZPOmsG0b5vI3n8/T
         jPNfEeUqnZ3alFL8xbtpJsyMPCELNnNeeFqifkdSiZMHB6BG8zBMQY0NbEgsoauQ31iN
         odiEzJyyXtJXTkT/ONwO7hoUv068G5g/RyOiqEWjdo1/mkzFpgN0Bc23siKY+3faRjSc
         P5SGa/DSRmO4QgMXV2pyAjl41Kqy7zifGoLOmOD1llKtOFIuRBxrLLfRooOoCaCPNrYz
         tP8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=S5x5dJs8d2mi+sk6vZuhsX9aDnrxEX5BFKyzyJmLqRU=;
        b=vPVf1gv2ilXvLAT3YmbvYeqkwWFX6AoPFvVLyn+KURvvUfLYlMwH8IjjGF4/d1BlDb
         vWU8akNXND3o7uF+kPJNO28e+/xR7/jLqs0YzJJ1aJWdqG/BeJM452mEhFIzkFH9PyLT
         S178rXMHCzCoUaFZChYMbvt92PA5TfJUovOtnARr+zGTopNZPrKhVWnFf+8IH0j+Jj/F
         jB3hCT7ZHokeiEjkY7PPC0qS8uxK7h+u+cZ+oW3sU4X4/Osr89MaIb/NM84gTjnK7iw4
         WzJb4ZOSEhuAXY05sHLWidIxnWyBUxNzdWJ0Z7f5WFxUGui5RO/Mza3HKZzGm/Cj+P7x
         JIYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iLG7QObB;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com. [2a00:1450:4864:20::235])
        by gmr-mx.google.com with ESMTPS id a21si16828lfl.10.2021.06.08.11.18.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Jun 2021 11:18:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235 as permitted sender) client-ip=2a00:1450:4864:20::235;
Received: by mail-lj1-x235.google.com with SMTP id s22so7839195ljg.5
        for <clang-built-linux@googlegroups.com>; Tue, 08 Jun 2021 11:18:26 -0700 (PDT)
X-Received: by 2002:a2e:96c9:: with SMTP id d9mr2537698ljj.0.1623176306424;
 Tue, 08 Jun 2021 11:18:26 -0700 (PDT)
MIME-Version: 1.0
References: <20210604205018.2238778-1-ndesaulniers@google.com>
 <CAKwvOdmhg2tj8cKe-XitoZXGKaoOhgTsCEdVXubt+LiY9+46rw@mail.gmail.com>
 <20210604235046.w3hazgcpsg4oefex@google.com> <YLtUO/thYUp2wU7k@hirez.programming.kicks-ass.net>
 <CAFP8O3+ggR8N-ffsaYSMPX7s2XgrzzTQQjOgCwUe9smyos-waA@mail.gmail.com>
 <YL3RQCJGIw9835Y1@hirez.programming.kicks-ass.net> <YL3lQ5QdNV2qwLR/@hirez.programming.kicks-ass.net>
 <YL3q1qFO9QIRL/BA@hirez.programming.kicks-ass.net> <CAKwvOdkuJBwZRigeqdZGevPF9WHyrC5pBAsz6_tWdXAc-wO+1A@mail.gmail.com>
 <e351ac97-4038-61b5-b373-63698a787fc1@kernel.org> <YL+nb235rIfEdye0@hirez.programming.kicks-ass.net>
 <de1a21c0-f20a-cde5-016e-4b8ca92eafa9@kernel.org>
In-Reply-To: <de1a21c0-f20a-cde5-016e-4b8ca92eafa9@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 8 Jun 2021 11:18:15 -0700
Message-ID: <CAKwvOdmgx8HG5i=MMsOtvJcpMnF-R3FxLrMhd5bHYNSGxZWp=w@mail.gmail.com>
Subject: Re: [PATCH v3 16/16] objtool,x86: Rewrite retpoline thunk calls
To: Nathan Chancellor <nathan@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>, =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, lma@semihalf.com, Guenter Roeck <groeck@google.com>, 
	Juergen Gross <jgross@suse.com>, lb@semihalf.com, LKML <linux-kernel@vger.kernel.org>, 
	mbenes@suse.com, =?UTF-8?Q?Rados=C5=82aw_Biernacki?= <rad@semihalf.com>, 
	upstream@semihalf.com, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=iLG7QObB;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235
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

On Tue, Jun 8, 2021 at 10:30 AM Nathan Chancellor <nathan@kernel.org> wrote:
>
> On 6/8/2021 10:22 AM, Peter Zijlstra wrote:
> > On Tue, Jun 08, 2021 at 09:58:03AM -0700, Nathan Chancellor wrote:
> >> On 6/7/2021 1:54 PM, 'Nick Desaulniers' via Clang Built Linux wrote:
> >>> Nathan,
> >>> Can you please test the below diff and see if that resolves your boot
> >>> issue reported in:
> >>> https://github.com/ClangBuiltLinux/linux/issues/1384
> >>
> >> Unfortunately, it does not appear to resolve that issue.
> >>
> >> $ git log -2 --decorate=no --oneline
> >> eea6a9d6d277 Peter's fix
> >> 614124bea77e Linux 5.13-rc5
> >>
> >> $ strings /mnt/c/Users/natec/Linux/kernel-investigation | grep microsoft
> >> 5.13.0-rc5-microsoft-standard-WSL2-00001-geea6a9d6d277
> >> (nathan@archlinux-ax161) #3 SMP Tue Jun 8 09:46:19 MST 2021
> >>
> >> My VM still never makes it to userspace.
> >
> > Since it's a VM, can you use the gdb-stub to ask it where it's stuck?
> >
>
> Unfortunately, this is the VM provided by the Windows Subsystem for
> Linux so examining it is nigh-impossible :/ I am considering bisecting
> the transforms that objtool does to try and figure out the one that
> causes the machine to fail to boot or try to reproduce in a different
> hypervisor, unless you have any other ideas.

Assuming this is an optimization and not required to boot/run; you
could test that quickly by putting a return statement as the first
statement in the list_for_each_entry loop in arch_rewrite_retpolines.
If that works, you could instead use a counter to try to see which
symbol is bad; once you bisect a counter value where things start/stop
booting, you could try to print the corresponding symbol (ie `name`).
(Optimization Fuel)  (Sorry if any of that is unclear, let's follow up
off thread if so).  Maybe that symbol will give us further clues?  I
think that would tell us whether it's a problematic jump vs call, and
via which register.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmgx8HG5i%3DMMsOtvJcpMnF-R3FxLrMhd5bHYNSGxZWp%3Dw%40mail.gmail.com.
