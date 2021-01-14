Return-Path: <clang-built-linux+bncBCMIZB7QWENRBTGXQCAAMGQET4B6XYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa38.google.com (mail-vk1-xa38.google.com [IPv6:2607:f8b0:4864:20::a38])
	by mail.lfdr.de (Postfix) with ESMTPS id E1E022F601D
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 12:32:29 +0100 (CET)
Received: by mail-vk1-xa38.google.com with SMTP id 84sf2227813vkx.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 03:32:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610623949; cv=pass;
        d=google.com; s=arc-20160816;
        b=PnKjjb10UGFxTQQKfc0u7on6U7Ies8NYXUhh9jKL36eN/vjWhaIK4GLURbSpnHUfzF
         lybGsTnAijpfTlNTHdgOUl4aKiOBgXsYXrPNa0WGqYOXKkflQfwmy20hbifsNZKH3Kvr
         y3MNhodHcnQcLKnKFDYbj+6TjgcTM0b28WadFuHV751pkxCjPs+Qn8P6ee48WWofEYXi
         PyGquS+P+iehFwY9z7Dh+QDAC8PLTUeESf8wZGdrCuBgZtioKFdzXhZS0/9zidGHbDzB
         1D85VQqN7wRd3SztwLu+GQ7i23nyfE5efKGTIls5N2CbFsGY33Yh8hSAcTG8G4N2l1MH
         1Idw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=aBM7bPAXEI+HeX0TBDV01IKoUlNBaCZGdVL2ULl/AvM=;
        b=FBT3dDrSS0A/wE63vNZFpvwJIkvmjgLTn32IIXfHNLi0rfUBZ4os7OANBPo4fIXAZQ
         jP047QsyLZH82zUViJxzzJRxK3h5hGlfhkJROqXFLw8r6Jl2997gry9VBAo/f8T5eINC
         RcriIa+YLkLuWm1i6w9rWQ8q7kJGulDy8dbnyNR/HpUALa3H+bYIB5i13lmmSCTpUN8f
         SsbFXlnlZxufI9H3wOHjdDC6lUCa/l/6jSL44fyDq6zmNVusyJz1RiFuvCMU/FTFHnYU
         1e5HlF5hxlW1p0XjmVE9IZKyUBMadlzDKKRByPG4LPU8Esdyr26zyVX+DQNzP3/l+2vU
         HdxQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=U0dgy3K3;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::82b as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aBM7bPAXEI+HeX0TBDV01IKoUlNBaCZGdVL2ULl/AvM=;
        b=hzYzKH+SSANlFVIZoHwZKMCg20Wk2EbjcKclHoOoW+rZP+Q4AtKcWVD2tsshPRH4Ae
         HNqvSoqhERh1eqGd4RwciG7rM4aAJuWn5+1ygEOIvZlS/fNf+tIccjMHOjUIUYWOA7gq
         EW1l+sBOaoG2w6ePh8gi7IKXFZjjY5Pn5L/U0NmeMFLka0Blpg3+//d+n3BuqYMDmMKl
         jhDhZyJBYHwDWxm59uPgTyPSyQXmEJ6VGaRQmF34NDG91sdPAiJPUzKETKAXyQFEPev4
         ZoCgRIvOH3vc3kyVRA2wqghfvDrHsZySRlUHvr5tsKzY2fRvX0NlbKThHurqrmPFv1zZ
         ammg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aBM7bPAXEI+HeX0TBDV01IKoUlNBaCZGdVL2ULl/AvM=;
        b=PfjNoo0GPKiPRAU+u3tFhD5fp9Lp0hDpeC0rgRv9z8T0n8a2QnhA57SLk1xNX+XOre
         bxo5vypGIUgtEgO3OeVLq4ybT/1gQY8VD6Tw9b3UbrQF2NTutZVSdDk2j3mNFac8g0vG
         nkZZ6mTU7qxW7ViaRfjc171ZWNXZlfDv3QLkyeO4fMt4zwjGVlus29pdfjTyAnT7xiXO
         a0lOd0wQaKHadu/kJoVM9Vp083OUo8RvACodWWjrLd0mXyDaYgt2YWqAnjcTBTb8nlQ4
         +S+vR24ssIXn43HsTojltY4ZgF26xWGai3fhmXDqK6/G0y0rvSzAnLvQqcXciOPTjF3y
         YFcA==
X-Gm-Message-State: AOAM531gTYOUnAp5k5+Pr5jxD6wdNkBTuNsZtGl7tGju+JknjSnSavJi
	CP4P/xvy8d5CJN7UJxgAmTk=
X-Google-Smtp-Source: ABdhPJxHe+s2XtQx7wL0YWxhyV7T7TfvKTwvfQBuKjhSE1QXjxBfwpiBPLD5461vpbynfMfk5+HBog==
X-Received: by 2002:a1f:24d3:: with SMTP id k202mr5641863vkk.0.1610623948912;
        Thu, 14 Jan 2021 03:32:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac5:cd24:: with SMTP id a4ls272122vkm.5.gmail; Thu, 14 Jan
 2021 03:32:28 -0800 (PST)
X-Received: by 2002:a1f:fc84:: with SMTP id a126mr5908346vki.23.1610623948499;
        Thu, 14 Jan 2021 03:32:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610623948; cv=none;
        d=google.com; s=arc-20160816;
        b=j1H1DQrhju56Vo5mD6Kw9L6PVYajzRzZRaa8cy5bnN12cEoVUXC1P+9nTcN5yd8xtE
         Z3qz77A2muV/8XawOrV/9XLZ+nFFF6wVxTA7gah7mxPWka1+QynyWRc1ZiLY5PYjbZyR
         UqrrQHx4jzYQCtKA/5m1Hy7LnOIVkKZIZRNfHI4aBLugbd07Nru5hfVsVQZSqIy5xR8h
         yPGo1/fKFi8HwEgPEkkRgcTN4vDDB1Sw1U/YHHHUfhWZ6sPkJ1pO4FZl02b9li2oxv/g
         eJu4H4F2i0cGF0wIKTop2WNXN0ODO4LOx+/XpND6eLh/HPyF6rYvR5RMJi7yWn0rLB4k
         rIIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=FB06oW7tS9tyN7cLDTxYsdBt2THIvIQmyx5Kx4xPq1k=;
        b=QpOiPVSIWSyrk7++jLRw1TTVrEoRi4Fy/S7zACFnoHide1wJIaMr8DATh5v2258UJC
         zXLZ+KFNqgNZmwYhpxI4Px+A02/joKpXr1aAn2AdYmAcgmxTiK3zSybH0MmM/yITEW0J
         /Ab8XbIMEzhsp0q06SnkMqbS0JMIORxRaYkYk2loi65da7Y0vppwTv2MLZ0fLt4z2h62
         bYDMB1JIQrR85FY9MS12+S/KOl1aRoJOls7Typ1wTgJwsSnTsGftv+xyFAxdCfeFajwJ
         bmkk4+lSaZxvvnn3WBnEYGY/Sm2aoQpiTGGyKaCn5cz/rZRZKpB+GTVHAt/QqhCpSntn
         g4Zw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=U0dgy3K3;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::82b as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x82b.google.com (mail-qt1-x82b.google.com. [2607:f8b0:4864:20::82b])
        by gmr-mx.google.com with ESMTPS id h123si280621vkg.0.2021.01.14.03.32.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jan 2021 03:32:28 -0800 (PST)
Received-SPF: pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::82b as permitted sender) client-ip=2607:f8b0:4864:20::82b;
Received: by mail-qt1-x82b.google.com with SMTP id v3so940548qtw.4
        for <clang-built-linux@googlegroups.com>; Thu, 14 Jan 2021 03:32:28 -0800 (PST)
X-Received: by 2002:aed:2f06:: with SMTP id l6mr6521305qtd.66.1610623947935;
 Thu, 14 Jan 2021 03:32:27 -0800 (PST)
MIME-Version: 1.0
References: <0000000000004a33a005b8b8eaab@google.com> <20210112194058.GA200254@ubuntu-m3-large-x86>
In-Reply-To: <20210112194058.GA200254@ubuntu-m3-large-x86>
From: "'Dmitry Vyukov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 14 Jan 2021 12:32:16 +0100
Message-ID: <CACT4Y+YFZf=BnCQJQUYwG-UpaYKG97VD-XWpEdXoR3ZnOxH5NQ@mail.gmail.com>
Subject: Re: upstream build error (12)
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: syzbot <syzbot+76880518931d755473cf@syzkaller.appspotmail.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dvyukov@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=U0dgy3K3;       spf=pass
 (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::82b
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

On Tue, Jan 12, 2021 at 8:41 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Tue, Jan 12, 2021 at 11:20:27AM -0800, syzbot wrote:
> > Hello,
> >
> > syzbot found the following issue on:
> >
> > HEAD commit:    e609571b Merge tag 'nfs-for-5.11-2' of git://git.linux-nfs..
> > git tree:       upstream
> > console output: https://syzkaller.appspot.com/x/log.txt?x=15965a00d00000
> > kernel config:  https://syzkaller.appspot.com/x/.config?x=6157970d0a91b812
> > dashboard link: https://syzkaller.appspot.com/bug?extid=76880518931d755473cf
> > compiler:       clang version 11.0.0 (https://github.com/llvm/llvm-project.git ca2dcbd030eadbf0aa9b660efe864ff08af6e18b)
> >
> > IMPORTANT: if you fix the issue, please add the following tag to the commit:
> > Reported-by: syzbot+76880518931d755473cf@syzkaller.appspotmail.com
> >
> > clang-11: error: unable to execute command: Aborted (core dumped)
> > clang-11: error: clang frontend command failed due to signal (use -v to see invocation)
> >
> > ---
> > This report is generated by a bot. It may contain errors.
> > See https://goo.gl/tpsmEJ for more information about syzbot.
> > syzbot engineers can be reached at syzkaller@googlegroups.com.
> >
> > syzbot will keep track of this issue. See:
> > https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
>
> Would it be possible for clang-built-linux@googlegroups.com to be CC'd
> when there is a build error and the compiler is clang? Especially if
> clang is hitting an assertion.

Hi Nathan,

I am adding functionality to CC specific emails on build errors on
specific instances:
https://github.com/google/syzkaller/pull/2388

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACT4Y%2BYFZf%3DBnCQJQUYwG-UpaYKG97VD-XWpEdXoR3ZnOxH5NQ%40mail.gmail.com.
