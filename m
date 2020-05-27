Return-Path: <clang-built-linux+bncBDM5DRMBV4ERB5HIXD3AKGQE7NKIQVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 30AAF1E3DA9
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 11:35:49 +0200 (CEST)
Received: by mail-lf1-x137.google.com with SMTP id a17sf5341782lfr.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 02:35:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590572148; cv=pass;
        d=google.com; s=arc-20160816;
        b=Tm5GwfP+FEqHwGzrJR56btFicnRefUHJD95KjdkRt3GlFhecyKHKZU7gnQL8/7msSV
         ALWNrL9HIDOXrrnbvMoBdRSFydHmYWRRWXjXlOtCzaauPMmi1kvEFl8VG5+zmT1gTKbm
         gONr3Btfw8lszzw9zq4W2LA4cEJnzcdbm9YaY7oHF2QXx26bX8jmEOKlU+0KJULFMqTt
         upbjreQlKpbpGxDLkCWceLAP/5Gr6HOpXht8moEJylHeJPfHA7dXf0rxxHEibEO7WmX4
         fLJ6GvVkoDSiJsznrN2I1KiA3k1guomjJR1LgsTOyiI+HKjbflRFL9NTcuVlwGGPOrQK
         3BSw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:references:cc:to:subject
         :from:sender:dkim-signature:dkim-signature;
        bh=clXP8Bh+AnFYe7chjZs92REU3rfMWaXcYfxI/elJwoU=;
        b=a5jSuZwYEKnyhuo8dvBaQtXfUkuaejdrqsTXBfwJ+dzhqReQd33H+HmnEcV6ftUJ5a
         NdgN7ynq4GdspzAhhNEz34FG2d83m/BfqGBXVl9EulB1mmfFSgC/8sZvkFqexv7eTB2k
         TcSYoavDkuQz1J5oAaJY1Ww0gtv62jmZ73lcX5W0pOh/xz3U/RV7Bf3/HHVWfdnCC+Ek
         ysNGZ1QCFRNO1HvOFSgwHLpsJz27VTa8OOLeXpy5mHqVKt6iJWZgcuIVNg62Yo08XYoi
         xoS1OnpbqmwtS0wp6zjMNkaATUxlRA4tQaksdz6mHMmnNafWv822fKDZh139ry+Vyqco
         dhAw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LAu6QNT9;
       spf=pass (google.com: domain of tvboxspy@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=tvboxspy@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:subject:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=clXP8Bh+AnFYe7chjZs92REU3rfMWaXcYfxI/elJwoU=;
        b=are/xUQqMYdwMSRiTeZYOcsTb4oLCh/lCMOSjcSCxz39yTC8q3HKKMfIyAuVGQBR6I
         9ivERXOpRloG6aaepSsaCUTdskQd/sW0XjGg9elgc3S0hp9SdfMqOlZUCPRzFSAZd0F1
         RzOAk+ncuvQ/exNm0togHeUBc57sU7AlxQmWihAuGSx2ihEGCPXaCbR3SFIwI12XQoC2
         mfAcLQXPx/ZK8PKn5V441vqNv1IrQu2/EHx27hZbkS/5VwqrRudV1zG+W9cSkv5v0B8A
         +IB6zbJpgB9NeN/4FYJzxeRvrB1uHNykiWc+sqQ/DaZXfvmVRh0DWP2FfrJrH1DAq/i5
         atpQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:subject:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=clXP8Bh+AnFYe7chjZs92REU3rfMWaXcYfxI/elJwoU=;
        b=pSbFSr5HjVsdpuNmz9o3hobIQvWHNAIO+yaL1GWBDkPd/EM7cjNCOa2J9BxnVVvOky
         PipPUJGOedM5tfnFA6qJZEtR7pvV3b2jjEf64x/xv/kOMAgNKW0cPKrnm+xJU2/SUBFC
         ++EL1sjJMpO7UvyfHO8BtyaVwmLu+aEdT87QSihCVEA91rbbIjoFXNYFW7EKCIf6lgdc
         fV8uzhOTIwklZZM/3zEREiBoHwewN3/jc7yyIvhNAWDWfCMUUnYsXOnQzTi0cxsNmGi0
         O02U4SpLdfZygJ5sCLlGkzxG2QOjgqfVWi7lhLyvA/HmXapc+lD44aGFTjQrRMhQE4Iy
         hb2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:subject:to:cc:references:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=clXP8Bh+AnFYe7chjZs92REU3rfMWaXcYfxI/elJwoU=;
        b=QiUvn0VP58BQBBH2ETb7WnwsKsQrrzBZHUay0aL9h7BRnmqCBijCbocvMTczPhLYec
         tuCISm5Lua2DKUi4MKh+oF1VzcRqaRnHL3ZrGwUirbEMAa1y9L3yTns3dPQwQCQdHzRx
         IvEgzNpFc2VHl+nm3UWdfI8VS3aycaTtHKIN8ZcF3D923SURZBP+c7Yj4MEb22FQfWo3
         Gh6tRh9HZD7p4FVVySM+hXRVcmHpRi4/VnDq5GtTh+3npf0E8QzbsB6gHQNmfv39l3ec
         M6kPPng0nydhTKAHgodtLvRQi04utcm5YRj1bOwvL9b94I7LCgIUOW7wdvyoQNPAGFSJ
         3AZg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5308ZIpTYsXoNav4r6hTqK0OTDsee/D1dxOD3VqEXVkmfvZfmyDZ
	oDUxAQOPJZLaXaUxjPx+3ts=
X-Google-Smtp-Source: ABdhPJyZ2RB9MSC9vGx0D0TSnRILVSp3ygEXWEqCEd6agoiWQEKwnO7Nj1iQKRw9SitcWeIsrFBI2g==
X-Received: by 2002:a2e:760b:: with SMTP id r11mr2745622ljc.69.1590572148662;
        Wed, 27 May 2020 02:35:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:4b43:: with SMTP id y64ls4074101lfa.2.gmail; Wed, 27 May
 2020 02:35:48 -0700 (PDT)
X-Received: by 2002:a19:5013:: with SMTP id e19mr2603145lfb.95.1590572148129;
        Wed, 27 May 2020 02:35:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590572148; cv=none;
        d=google.com; s=arc-20160816;
        b=RV6kJmf37y9OCx/Gx9VrTK+JLqwiLuZbRBJ3RFWjJnE9A0KWWAsVG+wALTpr2R1yuj
         NVDauuFNZTVn4IchkMyiVe8n/4lz3VVafJLW/Dw3m+qPbZ/zJD5rg00bVMjuYAjYbtYb
         FnCRJ0Q39EHe0JPJnTW1F/2564o2unv4wanSx17BOWRdZlBhfayQ5bHwJT/S8Ye5eQuC
         0AtZtX/e4N/sNtzooSiooqq1+OFjbhrb+ysnU49+rtWyc6mQeazxfRNdxn7299CPmfdV
         009boL+9DPHutzfDaJCP3gdvv7g8zSY1qgjD85HaTk9X+CRZlSKdfPw0GDSc6uutZlkj
         XSow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:references:cc:to:subject:from
         :dkim-signature;
        bh=cVKiFifSQaq77jAJ1OyRAVFF5uju10zINbtcPxjN5rU=;
        b=dWiI86ACu9DvyNxwZTz3/93T2cquRIDvZgh4zUhGonUarEw+t1nVOcBZ5y+HsrWZWZ
         Z+KINfpbIUyEoRWMB6fwhjFa9P2ZTOB0hbRfd4ewMQKc7plZBJOAQ1/klqNd2iznHV+n
         bdPW1KfOK32RjhkubUdaEuoK4lIpfqQSQk+rOtM2RxfMFeEPS6CzePDBveRAVqTzDatt
         J/fb+YAtcJItHWbNvnHioD2GlZ38WR2tEkGyC+3ZLsL75mc022MmqGCvtzC1QN60qI2u
         IaYJDe3GQS8q549ZjDBy5YBP/KsuxhcZVkv8LV84sLNAyQ95KVSRuiDXh51lgtm76VOv
         YwfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LAu6QNT9;
       spf=pass (google.com: domain of tvboxspy@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=tvboxspy@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id o23si131339lfb.4.2020.05.27.02.35.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 May 2020 02:35:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of tvboxspy@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id c3so19038607wru.12
        for <clang-built-linux@googlegroups.com>; Wed, 27 May 2020 02:35:48 -0700 (PDT)
X-Received: by 2002:a05:6000:146:: with SMTP id r6mr24997508wrx.9.1590572147796;
        Wed, 27 May 2020 02:35:47 -0700 (PDT)
Received: from [192.168.43.18] ([85.255.237.0])
        by smtp.gmail.com with ESMTPSA id e21sm2066844wme.34.2020.05.27.02.35.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 May 2020 02:35:47 -0700 (PDT)
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH v2] staging: vt6656: Fix warning: unused variable
 vnt_frame_time
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: kbuild test robot <lkp@intel.com>, kbuild-all@lists.01.org,
 clang-built-linux@googlegroups.com, devel@driverdev.osuosl.org
References: <202005241918.IseLzHqZ%lkp@intel.com>
Message-ID: <5096f399-03e7-77e1-b334-947aabc44d14@gmail.com>
Date: Wed, 27 May 2020 10:35:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <202005241918.IseLzHqZ%lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: tvboxspy@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=LAu6QNT9;       spf=pass
 (google.com: domain of tvboxspy@gmail.com designates 2a00:1450:4864:20::444
 as permitted sender) smtp.mailfrom=tvboxspy@gmail.com;       dmarc=pass
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

In commit 61bb798767e4
("staging: vt6656: vnt_get_rtscts_rsvtime_le replace with rts/cts duration.")
not quite all of the code was removed.

Remove unused vnt_frame_time variable.

Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
v2 corrected the commit 

 drivers/staging/vt6656/rxtx.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/vt6656/rxtx.c b/drivers/staging/vt6656/rxtx.c
index 5530c06ffd40..5dd6b4d2bf20 100644
--- a/drivers/staging/vt6656/rxtx.c
+++ b/drivers/staging/vt6656/rxtx.c
@@ -39,10 +39,6 @@ static const u16 vnt_time_stampoff[2][MAX_RATE] = {
 #define DATADUR_B       10
 #define DATADUR_A       11
 
-static const u16 vnt_frame_time[MAX_RATE] = {
-	10, 20, 55, 110, 24, 36, 48, 72, 96, 144, 192, 216
-};
-
 static const u8 vnt_phy_signal[] = {
 	0x00,	/* RATE_1M  */
 	0x01,	/* RATE_2M  */
-- 
2.27.0.rc0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/5096f399-03e7-77e1-b334-947aabc44d14%40gmail.com.
