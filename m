Return-Path: <clang-built-linux+bncBCMIZB7QWENRBN6SZD7AKGQEF3D7GIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id EA8B92D5C7B
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Dec 2020 14:57:12 +0100 (CET)
Received: by mail-oi1-x240.google.com with SMTP id m65sf2495675oib.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Dec 2020 05:57:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607608631; cv=pass;
        d=google.com; s=arc-20160816;
        b=syLWJoazvpSQ6OScZzOJF+Fsee/Dj7zm2fWxYGKfMiBfRHSQCmbRMa+co5hS5fkNR8
         oX96vHDENShiMV94AwaLKcz8a7YQ+cSEjHQuulTjBqTkFgfIHCxbscVXlv/da/QhkBpy
         666xPR8AhcKeZjDc6B2xzvjAdV9ARocG5UNTat2/eP04Io4ezgO5ACoMd4rYRBEiNW80
         NEj3QOkFP5hcE3EiY6Y99xg2VCyHkP2w2baaRJTWIeZp3wh9SpxiZ5SZzi6Fkkwf7HfO
         qeiYEwChGVAERG6mN5vIbFpVbFc+GwTMiraUsRrZ66cDXbLWiZb8Qx6p6zbA7SY30M0+
         KaFw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=QX3jm4HR7fH+9+XOz9HiB7AfvaeQCIm+JZ01umqaEvw=;
        b=sMPwuO/NdxRxbHzhAUQqYPNPLoTt5X/ZkswrEPX8eo4poA2pTqsKHgxgqGKg/ewIZU
         NUFFvVoTdM9xRoUfrLmH18X1J9uH24PW3VLw4K04z5GTI2oTWzWgo/NOUCI3nvPS2ftE
         Bm3WFbP/sUWDLjBcv9yCsyrq8ZyY4uALcqqftLvfdXptkYyQb1LwxMPrZQonc1O3rjGx
         hUd9wzyms6KvtzPiJNwmqnnZQg+ZTYPLjqCTY5xqlXsG3QoZptyg3r6NyUGJ1SR0W2Fa
         j1lsuwtrd90UovQlSwDr1kaiTGx1lFDRVvDNF1EnM3OOAYYN3E2pDY7HN8vmgKJNhsi9
         XytQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ULeEqyb0;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::f41 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QX3jm4HR7fH+9+XOz9HiB7AfvaeQCIm+JZ01umqaEvw=;
        b=N5p1SfMqe3ymhc74JZtjKu3ARhXd8Ujf6sORRf8XK+IKbDYQn1iGGMBFM4gE9psFGg
         pj5rk/rOtQRE+JNsnVruEI7NLBwtxQXYsDayPwo8LOah9CPe8mPw9HkRg4dCy9mu0Qnr
         1Y0RB/9B446fwq1Y70z0O4+DEUq8SrxFarqmgshiTP/+aO4DNhH1BhOpipGxTPWzEqkM
         QgF6svm9mYNDudncjeItAytvzQYhUi3VFPx+rYCBYGl//SHV1bCEu9NgF1EqEarIkIl2
         R2inTLYjPa2YDJjqIlHQEJr2DpRouYc13RQfjYGmoAT4YqbnKamdc5J4+q72ZAN+MTw0
         nPfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QX3jm4HR7fH+9+XOz9HiB7AfvaeQCIm+JZ01umqaEvw=;
        b=jxehyeLsXxY/tNa0polC7wS21FlqmrIUOG4O0m3re3IkW4LQPgP77mn98Nv/21SsR+
         RpeFZoy91KhW6s1BNnEfy1Tg7ZMSqfKm/UsOzeUPzUjvmVCqTq+Jw4CBVEsKI+ZddiKr
         FA6VWwCAR6PFLJU4YoEHc1SuNCfYne9mgwJTsJWYFQIjtUFc/vxz7BqrXIOEUklYgQqV
         UvBQGTsA2d1KQzUBLKC2K0PN2ExzgFs1fsSYIvR5u0GuQhgpGpjZK7/LGaRZ51DDq8MQ
         WoqgfebNMX2/Zd8E4AZVF2lYYXPimP8R+2we74fFGVuZvHmUwGEzaFD6lb9W+ITm/V+z
         gjNA==
X-Gm-Message-State: AOAM531nUxqIkqXgYDLk5WMkNLR/q2E+9aXDWPzJ5Bt94MgdSfx+BAg6
	Lx150VPJE6tsVJKIpUFo0Fg=
X-Google-Smtp-Source: ABdhPJwfq3EbBnt+YWWjY/0AmA2YfIK7suCrH8qODqEYlXfRswTKz8/YDSXTWyvEsytwf7yY48gRJw==
X-Received: by 2002:aca:4257:: with SMTP id p84mr5477165oia.176.1607608631789;
        Thu, 10 Dec 2020 05:57:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1f59:: with SMTP id u25ls1519160oth.1.gmail; Thu,
 10 Dec 2020 05:57:11 -0800 (PST)
X-Received: by 2002:a9d:7ac2:: with SMTP id m2mr5809955otn.41.1607608631143;
        Thu, 10 Dec 2020 05:57:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607608631; cv=none;
        d=google.com; s=arc-20160816;
        b=AWuU2WMJkUyHJy1XCQJsKumgNiB+o3yFxT+fWbukp0LbqXqfbpQ1naSxP5MVr/qBS9
         vLZXVQaQRQZ90R/HVk0eRCTaAr1evzw0lAPKm2ub1GetYx9Ir2EmcByYCuQRTmzHd3sP
         Vdzjps2pHypHjXF68gjo39swm9SsCB1zvIZko4s+woJvBVuft5p9LF1FIdb/uq/f5BJK
         o4eD5qqkc/EsJe5AP8hlK4z3tunmY8YX2UV018DniTNKQbdA6vXHu8NLxWXfUMCNmqjJ
         JsYexBkBaBOMEElrNWE4Wz0KlhEAdYqq9nG+ofFCw859cuqvk4oM2Kr6t81O4PWvDBRr
         QP8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=KyrMMU0omj6NS8PnhNAq4zKjR5kYFuT9HRGwfp3GnV0=;
        b=F+8IOU06f+5G3TXqXsnQ6BYfzcQPuzKvcr7PDLekYROGc15OfThBc94jA8PFsPJ+2R
         dbUFnX4P2XF2TgdHZmk3cvNFOjxKU4ZXtvVi32lchct1hyQMr2zUHvreQMETUm6cVg4c
         yJ44oB8849odw9rIt93kg1AuAxqiMSjNLk3YprMBMV5kRim6eMzBzb+h215ZfUvoBWfp
         IE2vE1BhvTfKJU6ZRLfWIwdDCVPD+xZO7BmekwDO79uqUf1ZMpbf0YJBnh67l79wIKyF
         P3VL3bAx2+5Umf6W3O3ajRoOyG91LSigXL/FTb0TG7HTy0t4h5Np8m4Phh1rnzXmDPWv
         Gu5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ULeEqyb0;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::f41 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf41.google.com (mail-qv1-xf41.google.com. [2607:f8b0:4864:20::f41])
        by gmr-mx.google.com with ESMTPS id u25si328067oic.0.2020.12.10.05.57.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Dec 2020 05:57:11 -0800 (PST)
Received-SPF: pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::f41 as permitted sender) client-ip=2607:f8b0:4864:20::f41;
Received: by mail-qv1-xf41.google.com with SMTP id j13so2369662qvi.8
        for <clang-built-linux@googlegroups.com>; Thu, 10 Dec 2020 05:57:11 -0800 (PST)
X-Received: by 2002:a0c:d80e:: with SMTP id h14mr9359940qvj.13.1607608630272;
 Thu, 10 Dec 2020 05:57:10 -0800 (PST)
MIME-Version: 1.0
References: <20201210023638.GP52960@mit.edu> <00000000000024030c05b61412e6@google.com>
 <CACT4Y+bkaVq1RzONGuPJxu-pSyCSRrEs7xV0sa2n0oLNkicHQQ@mail.gmail.com>
In-Reply-To: <CACT4Y+bkaVq1RzONGuPJxu-pSyCSRrEs7xV0sa2n0oLNkicHQQ@mail.gmail.com>
From: "'Dmitry Vyukov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 10 Dec 2020 14:56:58 +0100
Message-ID: <CACT4Y+a+ZwwEup7xgfsJth-=T-o-tYNHpVc0m4ePx0fj9LBHZw@mail.gmail.com>
Subject: Re: UBSAN: shift-out-of-bounds in ext4_fill_super
To: syzbot <syzbot+345b75652b1d24227443@syzkaller.appspotmail.com>
Cc: Andreas Dilger <adilger.kernel@dilger.ca>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, linux-ext4@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, syzkaller-bugs <syzkaller-bugs@googlegroups.com>, 
	"Theodore Ts'o" <tytso@mit.edu>
Content-Type: multipart/mixed; boundary="0000000000005903b905b61c8d61"
X-Original-Sender: dvyukov@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ULeEqyb0;       spf=pass
 (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::f41
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

--0000000000005903b905b61c8d61
Content-Type: text/plain; charset="UTF-8"

On Thu, Dec 10, 2020 at 9:09 AM Dmitry Vyukov <dvyukov@google.com> wrote:
>
> On Thu, Dec 10, 2020 at 4:50 AM syzbot
> <syzbot+345b75652b1d24227443@syzkaller.appspotmail.com> wrote:
> >
> > Hello,
> >
> > syzbot tried to test the proposed patch but the build/boot failed:
> >
> > failed to checkout kernel repo git://git.kernel.org/pub/scm/linux/kernel/git/tytso/ext4.git on commit e360ba58d067a30a4e3e7d55ebdd919885a058d6: failed to run ["git" "fetch" "--tags" "d06f7b29746c7f0a52f349ff7fbf2a3f22d27cf8"]: exit status 1
> > From git://git.kernel.org/pub/scm/linux/kernel/git/tytso/ext4
> >  * [new branch]                bisect-test-ext4-035     -> d06f7b29746c7f0a52f349ff7fbf2a3f22d27cf8/bisect-test-ext4-035
> >  * [new branch]                bisect-test-generic-307  -> d06f7b29746c7f0a52f349ff7fbf2a3f22d27cf8/bisect-test-generic-307
> >  * [new branch]                dev                      -> d06f7b29746c7f0a52f349ff7fbf2a3f22d27cf8/dev
> >  * [new branch]                ext4-3.18                -> d06f7b29746c7f0a52f349ff7fbf2a3f22d27cf8/ext4-3.18
> >  * [new branch]                ext4-4.1                 -> d06f7b29746c7f0a52f349ff7fbf2a3f22d27cf8/ext4-4.1
> >  * [new branch]                ext4-4.4                 -> d06f7b29746c7f0a52f349ff7fbf2a3f22d27cf8/ext4-4.4
> >  * [new branch]                ext4-4.9                 -> d06f7b29746c7f0a52f349ff7fbf2a3f22d27cf8/ext4-4.9
> >  * [new branch]                ext4-dax                 -> d06f7b29746c7f0a52f349ff7fbf2a3f22d27cf8/ext4-dax
> >  * [new branch]                ext4-tools               -> d06f7b29746c7f0a52f349ff7fbf2a3f22d27cf8/ext4-tools
> >  * [new branch]                fix-bz-206443            -> d06f7b29746c7f0a52f349ff7fbf2a3f22d27cf8/fix-bz-206443
> >  * [new branch]                for-stable               -> d06f7b29746c7f0a52f349ff7fbf2a3f22d27cf8/for-stable
> >  * [new branch]                fsverity                 -> d06f7b29746c7f0a52f349ff7fbf2a3f22d27cf8/fsverity
> >  * [new branch]                lazy_journal             -> d06f7b29746c7f0a52f349ff7fbf2a3f22d27cf8/lazy_journal
> >  * [new branch]                master                   -> d06f7b29746c7f0a52f349ff7fbf2a3f22d27cf8/master
> >  * [new branch]                origin                   -> d06f7b29746c7f0a52f349ff7fbf2a3f22d27cf8/origin
> >  * [new branch]                pu                       -> d06f7b29746c7f0a52f349ff7fbf2a3f22d27cf8/pu
> >  * [new branch]                test                     -> d06f7b29746c7f0a52f349ff7fbf2a3f22d27cf8/test
> >  * [new tag]                   ext4-for-linus-5.8-rc1-2 -> ext4-for-linus-5.8-rc1-2
> >  ! [rejected]                  ext4_for_linus           -> ext4_for_linus  (would clobber existing tag)
>
> Interesting. First time I see this. Should syzkaller use 'git fetch
> --tags --force"?...
> StackOverflow suggests it should help:
> https://stackoverflow.com/questions/58031165/how-to-get-rid-of-would-clobber-existing-tag


I've added --force to fetches:
https://github.com/google/syzkaller/commit/9a72bc3440b65a01187ba4277b49d6bd821079cd
 and it should be deployed by now. Let's try again:

#syz test git://git.kernel.org/pub/scm/linux/kernel/git/tytso/ext4.git
e360ba58d067a30a4e3e7d55ebdd919885a058d6

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACT4Y%2Ba%2BZwwEup7xgfsJth-%3DT-o-tYNHpVc0m4ePx0fj9LBHZw%40mail.gmail.com.

--0000000000005903b905b61c8d61
Content-Type: application/octet-stream; name=patch
Content-Disposition: attachment; filename=patch
Content-Transfer-Encoding: base64
Content-ID: <f_kiiwnrjf0>
X-Attachment-Id: f_kiiwnrjf0

RnJvbSAzZDNiYzMwM2E4YThmNzEyM2NmNDg2ZjQ5ZmE5MDYwMTE2ZmExNDY1IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBUaGVvZG9yZSBUcydvIDx0eXRzb0BtaXQuZWR1PgpEYXRlOiBX
ZWQsIDkgRGVjIDIwMjAgMTU6NTk6MTEgLTA1MDAKU3ViamVjdDogW1BBVENIXSBleHQ0OiBjaGVj
ayBmb3IgaW52YWxpZCBibG9jayBzaXplIGVhcmx5IHdoZW4gbW91bnRpbmcgYSBmaWxlCiBzeXN0
ZW0KCkNoZWNrIGZvciB2YWxpZCBibG9jayBzaXplIGRpcmVjdGx5IGJ5IHZhbGlkYXRpbmcgc19s
b2dfYmxvY2tfc2l6ZTsgd2UKd2VyZSBkb2luZyB0aGlzIGluIHR3byBwbGFjZXMuICBGaXJzdCwg
YnkgY2FsY3VsYXRpbmcgYmxvY2tzaXplIHZpYQpCTE9DS19TSVpFIDw8IHNfbG9nX2Jsb2NrX3Np
emUsIGFuZCB0aGVuIGNoZWNraW5nIHRoYXQgdGhlIGJsb2Nrc2l6ZQp3YXMgdmFsaWQuICBBbmQg
dGhlbiBzZWNvbmRseSwgYnkgY2hlY2tpbmcgc19sb2dfYmxvY2tfc2l6ZSBkaXJlY3RseS4KClRo
ZSBmaXJzdCBjaGVjayBpcyBub3QgcmVsaWFibGUsIGFuZCBjYW4gdHJpZ2dlciBhbiBVQlNBTiB3
YXJuaW5nIGlmCnNfbG9nX2Jsb2NrX3NpemUgb24gYSBtYWxpY2lvdXNseSBjb3JydXB0ZWQgc3Vw
ZXJibG9jayBpcyBncmVhdGVyIHRoYW4KMjIuICBUaGlzIGlzIGhhcm1sZXNzLCBzaW5jZSB0aGUg
c2Vjb25kIHRlc3Qgd2lsbCBjb3JyZWN0bHkgcmVqZWN0IHRoZQptYWxpY2lvdXNseSBmdXp6ZWQg
ZmlsZSBzeXN0ZW0sIGJ1dCB0byBtYWtlIHN5emJvdCBzaHV0IHVwLCBhbmQKYmVjYXVzZSB0aGUg
dHdvIGNoZWNrcyBhcmUgZHVwbGljYXRpdmUgaW4gYW55IGNhc2UsIGRlbGV0ZSB0aGUKYmxvY2tz
aXplIGNoZWNrLCBhbmQgbW92ZSB0aGUgc19sb2dfYmxvY2tfc2l6ZSBlYXJsaWVyIGluCmV4dDRf
ZmlsbF9zdXBlcigpLgoKU2lnbmVkLW9mZi1ieTogVGhlb2RvcmUgVHMnbyA8dHl0c29AbWl0LmVk
dT4KUmVwb3J0ZWQtYnk6IHN5emJvdCszNDViNzU2NTJiMWQyNDIyNzQ0M0BzeXprYWxsZXIuYXBw
c3BvdG1haWwuY29tCi0tLQogZnMvZXh0NC9zdXBlci5jIHwgNDAgKysrKysrKysrKysrKysrKy0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDE2IGluc2VydGlvbnMoKyks
IDI0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2ZzL2V4dDQvc3VwZXIuYyBiL2ZzL2V4dDQv
c3VwZXIuYwppbmRleCBmODYyMjBhOGRmNTAuLjRhMTZiYmYwNDMyYyAxMDA2NDQKLS0tIGEvZnMv
ZXh0NC9zdXBlci5jCisrKyBiL2ZzL2V4dDQvc3VwZXIuYwpAQCAtNDIwMiwxOCArNDIwMiwyNSBA
QCBzdGF0aWMgaW50IGV4dDRfZmlsbF9zdXBlcihzdHJ1Y3Qgc3VwZXJfYmxvY2sgKnNiLCB2b2lk
ICpkYXRhLCBpbnQgc2lsZW50KQogCSAqLwogCXNiaS0+c19saV93YWl0X211bHQgPSBFWFQ0X0RF
Rl9MSV9XQUlUX01VTFQ7CiAKLQlibG9ja3NpemUgPSBCTE9DS19TSVpFIDw8IGxlMzJfdG9fY3B1
KGVzLT5zX2xvZ19ibG9ja19zaXplKTsKLQotCWlmIChibG9ja3NpemUgPT0gUEFHRV9TSVpFKQot
CQlzZXRfb3B0KHNiLCBESU9SRUFEX05PTE9DSyk7Ci0KLQlpZiAoYmxvY2tzaXplIDwgRVhUNF9N
SU5fQkxPQ0tfU0laRSB8fAotCSAgICBibG9ja3NpemUgPiBFWFQ0X01BWF9CTE9DS19TSVpFKSB7
CisJaWYgKGxlMzJfdG9fY3B1KGVzLT5zX2xvZ19ibG9ja19zaXplKSA+CisJICAgIChFWFQ0X01B
WF9CTE9DS19MT0dfU0laRSAtIEVYVDRfTUlOX0JMT0NLX0xPR19TSVpFKSkgewogCQlleHQ0X21z
ZyhzYiwgS0VSTl9FUlIsCi0JCSAgICAgICAiVW5zdXBwb3J0ZWQgZmlsZXN5c3RlbSBibG9ja3Np
emUgJWQgKCVkIGxvZ19ibG9ja19zaXplKSIsCi0JCQkgYmxvY2tzaXplLCBsZTMyX3RvX2NwdShl
cy0+c19sb2dfYmxvY2tfc2l6ZSkpOworCQkJICJJbnZhbGlkIGxvZyBibG9jayBzaXplOiAldSIs
CisJCQkgbGUzMl90b19jcHUoZXMtPnNfbG9nX2Jsb2NrX3NpemUpKTsKIAkJZ290byBmYWlsZWRf
bW91bnQ7CiAJfQorCWlmIChsZTMyX3RvX2NwdShlcy0+c19sb2dfY2x1c3Rlcl9zaXplKSA+CisJ
ICAgIChFWFQ0X01BWF9DTFVTVEVSX0xPR19TSVpFIC0gRVhUNF9NSU5fQkxPQ0tfTE9HX1NJWkUp
KSB7CisJCWV4dDRfbXNnKHNiLCBLRVJOX0VSUiwKKwkJCSAiSW52YWxpZCBsb2cgY2x1c3RlciBz
aXplOiAldSIsCisJCQkgbGUzMl90b19jcHUoZXMtPnNfbG9nX2NsdXN0ZXJfc2l6ZSkpOworCQln
b3RvIGZhaWxlZF9tb3VudDsKKwl9CisKKwlibG9ja3NpemUgPSBFWFQ0X01JTl9CTE9DS19TSVpF
IDw8IGxlMzJfdG9fY3B1KGVzLT5zX2xvZ19ibG9ja19zaXplKTsKKworCWlmIChibG9ja3NpemUg
PT0gUEFHRV9TSVpFKQorCQlzZXRfb3B0KHNiLCBESU9SRUFEX05PTE9DSyk7CiAKIAlpZiAobGUz
Ml90b19jcHUoZXMtPnNfcmV2X2xldmVsKSA9PSBFWFQ0X0dPT0RfT0xEX1JFVikgewogCQlzYmkt
PnNfaW5vZGVfc2l6ZSA9IEVYVDRfR09PRF9PTERfSU5PREVfU0laRTsKQEAgLTQ0MzIsMjEgKzQ0
MzksNiBAQCBzdGF0aWMgaW50IGV4dDRfZmlsbF9zdXBlcihzdHJ1Y3Qgc3VwZXJfYmxvY2sgKnNi
LCB2b2lkICpkYXRhLCBpbnQgc2lsZW50KQogCWlmICghZXh0NF9mZWF0dXJlX3NldF9vayhzYiwg
KHNiX3Jkb25seShzYikpKSkKIAkJZ290byBmYWlsZWRfbW91bnQ7CiAKLQlpZiAobGUzMl90b19j
cHUoZXMtPnNfbG9nX2Jsb2NrX3NpemUpID4KLQkgICAgKEVYVDRfTUFYX0JMT0NLX0xPR19TSVpF
IC0gRVhUNF9NSU5fQkxPQ0tfTE9HX1NJWkUpKSB7Ci0JCWV4dDRfbXNnKHNiLCBLRVJOX0VSUiwK
LQkJCSAiSW52YWxpZCBsb2cgYmxvY2sgc2l6ZTogJXUiLAotCQkJIGxlMzJfdG9fY3B1KGVzLT5z
X2xvZ19ibG9ja19zaXplKSk7Ci0JCWdvdG8gZmFpbGVkX21vdW50OwotCX0KLQlpZiAobGUzMl90
b19jcHUoZXMtPnNfbG9nX2NsdXN0ZXJfc2l6ZSkgPgotCSAgICAoRVhUNF9NQVhfQ0xVU1RFUl9M
T0dfU0laRSAtIEVYVDRfTUlOX0JMT0NLX0xPR19TSVpFKSkgewotCQlleHQ0X21zZyhzYiwgS0VS
Tl9FUlIsCi0JCQkgIkludmFsaWQgbG9nIGNsdXN0ZXIgc2l6ZTogJXUiLAotCQkJIGxlMzJfdG9f
Y3B1KGVzLT5zX2xvZ19jbHVzdGVyX3NpemUpKTsKLQkJZ290byBmYWlsZWRfbW91bnQ7Ci0JfQot
CiAJaWYgKGxlMTZfdG9fY3B1KHNiaS0+c19lcy0+c19yZXNlcnZlZF9nZHRfYmxvY2tzKSA+IChi
bG9ja3NpemUgLyA0KSkgewogCQlleHQ0X21zZyhzYiwgS0VSTl9FUlIsCiAJCQkgIk51bWJlciBv
ZiByZXNlcnZlZCBHRFQgYmxvY2tzIGluc2FuZWx5IGxhcmdlOiAlZCIsCg==
--0000000000005903b905b61c8d61--
