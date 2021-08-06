Return-Path: <clang-built-linux+bncBCQPF57GUQHBB5MWWSEAMGQEYBNUXYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 66C913E2858
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Aug 2021 12:14:15 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id u2-20020a170902e5c2b029012cb0f6543asf4407990plf.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Aug 2021 03:14:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628244854; cv=pass;
        d=google.com; s=arc-20160816;
        b=JmPk8VwVjve/d7w5/U5SrhL/ruVNjT31pW16MQbLJNFX90PIRoqXJHG89aOlsTeGNZ
         0AMc6y50qFYUz9fo8C5bxPMSDUgO/fkpen5K6WUcwN7KexKJQND7WlmfTd+N9AuqrNqM
         n2EyrUu6faz3XLvlZ8+i1l7uwoU3p7CMPqPoZWmhBedIzjRKVCsG7kq2qUIDP0UiYThC
         5JJToFIXO/QMUprEsxYEawcPryLKHa/xWnYRu5KcW8TKvaWqjzjdnKSh+jFPIO//6NpV
         dagXIf+Oy2JBI8SDcT9OBhRTBqkq8y+kr/lfWPpc0S27Lt9vLijJRRhic425cH2NZY76
         f+Sg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:from:subject:message-id
         :in-reply-to:date:mime-version:sender:dkim-signature;
        bh=MGU5rkyibO8oWLDP8B2t7IuvtCNlpVFi9qTuh6H0Dig=;
        b=cp3lCVwCklCISyoc+Ooqw7A9V7vrtPGythMwBdCg2tYaoGuaG+mqeDywI8GpkD3ewK
         KJOMlbWReRMI0iLsqX5PkXEdBauQXWrOTxi0TZ8tWbR0cECG3Z++PuT8uR2VCieGbKHc
         rgLOGTB292P90JN737AF4wYLHNjHZbnqjMmvGb9NLSu3n62hmLTlRgvO2tc3qskhaKp/
         XZRwk5f/onxgs7EVs4uPekJIDo2GorbWxXf3DYVOR3LZvj3wOOvuRKls4Sp/iHMkhu5y
         R1L0KIzIzZwEY4kuDPNNwNK9mnZorr4eF8B4vopmrB93iws4ze6o8d/hrJpn+Kh0ns8z
         hemg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of 3dasnyqkbam0bhi3t44xat881w.z77z4xdbxav76cx6c.v75@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.199 as permitted sender) smtp.mailfrom=3dAsNYQkbAM0BHI3t44xAt881w.z77z4xDBxAv76Cx6C.v75@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:date:in-reply-to:message-id:subject:from:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MGU5rkyibO8oWLDP8B2t7IuvtCNlpVFi9qTuh6H0Dig=;
        b=UfQcGzF9y5xrzebf0UZSnyKK8Li/2fG9CYBpVCwyH5yX5EZIUiMdb6oUBJgzwNcM8T
         cTMHoCyN3w67rhWMVPQII7Qh3R4vQPcwi3hG2ExSK/PWcWoeP1ayY7IoYWQ5EWNHMqOQ
         DIC2GxZcyTIxwNNFKHkprLoMamOs0etC2cUSdfb3amvEMZDnKzLAmXAMbDkKWaWNVR4r
         qBbp9Bz9gFMpFk32ucunOmBbqwE2CSg1167o93lmTe57JXEmuTaMqklsQS4sg2GAnHDf
         3aMOXdjXXeDuwdo3gsIu5GVa+6xCg5iXJ0ybbMikC3/X/5/5nMJmIyHczGGQOxz0S2o0
         WpQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:in-reply-to:message-id
         :subject:from:to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MGU5rkyibO8oWLDP8B2t7IuvtCNlpVFi9qTuh6H0Dig=;
        b=m3D11jC5T8t7T2BiqD+xbA8Zo/dFbi61D5mWfvoCSm9x8xou9FRDsFZcXNuzEehOHF
         cqZw6TaeE6kpVCNca13YMDXyp55RZwSoAe3zkax6r2I9GCdVr9KjQsbgHl7mjK2XQ2SA
         gT4wJRrjD8riMpHD2l4w2xsClHm3PZBOOcz06yM1WIq+u1FYP+hubdXs6c5Opptl0+hG
         iwoW3FQAGZEsE2k09FbADByWY4F81eOXJKV9Olp2zFGv+D01ifHMSE7qJHB7k0RvNEm4
         /bFNFHie7qaTA2ph18j6RtZQmmMTo0ru7kqUNgJ/axzKIdV7mT2OSDgcT4/Ge0Txzkq9
         aCuw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530iixOtGhj7BMYGU3tbQRK2AzvFDPl7quUmOcAaL762x9nrGbGV
	hTDbJYody7v++PhzJVVt8yI=
X-Google-Smtp-Source: ABdhPJwNGzXNkEKwXOsCpbT9r4DO2ptGPglIWOuLEoytBuNz+3k28tnLRrctKyXqvPQG6/jZNS3ipQ==
X-Received: by 2002:a63:5505:: with SMTP id j5mr90858pgb.250.1628244853683;
        Fri, 06 Aug 2021 03:14:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bb8f:: with SMTP id m15ls4185253pls.3.gmail; Fri, 06
 Aug 2021 03:14:13 -0700 (PDT)
X-Received: by 2002:a17:90b:3ec3:: with SMTP id rm3mr9300588pjb.7.1628244853031;
        Fri, 06 Aug 2021 03:14:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628244853; cv=none;
        d=google.com; s=arc-20160816;
        b=VavdEkPuX0EUSpVolgCXePU7oTtrqjikogcRuUrLV/nEUTbTO8fqFoG+5WcQKKT68O
         b/YqWmMMELx/lnRlEJJFm+OpI0aV7ZPby727f8z/00w6oVdv23xfW0hZFgvQn8QoU8rL
         Lb10YC+IyjUaru96MW6gOvzSF3t/tDibu3UVqPcAOtWIRu1lagTV/Rdj2U+99riW1Msn
         hs5KNMAyRmt2iYFYI8hSDHcevqdQz+Hs5xzJITqFOgyD2OBVEIkVsHgjzQFqMdABNGfP
         SsMjYYOc5pYF3PW3FFW2aaUeRNRFkfSz2UDGqx20jcIW3f7evll5a99/NliGfNzxOGWr
         ltgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:message-id:in-reply-to:date:mime-version;
        bh=Vpzob4HJVT0gsbEDKcUpjv1PhL52+wuvbx1JFOPGfCs=;
        b=vNvelDLmliN3ISGU+H4ZyRfAQ+Rv1P03ru7uF4AgSIak4ylLzbf7c9q+zXxvXD4e+a
         WVeECttOPXsYmdGF3adhMWhQzCNTgJzoDt6wVsAE7QUCuTglI/StG8YnbPRLOKTrxniE
         EREeBfnOlOWMEuP90FYflioexWQM6riiDwtdaA38tcwtNktylDtutZCDUBAhB/tA8CVc
         xH9+PNFmj3aMSX9MLWpNc09Z1/s8sQHjrM+h8alyCtDe5A0yqFeTjy7GcrA4UTOBwfDa
         29ShmEyhxpgnawXZQKdS0elRmtf9kJoGPJJ/l2COIlDR8QxR4d27Ku0xH+oFEw3fTFYn
         Stlw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of 3dasnyqkbam0bhi3t44xat881w.z77z4xdbxav76cx6c.v75@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.199 as permitted sender) smtp.mailfrom=3dAsNYQkbAM0BHI3t44xAt881w.z77z4xDBxAv76Cx6C.v75@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
Received: from mail-il1-f199.google.com (mail-il1-f199.google.com. [209.85.166.199])
        by gmr-mx.google.com with ESMTPS id c9si479930pfr.5.2021.08.06.03.14.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Aug 2021 03:14:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3dasnyqkbam0bhi3t44xat881w.z77z4xdbxav76cx6c.v75@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.199 as permitted sender) client-ip=209.85.166.199;
Received: by mail-il1-f199.google.com with SMTP id l4-20020a9270040000b02901bb78581beaso4334320ilc.12
        for <clang-built-linux@googlegroups.com>; Fri, 06 Aug 2021 03:14:13 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 2002:a92:c245:: with SMTP id k5mr60444ilo.143.1628244852406;
 Fri, 06 Aug 2021 03:14:12 -0700 (PDT)
Date: Fri, 06 Aug 2021 03:14:12 -0700
In-Reply-To: <daae3696-aed8-a0b6-9470-d76ab4901b7d@gmail.com>
X-Google-Appengine-App-Id: s~syzkaller
Message-ID: <00000000000008fde105c8e14c57@google.com>
Subject: Re: [syzbot] INFO: task hung in ext4_fill_super
From: syzbot <syzbot+c9ff4822a62eee994ea3@syzkaller.appspotmail.com>
To: adilger.kernel@dilger.ca, clang-built-linux@googlegroups.com, 
	linux-ext4@vger.kernel.org, linux-kernel@vger.kernel.org, nathan@kernel.org, 
	ndesaulniers@google.com, paskripkin@gmail.com, 
	syzkaller-bugs@googlegroups.com, tytso@mit.edu
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: syzbot@syzkaller.appspotmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of 3dasnyqkbam0bhi3t44xat881w.z77z4xdbxav76cx6c.v75@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com
 designates 209.85.166.199 as permitted sender) smtp.mailfrom=3dAsNYQkbAM0BHI3t44xAt881w.z77z4xDBxAv76Cx6C.v75@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
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

Hello,

syzbot has tested the proposed patch and the reproducer did not trigger any issue:

Reported-and-tested-by: syzbot+c9ff4822a62eee994ea3@syzkaller.appspotmail.com

Tested on:

commit:         902e7f37 Merge tag 'net-5.14-rc5' of git://git.kernel...
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=166c8f6532dd88df
dashboard link: https://syzkaller.appspot.com/bug?extid=c9ff4822a62eee994ea3
compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.1
patch:          https://syzkaller.appspot.com/x/patch.diff?x=12680c4e300000

Note: testing is done by a robot and is best-effort only.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/00000000000008fde105c8e14c57%40google.com.
