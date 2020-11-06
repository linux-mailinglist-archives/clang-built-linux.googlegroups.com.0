Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBGVVS76QKGQE5HDABDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id E16582AA0F4
	for <lists+clang-built-linux@lfdr.de>; Sat,  7 Nov 2020 00:22:03 +0100 (CET)
Received: by mail-ot1-x33f.google.com with SMTP id q8sf1160566otk.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Nov 2020 15:22:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604704923; cv=pass;
        d=google.com; s=arc-20160816;
        b=cFsRo9HY32zT1edxmIRtGDdOglkLBsh+wN8aQWJ5bewzsIU8GDh2QmiNmn16ilNgqo
         H0aCvb83gTyYnNHLedbSsKKpMHq1W4ykFNatwpK3hsgf7qHgUShMoCGeLreMSlFr7JVx
         jxkJbx820EVTlf+bhS22enq7ueIkr9SoZmxPDDBE06ylz/cXunHdwBh/ZF8HSXicHkWQ
         fXcr8DZ1UJC1Ds6N+6V/nncZcVDf6K2ulWHD0F+AyzeR1G042KOj1vFfvh/AFT/RzOx8
         BoRPDUcRzJxOzI1RDWqNsO02jwyK2U5bmn5td9elfldseYLasX8W8c0bI6aOP6j5+Zok
         DcNA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=L6D+cCFiGpiipRPzDgFumaM8nAVXnwQxj/lsO0sU0Is=;
        b=pFlHTMihtfgAOSso6KTrZvscuAXE55IhskIXDo/eeXpWPg5jLvFZUnlVC/sHZxLYer
         lWLty7O3GgeBjWA2b3chKOk6tJ/PMtFL6xEx7nQEjOSmkKRts95nWKVmnJDp1Wf80NKq
         jHE1bmQccKiD4ZSgzXHBt/M9spqDU0TbbypO598/fXNx6q5c7Cxs6tcV5F+CP9juh8EA
         GLFLLjKvwxZYIg46zUSh5XWdMqmuN5/aOwzD6arthq9m3eK+Lrj7vjvK4lKEgoQ1c1Jp
         K/4xiBs6DcV75n/0jDge4g28aR44lM5ifPtGCDb9cg14DsWYDZPXRA1KGwXg/4tA4jwn
         HtNQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HTj0zMH1;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=L6D+cCFiGpiipRPzDgFumaM8nAVXnwQxj/lsO0sU0Is=;
        b=Z/1DciuOwBfeMSCBHCg5UCC3TJreIdiGLgZ8B5c67K8tNGKYrgt7XCD8HekXZ4XgTH
         y4xklCXnOaKIg4P4UBknjuTssYXE0cni3EIUZca4bh8d3kUrW03W6xHTiGcs9EGPvlLX
         Nac06u5ojvbc9Ezf/HuVA+QeimASiQtMn2xsoyPkuyEWNTFGQUu1yPHaPO8+piTycwz7
         fWxf8bYWBntRiaZAT59m/UnIt3a3ephkwAngpDd13VviC/CnZrQoxJQEEWytQbP3/0yD
         6Z1zDC+gLeZ3Hf2eT3eK1/6GYmvDaJTLVMxbB7oUSl2eHFeohPEJ40upTfQZ9NJTWkVX
         jgkg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=L6D+cCFiGpiipRPzDgFumaM8nAVXnwQxj/lsO0sU0Is=;
        b=PdnRsGBTPCh9ys/d/qiDmv/qOoTBuDJbDDZK9/zsVS3Mq3hAOsZzQ7ZPvS22d3/Pz4
         iE+8kHnUnSq4UV1qm2+ihmEQd5kfLzMFoxEXi/ceXDFR9p21JOpkdJP73ta/D63H/YM3
         ZJuBLiNw1AWLQ/4lrGST/MSsWxyh0HiudP2UJxm1wTpFXCxandCVLiz7OCGnHH5T1Sl2
         PUNyBelphoHblL2D3Uy/J/MJ6kCuAcelAZH3dWCfA1Qvh5w5g9IzMPF46Jo7/9kF+ZSs
         Bxb65tHR4Xv9NWk8F+cUi4rQxTr3qdJJAWKmFAPOoeyXVd+nhx7SUxKZWlgHwZHwyh8Q
         nUZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=L6D+cCFiGpiipRPzDgFumaM8nAVXnwQxj/lsO0sU0Is=;
        b=YGDs42fRvZFIMZLdX+CYTOmvlK8MVQVhPmGGEvknCCk7jhgUd1QptQEHUfEQdgbvMf
         I7pwl2TW3T527clq1NFbmoMielGUyMp+NxauesMd9vw6sIqZUZi5Q4PQxsypuGDoKUvZ
         GuCv9EFeYAG3FRZApmztGdONkfI61w33QJFwQiAkK7bRta3BSB73zNTGqIXZRZL295n9
         jWyMo5fy1hKoxVDf1NXUa4D2BAlFRsVDkFOCSdBUqp6a0nwF6B/aF3VmcdgPrakgnmVJ
         EGIk0QUSGGM6Z2Ic4hVAZWs2SJDnqd1vGrSvsvf0pw5TFCz+93nDA2tqZG3nuEqaLppa
         C5cA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5326LYw8+ew2CeiIpdsMFSWvlDc8oUI65H08y7Ag4m9Ffefr/65z
	CwYd6C93+Sbw1S4TcghEE0M=
X-Google-Smtp-Source: ABdhPJy/cox2HyIkxCWXZcDMp9Ge945ILTrTzH2y6HVNPmM/3gazLbXIdesHBkwkVFyXVHUoggaiCg==
X-Received: by 2002:aca:ab50:: with SMTP id u77mr2416094oie.111.1604704922931;
        Fri, 06 Nov 2020 15:22:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:130e:: with SMTP id p14ls196396otq.10.gmail; Fri,
 06 Nov 2020 15:22:02 -0800 (PST)
X-Received: by 2002:a9d:3a1:: with SMTP id f30mr2783430otf.312.1604704922361;
        Fri, 06 Nov 2020 15:22:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604704922; cv=none;
        d=google.com; s=arc-20160816;
        b=s2cLiSx1KUTy5L40IkWsQFdM/SuyBk9rpfNSe8fQddZUG1KBkYUTM9u07w4d39KQjf
         1kekas06y8Mz5xx9PjHrj9KMriWP0Wh3Iqcy1obriqoL8OnqyUq171QpUKqhxI5w8Pee
         Ze0Cl2uCgc0M0JUss126oYgrdCFw7NN1s4ZC7TnXEIW1xLaeBc8YkQBpnXUmb66Kv/wi
         rnnmG0iPGU3rw4dvEQbq9Am5a1Uk52IIzOduIH5NRPRPUp5Pr0p5rki3vzA9erhZ6TK2
         I4zB0mgl0cHE6jhd6iDc4B874+tcJrcy0btGeMZusyL9m1GkDCg6NEg0Nx4adG7QtxJF
         ZLIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=9kgi0XFLYWD6SBPla2WObtfMjgECeVYCZRoQd1futD0=;
        b=AHR9CF5amcW3GrsYJEzildfQdsdIJvxDKH3zGWPbyscuzp28VeW0LD9oluD4IlT8ca
         IfC/VQ+7xwG8RC84hkBsLrkqeIq8FvkO7/qN3vDcefJ0EdeXuCpy07Kf6Esg0aZjoqFx
         6yv2jF+idVmjzyqZ3mQThWIAq+zc2RxunrZoHB4bcIq262rGl8WlkLbx4xPvR+oKXtAE
         VmVgOcLj+0Cd+jGh2/bmdvgOUoiEirsjdW6se8qF+09/c7xjv/Yog73J2TEXHz50Fr7L
         rpXQFB/N0IP7R4cUJ3qTG40wdEghH0PFiovDneejahOOS3pRyU6ZsKdt8YBe8C6Mv3+B
         ey8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HTj0zMH1;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com. [2607:f8b0:4864:20::741])
        by gmr-mx.google.com with ESMTPS id d22si253067ooj.1.2020.11.06.15.22.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Nov 2020 15:22:02 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) client-ip=2607:f8b0:4864:20::741;
Received: by mail-qk1-x741.google.com with SMTP id i21so2693432qka.12
        for <clang-built-linux@googlegroups.com>; Fri, 06 Nov 2020 15:22:02 -0800 (PST)
X-Received: by 2002:a37:d0c:: with SMTP id 12mr3931626qkn.418.1604704921837;
        Fri, 06 Nov 2020 15:22:01 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id m2sm1577647qtu.62.2020.11.06.15.22.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Nov 2020 15:22:00 -0800 (PST)
Date: Fri, 6 Nov 2020 16:21:59 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Matt Turner <mattst88@gmail.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Henrik Rydberg <rydberg@bitmath.org>,
	Jean Delvare <jdelvare@suse.com>,
	Guenter Roeck <linux@roeck-us.net>,
	Richard Fontana <rfontana@redhat.com>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	linux-hwmon@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] hwmon: applesmc: avoid overlong udelay()
Message-ID: <20201106232159.GA3586073@ubuntu-m3-large-x86>
References: <20201106231710.GA29287@macbook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201106231710.GA29287@macbook>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=HTj0zMH1;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, Nov 06, 2020 at 06:17:10PM -0500, Matt Turner wrote:
> On my late 2013 Macbook Pro, I have a couple of scripts that set the
> fans to auto or full-speed:
> 
> fan-hi:
> #!/bin/sh
> sudo sh -c 'echo 1 > /sys/devices/platform/applesmc.768/fan1_manual
>             echo 1 > /sys/devices/platform/applesmc.768/fan2_manual
>             cat /sys/devices/platform/applesmc.768/fan1_max > /sys/devices/platform/applesmc.768/fan1_output
>             cat /sys/devices/platform/applesmc.768/fan2_max > /sys/devices/platform/applesmc.768/fan2_output'
> 
> fan-auto:
> #!/bin/sh
> sudo sh -c 'echo 0 > /sys/devices/platform/applesmc.768/fan1_manual
>             echo 0 > /sys/devices/platform/applesmc.768/fan2_manual'
> 
> Running ./fan-hi and then ./fan-auto on Linux v5.6 works and doesn't
> cause any problems, but after updating to v5.9 I see this in dmesg:
> 
> [Nov 6 17:24] applesmc: send_byte(0x01, 0x0300) fail: 0x40
> [  +0.000005] applesmc: FS! : write data fail
> [  +0.191777] applesmc: send_byte(0x30, 0x0300) fail: 0x40
> [  +0.000009] applesmc: F0Tg: write data fail
> [  +7.097416] applesmc: send_byte(0x00, 0x0300) fail: 0x40
> [  +0.000006] applesmc: FS! : write data fail
> 
> and the fan controls don't work.
> 
> Googling turned up this [1] which looks like the same problem. They said
> it began occurring between v5.7 and v5.8, so I looked and found this
> commit.
> 
> After reverting commit fff2d0f701e6753591609739f8ab9be1c8e80ebb from
> v5.9, I no longer see the errors in dmesg and the fan controls work
> again.
> 
> Any ideas what the problem is?
> 
> Thanks,
> Matt
> 
> [1] https://stackoverflow.com/questions/63505469/cant-write-data-to-applesmc-error-after-upgrade-to-arch-linux-kernel-5-8-1
> 

There is another thread on this regression:

https://lore.kernel.org/lkml/20200930105442.3f642f6c@aktux/

Looks like Brad Campbell has a patch that has some success in fixing the
regression (although others are saying it breaks their setup...):

https://lore.kernel.org/lkml/3c72ccc3-4de1-b5d0-423d-7b8c80991254@fnarfbargle.com/

Might be worth giving it a shot and jumping in so you get CC'd on
further revisions.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201106232159.GA3586073%40ubuntu-m3-large-x86.
