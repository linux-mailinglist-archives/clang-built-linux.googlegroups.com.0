Return-Path: <clang-built-linux+bncBCQPF57GUQHBBM7MRKCQMGQENGA4ZJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C503383C41
	for <lists+clang-built-linux@lfdr.de>; Mon, 17 May 2021 20:30:13 +0200 (CEST)
Received: by mail-pj1-x103b.google.com with SMTP id j91-20020a17090a1464b0290155d0a238desf164200pja.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 17 May 2021 11:30:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621276212; cv=pass;
        d=google.com; s=arc-20160816;
        b=SRJv1pvVMQFl3iihnp4wPtDxFUg5+w/t25YJ4/55lzlSN7iPUadZM66t26kHUKJRvB
         7YS0I28E2rkYigVTh6wdMdsj0nJhcx3zDRK8yAGTouIHESiBbVlxTlRLPr33bKgIR5rY
         vLTUDk5DrTeGZC9uQNzZOuMvoYELPoonAR5P2QOMUfPhoDfjlaPL3zvuHVSp8KQ5yfA2
         ZfnvKKN0VgqwSCm1xHdmK9rKSJB25AqwnhrAJQ8wP9ZHj48JgIZeqvmZhkY3AAOIXML/
         BoRHGYaS+unIfXxPBf1g1lwuJskhjY4/xgl545hQdmCUXkblCZHzCsgic46bbf3YRBXE
         FVsQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:from:subject:message-id
         :in-reply-to:date:mime-version:sender:dkim-signature;
        bh=WC2H3eFpYo/jMXYjiNTTaib8zsma+xqltf2Ejd5PwDg=;
        b=AzB7WqEviKXOlzDS25pIN+ceohsJyF9OPlognj45G1xR0CImpko0M/sLRk2TMLo4An
         BoyFBVSadZjU/iNYTKLBmG0ayPHUPdN5Q2jicONAbKxN9/bpY52YMZCQW5T3tDE+aMeR
         /mss0Z1sFJGEraUIe2nYyTNChfquh8yHELsDZz4YchBavFN6M71VElcM53kW5q0Tp0Ex
         Dgt4tNJvKh7JYn6RDM8bydRAPL7EtqnmE3YUxU4u6A2bTsz+WYx+4i1aa71JZvhTfiRG
         aEumhbhdt/6FHec5Tq/r+boNOr+kQIMkZ8Rc6ErOVy2T0NBx1LbkGFWu7ZRX80eit+JC
         iFTQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of 3mraiyakbadujpqbrccvirggzu.xffxcvljvitfekvek.tfd@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.200 as permitted sender) smtp.mailfrom=3MraiYAkbADUjpqbRccViRggZU.XffXcVljViTfekVek.Tfd@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:date:in-reply-to:message-id:subject:from:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WC2H3eFpYo/jMXYjiNTTaib8zsma+xqltf2Ejd5PwDg=;
        b=fi0cW5c1vBsE9AWCtVaz1SUsrpeqpgLqsAVjD666Usom1GOYVqJVowKT+3y8LjpScF
         +AmCKYy2T6rwSPNN6Gi+vIdfx3PbZysCR76F9HR0GwE735Z9TOIJil5rZCOGvrKf04MD
         AyAjeUfAI9y7amkXydrE+u05nCCyTLk58IVti4/6TALj2GGC6iKFSV/Ncd0Wr/sI0Ioh
         35GR2wH27PIuyW/0YfBPEgtlZMQ7U97Xj3imzDuYSQtOdBYFBnfW9dbCqdWmj3bWN/Oy
         51puUp/wtZ49ATi8tDPz/mXnikJjf+a/lcvsaK525oVYkv0um/PMur2Eh2iTmm0U89tW
         KD8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:in-reply-to:message-id
         :subject:from:to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WC2H3eFpYo/jMXYjiNTTaib8zsma+xqltf2Ejd5PwDg=;
        b=WWKRcpqPUN/d1MazMVNopZm4NrLU4dUlBpOnLK/30InsbtHqb9dRxrOY+cvwrxmHlN
         pMg0qvI4OTeekWsuzybC9r+Er4eBd0SM2niYoBPfpWrD3SPy2kQJFnjE3LL7NfOvYL4w
         omfmYB0eMR2v534Gqr3R8JHEjn3IijpWZeakt7bTw/TBwzAQJbLxJGFlJ1PVk+mw9+2r
         ZOQQfc72Q13d9oyT4dYV/W8mXRZ1aqHkRSwQKQn5UxEDDcXnWhAlpu6AFcJ+h8REZpl2
         iTvXVMO13RB14MYIb28sJKmLQ9HThixAyq6ETw1JycUFDh+wBGEUOkOjJDJKBf+QCtfs
         B+YQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5338VSaJrUzySHNQuSB4OheJjQgky1PHKBi7eXDdHPp0MQiZ4b3A
	SCOm9cRzBNS0X7tvOUNRKI8=
X-Google-Smtp-Source: ABdhPJxKlEDgBH5InKVVethJuGOiDKAPUtZp6m95FVuLkicJrEpsG3NETrFZNfcNpGX3P7gcU0k6fg==
X-Received: by 2002:aa7:96f4:0:b029:2de:1b40:d3d1 with SMTP id i20-20020aa796f40000b02902de1b40d3d1mr71487pfq.33.1621276211983;
        Mon, 17 May 2021 11:30:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:7e1c:: with SMTP id z28ls8054029pgc.3.gmail; Mon, 17 May
 2021 11:30:11 -0700 (PDT)
X-Received: by 2002:a63:e709:: with SMTP id b9mr843594pgi.153.1621276211392;
        Mon, 17 May 2021 11:30:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621276211; cv=none;
        d=google.com; s=arc-20160816;
        b=nzh8ICDPJ00hxZ7ujw8UKLIQz85xIbi05mVVnDS9pO1227V76yp9YUkmVbj5Xl0fij
         gR7y5alC30D2nQAefJMhIf/hnxqsOhOoutyrAuU4E4Ct/zIGw0m9r5POaPoAuEWvKEdy
         F1I2e3/JRUnBzp+j8GLA7oFTHZ7URrcMYIVPwTtAjCk07De2RhMn4/VWv6H5FLefD7la
         w0jF9GCztvD1a9psTBn9H1TfxBoVf2vdULN9JfW5xVyfXksZjd1Two7m+NSjUEpInh+G
         zo2kxQsiHA51UhTp3eYgd8q0LfZ6uUKnywhw9rpOt8Hjyc2whCMsV41YjPzRx6LfPP29
         Bt5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:message-id:in-reply-to:date:mime-version;
        bh=JtPCeZ2TQZracTcPpDU9nceWBS01kuUCgMEVpXDuEo8=;
        b=b6tiKCaT8CZM/h6lOdQgxGmhO2AaKe6M3+S3mOQCeP/3DUuuN2Ul7jLqfx5qziTn9P
         DEU3M+LRodk6I5rN7kxIk+WvjJB/F7NrMA+OJp4xNwu3RzlOjXZXecDt67M4VquroCQn
         cWYzKCu9AiQZJAVQltfT8pjd7mktPsLNibdGFIhtX5SBDAa+Svdmvpqb9gvDU9OdiYv1
         UhcNvEkZQ4KqxVgHZT9OEafcjx7DxAdeedeMSvsdJRAxZL/HGUUQ096fsFqEvq0ZpHX2
         jPFTAQaDCjuaUCK3o29SKhbF3Ld3RDXhx24Nbf/+lzmlTS5k3Q98Z5BMPQa34Wf3JLrt
         TXcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of 3mraiyakbadujpqbrccvirggzu.xffxcvljvitfekvek.tfd@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.200 as permitted sender) smtp.mailfrom=3MraiYAkbADUjpqbRccViRggZU.XffXcVljViTfekVek.Tfd@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
Received: from mail-il1-f200.google.com (mail-il1-f200.google.com. [209.85.166.200])
        by gmr-mx.google.com with ESMTPS id w3si1283083plz.2.2021.05.17.11.30.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 May 2021 11:30:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3mraiyakbadujpqbrccvirggzu.xffxcvljvitfekvek.tfd@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.200 as permitted sender) client-ip=209.85.166.200;
Received: by mail-il1-f200.google.com with SMTP id l7-20020a9229070000b0290164314f61f5so7053761ilg.10
        for <clang-built-linux@googlegroups.com>; Mon, 17 May 2021 11:30:11 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:dcf:: with SMTP id l15mr852350ilj.227.1621276210830;
 Mon, 17 May 2021 11:30:10 -0700 (PDT)
Date: Mon, 17 May 2021 11:30:10 -0700
In-Reply-To: <20210517210953.389f086b@gmail.com>
X-Google-Appengine-App-Id: s~syzkaller
Message-ID: <000000000000a1244a05c28ac833@google.com>
Subject: Re: [syzbot] INFO: task hung in ext4_put_super
From: syzbot <syzbot+deb25600c2fd79ffd367@syzkaller.appspotmail.com>
To: adilger.kernel@dilger.ca, clang-built-linux@googlegroups.com, 
	linux-ext4@vger.kernel.org, linux-kernel@vger.kernel.org, nathan@kernel.org, 
	ndesaulniers@google.com, paskripkin@gmail.com, 
	syzkaller-bugs@googlegroups.com, tytso@mit.edu
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: syzbot@syzkaller.appspotmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of 3mraiyakbadujpqbrccvirggzu.xffxcvljvitfekvek.tfd@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com
 designates 209.85.166.200 as permitted sender) smtp.mailfrom=3MraiYAkbADUjpqbRccViRggZU.XffXcVljViTfekVek.Tfd@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
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

Reported-and-tested-by: syzbot+deb25600c2fd79ffd367@syzkaller.appspotmail.com

Tested on:

commit:         760537ca ext4: fix memory leak in ext4_fill_super
git tree:       https://linux.googlesource.com/linux/kernel/git/torvalds/linux refs/changes/76/10176/6
kernel config:  https://syzkaller.appspot.com/x/.config?x=f54fe79f2945506f
dashboard link: https://syzkaller.appspot.com/bug?extid=deb25600c2fd79ffd367
compiler:       

Note: testing is done by a robot and is best-effort only.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/000000000000a1244a05c28ac833%40google.com.
