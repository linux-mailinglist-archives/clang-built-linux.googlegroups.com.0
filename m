Return-Path: <clang-built-linux+bncBCQPF57GUQHBBF6CQKEAMGQEN2HKIJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id A25603D8483
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 02:13:12 +0200 (CEST)
Received: by mail-ot1-x33e.google.com with SMTP id w4-20020a0568301444b0290405cba3beedsf78132otp.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 17:13:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627431191; cv=pass;
        d=google.com; s=arc-20160816;
        b=gOidZU/x48dRat9UnjVUpuvM8q6s/La3fG5juFIVkHhdYQ7u6rr+WmSgGSguWLOZxH
         JOkXgBFIMdfYCs6KDeqZhXO47VGMsL+ouXCnglInmuu7u1vADJqORAnnCJaBPcRgX14q
         LZ414U4RmHHWgFNyQoTbu4Vj6LjODMptQdI2NRQaoMKzMnAcRMjKP5cXNripgkQZ917l
         P6WxhIcira/M0iCifWj24GxtyKwbpsDkxRPJf4pdOvTg/vImf2Dajd55bxsgEG/RPMgb
         0UKiMH/ezNS99yWMKocRglatUHd5pDJGNYsKQsqN8SqkdmoyF+v03CGJET8XHIX8PVja
         Nv4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:from:subject:message-id
         :in-reply-to:date:mime-version:sender:dkim-signature;
        bh=tRQIrlSqtUntansAHWr4r7iVgu4wmUdm/CUvOdwSkfw=;
        b=m25jZ4TfruVaZZoccscQhaizNKCMbxpgF28MrxMF5nV9+EwKXRuyF7ajYVNDLTDIiI
         vkECMDJeFfrFgg9UPYbjg4Uzv32ZJSxWK5fuakEX2mEScU1rSpklY8i5nvDdvza07Y2o
         B+UD3ek/o1gE6+ljr5cpNEXZClBLhBhvk7FUeNLbFY865vp8Jd0T4X565fh+gaPoEUcq
         Xa4QOCDTfg3SLTgat2UmnKWS0aYkKMOi+E25r0+9El8Uy/phYg9zNQUSZ4qV+CO6VB7E
         LYfbhPGiAsfg0oxFSJ4v7F/wcYPLPBleAXWEfTDWX+jAlv6OSgMZj+XzCJMiZJbswrL2
         DGnQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of 3fqeayqkbagkzfgrhsslyhwwpk.nvvnslbzlyjvualua.jvt@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.200 as permitted sender) smtp.mailfrom=3FqEAYQkbAGkZfgRHSSLYHWWPK.NVVNSLbZLYJVUaLUa.JVT@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:date:in-reply-to:message-id:subject:from:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tRQIrlSqtUntansAHWr4r7iVgu4wmUdm/CUvOdwSkfw=;
        b=Q0yAyyOKJO8ch30nWqLW5pxT2l4f9ONkUGoTxmZiVsnTXo3uxrBNG0K+GQdwZAW9HW
         74IvOUe3Jd61m++dLpTiLpl2tAqQNjvn1vawA5x/WWhAt/8niAE9GFhyiYTXIE8QzD7v
         ISPcYsz18rTLt2cUAGSQvA+o978Obp/6qfp2bc9TBOpVkiCEWLSXJsjKIkepmTlxAIXz
         PfNMHawSRl8ZxuQ9iCMBfhEGT2TcUK1stoF2QuEvbcEay2rT1MI07UQqJxltdjs1rFCq
         d4ERnA6rbqgHWZUDpfHTshVJxFXKmg+2MhMxdAai73kiZCaDaXkgClSmCKEDAM35xXJE
         CKvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:in-reply-to:message-id
         :subject:from:to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tRQIrlSqtUntansAHWr4r7iVgu4wmUdm/CUvOdwSkfw=;
        b=iXWdiIMptshlfDXhgUJ/CFJb8LGHi02tzcSVDgO3yZtLKVktxX2+6vDnh3NAsmVqfN
         bVm24Aef9PicAD+LilNV8+VdANRc0p6Px5IciTKGXMceG4429H29atz0r3Gpj+agkx9+
         vTwU7TowCV/xzLp6gcdfJ3yRYEKLEJCarhcsOw8VM8FN0tPvjRmoqw2cXp0I/rpSJaI4
         hF1ubWVP45Xdekhclqf3iSF+J3baN4mAyqHmUee+ss6ale8tS8n+FsTe/G5KoG3fA4cz
         gdJ6qYHavxdW/ZNGIeyK0HpPQtm6+wv/QO/GKO+6Ycdfo2c0gof1/4iwDZzsKNzi/DxY
         y9wA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532BzZcWLMH3k6dsOHF/BgO/Scv1jeiZPswuv2Gex6wxt8pni/Ky
	DZS1ZvF5YJwS7ZcaXBTb9aQ=
X-Google-Smtp-Source: ABdhPJxWHnDpq1hszrXe1GVPxbIyz7eV2bzMnbmdBVk6c0CxCNJqlL00V+4KWLpyArScQ7qXHqoZWw==
X-Received: by 2002:a9d:ba3:: with SMTP id 32mr16941508oth.126.1627431191625;
        Tue, 27 Jul 2021 17:13:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7c1:: with SMTP id 59ls117314oto.8.gmail; Tue, 27 Jul
 2021 17:13:11 -0700 (PDT)
X-Received: by 2002:a05:6830:2786:: with SMTP id x6mr17562815otu.359.1627431191210;
        Tue, 27 Jul 2021 17:13:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627431191; cv=none;
        d=google.com; s=arc-20160816;
        b=cP3w36CK2LW4vINktgFHFgLbNfnXkrPHNHjL4NqeoG02cJ3oiZWk5XdduZHOPH9hzN
         +JVpchm9kBBWQMAEmvgh5OJv6lo8oI1Ko2nq6ikyleZtownJQtblYZuFViJyy9BrCTUd
         Ap3CDjerH+s/z4KR2JVQSitsEzVaSeRhxaoXGlX0KwDK+gm0xhb/AYhWxBFoPQQdTom6
         oZ/B7Knu8TTmooqwRHtzUWgn6BOn+gH+qD36Z09WSHm8aJBrOPSHD3VZ2/ucl2vNGLPa
         NPg2yJ0kDF6EV/wtlHAltKxPTP6+kcfiUR1z36/JfHY2JOI9xHIXYLoVCDw0cKlXtzGL
         WDLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:message-id:in-reply-to:date:mime-version;
        bh=+kXQhJa+fJj1oLGUaLeoaXrUy7DzmhQ5FyS3er5MIC8=;
        b=jY7db40lr1wKXHL69KKbiCad/QtV6RF4GYbz02S1wcBEto2lyM/ubUqDSDJOrdH3PD
         AYutRjL/vLzwXjFMSrUArT+QJZvum5fSXoUuXFmlEk7jCFdIkHKn9sQNI0ryLCplIlfD
         FrTm/L+r8mjcsLoeK0ri8Fihc1ANVpmY/4Zf3X9AyzjmbpiAkQOvvXnlhtQlN4TyirCk
         S8XwPOfgPx1QHGTaaQ+poyV0A9yYesnFUC4cGn92oHUsNAI5oMJDLej+6zgR9LNK12Hq
         cKGXG836RtJk0poYWuzRFKV1xpoO+LHGgYoTTZ+qwkxrjTpENq1S4Ca1V+aoMKCT4Jjc
         5JKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of 3fqeayqkbagkzfgrhsslyhwwpk.nvvnslbzlyjvualua.jvt@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.200 as permitted sender) smtp.mailfrom=3FqEAYQkbAGkZfgRHSSLYHWWPK.NVVNSLbZLYJVUaLUa.JVT@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
Received: from mail-il1-f200.google.com (mail-il1-f200.google.com. [209.85.166.200])
        by gmr-mx.google.com with ESMTPS id j26si525339ooj.0.2021.07.27.17.13.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 17:13:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3fqeayqkbagkzfgrhsslyhwwpk.nvvnslbzlyjvualua.jvt@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.200 as permitted sender) client-ip=209.85.166.200;
Received: by mail-il1-f200.google.com with SMTP id x16-20020a9206100000b02902166568c213so500058ilg.22
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 17:13:11 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 2002:a92:d912:: with SMTP id s18mr18841949iln.172.1627431190997;
 Tue, 27 Jul 2021 17:13:10 -0700 (PDT)
Date: Tue, 27 Jul 2021 17:13:10 -0700
In-Reply-To: <20210727203056.377e5758@gmail.com>
X-Google-Appengine-App-Id: s~syzkaller
Message-ID: <00000000000009346505c823da46@google.com>
Subject: Re: [syzbot] UBSAN: shift-out-of-bounds in xfrm_set_default
From: syzbot <syzbot+9cd5837a045bbee5b810@syzkaller.appspotmail.com>
To: clang-built-linux@googlegroups.com, davem@davemloft.net, 
	herbert@gondor.apana.org.au, kbuild-all@lists.01.org, kuba@kernel.org, 
	linux-kernel@vger.kernel.org, lkp@intel.com, netdev@vger.kernel.org, 
	paskripkin@gmail.com, steffen.klassert@secunet.com, 
	syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: syzbot@syzkaller.appspotmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of 3fqeayqkbagkzfgrhsslyhwwpk.nvvnslbzlyjvualua.jvt@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com
 designates 209.85.166.200 as permitted sender) smtp.mailfrom=3FqEAYQkbAGkZfgRHSSLYHWWPK.NVVNSLbZLYJVUaLUa.JVT@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
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

Reported-and-tested-by: syzbot+9cd5837a045bbee5b810@syzkaller.appspotmail.com

Tested on:

commit:         42d0b5f5 Add linux-next specific files for 20210727
git tree:       linux-next
kernel config:  https://syzkaller.appspot.com/x/.config?x=e5bd567a6f50f462
dashboard link: https://syzkaller.appspot.com/bug?extid=9cd5837a045bbee5b810
compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.1
patch:          https://syzkaller.appspot.com/x/patch.diff?x=1204e0dc300000

Note: testing is done by a robot and is best-effort only.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/00000000000009346505c823da46%40google.com.
