Return-Path: <clang-built-linux+bncBCQPF57GUQHBB5GEUONQMGQEKCIAXMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EEB161F11E
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Nov 2022 11:48:22 +0100 (CET)
Received: by mail-pl1-x639.google.com with SMTP id d18-20020a170902ced200b001871dab2d59sf8956126plg.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Nov 2022 02:48:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1667818100; cv=pass;
        d=google.com; s=arc-20160816;
        b=XLNBgMXQRci3Qk5UP8WcqEBL2dksUAgUISnBoY6J0UaaIJPA92fGRnhJvEivKmInbZ
         wcIxBNn2iC5RhxmuZFEsrfG6Vv9PoZhdz8UNFc8Y+JSv+vpuQcAAe56/Xv23wnPL2NNb
         yJ+/VDrxyX4GAiYYBjHw1UhKrKUGr+lamZnFdhlG0Fv/x9IsV1zYqrapVLbMgeOSee9Z
         1ua+LJjxmsdHzeGX2fbe4QXuQhdkljKv6ZsS5ErSUMyaA7jANIFRYyok/KKjdgCFj/CV
         CCG+9U3Q/AAhoMCOai8lCaq07gtGom8vkmAxqMINXeisXDvvXbkFDHNuBYzsCbvbWbXL
         IDZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:from:subject:message-id
         :in-reply-to:date:mime-version:sender:dkim-signature;
        bh=RbcIWrtkEoqQFQxt6gqYTmnrJbD7nyuU8UttLtqFJ3g=;
        b=QEuL8I+eQ6X2gUuvSvIjGT/jzM4Lm9K7IAg0nyeyL7LxW+MdFWXBA1j/U3H5tzbS+0
         MIB7GlVCgDe2HAQuw3ZliFViW36KfMmdPzX2mnEwmXa4E8nO/3HLOvYBMA0yVEazYHVR
         ySHpz2Bj5dHQJC1Mw5A/aHkHWBuiHqvi6ORi2WUDK4/+FqNiOzsav0G9QNDk06AjYdQe
         tg/Fq9zFVJrYgFCcXjknPDo4RFDGNUiZmYMlnza9S4JLg7hCgnZTYnBbA8OKGChWBQEZ
         E0nm1WYYF0JU07rbfzgTTvqXCKKGQcdy6b+G547a5OKE8SW4T3YVTCxbiwaJ6egvhyTW
         QUSQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of 3cujoywkbapsv12ndoohudsslg.jrrjohxvhufrqwhqw.frp@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.200 as permitted sender) smtp.mailfrom=3cuJoYwkbAPsv12ndoohudsslg.jrrjohxvhufrqwhqw.frp@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:to:from:subject:message-id:in-reply-to:date
         :mime-version:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=RbcIWrtkEoqQFQxt6gqYTmnrJbD7nyuU8UttLtqFJ3g=;
        b=AHDV/Jn6xMRztThGuDkP15Brnf1bM7RCsQLteOeXFdPvs2Y9iOKOiC57NenBUcQLRB
         SEGHJ4myWdu+isX/3xIx6/Uo77Vr6E5caebu0cyitXRaeLmDciWMP/9hEi0ZBTrfI8Ns
         TUq7CVNNde7Tu5efk2xBh4eacHfRNdF65w5i+vkUzY+gR0xYP5twct2R1znA6o9IQoJK
         LP5yILZ0ugQxppO9QZXOsBMLiAJMcYZCNXAUwXVrUrMPcmWeFw+ALqdY49nfDY/lWxYQ
         C2FSdO1w5vQ0QK0VZTmOcnJDh37eJnprsNow+baZVFawXvg0GYO3zEAQY1Bw4f/FHQ2y
         cfcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:from:subject
         :message-id:in-reply-to:date:mime-version:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RbcIWrtkEoqQFQxt6gqYTmnrJbD7nyuU8UttLtqFJ3g=;
        b=juxb/A61B9y7kUSwKMA4vcWn8/GAu++q6gJcj5TivGi7HF1BNK3jsKGsAfmhz8REU4
         mVkjyq5ohcP5grK0wKZRBfD69EgweSSMKzJ3Jcn1H20VKwpWUh4ueJTkKu4gSDXHXWhL
         1DkTWpsImN1Rz4KikxMaTXoM1o7xgNGals2oUvqhTQru1rxsqOsLcxdxoDwmcIAHYDSS
         cu7v4wy1KgOR4gGLIzVEm2cilocjIk4jZA37CBu/G5eAmMn/QrkXF4EWC/hdYDZqE29M
         sESCm4t5CWoqgVXIlWmJ2P5OmiXbW8+cX0FzUrSGFyuHdx3bh/ldjrNvBVJFRzJEKoMs
         VJmQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ACrzQf14Q9wT1ZS/t1RZcM3+85zHfN/DjyAOJZD6Wor9UEjdm5JErwJi
	9wTshLrtos+yg3/f4sf2PhQ=
X-Google-Smtp-Source: AMsMyM7GP1osD3FvUb43ngWcUBFDk3/IG3NUTZtopWh7yaGLTxeiWwyf0+0jPuwPAerQt7JeT/hH0Q==
X-Received: by 2002:a63:4d0d:0:b0:470:3fc2:ac5b with SMTP id a13-20020a634d0d000000b004703fc2ac5bmr13042981pgb.27.1667818100526;
        Mon, 07 Nov 2022 02:48:20 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:f707:b0:178:3881:c7e3 with SMTP id
 h7-20020a170902f70700b001783881c7e3ls8170517plo.11.-pod-prod-gmail; Mon, 07
 Nov 2022 02:48:19 -0800 (PST)
X-Received: by 2002:a17:902:aa8b:b0:178:8f1d:6936 with SMTP id d11-20020a170902aa8b00b001788f1d6936mr49966752plr.168.1667818099465;
        Mon, 07 Nov 2022 02:48:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1667818099; cv=none;
        d=google.com; s=arc-20160816;
        b=hAPMKSxB84G9TLRYwZcT1vmFSzMboF6FqJWdWqH33B6ifenSjrKoYcZeBlfQXDNTYU
         EPS2KXcTy5x3f6BmLJlSA3zobSN9z/iBNnoF3khtMjAlNHQGNFiJI6B2PviYe7llnjXI
         c27NHd3IWt1H5XkEMj39+yzlVnENGM+rLQknlqiWCwZ39ziGRHLaP2qWi+2EAKZdKC1y
         sibLmhskLj57QBMjXrY2uuBIbmtJxa7Wiu/Nkk1uYiJ1gu2HVAlBPP/qF3h1NRDHet9l
         a3IvzwIr6+eF/fyDeGfVxD0AOWHlKJiMVKgkNj6n1YWq28WWb3aHa0gX9MSTMEgYW4e1
         bJcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:message-id:in-reply-to:date:mime-version;
        bh=9HymTYv1Z6I3VvgCZ0iLRhqEFf+ukVe1UdjyszgmAxI=;
        b=eOxgyi7nF9mMQyFYklzop9M2o/B0OkD9OD91sJpXe3p6ERd+GSKzPlvySvXGzMDUXx
         8rjiopbHF3lmhmSTqbj62zVRPoKjKD6RRdbNptaFh4XXeZIyqaXhxTiNFKXfP412D3vf
         paLpsKVvCtU8EpiIzxpioQcGemysvCDu5k2R6WcJZR9wQZL9uV4LSs4VjK7rHcmcEGBT
         vHuis9NGUkK7lnRQEYDR3oKtxFsXDdivQVcxV0iZbENYqIjZAD1t/spdrfdaoJOLZWDQ
         iQWEv9/QRG9TyYGcoYpRoGbBv66yV+Bv+mR969q1SHiBFXkVkhYAxhSzgmRaroos4B7l
         HDAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of 3cujoywkbapsv12ndoohudsslg.jrrjohxvhufrqwhqw.frp@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.200 as permitted sender) smtp.mailfrom=3cuJoYwkbAPsv12ndoohudsslg.jrrjohxvhufrqwhqw.frp@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
Received: from mail-il1-f200.google.com (mail-il1-f200.google.com. [209.85.166.200])
        by gmr-mx.google.com with ESMTPS id s9-20020a170902ea0900b0018546d38cd8si346636plg.6.2022.11.07.02.48.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Nov 2022 02:48:19 -0800 (PST)
Received-SPF: pass (google.com: domain of 3cujoywkbapsv12ndoohudsslg.jrrjohxvhufrqwhqw.frp@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.200 as permitted sender) client-ip=209.85.166.200;
Received: by mail-il1-f200.google.com with SMTP id g4-20020a92cda4000000b00301ff06da14so4490776ild.11
        for <clang-built-linux@googlegroups.com>; Mon, 07 Nov 2022 02:48:19 -0800 (PST)
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1565:b0:302:c61:4c38 with SMTP id
 k5-20020a056e02156500b003020c614c38mr4401538ilu.76.1667818098935; Mon, 07 Nov
 2022 02:48:18 -0800 (PST)
Date: Mon, 07 Nov 2022 02:48:18 -0800
In-Reply-To: <000000000000dc81b705a0af279c@google.com>
X-Google-Appengine-App-Id: s~syzkaller
Message-ID: <000000000000564bd705ecdf291f@google.com>
Subject: Re: [syzbot] WARNING in bpf_check (3)
From: syzbot <syzbot+245129539c27fecf099a@syzkaller.appspotmail.com>
To: andrii@kernel.org, andriin@fb.com, ast@kernel.org, bpf@vger.kernel.org, 
	clang-built-linux@googlegroups.com, daniel@iogearbox.net, davem@davemloft.net, 
	haoluo@google.com, hawk@kernel.org, john.fastabend@gmail.com, 
	jolsa@kernel.org, kafai@fb.com, kpsingh@kernel.org, kuba@kernel.org, 
	linux-kernel@vger.kernel.org, llvm@lists.linux.dev, martin.lau@linux.dev, 
	memxor@gmail.com, nathan@kernel.org, ndesaulniers@google.com, 
	netdev@vger.kernel.org, sdf@google.com, shanavas@crystalwater.ae, 
	song@kernel.org, songliubraving@fb.com, syzkaller-bugs@googlegroups.com, 
	tglx@linutronix.de, trix@redhat.com, yhs@fb.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: syzbot@syzkaller.appspotmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of 3cujoywkbapsv12ndoohudsslg.jrrjohxvhufrqwhqw.frp@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com
 designates 209.85.166.200 as permitted sender) smtp.mailfrom=3cuJoYwkbAPsv12ndoohudsslg.jrrjohxvhufrqwhqw.frp@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
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

commit 34dd3bad1a6f1dc7d18ee8dd53f1d31bffd2aee8
Author: Alexei Starovoitov <ast@kernel.org>
Date:   Fri Sep 2 21:10:47 2022 +0000

    bpf: Relax the requirement to use preallocated hash maps in tracing progs.

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=1232e176880000
start commit:   506357871c18 Merge tag 'spi-fix-v6.0-rc4' of git://git.ker..
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=1b95a17a5bfb1521
dashboard link: https://syzkaller.appspot.com/bug?extid=245129539c27fecf099a
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=10940477080000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=177e8f43080000

If the result looks correct, please mark the issue as fixed by replying with:

#syz fix: bpf: Relax the requirement to use preallocated hash maps in tracing progs.

For information about bisection process see: https://goo.gl/tpsmEJ#bisection

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/000000000000564bd705ecdf291f%40google.com.
