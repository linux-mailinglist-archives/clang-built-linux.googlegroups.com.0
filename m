Return-Path: <clang-built-linux+bncBDCIDJ4RTAOBBMUM2T5QKGQEG2VIQJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0589D27F518
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Oct 2020 00:27:00 +0200 (CEST)
Received: by mail-lf1-x13c.google.com with SMTP id 134sf999213lfm.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 15:27:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:to:cc:subject:from:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tGOXg+JN0IaxR0byeb1zNRCsgYUEnV6RDP/vk9yQQE0=;
        b=KAsHhgxByqqU3dK0KMFphbbDOawBuymuPl0oRazUm8c86PuQrzO/Lgxy0kEhPzIm82
         tLQASB3o3Av8nZUYch7HXNkPqR+PN+k/rX7QX/Hbf1K9/0l4rsV5aeKgXQJULebaRrmD
         2NDipot4W0f/01o/jEX6gCHR7Keki2G3wkeGcvdlteqcfaNo3duIAydEDinCdm01c80n
         915xI3ioTgHV2QntivYvl4FOyoEOroim2YzKVrqplYrF8gvfOSDy1xH7RU1QqVcli/Hb
         VQ4EhYd56ZiG90JM7NATRr7KE2X+fvXAj7JzCvaq4eLrCRKB7lomVrSd67zrvt4gB+d2
         m5BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:message-id:to:cc:subject:from
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=tGOXg+JN0IaxR0byeb1zNRCsgYUEnV6RDP/vk9yQQE0=;
        b=jo366u/VxSoCp7Gq8CtfKekVSieqh/fS7V+7Yqlke3ZbMosw7PsZMSWnPRGTXfszLj
         +NsMRRw/4cRzK+paCWyAl/oI2Omujb1sUpISwPTQlxxOAnJQoeVdfl2YL/5TvTuW4EvC
         jr5xMXQy2fWKKZM3ZL1GUnRinuSlFxMV+UgjzG0DiTm1aE0gz2zSMaLj6008Ah0BIdDX
         I4yxSy3NtCppU6Wh7ozPRnUH00XXN9u12j2UDqGdGHjarQ1+JDMNkUDYSAAB3N96e+c4
         r6/8e/lhB57ulNWiu7un/+WYbPSOvUXbiEZa17+Vb2hq6GOSfGa55IZ1wBXUyphp9BhY
         Y36g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531bXxpRyxN/hx76LkGQ3evLb30JvOtgUR+ktZOtPYfXBOS3N+MP
	Tu/up5oCyvlilhRJX637P5k=
X-Google-Smtp-Source: ABdhPJxX9dgETYPZ9Z53czoKLrrznukNqtD54dBBxRPmWoQ4yntj87ebAaNPTSG0jfXNTtvJSScd2w==
X-Received: by 2002:a2e:b0d2:: with SMTP id g18mr1556636ljl.198.1601504819318;
        Wed, 30 Sep 2020 15:26:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5c44:: with SMTP id s4ls1308393lfp.3.gmail; Wed, 30 Sep
 2020 15:26:58 -0700 (PDT)
X-Received: by 2002:a19:7:: with SMTP id 7mr1670370lfa.538.1601504818172;
        Wed, 30 Sep 2020 15:26:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601504818; cv=none;
        d=google.com; s=arc-20160816;
        b=EDWpoKo4dp5XW1dh2wZMaak+mFj7PzcN2CB7oZ0Xb4U3ZUKXy9zFkXO3R5ZDSCZeIT
         qRXn69NmSWuyZrLCt7ss0CQjriS3Uuqd6/w/iLUEx/evffPXbRXcZwHDbicO/p43HFJK
         dEX9x2H0JX5qA3TBUQhzhHDH4vdPPd+iXXCcsA/FIW8Q/ATQoS3gdhREUo2UdXAjTYMA
         v0ummXzBwZ0U1N5U9//nI3yniJnRhgpQy05v7EjgKFU+HhL5joa91VCJp545NOL8SE83
         NJUVnFG6OrXmpKco03CJG3ipDLXaffXQjJwR3BAHcvQ9x6SfGSrqKQ63dwvuL+WRYFA2
         tkeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:from
         :subject:cc:to:message-id:date;
        bh=tGOXg+JN0IaxR0byeb1zNRCsgYUEnV6RDP/vk9yQQE0=;
        b=uR2m1lhieSGV/BB7FebCApdUoAakNxZfFDgvd+36F+5HgGjz6dC2CQi+Elg16MqmdG
         sgcVPuId1T9VnMl9kitAVGiPTQlz6Fi2uGpsnFiXSEfOEZQuZ1fcPTV1Rdcl9xmAXMls
         jB3C5lNNCkmIbp/cet8PmUkDgA+4qCnOfyy7YWWn+Pmdp35J8MePsVDt2zIwpn1PF8gO
         3ACDn/n0mqbTVxJWvd/tQxbQeIruWhNW0288QogZnkCUkv/itmksBBW8fPdg+f1ZUOt6
         7FraUiIUnsG6CDyI/4UFiiFwBqGTN4qDf2Gs2o0F79Y1yFEF2wph8cSJvhqnej4EHTW+
         Nekg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) smtp.mailfrom=davem@davemloft.net
Received: from shards.monkeyblade.net (shards.monkeyblade.net. [2620:137:e000::1:9])
        by gmr-mx.google.com with ESMTPS id k10si79794ljj.0.2020.09.30.15.26.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2020 15:26:56 -0700 (PDT)
Received-SPF: neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) client-ip=2620:137:e000::1:9;
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	(Authenticated sender: davem-davemloft)
	by shards.monkeyblade.net (Postfix) with ESMTPSA id 196A813C7AFDB;
	Wed, 30 Sep 2020 15:10:05 -0700 (PDT)
Date: Wed, 30 Sep 2020 15:26:52 -0700 (PDT)
Message-Id: <20200930.152652.1530458864962753844.davem@davemloft.net>
To: ndesaulniers@google.com
Cc: sedat.dilek@gmail.com, nickc@redhat.com, maskray@google.com,
 segher@kernel.crashing.org, linux@rasmusvillemoes.dk,
 clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
 postmaster@vger.kernel.org, peterz@infradead.org, behanw@converseincode.com
Subject: Re: linux tooling mailing list
From: David Miller <davem@davemloft.net>
In-Reply-To: <CAKwvOdk+Rp0QGJmX07XxD8L7WVgco98LHFTu-R_2R22+UMVerQ@mail.gmail.com>
References: <CAKwvOdmFm9-FPrqt42NsusWRbDzNx6NF1GeSJhz_9kaAGV8eOA@mail.gmail.com>
	<20200930173719.GE2628@hirez.programming.kicks-ass.net>
	<CAKwvOdk+Rp0QGJmX07XxD8L7WVgco98LHFTu-R_2R22+UMVerQ@mail.gmail.com>
X-Mailer: Mew version 6.8 on Emacs 27.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12 (shards.monkeyblade.net [2620:137:e000::1:9]); Wed, 30 Sep 2020 15:10:05 -0700 (PDT)
X-Original-Sender: davem@davemloft.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess
 record for domain of davem@davemloft.net) smtp.mailfrom=davem@davemloft.net
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

From: Nick Desaulniers <ndesaulniers@google.com>
Date: Wed, 30 Sep 2020 12:29:38 -0700

> linux-toolchains@vger.kernel.org

Created.

