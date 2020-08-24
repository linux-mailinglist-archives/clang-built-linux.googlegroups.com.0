Return-Path: <clang-built-linux+bncBDYJPJO25UGBBW5LRT5AKGQEIZHIEQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DB3024F0E1
	for <lists+clang-built-linux@lfdr.de>; Mon, 24 Aug 2020 03:20:28 +0200 (CEST)
Received: by mail-qt1-x837.google.com with SMTP id r24sf5736283qtu.3
        for <lists+clang-built-linux@lfdr.de>; Sun, 23 Aug 2020 18:20:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598232027; cv=pass;
        d=google.com; s=arc-20160816;
        b=YBl2Hc9BDxD5RNrXSs08+ZkSwzqY3D9sQR8aVAfQNFMbaD6H7NUzww/ziDHIBZgz0P
         3RoQVlGb1MNJGBl8hlSK+myoz2GSTR0c2HSppTpOh3z5bJD4uToFZflRzAkUIakonFUT
         QdBdDuRZuLLdwmaRxzV0/r3eZpiZfWkCWqS2ElKLomLcjb97bMHmDs0OyG6RKDGwgRyw
         yXLZCvOkWnUNjegTd3LCfSGXa+WmTuORLj3nu2KerJtVAyDCJ9LNzrDZiDPtVuTF5M3U
         sBzf/3TEe0LI/4GqY8gOO1mxQ9dd/jrtSTI3i7uKRGmI03eREhn4epbEoevedi6GL2qe
         az5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=XlvYZEXfSPYyOt6orVqyNXtEab4bWTrpV8DKUdZrxkI=;
        b=db5viiXTUrqQvV8l74vABZ5BbSexeXxht/kkv7VADRmfoPo9ejzQ481LZCL3EBhRxt
         iNHC8dw4kDLNL+Wyczph+AaRs4pYmL63Vk3Dr9p1L/WOsxAiEq+l8yW2yaTqh9eg8Yet
         xnH8YNLUzujv3k1XsRgJjJaHz7Td4GO7Tqji6tjf7nT5H7K/QG/XZ9k/xGGhSlfnPoBl
         SRs8FJf2EqopQhEtb6wyZJnedrhBgdE/W8rrZt8cajhqKHCryLmONmQJM6cacxACVkrl
         RtBu26DWeacVG7kIpMNEe29ic95Iehws+UXBlaf7vHtqwip/CFNzU8IjGsfQB4IH9Ew4
         N6sA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="gLFTb/DG";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=XlvYZEXfSPYyOt6orVqyNXtEab4bWTrpV8DKUdZrxkI=;
        b=HrYv8A8ADQK/M248kX6M4z3e0DQERv+4QCAZMc0gwgzRXLRb2Zzv3Coe0V4s1o80mj
         9I49WFao2SIELc6VAPT+Y1H1+SQ291hWWu8fbvdOo4JmrYpNXi7PJpm5PAIZZx2ps9OR
         6+o1pp64p6cKJdNAJnt3Fn42bY3YBr5IeRiJTsfkzY6w9mhNWQ2+HBvgRuJ9hl5Nm2yN
         Yi8fsjFGt2PVsYmtTTIKcsn8lIR5cXXWzOl67UA0WYuwXOZVdU+Quk/tBH6EIFDUuljr
         lq8M+epjGRBSRh6PmPr2u/KxkXFvjhBfInf81lpimd4P0YnCQixr3YLx3IuR80hKEIP7
         lMDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XlvYZEXfSPYyOt6orVqyNXtEab4bWTrpV8DKUdZrxkI=;
        b=H6UL+mQECHHSk1oqh1jMmB5tc/V/m4sLVcO1CCZpCw9/QY/7M71TdvkfQuY6tXcq5+
         OSpYll5QKU/PzeY9iKDsfpYHU9v63F9gwD0qPc5kbDYz/PW7E7QIFkiKXEZrsJYrOIBv
         Gr+wLSPtKR7fTmhtThT7SNMCHCkUIvn6bjFu0JTkaaE658wP26pJyLJC9teAS7zkX8kp
         Knj+Ep7TRy+1sZLDZGgnasUDw/AHGsqeWrr4wKKK0TtwQ521A5OYyqf/oBTSxevs0X74
         fb4cIoKUU63YmAs3s0eHBsJ7+SuvzU2dOdDS/yL9/6yJMf4bkwX1AgbBxhQayl5TirRc
         rK/w==
X-Gm-Message-State: AOAM533SStgsKHggtgTWDOKXzYShE80b6vdSwrQ7/t0Nu8QpBl4qRgdC
	4H0gtmILh2IVFNdr0Vf3fgc=
X-Google-Smtp-Source: ABdhPJw7umpQ9PDlI0pNyNzmk1JhIbKDvb82nzKthAbLH4MOTzQTgjvNjuraUE9L3tGz4N3JbL6Zbw==
X-Received: by 2002:ac8:7383:: with SMTP id t3mr2803774qtp.160.1598232027149;
        Sun, 23 Aug 2020 18:20:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4986:: with SMTP id f6ls1555700qtq.11.gmail; Sun, 23 Aug
 2020 18:20:26 -0700 (PDT)
X-Received: by 2002:aed:3948:: with SMTP id l66mr807202qte.44.1598232026840;
        Sun, 23 Aug 2020 18:20:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598232026; cv=none;
        d=google.com; s=arc-20160816;
        b=CDFmIZdcpej74Fk09wv/b6chkUHPqrFG0iDY+q/tHALgbPApaDVDeKlVKR76pET6fK
         CT/c/bBWJsuIKY+5M0KHLm/WlHJ8JKj5XecO7qWMwbnOdYZAgakcM7wTjEWdHhOfdFBw
         np4iA/wrGGUncNV+QXCAUz6vUhrV9qZ1fIBu/IMKRZojSjFA6614u14F8USTEhQ8/ISo
         QuMbO5lSVP6zbBI/jhqEozPzJxn27/uFX3D5r2LyXS2PZ4XuOSHm9BEoBYvcJ3EO4nyi
         PROIInp/5lXerZDqGZZEMif3RkutnqdO9ln4qtZpAsC99xIOTzyUABk7hl6cfGSSbJJh
         /Nmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=nmvYXXFd1w04dIpsAk1mE56DcCn9+1t9bF2h4MSJh18=;
        b=aHK0gtLSvOjFszhknHc/FdQ86l9ATw8w7QYjGffqRG600cjoEf3dJZVJnqGM7GFu8B
         J9jKmWRtsZ1hUi0mDAtH/kHKASPppLzUKb8or7GghZx4mPJ2v9r6edQXjglWSD9g1Gtq
         dRaD1ntdIncScyketW96XXZzRJkCOybzut2yUcSnNADuVVHOpO1NcnfiEEyAUisWeQ/Q
         y2JTfO0MshpbcCu8QJ+udpavd3JQeK5gVyo/wa03T1I7pDw5HjsUdCHtEBLIJepZwHPh
         /PAk+cDCIPaUQrbe+6KkGvqG7FUe8uUtZRyLwsEVywF7LMkb/Gibj/lXTqhi2VH6WnaX
         wS9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="gLFTb/DG";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com. [2607:f8b0:4864:20::631])
        by gmr-mx.google.com with ESMTPS id m13si391216qtn.0.2020.08.23.18.20.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 Aug 2020 18:20:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::631 as permitted sender) client-ip=2607:f8b0:4864:20::631;
Received: by mail-pl1-x631.google.com with SMTP id h2so3444041plr.0
        for <clang-built-linux@googlegroups.com>; Sun, 23 Aug 2020 18:20:26 -0700 (PDT)
X-Received: by 2002:a17:902:cb91:: with SMTP id d17mr2133802ply.223.1598232025517;
 Sun, 23 Aug 2020 18:20:25 -0700 (PDT)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Sun, 23 Aug 2020 18:20:14 -0700
Message-ID: <CAKwvOdmKTzO6WOgPX5Y9Cn5Nj_6jW6YbEWnYUaJTKtHW-GRdJg@mail.gmail.com>
Subject: LLVM BoF tomorrow (Monday) - LLVM MC (Thursday)
To: clang-built-linux <clang-built-linux@googlegroups.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Fangrui Song <maskray@google.com>, 
	Sedat Dilek <sedat.dilek@gmail.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nathan Huckleberry <nhuck15@gmail.com>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Bill Wendling <morbo@google.com>, Stephen Hines <srhines@google.com>, 
	Sami Tolvanen <samitolvanen@google.com>, Will Deacon <will@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>, Vasily Gorbik <gor@linux.ibm.com>, 
	Behan Webster <behanw@converseincode.com>, Geoffrey Thomas <geofft@ldpreload.com>, 
	Alex Gaynor <alex.gaynor@gmail.com>, John Baublitz <jbaublit@redhat.com>, 
	Josh Triplett <josh@joshtriplett.org>, Mathieu Acher <mathieu.acher@irisa.fr>, 
	Dan Rue <dan.rue@linaro.org>, Maxim Kuvyrkov <maxim.kuvyrkov@linaro.org>, 
	Dmitry Golovin <dima@golovin.in>, Stefan Agner <stefan@agner.ch>, Marco Elver <elver@google.com>, 
	Dmitry Vyukov <dvyukov@google.com>, Mark Brown <broonie@kernel.org>, 
	Lukas Bulwahn <lukas.bulwahn@gmail.com>, Alistair Delva <adelva@google.com>, 
	Greg KH <gregkh@linuxfoundation.org>, Alexander Potapenko <glider@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="gLFTb/DG";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::631
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

Hi all,
Reminder that tomorrow for Linux Plumbers we're planning to have a
small BoF (separate from the MC) tomorrow:
https://linuxplumbersconf.org/event/7/contributions/711/

(9am PDT; check your timezone,
https://www.timeanddate.com/worldclock/meetingdetails.html?year=2020&month=8&day=24&hour=16&min=0&sec=0&p1=283)

The BoF is going to be hyper focused on ClangBuiltLinux; the MC will
be more one what we need help with from the kernel community.

Make sure you have the confirmation number from the email titled
"Registration Confirmed - Linux Plumbers Conference 2020" as that is
your password to log into chat.2020.linuxplumbersconf.org (join
#llvm-mc or #rust) and https://meet.2020.linuxplumbersconf.org/.  Do
yourself a favor and test logging in before the conference starts, and
stay logged in.  I don't want to hear people can't log in as the
conference is starting.

Tickets are sold out, and we gave away all of our free tickets.  There
will be a free youtube stream though:
https://www.linuxplumbersconf.org/event/7/page/100-watch-live-free.

Our MC will be Thursday, schedule:
https://linuxplumbersconf.org/event/7/timetable/?view=lpc It starts
earlier than the BoF (7am PDT).
(https://www.timeanddate.com/worldclock/meetingdetails.html?year=2020&month=8&day=27&hour=14&min=0&sec=0&p1=283\)

Presenters, make sure you're working on your slides; you should upload
them to your presentation before the day of the MC, example:
https://linuxplumbersconf.org/event/7/contributions/802/ (sign in with
your linuxplumbersconf.org password, not the confirmation number, and
you can attach your slides to your presentation. That keeps them
preserved and helps Behan and I load them up for day-of presentation).
Presenters may want to read the presenters guide:
https://docs.google.com/document/d/1mXteE8Pu7Z6IGWEdL8o4ZSPnVvt8FUuDlIub2SzhLJ8/edit?usp=sharing

Attendees, please open the following tabs:
- https://meet.2020.linuxplumbersconf.org/
- https://chat.2020.linuxplumbersconf.org/
- https://linuxplumbersconf.org/event/7/timetable/?view=lpc

See you at the show, and please fix your compiler!
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmKTzO6WOgPX5Y9Cn5Nj_6jW6YbEWnYUaJTKtHW-GRdJg%40mail.gmail.com.
