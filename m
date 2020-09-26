Return-Path: <clang-built-linux+bncBCMIZB7QWENRBSG6XT5QKGQEVILNFTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id DC8502798BF
	for <lists+clang-built-linux@lfdr.de>; Sat, 26 Sep 2020 14:08:41 +0200 (CEST)
Received: by mail-oo1-xc3a.google.com with SMTP id n19sf2642820oof.4
        for <lists+clang-built-linux@lfdr.de>; Sat, 26 Sep 2020 05:08:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601122120; cv=pass;
        d=google.com; s=arc-20160816;
        b=juLmHFdnmG1WB0Zb0FVsLe6Z9BPVgEXDRk1TEh+Yc9Q01134ZtJDdZAJSjJa9hKhzv
         Ac22URhloYxte5av/rJGyC+zXjkDjBDbS4pMNmIuwzjfgLmwcZ9qPKSVcoU6BfgKCaeX
         kLxMh0SSfB/IuhrOvdEmPQhECIHNBnKUa56g2yJwcEckdV+CR5dirotyK7yfWyiUPscb
         hU63ci2Sm7iTjSnvgU9uqXRzzvuD+/rlhhPAe24RtcnxNb0n2XoD3vHAthqsSFREJnKv
         Iv3ZnyJzgHbQIJLRiNTz+gVrDy/uTXkiceCtWY8THGMxxcoCDJ7YLLWpMXbynvNQhV1B
         uM2A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ZW+5OcT/mZSSsHq+7y3MaeQY3CkXIDXOLpDn4Sm3gxc=;
        b=Q9nNKvI42RhNTFNFy8qoQrjJyMHADPbD5hyGThq4c4pNFep0hdJcaMFzdP9Axja/oS
         LIgfZ6eNRqQggOgfpErUpD/4SS5zRkuiZGE98KKgkXT6Hwc3vQqbpIDb0POV5asdH+MU
         iqFhqnoJRhzcynF4N3o6BpisMdRzveWdIHzm9L/KPFIAuk60nLNCcOX0BS+ea5Z5+OiU
         JeCjDQgODr9ijQgwWBx4l9zYrUF3WfpuTEmdYsU6MQhWlCKjUPBAa+PuGf3vUgDjJ4Hy
         mB0CuNH5zug4uxwNyiC7oAle3my86e2n+eRRWyCBB/xVdNXcdt8Z3uHjTPww13eDHeIb
         YPvw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=K4ESyNpO;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZW+5OcT/mZSSsHq+7y3MaeQY3CkXIDXOLpDn4Sm3gxc=;
        b=lH5/aqs3XhVUKvE/prWuKBC7x2fslUTNlsClq7rfb/z1qLz/O9MAJJbZgxLIOvYQ71
         PJnvq3eLg18mI1bTblHZu9tG5HWYmmJeNDBrh7aoy+npVdCmkgN1sVGlpZQUHVudxvBG
         crHvrPjnaztLFvN2GLGJ+qnHoLJl3UFcA80Sayp5nRjrm+njzVAVB3wsiEHazou7R923
         u97vpfuWQrRjVBTFG7Q1cnOQRMQdhMVkIvO7ujicGSleyyhJbmRO8JuTjL4EpuZk1u2w
         8/sZ16aXp+hGhnkCpDkszDMWNqPgyghUPM7DrRG4372W8b4q4DPAbkq48vF91atrb17E
         Ge+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZW+5OcT/mZSSsHq+7y3MaeQY3CkXIDXOLpDn4Sm3gxc=;
        b=I06xx5qHCEWXLUqpjOrERlCkKwCTlyGxKEQpH1t6xKGcBroX41fVayzIEISr4SNHMD
         fnYT0DnwQnK/+By172S8Cx2ckJ0dhnHczHCdCvXuqkuxo4Z6BuqOLG3+LF6jWWYoJ5F2
         SSE8d/qPb2qtDLt66hTo1cI2svYatovrh+i1tUVDpw9rR8oYNbzUZKe6R9JlAcISP5tT
         d2hWWKUu+Gc79Ada7K1lZ1RBLXOZBhDSzPtCbuaZn3AlOv85ezcnprqH7D7Ll36sp+4u
         AsL/YVK/fhI6Hapbx+T8Ghb1rEC28GUxbBh8cxYkfvnd3vpiXHG04ZzP+qBXWs9mBo4l
         3FoA==
X-Gm-Message-State: AOAM532pHwkGLGwC+oAdNbgF4dfxBkzOsVPoVNqGOecDesUu1Qu43MUJ
	ITgHIto94TYYAVXoioKqCXE=
X-Google-Smtp-Source: ABdhPJzyIdcwFK/kFU2zwvnQ5R3EyeB8I3pBld9+oamylOQ20jNR8SUTuP3Ee8xFkTrqkgAgyAn+7w==
X-Received: by 2002:aca:1312:: with SMTP id e18mr1151267oii.19.1601122120403;
        Sat, 26 Sep 2020 05:08:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:f451:: with SMTP id s78ls608276oih.5.gmail; Sat, 26 Sep
 2020 05:08:40 -0700 (PDT)
X-Received: by 2002:aca:f40a:: with SMTP id s10mr1166517oih.126.1601122120053;
        Sat, 26 Sep 2020 05:08:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601122120; cv=none;
        d=google.com; s=arc-20160816;
        b=OHpuO5IQPGcKiFYtxHLceyuG5sSdOB6vUrdqf1ps4p/b4H+E5XZeTWLHtrGRs2+zoV
         DzpspACZEE7IhXXgccRLLT9YxXM1no1MD+J34bpDE+1lzl4xFJcMHvYTLkb4K7j6glQN
         XrJizu33QDf1wndOtUUQtsu9LSk5NcS7vWnvqoVBP2QVXbczOP65455VKVKo0nG015gw
         GzYrGtz/02p8uNeIIpWjKJErCgox5UE/DZuFFPveZooaYvVBctJLhXhXTo8WtUaPm9Ff
         Mm/R/srviisPCxhD5TyfHxf+1iKMwOBf8r4ynMIp4mhJGiSIg2U/tU3COKK6M5HMHW/7
         /vSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=tQkrRdJ6c6oJ77YZati+E5lioU8KClKXmW+hw7Drfk4=;
        b=1KoIDzLhcz79TPc16aDSt6J91WBSUYfPkrb2bRud9U0gEBtyz6eCqxxxFo+Mt7PDi7
         Kuc5t23kbJdqX3D/3e7YKR6zBXMeEOeCcrDpoyXjM/ynYaHku95OKYWCUgbxpPhzzsNg
         XFn1ryBzpaU3VClrHWx+eJhdrkgxUNScUf+0OAPPKhJoqCT5xMJyBx7c5QCEh6RnfiWb
         vQWLDATm0DqRXo7LUOR4AgDSaDwhxTjaQr2G4EInkm7zBm3Ta797RVB8sf5xl04ZpnMC
         0Wk1JgzqmgYfYSor3m9BBP1fb3Gi6xp/65wacEZXoFNajOdCpJ0MKSq1GRgg+KS9RHqh
         4AkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=K4ESyNpO;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf42.google.com (mail-qv1-xf42.google.com. [2607:f8b0:4864:20::f42])
        by gmr-mx.google.com with ESMTPS id i66si414322oih.4.2020.09.26.05.08.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 26 Sep 2020 05:08:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::f42 as permitted sender) client-ip=2607:f8b0:4864:20::f42;
Received: by mail-qv1-xf42.google.com with SMTP id cv8so2863507qvb.12
        for <clang-built-linux@googlegroups.com>; Sat, 26 Sep 2020 05:08:40 -0700 (PDT)
X-Received: by 2002:a05:6214:292:: with SMTP id l18mr3314961qvv.11.1601122119258;
 Sat, 26 Sep 2020 05:08:39 -0700 (PDT)
MIME-Version: 1.0
References: <20200919110831.GD7462@zn.tnic> <CACT4Y+ZhofJhNjfav22YNVpxtH4_+3Qaut6rOiqv4MLNU5mcEg@mail.gmail.com>
 <CACT4Y+b9ZCKJkOmwbEC6sZxEQ-9g2g=-v4+X0aWv7AsrZo7utA@mail.gmail.com>
 <CAKwvOdmKcn=FNzwtBZ8z0evLz4BXgWtsoz9+QTC6GLqtNp1bXg@mail.gmail.com>
 <20200921221336.GN5901@zn.tnic> <CAKwvOd=E11KriNqeVv2-Tvq5sQy=4vyBzDEH22D5h5LgBeFsVw@mail.gmail.com>
 <20200923090336.GD28545@zn.tnic> <CACT4Y+Y4-vqdv01ebyzhUoggUCUyvbhjut7Wvj=r4dBfyxLeng@mail.gmail.com>
 <20200923103431.GF28545@zn.tnic> <CACT4Y+ayTBwBwsnV9Kp-vMQ=hgu9-r9g4qzAfd+HdQXX95PX9g@mail.gmail.com>
 <20200926112119.GA22089@zn.tnic>
In-Reply-To: <20200926112119.GA22089@zn.tnic>
From: "'Dmitry Vyukov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Sat, 26 Sep 2020 14:08:27 +0200
Message-ID: <CACT4Y+YbEhu2XHoPT9g7Bi7fhjqCkXMBhgjH5yqm7vHy3UEHjw@mail.gmail.com>
Subject: Re: general protection fault in perf_misc_flags
To: Borislav Petkov <bp@alien8.de>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	syzbot <syzbot+ce179bc99e64377c24bc@syzkaller.appspotmail.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Alexander Shishkin <alexander.shishkin@linux.intel.com>, 
	"H. Peter Anvin" <hpa@zytor.com>, Jiri Olsa <jolsa@redhat.com>, LKML <linux-kernel@vger.kernel.org>, 
	Mark Rutland <mark.rutland@arm.com>, Ingo Molnar <mingo@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>, Thomas Gleixner <tglx@linutronix.de>, 
	"the arch/x86 maintainers" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	syzkaller <syzkaller@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dvyukov@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=K4ESyNpO;       spf=pass
 (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::f42
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

On Sat, Sep 26, 2020 at 1:21 PM Borislav Petkov <bp@alien8.de> wrote:
>
> On Wed, Sep 23, 2020 at 05:20:06PM +0200, Dmitry Vyukov wrote:
> > It's a random fuzzing workload. You can get this workload by running
> > syzkaller locally:
> > https://github.com/google/syzkaller/blob/master/docs/linux/setup_ubuntu-host_qemu-vm_x86-64-kernel.md
>
> Yeah, the my.cfg example suggests that the syz-manager starts the guest
> and supplies the kernel, etc.
>
> Is there a possibility to run the workload in an already existing guest
> which I've booted prior?
>
> I'm asking because I have all the infra for testing kernels in guests
> already setup here and it would be easier for me to simply run the
> workload directly in the guest and then poke at it.

+syzkaller mailing list

There is also "isolated" VM type, which allows to connect to a set of
external machines via ssh:
https://github.com/google/syzkaller/blob/master/vm/isolated/isolated.go#L29-L37
However, it's better to have lots of them and with a console cables,
and still sometimes they may brick for various reasons.

There is also syz-stress utility that may run some workload directly
on the underlying kernel:
https://github.com/google/syzkaller/blob/master/tools/syz-stress/stress.go#L29
However, it does not use corpus/coverage, so I don't know if it will
be able to reproduce these crashes or not. It will also be up to you
then to restart the VM/fuzzing every minute.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACT4Y%2BYbEhu2XHoPT9g7Bi7fhjqCkXMBhgjH5yqm7vHy3UEHjw%40mail.gmail.com.
