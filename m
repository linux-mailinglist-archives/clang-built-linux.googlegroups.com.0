Return-Path: <clang-built-linux+bncBCQPF57GUQHBBN6F2SEQMGQEQ2KK7QA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ABDA401173
	for <lists+clang-built-linux@lfdr.de>; Sun,  5 Sep 2021 22:04:12 +0200 (CEST)
Received: by mail-ot1-x33e.google.com with SMTP id x38-20020a05683040a600b0051e1c81337bsf3308572ott.3
        for <lists+clang-built-linux@lfdr.de>; Sun, 05 Sep 2021 13:04:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630872247; cv=pass;
        d=google.com; s=arc-20160816;
        b=Mr/6YhNI42PH9QufzkDVBuGYVB9kPZlugS1QC+OtSD22EJD5R5FjOOXvw0ZQ36DDti
         JAEvv3PBY5mgdJAZqjzEEi/Sec4m+ZT9+n71oel8VinWc7qExomHH3Cz9XlrcuEZOtbS
         wFGfgJGXlfCP9MNqkiluk2+1E7rfXVqKMPpxzfCTW2B0E8tnnK2aBgRzYW6CXpW9F9Sl
         jyTaw+OVSlYH14/kSaDLpFaQjTu3xCohTLQVvgViyecC1jyLN57C35Uq0Q9tqzT0uf/g
         /f2t4+n7DGJrJPKMhHZFoMC8xG4uPd9f3no1SC+aUQT6ZvSeLFIDyJekf+UI9Ls6WSOg
         j9tw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:from:subject:message-id
         :in-reply-to:date:mime-version:sender:dkim-signature;
        bh=LabHhM+8zX1zm16iBHYICCJyRHQsDXzfcC91P5JQG08=;
        b=s2exlRW5I6DrkqksLF0lz/J6HIrUyHHYI7ld22q/vzf2JFwzxi2L4YgJUn4KZrrnZP
         cTBNROec9adntaPj6gE+BMmTlKgZvjf5kkKAE1jXrkizysCR40qFNoeLWysHIqVTA3wY
         Xne2Ik20KY734b5Uiig7eiXoe5lWE+cTz21LcEiUHxiHrVXpecRqzDCqGgXOHlzhBohj
         +l1MEezQe0C4+8Z/+T8RVOlsS3uOvocMREpNyW2YZDgTfQT/ET1213E7MUGA5ClfuaOO
         nWL6DwHrkUZlGEJDqfFi31B6HRSQL0AIsenVu0XQQ4xmrmuG1Hy2/OxRS61Dhvxr/msP
         cRjg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of 3tii1yqkban8tzalbmmfsbqqje.hpphmfvtfsdpoufou.dpn@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.200 as permitted sender) smtp.mailfrom=3tiI1YQkbAN8TZaLBMMFSBQQJE.HPPHMFVTFSDPOUFOU.DPN@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:date:in-reply-to:message-id:subject:from:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LabHhM+8zX1zm16iBHYICCJyRHQsDXzfcC91P5JQG08=;
        b=ZzYssKHJSuE+ImcM42mQwwHXf5vK2f1yMic9z7fVS3X2ZcMJJNPxQydsLD/lh4HM8o
         3Sgq11o3u0vUjQj7RwpablCnEqIlyGMntitCzmjXLh33x7tF7mnjis9s/sJeGvXRQnY/
         02eymxjcGt0tLhudwkh4zoK8swGDsgaHbNUr6uxJwlyNvaidxkjHrp3xYnt7kEFGyZzp
         YH6gkrIe4DXrcSC7lbfMvrIMCsx0BewL/BPSM+ja0CcvsOf7nwYKKPBzJUsB8SlM9fIb
         boe2cRQTvPDokb6avs9KTmjfYNs1iHNz/aUfheeFB4EM8SKCBJsshsSHaRU+OOn+beFv
         PScw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:in-reply-to:message-id
         :subject:from:to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LabHhM+8zX1zm16iBHYICCJyRHQsDXzfcC91P5JQG08=;
        b=BE6KaBczoQd9mT86EdM+bGupTTXnmNYSEkjTq23L9FIGF/KKTsRVuXHEhceKZY/KxZ
         WAaPD090rfiEzB2KgYyBGpvUUtBa6Uepm/l7xbekjSPX7tFTtgpb5b0Q4B2XW+aM9p+w
         EGMBFoGZdsDRHV/ejtuaK6X056SHpwKqtTIDZ+TxyWVZ0N6fPmmbFuDyAnmQstGlPfiu
         3XrB1/QyDHpZA/lJF5+7nJrlncGWo6FaeErzVHAazhK6JLC8tHGVjmfMGnN1s2O4M8fg
         nt1em3Cw3iRjXx3qrPd0jYSETyWykWlkbRQhwxiQPcLF39Gw+SCtY46kUFHDfDsTVncR
         fthQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530DktQ/wKXr5hAy0btcNrOq5v74I6BfzycGIC9Qg4ZLpfHgLcY1
	a/L5jW4DYZmqIfL4ofWJmBw=
X-Google-Smtp-Source: ABdhPJyAEqAV+s2iRWosThcj1zf46vL/mhKhNLX5x4/HpvH4gAwC8v6uymRhFIyoxscwy6bs2o8XLQ==
X-Received: by 2002:a9d:740b:: with SMTP id n11mr8745952otk.69.1630872247396;
        Sun, 05 Sep 2021 13:04:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:2143:: with SMTP id r3ls1237107otd.0.gmail; Sun, 05
 Sep 2021 13:04:07 -0700 (PDT)
X-Received: by 2002:a9d:222c:: with SMTP id o41mr8307058ota.100.1630872246969;
        Sun, 05 Sep 2021 13:04:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630872246; cv=none;
        d=google.com; s=arc-20160816;
        b=M3FBrGVFyIGNVq7FR11d+sG2cI/N5vM1vQ6XcwPy3tz53sG9RBIqu4+Dks71nMKaC6
         1agsYmh8Q5iliNabxNjCJjQE43f7d85XN2nwICpzf1yMhEbm3C7673NyzvR2VqKjnYM0
         RZc6G17ScU4imK/L/DZ6813tpBqm8fGd265UCeCewOzJQ3hxFrUjusg5v9ouYqGGWVJu
         LVqZG5YgB6XytQ37IJMLTLDGCXjMtJj4/GtTwNqZOYOHM73OGIMe2Co0wptcJ5j3aZYo
         wZOJpBDASjF3CqSHwni3096xZPPeI9uWFAMtYwLyxVoUfUhvPbF3/7qWr8ifI6s+HKCM
         E+4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:message-id:in-reply-to:date:mime-version;
        bh=u7MTmHe0EZ9aA9LzZAxZXm6GQj3ww9LG3NsEE4FMIzE=;
        b=p1VCNACA0QuGHUaEy/ogfo+xj3JAbJBfZZIUgEmEIHfdyfbmATlr6kw2CRH5ya1kR/
         KzKelLHjT4hVT0XqdOtxlftMyJ+H1eb6BXOuZMqwo8QjNCEhVF4XOVLTh+ecsfgiOR5h
         7SghPmmvwGvxS/2/NaDuRQkuP9Q5TcWl9CbKcn0XCI6S+Ti1UCtNIWfQh5f2+kIVlE5D
         wa6bUiG/UGBnf4OlmEFQkmpPAN8lQEIVGLMQw5pM17W9NYfhXUz70LHqFXG0cSPlG1Se
         GdVNSvrJk1AefGVUXVduztpGh4Qzm5C7NyKpVEJYIsjFqSN44bSP+MdwYjjTiZ4kvYbv
         7zPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of 3tii1yqkban8tzalbmmfsbqqje.hpphmfvtfsdpoufou.dpn@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.200 as permitted sender) smtp.mailfrom=3tiI1YQkbAN8TZaLBMMFSBQQJE.HPPHMFVTFSDPOUFOU.DPN@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
Received: from mail-il1-f200.google.com (mail-il1-f200.google.com. [209.85.166.200])
        by gmr-mx.google.com with ESMTPS id j26si659792ooj.0.2021.09.05.13.04.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 05 Sep 2021 13:04:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3tii1yqkban8tzalbmmfsbqqje.hpphmfvtfsdpoufou.dpn@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.200 as permitted sender) client-ip=209.85.166.200;
Received: by mail-il1-f200.google.com with SMTP id x3-20020a92de03000000b0022458d4e768so2804020ilm.2
        for <clang-built-linux@googlegroups.com>; Sun, 05 Sep 2021 13:04:06 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 2002:a6b:7b4b:: with SMTP id m11mr7043393iop.165.1630872246693;
 Sun, 05 Sep 2021 13:04:06 -0700 (PDT)
Date: Sun, 05 Sep 2021 13:04:06 -0700
In-Reply-To: <0000000000002c756105cb201ef1@google.com>
X-Google-Appengine-App-Id: s~syzkaller
Message-ID: <000000000000f032a605cb450801@google.com>
Subject: Re: [syzbot] WARNING: kmalloc bug in bpf_check
From: syzbot <syzbot+f3e749d4c662818ae439@syzkaller.appspotmail.com>
To: akpm@linux-foundation.org, andrii@kernel.org, ast@kernel.org, 
	bpf@vger.kernel.org, clang-built-linux@googlegroups.com, daniel@iogearbox.net, 
	davem@davemloft.net, eric.dumazet@gmail.com, hawk@kernel.org, 
	john.fastabend@gmail.com, kafai@fb.com, kpsingh@kernel.org, kuba@kernel.org, 
	linux-kernel@vger.kernel.org, linux-mm@kvack.org, nathan@kernel.org, 
	ndesaulniers@google.com, netdev@vger.kernel.org, songliubraving@fb.com, 
	syzkaller-bugs@googlegroups.com, torvalds@linux-foundation.org, w@1wt.eu, 
	yhs@fb.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: syzbot@syzkaller.appspotmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of 3tii1yqkban8tzalbmmfsbqqje.hpphmfvtfsdpoufou.dpn@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com
 designates 209.85.166.200 as permitted sender) smtp.mailfrom=3tiI1YQkbAN8TZaLBMMFSBQQJE.HPPHMFVTFSDPOUFOU.DPN@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
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

syzbot has bisected this issue to:

commit 7661809d493b426e979f39ab512e3adf41fbcc69
Author: Linus Torvalds <torvalds@linux-foundation.org>
Date:   Wed Jul 14 16:45:49 2021 +0000

    mm: don't allow oversized kvmalloc() calls

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=13136b83300000
start commit:   a9c9a6f741cd Merge tag 'scsi-misc' of git://git.kernel.org..
git tree:       upstream
final oops:     https://syzkaller.appspot.com/x/report.txt?x=10936b83300000
console output: https://syzkaller.appspot.com/x/log.txt?x=17136b83300000
kernel config:  https://syzkaller.appspot.com/x/.config?x=c84ed2c3f57ace
dashboard link: https://syzkaller.appspot.com/bug?extid=f3e749d4c662818ae439
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=11e4cdf5300000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=14ef3b33300000

Reported-by: syzbot+f3e749d4c662818ae439@syzkaller.appspotmail.com
Fixes: 7661809d493b ("mm: don't allow oversized kvmalloc() calls")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/000000000000f032a605cb450801%40google.com.
