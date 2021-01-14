Return-Path: <clang-built-linux+bncBDYJPJO25UGBBSMQQKAAMGQEZNLRFNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 27F4B2F68B2
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 19:07:07 +0100 (CET)
Received: by mail-io1-xd3b.google.com with SMTP id x4sf8653892ioh.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 10:07:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610647626; cv=pass;
        d=google.com; s=arc-20160816;
        b=xhFz/0yCIrLzySNXjYae5mWMRU/28Mo+NHbJd3x8q9tm11FwFBmpXY43EyxMHV/kg6
         wJOT2CyEFv/rHrSEwpJYaMGCOI2jiyLhQjd08DMacklzMwb939d27nWlw8QPdNmk42JV
         v5nSBvb1CfAXfovwuwEsEQ/ZWkWH9QT+O6LC0vtvj8ARG/rj9xSyQOgzERlJOxEumlvq
         HdsseCWXtRG2agu6Ek/1Y3fDidaAUzuJOXeFogc4mxM46XaQJQCASRgKGpzteEJwwj+X
         AL3xjsDM38jsCXv754KvfX3trhNiy84Opf5K1AISFeQOJJ+CuwPo4Cx99dGRhNRkYl7B
         yLvw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=pa8/+d7gFlM+F85Q67mt+fIeGdMhv/jWvnH/rmjHg0c=;
        b=WL6zyx1A8u8o8QRsK18fBsfMNTuVodLj/hIGcGxgLJRbDusUfAQMBI1xDOaOvlRF5T
         v4X0+TveXcQbc9nODMzJvt+iitOEBa4/LqmLxLJVzPnxQ/q3ITUgeGeaxKxFsqW5nMcu
         v/sC5Y5YTx3/ON5N3tfsxTNvfyyJvF26YOIWg4df3k4/cV5/QN9wwMV+dSTIhF2V88KH
         8bMhP16ORcntWGzzfLECC8KWoW+85U0yahODUcHVciYTpGQRXXwRHIQs1augs0qjR8uu
         etAMDTHwWHaIOOZ+qpn3KKfmCVf/Qo0wTYoUBx8t5zZTd98TGLO2rT5tqW/oas7XUihl
         5gRw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="K/M2Fo8B";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pa8/+d7gFlM+F85Q67mt+fIeGdMhv/jWvnH/rmjHg0c=;
        b=XmiQtXGDFVNCU2Q4PiM2XNW9d43DpCQs1yi4Gv3nRVt4ykrQBpRXcC3eXGLsY4MeCq
         87VVdPjq9Z6ePx9tx1XeUS73t7xP4A3KONEeS26QZnyyAJd5ON2/fKKMOz+RSweRsQ5A
         zIwg2y4sdxewpeJp6dCxytsazmNxPlovx2A0xDmptfuXrzJ+tksCii1v3V2gQxAnfXDw
         uoqisJ3YokBOLIK41KkqXdSFERGsy4QVctto0GwWwP1WbbYC0gkQP8TsLTcvLsfvKA6G
         6jIPx5W/DNdNQzhHe0Sp9d3wzwvwELs6QHUptmvgYuCBD/fs3FQxjVTA8uWIBGI4MUu5
         cHhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pa8/+d7gFlM+F85Q67mt+fIeGdMhv/jWvnH/rmjHg0c=;
        b=FIqotnYTqDK59x7qpggAXpbjZWQBezTeY/FsNTJEvbZzDsLrbjdQxKUSsiLdUalCjp
         Zu8KJ19qMmyhOxpd0GJw+UU4yZRBnxOqgq3uSieqaaD14qRg2T9aZsAG7DAzMMtc4D2B
         ioC/V9zdxzkobE/P8uKDEF+KjKqrbCvdZHREsBKZ0GpXzR8Rfe5q9HdMiNDZOwqLgUJL
         kpNmXikmVjevPE/LMphaTWVZd+FjUz2GN4t4d2pu9VallwXUhJnS2TYZwlxtAORnGGiR
         ls48aRAx96e22dtPVm9jFzI2/mxg2svegshd1//hdOn0XTZ773opJ2r8ao0n+y8Huila
         ovdw==
X-Gm-Message-State: AOAM5305EpBkfndQIxh3KuO1a4WQzF3eztKfjRBvxbfJ7GDXD8m5SsG3
	c0d0H7nFbP7oPiT7cGyUEzg=
X-Google-Smtp-Source: ABdhPJzNk762boK9N7UEYS5xsugXhI79ZQze7zpIObExtDbP5BsWUqILVIooFopCUSqKsfcIZ0j6hQ==
X-Received: by 2002:a5d:9a8e:: with SMTP id c14mr6235393iom.178.1610647626072;
        Thu, 14 Jan 2021 10:07:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9299:: with SMTP id s25ls976099iom.10.gmail; Thu, 14 Jan
 2021 10:07:05 -0800 (PST)
X-Received: by 2002:a5e:8b05:: with SMTP id g5mr4883734iok.66.1610647625582;
        Thu, 14 Jan 2021 10:07:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610647625; cv=none;
        d=google.com; s=arc-20160816;
        b=1Hzd/JUyLVa7gO7KWcPeL0CmzSIreNW/QARoMLr8EV3hRUVBOSlnN2rdqgsSccB2n7
         eXA26fXpVmLpoyvlP3VH8LcN6LZXAzdppvjXBPmCvAR6BwcD2eIOai9gOVn2XlkqONAa
         Kf8u1J2D6myseKUKrr1XRq0i2F32r4noSazWRz2T8Y3TQgfJHVvFFjQZ5zz0eU5RcxjN
         5u61ufkhCcP21mwvvpzx1VAxA+cnX6VrrrKMupBlm36y8jdTcM41tdeBJxU21UBR/SjT
         5wyN4tSbefzLqwlW/FJfu0eXXMk7KFVM+6A2QrQisOnuhrT3hpL0vkNugwGbEZW9XSTv
         CHGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=aCkCkIm7M/V3aGjrSdpkfleCJSzQcdZs8yV7RPXbePM=;
        b=TMplXba7nK69FqgU7gSpAWAgLYdHOi8mEwLiORPtBrappdav5980csLTOYc2FO0gcj
         PILoS+/3XcLQN5UpnwGnYW6tBC75GVD1hTkapW8JMUzRjrNivWl0AABqxZK258h3hXiw
         SWzuwFCnNlCtuBJYRKH7CLxwHvGR9Nh6wVVBSFS7K6zWHatc41yiDU6TPELqCHJg0Y9j
         ED4TyXeJiqBUvdzz1VQnJI97v0kjyaXRGB78O/GEeCPrVYJJBXhHj3eIyF3y6kQAOlQJ
         9HtzNG4ksr2Of7ZNkJIpxAyQIvJKP/b3oVB22e6PDfB4194vfjNGzacOjuswBkD+VaaE
         Jzmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="K/M2Fo8B";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com. [2607:f8b0:4864:20::62b])
        by gmr-mx.google.com with ESMTPS id s10si373170ild.2.2021.01.14.10.07.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jan 2021 10:07:05 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62b as permitted sender) client-ip=2607:f8b0:4864:20::62b;
Received: by mail-pl1-x62b.google.com with SMTP id r4so3296341pls.11
        for <clang-built-linux@googlegroups.com>; Thu, 14 Jan 2021 10:07:05 -0800 (PST)
X-Received: by 2002:a17:902:9b84:b029:dd:f952:db30 with SMTP id
 y4-20020a1709029b84b02900ddf952db30mr8634534plp.56.1610647624919; Thu, 14 Jan
 2021 10:07:04 -0800 (PST)
MIME-Version: 1.0
References: <0000000000004a33a005b8b8eaab@google.com> <20210112194058.GA200254@ubuntu-m3-large-x86>
 <CACT4Y+YFZf=BnCQJQUYwG-UpaYKG97VD-XWpEdXoR3ZnOxH5NQ@mail.gmail.com> <CACT4Y+Z-f+r_Bm5RD+ZFrspHdVrDrzPgEB_9_uACa_8o4vz7aw@mail.gmail.com>
In-Reply-To: <CACT4Y+Z-f+r_Bm5RD+ZFrspHdVrDrzPgEB_9_uACa_8o4vz7aw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 14 Jan 2021 10:06:54 -0800
Message-ID: <CAKwvOdmBGNK0iVCAGc=7oKx9k1fE1C6y7G9S+hCYLmdu5kaKLQ@mail.gmail.com>
Subject: Re: upstream build error (12)
To: Dmitry Vyukov <dvyukov@google.com>, Marco Elver <elver@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, 
	syzbot <syzbot+76880518931d755473cf@syzkaller.appspotmail.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="K/M2Fo8B";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62b
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

On Thu, Jan 14, 2021 at 4:38 AM 'Dmitry Vyukov' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> On Thu, Jan 14, 2021 at 12:32 PM Dmitry Vyukov <dvyukov@google.com> wrote:
> >
> > On Tue, Jan 12, 2021 at 8:41 PM Nathan Chancellor
> > <natechancellor@gmail.com> wrote:
> > >
> > > Would it be possible for clang-built-linux@googlegroups.com to be CC'd
> > > when there is a build error and the compiler is clang? Especially if
> > > clang is hitting an assertion.
> >
> > Hi Nathan,
> >
> > I am adding functionality to CC specific emails on build errors on
> > specific instances:
> > https://github.com/google/syzkaller/pull/2388
>
> I've updated configs to CC clang-built-linux@googlegroups.com. This
> should take effect on the next build failure (hopefully).

Thanks Dmitry, (and thanks Marco for updating syzbot's clang).

Marco, can you update:
https://github.com/google/syzkaller/blob/master/docs/syzbot.md#crash-does-not-reproduce

I wasn't able to reproduce the reported compiler crash with ToT llvm
and the reported config, so I assume it was a mid-release of llvm-11
bug that has since been fixed.  Do we need to report to syzbot to
close the issue? I did a quick skim of
https://github.com/google/syzkaller/blob/master/docs/syzbot.md, but it
looks like communication with syzbot is based on commit messages?
--
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmBGNK0iVCAGc%3D7oKx9k1fE1C6y7G9S%2BhCYLmdu5kaKLQ%40mail.gmail.com.
