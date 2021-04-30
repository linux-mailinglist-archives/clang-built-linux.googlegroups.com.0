Return-Path: <clang-built-linux+bncBAABBD43V6CAMGQEPFZ7LBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B8C136F7E8
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Apr 2021 11:27:44 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id m1-20020a2526010000b02904f4d04c0f14sf888051ybm.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Apr 2021 02:27:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619774863; cv=pass;
        d=google.com; s=arc-20160816;
        b=d20VCZFXjSAOF2tIs/M6TmircxF4oCLtXCAUd81SsXuU811tSyA5zB0X1Y91WCCGQw
         8SfCYAiCVURlPLoe27n1TNGu4R5mnwIGi40K1JqFCY0XPB/CNMouMZWz1ojV8ja/JomG
         iijuvdpLHpGRgVrUjCDEK784gvcaQcE9BzhGFe9h917KzgJiIs8P7Co5VzL6zhqrjWYs
         WYXgmk7zJLQxLa/9vQsLoYo8O9uKN1aLKkG63kMFrBSafGM/ndaMBPSBY2xP52JuEsSy
         lTWtJOL5O5muUW6o0uECvIDkx8h/DNYUM/DBhnuXnGDhPt+zr7PXXIDtn26wm5mu0jbN
         lYhA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=2m/QaS5hmxnWHcfujnEqR0KOBPtlNRQjbrP3Pk+kBJw=;
        b=iJxE3NPnIw02KuEM+65Md1o5xK/HQNqQ8Fec/V6J4vDdyY6ae+pYFOsNxtwV1/FtIy
         yDAU6dvCFjvO+LVWMPxgNDbomx6oNictO0kAT3+nX3HNk6G2Xzc/cPlrb+pRP0FIZqXW
         zEVEkl3biN3MCcwwQKXVXqb3eLx6XdOL+mXTLozlc6vVjrprfhHpXJAdoCLX8j9grTy6
         i3VRMkur1N7yw9RkYvqjbh4a3n6lYqzivAwUh0hIP2i+mH7Yqluq2f/2hVCMq1d5+4Z/
         g2JwZJ4GR8iVaqwVicOixnaEJk676Gj8Iot/zdK2Mi9/x+zpz5L5bGfXNocaBQCj2FX4
         dopA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.57 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2m/QaS5hmxnWHcfujnEqR0KOBPtlNRQjbrP3Pk+kBJw=;
        b=cRTJlc5vxBgFCTD5Xqsg3iUIWsUoTNnrRr2+lOFhr17tBPuaxlnltaXZDKyLebqjwX
         CErQ+mzECoYE5dvZcG8+W4TSTXDQiAebjquQWVfAOT8+B9SdcGftXArm47FTEuEOnxen
         mDVB78EIL6OQSGLfMUNbFhaaVOZurn6M+DXUPmuP26IvwmvJeG6+QKM2v3JwiL8sVJpf
         uQBAHhQo6YO7r+plDTm6LZQvZy/UCMJN3CUVhYPgkrN8Kzw9GAEzxDncjYdYmpJrfjYb
         vbbE7NEJTCtrfKOs92poT3MMHpGi4bdnY7UlnZV7kWV825jedfJzR2rgIDxI9Smrh6GF
         GtnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2m/QaS5hmxnWHcfujnEqR0KOBPtlNRQjbrP3Pk+kBJw=;
        b=UYK3BDSiRuy+I7bvmzBXdfF+BotnQeXqLBbQqIiJbGlaau91IiNUEfO6muSvdjLE3d
         xzEGAHKZo5pZfp+kJGVPf0PmE16oBg2F9xItJHoNQBzvxegdgPuR6x6JxbCpIg29oxWZ
         8frS29wasMo6jma2uNQ+XEa0eOO48pWoK62XySWWk8X8vjd12mga7v6PcSPvrJCx/V2a
         EhGC3E7nZOJqBTWhngviYV3ds7qQJ/EFaWoAsOQKQnH8uAI3sC44qxHeJVC7F6n+joSz
         1alvL19Ge+xoOtB2MtTDVPi9igj/XkUyU+MX+oHQz1fplr7wnlVCpTUfZ8fzPL67RdlD
         rzVQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531VGXGuPyyxt1705QgAdsUDE7dqtjLOW5thoeNnX7RKgFXDTnE6
	PBLq5IZ6ctK7dtwKE9yaPb8=
X-Google-Smtp-Source: ABdhPJy+Su/9TdhmDTQBgTxvmuSOgZCt3MJduBn5B++1tY1ZBeQYmvWITA0BSKXT+XwuIsQDZCuD6w==
X-Received: by 2002:a25:6852:: with SMTP id d79mr5335144ybc.126.1619774863618;
        Fri, 30 Apr 2021 02:27:43 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:1342:: with SMTP id 63ls2935172ybt.8.gmail; Fri, 30 Apr
 2021 02:27:43 -0700 (PDT)
X-Received: by 2002:a25:cc8d:: with SMTP id l135mr5166305ybf.89.1619774863211;
        Fri, 30 Apr 2021 02:27:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619774863; cv=none;
        d=google.com; s=arc-20160816;
        b=hOBJnDD4uoiZMiBzvqbPgEDM+mhnd8bMpLvqxVBBLT2jGmNx32NHW2M6IfhuxyMMqE
         ZZRowuXXBUbYk0BIhDKnPpsDrV8yO1Z3wiyiLkQYQ2YaebStgwcBGP+6aZAbO1O1kc/l
         jItJpOHi1Y2Le7d4piPQy8Otn3KYWhyokpaZGm6uwQpkkQZeloBsZFvzDlFS7sitfTM+
         gduXMl/ZudV2k5PJmzkUNwD/bXt4RA6+DMQpm7MKFCFPhgb5EkB0Y6Gn/mcxeKVFe83b
         pniFJmW9INmYPI9+qmt69TEADDvvOxUaUruufzvpDvqMGai+H0L9dSOokkMhTn5LDqqA
         +gGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=yT0HgiEzQdt8/VOyrymcjp+LGpVIU34JnEljOwmH9Gw=;
        b=ihGeeWrLfcDMm80rBC29Q3TA6niXWe7Ni+LS0ml/1S2G09cNTouKmEY09FLS4cPBmC
         aVmffSzIgMfJVV3HIzLpmQaFFr9D/x5IFSdd2wwUUG+BGlDeIspQF5rrHl0p2a+FsR7o
         Yp668LyuybVDu/XFCOva1Nd31BoBsbL2WsheP/yGlZRXxBDRRD+dnGi/Ug1fBuo+T8HI
         LIsAhY99UgGK+/Hc2MF3EQuFtJNNUzBLnByUft5EBufMdC2Lzz5QF3siCJ4AO/3CslpG
         hAoLQyEoxhsUiKFmnaywudI5caHAmngkvKdjcTMRwvpELV7z02JVzVIiUwnxr98Tu/ac
         /PYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.57 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out30-57.freemail.mail.aliyun.com (out30-57.freemail.mail.aliyun.com. [115.124.30.57])
        by gmr-mx.google.com with ESMTPS id r9si731186ybb.1.2021.04.30.02.27.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Apr 2021 02:27:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.57 as permitted sender) client-ip=115.124.30.57;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R391e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=alimailimapcm10staff010182156082;MF=yang.lee@linux.alibaba.com;NM=1;PH=DS;RN=8;SR=0;TI=SMTPD_---0UXFoPu5_1619774856;
Received: from j63c13417.sqa.eu95.tbsite.net(mailfrom:yang.lee@linux.alibaba.com fp:SMTPD_---0UXFoPu5_1619774856)
          by smtp.aliyun-inc.com(127.0.0.1);
          Fri, 30 Apr 2021 17:27:37 +0800
From: Yang Li <yang.lee@linux.alibaba.com>
To: davem@davemloft.net
Cc: kuba@kernel.org,
	nathan@kernel.org,
	ndesaulniers@google.com,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Yang Li <yang.lee@linux.alibaba.com>
Subject: [PATCH] vsock/vmci: Remove redundant assignment to err
Date: Fri, 30 Apr 2021 17:27:34 +0800
Message-Id: <1619774854-121938-1-git-send-email-yang.lee@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
X-Original-Sender: yang.lee@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.57 as
 permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Content-Type: text/plain; charset="UTF-8"
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

Variable 'err' is set to zero but this value is never read as it is
overwritten with a new value later on, hence it is a redundant
assignment and can be removed.

Clean up the following clang-analyzer warning:

net/vmw_vsock/vmci_transport.c:948:2: warning: Value stored to 'err' is
never read [clang-analyzer-deadcode.DeadStores]

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
---
 net/vmw_vsock/vmci_transport.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/net/vmw_vsock/vmci_transport.c b/net/vmw_vsock/vmci_transport.c
index 1c9ecb1..c99bc4c 100644
--- a/net/vmw_vsock/vmci_transport.c
+++ b/net/vmw_vsock/vmci_transport.c
@@ -944,8 +944,6 @@ static int vmci_transport_recv_listen(struct sock *sk,
 	bool old_request = false;
 	bool old_pkt_proto = false;
 
-	err = 0;
-
 	/* Because we are in the listen state, we could be receiving a packet
 	 * for ourself or any previous connection requests that we received.
 	 * If it's the latter, we try to find a socket in our list of pending
-- 
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1619774854-121938-1-git-send-email-yang.lee%40linux.alibaba.com.
