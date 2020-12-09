Return-Path: <clang-built-linux+bncBD2NT6VEXYMRB6WOYT7AKGQERL7OR2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id E53152D4A70
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Dec 2020 20:37:31 +0100 (CET)
Received: by mail-yb1-xb3f.google.com with SMTP id g67sf3740220ybb.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Dec 2020 11:37:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607542651; cv=pass;
        d=google.com; s=arc-20160816;
        b=p/fUnzLvifrL0KsDhr5KPd8lTvolFk2PHgPHiG+a5nBJecY1Fl+FZnrFR0IoHzR4ZT
         27vGogTN7AX/MAL2sxkmq8X7yqi/JqBIZU+rzyHrPaQMPfVAuyKXtL/tgHfiT1Cjetf9
         ttA/htzMORBNFvrG9duSaek2J6mTfXGin4b4AxftVdswGdoiGY835GsMrnlKAnNxnnk4
         WD3TA49f+2K4n8a3WvYXJNXu02emWFB4njVQwVajPvTYwZiw5QXGsEcpPr2xDFZmoTF6
         9Wi733ALT7l7HScoHCLrNJxVw0HeGM9JnZ8KI+MFMs/7B6Kb4Q9Eaci72iNDN/yjq1yD
         AXtg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=HW1UeG1iYVn/GS5kQCOH2vqhWobNUacj7lPrNEf2YQ0=;
        b=nRYg3eVczz8/xDdkN72UQFThaVjoKiU5OtMn+sW1r/zAxmetGiAiYN1FY6kTfN+NwY
         mEavUWcJpxUeK6iNqPe2ZCBG0cC8yBfnzOm4Y4UeDgNIZ0033Pf49wXoSVR+126dladz
         4edrYBmSW/qgoqixWDk86KUztJtnbSL/egE3fv1/PrGZSNallR0xr80lv/r7mX6CXY6O
         8Kbj44W3sccZY1RYfTQ1fO59K+XNMX1hoizdI85oQkW27PE24rBX60Ca2alyLiefkM9/
         ZApmZUZrLwCzHZ5dopsPKx63/uxLE+hSw2cd17HlrvrpIjhriu6mN1EFh2jarvBiuVuB
         aZvg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=PhJMBnLl;
       spf=pass (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=kuba@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HW1UeG1iYVn/GS5kQCOH2vqhWobNUacj7lPrNEf2YQ0=;
        b=h8cN8r0OwVq0JYbYsPwTiWmOKLwjJMjzhkSwKOS/rcZ4pm4fjiG1RVX4zIK2U6qDss
         9ONChxfW4W1Mj8wI3udEfcjb+XonlOrKMREppAjGuyey3fmxed2t4KqJSFvH6OYfXuSq
         swuDxWSaFH0tWSCoexJupJZ9r560ei/E0Bx2Y3/x0iy5/xLdyku4iO94CiHrV40a/36C
         61VxU8N4CL4SFf6pa5BiSM+8agu75Rz7b2TglRbvGNi0aiJjOYUkRrAU2qfQxrzpD6km
         t5YFoj+Eb6wZHbbUnJ1qqoZ73Cd1GO3Qg1LboS8UKF00wDMdvLmEkB9qY7L1xl4P/5j/
         VQdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HW1UeG1iYVn/GS5kQCOH2vqhWobNUacj7lPrNEf2YQ0=;
        b=lSLb2/+wjGVOEG/+k5oD9miv+6DG0Ilzl94sPfCkwvYh+BDaKH0J7Scn5wOw8aaMI1
         ff5Tky6OTXYk/nijitxp/8U4yw9JkwVeh2oED1huLV+B+6LD6R5xGQiNm2JPx5H9Eiq2
         6xZ65HCeUBvr0ydBUbUnU4+0PmYFxtGe9+DkDsjnpwtHFUMim4Fdn2wppZeqMZgw2bj3
         gcQ++DMysMPEvArVTG+evaTzs0dJLE46JBeuiPS10an8TiIJ8AYtKevSI2EU8LuybzxX
         0Skt9QeHhdSrxHFmmxbzU/Nx98mOVbaxRLw57m7engNoso93chgtG3fmLn6vdxtcW5hb
         XiJQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530w0Uye6VRzIb3kvmEG8Xp7wdpJIlXYiyXCageOKEbFLbqwaq6c
	FeHyUzsjGLUuMUX1U0jGdJM=
X-Google-Smtp-Source: ABdhPJx5FddzswnRYpUlvGdRDrEhaizeJIW2dAW3oRjeK4aUd66tHEdYXFsCk41+97labdM9G8CL5Q==
X-Received: by 2002:a25:6981:: with SMTP id e123mr5957331ybc.194.1607542650997;
        Wed, 09 Dec 2020 11:37:30 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:b581:: with SMTP id q1ls1329449ybj.6.gmail; Wed, 09 Dec
 2020 11:37:30 -0800 (PST)
X-Received: by 2002:a25:3a86:: with SMTP id h128mr5667983yba.401.1607542650663;
        Wed, 09 Dec 2020 11:37:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607542650; cv=none;
        d=google.com; s=arc-20160816;
        b=ujXqvI9e9jaoVFtyPgcVeKSCZGXaIK9Ek1f0jvkMXn23gxy8DGmIHlWqp+EqCmlJGg
         f7vYpYNz/rBl6ACHZrP6ePxI4sKrQ3jpe9RueYlTd7lLLFrYLaLgDnyQmXKt4C/tr2DU
         zlBnN1v+DDdGgYCPtNzQXfBXOcFg645PpoQhEiya73a+bYNKRqCCrDbtAJ4PTihGPwLO
         Ue1vO2l7FYoPuiFKhFHdkBmtIWuvrG0mUyaFNqDZ6QT+DbnoslgdeiF/Pnzdxnn+SjjQ
         aH8LphaZeXGcJldAlNSghdstBEFpVAzwEXvEpyUBlGGEKnr32nHZi9Pnd0vMQ26FnAz8
         UyNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:dkim-signature:date;
        bh=DJeu8gDLCui6wMV7VLt9CjzTLo5sTzsIKl9TKEaoeb8=;
        b=VoheS+SLidp7SXCV9zLmnmOgdhkJpCPEj4MN5HiWcq4Ru2+x5i3IMtQM34w/LGIcOy
         SPt3/usOmhywPE85jxK3OXeyK1H7Hq5m2K86iQxt9JFoGGNr3HBABlpjoee+y9BCbm4Y
         hu/cKC+II0meCfVJuXtl9qXkI+HA/Ro0oEedu/cgHQb5riQeqw/Z56I0RJbzVxksvd08
         b7O4RU31SBCY9NwBT08I3LRymkpMW3vfp6yaVdvu2QlnvBFFwP1PvlR4OShGOGuE+Ima
         eisX0Kxub36iBfP4qEkoGWJAtQb9eEAiHs3V69T8Wjfj91kOeMA3CGe6Aq0MOk9Jfafm
         mGFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=PhJMBnLl;
       spf=pass (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=kuba@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m3si267981ybf.1.2020.12.09.11.37.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Dec 2020 11:37:30 -0800 (PST)
Received-SPF: pass (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Date: Wed, 9 Dec 2020 11:37:27 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Pavana Sharma <pavana.sharma@digi.com>
Cc: andrew@lunn.ch, ashkan.boldaji@digi.com,
 clang-built-linux@googlegroups.com, davem@davemloft.net,
 devicetree@vger.kernel.org, f.fainelli@gmail.com,
 gregkh@linuxfoundation.org, kbuild-all@lists.01.org,
 linux-kernel@vger.kernel.org, lkp@intel.com, marek.behun@nic.cz,
 netdev@vger.kernel.org, robh+dt@kernel.org, vivien.didelot@gmail.com
Subject: Re: [PATCH v11 0/4] Add support for mv88e6393x family of Marvell
Message-ID: <20201209113727.1b4bd319@kicinski-fedora-pc1c0hjn.DHCP.thefacebook.com>
In-Reply-To: <cover.1607488953.git.pavana.sharma@digi.com>
References: <20201120015436.GC1804098@lunn.ch>
	<cover.1607488953.git.pavana.sharma@digi.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kuba@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=PhJMBnLl;       spf=pass
 (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=kuba@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Wed,  9 Dec 2020 15:02:54 +1000 Pavana Sharma wrote:
> Updated patchset after incorporating feedback.

This set does not apply to net-next. Please rebase.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201209113727.1b4bd319%40kicinski-fedora-pc1c0hjn.DHCP.thefacebook.com.
