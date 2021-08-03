Return-Path: <clang-built-linux+bncBCY2ZVO6E4IKTZVFRADBUBCTGF2ZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53e.google.com (mail-ed1-x53e.google.com [IPv6:2a00:1450:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 139FC3DF31E
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Aug 2021 18:47:38 +0200 (CEST)
Received: by mail-ed1-x53e.google.com with SMTP id c16-20020aa7d6100000b02903bc4c2a387bsf10666223edr.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Aug 2021 09:47:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628009257; cv=pass;
        d=google.com; s=arc-20160816;
        b=pUwvFKAkbBoqpUIdwgxsNMHwXv7wggAAd+0t5eU2Uo1+PQnnLeIVtQOJD2Av7Yl3lX
         OV9qrJRM0rS8gVKNf84iup9Ft0wC1ruj4JyHw4npu3Up4LJCBRIJljdsRIFANyr6TzeC
         1L9vxvEMohPSPnywgisAJ9rA/Z31pM+OOj4AHVWJvF7wdnF2GfxjDlhnws717oZNWRPg
         791biqRVzng/R9OoW8V8YOHvLm6FOAER+L29ZD9ogKHZDMlROQytbQeFPTmcuPZVkEJF
         4ySFIGR4S9g3imqqURh6Xk0zxOb6HpqhB25v9tkLhq000fYdcPIPBvXDYSkccnY94+aI
         tfiQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=2+BiU27v7jiBDK9njrsa2uEjZDl3/QWPOIaaRz07I/M=;
        b=wyTygAHcvm/IFldi3rVK00L8NP8QoedZMbH+y8kVz2scIwSjNywu+j/WsEReuVipf8
         BS0EBqSPucl0ahtzhTpjR6hP+Z1SxWkmTHgZesvhsycgBPKhjJNpBZvOiqSlsQrvcdb1
         U6yNC6dC4uTjhioxeBmF0+hXbDkMTAPZEEokoWXCzywYZyidsnW75vuWBYD1Gxw2UvFQ
         VCzZIjmLT83m94b60S86xZq1c87a5c4aExtXHpgdwJ5dbJYr2PAwDj8EJIoutiUTYNJg
         /x5dmbeiO/WkOEr5j8HsFFYkiHI9djI90/5t4DUPVJLXT6CZ+XmlgDv8Q3vlaq0pdWb8
         0/6g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@miraclelinux-com.20150623.gappssmtp.com header.s=20150623 header.b=Rp1AHBn7;
       spf=pass (google.com: domain of alice.ferrazzi@miraclelinux.com designates 2a00:1450:4864:20::62d as permitted sender) smtp.mailfrom=alice.ferrazzi@miraclelinux.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2+BiU27v7jiBDK9njrsa2uEjZDl3/QWPOIaaRz07I/M=;
        b=kVW7q3Ve8NZlLE/Hl0kPdiDqRcKT34gOpLiXPguuMLCfUtloPEpauXmPBCdTdzRPY5
         E2PIoZKVbUq9XdLm25InJeGIw13dtZgy0f9KMB1lK3JuuGOtIB6JNNVi4hSBkXz8YDVb
         vxtnHx3frb/3dHndvXm1H5e57Gc1f/GlwfMGfXwHtPGsZ3zpcmDfc1dMrkm9kMKiYiFJ
         OMESie7VcFkHZ7DKrLki+4Dn4ouaMajPvi0y2u47wNVm8FQCF5GUjdQpvnotw8TGEysg
         FlG2JwcuMSLFYvlk0DS9390MVG9l7iNvHAt8+P/pXz+U5gRQLL/8qyB1h+9h14Oj/ZKI
         1utA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2+BiU27v7jiBDK9njrsa2uEjZDl3/QWPOIaaRz07I/M=;
        b=OpfTLI/RpZSUMESKfQ9DRwo1C+i16GW2el/iQJxvFEhHGkvRR2sgJHlWM2W+LV5r38
         H2Uh7G0/mBhgpQYUP+Wepneo8YnI65mz9m/HvCRWxOO2wtrzcbPgTExQ7G9EWSqR9/+L
         sUvkViGvKqoNI0Pc/JHhEw6ETZZvaxkFvLyizTdW+FoCMVtUUh06xSzAKLvrUMn0AsUV
         eAHSFKfJlLiy7HHe7cddHzLg2Cc0WMFJxhHK9pNUFCwHrfRmS70W44v8lU06bwremQB8
         0gAgoVkmq58Rns+vd8V3PY19qenU+ADWbt7aV+/yZnP33Zn20A6HxP9ucO2yDBkFhcnB
         9sGQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533fqeqRjxyUS67VF1yC5W+w32teGIfZaeKG3KbSzVNsvSvbHh/n
	LdDSSCecL+lh+kda5itj/ZU=
X-Google-Smtp-Source: ABdhPJwmCvpehl6KbLdkOajfb1HiaZVLj+PUsbzY7Z0RN68oqZ0eW9csKZNtJDWcA+GDM8aQumqKPA==
X-Received: by 2002:a05:6402:619:: with SMTP id n25mr27028144edv.243.1628009257845;
        Tue, 03 Aug 2021 09:47:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:3b4a:: with SMTP id h10ls6270234ejf.4.gmail; Tue, 03
 Aug 2021 09:47:36 -0700 (PDT)
X-Received: by 2002:a17:906:af05:: with SMTP id lx5mr21434727ejb.485.1628009256872;
        Tue, 03 Aug 2021 09:47:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628009256; cv=none;
        d=google.com; s=arc-20160816;
        b=NPL6WVrvGKDJ+5VcnR0uPDyMLtKFaUFq1uKFQrt4xh+cxM+igUiIfitR+Zraqern4O
         /tTV2StImIK53fn4oesUdYcRvdLFppAyGE9HOyvm8EdeQudTDt4HKZXOhC8Q+qQeYQtF
         4YizVmLiFFYwia1HTr992m2yCZCnXn7jKVDwCzNHZKb1eRqWj8CYfwKvTx/Y9w1clUR2
         T6WoCx9WYXtJtjRNkyOCc8srY5IwCux/AZsPckUEel9bRG5iEW1GikqaRjL0LFPJqe4J
         +QyhUPYmGxntrTgOb1OeZaGb91TGesYw/YHUcjlwM8M2wZ33udbkltYk6cvqwJAV02f5
         XCQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=6iY25rrglPS3Gh3oKWqjb0WQdwyn/C+G4a9t9iTacLA=;
        b=h/Gsl0fZ6lLHDVy3H//Px7CAbTw2HBY5oTCR+qzlg62zsQ/Izj9busRMmYUnGiABM6
         3b3O8ns47611xeit0lKUilK/QYZnm1WMHfeJ+LX51e5b1YR2K0yZNvqHvl1fZ2cdbKCW
         +vXV+Kzes9GHAyII6N8ZJqUBNe08kN11/B9F/WyYtxzdnl9C+bRBWN4KOxcu3ZV+AuYi
         9D7QbogRuEopDmqp60PThMseLXvK0E6LUK3+gHktSrOf2VuonMeml9vsdhWMAjkvKp+q
         TDzBgO8mWEWXO1MYKXHLJTSc5k810gXrt9re3Ci/NlocJN/G18SuiBV6DHuIgDSAVZs4
         TAuw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@miraclelinux-com.20150623.gappssmtp.com header.s=20150623 header.b=Rp1AHBn7;
       spf=pass (google.com: domain of alice.ferrazzi@miraclelinux.com designates 2a00:1450:4864:20::62d as permitted sender) smtp.mailfrom=alice.ferrazzi@miraclelinux.com
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com. [2a00:1450:4864:20::62d])
        by gmr-mx.google.com with ESMTPS id h12si556180ede.2.2021.08.03.09.47.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Aug 2021 09:47:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of alice.ferrazzi@miraclelinux.com designates 2a00:1450:4864:20::62d as permitted sender) client-ip=2a00:1450:4864:20::62d;
Received: by mail-ej1-x62d.google.com with SMTP id e19so37324192ejs.9
        for <clang-built-linux@googlegroups.com>; Tue, 03 Aug 2021 09:47:35 -0700 (PDT)
X-Received: by 2002:a17:906:5fc7:: with SMTP id k7mr21088425ejv.377.1628009255659;
 Tue, 03 Aug 2021 09:47:35 -0700 (PDT)
MIME-Version: 1.0
References: <74f7b4cf-926f-d8bd-19c2-375cfe7a12b2@collabora.com>
In-Reply-To: <74f7b4cf-926f-d8bd-19c2-375cfe7a12b2@collabora.com>
From: Alice Ferrazzi <alice.ferrazzi@miraclelinux.com>
Date: Wed, 4 Aug 2021 01:46:58 +0900
Message-ID: <CANgtXuPjD0rW-A=gMNUd7mdF1Bynz+QQmDHLy7vh9UODd8NtbA@mail.gmail.com>
Subject: Re: KernelCI Hackfest #2 - Sept 6-10 2021
To: kernelci@groups.io, guillaume.tucker@collabora.com
Cc: kernelci-members <kernelci-members@groups.io>, automated-testing@lists.yoctoproject.org, 
	Collabora Kernel ML <kernel@collabora.com>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Jesse Barnes <jsbarnes@google.com>, 
	Summer Wang <wangsummer@google.com>, linux-kselftest@vger.kernel.org, 
	workflows@vger.kernel.org, kunit-dev@googlegroups.com, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: alice.ferrazzi@miraclelinux.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@miraclelinux-com.20150623.gappssmtp.com header.s=20150623
 header.b=Rp1AHBn7;       spf=pass (google.com: domain of alice.ferrazzi@miraclelinux.com
 designates 2a00:1450:4864:20::62d as permitted sender) smtp.mailfrom=alice.ferrazzi@miraclelinux.com
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

Hello,

On Mon, Aug 2, 2021 at 6:00 PM Guillaume Tucker
<guillaume.tucker@collabora.com> wrote:
>
> The first KernelCI hackfest[1] early June was successful in getting
> a number of kernel developers to work alongside the core KernelCI
> team.  Test coverage was increased in particular with kselftest,
> LTP, KUnit and a new test suite for libcamera.  We're now improving
> documentation and tooling to make it easier for anyone to get
> started.  Find out more about KernelCI on https://kernelci.org.
>
> The second hackfest is scheduled for the 6th-10th September.  It
> should be a good opportunity to start discussing and working on
> upstream kernel testing topics ahead of the Linux Plumbers
> Conference[2].
>
> Here's the project board where anyone can already add some ideas:
>
>   https://github.com/orgs/kernelci/projects/5

I cannot add topics to the project board.

Thanks,
Alice

-- 
======================================
Cybertrust Japan Co.,Ltd.
Alice Ferrazzi
alice.ferrazzi@miraclelinux.com
======================================

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANgtXuPjD0rW-A%3DgMNUd7mdF1Bynz%2BQQmDHLy7vh9UODd8NtbA%40mail.gmail.com.
