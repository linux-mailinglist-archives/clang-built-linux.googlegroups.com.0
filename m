Return-Path: <clang-built-linux+bncBD4JTHXGZ4MBBLVL7TZQKGQETRRVCPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id BB3191964B7
	for <lists+clang-built-linux@lfdr.de>; Sat, 28 Mar 2020 10:15:27 +0100 (CET)
Received: by mail-qv1-xf3e.google.com with SMTP id j7sf9799715qvy.22
        for <lists+clang-built-linux@lfdr.de>; Sat, 28 Mar 2020 02:15:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585386926; cv=pass;
        d=google.com; s=arc-20160816;
        b=ruG3v0vPkGD0Zt/dwvNa31vNxyBGIqD9NzrPbBYyhXhQqiyYOltHECBQg8Ez2yjSqF
         +CWLxnH4xV2ts32Kc5vdPxjM1v1uXwIRvnbpI8vP/wNzqhqWhTq4iXIIC9luKjS5AN2c
         yt9zpXkJlXWEVvIhTeK2LRmNVZ0/nXTRIYi8RDPf+EgCBep3+f2eTWr3hhQpElN29unk
         cS/boKxMZk+5EcbYP/FEjmzKYcAlDvhyPOFPNgWDix2d+/Djds7J++T6P/yOOtgbFFPB
         NanHchRwNvrY2oqyLU/vA6y/I1+qiq16XKPY6GVy5X0fQSfMYj669GCxhwxYf3Y5uSeV
         UkvA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=6qfMxNDKGMTMe3Q482eaCKzvG21CsUH15+/D66Vs+MI=;
        b=N1W2cJL6fu8l/HSmmQ8CYeaXv0DAnjScyVeosDoTKF58zPyXXiBfi9fiXQ2C0JEiZo
         pV8cOnQsDxLOsWcJJeXTOewA7Qy7IS+cZATl+FmwzaYIo5SZOyO7Gll0XyE/JxL5qPXQ
         N+PDnIQ1opATCLBSIKhE0a2LVaIGNO8y2tyDiQ1lakhETZuOIAsG5lIrqeNsodUTjFJP
         VUSvSiD8GvWE5Sv00WrWIpc5S2no2ptVoVygwgxyghTZe6WTxECKnG+Y9Ajzg4TVSvWH
         k4nf2hJPssKzON+4BWt4g1HbetMU/nTpSKPdQqa4rYKz8yLVSNKZhh+mU6aVmy91b3tZ
         EnYg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=V85xWxIY;
       spf=pass (google.com: domain of amir73il@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=amir73il@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6qfMxNDKGMTMe3Q482eaCKzvG21CsUH15+/D66Vs+MI=;
        b=eq/31xwcYdrALs/JuyXhwO2xYsPjhr79UT7DIHws63yv47J0+Iug/czCYbpKcVQXj3
         y5X/z8UUmvfoSctSyKQXy7fiHPx2mO/t9S/DYzQaMKNDY0752qrnhSjVI4w1c4TWC4kR
         alrYrU+5OSV+McfsYPD3/p2FBIrtsSA6NZqpSzDXCimX+JanTCMNh2rqG2T8VwG2Ka0g
         kVlMR5fUs2VsnW4xG9QaFJKyMOp7rIwQAWvG3iwG32JQ1+/hZbG+0g21GFQ71EP8uJz+
         7lNk7N1niq5kl7ev6gdKSWZIiI3t30dXXKWA4AQictUR6J46e7QwiFP6j6q2Nt5EduzK
         nKPw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6qfMxNDKGMTMe3Q482eaCKzvG21CsUH15+/D66Vs+MI=;
        b=gJkQIZAofiEccvmQb8fIQsBQ1zliZ91NRg6bQ8mnd4tkjFKIx+7Xex+lmI6r7kH7PM
         dxIgI7rtpcf+ql7EeNH0o98TczlmGKlPbUsLlMreFvHAkqY5yzY/WZ5GFn8dfpEaGZ2O
         /IcQptwaxHjvw3TJJs2r31eJavJPqyvbTrkff4R0imfGBB8bGb49RUX2UZ+wyRDjHVg1
         eq8uvCMFXq7VYxZn2T8W7b0XoYqEU21aoUHZvrZ7wgkvyl+ChgwRtYMIiHEURyZ+LPTw
         7VgRZ8u1Tw04J4Lk9Izr1sohLOMBaQjTc1uF1IeNXnIuBVspfpVeyq7vIAhzPum/8jZE
         ZNUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6qfMxNDKGMTMe3Q482eaCKzvG21CsUH15+/D66Vs+MI=;
        b=ELw1Gr9xBgM68WV/B3Ah9vNRxSi+0MgMRPu/gJPGRaLnNWu4Dy5dQsYfaaEVkgMjz6
         b7HGQg9JSXOiNaXhsSWd/+HOjugDOxbJeDXPY5APDniJrXt3RHBssI0gQhCf5+ptuHw1
         n6xZs8/+Lzh7n9nv8bw8VXvnsHT6f5imi4zVnSW1LsDFujvfxBKSBMTjx9IZR8gKSzrZ
         x4YKgfy7HGXyNxOD4pBgMiQw/1vvrdwXKAwQ3hsFBIL8QZMhIY+oMpPSxMILYi2rvSat
         ntfaU/I1JskIQNdxNZskSAJbIp68GVjglvKpwsZ5ChfwgZYpkIzB2YIAac297kl8B6KU
         HIRQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0PlxFTlu9A66WgV6yNpOVODfgurL7gLG7J1Mjh/8NLsc4LoUtB
	j+cW6ElImrqLVfMRjJKLhnc=
X-Google-Smtp-Source: ADFU+vtfZ2l0kKNrIgkDfl1AK/wDvyfPR1oF21YcnEWPSF5v96v4X9wl7H0kiHbikw8wch0tlLZr5g==
X-Received: by 2002:ac8:378d:: with SMTP id d13mr3177584qtc.227.1585386926497;
        Sat, 28 Mar 2020 02:15:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:b48:: with SMTP id m8ls4618830qti.4.gmail; Sat, 28 Mar
 2020 02:15:26 -0700 (PDT)
X-Received: by 2002:ac8:369d:: with SMTP id a29mr3248494qtc.338.1585386926175;
        Sat, 28 Mar 2020 02:15:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585386926; cv=none;
        d=google.com; s=arc-20160816;
        b=gaqh1zyOubF9bk8KsNc7K7S4Ow8V2/y3J4cQlFaBUyzot1UFSwpiDooSuQ105FchU1
         IgYqvhS8Qi+T5t4G6MSIxP4w5Q1xbJlJvDdnWwnt/P6eQrisNKW+TOGbRBkvtD7NOHSV
         XNeS6aoyDOIHCsmBZtt47jbtMGtEOlzM5uShycp77Vh65KzpKnAabEYhACn+WdMVYg3r
         Whbv+IW4gd50p9Iqq2+Tl5y10Vs6iYXLbNXK+OV89Y7T97zS6e+GY0M2fKuHlbWhQmZ/
         Wn0O6uFKFZazxsANMNHQUZr/el++C4v6Q6BFnkzZmKGC37ngL+TpOfIPBzKRaRn+Cdww
         DFPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=saHwc+iPTg9mg/TKDP5qS7eXjj7tpT9oKu8R16Snw/0=;
        b=IBDUp+BY+L3jcmzaDbSAU9+DQo8q/hfkRv4Z+qnQEpF+xdVCpDMk0kDAreUryBovTM
         DgrnjymfWsRRPt+2bA7fd+X6lahZ3k8eLEKJdNwTMvo4V+MaGs3KmKhbBj4NOBU5llCc
         bQOiDf4+Wcj2gpUQsCKP+5rE8cio/BvaRXjXzMULzBnYQ2rFy3RjV/ofq1kWa8ECGtOw
         2gd1IoOJ5RRKYuDTpTYRbMtdEz3stxkoosHcc6fTWnTrbBlF8JnqtJ8nmEKGl0fskUgU
         FZpPqkdrqSRfrBQZyykD9CMcdsRcIe4CAmw8YqnOOgCfj100+XZqHrhmy3KVCBNuVe8C
         Rg0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=V85xWxIY;
       spf=pass (google.com: domain of amir73il@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=amir73il@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com. [2607:f8b0:4864:20::d43])
        by gmr-mx.google.com with ESMTPS id x11si490628qka.4.2020.03.28.02.15.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Mar 2020 02:15:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of amir73il@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) client-ip=2607:f8b0:4864:20::d43;
Received: by mail-io1-xd43.google.com with SMTP id o127so12445551iof.0
        for <clang-built-linux@googlegroups.com>; Sat, 28 Mar 2020 02:15:26 -0700 (PDT)
X-Received: by 2002:a02:4881:: with SMTP id p123mr2604324jaa.30.1585386925551;
 Sat, 28 Mar 2020 02:15:25 -0700 (PDT)
MIME-Version: 1.0
References: <20200327171030.30625-1-natechancellor@gmail.com>
In-Reply-To: <20200327171030.30625-1-natechancellor@gmail.com>
From: Amir Goldstein <amir73il@gmail.com>
Date: Sat, 28 Mar 2020 12:15:14 +0300
Message-ID: <CAOQ4uxjiRcCh-dQLYu6+Gx0u7urXT=Bsbdd8erfmmzfyU3G5UA@mail.gmail.com>
Subject: Re: [PATCH -next] fanotify: Fix the checks in fanotify_fsid_equal
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Jan Kara <jack@suse.cz>, linux-fsdevel <linux-fsdevel@vger.kernel.org>, 
	linux-kernel <linux-kernel@vger.kernel.org>, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: amir73il@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=V85xWxIY;       spf=pass
 (google.com: domain of amir73il@gmail.com designates 2607:f8b0:4864:20::d43
 as permitted sender) smtp.mailfrom=amir73il@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, Mar 27, 2020 at 8:10 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Clang warns:
>
> fs/notify/fanotify/fanotify.c:28:23: warning: self-comparison always
> evaluates to true [-Wtautological-compare]
>         return fsid1->val[0] == fsid1->val[0] && fsid2->val[1] == fsid2->val[1];
>                              ^
> fs/notify/fanotify/fanotify.c:28:57: warning: self-comparison always
> evaluates to true [-Wtautological-compare]
>         return fsid1->val[0] == fsid1->val[0] && fsid2->val[1] == fsid2->val[1];
>                                                                ^
> 2 warnings generated.
>
> The intention was clearly to compare val[0] and val[1] in the two
> different fsid structs. Fix it otherwise this function always returns
> true.
>
> Fixes: afc894c784c8 ("fanotify: Store fanotify handles differently")
> Link: https://github.com/ClangBuiltLinux/linux/issues/952
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---

Ouch! Good catch!

It would have been quite hard to catch this with tests as
non equal fsid and equal fid are quite rare in the wild.
I will try to write some test with mounts of cloned loop devs.

Thanks,
Amir.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAOQ4uxjiRcCh-dQLYu6%2BGx0u7urXT%3DBsbdd8erfmmzfyU3G5UA%40mail.gmail.com.
