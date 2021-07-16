Return-Path: <clang-built-linux+bncBCQPF57GUQHBBJVZYWDQMGQEPGHTWXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3b.google.com (mail-vs1-xe3b.google.com [IPv6:2607:f8b0:4864:20::e3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 116F43CB5D6
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Jul 2021 12:17:12 +0200 (CEST)
Received: by mail-vs1-xe3b.google.com with SMTP id v15-20020a67c00f0000b029023607a23f3dsf2328620vsi.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Jul 2021 03:17:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626430631; cv=pass;
        d=google.com; s=arc-20160816;
        b=o92U+2K3JlPf+TUR7b4pfMIZxaQrXTTWA/mrGWnUBeSXYGa31yaFPSJbIhgv+gEZ13
         SVxguIPooO9/yIyq2a3iMFocg2KgboFUCpjFUGWt5HPinZxnkMjbfgLRbNeQHlcMI3cR
         XF8g6KRw6KvMiFKmuL28Tsc9Qc4TrGfimcoZrphyaYxbkYH/ojjDQQNRG2vBDAZdjAov
         VfQ1HcgA3XKkofZMQlIiSzexH5vn3wW6WQpctc7nRuEJ4eYZnwkp9TZ4al1HnIJBblmy
         0z45y1rowQxrfhvlvF9tJx+XzHgMy//MBPUS8DyZVO9wBhv+gs+fXiGlTMwxVCSCP7+b
         r1EQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:from:subject:message-id
         :in-reply-to:date:mime-version:sender:dkim-signature;
        bh=QWfXPYJ+FQeI9r5aRHarr6yLGbz98m7T3wJKVGWPpms=;
        b=GEn/m+/qElOMdt7YdU9DpoTw3hxoK0vWbNMvBKjyvx/kotRnouSfTK9Vv6DCRKJ4wf
         xPv/X6GjImIJpfJ58N044cG5In7LfYQ/wtUUm443VgdbKcFlBwNV+/QFb7anPE75Juvd
         Fq/2WnLB4ATsO/el4qfQwVNMxjfKRvlZLYPKikEw7XPE6rLI4HX2NPlWjPFpvI7KHwhg
         1vP9Y8v7HAWuj4kdbzNeJ2QlLzIfdn6frJt7cTt16n/2Qwvs63aJdHTc5W8BnaB+bil5
         PT6wgLTaUINtUcRvZ/ALUGM8CMvUwb0hE6seO/A/JLGrDyxbFYX9Il3pZn26c/dQX++v
         DQiQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of 3pvzxyakbadigmnyozzsfoddwr.uccuzsigsfqcbhsbh.qca@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.197 as permitted sender) smtp.mailfrom=3pVzxYAkbADIgmnYOZZSfOddWR.UccUZSigSfQcbhSbh.Qca@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:date:in-reply-to:message-id:subject:from:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QWfXPYJ+FQeI9r5aRHarr6yLGbz98m7T3wJKVGWPpms=;
        b=FOVBKInRXTq0F4RVVq3HR6NuqRD6nRCzcZ6+yKr67XDYhzrLdZsYtvCNuXGepQ0xnx
         hHf3hlfOmYsyMEEHf+MUWb2+YAfOMQR9AuUVZ4quRzi5Lu0OWZJQg4KAs7fNfDM/tOqK
         pJrhRQvAnoaM5gjAZ4Q8AUixitWgpFN9zMNdBguNQdObQ1pAlgBtO4Sf2N0yIF8QW51i
         UhR9xfgeWkDhv5lVTqPdKYN9c0o7hNOnUtzci7ciWRoyEpkPWTdJ1dYdiqYWAxpZVPvo
         IlHGT+HwRtTPVkae02br0QIFaoZYzawOPSjm41ShPWjCQOSPNOwYkA54e0BqtStNW2Zw
         j8DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:in-reply-to:message-id
         :subject:from:to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QWfXPYJ+FQeI9r5aRHarr6yLGbz98m7T3wJKVGWPpms=;
        b=FyKyK46GLUSgqBP0DeYdPRc+YyW3vCm93zwsXqCjehYqOahX+zh/gL/QEfJ5n/c8kF
         +9QJZhHFOMtGAqPKmNFKfJihdGl7H2pd8V5OEUWgViQa2X9rPUllVrt3sxrzK5tIc9Xc
         AkCRnO7SxFnTfiTpfmIrPZr57z9VPEQo8GTIZiYVznxsCCbCHOmcr1DgEjb8muJ7hZyM
         YycskBPxeoBRYdCUpOLVJ6+LXQaGjTl8c5fymnYRrzMY7APewlJS28DDC4zXZZm0g3Vo
         Q/9oYlAP9ab01dfe7k9PuGWRdTuNYAKD8RNnZkjkYNTGSQlTK6SImpeGtKutZ5w2ZlLS
         4/cQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530YsesPySgUPaXsMzua5epN+LZsRcDw9LlnUtaN2DgtWqHD4uFM
	BVgdT4HdqLvPVQCXtj7mlwk=
X-Google-Smtp-Source: ABdhPJyjRtdl/Ai/vUVBsl15ybiE+7C4tnx05mOPvBljOqhwxWyGp7j4SzFiLgYdO4SLjFZm0GcPDg==
X-Received: by 2002:a1f:2bc3:: with SMTP id r186mr10283924vkr.4.1626430630966;
        Fri, 16 Jul 2021 03:17:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:edd7:: with SMTP id e23ls2808792vsp.5.gmail; Fri, 16 Jul
 2021 03:17:10 -0700 (PDT)
X-Received: by 2002:a67:fe06:: with SMTP id l6mr11598169vsr.0.1626430630445;
        Fri, 16 Jul 2021 03:17:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626430630; cv=none;
        d=google.com; s=arc-20160816;
        b=vlGKIQJXQzecEWx80RILggQBgekLXd69+c8Sow1GnMZ2NaQ4tCPKyJmxKMmMbvGYAy
         H2ndqJBWzL+jhpON4Yz5jokUMzz6Ic4PS7JCP+DEX+0R29lVzdK+VFUPowgunwl3A2Dw
         Ck/PS1RXTnd0rsWFOg6FWeC/pkOkN2UUw2zW0hJfTeKNKqY3xN0thIPOwVwVfckhTQdA
         051oFs1v6el4BK0868P487Qsnyl+/IkEli5KtET6KbnDT2xCZrTgzqaX8QF5K+4llCja
         z5DctTg/8GHu2cMF5K8yBXuPCy1IGt7+iJIw/8mkrJsnfHdT1FRIPTAodvlAxTY678n/
         v5gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:message-id:in-reply-to:date:mime-version;
        bh=37NWRujtMEhr4Bm0IxX/U/zG+egBRbX0strpGbjTPV0=;
        b=yskmtPU+hSCLbqMYMivLdvHTmPXins/eA72pew718+muWGW1asVR7KG1kBzDm556oG
         /lVn/KsISoWLIPH9iXx05//ynU4RUCVVNIhMdGQ27iSqe9aX8F9XnImV/vYfjhiWKPoI
         IYk7Vzo29tuwA2qVRXsQVl6InxdHPf5rgyRMw2+EfFBP13KEh68BhkOVGP/HKQtvBzXc
         8SNZchTdOFTnkdphuZs6C4XICy9TvYHPw1HCVK43LagM0TNGQ0lo2WM2CMHCyKwPQaSx
         gHj3rToWxJTpM030xo0xNrkZHS4kQopsf7PL4NmPNXv+FJ46Iwyrx0hvorz+hXMvH0j8
         40/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of 3pvzxyakbadigmnyozzsfoddwr.uccuzsigsfqcbhsbh.qca@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.197 as permitted sender) smtp.mailfrom=3pVzxYAkbADIgmnYOZZSfOddWR.UccUZSigSfQcbhSbh.Qca@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
Received: from mail-il1-f197.google.com (mail-il1-f197.google.com. [209.85.166.197])
        by gmr-mx.google.com with ESMTPS id s7si686793vsm.0.2021.07.16.03.17.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Jul 2021 03:17:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3pvzxyakbadigmnyozzsfoddwr.uccuzsigsfqcbhsbh.qca@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.197 as permitted sender) client-ip=209.85.166.197;
Received: by mail-il1-f197.google.com with SMTP id a15-20020a927f0f0000b02901ac2bdd733dso5072389ild.22
        for <clang-built-linux@googlegroups.com>; Fri, 16 Jul 2021 03:17:10 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 2002:a92:6412:: with SMTP id y18mr6344072ilb.158.1626430629964;
 Fri, 16 Jul 2021 03:17:09 -0700 (PDT)
Date: Fri, 16 Jul 2021 03:17:09 -0700
In-Reply-To: <0000000000006f809f05c284e0f1@google.com>
X-Google-Appengine-App-Id: s~syzkaller
Message-ID: <000000000000f36f9505c73ae373@google.com>
Subject: Re: [syzbot] INFO: task hung in ext4_put_super
From: syzbot <syzbot+deb25600c2fd79ffd367@syzkaller.appspotmail.com>
To: adilger.kernel@dilger.ca, clang-built-linux@googlegroups.com, 
	linux-ext4@vger.kernel.org, linux-kernel@vger.kernel.org, nathan@kernel.org, 
	ndesaulniers@google.com, paskripkin@gmail.com, 
	syzkaller-bugs@googlegroups.com, tytso@mit.edu
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: syzbot@syzkaller.appspotmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of 3pvzxyakbadigmnyozzsfoddwr.uccuzsigsfqcbhsbh.qca@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com
 designates 209.85.166.197 as permitted sender) smtp.mailfrom=3pVzxYAkbADIgmnYOZZSfOddWR.UccUZSigSfQcbhSbh.Qca@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
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

syzbot suspects this issue was fixed by commit:

commit 618f003199c6188e01472b03cdbba227f1dc5f24
Author: Pavel Skripkin <paskripkin@gmail.com>
Date:   Fri Apr 30 18:50:46 2021 +0000

    ext4: fix memory leak in ext4_fill_super

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=17ebaa22300000
start commit:   2f7b98d1e55c Merge tag 'drm-fixes-2021-04-16' of git://ano..
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=398c4d0fe6f66e68
dashboard link: https://syzkaller.appspot.com/bug?extid=deb25600c2fd79ffd367
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=170d645ad00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=16a03a2ed00000

If the result looks correct, please mark the issue as fixed by replying with:

#syz fix: ext4: fix memory leak in ext4_fill_super

For information about bisection process see: https://goo.gl/tpsmEJ#bisection

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/000000000000f36f9505c73ae373%40google.com.
