Return-Path: <clang-built-linux+bncBCQPF57GUQHBB3FVY37AKGQEDTZRBUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 002A02D51EF
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Dec 2020 04:50:05 +0100 (CET)
Received: by mail-pf1-x43a.google.com with SMTP id f3sf2619596pfa.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Dec 2020 19:50:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607572204; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ph2jJ8pv4I9VE9gOVShpHxEbYIuPP/Qoc3INgLlnFp4rSC6X3kE4ZQlGL+UV0+zzqv
         uFtxMkpKlnuUVcaUpl4ZgkguzC3t4jV0jyFAloU6jOz6rFSNBKNw8l/5pBJkp7BNrBc9
         gQkm291Ta8yO93C3tK024dmNWNyzt9Ca8+YmGpTFd9Q6kTpaps4Kdii7DRoy1qzzrRMB
         N6aQ4GvvdbGqskCmCOZQhhl3d0xcP4pprz6tmdrH6w7PKxDJOrrXG4qnXzAZ3Isk2a40
         FonWt9sFBSib4OJSNt13fDzYsDgtnZS4jOTyVNCTdwJNKx5YNzOF+Cgqcp53kmHUM2P3
         X07Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:from:subject:message-id
         :in-reply-to:date:mime-version:sender:dkim-signature;
        bh=R8tjUiDmiXSE7j87RtqSQrR3/lvUlJ/8hlPl+txUxgU=;
        b=pQ0J31XHmwnu3G/LbLkiEsU08SZZvh8on+L6AK/OuGoEDZPcX+vR7vNhZkKhQEUdwA
         yW20OS0DRX9XhKzO/c22nMqhFmPGEm8W4s4SBOLaG8yrB/bNX/ahTdPTirQMR5o2TQ1v
         MSTyaI71caQ54xD4ymMfuw5MsP2xgXW8NDGTPtqwPPxbF1NlAswo+JbrsKMYAXW6gCp6
         zBlC3IOfHwcFWGk7CeAGBTnVXEgttuXorWcxKmo6xDjBltTe4hKjel/QFRC320iM0tt+
         5QTtD9fRwQhwRQVhoAsOeOgN/bs3K1GdLZ/vqDxtXXlSyIGowthGDOVYCYMzcAK4kXX1
         7QPQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of 365rrxwkbagwcijukvvobkzzsn.qyyqvoecobmyxdoxd.myw@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.198 as permitted sender) smtp.mailfrom=365rRXwkbAGwcijUKVVObKZZSN.QYYQVOecObMYXdOXd.MYW@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:date:in-reply-to:message-id:subject:from:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R8tjUiDmiXSE7j87RtqSQrR3/lvUlJ/8hlPl+txUxgU=;
        b=exaG9k8nLR5QhqXUZoo6/zZncBPEzaLqiP/932M4zq95GKGpG7gHm4CAiYu2OgK7I3
         i7574s/H4ofTkT/QMjXE5t3aQP9wbRzBkfxT/0xEfxu8lHLVYM9gytJt8BKkg75uPMzJ
         BGwBQJUk4r3uGWLhH7Ezx8Mjlt6cGjpq6Q7g2UcPKakGU67WA+5tHEGz8r0RFJBoPdXx
         xVLykotE8PG3gsIk1mWJupYeWfJzlgKHb5PLshKVoGCFFNMF2bPe1iwTNB56fRPS5/cX
         LWPmiPH/pEqEZJbaZt8gygdtSUsysVZVcAdyNWq5TT5Opdkj8PUW/wccwD020pPGXacp
         fodw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:in-reply-to:message-id
         :subject:from:to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=R8tjUiDmiXSE7j87RtqSQrR3/lvUlJ/8hlPl+txUxgU=;
        b=IV/8Tr4fo8k9b1owzCQ8sEa6syyQgN8WsXKKqJ5YjgU2CvLfH2BDcuftY/Y6LvHOWO
         Z8lDoclTMqMYa9VOfqRF6sqR6mqr72mjp9LCEVrz2NYCjSvB/B7KJhMm9AOwlDlgSH5i
         icweDvjeRMIjvMCoxxzz7Ssxiig2/YBXwHkD0WIl8rjAhdISYkIExrpchE//rXP/0Jxl
         Vn5uRiWuHxPiu41QNM2YlnfcJM4ZURoJai55HEWcElAupuhmQUhNtNDwntGlP/+6baIH
         W86riAXSJPNuq2C6pT+Ha2n8SREuE2s21TIUQrmLaKkW/4p49VipoSh1tq5EVXpRhmOh
         g+mQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531IQULhLtIrf7v6ZTJobhMk94Fo47GhPBh1FaXdbmLAGMrqvpI0
	o/3XJ4S3x/4qHV9lJPe3FQQ=
X-Google-Smtp-Source: ABdhPJwVni3zNEXZ8PGUxVxI2+fmNJ+Rm6Sj9K0upn1VC+w0m/Jznn45I8ufBRCnFjVrMN2IYHpnGA==
X-Received: by 2002:a17:902:7b93:b029:db:d2d5:fe0e with SMTP id w19-20020a1709027b93b02900dbd2d5fe0emr3977740pll.17.1607572204757;
        Wed, 09 Dec 2020 19:50:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:174c:: with SMTP id 12ls1543742pgx.2.gmail; Wed, 09 Dec
 2020 19:50:04 -0800 (PST)
X-Received: by 2002:a63:1122:: with SMTP id g34mr4871313pgl.437.1607572203886;
        Wed, 09 Dec 2020 19:50:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607572203; cv=none;
        d=google.com; s=arc-20160816;
        b=a/Njs83LsvDOzb1U2YpcZtQC5vlpL+5rXEfAagQsLW8+6ho8lxMxSAxdmfcNNZmRDy
         4zasRJyp+IaFpSPbFSaREQ2Ttaod5QEuROllQ10oPwwUie4Aof+tm75L52d9tptVQg5o
         w721GupF3JOsVgw9Wo+urzJ4qItdraexyIhZlIdZZIMEnAd1kkuO99h5PMAfuxhbpIGU
         /j4SpUvkabYxer86KhDJROHPRb74vpDpqhLq8jvRJN2+fXKiSTxVnShUxqgd3f8kd2Zl
         9GUlQoUYrD7nbwR1JDU1C+tSbEh0LEdcn5ZxXa9qioRkGd09KNTm9jlq4UlL6hMNWPLm
         jToQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:message-id:in-reply-to:date:mime-version;
        bh=0cTgBqiGrBDRYHQY4vsFsGVcfdNZ3CTtIGa2AjXRHQM=;
        b=xD71Wokf7AS4qPFV7xAfIGSX3i5sdn231ErtYwcrLDjuTx53vopBE7ORPgBD1Z+cLS
         Sw9r96CPzoxvx5CETp5+gn0ROCSZd4tg50lEJ7Xcl1mRau5g8dEB6bjWeRGJiy9jw2im
         RNhfMgSpd+rNQP8+c6cSl0kWyfoJ/XoV7cWBBsl5S9Njhbm5l/5yJ2SzVtrcu7OakqOo
         hR+IWA1WApeEVyDw7JuKy2/aQlytS1mUGQu237XOMSb9kQKoSaoa1qgLmPHjMQMY+6tV
         Ga1gmh05M+VyjNsCn+PqUFwA8C+aOTsnUKJLpyx3J2DV3jDZXnQMlqOFV5jqdzBbHc6C
         537g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of 365rrxwkbagwcijukvvobkzzsn.qyyqvoecobmyxdoxd.myw@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.198 as permitted sender) smtp.mailfrom=365rRXwkbAGwcijUKVVObKZZSN.QYYQVOecObMYXdOXd.MYW@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
Received: from mail-il1-f198.google.com (mail-il1-f198.google.com. [209.85.166.198])
        by gmr-mx.google.com with ESMTPS id q18si321274pgv.5.2020.12.09.19.50.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Dec 2020 19:50:03 -0800 (PST)
Received-SPF: pass (google.com: domain of 365rrxwkbagwcijukvvobkzzsn.qyyqvoecobmyxdoxd.myw@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.198 as permitted sender) client-ip=209.85.166.198;
Received: by mail-il1-f198.google.com with SMTP id j20so3262448ilk.0
        for <clang-built-linux@googlegroups.com>; Wed, 09 Dec 2020 19:50:03 -0800 (PST)
MIME-Version: 1.0
X-Received: by 2002:a05:6638:e8c:: with SMTP id p12mr7286833jas.112.1607572203501;
 Wed, 09 Dec 2020 19:50:03 -0800 (PST)
Date: Wed, 09 Dec 2020 19:50:03 -0800
In-Reply-To: <20201210023638.GP52960@mit.edu>
X-Google-Appengine-App-Id: s~syzkaller
Message-ID: <00000000000024030c05b61412e6@google.com>
Subject: Re: UBSAN: shift-out-of-bounds in ext4_fill_super
From: syzbot <syzbot+345b75652b1d24227443@syzkaller.appspotmail.com>
To: adilger.kernel@dilger.ca, clang-built-linux@googlegroups.com, 
	linux-ext4@vger.kernel.org, linux-kernel@vger.kernel.org, 
	natechancellor@gmail.com, ndesaulniers@google.com, 
	syzkaller-bugs@googlegroups.com, tytso@mit.edu
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: syzbot@syzkaller.appspotmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of 365rrxwkbagwcijukvvobkzzsn.qyyqvoecobmyxdoxd.myw@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com
 designates 209.85.166.198 as permitted sender) smtp.mailfrom=365rRXwkbAGwcijUKVVObKZZSN.QYYQVOecObMYXdOXd.MYW@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
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

syzbot tried to test the proposed patch but the build/boot failed:

failed to checkout kernel repo git://git.kernel.org/pub/scm/linux/kernel/git/tytso/ext4.git on commit e360ba58d067a30a4e3e7d55ebdd919885a058d6: failed to run ["git" "fetch" "--tags" "d06f7b29746c7f0a52f349ff7fbf2a3f22d27cf8"]: exit status 1
From git://git.kernel.org/pub/scm/linux/kernel/git/tytso/ext4
 * [new branch]                bisect-test-ext4-035     -> d06f7b29746c7f0a52f349ff7fbf2a3f22d27cf8/bisect-test-ext4-035
 * [new branch]                bisect-test-generic-307  -> d06f7b29746c7f0a52f349ff7fbf2a3f22d27cf8/bisect-test-generic-307
 * [new branch]                dev                      -> d06f7b29746c7f0a52f349ff7fbf2a3f22d27cf8/dev
 * [new branch]                ext4-3.18                -> d06f7b29746c7f0a52f349ff7fbf2a3f22d27cf8/ext4-3.18
 * [new branch]                ext4-4.1                 -> d06f7b29746c7f0a52f349ff7fbf2a3f22d27cf8/ext4-4.1
 * [new branch]                ext4-4.4                 -> d06f7b29746c7f0a52f349ff7fbf2a3f22d27cf8/ext4-4.4
 * [new branch]                ext4-4.9                 -> d06f7b29746c7f0a52f349ff7fbf2a3f22d27cf8/ext4-4.9
 * [new branch]                ext4-dax                 -> d06f7b29746c7f0a52f349ff7fbf2a3f22d27cf8/ext4-dax
 * [new branch]                ext4-tools               -> d06f7b29746c7f0a52f349ff7fbf2a3f22d27cf8/ext4-tools
 * [new branch]                fix-bz-206443            -> d06f7b29746c7f0a52f349ff7fbf2a3f22d27cf8/fix-bz-206443
 * [new branch]                for-stable               -> d06f7b29746c7f0a52f349ff7fbf2a3f22d27cf8/for-stable
 * [new branch]                fsverity                 -> d06f7b29746c7f0a52f349ff7fbf2a3f22d27cf8/fsverity
 * [new branch]                lazy_journal             -> d06f7b29746c7f0a52f349ff7fbf2a3f22d27cf8/lazy_journal
 * [new branch]                master                   -> d06f7b29746c7f0a52f349ff7fbf2a3f22d27cf8/master
 * [new branch]                origin                   -> d06f7b29746c7f0a52f349ff7fbf2a3f22d27cf8/origin
 * [new branch]                pu                       -> d06f7b29746c7f0a52f349ff7fbf2a3f22d27cf8/pu
 * [new branch]                test                     -> d06f7b29746c7f0a52f349ff7fbf2a3f22d27cf8/test
 * [new tag]                   ext4-for-linus-5.8-rc1-2 -> ext4-for-linus-5.8-rc1-2
 ! [rejected]                  ext4_for_linus           -> ext4_for_linus  (would clobber existing tag)
 * [new tag]                   ext4_for_linus_bugfixes  -> ext4_for_linus_bugfixes
 * [new tag]                   ext4_for_linus_cleanups  -> ext4_for_linus_cleanups
 * [new tag]                   ext4_for_linus_fixes     -> ext4_for_linus_fixes
 * [new tag]                   ext4_for_linus_fixes2    -> ext4_for_linus_fixes2



Tested on:

commit:         [unknown 
git tree:       git://git.kernel.org/pub/scm/linux/kernel/git/tytso/ext4.git e360ba58d067a30a4e3e7d55ebdd919885a058d6
dashboard link: https://syzkaller.appspot.com/bug?extid=345b75652b1d24227443
compiler:       gcc (GCC) 10.1.0-syz 20200507
patch:          https://syzkaller.appspot.com/x/patch.diff?x=1499c287500000

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/00000000000024030c05b61412e6%40google.com.
