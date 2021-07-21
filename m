Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBUPU4GDQMGQECCHSZBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3f.google.com (mail-vs1-xe3f.google.com [IPv6:2607:f8b0:4864:20::e3f])
	by mail.lfdr.de (Postfix) with ESMTPS id C232D3D1741
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Jul 2021 21:49:38 +0200 (CEST)
Received: by mail-vs1-xe3f.google.com with SMTP id c18-20020a0561023a52b029029965ab3623sf1040542vsu.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Jul 2021 12:49:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626896977; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZfYfFSc37cy6Q13j2WPnCvpo3hm6T7xNnSl+yNimbJEWEdZ1ei1K0miXYeokTfA+ay
         NCsLNHVBZOWx2fD1sRCBFY0fs1TUlQOmtgJ8hJHU0qpE/09HIkcPNGGjH4g2V9YoaQQ9
         +T49hihVTQ9F3Hh0Vy1YsnaQwwIzx+m6DjHxl5CzkpPABQ9nGmxcZ07V6mpO/ja0ctGa
         QSwoqSY5o7k/e0KA5IEkmBvTGNJVB5IEsK8lofwOn6rnZ6VEk0yLnKib3303CDarJyGo
         JOp1I/iW9NU+Wq7uspdlJcmFS1shGOExCc+G9o5QVSKonVV0pAJ+FGpGUkwFCMACCViO
         9qrQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :user-agent:date:message-id:subject:from:to:sender:dkim-signature;
        bh=nS4q5ltnA+HLxK7ZSOWP67Cuu7NNa5IO+QNN1YzqCf4=;
        b=KiChgAB+RISkQaYf+NDL+J6UdqtuhaJAL1Qdz7dXBxntgjFZrIq8utjYqYaIaLiIfW
         NGvfdL4JF6rwOMQf1qhyBTYIMcUvB3fiPRqY2TjBKZcyHHF+ZGnfagBa9W5FVS7tMgjs
         pVhjV8m83/z3MiSpDI8Fqweq+LHWR6w+zssgnYyFr17JibfQoJjaTT4qKJ+QfaGYVhYh
         rThGrCQlnrup4Wp9Fj/Jqe8RedPPjdozjoh2ImN0erBTjB8xnbW1x9N7OffiQatfHKfp
         Ck+i2UTbCRZ9yfDyHlctzWmcJs2rvpvjOWTLhu6BBnp8+COG1abmA1kULKgF4TSdMmi8
         6q7Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=XY9rYTN2;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:from:subject:message-id:date:user-agent:mime-version
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nS4q5ltnA+HLxK7ZSOWP67Cuu7NNa5IO+QNN1YzqCf4=;
        b=AJ79hQrcaeCHID2VZYLC5B4YWhcP/g00BuT9GhwnWuanfcqHsSrG2wiJpLMcKayvk8
         6arf8ogLqqy8vR49XmIT47JxqLQrbaa4qXoRj5V8cjZLB5iQMsv5dCrOn9VGYZ9154zy
         TKbx3WmD7gUtk2JKIhLsbajs/BWmGKv4Ul9mj5ApCzohCPwmB2PMfZEhfNhNIJAsSZyG
         MNAc2RLd2VNFwR/jBF+Yl+oAAfEtKbkZhS++nvB8JXed+/CmCMAQghlpcNK932Ed0Up9
         +Ja1QLO6YbXMNJDvcodNt+eCA1hTMNDXod5vhN2goOQZYudI9B04xUGRaZzd9b4lpVJy
         nqJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:from:subject:message-id:date
         :user-agent:mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nS4q5ltnA+HLxK7ZSOWP67Cuu7NNa5IO+QNN1YzqCf4=;
        b=AAZGKDmPgzUFykd+QZ2Mxr6uaMYMdl8muE+YoyZA0dKzB2vfOocecwjZ1KsCErBdNA
         uIekWrnTNMxVY/tw92+2aFZ6+beHT11tO7sN2TVoA3pSAzaRyDAyik3/hAoHnnGfw1Ih
         ae0vYs9ZcWkTTNBKQh5Z7bKquxOLPSXsjH8FtHXwk5LRW3aObmjb6eovf6r1vtXcOxmo
         F1epyUPkTLrZ4aK9vPtdJMXKZ9n25NcSiNJ5p0ZO401BfPyzLwePf8noILe22g94MShE
         cQ/divpbEAgkIiu/SWeiqiuK1rGz8C2hzYSryGg2t31ScsoPj+K+jagjg3LdYgF+GsEV
         YGNA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Va0vX9bfGOi1PTyKuo4pmw1/CrKJjwaPtmzeOqEq5+qXxugYl
	zWsFYgbynGfXIHu9UVPrV0A=
X-Google-Smtp-Source: ABdhPJxfMuAOF8yGvFe7g6WvpN4voHOuRu9wovSWzPFUj2bjGqdstllm4A8Yh4UOLEhr+0umIWSOhg==
X-Received: by 2002:a67:6853:: with SMTP id d80mr36867450vsc.13.1626896977734;
        Wed, 21 Jul 2021 12:49:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:a81:: with SMTP id n1ls883638vsg.8.gmail; Wed, 21
 Jul 2021 12:49:37 -0700 (PDT)
X-Received: by 2002:a67:7206:: with SMTP id n6mr19835721vsc.1.1626896977182;
        Wed, 21 Jul 2021 12:49:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626896977; cv=none;
        d=google.com; s=arc-20160816;
        b=tnlp3I0TafD4BaW0zV06SqlpdrXefow9SoF+esEnosOgQYp4VriQpiw/j3zxU6bKmU
         rKvo6t06rVLbuEG58iATVoJ41OCFVuTJKNBIqOfagPk0bOVTpntpOpZ9dPcRShUR2Ti3
         ut4ima6uHMwIOMoE/YW7AAkInxjD0qRJE9Qy8uZK+/A/3xWkIHvhx9dReaz4dzaJeQop
         HC7LRyalbc2pB50rJNXrg7KW8XZFSgB5eJ6dJVP3PtsMfb3/fkPpWKyfdA3TZlx1H213
         1pAvCMvg1TyaRUT82c6qqo1iRG4kaZ/i+DrmwWaK007P0OQYfk0K4oc/Odk8SFcCB7Eb
         dShw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version:user-agent
         :date:message-id:subject:from:to:dkim-signature;
        bh=U4K3NUPR2Ie/KVn/IopWyRRWLlkbF0K6EJlOHjL8AwU=;
        b=EnnsGE4U5pAl50gEM/Rzpb5LCEvoG1llpLLkL8akbc6kndHdtaeYDjFbPSPNxSHvnd
         NjCbCjY/TmupG6j0fC5zMK6xr9rARj2i8evwcGSyLeh73nzPzNsQJt+rWYfol37VI8RW
         skfnrqIuFDtYC0PA3MX25tlLTFCrVURPu7KdaCfQiqfdRdIBs4+DxbPba+MNVG2UorcP
         625xOb1gjTon0n827WF7W/NbY7S9w2WXXY0NNZ6W+2NT29TmApqkUDVjnC5xufYuF4KH
         UgtOfs1BrNsUQyMIL3VUzVaYu13TV8oCFHz+w8ZwCs0hcp00JsllOa97Uagqqi1Qn5ta
         asdw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=XY9rYTN2;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t21si2633237vkk.4.2021.07.21.12.49.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Jul 2021 12:49:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id EF8436120A
	for <clang-built-linux@googlegroups.com>; Wed, 21 Jul 2021 19:49:35 +0000 (UTC)
To: clang-built-linux@googlegroups.com
From: Nathan Chancellor <nathan@kernel.org>
Subject: Squeezing More Performance Out Of The Linux Kernel With Clang + LTO
Message-ID: <ff3297f2-fcc3-f5d6-97cf-37430f1f03c0@kernel.org>
Date: Wed, 21 Jul 2021 12:49:34 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=XY9rYTN2;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

https://www.phoronix.com/scan.php?page=article&item=clang-lto-kernel&num=1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/ff3297f2-fcc3-f5d6-97cf-37430f1f03c0%40kernel.org.
