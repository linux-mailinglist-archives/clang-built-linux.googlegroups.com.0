Return-Path: <clang-built-linux+bncBCQPF57GUQHBBOUBZX4QKGQELDYETVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3c.google.com (mail-qv1-xf3c.google.com [IPv6:2607:f8b0:4864:20::f3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AAE8242391
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 Aug 2020 03:07:07 +0200 (CEST)
Received: by mail-qv1-xf3c.google.com with SMTP id v5sf374350qvr.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 Aug 2020 18:07:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597194426; cv=pass;
        d=google.com; s=arc-20160816;
        b=i/DmbubUfaBUq8P4kVF0LT47hafRvgdMXk+8qfYJfp0m47MqBubePWgQ76L8Plryrz
         am7pVJEl1aDb93hEABauHyimZUieEBCD7JUWJK/sueQuxDPMdlOwJyTUwJVJcWxr5Tp0
         T7tW0EM1OszGCBKTW2v2GqBtuBm1CjYqeZPlegLZcw4xVA6UtJ5whKI1lztsOI7T0R2G
         o1eZ72YEUM6fJn7UQW04oTraX7q1CZO0piXD65GzHc4F8kVVhSF1R1MZvVn6y1iDO2rZ
         8OkhV02SPx1Rj7TlCLkf9zkCPM9BLU5wfElYNxYLP3uD4fw/RleaBpuLA1hG7kvBgUhn
         HAcg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:from:subject:message-id
         :in-reply-to:date:mime-version:sender:dkim-signature;
        bh=taaWdYRBZgV2431vLsC428WTWpWdGP5qPx8gqNLKGOU=;
        b=iI/v2ksGq82Byuh1CYZQOKAMWWDsMa3TkEgWedQRXbqKO7b2Prf8zB5RFqGdBq3Iz6
         B5TZbmJNSXaSN62tinL0vdFHSaMgtr8TVNXGevePrJt8K8qApsKy9NLunbCMr02c6U4P
         5EOPj9eFe7pyXqsky4VxZmmch/OsIK+ctcRCd91ZiwzWjieWrPAvqAPrXcmrH2yvTaDn
         dP7h4P8dK9iO/yarPpnDkjvHcj1X3D/nKSH/9qi3Shmo9GOp9YW8e2plobD4f9xix7Qp
         Upud3JJOzxxXBY5pAUXuho5EB5tD+jz79/4dijviKpj3FY1RKKJVUKb4sgqdyb9xmzbE
         f5bg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of 3uuazxwkbaag067sittmzixxql.owwotm20mzkwv1mv1.kwu@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.198 as permitted sender) smtp.mailfrom=3uUAzXwkbAAg067sittmzixxql.owwotm20mzkwv1mv1.kwu@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:date:in-reply-to:message-id:subject:from:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=taaWdYRBZgV2431vLsC428WTWpWdGP5qPx8gqNLKGOU=;
        b=i/cDVJIJQFQd8gIFcz8IEplluxXQ5JXTN0XdYunHkB4p2z2UQzMrcmgrKgTgXsLrQo
         jU7m7uet+q8Axvl6d4KRuaALfjebdKXQvUHLp8jO7aSJE8ans6qChPNngUbtFGYcCFie
         Ru8M2aXaccX/Q0X9HkiXMv20dmPvnVCP1ScSJqXisVZVbP1p497Z8u1Gl5GNBZYQzDjR
         ptcB8HeLxZ59MsuSF5EfzygC/2LdRSs4PfjFI5W/6m3o8Z56YJE9813jBKAGf8wIWb6y
         /tlhW4MBL0Zg6Vb7P8YlPd9lJb+P8eZf7+gLGu9jgz9pbm2Iy/3dlVaHIOm6bK13IP4y
         MXYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:in-reply-to:message-id
         :subject:from:to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=taaWdYRBZgV2431vLsC428WTWpWdGP5qPx8gqNLKGOU=;
        b=HYHmxCSi4DYCVz9S9/SVm8UgFuASwGoc6uSDOz6yCSX4WnRik23M/oAOigNHictz4M
         jMQtsjc72yPdORX9XUesLrL23DpKIoPb6gzrKJxqScOvcIHf/+HBwzjpqojp437sypJ2
         imDr/8xsd4yLdtZnMV/Lnmc5G0Mdvjf2u59iVs624ot+xU8U6owlqiSsqLm9ufqBzs3P
         ads93x/nooIEoPjZoZO1y1SEWCpN7RzYfljXYMDtOB/HOhzMp0e7w765KR7Kw0Ek8Bz+
         98ZxiR1r6Rj/EQ66dJF4xEoG1Jx1wHDPGWFopKunC7OVB+3p7syEZrXoNkjwfAvAcMS0
         +u9Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531nPUy/6nruQIF6baqugevk1Oifk27NxzxXKXJXaBtkKEep87Ud
	zsy67IhvaI4pvbhVU9nEWNo=
X-Google-Smtp-Source: ABdhPJwyV5zKjHQtzIMsc6Q99WR54I+ceWNfA8L1iMEGeNhqVRX3oAfFmtRXOUpYkK806VkGhUGmlw==
X-Received: by 2002:a0c:ab16:: with SMTP id h22mr4288787qvb.72.1597194426304;
        Tue, 11 Aug 2020 18:07:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:678a:: with SMTP id b132ls195806qkc.5.gmail; Tue, 11 Aug
 2020 18:07:05 -0700 (PDT)
X-Received: by 2002:a37:a45:: with SMTP id 66mr3939031qkk.435.1597194425889;
        Tue, 11 Aug 2020 18:07:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597194425; cv=none;
        d=google.com; s=arc-20160816;
        b=NzYQ6I9Ho82XdUTFv1XPHlyeF3I6PFfp5XQgvN7KPLdvP1tipLDIkRUNCqJkwuMFFm
         ofQHLbdiIR/wEs/j2f0mBoaFzDnUPhTolVFNzmbpm6biWZ8YW0KIasfjRDmZ0Xo0eFgs
         r1uajmU22kEYMUEW8XJhXsR7QgDKLVwS4WDam7XVi7gCLa0JDdGJZ6cA0LC6TuEPHkkz
         KbrVcWm1P+SwJ1Fxw6+7ynB8bQqooQQCCcay1wmz1AphEBsGvzzGHZUOquYWDqObH5UU
         YOjZpN4+/+gLdZvlPIGB69OXZHA7V5oZM6EcBAc57nNYlUzFkq8XnqEb3afFuDv4miSX
         568A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:message-id:in-reply-to:date:mime-version;
        bh=X3NiX6nVSgp11EpijWT3pX7H1MOgqhCnBt3mOeEwKPI=;
        b=PsKKE2NyGgwGSLHttvI0aY+C1D+RfZBw7pA21iujqKrpXL/s9bSzkyXTlhUAi7AV5N
         tX1+qd1nHMBWqXdy27+u23519e6QR/bQNu6p5+lO1zQMMjoV4LdIbE7N1OTMUppuWHd3
         NsZ/xdzdPsoczNo0XVOO6lxLRtYHXcwnFBN2wp2NYGpkpUIR0iIPU8BOSnyIYdd6qk/T
         jPLRUs1o5pk5CzkRqEjfNY5Ces2BmlYZVAi5F2SmjCEdUtQa5358LOwf2W61YiaWwOmJ
         Xsnpubcq6hbiLjIO65bKq80DwxvE/kWq0kuISnTN5Efsimv3GOE3fusxOYD7aGhVK2Pj
         Nzkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of 3uuazxwkbaag067sittmzixxql.owwotm20mzkwv1mv1.kwu@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.198 as permitted sender) smtp.mailfrom=3uUAzXwkbAAg067sittmzixxql.owwotm20mzkwv1mv1.kwu@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
Received: from mail-il1-f198.google.com (mail-il1-f198.google.com. [209.85.166.198])
        by gmr-mx.google.com with ESMTPS id f38si56222qte.4.2020.08.11.18.07.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Aug 2020 18:07:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3uuazxwkbaag067sittmzixxql.owwotm20mzkwv1mv1.kwu@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.198 as permitted sender) client-ip=209.85.166.198;
Received: by mail-il1-f198.google.com with SMTP id b18so611016ilh.16
        for <clang-built-linux@googlegroups.com>; Tue, 11 Aug 2020 18:07:05 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 2002:a92:bbc6:: with SMTP id x67mr26231257ilk.235.1597194425363;
 Tue, 11 Aug 2020 18:07:05 -0700 (PDT)
Date: Tue, 11 Aug 2020 18:07:05 -0700
In-Reply-To: <000000000000b6b450059870d703@google.com>
X-Google-Appengine-App-Id: s~syzkaller
Message-ID: <0000000000005c72d405aca3ce17@google.com>
Subject: Re: KASAN: global-out-of-bounds Read in precalculate_color
From: syzbot <syzbot+02d9172bf4c43104cd70@syzkaller.appspotmail.com>
To: a.darwish@linutronix.de, akpm@linux-foundation.org, bsegall@google.com, 
	changbin.du@intel.com, clang-built-linux@googlegroups.com, 
	davem@davemloft.net, dietmar.eggemann@arm.com, dvyukov@google.com, 
	elver@google.com, ericvh@gmail.com, hverkuil-cisco@xs4all.nl, 
	jpa@git.mail.kapsi.fi, juri.lelli@redhat.com, kasan-dev@googlegroups.com, 
	keescook@chromium.org, linux-kbuild@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
	linux-sparse@vger.kernel.org, luc.vanoostenryck@gmail.com, lucho@ionkov.net, 
	mark.rutland@arm.com, masahiroy@kernel.org, mchehab@kernel.org, 
	mgorman@suse.de, mhiramat@kernel.org, michal.lkml@markovi.net, 
	miguel.ojeda.sandonis@gmail.com, mingo@redhat.com, netdev@vger.kernel.org, 
	paulmck@kernel.org, peterz@infradead.org, rminnich@sandia.gov, 
	rostedt@goodmis.org, rppt@kernel.org, samitolvanen@google.com, 
	syzkaller-bugs@googlegroups.com, tglx@linutronix.de, 
	v9fs-developer@lists.sourceforge.net, vincent.guittot@linaro.org, 
	viro@zeniv.linux.org.uk, vivek.kasireddy@intel.com, will@kernel.org, 
	yepeilin.cs@gmail.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: syzbot@syzkaller.appspotmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of 3uuazxwkbaag067sittmzixxql.owwotm20mzkwv1mv1.kwu@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com
 designates 209.85.166.198 as permitted sender) smtp.mailfrom=3uUAzXwkbAAg067sittmzixxql.owwotm20mzkwv1mv1.kwu@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
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

commit dfd402a4c4baae42398ce9180ff424d589b8bffc
Author: Marco Elver <elver@google.com>
Date:   Thu Nov 14 18:02:54 2019 +0000

    kcsan: Add Kernel Concurrency Sanitizer infrastructure

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=13eb65d6900000
start commit:   46cf053e Linux 5.5-rc3
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=ed9d672709340e35
dashboard link: https://syzkaller.appspot.com/bug?extid=02d9172bf4c43104cd70
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=147e5ac1e00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=14b49e71e00000

If the result looks correct, please mark the issue as fixed by replying with:

#syz fix: kcsan: Add Kernel Concurrency Sanitizer infrastructure

For information about bisection process see: https://goo.gl/tpsmEJ#bisection

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0000000000005c72d405aca3ce17%40google.com.
