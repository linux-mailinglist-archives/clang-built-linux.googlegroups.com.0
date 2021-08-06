Return-Path: <clang-built-linux+bncBDRPZAGFRAFBBH6RWOEAMGQE2EJBENY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id B72A43E2462
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Aug 2021 09:45:35 +0200 (CEST)
Received: by mail-lf1-x139.google.com with SMTP id c24-20020a0565123258b02903c025690adcsf1640121lfr.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Aug 2021 00:45:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628235935; cv=pass;
        d=google.com; s=arc-20160816;
        b=ARbHp3Bj3oO7UHWuWeRt/6mMweeDFEWhC5o16URuuPHoVqvv3pxKeQN1WO7Yf7Eyzx
         yIzpKQxFpPUcIdWSlFElH/JBqrnvXWb8CqrktsUaVJTM0p2fBE8JRvRv8qHozXcJHg48
         T+3ce2D6S1c2322VPs9rdVBVhcktE/UEiS+1hdXDUFUjlA0+0Zaiht5F/PYFzbqNVTsq
         PAwFd0TEbypRj6N72abweBYR7CoUcUW/r12GeVIJsErrR7CHZH7suQc01f42Aiax0iEe
         +Du+nIC1dsr0xLiw6sou6uBOVq7LbPlFoLgCAbqfu+X00qzej/MyDr8/dp+50OoERpvZ
         LMmg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:to:subject
         :sender:dkim-signature:dkim-signature;
        bh=7+BzP+/ny+4FvhmcWiAwfliXV2dCeRsGqtHv72OWjDQ=;
        b=LIGFT4SmCzDN7bqH1bwsiVe8EwbonnGPll+m9iIjTlqSGIDrmUZt4TPc2gamaHkbaU
         I0a6pb3UOfWg9tGHm5nSc1+0CbTGmIiDydJ1ZzhHu4zgWLRNOT37MDlZp157ELjh6Es4
         sUdqsRMC8tfPFuXXxTixqrbgw1mBOAeMg2cm++5glBRH1CEsFxRiGUptJFkKeEc5uHsj
         tgvYEAUtRBC2VXnE4JxJFk0SMi71KpGNhy2wsvvf/P96NkmHC94LtZneEXrWzGjOobmE
         inQNEwh3Znhag3/5vF6moWhdCbBRgcr4TWQpUQqQE5gMUbiAhZuKuArE3X6iFFojUP/5
         NDsA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SmL159TH;
       spf=pass (google.com: domain of paskripkin@gmail.com designates 2a00:1450:4864:20::12e as permitted sender) smtp.mailfrom=paskripkin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7+BzP+/ny+4FvhmcWiAwfliXV2dCeRsGqtHv72OWjDQ=;
        b=NFHzxwv1CUXQM3x5rg1MYYIcic5Oi7Y+yfO+N7GE8No7u2wx2k6fifPgafp8V2qqxW
         YRN3fxU7Oc/xA41AfTebxkAZ8EEKkHTzoE69AsZPOM8LS7DMiVWsGvb81zh0qVrJOgqi
         MsVBqL4CIjThmLXMyC+xBfB3XHcdkIVdhgApRPlQJZ+s4rujke+OuOPSNpfzfkFVjO9q
         eN7HcXQ3egxGYdMNtRNuEu4WUisyUk1+qYQJ79zcrIBX05vNAMtXQoccWuMDK0sW1DF3
         nnJ4HOPiK3/ws8iALR+UTOTxSYZQRxVHa0oHNXgakaCiA9ltx7ckP90trg+6zz4QuQcp
         4s1Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7+BzP+/ny+4FvhmcWiAwfliXV2dCeRsGqtHv72OWjDQ=;
        b=fs0ED9xKI7nqvzx+BdrRZCsKJxleQ8BW7pp0bX/p7EP0rhh8BhxqXcoSJ4la8zf4o/
         rXjpLeVEpo3pHpQlVIR79ct5HMKYhyx9u8FTQjzVnkCy47Kf3BATMhWOTSPtwnX1ObxW
         fWtdPVf9HTHflAnqOiLRw3BxMiBvOdq7pKI2vtFlMRM27jsIOMthtyV1HOjoNIadxi/m
         jFs4eY38fBQpJ0zeZ6LqLHF+HH2yNiMZtp6YI5k653SjHTANey7N9ueuOoETE7PKBrq+
         q20P5ouDNbKRgZnTlMl49Mo+EeLNqIW32HJO9TPUviA+/KNObkza+H+Ew7DtJr3KXZn9
         JkuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7+BzP+/ny+4FvhmcWiAwfliXV2dCeRsGqtHv72OWjDQ=;
        b=njpZAiA69UZSVHcAbiBbnE4LCYAKzC/QrJ864CNg0wv38l73bjSnGHyu0JevrrCpOQ
         GHqNh2eTHVgwEWzKIwVWIInuSEIWqwlN7ql5B9BlqwKVGn44xovsGn5V2fWXrAH0/sjH
         naaeLP+fb7IcVOJ94LMWMHEeqDKbgKXe8xmTw9jnoB8apozXgA49p///KZwcE7D3RVy4
         qSb0fQrSVAZRtO45IxwyMsTrkz/E2Dkj4P0RzpJumnNAlFzyccT/mHDzcLEFnjdKZXKF
         U4GOPLLOUtXideHJpUI29u+c6Y1bh4NEJTehcvBRqYDikAU90s/AXVBw0sOBWlOHC7ZR
         6TzQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530bp5e4cPfB1Bs6/8eDbjp3px2raKom11SnCtaL8Iuh5ezW0s8Q
	zqbKBB4gwcJUnwF8mbEpyxE=
X-Google-Smtp-Source: ABdhPJzlnI4m5QadtMAjtlFxnIh+kwx4stJGWNbmjkiXPva2bOIfP0iiV72wvCtHKOTDjWB3o2RCug==
X-Received: by 2002:ac2:57cd:: with SMTP id k13mr6845696lfo.117.1628235935261;
        Fri, 06 Aug 2021 00:45:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:4146:: with SMTP id c6ls6057394lfi.2.gmail; Fri, 06 Aug
 2021 00:45:34 -0700 (PDT)
X-Received: by 2002:a05:6512:1145:: with SMTP id m5mr6945487lfg.37.1628235934259;
        Fri, 06 Aug 2021 00:45:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628235934; cv=none;
        d=google.com; s=arc-20160816;
        b=ofzSNCYgu8yT2YXBq4zULI/9eApCvi76WbqgK91Gd5/WotTz/rN/9sMnAQePs+idcv
         sBl9lQtQ0gYY2TlWce1Z2yG7VJGXyja1mxYd6bUAUbAaGNNOkGV8W0/7lg/j1IZs8YVX
         uUZCHHCsbv5imjpcSOe1sTGiJckU6AdSH0FRoSwzIYB+Gl6fgatSLfeLdCyqHmuMsROk
         QZdo0lNvsl7SYSil8xug7NKzPTcFRWbK8r6jXwoosKBeLh7IqisEwjPcx1M2xLrVYmnu
         nMsh5IwwibD14gRgVJqQCLYZLm9SjB/IMrAL5j5s1iKU05NfTp3bNOs3DxL4p8Yb5cq0
         GVWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:to:subject:dkim-signature;
        bh=OWQLdupjTEh4OlyCZ+bQemzpvexRaSTViOt6rJ5MT8k=;
        b=csW4Dw1CHr4XdFIBnhIwfuUD7prGSglbE/l+lT4G4iUy+KgIJ0KMbiEh0bx/5stiP/
         mNbW+xvEv5wa1t0BzRgc2+1+iaf2ZeKgYVAsZEbMTrXZQePn/c1ESVvO2E0lfONro9UW
         TELyyDjbfryfh5mkYYa9ji/7IavFRU/0C5cWuCJtxw2b4zunz42ggDvQ+x9CefD3jITL
         NPm+DvWDxli5IGDVPZnIMyxhkYN89NJk3eH6jJBcEPb9wo5rLm3sYPVjCVSyEBcesPh/
         22d0l0rcu6pHoiiT+wJ2NPqAk5jIWo9Yp0tVMO2HPmLZ4hdf16gSc9KPBAPP6AOQLuzp
         BgIA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SmL159TH;
       spf=pass (google.com: domain of paskripkin@gmail.com designates 2a00:1450:4864:20::12e as permitted sender) smtp.mailfrom=paskripkin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com. [2a00:1450:4864:20::12e])
        by gmr-mx.google.com with ESMTPS id p17si163929lfs.8.2021.08.06.00.45.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Aug 2021 00:45:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of paskripkin@gmail.com designates 2a00:1450:4864:20::12e as permitted sender) client-ip=2a00:1450:4864:20::12e;
Received: by mail-lf1-x12e.google.com with SMTP id u3so16203831lff.9;
        Fri, 06 Aug 2021 00:45:34 -0700 (PDT)
X-Received: by 2002:ac2:5978:: with SMTP id h24mr6833758lfp.354.1628235934010;
        Fri, 06 Aug 2021 00:45:34 -0700 (PDT)
Received: from [192.168.1.11] ([94.103.226.235])
        by smtp.gmail.com with ESMTPSA id b14sm624419lji.91.2021.08.06.00.45.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Aug 2021 00:45:33 -0700 (PDT)
Subject: Re: [syzbot] INFO: task hung in ext4_fill_super
To: syzbot <syzbot+c9ff4822a62eee994ea3@syzkaller.appspotmail.com>,
 adilger.kernel@dilger.ca, clang-built-linux@googlegroups.com,
 linux-ext4@vger.kernel.org, linux-kernel@vger.kernel.org, nathan@kernel.org,
 ndesaulniers@google.com, syzkaller-bugs@googlegroups.com, tytso@mit.edu
References: <000000000000b6692805c8d0fae6@google.com>
From: Pavel Skripkin <paskripkin@gmail.com>
Message-ID: <daae3696-aed8-a0b6-9470-d76ab4901b7d@gmail.com>
Date: Fri, 6 Aug 2021 10:45:32 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <000000000000b6692805c8d0fae6@google.com>
Content-Type: multipart/mixed;
 boundary="------------79CCD88B29A58180385B73E4"
Content-Language: en-US
X-Original-Sender: paskripkin@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=SmL159TH;       spf=pass
 (google.com: domain of paskripkin@gmail.com designates 2a00:1450:4864:20::12e
 as permitted sender) smtp.mailfrom=paskripkin@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

This is a multi-part message in MIME format.
--------------79CCD88B29A58180385B73E4
Content-Type: text/plain; charset="UTF-8"; format=flowed

On 8/5/21 5:46 PM, syzbot wrote:
> Hello,
> 
> syzbot has tested the proposed patch and the reproducer did not trigger any issue:
> 
> Reported-and-tested-by: syzbot+c9ff4822a62eee994ea3@syzkaller.appspotmail.com
> 
> Tested on:
> 
> commit:         251a1524 Merge tag 'scsi-fixes' of git://git.kernel.or..
> git tree:       upstream
> kernel config:  https://syzkaller.appspot.com/x/.config?x=166c8f6532dd88df
> dashboard link: https://syzkaller.appspot.com/bug?extid=c9ff4822a62eee994ea3
> compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.1
> patch:          https://syzkaller.appspot.com/x/patch.diff?x=160a3301300000
> 
> Note: testing is done by a robot and is best-effort only.
> 

#syz test
git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master


With regards,
Pavel Skripkin

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/daae3696-aed8-a0b6-9470-d76ab4901b7d%40gmail.com.

--------------79CCD88B29A58180385B73E4
Content-Type: text/x-patch; charset=UTF-8;
 name="0001-ext4-fix-kthread_should_stop-while-TASK_RUNNING.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename*0="0001-ext4-fix-kthread_should_stop-while-TASK_RUNNING.patch"

From f31fdca900d687994a880dfd675d0a46da1eaec9 Mon Sep 17 00:00:00 2001
From: Pavel Skripkin <paskripkin@gmail.com>
Date: Fri, 6 Aug 2021 10:40:31 +0300
Subject: [PATCH] ext4: fix kthread_should_stop() while TASK_RUNNING

/* ... */

Signed-off-by: Pavel Skripkin <paskripkin@gmail.com>
---
 fs/ext4/mmp.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/fs/ext4/mmp.c b/fs/ext4/mmp.c
index bc364c119af6..fd1985b79a8d 100644
--- a/fs/ext4/mmp.c
+++ b/fs/ext4/mmp.c
@@ -183,9 +183,15 @@ static int kmmpd(void *data)
 		}
 
 		diff = jiffies - last_update_time;
-		if (diff < mmp_update_interval * HZ)
-			schedule_timeout_interruptible(mmp_update_interval *
-						       HZ - diff);
+		if (diff < mmp_update_interval * HZ) {
+			set_current_state(TASK_INTERRUPTIBLE);
+			if (kthread_should_stop()) {
+				__set_current_state(TASK_RUNNING);
+				break;
+			}
+
+			schedule_timeout(mmp_update_interval * HZ - diff);
+		}
 
 		/*
 		 * We need to make sure that more than mmp_check_interval
-- 
2.32.0


--------------79CCD88B29A58180385B73E4--
