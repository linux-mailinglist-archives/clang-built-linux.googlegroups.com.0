Return-Path: <clang-built-linux+bncBCQPF57GUQHBBVHLZH7AKGQEEPHOWSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id DD4242D6652
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Dec 2020 20:24:05 +0100 (CET)
Received: by mail-oo1-xc3d.google.com with SMTP id l191sf3127920ooc.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Dec 2020 11:24:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607628244; cv=pass;
        d=google.com; s=arc-20160816;
        b=MwWKWmSeVDFNTaLoF1kwtxE/D6qa4HIXck5OuUNWbjfkbrObIsk9oaIjAgxi2bNKaJ
         R77IKbsMrfQAjobvLuk9dREeJrHRCKr/M7DbAY6aL7+tz1J72Py25tAKZZUSioTLuxtW
         sSNo1DDuu5edYMqig7DsC42pz/OVv6pTI07/boAyNAdyHFgpSqiA1l7Crl5FvFLikpyG
         xhuphbDzP5NUC1S15WnW2tmLaFcegvHGhxMVyVtvMVg+Zm9WMFlevfYtEP+w9BlHBo9N
         XL744fV/l867mj6acvLXp71rMCyJavmyEvW6bQiIMzCMN4SnxB2F54EyLyhvaC1cs5Li
         O0Eg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:from:subject:message-id
         :in-reply-to:date:mime-version:sender:dkim-signature;
        bh=5t2xRX38xQRgmA8Z3jJAb9pmDJwNeM+4JSnGiCbidyI=;
        b=xaBIgmzotd8Be6BWicA3/bTJKmrUxkBlfaQ4qE9SLA8WhYmq3kB+4tcyYn9un/VL8f
         gmkbOPIg7ss4dDYVZMwCCDU9/OIzSy7wiK2IJABP0kKmcWqTn+bxwOoYwcjzabBGiWTB
         Qg2anZrYhwWSPBR+w0hw0Nl9MKhCuDdaTjVVn5s/dOc/MqQj7btOyGHrvbsKPySJpr7L
         dDuaB/yMvc4xByHCCHvfsgbZs6HLlde+CRoljfozz8jQdeJeitilkjnnz4giMiGEukWQ
         s0zJtLM8NShQdHcRmjI6vjrBiVZ3LB0f+WNzVfOh5+IK1pjkkmkTZvJS2wgudO4njuA9
         h5Dw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of 303xsxwkbaa46cdyozzs5o33wr.u22uzs86s5q217s17.q20@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.200 as permitted sender) smtp.mailfrom=303XSXwkbAA46CDyozzs5o33wr.u22uzs86s5q217s17.q20@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:date:in-reply-to:message-id:subject:from:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5t2xRX38xQRgmA8Z3jJAb9pmDJwNeM+4JSnGiCbidyI=;
        b=I6XZ06pJuZV7vGei3hmWpGa69bVy/2O9DQFF0HDoz7VT7VUhw/QODYZBAXoe/soRkK
         W5Jsn1Nh2YEqZ/7WTgdmV8IwxiV5hTB139un6WwHbBn+aYv28M0rvcWWFVOQZrFI9iEf
         CBXGuvP6rZZgaZmD7x3v7dXwzRxv3BD9VtsUSsCeLnYGEqcI3YPX9fFdlZ11nPFVmY+k
         VNktMgHHu2iDmSjXiq9fik4MmZEj25EHVtdPIgldR0NOoOxctGdncA7wGAUDoDr9cEZR
         Sp1f0H9fvS2E9SPusc07h7ZEusRz9rrNUEYcjHiHzhQrFHH/IGA693zaqPcKmUGTvrVV
         4nwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:in-reply-to:message-id
         :subject:from:to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5t2xRX38xQRgmA8Z3jJAb9pmDJwNeM+4JSnGiCbidyI=;
        b=QqvFqnN0nmoi+CfNTgHLPcyt0qbuON5KnyV3RFrC5weip1sPVYgil/Ml9TFCv3uNhY
         9HKngTrWP9H/U1S9pub48G5WgTfbGw9OrXoP1FtEo6CTiSpki2hbBQ7HsQXhyoL0cLh8
         SSinL8Ssfj+jndUXstmuJ495ZG9BaV7/0ILeTCJ1lHXg/t9226MDidBqi4eWRG45Jh5Q
         +Vyaw03hZ0oFME75L20GqYsZVI7sGfsxhjNIepM0U0HVgh1qHqRqlnTke0AngYNQ31Tl
         jpT1O8mey2lyiiJUg9IiNK/bZLp2TCPI/BMeI41LF2ppwipmFRfr2ryyGywUTsbfn2hV
         SrDw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533HtCvIsILZxKuVh6NTxNkyYM0PwUlz5j6VS5xA7CuH27wgDF27
	QjarUWLYK9vLvxIyVM8ESLI=
X-Google-Smtp-Source: ABdhPJw7Tci6IEn4AJZ5vYfzMhebA25/DxEz4jN8gkQqQ/yEgT2fqjt14Lz+ubSkv1z3IqAXG3LTIg==
X-Received: by 2002:aca:5e42:: with SMTP id s63mr3456942oib.96.1607628244651;
        Thu, 10 Dec 2020 11:24:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4542:: with SMTP id s63ls1638057oia.4.gmail; Thu, 10 Dec
 2020 11:24:04 -0800 (PST)
X-Received: by 2002:a54:4012:: with SMTP id x18mr6647967oie.20.1607628244114;
        Thu, 10 Dec 2020 11:24:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607628244; cv=none;
        d=google.com; s=arc-20160816;
        b=MIgOouvTAMHrc/R6MKW363jKHsrudfIc5uURYQZYwmhwDUlXvwWq/JvMf581pAwQRy
         zVSzFq6RFZAdFgimWT/DbH77Da2htvSskC6rnY6+qZgnhd7tsVu8LzJ0/nds7wbXRKzg
         ltH0zFyfDgsB0cgR3/1ef/euzCrudStnAfpPHTbcDistp9yhpv9/b3pgak9k9tbQiivn
         c7f2LrtN0ptSWZ+xL8L20Tbfxzkoyu4uW2GuUGGdv2Qu2EGVfz5oGDb2I3XhWWSI9Aua
         wfB4gKsOFbjJ7zCmL1mXIvEi/sUZrDSS7o0t5GF4O45vGPCBTnDraFREMeWSIfk3gUI8
         CG1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:message-id:in-reply-to:date:mime-version;
        bh=Xa0iQU8Q/C+YSjMiw9XJ96Kz4N4tah7/BH4NCXeOx4M=;
        b=J1wp6kTF5kWWI2bCeLEGvA/3zofPrLBEB3XK+b2+AMhlFuxzfzQokATDw2DRkpOTP4
         BWmA9IPpvFgRyOUOamuLkv7rKSTuSMUd2WQgrKJ3hxvb+VAyGMzMGf2Lo6UZF0x140QZ
         hy+nTsWRuGrCzBRKA2Yso1IsZZiRTE9g5Sd/XcebuXNVF+Z6FLyBrVfzDZl45pdXTSUj
         WSqB9n14O02jHTJCBA+5iUwQCJJ01w15oRX5YfZt9D3HmxqzVmZsBF10bQPY1ZJja8QV
         N7bs/J0/WQ/DDUh6B6VHmEDUVgEkaUtQp2znOnOJe/04f7WnmvG4xF7EAPbEQ4DrxaPI
         +HIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of 303xsxwkbaa46cdyozzs5o33wr.u22uzs86s5q217s17.q20@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.200 as permitted sender) smtp.mailfrom=303XSXwkbAA46CDyozzs5o33wr.u22uzs86s5q217s17.q20@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
Received: from mail-il1-f200.google.com (mail-il1-f200.google.com. [209.85.166.200])
        by gmr-mx.google.com with ESMTPS id e1si522698oti.2.2020.12.10.11.24.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Dec 2020 11:24:04 -0800 (PST)
Received-SPF: pass (google.com: domain of 303xsxwkbaa46cdyozzs5o33wr.u22uzs86s5q217s17.q20@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.200 as permitted sender) client-ip=209.85.166.200;
Received: by mail-il1-f200.google.com with SMTP id c72so5238096ila.1
        for <clang-built-linux@googlegroups.com>; Thu, 10 Dec 2020 11:24:04 -0800 (PST)
MIME-Version: 1.0
X-Received: by 2002:a92:d0c8:: with SMTP id y8mr10133578ila.46.1607628243790;
 Thu, 10 Dec 2020 11:24:03 -0800 (PST)
Date: Thu, 10 Dec 2020 11:24:03 -0800
In-Reply-To: <CACT4Y+a+ZwwEup7xgfsJth-=T-o-tYNHpVc0m4ePx0fj9LBHZw@mail.gmail.com>
X-Google-Appengine-App-Id: s~syzkaller
Message-ID: <00000000000066f16005b6211ed2@google.com>
Subject: Re: UBSAN: shift-out-of-bounds in ext4_fill_super
From: syzbot <syzbot+345b75652b1d24227443@syzkaller.appspotmail.com>
To: adilger.kernel@dilger.ca, clang-built-linux@googlegroups.com, 
	dvyukov@google.com, linux-ext4@vger.kernel.org, linux-kernel@vger.kernel.org, 
	natechancellor@gmail.com, ndesaulniers@google.com, 
	syzkaller-bugs@googlegroups.com, tytso@mit.edu
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: syzbot@syzkaller.appspotmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of 303xsxwkbaa46cdyozzs5o33wr.u22uzs86s5q217s17.q20@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com
 designates 209.85.166.200 as permitted sender) smtp.mailfrom=303XSXwkbAA46CDyozzs5o33wr.u22uzs86s5q217s17.q20@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
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

Reported-and-tested-by: syzbot+345b75652b1d24227443@syzkaller.appspotmail.com

Tested on:

commit:         e360ba58 ext4: fix a memory leak of ext4_free_data
git tree:       git://git.kernel.org/pub/scm/linux/kernel/git/tytso/ext4.git
kernel config:  https://syzkaller.appspot.com/x/.config?x=fe9725f8845d9fe6
dashboard link: https://syzkaller.appspot.com/bug?extid=345b75652b1d24227443
compiler:       gcc (GCC) 10.1.0-syz 20200507
patch:          https://syzkaller.appspot.com/x/patch.diff?x=1166cf17500000

Note: testing is done by a robot and is best-effort only.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/00000000000066f16005b6211ed2%40google.com.
