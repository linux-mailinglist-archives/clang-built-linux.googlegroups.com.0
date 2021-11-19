Return-Path: <clang-built-linux+bncBDZ27RFZWEMBB2XR4CGAMGQEO4WFX2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id BE6954579C1
	for <lists+clang-built-linux@lfdr.de>; Sat, 20 Nov 2021 00:53:15 +0100 (CET)
Received: by mail-qk1-x739.google.com with SMTP id v13-20020a05620a440d00b00468380f4407sf9122598qkp.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Nov 2021 15:53:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637365994; cv=pass;
        d=google.com; s=arc-20160816;
        b=ifBj35TJTff7bt3qWQhbyH6DJB/F5va6r4peWHa3aIcUUMc5VihODivtjM4ldUGJf/
         2YxUoV9xsJqOR4WYAWIKdYxcx4kFrH9LgRZzXXsnLSWAMmiat3JK4jCDGNuVLG4l/ipC
         IYq7DQ3lw4K3pkFueh7OpWB+BO/v6l8Z//ABvjjjo816QvvE/9OgstXnpy3Y3XMBczvX
         6hlKRiGg2VVt6d8DcRcuPceD5L2IHPtkCfPNHGTm60rMfQp7lb7O7Ayz/1H7OxnyV0wE
         VHE9Ta7ez1cGlmgP2ACEH5Orrn0s+Mq9emQryvqLnrX9EmC1/t1s2d6KbQ4CdNhpQQXN
         fqtA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=yF5TwyGUg1ISu7p4nVFFUgJB+e2NZAuzl7aOD/p+f/Q=;
        b=CDxAfdJ6Qd9aEyUaiLpBHV3iqn4BXZBBjIS2etWiPUI6KAvNVTjWYiuk+MX0WloTGd
         lsUm/0GV9kGGy2cMmShnaadiz5+gxG4sYl3MOOQFMfWyhep3O7Nc7KwHlE/g9wzYD7hb
         izaXkUp7r4Apvtn93yTF3mCSObfW5oVck3mWMKEvqe19QtrOKI/jrUIRQPAlg3Gx1F/8
         6ZAdswbrWQ7YhokA88Pkkb6odzaAzPkPSKyp+9EH95QoAaqQOQslyYMk3RyaiiXZZ1fu
         adxOByE7u7xni0IBTB/+dROyfmkDTyM7THjQJYqEqXnzSxZI8bI8dAd6c40nNxoURiXX
         PdRA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=DTxWx8O4;
       spf=pass (google.com: domain of abijimenez869@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=abijimenez869@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yF5TwyGUg1ISu7p4nVFFUgJB+e2NZAuzl7aOD/p+f/Q=;
        b=nLGFfBPgGQU4o+xvec3Vzx5pDzIPTH2K7F4O+9jF5dCQaIpV/0BLfb7YL4KWg8HNeu
         k8TsjzGH+r7FEWq9J2+WwQ+fmfzyB97+gjtpu3SbStuynk4E0/aoLkZNfo0uDPO83MpC
         goGg2tQLAS9+1WhpWb2HDq4PmoWnjSQMdRup8Vohd3Ld21b68+CXgMwWD65lrcV/Ede1
         dB5MsVNSYx/5I1d7PMCJlVHP2tVxR8gJoPKPqY94Srkh9hROvI761ifylhUZFshcOsmP
         OJRkoLhLxS9uG+fOjffqLVZW0dnoWgIecf6yBB8hdb1E5ftsoldfJorH1O1u9L+o+ChS
         f6qA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yF5TwyGUg1ISu7p4nVFFUgJB+e2NZAuzl7aOD/p+f/Q=;
        b=em93jewJY/98ck0V8xeUy53foJF2OA6F/JHlPcaXinKGfiTct1LCOMYgbPmizYg6tI
         GYoAEAUObfZ9nrm2/HeVS30O9D2Fd3fSRLEW9V/WiUXkmrnwgYh7aYx33QpXhhjib6bB
         kTuIXFjVRqLgf0en7yaWY2IzJixyXN9xnhLcjuIzWxPUsLZMFqINV/U53oa5RcAzbqrB
         N4Jxf3HkTlX/ZJ0fMANnMNEOnFhxWjaepw0c01x3Re4bcsdKq0TKpUXEC+zgveVbSB99
         xipg071Zj8UUfQieOwFG6ZCxRosLtt7kt7kH33dfFmukVTTfzfd8VESHNu48Fx9LcScy
         wyng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yF5TwyGUg1ISu7p4nVFFUgJB+e2NZAuzl7aOD/p+f/Q=;
        b=S5EDIDiqzPfai8i3C8xfMnIr0TQ72CuI9LvwvlBu22UxXQWx+Pn6/FYu5KJI6G3T4J
         eGKfP5cn6RHVdPacZRoRrbm16Vmz6Oqd7MbrZAfx1N3V6zuplp9rQ8C1ToCWQbyXB3/2
         1bRPqfRV2lUTeTnPrFcNJ4kmuhY9gcE6yGlol3kDVT8rzL4s2co/0+MmQ6Ub6AaH4t3A
         6FMRTz5n3xnE+7kyZYx/7T9NQDyEmbkp6x0KuVlu8rvy2PWOqcKAnY1zxaqnobFhLO05
         KUF/nbmLLRuct6zORlJ8hF8dGCKAfWZknHd+flir+dPBaylhd6FyEHPr+6xAg6dpAAMB
         CNIw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531nanQLII1B9O0PXAM+HT2CI0KoSZe524mGeJtztp7Y0GjxCnWY
	Yz5a4N9yCCTUifiHSGlA8Z0=
X-Google-Smtp-Source: ABdhPJwARJRcsB0NJFbiO8AXFrFeRNzVluhl0sVcbHDBMornJT2tiRO4c+4GpVCHnIa3d4eeGuuzow==
X-Received: by 2002:a05:620a:144e:: with SMTP id i14mr31440291qkl.13.1637365994721;
        Fri, 19 Nov 2021 15:53:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4a04:: with SMTP id x4ls742890qtq.1.gmail; Fri, 19 Nov
 2021 15:53:14 -0800 (PST)
X-Received: by 2002:ac8:57ce:: with SMTP id w14mr10646976qta.252.1637365994345;
        Fri, 19 Nov 2021 15:53:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637365994; cv=none;
        d=google.com; s=arc-20160816;
        b=BS7XuVBQSpf6KpXvdOXx5wHW8Ku2XprOWOAYpuWQd2ho3eGWfUGqqEoKdEFy1okspP
         CUt7CQRObI1q6JvYkF8pHdNClGQExEt/E7MCLJ98caC7sVf5S2iT6g27Dq1RNzbg8swX
         T3YtGOht/WcGGAtzRW5MHkGCLcMemSlHAmZV3U3Wh2EUOge80rLY62MveMHUciT844jw
         8nuGR1Bk7tQl2LqWTs7JhiY/RqrEdkvAMSNL4xftcjDu7eSHzsGv1Nv+RcwigQTvcOnA
         wXHRtGwGVcmgUqEahWs3Fxm0YQZA5py3OiNRVosf3/4NH11KOTCmMa0TawRrMBOLxLTH
         V58A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=dAECgy4zHOEK0YcRF4TEHZMl6DvfZKrjzLr2X/UZcfk=;
        b=tn9yGZcqr7bO93tXWOQCoUJ57sFFPowDuvLVmKcC2VdEoH7czf+YLfII5xhv0xcP3W
         AAOCfMtb8udauEhtc15MZBiiceQFVSvJbiyUJFzy15Vfh3hN/sTyzO6o9HR7Q4vO5kcM
         sFXPKWcCmWwBFTwRyUtpsJyuLiyYoRrWjdQ9AkEnnP04irNyCluv555GXxIFrus5NFoi
         bZFgMj2lSQHceLtwK2IJRKYBgxzc1ATZAl9AJJg/qZ0OJe6NxGuttoWjQDueuB0CEHbH
         n/gF7S1uooFBFl32jTBHavVMK3mgtTC/bKelqE6BAWRM64XVykjuWMRnCVTO7loajX1M
         duvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=DTxWx8O4;
       spf=pass (google.com: domain of abijimenez869@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=abijimenez869@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id w22si286120qkp.2.2021.11.19.15.53.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Nov 2021 15:53:14 -0800 (PST)
Received-SPF: pass (google.com: domain of abijimenez869@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id h63so9864983pgc.12
        for <clang-built-linux@googlegroups.com>; Fri, 19 Nov 2021 15:53:14 -0800 (PST)
X-Received: by 2002:a63:9f1a:: with SMTP id g26mr19902568pge.170.1637365993524;
 Fri, 19 Nov 2021 15:53:13 -0800 (PST)
MIME-Version: 1.0
From: Abi Jimenez <abijimenez869@gmail.com>
Date: Fri, 19 Nov 2021 17:53:00 -0600
Message-ID: <CA+_J1YqyyCMWr2ZsXyLqukK-b4YPOWdjRSj_eAHPBdraHKT-ug@mail.gmail.com>
Subject: Re: [PATCH v3 4/8] slab: Add __alloc_size attributes for better
 bounds checking
To: akpm@linux-foundation.org
Cc: apw@canonical.com, cl@linux.com, clang-built-linux@googlegroups.com, 
	danielmicay@gmail.com, dennis@kernel.org, dwaipayanray1@gmail.com, 
	iamjoonsoo.kim@lge.com, joe@perches.com, Kees Cook <keescook@chromium.org>, 
	linux-hardening@vger.kernel.org, linux-kbuild@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-mm@kvack.org, lukas.bulwahn@gmail.com, 
	masahiroy@kernel.org, michal.lkml@markovi.net, nathan@kernel.org, 
	Nick Desaulniers <ndesaulniers@google.com>, ojeda@kernel.org, penberg@kernel.org, 
	rientjes@google.com, tj@kernel.org, vbabka@suse.cz
Content-Type: multipart/alternative; boundary="000000000000694f9c05d12cfa82"
X-Original-Sender: abijimenez869@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=DTxWx8O4;       spf=pass
 (google.com: domain of abijimenez869@gmail.com designates 2607:f8b0:4864:20::542
 as permitted sender) smtp.mailfrom=abijimenez869@gmail.com;       dmarc=pass
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

--000000000000694f9c05d12cfa82
Content-Type: text/plain; charset="UTF-8"



-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2B_J1YqyyCMWr2ZsXyLqukK-b4YPOWdjRSj_eAHPBdraHKT-ug%40mail.gmail.com.

--000000000000694f9c05d12cfa82
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CA%2B_J1YqyyCMWr2ZsXyLqukK-b4YPOWdjRSj_eAHPBdr=
aHKT-ug%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://gr=
oups.google.com/d/msgid/clang-built-linux/CA%2B_J1YqyyCMWr2ZsXyLqukK-b4YPOW=
djRSj_eAHPBdraHKT-ug%40mail.gmail.com</a>.<br />

--000000000000694f9c05d12cfa82--
