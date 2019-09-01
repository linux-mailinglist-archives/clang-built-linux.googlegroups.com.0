Return-Path: <clang-built-linux+bncBCQPF57GUQHBBBMZWDVQKGQEYR5MPOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F1BFA4B1C
	for <lists+clang-built-linux@lfdr.de>; Sun,  1 Sep 2019 20:23:03 +0200 (CEST)
Received: by mail-qt1-x83f.google.com with SMTP id i19sf13428188qtq.17
        for <lists+clang-built-linux@lfdr.de>; Sun, 01 Sep 2019 11:23:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567362182; cv=pass;
        d=google.com; s=arc-20160816;
        b=JOGbD0jbZU/kbUlrTMnYviFaaxqFRuEO34CnuWQT4CoSqkxUDtX60bi5u78Wzi7mes
         0ls4l0iGykOzjNXWXuxfXYOIxZxweN08zC+zSrQCnp7qu6wvDQ7PBjwGnw90BwnT9UOT
         cc0ZJn0k8QjI0zxPaS4hCT67BBWK3YZZbjqmA5fOT1HBHxKNTfSjfys9pPKcaiWrner9
         G2tOQtuQCsrgnjBQo+BFSGB7HuqqwkWVINdt9QpCwBxrbyQuN3dR6qcK3xaAt+oJVXfO
         8RIIsOxz7Tt+KIhcjtF+N1QVdWw8X171McWqszDN6dGcTDBfw1gVd8T827/h0UtCc7W9
         Ga+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:from:subject:message-id
         :in-reply-to:date:mime-version:sender:dkim-signature;
        bh=+PsCwomw7pzIkZ04g/36YmSHms3ivHFnlbs2RcitzcU=;
        b=Z0qIMgsLOnfShBqyAUDorcM95c84RQXcVPukPwxwnhXTv6WmUnatlilCmyE1RaZAQG
         K4dxXEBqzT27kD0DziMAn2x5VR9junXzq6Qs6BjMmqWb+ltaTMOivx5HVjUGfwiUcxBI
         vkuI46cFL+ssGXFFXtgvRkB4qMMQA05/iCsKG6QbKwZ8EGk2GDWjkZfhRUQ9py6emPaK
         qVL/sp/BIVbksqWFmH6+SlW13CwsE9ZYdhvB1R9KaeY1qRItsOY4UVUyfjGinCvZ1kQp
         spmgWur+gdHsMciHQ6uq3oO6jI+LLJIgtPjfJKyLDKPTdppEwBdHa+1zLIeY0d3jkcGx
         NbEw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of 3haxsxqkbad8tz0lbmmfsbqqje.hpphmfvtfsdpoufou.dpn@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.69 as permitted sender) smtp.mailfrom=3hAxsXQkbAD8tz0lbmmfsbqqje.hpphmfvtfsdpoufou.dpn@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:date:in-reply-to:message-id:subject:from:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+PsCwomw7pzIkZ04g/36YmSHms3ivHFnlbs2RcitzcU=;
        b=fg0ILHxHFjDAEqZ6Bv6MsrA7qq8msFN4YxUYLBEiIdJFeYqYvq1M26/lCi6zQn1Yyw
         gJkjuntVf8nMB3X1MMe8MIc9jOJRwVRfL4zs59C7AlZUylT7Jvyd5m6iQpbCD+jRHdMM
         vYI9mKgzyYbTo9tJh66E3gx1YtuZ1RN6UWPPDIYQokUvJQTlXnem3928SOa2AT5656uy
         wh26ct5vaRNiT9bdI4JPwuQdxpe5HpYmn4g2r6JWjI6NCjdsiM94GkLmqLHZey7oGKBS
         Z6dUKME50RFfhQ2PIxPPS2bzmmjs5Hke+BUxWbIcrB7EvJvu+SPJWn0l6g7+k0ahH0TN
         WyZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:in-reply-to:message-id
         :subject:from:to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+PsCwomw7pzIkZ04g/36YmSHms3ivHFnlbs2RcitzcU=;
        b=VVOaDff6tqp4iqAPt991B45N7afXxWdA82VSXSaqIaUSIlX4sEXfVc6sV7/ZpWInrk
         qPq1MGRnoLEuk63o/Wix6u4QjbzBUE5G8hepGEMOpEoiBRI3YWFny/NXI/7VAais7NmH
         Y9vUhNF7CEjAWIUr1QoK2IBAmnk8HYB5bEwgiozGH1qtqInEIRluGNXgeLzHwjHLa4GS
         toZr7b+w3peF6PCKF1kPYEQJre0zoHGCi0r23tvpAYna35appd7EyNGl9ZFbpLPGP3KO
         STsyAgeg2hzFV0vvVu1zT1H7b0uMYyhAGuZ7LR++OZV0MWoxLq988H1vlJn7ZIVmTpbX
         b6Yg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXcFHd+0XQCTSCVIsDb08B/n7txRtxaHmflM3nj3V0fyShjcy/e
	dkwukdKzDsOKSd4vKGXaIKQ=
X-Google-Smtp-Source: APXvYqybGXtnJjrXytHI1nAMOuZRnN9EPJ1GVpUt6/AWPvdum4rJAokNxMitpEF/CeqduzvNQ6hOIw==
X-Received: by 2002:ad4:54e3:: with SMTP id k3mr1448828qvx.9.1567362181903;
        Sun, 01 Sep 2019 11:23:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:c00a:: with SMTP id u10ls3348038qkk.3.gmail; Sun, 01 Sep
 2019 11:23:01 -0700 (PDT)
X-Received: by 2002:ae9:f506:: with SMTP id o6mr9069895qkg.368.1567362181627;
        Sun, 01 Sep 2019 11:23:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567362181; cv=none;
        d=google.com; s=arc-20160816;
        b=gWAkoblCdzRKjhiCv/r2R4teO6mE4vqN0DX4qVQyaltsSz01uVokUnk7DgtJU8gW4I
         Z+Ia427DyiAt61PNHolywXfEk8kmUESsMHCYUL1xSuXZtgICmbYdEjLCeUtYL0ffZiVD
         APzUhmf+GPZi+ZVOvqKVSwiY15DOpoAiO8v5TpNmclzEDv2bDyeO9YcCue+9pZNvPqZ/
         KozAGDBNIFHZsDK9U1nH+TqhPZlgEj0BONZb2awMgeWVOZoDYc8wBjuCabSKMQGreg9y
         Ggu48JP+OBaUbcmmgZ3OiFL2IJcT9apFNRXmTTxJS3Lkz79YDg6uo+I3EsyocfREKmWF
         2y5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:message-id:in-reply-to:date:mime-version;
        bh=nuF/NvQUPru9tAlC0mm8ctMiLuI0uuXct3/25gBy3VU=;
        b=lY2pKkh3h7RIaOhuN2/zj9JsWUcUbtP20v/dacGjHqQhzLjTP7yU9jef4Tqck5KMyZ
         xOnd5zSd3nmU6aRAPDLTpbvNHFDDf/f+ZjIMyZl2Iu0+G/9mbBLs2+eu8MxPid4fw0Z9
         61qYFM8JD8Z2EuFVEJGm3fLMG08mOAQ3foCWa+zKAwsGH7ua4F/dkvqspNeofXtg8lXy
         UutFVyusEnpNKOZ4iV26XMU4JZbI0MKL8RYdcS79xG2sYl0vuyUB8adAuvZZ27AlQaKj
         nyXel12NJgz4XdwNuqTYbWfTxPl5VbVpRXHZ7xRA+XtNmL6BCqw9MmYtLUAXH0Ga9Iu5
         olOg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of 3haxsxqkbad8tz0lbmmfsbqqje.hpphmfvtfsdpoufou.dpn@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.69 as permitted sender) smtp.mailfrom=3hAxsXQkbAD8tz0lbmmfsbqqje.hpphmfvtfsdpoufou.dpn@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
Received: from mail-io1-f69.google.com (mail-io1-f69.google.com. [209.85.166.69])
        by gmr-mx.google.com with ESMTPS id 37si732015qtv.2.2019.09.01.11.23.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 01 Sep 2019 11:23:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3haxsxqkbad8tz0lbmmfsbqqje.hpphmfvtfsdpoufou.dpn@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.69 as permitted sender) client-ip=209.85.166.69;
Received: by mail-io1-f69.google.com with SMTP id 18so16237346iof.2
        for <clang-built-linux@googlegroups.com>; Sun, 01 Sep 2019 11:23:01 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 2002:a5d:8599:: with SMTP id f25mr3677451ioj.265.1567362180985;
 Sun, 01 Sep 2019 11:23:00 -0700 (PDT)
Date: Sun, 01 Sep 2019 11:23:00 -0700
In-Reply-To: <000000000000b7a14105913fcca8@google.com>
X-Google-Appengine-App-Id: s~syzkaller
Message-ID: <000000000000083a86059181f20b@google.com>
Subject: Re: WARNING in __mark_chain_precision (2)
From: syzbot <syzbot+c8d66267fd2b5955287e@syzkaller.appspotmail.com>
To: allison@lohutok.net, arvid.brodin@alten.se, ast@kernel.org, 
	bpf@vger.kernel.org, clang-built-linux@googlegroups.com, daniel@iogearbox.net, 
	davem@davemloft.net, gregkh@linuxfoundation.org, hawk@kernel.org, 
	jakub.kicinski@netronome.com, jic23@kernel.org, john.fastabend@gmail.com, 
	kafai@fb.com, knaack.h@gmx.de, kstewart@linuxfoundation.org, lars@metafoo.de, 
	linus.walleij@linaro.org, linux-iio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, mchehab+samsung@kernel.org, 
	netdev@vger.kernel.org, nicolas.ferre@microchip.com, paulmck@linux.ibm.com, 
	pmeerw@pmeerw.net, rfontana@redhat.com, songliubraving@fb.com, 
	syzkaller-bugs@googlegroups.com, tglx@linutronix.de, 
	torvalds@linux-foundation.org, yhs@fb.com
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
X-Original-Sender: syzbot@syzkaller.appspotmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of 3haxsxqkbad8tz0lbmmfsbqqje.hpphmfvtfsdpoufou.dpn@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com
 designates 209.85.166.69 as permitted sender) smtp.mailfrom=3hAxsXQkbAD8tz0lbmmfsbqqje.hpphmfvtfsdpoufou.dpn@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
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

syzbot has bisected this bug to:

commit e786741ff1b52769b044b7f4407f39cd13ee5d2d
Author: Linus Torvalds <torvalds@linux-foundation.org>
Date:   Thu Jul 11 22:36:02 2019 +0000

     Merge tag 'staging-5.3-rc1' of  
git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=11958f12600000
start commit:   47ee6e86 selftests/bpf: remove wrong nhoff in flow dissect..
git tree:       bpf-next
final crash:    https://syzkaller.appspot.com/x/report.txt?x=13958f12600000
console output: https://syzkaller.appspot.com/x/log.txt?x=15958f12600000
kernel config:  https://syzkaller.appspot.com/x/.config?x=d4cf1ffb87d590d7
dashboard link: https://syzkaller.appspot.com/bug?extid=c8d66267fd2b5955287e
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=10d26ebc600000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=127805ca600000

Reported-by: syzbot+c8d66267fd2b5955287e@syzkaller.appspotmail.com
Fixes: e786741ff1b5 ("Merge tag 'staging-5.3-rc1' of  
git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/000000000000083a86059181f20b%40google.com.
