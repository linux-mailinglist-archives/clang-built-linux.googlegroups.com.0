Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBTPW677QKGQE3WFVHEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3b.google.com (mail-vk1-xa3b.google.com [IPv6:2607:f8b0:4864:20::a3b])
	by mail.lfdr.de (Postfix) with ESMTPS id AE0A32F3ABB
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 20:41:02 +0100 (CET)
Received: by mail-vk1-xa3b.google.com with SMTP id d202sf1403960vkd.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 11:41:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610480461; cv=pass;
        d=google.com; s=arc-20160816;
        b=vdHuCWR9dNpD6PA3pqbtb+9p5hlWDQVAf77mJxF2+S1P0D4w26bIhixBZewGaJ2kom
         Fn8IH2htd0nz5BCThk4yCTHsEX37nDZYtBOktrxZBJmTSARHhmmyThSWOR1/lc6m6Pho
         iYCFnzEnUoV09YTtS5zBuYzwTk+ek5LYJozvqvXnwkY176Iqi14cKhmQ3H+Dc3puL6In
         YmEt+51mzqdtFBBmS2QeTIYZHBrUPncRXGAGt4LYUY4bQhVb9/vdwCpnxn1czYmOEW08
         Hawsh0dVAvfR/M/ihGAYzPXEfA8xNOBqyzCMWpSq6XzeFmSG0DY+6H7izt8spjJJpJLY
         ftVg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=n9yUrOf7UbMwO6gQ5EtjzMu7czDOIMsMqiLy/Art9+g=;
        b=HDqGdkp4O1NmVhMYKiBZPcImE3f2M2KryLzRbTRY2QEsBKE+Jcj++595ZD6pfsXdDO
         k1PUUxOiOHVJPVVoXxHqwUvfiafkqi2R1xWmZvF5vPsx2aTHsyEP9m9CaHZrIKquSkE4
         B04o5UwsdCQSn1sI/SiaAtN30F2U94mR1dd28WJArT72yvg1Ay2w4Oxw1KAXEv1VM466
         GB0tBF7MbdmDKjczuAo6yF+edBS93/krd1Sgos3XOVJGNKFbfVl/KgzGwyJLUVHHDUaI
         +hEa+8oIhst/EBLPiGUAAMqPN7oY8fYe5K2gCk40NMMZUhbAQj/oARIpQTUTpOLTUvle
         cuMQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nKUt+zfk;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::735 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=n9yUrOf7UbMwO6gQ5EtjzMu7czDOIMsMqiLy/Art9+g=;
        b=Ms9sFI3pvxbG4/edxkb3XlVMVIcJU9aa+SkR05Hdm6OI8KzeYI4392t85gDS6N8KMH
         2Sh+IQRv0KFdA/47XswsD6BQzihAZRFmXiRs0rPkUjR2jIkaEygT/W5rlMPX+LV+5DRO
         bXlJDE5iPYVwXH0k2q6lkITijxsP7Ar0xGs4Bm+bbydQ+ogZjyLBCdTGBOc3PNwYI/uz
         lujvyxu0vqIyObsSbWAPXJCSCjgaYOSXGsh75Iv7vGeg+WLNIZyyTvEhuyRg7HYGcYgV
         9+n0oclqWORBDYp/MXJWGjnfAfD7CpShizOvtfcBpqOqjoixFy74cmrCDMjhc8T+MGEx
         a3Tg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=n9yUrOf7UbMwO6gQ5EtjzMu7czDOIMsMqiLy/Art9+g=;
        b=ME8f2tMuvZpjWIWBYrw6FGDYo+/4xIPVLV1vOnBFbuPRrvHHig5QwjTEy3LpTtiheD
         owPQEosJWqJDVY0ITqpZfEXNIcfsAUShYkLuw5Z23WZZYprL17AH75QV1+WMyNwqD1wR
         +PEnavFT9Gq2Mh44zbXM5/4CXQXKIPcDoxezeg0rxTI7FFy7SOJGrdAberO9PFQcWso5
         5Yfbdm3Jj9DsXql0U7T9xH2TTvYTVRHYER7OH2sRjM2+WeATZ9JPqo7beFUmyT7CR8Sq
         ahJyC/zByJxkqXI7UTRJbdG6Rb6qruo9KdVT0EYr11Wb4y4OSL4naO+ZlMJ4qHisDN2h
         wIpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=n9yUrOf7UbMwO6gQ5EtjzMu7czDOIMsMqiLy/Art9+g=;
        b=fL9zqTvD8N8ExVCSX02BPadqTM1lC00J3LR7LYTO9nF9NmRb251zksqWjNex9Sx+4m
         sQEFeh9O1WeWDThhqNmW3sKLYjsOWz5NfXxzD5g84qpuot71usLNxCTrWbOHFG9j3HOu
         r/z73LqN6xv+DZVjeYN17j5P3iVbPa8J1ktEkbXoQ48pjm+AoNplRtrdv8LWenQN99cQ
         /7I0xRzICTYWWktj3GMlb0LKnu+rVD/ATvhalmSaQ/eBfApTdh3AZmuQUNQYb0zbEH1G
         WL1esQ1/XbfoyEA8bzcDPF2e2PiGxI4u3wEuc+46IwX25V5ZvzmO/R3d3P9Ram+6gf4B
         teVg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531O0/EIQfRdZlXqwA8XtYrJZn026WUlGn13OJmoooFP0B5REHUp
	6Kg/nlED17BmGTn12Rjbb2s=
X-Google-Smtp-Source: ABdhPJx/cNDgmyohcviguaLGg4coax/VA9P5iFpOhte/E95fcWS44tS9L6vtKQcR7dJ7FkOTJ+/cuQ==
X-Received: by 2002:a67:fe85:: with SMTP id b5mr1198610vsr.19.1610480461803;
        Tue, 12 Jan 2021 11:41:01 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:e287:: with SMTP id g7ls620128vsf.5.gmail; Tue, 12 Jan
 2021 11:41:01 -0800 (PST)
X-Received: by 2002:a67:cd9a:: with SMTP id r26mr1123766vsl.52.1610480461425;
        Tue, 12 Jan 2021 11:41:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610480461; cv=none;
        d=google.com; s=arc-20160816;
        b=BGMsAuZVcHewjhtAduWTngcr5ZjzpKUB+KYve9pu5Jyh8n1bWPK57U4/i+eUn3c91E
         B92OwoIyJ5Nk/Z28GAfU6blg4NCa5r4boh8+Aq32ID/aZ/JcX7zfVqscjOdE876zESQA
         12gh8cIAuDI3zhSAQ4gFyct3ffzT3Y2VTfz2rYTW/zADQtSbfWEU54JIbslpVfL/he8Y
         LKzMHhmoljAselRXFajMzeDMdk55LpdtS1AmnByjzlD0BKjFHbYxQhWjVjNnG1AO9+a/
         Tt0Sfq38jUBICS00gs6fWfVhiQXEPBmk2CKfmK6OIda30pgQTJG2OO94IsbiTSZbaCYS
         WrDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=4JlDN7m/8EgD01qc5jrAlRo8YJFFXTfkl0WAThfYT0Y=;
        b=gxd8nvCKFsyQyDjsywqypXdojB6/FGfNEdxH85IyDm1xUQkeyn/z8sYqPv21BaSLLt
         ywG3Qcln+ncy714F9LNq94WEcThBep3qYik7VdmtNOyAEFBfzpoOKcIwKpgCEBnIYLeS
         vKz+8bQPGs/TPetZFVYAyL09ASqo9psvS2PoUp+9quDF5mjcWIrAg6jL/RSGMYbKIidQ
         4bBndZC7cvgsUC8pKXjdWL/QaS3OsKnQGYmBkKvQmv1RpyRzNEvCu7NEezCIL8Ha/YD5
         e73D3urt7UhnjzNg4wgMbTdLjjQUp87n5jqutmFdRG1He5ZdYoSKHVjKzjcnYBwhjCPU
         SxMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nKUt+zfk;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::735 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x735.google.com (mail-qk1-x735.google.com. [2607:f8b0:4864:20::735])
        by gmr-mx.google.com with ESMTPS id v23si315182uap.1.2021.01.12.11.41.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jan 2021 11:41:01 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::735 as permitted sender) client-ip=2607:f8b0:4864:20::735;
Received: by mail-qk1-x735.google.com with SMTP id 143so2967777qke.10;
        Tue, 12 Jan 2021 11:41:01 -0800 (PST)
X-Received: by 2002:a37:a516:: with SMTP id o22mr1025163qke.17.1610480461123;
        Tue, 12 Jan 2021 11:41:01 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id j7sm1668018qtb.87.2021.01.12.11.41.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Jan 2021 11:41:00 -0800 (PST)
Date: Tue, 12 Jan 2021 12:40:58 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: syzbot <syzbot+76880518931d755473cf@syzkaller.appspotmail.com>
Cc: linux-kernel@vger.kernel.org, syzkaller-bugs@googlegroups.com,
	clang-built-linux@googlegroups.com
Subject: Re: upstream build error (12)
Message-ID: <20210112194058.GA200254@ubuntu-m3-large-x86>
References: <0000000000004a33a005b8b8eaab@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <0000000000004a33a005b8b8eaab@google.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=nKUt+zfk;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::735 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Jan 12, 2021 at 11:20:27AM -0800, syzbot wrote:
> Hello,
> 
> syzbot found the following issue on:
> 
> HEAD commit:    e609571b Merge tag 'nfs-for-5.11-2' of git://git.linux-nfs..
> git tree:       upstream
> console output: https://syzkaller.appspot.com/x/log.txt?x=15965a00d00000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=6157970d0a91b812
> dashboard link: https://syzkaller.appspot.com/bug?extid=76880518931d755473cf
> compiler:       clang version 11.0.0 (https://github.com/llvm/llvm-project.git ca2dcbd030eadbf0aa9b660efe864ff08af6e18b)
> 
> IMPORTANT: if you fix the issue, please add the following tag to the commit:
> Reported-by: syzbot+76880518931d755473cf@syzkaller.appspotmail.com
> 
> clang-11: error: unable to execute command: Aborted (core dumped)
> clang-11: error: clang frontend command failed due to signal (use -v to see invocation)
> 
> ---
> This report is generated by a bot. It may contain errors.
> See https://goo.gl/tpsmEJ for more information about syzbot.
> syzbot engineers can be reached at syzkaller@googlegroups.com.
> 
> syzbot will keep track of this issue. See:
> https://goo.gl/tpsmEJ#status for how to communicate with syzbot.

Would it be possible for clang-built-linux@googlegroups.com to be CC'd
when there is a build error and the compiler is clang? Especially if
clang is hitting an assertion.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210112194058.GA200254%40ubuntu-m3-large-x86.
