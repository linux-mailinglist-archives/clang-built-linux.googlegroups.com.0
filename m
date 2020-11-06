Return-Path: <clang-built-linux+bncBDBZ77HK3ICRB7FSS76QKGQE7DHBPDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F0562AA0C9
	for <lists+clang-built-linux@lfdr.de>; Sat,  7 Nov 2020 00:17:18 +0100 (CET)
Received: by mail-pg1-x53d.google.com with SMTP id o11sf2069965pgj.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Nov 2020 15:17:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604704637; cv=pass;
        d=google.com; s=arc-20160816;
        b=vVXyl5E3IbVFSxNsIISupIg7WE6zecvdsaO1Pz5MbKchcV6HTNWoEfiP/nnAKHwGlh
         A3w7ZoC6h7PZ+HUC4oT+dlgQTYD5nZfZwGuCf79fo/zOd3GxNy4esad09Ue+exqh1acL
         nRVOY3cxMtAk5Jiok1rMVI3QUjT0wIaeTYGb/ake3UWBcGtOhuU7V61CY++8tWP6yRVb
         dVvMi8fmHz6SKvRjHwlFEECR9qiI8IzpYOlrdwyk/OtRv0my5INpC+IU1Uo+WpU5t9Ve
         0D4URBQs0NmPUgJA8+tvtMpPXdwRdlVqTiuxa54+3OcYYp284HnqaeXWXfGKO73jsk7Q
         67/A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:mime-version
         :reply-to:message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=Z8rs9JT0cnxYDYECuCHGW+Yxcn2ONp+IFo190C3vPz4=;
        b=W6KKzaIU7i2JVEWp3wTecl+3CBnwat4+Un3hbOXYb98Uh/XYdurhnj0T1P0NBC0hV4
         mAoBw6W1YqQN+Hoefq/8k5R8N11K8hmtni6EvY/hqTPiNL6CqTxQm77eBJVJX01m0PkK
         tnbHk3N1rhsuiteQ1FL8fw29D5XOFo/5gtVrvLUo3Wrprw/9Mwwli7L+WOu2wHYZeUCS
         thlwhFvi4HSx64PgTSKAT4FsDDiQ/678FbFRbdm44rUrRoxeiAAQfLMNPTNGGM/xgU85
         OKQZbG+EQpGUvw6O8NHfmYzFKn3a6Lk/vcrGFQjQfPjhtmFGLT2ZmfYKjpB2wvi1+dxy
         sfVw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YovXZXZe;
       spf=pass (google.com: domain of mattst88@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=mattst88@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:mime-version
         :content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Z8rs9JT0cnxYDYECuCHGW+Yxcn2ONp+IFo190C3vPz4=;
        b=PohbqTWiSiOFramnb4lDf15u6wZnYaq5/9gtR2Jsp9WjFjgLJ6l3SKizWUDWeKKnzv
         q+oy9/Wa38UVwOUC5WV/eIUlMtsCrf7vPeTs/Li/goy2qw2/drWtvs9/j00eDdHkrNEQ
         wyQaU5BoJBj9HqPzKZ8NVnAsztNqkS0SBubcfcW7FMMzgA6KkOoRUTCE2g8p8jOl2swT
         e8o5QHh1/qHT5yJrqwa8rlkSazbZqzIk51yDed9Y2lLvFeRc3iAEQT/rjnaJECIwLutw
         cldVTPdwtb1CrWbePU4O4UtkeT7o1lDU1Rko3Lv4GhvoHPtWP0Ac33+U4XTEZ5lKftpn
         61Eg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:reply-to:mime-version
         :content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Z8rs9JT0cnxYDYECuCHGW+Yxcn2ONp+IFo190C3vPz4=;
        b=HW3b2bVcfl+MyiUEPKPoMGL1YI228tTAbObjUb/LBZVQ0Ca9bq6CfMPElmzoAlJOJn
         3IMFp1v+ZipCfmpEJoycWWN1pJjbLLTtao2mdZ8CDxjkRQ+NqPuCX4paVEzf8yoK4tCN
         0tH0mXSMpLZPKzKr3lcbRQFJOJjoFUxDj4GYK7e7AiTbFF2bQwYDqPFzLU3Yusj+6t4S
         hND+uzlZu4Td0SmEtXG3sBJCJgqqL8ntD9kfEQcS1VDrXQjoBDHVy+KzSVIxjOXBlurF
         kVtc9CYdt2qET0gKf0Y5ZD55e++EPcyFDPDBTd/w5L344DBdqIXL2fjySoM1AzREq/C1
         aKIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:mime-version:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z8rs9JT0cnxYDYECuCHGW+Yxcn2ONp+IFo190C3vPz4=;
        b=Z1lCTbFK24nepOSSbWrtVXfXgpYZ+as6MYBf7x1bwjBVgdd9JMVNY3Jn3hejrXBuGc
         zhmG3HIOUSdJSNc6Fqkp2BtPCFH/4SqcH2nVkFjsoks8ATy7F/F1FSAxc3L5pdem2dEX
         OtlSAQhrFVn4/nSibHpQB8UrK79nAGRLadslO5dm4EzQQDVxmh9dwexmVyQmVUjxQCdJ
         QlgxiG/XVix880hynZID6rCycmCboU26MGfiXi9AR/15mYif4C6xBOv4S54GfmTW4lXH
         WsPOrdsmO5o4FqEMz8ghPPbgDEb+rNe+6Y40QikZoCD+nR3foJ268VcSN3JwlGjqn6/Y
         /cWg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5312eZaaDi/ALNUYCbxiycM+X3d3VSgVunUCS1ogcavbVRrT3AzH
	yzUvc1S24SPkXlfLOFhBJNs=
X-Google-Smtp-Source: ABdhPJwX2eF8FY56Ti2qf6Q+xLaT6d8yjFtwrZXvgtWRIN3ZZbPCgJi7GN7lJNUOcPn4OqDvzlVsCg==
X-Received: by 2002:a17:90a:34cd:: with SMTP id m13mr1972666pjf.201.1604704637093;
        Fri, 06 Nov 2020 15:17:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7745:: with SMTP id s66ls1080001pfc.0.gmail; Fri, 06 Nov
 2020 15:17:16 -0800 (PST)
X-Received: by 2002:a62:ee06:0:b029:164:20d:183b with SMTP id e6-20020a62ee060000b0290164020d183bmr3942356pfi.4.1604704636539;
        Fri, 06 Nov 2020 15:17:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604704636; cv=none;
        d=google.com; s=arc-20160816;
        b=qOVZ104tu1mdK5VnkV6nc4HAl1RMeSx3DQmy74RT4DzF1/aP2rlXVMizg6CByPG3Hv
         uaJTG4HFLNjV4L2o2DZGgdUtW3Bx5O9pFUKxPD/zziCaWbolcmqb0euxW+JFy7F5mbfd
         D5u9JKyBBCmk90pEnvZ9l3lasgA56JUb+H5oh4hVDkcLtnJDe5mYhckOtUDVMfhxRt8M
         pBXCOfb7HEyWKv+v0I4hMaFL2/+JWVnHSh8RHgCRWzZMH0Azq9Ir2Pob+dJNWCqf0O0J
         ceqW+3itta5al873fNsIYpscjGcqw2d0jhDbZlnqFSOWYX91kuKxnszq4Wy7VNEjjIR3
         uKtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:reply-to:message-id:subject:cc:to
         :from:date:dkim-signature;
        bh=gPpSIt1dr7u/yEw1A9ps6+8EjvWvm8VXL/7vqW1e/eQ=;
        b=cjrq7uW94iAnKCIt6BTUYhsR98+A3NNdXcMa41yjYLBUtKMlBwGyvQV6wJ93B1Ykqy
         UZIfaXXmIaTwyiKhhrKW4fbcSt9yI+wkLRywzGxKQLLVFaJQInr4QrwyXwaoeD/L37yq
         PhMprnIXIDnr9CT158yeXmkygFQw2AYYZvOwG6xM3FsR25ekry1PLuA1zK0QqXr6tTUK
         oAslYk7mqrqQcL+VKOQopGIRC7DxwvixGEUFBZ74WuKotKimilrt2+t0spmyLhoR6FuD
         O4dD5nA2T3paPaUAgKLlbwfAxL7DBcF3gSAZXcDWBq43u1mAUkPzIGTYjrODKW1ACLKa
         cgfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YovXZXZe;
       spf=pass (google.com: domain of mattst88@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=mattst88@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id u133si231932pfc.0.2020.11.06.15.17.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Nov 2020 15:17:16 -0800 (PST)
Received-SPF: pass (google.com: domain of mattst88@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Received: by mail-qk1-x743.google.com with SMTP id 140so2716829qko.2
        for <clang-built-linux@googlegroups.com>; Fri, 06 Nov 2020 15:17:16 -0800 (PST)
X-Received: by 2002:a37:6fc5:: with SMTP id k188mr4025151qkc.317.1604704635770;
        Fri, 06 Nov 2020 15:17:15 -0800 (PST)
Received: from localhost ([75.183.140.180])
        by smtp.gmail.com with ESMTPSA id h6sm648589qtm.68.2020.11.06.15.17.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Nov 2020 15:17:14 -0800 (PST)
Date: Fri, 6 Nov 2020 18:17:10 -0500
From: Matt Turner <mattst88@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Henrik Rydberg <rydberg@bitmath.org>, Jean Delvare <jdelvare@suse.com>,
	Guenter Roeck <linux@roeck-us.net>,
	Richard Fontana <rfontana@redhat.com>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	linux-hwmon@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] hwmon: applesmc: avoid overlong udelay()
Message-ID: <20201106231710.GA29287@macbook>
Reply-To: 20200527135207.1118624-1-arnd@arndb.de
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="GvXjxJ+pjyke8COw"
Content-Disposition: inline
X-Original-Sender: mattst88@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=YovXZXZe;       spf=pass
 (google.com: domain of mattst88@gmail.com designates 2607:f8b0:4864:20::743
 as permitted sender) smtp.mailfrom=mattst88@gmail.com;       dmarc=pass
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


--GvXjxJ+pjyke8COw
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline

On my late 2013 Macbook Pro, I have a couple of scripts that set the
fans to auto or full-speed:

fan-hi:
#!/bin/sh
sudo sh -c 'echo 1 > /sys/devices/platform/applesmc.768/fan1_manual
             echo 1 > /sys/devices/platform/applesmc.768/fan2_manual
             cat /sys/devices/platform/applesmc.768/fan1_max > /sys/devices/platform/applesmc.768/fan1_output
             cat /sys/devices/platform/applesmc.768/fan2_max > /sys/devices/platform/applesmc.768/fan2_output'

fan-auto:
#!/bin/sh
sudo sh -c 'echo 0 > /sys/devices/platform/applesmc.768/fan1_manual
             echo 0 > /sys/devices/platform/applesmc.768/fan2_manual'

Running ./fan-hi and then ./fan-auto on Linux v5.6 works and doesn't
cause any problems, but after updating to v5.9 I see this in dmesg:

[Nov 6 17:24] applesmc: send_byte(0x01, 0x0300) fail: 0x40
[  +0.000005] applesmc: FS! : write data fail
[  +0.191777] applesmc: send_byte(0x30, 0x0300) fail: 0x40
[  +0.000009] applesmc: F0Tg: write data fail
[  +7.097416] applesmc: send_byte(0x00, 0x0300) fail: 0x40
[  +0.000006] applesmc: FS! : write data fail

and the fan controls don't work.

Googling turned up this [1] which looks like the same problem. They said
it began occurring between v5.7 and v5.8, so I looked and found this
commit.

After reverting commit fff2d0f701e6753591609739f8ab9be1c8e80ebb from
v5.9, I no longer see the errors in dmesg and the fan controls work
again.

Any ideas what the problem is?

Thanks,
Matt

[1] https://stackoverflow.com/questions/63505469/cant-write-data-to-applesmc-error-after-upgrade-to-arch-linux-kernel-5-8-1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201106231710.GA29287%40macbook.

--GvXjxJ+pjyke8COw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iNUEABYKAH0WIQSzlptPDvl9ch5jjr2cglpmBdQLvgUCX6XZdF8UgAAAAAAuAChp
c3N1ZXItZnByQG5vdGF0aW9ucy5vcGVucGdwLmZpZnRoaG9yc2VtYW4ubmV0QjM5
NjlCNEYwRUY5N0Q3MjFFNjM4RUJEOUM4MjVBNjYwNUQ0MEJCRQAKCRCcglpmBdQL
vkTXAPwOlyVrZemN/MxaBAOxSwKtX4/VgdeqF+d7p43HqZ3hiAEAuax5nEL5cMOV
8YjzQAu/SHiGfHqBBT5A0qMLP03KOwA=
=WUnV
-----END PGP SIGNATURE-----

--GvXjxJ+pjyke8COw--
