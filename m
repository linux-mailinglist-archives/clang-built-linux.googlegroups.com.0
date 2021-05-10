Return-Path: <clang-built-linux+bncBDLYTQ5JSECRBP574WCAMGQENINFQ3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BC073793CD
	for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 18:30:56 +0200 (CEST)
Received: by mail-lj1-x23f.google.com with SMTP id q17-20020a05651c0551b02900bdd1e782edsf9458655ljp.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 09:30:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620664256; cv=pass;
        d=google.com; s=arc-20160816;
        b=jdURqa4+x5vrX0SFLnATOi+mvHwQL5P5TqX62MEBxUaK+RB81CWVjHJcyyPWuTQTck
         UgKJ2fJ+u/LMMTFptx2iFRyEAeYmvk6lYc6GSJqdU4wUBiyEl8f9CCAr426oqFIXmgFP
         OcHnphy1eDAdaYL3xG41Z2JTAE+tyd88S3zaKg0Ouf0y8V84liz9g+82vYAcnFZ1TxlM
         a+280XTPg0aHqry9FTJhkxlUmqC1f0fLoHCc9ORxz5rbx6w38QwhcCCuhuMupKvjCHK/
         bOI6HbhYIhzLnhIJAllIabhmnxOniVPNlre3Epg9sk0lFiShm3JL/b/QRXHIEqdYloou
         +5MA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=Bee63vtdbZ4cI54clr/kCxgwdhSbE/KFP8ANzxxzCyM=;
        b=UbpF9ejWyLyAnovS3Hq96pTOXrxOc8p1C1hdinosJBITkWDqnbi0xMw1Ur4rFzUEuQ
         5jBDBo2D5xZpHjTjZtTZYB+GTGzQuKTAgZbNUJrwiQAyw0aV24TMFI4nM8lY0JRD5HlI
         t3YjcEGc2nKqC7sE0BDwC4ELrlnuo5xtEO+7lAjZ5J9XbrNUEPN4k6MSqGTxKGunNIDl
         CWPnnUBDezdQwWGtEHp1iB+wTjLJd7Hak+n3Luea3BOWn8ZKq5eGYEXFkzLJdp4S5jCm
         5ns43vA4aEZDJmVNvU3uVLbzQgB9NsaUqI8OZUZGqpSjsVq6QRfGCMwksFhsKLZVJquX
         Xp6g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Px1xRieQ;
       spf=pass (google.com: domain of michael.zaidman@gmail.com designates 2a00:1450:4864:20::434 as permitted sender) smtp.mailfrom=michael.zaidman@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Bee63vtdbZ4cI54clr/kCxgwdhSbE/KFP8ANzxxzCyM=;
        b=pam+jelwT/77saVORrSfIQKE38GJ006F/7mWQZaYNodILOFTTwbEI4YlOrcM0aVHgC
         3n5f5+WoSEk5hLg70H7YbyELKZJw9RzpquCjkz0rVvXe5SzoL1H656cGY4OOlbjBK2N8
         IyuvFikZZRsxcx6TewJkg7gkmvsscv0JSec223jEis11Ku4I/5qVU+ruLdPRvbZvh1df
         kUYrE+flilTvtzOzBum4NuUWmOXefAOrxo0MyQa/CjX7e2bdHhVYtUPHN5gNiThFp3sE
         RXx08WRSBZvMxvydBwBHSnmCVxfAv7tuCtVzlj8JZeSSGajTdSw5GPG7DRUGXjRV8vtP
         BnEw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Bee63vtdbZ4cI54clr/kCxgwdhSbE/KFP8ANzxxzCyM=;
        b=h4ovXHnsIKWtoByzBwd7s+OkmBxlpSIj3nVm17D53+jGoc6pj348AzmaBtQOm+13h+
         LFJtPukFky/8VCVh9zm/j2B+723DMopOJgUfjYMVeTot2QLOrv7j0D6Sd0eBe6XtXEBg
         1rXuZMMefKvqXI7WEo+iIDo2fmNZkY5dtvIaI6EtzCB6bkgIMr5g5wBNmAwXGf+B/EYS
         vdAnBU2NftMZniUmYBvKAZDDgvN2zHTzPJSnwW0+kM3E5FrJlWADvUQPWPtLzcq8zm5m
         xRSjbcw39fFWT0VoCbcAw59q3jloQtjEAwmuNbRwyStcxK5zauqkKirR+3e74oR1y0mt
         pfUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Bee63vtdbZ4cI54clr/kCxgwdhSbE/KFP8ANzxxzCyM=;
        b=gYBgxWeELYyIdmNQuOfZC2psJ9SvcwyFpEm53HDTHVrKsjMGF04CX3OI1F9KS+t+7B
         W1UaG7q84wNAcW0PIsmm0zrrezAKSpSDuJNnXTkpSvjG4yGTr01wEmRbviInXl6H8qrG
         8lHHqGdpGJ/wqPuEkTJilUaab/SpsJQWiKe8tg485LO43drJ2XR0SFkzl1vLPOj3r4tU
         YbatqIgy0n8fn7MbqpcWzY8PHvMFG+UKfARl+Hns/lnMRaAdQuhgUPrynpenkpb49W0L
         Ar9QijbaWZoPnPztqR8ICnCxZoS1yMVg/SFN/tZEYNLS4qtqS8pbgtqrsXQ3YAG205kA
         Egnw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532U/5YtAPtcGSItW0aZTaNlpgBqpesGLL7GsJdrpmfN5y1IDyVE
	+qDWeoxeg7ZavEnyfY6XdrI=
X-Google-Smtp-Source: ABdhPJy7wU7YbqKctIqG7U3Qd+3mzgZ4xHLLNWYmMWvG3RI+cif2UesTezGRivdziWes62PgmcPzaQ==
X-Received: by 2002:a2e:bf1f:: with SMTP id c31mr20926997ljr.30.1620664255866;
        Mon, 10 May 2021 09:30:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:7d12:: with SMTP id y18ls1770201ljc.5.gmail; Mon, 10 May
 2021 09:30:54 -0700 (PDT)
X-Received: by 2002:a2e:b0ea:: with SMTP id h10mr20583039ljl.313.1620664254681;
        Mon, 10 May 2021 09:30:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620664254; cv=none;
        d=google.com; s=arc-20160816;
        b=Q2Bcgb4QHyaUuP/8Sxd2qBXElLMvkdMFjA2Rq/UFAgo7alobjE+2lf9Jl0p4fTmBPg
         /OhXMGfITaKMgUjdTnwlOoW4biIxzGCMQJk1WX0lGFC99IxtgfNY4+llVK9z48+kYIbb
         maxayVMJMiyYHCkyxKGVBbYCqL059O2zz5udvL07govDvXZYfGgPJWZn+JVYJa+jXuER
         hKLuK80mXTjKihqhNc+OHMMckH2n1vw8q8Lx1MH9XypAinIdzvHW2PoqiYOu3DaPtR+C
         eMp+WxVr2uy/LZvC2MYE92fz+AUktrTQ6fqv9zdSZ3b+KKsjJujIS71Bp73KE5grJIb2
         q0ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=R6WlYIrjXhMMjZDmiNrG4Yb4zFnbOA06CnHiWUBda2k=;
        b=I6i/gQCJzLlVZDNE5IpStU5ybYgqc+B9/AjEJarq93kbsVNGomzD1iQon1YNsSGr9Y
         7tmhUJA/7YLtc5wCk+BE4Gh5lnfxraI3kjyz1BvcPNM2YKOcxnbuwUArhVUZ6+B2Fg+5
         TpwnNANLYBH8v1Amt9JCjqrg0iyPISWRF/+0cqskdn2NCLOgGvDzIFGUmd4ZZgAQDxKL
         PseZC2a9QVgdWiUHoMStA2hNz+th+iLF4Dn/mAFLEjV3AjlWrE8wnnFoKroYd4y9VaOm
         t0wcxlvaKW5MKe7XC16Ay7q3rpavMqltpA9FQjK9+PLeiIDV0pnhY790lYrHcvh/L5EO
         YCRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Px1xRieQ;
       spf=pass (google.com: domain of michael.zaidman@gmail.com designates 2a00:1450:4864:20::434 as permitted sender) smtp.mailfrom=michael.zaidman@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com. [2a00:1450:4864:20::434])
        by gmr-mx.google.com with ESMTPS id z8si812581lji.4.2021.05.10.09.30.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 May 2021 09:30:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael.zaidman@gmail.com designates 2a00:1450:4864:20::434 as permitted sender) client-ip=2a00:1450:4864:20::434;
Received: by mail-wr1-x434.google.com with SMTP id a4so17288481wrr.2
        for <clang-built-linux@googlegroups.com>; Mon, 10 May 2021 09:30:54 -0700 (PDT)
X-Received: by 2002:adf:cf0f:: with SMTP id o15mr31765037wrj.181.1620664254079;
        Mon, 10 May 2021 09:30:54 -0700 (PDT)
Received: from michael-VirtualBox.xsight.ent ([31.168.255.170])
        by smtp.googlemail.com with ESMTPSA id w4sm22827156wrl.5.2021.05.10.09.30.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 09:30:53 -0700 (PDT)
From: Michael Zaidman <michael.zaidman@gmail.com>
To: lkp@intel.com
Cc: kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	jikos@kernel.org,
	joe@perches.com,
	dan.carpenter@oracle.com,
	linux-input@vger.kernel.org,
	Michael Zaidman <michael.zaidman@gmail.com>
Subject: [PATCH v2] HID: ft260: fix format type warning in ft260_word_show()
Date: Mon, 10 May 2021 19:30:29 +0300
Message-Id: <20210510163029.2217-1-michael.zaidman@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <202105060637.LeEC6ztp-lkp@intel.com>
References: <202105060637.LeEC6ztp-lkp@intel.com>
MIME-Version: 1.0
X-Original-Sender: michael.zaidman@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Px1xRieQ;       spf=pass
 (google.com: domain of michael.zaidman@gmail.com designates
 2a00:1450:4864:20::434 as permitted sender) smtp.mailfrom=michael.zaidman@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Fixes: 6a82582d9fa4 ("HID: ft260: add usb hid to i2c host bridge driver")

Fix warning reported by static analysis when built with W=1 for arm64 by
clang version 13.0.0

>> drivers/hid/hid-ft260.c:794:44: warning: format specifies type 'short' but
   the argument has type 'int' [-Wformat]
           return scnprintf(buf, PAGE_SIZE, "%hi\n", le16_to_cpu(*field));
                                             ~~~     ^~~~~~~~~~~~~~~~~~~
                                             %i
   include/linux/byteorder/generic.h:91:21: note: expanded from
                                            macro 'le16_to_cpu'
   #define le16_to_cpu __le16_to_cpu
                       ^
   include/uapi/linux/byteorder/big_endian.h:36:26: note: expanded from
                                                    macro '__le16_to_cpu'
   #define __le16_to_cpu(x) __swab16((__force __u16)(__le16)(x))
                            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/uapi/linux/swab.h:105:2: note: expanded from macro '__swab16'
           (__builtin_constant_p((__u16)(x)) ?     \
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Any sprintf style use of %h or %hi for a sub-int sized value isn't useful
since integer promotion is done on the value anyway. So, use %d instead.

https://lore.kernel.org/lkml/CAHk-=wgoxnmsj8GEVFJSvTwdnWm8wVJthefNk2n6+4TC=20e0Q@mail.gmail.com/

Signed-off-by: Michael Zaidman <michael.zaidman@gmail.com>
Suggested-by: Joe Perches <joe@perches.com>
Reported-by: kernel test robot <lkp@intel.com>
---
 drivers/hid/hid-ft260.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/hid/hid-ft260.c b/drivers/hid/hid-ft260.c
index 047aa85a7c83..38794a29599c 100644
--- a/drivers/hid/hid-ft260.c
+++ b/drivers/hid/hid-ft260.c
@@ -791,7 +791,7 @@ static int ft260_word_show(struct hid_device *hdev, int id, u8 *cfg, int len,
 	if (ret != len && ret >= 0)
 		return -EIO;
 
-	return scnprintf(buf, PAGE_SIZE, "%hi\n", le16_to_cpu(*field));
+	return scnprintf(buf, PAGE_SIZE, "%d\n", le16_to_cpu(*field));
 }
 
 #define FT260_ATTR_SHOW(name, reptype, id, type, func)			       \
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210510163029.2217-1-michael.zaidman%40gmail.com.
