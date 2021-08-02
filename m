Return-Path: <clang-built-linux+bncBC5KPPH4YUKRBJXIT2EAMGQE7H37HWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 400953DD275
	for <lists+clang-built-linux@lfdr.de>; Mon,  2 Aug 2021 11:00:23 +0200 (CEST)
Received: by mail-lf1-x140.google.com with SMTP id p16-20020a0565122350b029030e2ef98a19sf6422885lfu.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Aug 2021 02:00:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627894822; cv=pass;
        d=google.com; s=arc-20160816;
        b=n4VQPc/66vWCgOexpbxCJ3MpFLCJTpIMiYKTPtTyrT1RnFJPlN8e8aVvjfsewMuE0b
         fRWmT5b3YrIiLHWdyPEMZyT6j3diC3SHhtlYLGiucS9rbc1P8K1i+S6GHDxL52RGXiQ6
         aaDw2E95/OcG6XB3BB+ZdGxxAQIgnueMd9B2OKubTAuQqaAJKDLljSBGVeQholItThx5
         k7Vdhai4Po0rX//hB+1yz62xnH24vYDlRAPCWgOXjWkSAbekKN1wiz+30fIJIoDgw1Gt
         Y3KXuyZGj8ANqjkEA9uqnyZKBk4wvqLHQLLq7zCOd5d2ToMz3j84RPhIMhKQJJiIqt2Q
         c9SQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :user-agent:date:message-id:subject:from:cc:to:sender:dkim-signature;
        bh=r8FAPIjkD9hS6C7z8Vu0pFoSwIxfCA/Cw2OV80KhjI0=;
        b=QRmlbKVfdWbxfvjbw9e90RjouRG1gIIAEegtf9hBlpI8Us+IVDewCtvbSwmTDCLe4/
         GySiT+ynJfcZzfraTzb2Xnn742kGb/C2UdqFe5MlziP6bMd3VxDSevQW7Eb2oIMDkyBP
         qCOiyI7xgNF5NPEh5oja+4WB2ePdPXOAYL48vQnZtZ4TgmTcYFpw6iuwhDJ2gd1iuHaB
         1hpWrdZMuahEhyRHbI4EOKWm67AjVN0FQfxgwOQZtYyi5mFQPJ0hMaY3dfzi4O0UUA5+
         nInHhe05gcnO7KCgTyQsLhGNA3eIzrXBhw9+a1WgMtxCkLOXzgIdcg7Z4l5A3L3CNvZY
         vuMw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of guillaume.tucker@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=guillaume.tucker@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:from:subject:message-id:date:user-agent:mime-version
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=r8FAPIjkD9hS6C7z8Vu0pFoSwIxfCA/Cw2OV80KhjI0=;
        b=soS/wDSMLFakU07S6bba+uC7wXpZucfosMWeCTsNdOJdR2dkPB7/2xvvThsAiKg1Cd
         etP8YUgf/rlkzFNXoqnly/XLVqd2e07t1TjaPX8XE17zsoKTu053klI0hwREFcI2DOQs
         yUnj7R71eXANH4IWJTBy8/SppABkzw9WaFAHTYw+0qN9mPhQt3Q4fzCpI2sOZBtnGSFJ
         ekb6ZxnQuPP+b/GJxNjKuKMOMXWQTLbojYuW/Rl9ykLDVDRFeBDPblp5Nckuz3wQxgaw
         hfQXCo2uWdeFzjXjVBqD48Q4WBxyRS5lnsiUZANZYL5u+UBOYmTD13l9+B4d/uPd4mFx
         A8Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:from:subject:message-id:date
         :user-agent:mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r8FAPIjkD9hS6C7z8Vu0pFoSwIxfCA/Cw2OV80KhjI0=;
        b=chITU+7ahfgwzuCwOv79NlfuTJZb/uW1BzyCkXigoW4wickOLXHUzKZQJndjTnCwsb
         ktq7TgapGCMX9HznnDdO6zdGXEESV5ofxTeig9asn03k8AeIW5CgTaB6hnxxc51Ljzm8
         KIfOZkGpwh4wsBucCiqdMN+2FFj6E1HdFjFFVp5wH0AA6HGAR4q5IHX45Xosq+kaA3jO
         QQGWdImmMu8nZ+CNGM4TYY8PujHc2avwyW/nhs7wlMExOsM1ffR1iRjEjCryznteUi+/
         vt5qWD3fVuXoeYSL8hiZZQnul4Pm8s5v601Ia7TsniJ6XuOaDUTNJsVa6O5OZSlAJcJF
         YK8w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532KCSWsD7A7bOeOBkhphi4i1wQlUYCYJExUo02Nzxwr4b1J4WoP
	3fFP44+RBDwyGM7eM1bAGCY=
X-Google-Smtp-Source: ABdhPJwjt0h44/Jmezvzna90+b4ZmfXtmSDYDKv1bDTzj2FFd1QGcPBT3nHbcLw4YwEvDKBLtgTHzQ==
X-Received: by 2002:a2e:a712:: with SMTP id s18mr10677360lje.161.1627894822616;
        Mon, 02 Aug 2021 02:00:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3b1e:: with SMTP id f30ls682279lfv.0.gmail; Mon, 02
 Aug 2021 02:00:21 -0700 (PDT)
X-Received: by 2002:ac2:418a:: with SMTP id z10mr158508lfh.181.1627894821453;
        Mon, 02 Aug 2021 02:00:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627894821; cv=none;
        d=google.com; s=arc-20160816;
        b=ewGv7SD7mjEnHc+k/PBQdcKSPotWaUMvfDHhScVnchGL08hzv7OEvfO5iTb6E+WNNT
         Xg7LTtlYVzcfdrbaDFCdHiJdvNH83osbYm0mKLeOJV8Gp+ZoywvuXzSWz602ElsGOK1j
         rqvEkMTKnZyL8E0+C4m4M88vl3ckORKTQpmdev9Xb34is/kAGUT9fGqckFFh+opKPOEv
         mf4yDWX46nMzXdL9ieoaioEwE9zUb/zgDmU2pE46Ff5ps91MmLX/acYdubKGMTuUr6LI
         aurpGjQbUFAud+uSxAEpzQLZ4k0tW5oS8nzbH7ChicndRMK6v9CxWNwX3QaVI3C9MV9l
         yoWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version:user-agent
         :date:message-id:subject:from:cc:to;
        bh=BpxwUiUkHgIsl8TX22ouRzc2Z1gYrZJqiBpHXbqAcZk=;
        b=HMcBp2H5ANxEYG/QB5LJsbinPJ9P7+c4rStrmgkuRe2MjsDyeKx43T5MoKXe0FjqLX
         3DalhvROwMS1dJjUNM2uGZ6bkJtUgQ3DBMsvpm7vMwvnv80sjN7C3Ato25sUoQSTDbJj
         2RgHGSj0jY6S1FYTqCfyvFWHuY6tGvz/sgJLgpzMadkqWep3jvvph+HrkGeYzjC3GeBo
         MwK/qF4NMwNu1RRteh0YHewCxB/fg/HSZJh4I+Eu/bJBlX3JjTtEFCiXro+1782z6HUP
         ivATzYAS0hw49vjKsDaGFGQl5UAhemSNZLRFLquafZ+uMvVpztYSJqWy69xWijodwk1l
         AhCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of guillaume.tucker@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=guillaume.tucker@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [2a00:1098:0:82:1000:25:2eeb:e3e3])
        by gmr-mx.google.com with ESMTPS id i12si606143lfc.10.2021.08.02.02.00.21
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 02 Aug 2021 02:00:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of guillaume.tucker@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) client-ip=2a00:1098:0:82:1000:25:2eeb:e3e3;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: gtucker)
	with ESMTPSA id 2CDAD1F423FC
To: "kernelci@groups.io" <kernelci@groups.io>
Cc: kernelci-members <kernelci-members@groups.io>,
 automated-testing@lists.yoctoproject.org,
 Collabora Kernel ML <kernel@collabora.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jesse Barnes <jsbarnes@google.com>, Summer Wang <wangsummer@google.com>,
 linux-kselftest@vger.kernel.org, workflows@vger.kernel.org,
 kunit-dev@googlegroups.com,
 clang-built-linux <clang-built-linux@googlegroups.com>
From: Guillaume Tucker <guillaume.tucker@collabora.com>
Subject: KernelCI Hackfest #2 - Sept 6-10 2021
Message-ID: <74f7b4cf-926f-d8bd-19c2-375cfe7a12b2@collabora.com>
Date: Mon, 2 Aug 2021 10:00:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: guillaume.tucker@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of guillaume.tucker@collabora.com designates
 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=guillaume.tucker@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
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

The first KernelCI hackfest[1] early June was successful in getting
a number of kernel developers to work alongside the core KernelCI
team.  Test coverage was increased in particular with kselftest,
LTP, KUnit and a new test suite for libcamera.  We're now improving
documentation and tooling to make it easier for anyone to get
started.  Find out more about KernelCI on https://kernelci.org.

The second hackfest is scheduled for the 6th-10th September.  It
should be a good opportunity to start discussing and working on
upstream kernel testing topics ahead of the Linux Plumbers
Conference[2].

Here's the project board where anyone can already add some ideas:

  https://github.com/orgs/kernelci/projects/5

There is no registration system, but please reply to this email or
send a message on IRC (#kernelci libera.chat) or kernelci.slack.com
if you would like to take part so you'll get email updates and
invitations to the meetings and open hours sessions online.  You
may just drop in and out at any point during the hackfest as you
see fit.

The hackfest features:

* Daily open hours online using Big Blue Button to discuss things
  and get support from the KernelCI team

* KernelCI team members available across most time zones to provide
  quick feedback

* A curated list of topics and a project board to help set
  objectives and coordinate efforts between all contributors


As always, KernelCI is at the service of the kernel community so
please share any feedback you may have to help shape this upcoming
hackfest in the best possible way.

Thanks,
Guillaume


[1] https://foundation.kernelci.org/blog/2021/06/24/the-first-ever-kernelci-hackfest/
[2] https://www.linuxplumbersconf.org/event/11/page/104-accepted-microconferences#cont-test

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/74f7b4cf-926f-d8bd-19c2-375cfe7a12b2%40collabora.com.
