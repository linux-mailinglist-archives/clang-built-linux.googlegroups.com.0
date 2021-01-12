Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBQEU7D7QKGQEVIRUIQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3a.google.com (mail-vk1-xa3a.google.com [IPv6:2607:f8b0:4864:20::a3a])
	by mail.lfdr.de (Postfix) with ESMTPS id D42D32F3B97
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 21:44:49 +0100 (CET)
Received: by mail-vk1-xa3a.google.com with SMTP id k187sf13479vka.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 12:44:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610484289; cv=pass;
        d=google.com; s=arc-20160816;
        b=C6mqm0g7oP3CEQeGYXmk6i9W4yj0oyxjNJy89A9zS1uRFquiTD8HRbc+ScNMdr9WaS
         +WeCxuxBi9C7AieGdmU9sNmqFrdL4Gz7fOFlQRB0oVbYuMUzKSG0rgov1eXY3bWTn0r7
         z/flHCZu0iZym4GeYqeOnc5aukMBBY/p958N/6THrgtbDr6r45bRwweXkV3c1aoLEu30
         An+3jd3AqtsAXzTCxDFvBp/5Zjz88NBk/TBUpRg9UxStRKeH4zCkwfxtdT6I8Uslk5Bh
         5mF/+7tfzCFpraIIHSkJkXBUVwUvJl/vSz2Y7e7qoWR2pqn2Q8r4NB0Z2//GUIDoTxi9
         9JYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=lSdRinA4YJ7TUeVK/I1Xu7QqxmLZRplzLi9Z2ps/8tE=;
        b=m3vtiUlPVoZktv+j4zbWbRulfwoC9vWcpBbgx0c673wdVqTeu5I3MCkw6XfyROLq5l
         TSrw23cIsBCt84xzRrRPKC/e4w9gK77FEGaq42SSVoCmuZvAXS3Ldm4soYJmKyR7l8dE
         xO1xV0xuONRek1+KkVq/3PFe+J0tIhxk7fgxdOSvi4Wb15bjfnn3xKF3E5T6sN863Bn3
         Rbocj3sH+ZMgxdrhKc3fYPukKk51xBk9/on0w5mDYgs3hroC2kIBuOudW1dvgKxqdx9l
         2lwtrFcEU0F55DrAQcFCtt2Gp7TFFxCUOJtnM28RYMDKNF5UdTrQ//fLyLCb6LvD/PC7
         NDnA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mxuxprPU;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::c2b as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lSdRinA4YJ7TUeVK/I1Xu7QqxmLZRplzLi9Z2ps/8tE=;
        b=TV+TipVbf1ye7H29GjDG+UFhdOBJ0+89Ydwi9EpDAnbRxXYUOnS2M8DP+FBaYpY2dm
         bsWgvmivUIO6UHLNCy9GzaUYiziGLXEdMBsWSjwIN3Y7gdUblBiu+IXS0eGE2VXrn/8Q
         6IIVzAzCIomgEFVKvnBzFP5yOq9KJrHwvU0CSuIrGc2MXpqJFycgqZYCbiCzm8umyP/0
         1RZUODd7O2sZOPMZSeA/SxIuONq+/jgYRZn3arIydK0N6lV1pV70+/NaFSyS8hLjkOND
         d0Culi+KPEufVpatVeTcFD8oicptkOSxxqK5H3ec3zHWTiRnnx1eW5w+X1ZpSMHYbfdU
         YR3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lSdRinA4YJ7TUeVK/I1Xu7QqxmLZRplzLi9Z2ps/8tE=;
        b=o53xSe7DimeFiozwW2t150/6n70Cf7CLePesKY7MCgs0mOFxK+p63uGPj7pVjQH6MN
         5l1ekU5tkFFmjAvi3ZIVW3yVNYTy/8BNmi1Do+Vy8ME0K8bsU1R2DbQ9/2CN8vGtoaNN
         XZjjOQXpF8MF9yn1MoVODolD1BxUzHmIg27gXcCRJfvTSlyW/NsWbEWGHYTOO6boNMo/
         IrGX97VgixAUUNyLCFbsnq80YBaN7NPAJmJKmPowoU60bJlLUYu5dTHrumP+6lndvkJI
         TFTv9dOGQ5jSZkM5tKC12tcyKLP+lrOwvyxz6LBYUkUBcZcHV4xzTlbzRi2mt7ezZty0
         JJWA==
X-Gm-Message-State: AOAM532kGuNhVPDAyWaxRDPvo6egAIZbK8Qc+kkIW9WvsaICEBrLLHIu
	vZYWU7oQHVSWuLSnMaZYEV8=
X-Google-Smtp-Source: ABdhPJyD6WWWaISsbd+axen03yQ6bOXetiKcOSuq9d3uuhDYBoWONlTzL+f5hgP9QFALI+WU3aXiEA==
X-Received: by 2002:a9f:2721:: with SMTP id a30mr1209710uaa.131.1610484288899;
        Tue, 12 Jan 2021 12:44:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f457:: with SMTP id r23ls373215vsn.4.gmail; Tue, 12 Jan
 2021 12:44:48 -0800 (PST)
X-Received: by 2002:a67:7f41:: with SMTP id a62mr1429289vsd.55.1610484288379;
        Tue, 12 Jan 2021 12:44:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610484288; cv=none;
        d=google.com; s=arc-20160816;
        b=PGs1AMl3Um9hXMKrsiC0nEBtYLbDW2mWznDy1WKZ0AymChJlqyX5X6BLIkTKLg5HBi
         C5x8VI0mt1vDlUxLVmrG1beC+6YjSgj6mGAWLMKhUO3CgtGw9O2FBOmbmsmhqs4v1j8s
         VQPNTnxtp9EuaIojBvJnPS2RAqK5vEskEdB22Whx1u2lN7aP3z4lsWKIxQOTi5avzWDR
         cNGCEBDYGgnknf6IN+rRM7Vo68fmLDx2B+9x/8+RaM7KWPHoHp16HGjssn+yHHo+v3hE
         Jfh0LM7qEVzrA3ypUoRrJSr2OckEKpXhVd338m7SgpAMs5u7wkAaLQUhvsrwk9vKe4m2
         kPYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=pAFi2ACShEEwDuDwGJeG0H9FjZSu3Y9r6b+Xx+tXzqU=;
        b=ippAJL7SLZhPTDhYXcB4O0xQ9Z+pYXhgItJiedbbg/d8DOmCB51WBKQzjuTx9QLfOE
         AcNUm5hRkybPq4o8XnrxI9fj47GGe75p6s9mSR4lZLYxUl8PPmNIHXpsMTWFuJup3pXc
         V74GaUDNb6g1iGTQiVQGbWhIVfMzNtI0x8+V3K2+Whh3lXE15XUhloFGrgjeePIFXd25
         MjNHhuo4t50/WKOzhv1kINrrP3UrqP4yt2YaaI2z90EorTvk25fLUcwTnYNxB1pHXK+6
         XmarecW2khFPxJ/Qxz0IZTgtWsoogtIg3siDtaBV9DKEokEmNiCAcKKG+mfOwZPZpHHX
         zPBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mxuxprPU;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::c2b as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-oo1-xc2b.google.com (mail-oo1-xc2b.google.com. [2607:f8b0:4864:20::c2b])
        by gmr-mx.google.com with ESMTPS id e11si311564vkp.4.2021.01.12.12.44.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jan 2021 12:44:48 -0800 (PST)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::c2b as permitted sender) client-ip=2607:f8b0:4864:20::c2b;
Received: by mail-oo1-xc2b.google.com with SMTP id x23so918260oop.1
        for <clang-built-linux@googlegroups.com>; Tue, 12 Jan 2021 12:44:48 -0800 (PST)
X-Received: by 2002:a4a:a11a:: with SMTP id i26mr592188ool.54.1610484287636;
 Tue, 12 Jan 2021 12:44:47 -0800 (PST)
MIME-Version: 1.0
References: <0000000000004a33a005b8b8eaab@google.com> <20210112194058.GA200254@ubuntu-m3-large-x86>
 <20210112203226.GA1055929@ubuntu-m3-large-x86>
In-Reply-To: <20210112203226.GA1055929@ubuntu-m3-large-x86>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 12 Jan 2021 21:44:35 +0100
Message-ID: <CANpmjNMu9zeNYEv8bpYo=uuvh8Atcbtf8JfeBQkXrBRj9DEtKw@mail.gmail.com>
Subject: Re: upstream build error (12)
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: syzbot <syzbot+76880518931d755473cf@syzkaller.appspotmail.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=mxuxprPU;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::c2b as
 permitted sender) smtp.mailfrom=elver@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

On Tue, 12 Jan 2021 at 21:32, Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Tue, Jan 12, 2021 at 12:40:58PM -0700, Nathan Chancellor wrote:
> > On Tue, Jan 12, 2021 at 11:20:27AM -0800, syzbot wrote:
> > > Hello,
> > >
> > > syzbot found the following issue on:
> > >
> > > HEAD commit:    e609571b Merge tag 'nfs-for-5.11-2' of git://git.linux-nfs..
> > > git tree:       upstream
> > > console output: https://syzkaller.appspot.com/x/log.txt?x=15965a00d00000
> > > kernel config:  https://syzkaller.appspot.com/x/.config?x=6157970d0a91b812
> > > dashboard link: https://syzkaller.appspot.com/bug?extid=76880518931d755473cf
> > > compiler:       clang version 11.0.0 (https://github.com/llvm/llvm-project.git ca2dcbd030eadbf0aa9b660efe864ff08af6e18b)
> > >
> > > IMPORTANT: if you fix the issue, please add the following tag to the commit:
> > > Reported-by: syzbot+76880518931d755473cf@syzkaller.appspotmail.com
> > >
> > > clang-11: error: unable to execute command: Aborted (core dumped)
> > > clang-11: error: clang frontend command failed due to signal (use -v to see invocation)
> > >
> > > ---
> > > This report is generated by a bot. It may contain errors.
> > > See https://goo.gl/tpsmEJ for more information about syzbot.
> > > syzbot engineers can be reached at syzkaller@googlegroups.com.
> > >
> > > syzbot will keep track of this issue. See:
> > > https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
> >
> > Would it be possible for clang-built-linux@googlegroups.com to be CC'd
> > when there is a build error and the compiler is clang? Especially if
> > clang is hitting an assertion.
>
> I cannot reproduce this with clang 11.0.1. I did a reverse bisect on
> LLVM and found commit 4b0aa5724fea ("Change the INLINEASM_BR MachineInstr
> to be a non-terminating instruction.") as the fix (which makes sense,
> that commit has direct kernel implications). It is probably worth
> upgrading syzkaller's clang to 11.0.1, where I have not seen any
> assertions across all of the configurations that I test.
>
> Ccing Dmitry and Marco directly.

I'll upgrade syzbot's clang 11. I think the version we use right now
was still a pre-release.

Thanks,
-- Marco

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNMu9zeNYEv8bpYo%3Duuvh8Atcbtf8JfeBQkXrBRj9DEtKw%40mail.gmail.com.
