Return-Path: <clang-built-linux+bncBD66FMGZA4IKBJ7P64CRUBBSFMC4S@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id CD0E02100D7
	for <lists+clang-built-linux@lfdr.de>; Wed,  1 Jul 2020 02:06:57 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id z187sf16393064pgd.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jun 2020 17:06:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593562016; cv=pass;
        d=google.com; s=arc-20160816;
        b=K6Dc/0OjteZageRpiGLVKD3Hv4FG8WVmoadAiZ00oGj+i29Six64FhJB48py4BhGsS
         YYfbM6e4124ZhcyuO3dFwNqqtUUpY1Zms+8RMW51On/dnsFsOt+KeTH2rHb9fSE4qxYf
         n9MbXSFC3kyLHJrOjEjKWSrjN2hQI45+W+VBLb0s+AXN4o0aXbOn0eOeknJGQAhb18bC
         MeBvO2uIl5LBcX+dkgL0nflmEzs+iZw4MPxX/KytkoRn4cWN+m0cXJgBbfu5UpFM2Aaz
         4R//YNIBBKz/OG71HiUy8j+JVEHHnT0ygA3pkMc9C10cU6QPT9YVXz/QZS7ke8ylYrMd
         2h7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=wYzo9EYe4GBA7HQoUpDgC9rMTxMwm3+Oe8UR0L6Fq6g=;
        b=rmF66MFUSnYsdADsY0vzRoWxG7h0Wa1VM3re9qutXaFRPeBhjMUC5GOiGGFxurxcfk
         IbYGkNzarOFczXntpc9wbXYVbHlBR9aZGlIgf/1K+D3R6FJJNglJXXHQL/R+yuvBEJGf
         UVR40ySdKXl2rwfm9LToAZjAeHz7+1Ya2nHz4jWdjZAxfmNctorprZqixlt9oAb7RY5g
         hOu1N9OPkbQgvLMfgtnI3qIHwtZ31O0/OyLDtIJvIGTci/VDcflh8cweK9NZSbbs5cxw
         wQkrqAWtyRMOu0ZWqjyBKMgEfhaz9N5wC/LA89djMThMye6pvFXYgEhU6WIVgXlZe9h1
         VzHA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oIi2JFEv;
       spf=pass (google.com: domain of morbo@google.com designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wYzo9EYe4GBA7HQoUpDgC9rMTxMwm3+Oe8UR0L6Fq6g=;
        b=h7xsnDQZ0KeNdRWa4KjzSKUQ1qYxh6WnjAElvuTn6CgTVB6cmiCe9NQRRfjnqTD3c4
         Hrzrpnc4mdyjzkvu3o6Yujf/73Jd/Zsfytv8EKL46IbHpY2L5P8II8CftsZ9OdW97k6H
         YuLqj3veu8npMUflvBBpX1RSTE13rnhZOH3NhRWNcf9Tb2RoYmsuAU6EWEK9X7vmH17k
         K6aHYb6Kbv2nzJYbv0D5HtoAYw/frswOqzGHCTls+tW+kT3Tua33brsiHQzEIE+eucb8
         p4U88vhOCjhZgjBJMM1igu9nY4m/mN7+d0lihUlmCD7qcK36IyKvGb81JXbmwBOKKHRa
         iBOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wYzo9EYe4GBA7HQoUpDgC9rMTxMwm3+Oe8UR0L6Fq6g=;
        b=bxp25FEOzHt+5UFVttAZ6QvQQ7PRc6+xx9LzDi63PDACJbIT/SR/uhobNbbgMXaI+9
         x9+HlIkCtTiinqsfubam9GF+ab6MzI4RJsUH2NXslXebxX3Im0fEbB4NzkBNHEFDg8zY
         2lQgIAtuSiw4WYPhy9CDy7I5hEe/COIS9TMdADVN9IpJHFrkui0IdQbyQfC626X2o+Zq
         JjmT3DCBta6pkQpB0Dy90duAzIjeFTFpgKGIt43HXFTQPR/U0TKiqqSR+G+jLduTBbd9
         hDB7+uih2CG25EQERFiokeBAO7n4JV2bIVgPt45usRpUO5tinQpIz0kHHazDMSh94/Aj
         Rewg==
X-Gm-Message-State: AOAM531x2Zv0hHSd8OhrVc/ez4PUPZMwNG6l7y39UjfS9OvLU37QxTQq
	Nt+azfLCYvA2L94xkGxp+RY=
X-Google-Smtp-Source: ABdhPJw6W42MYF43ye9r4wMe3n/vI3ekrvEQNWMeAN0Wu1rOlX0T9AhkyJK3+f9et2xu1eap1S8Cyw==
X-Received: by 2002:a17:902:8302:: with SMTP id bd2mr19854786plb.110.1593562016126;
        Tue, 30 Jun 2020 17:06:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7e97:: with SMTP id z145ls77336pfc.4.gmail; Tue, 30 Jun
 2020 17:06:55 -0700 (PDT)
X-Received: by 2002:a62:640b:: with SMTP id y11mr20988258pfb.195.1593562015716;
        Tue, 30 Jun 2020 17:06:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593562015; cv=none;
        d=google.com; s=arc-20160816;
        b=QxFiqCbg5mCnRA6FAUbG5cH55PQUq7/CP2C9yJfYyLiHNRoxeJ6nd7ppNXZ2aS51ra
         firYMXDcs+soD3iHczuY8hx+4M8IIX07u+MtrjiRg2jdfvoTG+PO3OPUn1FsKIC6aXUo
         GblxSBmQJ3UrEOkGv+HQX8cSbaHP4hMFDqhPRmAk017F8wLPi6LVryV6iDE0YIA56eZ+
         qSzbulXv7osKv8oOszjqMH1FHIrQw0fMDhoZ7McIgGJ6s2SfXrRmgEbJlofcCs0rd1N+
         rIGU6l3beeWru9fNFJsN94LW16/yRu3jkXH5e71RxLu/K3gJZnBnAltMHD/9LLnQ1M/J
         FlTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ljeanCVomM9pm7YqGsm40u2yOhEfwYZjVfL5sMIeFvE=;
        b=w11qVt9u79SCuAsbYNqOvohfZFNffNGALJ97IDgq2M+XCMMI87BHmIkveMQR526DR/
         MZOYTFLFkLHfwTGgCPEb5iI0B0ICV39hXCMCn2WQubANGp03mVJV7VZOSD6tCGydIFxN
         OMpg3hI8PYSayVAH1pqSJJop5wgy8EP5IDeMlUejdNrjiMjf2FqNcVODCkx90YRat+ip
         f+gkbRNh9TpWmI1ajCs/NYqq0XiQxxZohxa8aV35A0Dgg1t7EN90eFMZNl3O8mGt+BP0
         344csJ+jUlRk9NXE15wAs2Ao2fk2CwLlFfwWHu+CpaS4cubZG5dGjsa7vS99di/+x2ZX
         5b2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oIi2JFEv;
       spf=pass (google.com: domain of morbo@google.com designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com. [2607:f8b0:4864:20::e44])
        by gmr-mx.google.com with ESMTPS id a6si302493pgw.3.2020.06.30.17.06.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Jun 2020 17:06:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of morbo@google.com designates 2607:f8b0:4864:20::e44 as permitted sender) client-ip=2607:f8b0:4864:20::e44;
Received: by mail-vs1-xe44.google.com with SMTP id x13so7564371vsx.13
        for <clang-built-linux@googlegroups.com>; Tue, 30 Jun 2020 17:06:55 -0700 (PDT)
X-Received: by 2002:a67:f04:: with SMTP id 4mr17254670vsp.112.1593562014487;
 Tue, 30 Jun 2020 17:06:54 -0700 (PDT)
MIME-Version: 1.0
References: <20200630184922.455439-1-haoluo@google.com> <49df8306-ecc7-b979-d887-b023275e4842@fb.com>
 <CA+khW7iJu2tzcz36XzL6gBq4poq+5Qt0vbrmPRdYuvC-c5U4_A@mail.gmail.com>
In-Reply-To: <CA+khW7iJu2tzcz36XzL6gBq4poq+5Qt0vbrmPRdYuvC-c5U4_A@mail.gmail.com>
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 30 Jun 2020 17:06:43 -0700
Message-ID: <CAGG=3QWo9J4LVePVH4JVD+Y364q-R-BwpR5rxemXzBR6SqbnVg@mail.gmail.com>
Subject: Re: [PATCH bpf-next] selftests/bpf: Switch test_vmlinux to use hrtimer_range_start_ns.
To: Hao Luo <haoluo@google.com>
Cc: Yonghong Song <yhs@fb.com>, Networking <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, linux-kselftest@vger.kernel.org, 
	Stanislav Fomichev <sdf@google.com>, Shuah Khan <shuah@kernel.org>, Alexei Starovoitov <ast@kernel.org>, 
	Andrii Nakryiko <andriin@fb.com>, Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, 
	Song Liu <songliubraving@fb.com>, John Fastabend <john.fastabend@gmail.com>, 
	KP Singh <kpsingh@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=oIi2JFEv;       spf=pass
 (google.com: domain of morbo@google.com designates 2607:f8b0:4864:20::e44 as
 permitted sender) smtp.mailfrom=morbo@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Bill Wendling <morbo@google.com>
Reply-To: Bill Wendling <morbo@google.com>
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

On Tue, Jun 30, 2020 at 3:48 PM Hao Luo <haoluo@google.com> wrote:
>
> On Tue, Jun 30, 2020 at 1:37 PM Yonghong Song <yhs@fb.com> wrote:
> >
> > On 6/30/20 11:49 AM, Hao Luo wrote:
> > > The test_vmlinux test uses hrtimer_nanosleep as hook to test tracing
> > > programs. But it seems Clang may have done an aggressive optimization,
> > > causing fentry and kprobe to not hook on this function properly on a
> > > Clang build kernel.
> >
> > Could you explain why it does not on clang built kernel? How did you
> > build the kernel? Did you use [thin]lto?
> >
> > hrtimer_nanosleep is a global function who is called in several
> > different files. I am curious how clang optimization can make
> > function disappear, or make its function signature change, or
> > rename the function?
> >
>
> Yonghong,
>
> We didn't enable LTO. It also puzzled me. But I can confirm those
> fentry/kprobe test failures via many different experiments I've done.
> After talking to my colleague on kernel compiling tools (Bill, cc'ed),
> we suspected this could be because of clang's aggressive inlining. We
> also noticed that all the callsites of hrtimer_nanosleep() are tail
> calls.
>
> For a better explanation, I can reach out to the people who are more
> familiar to clang in the compiler team to see if they have any
> insights. This may not be of high priority for them though.
>
Hi Yonghong,

Clang is generally more aggressive at inlining than gcc. So even
though hrtimer_nanosleep is a global function, clang goes ahead and
inlines it into the "nanosleep" syscall, which is in the same file.
(We're not currently using {Thin}LTO, so this won't happen in
functions outside of kernel/time/hrtimer.c.) Note that if gcc were to
change it's inlining heuristics so that it inlined more aggressively,
you would be faced with a similar issue.

If you would like to test that it calls hrtimer_nanosleep() and not
another function, it might be best to call a syscall not defined in
hrtimer.c, e.g. clock_nanosleep().

-bw

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGG%3D3QWo9J4LVePVH4JVD%2BY364q-R-BwpR5rxemXzBR6SqbnVg%40mail.gmail.com.
