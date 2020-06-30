Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBCO4533QKGQEXQ4S4TI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id D27C120FEB4
	for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jun 2020 23:26:34 +0200 (CEST)
Received: by mail-qk1-x740.google.com with SMTP id h4sf14755453qkl.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jun 2020 14:26:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593552394; cv=pass;
        d=google.com; s=arc-20160816;
        b=DHIJJXcBP72btZBrudmm2KrTJS+eyIciNOZDNmAORODVSKj564XwCm/hH9Chc22wRV
         TEaFRD2fM5ETtIoVkwQUcOaKryhvHis2m9kbLxpsnWynPsjIYV1steGui+8lG6oTf/jR
         gFxMh1AzUX4ZFYVJidADwYmITB6EW2xMR+aFmIkgp0IlQU9JWosU3fmFt9ZElRpBoQZ5
         +D4J0oKfou9PjRrZozrkI0b5M8Gop9rLBLNqATqYrYhTkE6hhZugiiclZg85idguKoRp
         pn3i2OfmR9BGQrIW6QqDb2RKi0g5G8qPQ1lPkvIpQTslXvJIJX3sAv6DcOmqYdkMzUKd
         lJpw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=tCNoLWqWwJ4E2rj/YbCBTBD1nQnyPJpg+0zdAo8Vo4E=;
        b=EyJ+vnb+WsuqDoUHLz8wMfsuG+EJYYaKSJiw5ExV3zUGaBlUNN/SNY8TEFKXRlKWXX
         6vGJ6G2ACTotYJeDEZEZ+Aho0ovzK4OciiZ1itTIxb9ZU6XecOCxXmvE+2djI5lszEo+
         HLLybkObYGgvPUciMo5Gu+V6GLfhLnJrwXwVQ8j3rCAcbqCzfi1tEFeoEcoTidVcMuFH
         LZGFqWn/muedwLFZhosc44BJIRvA15v2JewFclimUT29Z7k5ayoidpnhrKu2VOaCPzhm
         cObt7RtxG9jKbr5IQDMGs8/1PfTmB+E+a1dUxol71+WOQ841EWTyjhU4NoZbeKoHNyif
         /t/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CqI5q8x8;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tCNoLWqWwJ4E2rj/YbCBTBD1nQnyPJpg+0zdAo8Vo4E=;
        b=TYjE6O0DPbgLjuHNEvxk4Qh8hBJaKvNzZ1aDkuTHy0PEvUD+CU8N7smZceqCy913dC
         UMpyKcgojjbM0OMnweHv5Jgn0NuLkFMvbw9PIFenHKBTINNkD/Ky8xDZEvwgqkvTL13S
         67poItqC04QLDOKzxDvyUM7gX90Y56t1XNNgySDt52Oua8NAga/TaKaAT+35cdZE4UYz
         cKzF4tmrVEYAnVTKy57XOg8eUPHqUwDAO4B4BJ/XoWZv9phAJQhIFp6nYCttFMZfYo8f
         c0oC5YV3VjOytjt8TyPBPMc4tN6tb8pV+Wzya+N+CAtQwBJrGdon8rWBeujvWT155iHL
         HJdw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tCNoLWqWwJ4E2rj/YbCBTBD1nQnyPJpg+0zdAo8Vo4E=;
        b=PzuYZf7uHs3QBDtLeL9oltKwziYMKdSRlIrjO8K1bi81q0DKODL8Q0ev73coH0cB9b
         ct60tUZzrdqylE4Xkh/Uc5inp4kMW/52ULRVkXWmB37+I+ybdX7YnCBGbnRKaGr1ftTI
         WoiQq+xJWBXi1w2d0ybFVoXH2uGkUvAcgx+9K/E3DoYOq6afTz86HUk6Gh6B0RBFV2YE
         TWknUujisJbcv2elmIgOtZqS3wdhK8YDHWuuTo8i2DzwGTWnLgxUwzIvjgx+Zr1gfVPY
         VLj2IYKqHvVokTDGNfkcjWQoHNtiruLSWWH5/AFFMdgT2OhqfN0XMsnvp2h/yo/gdegD
         +xrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tCNoLWqWwJ4E2rj/YbCBTBD1nQnyPJpg+0zdAo8Vo4E=;
        b=pCz7k81xhB7f1I6+FBqkM9Su2kIHqo2hpnh7WR2Ss2GBE2x3sTmWj3ZOWMoRkGM3Ij
         /NGrYNk0DQyr/bCpXYxjM1iM4SpPeVZ2LZZ8cH63UJNz5Dc4mu8upY/uZN/22z++aQbF
         0uJ71X9JThSCCutfFAGU+kj0dnO+hYsgF7W1IyZQdancj24TkjsFJoCSGyiNqYimxSHS
         CIpmheyQFovD9ZVxA0u7sLZWQYLT/oZig4ztNUw1nvosG5N4MWVktDe4yPzSZwYq0L15
         Ly8qsWXKYmdzNe6cCyPhIngYLVKDvLOfsOMrCSjFP/z6juzLZvxR9j4BEI0UaJmq1yzg
         AqiQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531+DmwrB6X9ZVUFsJgC9KOyTUhVZRqGSB5RpszucdqC7ycqTzft
	TatOHKZI6QUYhnemmj7qN3Y=
X-Google-Smtp-Source: ABdhPJz0N+rqDTh9QCL79mlK9TAKpd3QIiwG0qW3+bRQbG4BYzx6Gr3rOLQv+M2cyDbZcWf4beVTHA==
X-Received: by 2002:a37:4753:: with SMTP id u80mr17343606qka.317.1593552393865;
        Tue, 30 Jun 2020 14:26:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:d01:: with SMTP id 1ls10602057qkn.0.gmail; Tue, 30 Jun
 2020 14:26:33 -0700 (PDT)
X-Received: by 2002:a37:6886:: with SMTP id d128mr22539683qkc.12.1593552393578;
        Tue, 30 Jun 2020 14:26:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593552393; cv=none;
        d=google.com; s=arc-20160816;
        b=fR0sa/4mxLxC8dQNv2WZQf4PumS3ZWgpMVd1Mwn0FX0gqiVC1jYW365md/2esGidlL
         63C5Qw5PVdzXnJGqGBbjrWUr0+KvtJKhMjt9VVc8r2ATHTEGdyLlTUZv1RryVruvgatF
         adjg64bGN+gO8lAlsWovJyBmwNoE7UvWi8azFKYByxkPmSpz2AcZPw/eXj/RO1mmjZck
         gh4y49lmDaSzCghUHVracakz4viraXBi8PlzUg8IK2hSJRwPGeHm1S9UOVHB/gdbs5GB
         B6w5EW2Jr9c17vaUSdgMA1vuDkaREBvboRziRYJwyFPD4cr5AkpcuaS9f7lA4XJ16+eZ
         u9rQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=u6QrfK0w5ybbH9fi34xXU8b52YrlyrA/11EhFWPjHcY=;
        b=PqiWm1RpdjLP6D5rEhym2QPDxY7P6/i1gQENH6K2mBxBmkyrko1KhVZfOiA9YfDPlt
         ncIojxyy/YHPsyavzhUKhUg2TCvrg8ehsxVUwucu4Lv1jWOWyFWhASORv3TL8MhO15dn
         xFngwPxREU900DskPTgHdMymFE0XsXci4bP0c7IXuFndoYUdoKSs8vG7uzQRRg+dlQy2
         1YJbqcCHnBhjfE8Q6KnveFELT2gWGVz70xm3XKhE/vwEIUPFbWynGGct7+sXFP7g0sar
         F0A4F/R1KBgYuz14XGcwUzhuk4A1gWNdWcmonhBqvo8l+xB53hPjLaitxMZ6zEzvadGd
         +AnQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CqI5q8x8;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com. [2607:f8b0:4864:20::741])
        by gmr-mx.google.com with ESMTPS id w123si198335qka.1.2020.06.30.14.26.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Jun 2020 14:26:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) client-ip=2607:f8b0:4864:20::741;
Received: by mail-qk1-x741.google.com with SMTP id r22so20119490qke.13
        for <clang-built-linux@googlegroups.com>; Tue, 30 Jun 2020 14:26:33 -0700 (PDT)
X-Received: by 2002:a37:270e:: with SMTP id n14mr20807794qkn.92.1593552393299;
 Tue, 30 Jun 2020 14:26:33 -0700 (PDT)
MIME-Version: 1.0
References: <20200630184922.455439-1-haoluo@google.com>
In-Reply-To: <20200630184922.455439-1-haoluo@google.com>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Tue, 30 Jun 2020 14:26:21 -0700
Message-ID: <CAEf4BzaH3TJWMsNHFPUTgEotErX0WS8R8ds1LYs6eXvLy1YbxQ@mail.gmail.com>
Subject: Re: [PATCH bpf-next] selftests/bpf: Switch test_vmlinux to use hrtimer_range_start_ns.
To: Hao Luo <haoluo@google.com>
Cc: Networking <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>, 
	open list <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>, Stanislav Fomichev <sdf@google.com>, 
	Shuah Khan <shuah@kernel.org>, Alexei Starovoitov <ast@kernel.org>, Andrii Nakryiko <andriin@fb.com>, 
	Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, 
	Yonghong Song <yhs@fb.com>, John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andrii.nakryiko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=CqI5q8x8;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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

On Tue, Jun 30, 2020 at 1:47 PM Hao Luo <haoluo@google.com> wrote:
>
> The test_vmlinux test uses hrtimer_nanosleep as hook to test tracing
> programs. But it seems Clang may have done an aggressive optimization,
> causing fentry and kprobe to not hook on this function properly on a
> Clang build kernel.
>
> A possible fix is switching to use a more reliable function, e.g. the
> ones exported to kernel modules such as hrtimer_range_start_ns. After
> we switch to using hrtimer_range_start_ns, the test passes again even
> on a clang build kernel.
>
> Tested:
>  In a clang build kernel, the test fail even when the flags
>  {fentry, kprobe}_called are set unconditionally in handle__kprobe()
>  and handle__fentry(), which implies the programs do not hook on
>  hrtimer_nanosleep() properly. This could be because clang's code
>  transformation is too aggressive.
>
>  test_vmlinux:PASS:skel_open 0 nsec
>  test_vmlinux:PASS:skel_attach 0 nsec
>  test_vmlinux:PASS:tp 0 nsec
>  test_vmlinux:PASS:raw_tp 0 nsec
>  test_vmlinux:PASS:tp_btf 0 nsec
>  test_vmlinux:FAIL:kprobe not called
>  test_vmlinux:FAIL:fentry not called
>
>  After we switch to hrtimer_range_start_ns, the test passes.
>
>  test_vmlinux:PASS:skel_open 0 nsec
>  test_vmlinux:PASS:skel_attach 0 nsec
>  test_vmlinux:PASS:tp 0 nsec
>  test_vmlinux:PASS:raw_tp 0 nsec
>  test_vmlinux:PASS:tp_btf 0 nsec
>  test_vmlinux:PASS:kprobe 0 nsec
>  test_vmlinux:PASS:fentry 0 nsec
>
> Signed-off-by: Hao Luo <haoluo@google.com>
> ---

Took me a bit of jumping around to find how it is related to nanosleep
call :) But seems like it's unconditionally called, so should be fine.

Acked-by: Andrii Nakryiko <andriin@fb.com>


>  tools/testing/selftests/bpf/progs/test_vmlinux.c | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
>

[...]

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4BzaH3TJWMsNHFPUTgEotErX0WS8R8ds1LYs6eXvLy1YbxQ%40mail.gmail.com.
