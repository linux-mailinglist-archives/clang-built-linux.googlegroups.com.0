Return-Path: <clang-built-linux+bncBDCKNIVX54KBBRED6P3QKGQEGX6KQVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13d.google.com (mail-lf1-x13d.google.com [IPv6:2a00:1450:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 704A121117A
	for <lists+clang-built-linux@lfdr.de>; Wed,  1 Jul 2020 19:03:01 +0200 (CEST)
Received: by mail-lf1-x13d.google.com with SMTP id y12sf14591348lfh.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 01 Jul 2020 10:03:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593622981; cv=pass;
        d=google.com; s=arc-20160816;
        b=O/3lxezZVHrMeyJAYpjGsWwOKFPQFd4eZckjnbfxwZrwPUYSewlwdHyATcQdOre/Lh
         TKL8HWsgeisIL3dne8wzJ+9n09P8SnPAi0XOhg2mlwTMITfGYIQTYBOy/T47nGyhXoK9
         ws6TF7NVXxbfCq6oPrMRb1PfLy3+h7Q6hEWQP3XJo4cI4xm7u05G272aQgJepx/qsGsf
         MFZQ75AEGK9xhv2yuCvVhGjR4aI98EScUAOqZn2+rWGbRS9+aMP+LJItoyQUFIrGdzQJ
         tD1qBl/4E3uI8Q7UsW12H3e58Hp1Zvb5TaPehfY5E1mcMu2gaAyWmAOv5UHLnHEhcssr
         E6nA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Qz50G+5yIXz8Yi7PWRiYSqvadJF/Hxzh8Y9EVCrHnoQ=;
        b=XTrsRhDzXAPuXB8Kw4eYDhj6pDqjJXswfSCFtBlv5CZK5IftJCb2KMA8sO9gsIFLXW
         kY2u9Jjb1Atk6ft6/XPrI4UdzNEJdtiiXflgtxRbnWXlhnLqi/v2TD+s6sUISW6pmRnO
         MEPt7MFSr3zKHGh4FtLY3qNjLBSm4ghK3Iayg49uJmr9zEVfyyETFNALh7lAWNl+pwO0
         lX8KVaByk7d5XHPudHw0gsvG7D2hXdp1kMoRw+YWBmf2ZbOSQbgPSZKmPv5CNfXtSkcR
         9S8Rb5oTniRgTtgdU10qULZ09ojpqk/j9AZwahdFiZ5FgTkiSl1SdKIWtf2LWPvBLZQ9
         9Vhw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FNRiKjGO;
       spf=pass (google.com: domain of haoluo@google.com designates 2a00:1450:4864:20::543 as permitted sender) smtp.mailfrom=haoluo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Qz50G+5yIXz8Yi7PWRiYSqvadJF/Hxzh8Y9EVCrHnoQ=;
        b=Ksem5YZcp7BbiYdAlomOtPNtmR1mdIbzmEYcSpp4O8F3hA/pVGIuZab0MgiMlQ5WdN
         l94t5PJHMjnE5UdmdFvu0kA1f29s/cUaYLSrwa6fQ3S91j4IwdDFAOMvvRMpJmoxg1jO
         0MfcqIsZP3FzZL/n6JsEm98+GhN0n4MhPTjdOs4dX/3enni2Z+Fya0GNeqW4e+Bo23lo
         EAJRMpTbdJESCLQdEJiB7bnMk8OuEOX6h1Q2rrYfpNPHZ9dk2lmk/V3dazYdRbq85GKD
         EKEbtOZtLZ6y6HvRtZg3ysvv+0HwPV3huwlXqCugLqhSq7X0DOzqFwkL+n08ykkLoVjU
         GKRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Qz50G+5yIXz8Yi7PWRiYSqvadJF/Hxzh8Y9EVCrHnoQ=;
        b=Onds3H3V7+BvSZ+1M3g3Fwd1UT/NwePYwJnvL+K8GTh7v6EMU/mYWoz1HGkHwNkwkg
         dh1UE5wbGXeFSpHKGV39DyvdqCyw9yCusVBNCvbp54Qygckr+0FxxpFY5AToj9QY0zEp
         /JZ10QUt2t+wQmxYOAsPwf9nHK5zv3JkXCymJmkc0mKJTkx/Jfst32Bvl4FxwENOSIH1
         j46s+iaPX2ctE1b7sbLfUoarvkQX3pGX/rNbUncSOCum+4MxwZ4RQGjRA94BSEiBWqTQ
         CBhlH8ch1fjffYLRHXNtUJIY4xbmYN/okAUhkzfZBqolDqcpkW9ge9uKLWcxnnD/b+1R
         08wA==
X-Gm-Message-State: AOAM532w1SSWzdOKKkZ/NrsFdQ7y3LLayoadYFH33O5us7FRd87+UZcT
	JOWV5K5iZ7CVmjaYyF4MLi0=
X-Google-Smtp-Source: ABdhPJxu1IuyDil4yTBWUFgQ2wqYR4UTKTG/UE9YzoX+JAPi07AaW+0FB1pCnktWR+v8WvutaCu3YQ==
X-Received: by 2002:a2e:b4ec:: with SMTP id s12mr14465090ljm.155.1593622980982;
        Wed, 01 Jul 2020 10:03:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:7102:: with SMTP id m2ls755993ljc.6.gmail; Wed, 01 Jul
 2020 10:03:00 -0700 (PDT)
X-Received: by 2002:a2e:6f14:: with SMTP id k20mr13859072ljc.224.1593622980203;
        Wed, 01 Jul 2020 10:03:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593622980; cv=none;
        d=google.com; s=arc-20160816;
        b=Gctf48mUiydxo9Rz5b0AgwSdvWeujiKjUVHr4ucPlcYvDmHLIs2gGb5P6TweSBr99B
         x0VfZkifVfgnnr1YHTqtYaKhe6SOXmTMqSBTwZG/iTNg6gPTcD7D0ipd83vdEE+UydHQ
         1C6t2LbXY2uCK0fgx/+mS8tGW8SdqGPXZ+63oan6hIuqaEoKs1nFJUhl+/5MgsB5eg4V
         Jip+9dc6Z7ZHBKzW8C+7OGr97SYFblY01CcWM0BWF/N9x8ybl6Tes5guQ6gHADqnCS2Z
         vUDBvd25EXAJSZirGCYCCpPMwMGEOFq4MpIsGDlh4888hEqnjxMZUfGn3azXR3s+xxwi
         d+lA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=sXLocZuYa5LyRW+7c8dY9wi1ppvduxYFU7Sa4aAHUQ0=;
        b=rJ5Q/WYQND1U+uNFQH5aaqQaJHC/KxePzZF1jrQ5iRYvaYAq3uDnY18kxVF2UW1td9
         tCm4lzL4jMhWEeLAu2eU+4x2MAqdQ+GfS7muzXvCa6uPMYyLwue/L154StwyzEvZPCwm
         3Pb9jJRWZzCk/tGj5uxkPeD5DQVXMUQJ63tAtoi8V7Z3S25wQ1iZkGjSosDtjD5oiVYo
         RS+6dXVxGbl7nPxobBjhPJommrcnw4QYnnmZMN+wJLIw60ACfcMm9qJ5Wog5iLOYWq9V
         OzufGh7xRBEb54VSpcb3VHpDzpX/whsgyX0UBZw+7FIed7jyjj9btIlF+awq2fDmUnwD
         ebLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FNRiKjGO;
       spf=pass (google.com: domain of haoluo@google.com designates 2a00:1450:4864:20::543 as permitted sender) smtp.mailfrom=haoluo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com. [2a00:1450:4864:20::543])
        by gmr-mx.google.com with ESMTPS id 7si293263lfk.0.2020.07.01.10.03.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Jul 2020 10:03:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of haoluo@google.com designates 2a00:1450:4864:20::543 as permitted sender) client-ip=2a00:1450:4864:20::543;
Received: by mail-ed1-x543.google.com with SMTP id h28so20707212edz.0
        for <clang-built-linux@googlegroups.com>; Wed, 01 Jul 2020 10:03:00 -0700 (PDT)
X-Received: by 2002:a50:c355:: with SMTP id q21mr27751649edb.121.1593622979559;
 Wed, 01 Jul 2020 10:02:59 -0700 (PDT)
MIME-Version: 1.0
References: <20200630184922.455439-1-haoluo@google.com> <49df8306-ecc7-b979-d887-b023275e4842@fb.com>
 <CA+khW7iJu2tzcz36XzL6gBq4poq+5Qt0vbrmPRdYuvC-c5U4_A@mail.gmail.com>
 <CA+khW7jNqVMqq2dzf6Dy0pWCZYjHrG7Vm_sUEKKLS-L-ptzEtQ@mail.gmail.com> <46fc8e13-fb3e-6464-b794-60cf90d16543@fb.com>
In-Reply-To: <46fc8e13-fb3e-6464-b794-60cf90d16543@fb.com>
From: "'Hao Luo' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 1 Jul 2020 10:02:48 -0700
Message-ID: <CA+khW7hLL+=sZwCT_6gHHjHTZnmbNk5Pju9vsLOJF4VjyHY-iA@mail.gmail.com>
Subject: Re: [PATCH bpf-next] selftests/bpf: Switch test_vmlinux to use hrtimer_range_start_ns.
To: Yonghong Song <yhs@fb.com>
Cc: Networking <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, 
	linux-kselftest@vger.kernel.org, Stanislav Fomichev <sdf@google.com>, 
	Shuah Khan <shuah@kernel.org>, Alexei Starovoitov <ast@kernel.org>, Andrii Nakryiko <andriin@fb.com>, 
	Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, 
	John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@chromium.org>, 
	Bill Wendling <morbo@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: haoluo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=FNRiKjGO;       spf=pass
 (google.com: domain of haoluo@google.com designates 2a00:1450:4864:20::543 as
 permitted sender) smtp.mailfrom=haoluo@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Hao Luo <haoluo@google.com>
Reply-To: Hao Luo <haoluo@google.com>
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

On Tue, Jun 30, 2020 at 7:26 PM Yonghong Song <yhs@fb.com> wrote:
>
>
>
> On 6/30/20 5:10 PM, Hao Luo wrote:
> > Ok, with the help of my colleague Ian Rogers, I think we solved the
> > mystery. Clang actually inlined hrtimer_nanosleep() inside
> > SyS_nanosleep(), so there is no call to that function throughout the
> > path of the nanosleep syscall. I've been looking at the function body
> > of hrtimer_nanosleep for quite some time, but clearly overlooked the
> > caller of hrtimer_nanosleep. hrtimer_nanosleep is pretty short and
> > there are many constants, inlining would not be too surprising.
>
> Oh thanks for explanation. inlining makes sense. We have many other
> instances like this in the past where kprobe won't work properly.
>
> Could you reword your commit message then?
>
>  > causing fentry and kprobe to not hook on this function properly on a
>  > Clang build kernel.
>
> The above is a little vague on what happens. What really happens is
> fentry/kprobe does hook on this function but has no effect since
> its caller has inlined the function.

Sure, sending a v2 with a more accurate description of the issue.

Hao

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BkhW7hLL%2B%3DsZwCT_6gHHjHTZnmbNk5Pju9vsLOJF4VjyHY-iA%40mail.gmail.com.
