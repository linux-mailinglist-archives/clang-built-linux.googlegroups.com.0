Return-Path: <clang-built-linux+bncBDDL3KWR4EBRBZWXZCBAMGQEABK65BI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D01C33F550
	for <lists+clang-built-linux@lfdr.de>; Wed, 17 Mar 2021 17:18:48 +0100 (CET)
Received: by mail-pl1-x63b.google.com with SMTP id h4sf20604905plf.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Mar 2021 09:18:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615997927; cv=pass;
        d=google.com; s=arc-20160816;
        b=UWLFZ4V7YwinwO/WZkrwgfGAPXdhn8nmCFm2WNhPjsRBG/x+0pn6vE789DFRn7D0BP
         OBdDM8HWBRgL1k0SpZLqjheuzhz4Z1o9BSCB5QhmvJoUUafpnZMOEPhDeH3LrT1YzN9S
         JPH+n8VYUEOBlEuKKuKpk5eOS0/3TxhJ+i7AsyBj1tjC139YObBoukZVyNSFg0A4rXb6
         EgiezFVgUNvFtDqbXiSPF3sukMmc0X5s7cCeARJYXd5EPsfqfl7RLBXOxbemOC9eBP1k
         1vqDkv783bQLAZ76/tI9pNjmYYCRSyn7n2PCE2oex0S0irHlMZMccEWn7iT5/rNwKlGe
         VWLg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=D3ru3rVBVfAhkTVcNkSNjVVn0v4Dab+84jSjykXjmxE=;
        b=ymoP3co8h0Tkn0iML4OmxP/wfa0SUxsZ5AqOMVhs6butm+SpRAN3wRrcAdnQMPznKr
         Yb5LcVl6m98sjMERyBZgBcNpBlV96TAGCD3uIRIRaAo5Y5hTQZ8BqSJg3Gg/EubZqe3a
         ofSr9d582CHxOR7zHKTRV8QTb4IIS8nPvlcFnoTslpDTYIut1/dayih2mRHcxf5v9a8Y
         DRnmqNZc2g0KrFdJLMu5u1PoqUW36iLviJkoSjORepS8g2HOkrVwG2H/IBsNFcPmjKd3
         19h8GPaN/e0hjrBwRmyZy5tRL1/hRMFiHBjNmJJrWAly/wkNOFAenhZpeF9FU8QmZRiF
         iKDQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=cmarinas@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=D3ru3rVBVfAhkTVcNkSNjVVn0v4Dab+84jSjykXjmxE=;
        b=jlqEXNYHpyTZ7VgGELcyoDPh8webuMChCx2Qy5K5zcgR1KfTSTiqvTqu7ehSYwYDGo
         cvvkYPUS8BHg6k3wVcL9vUM83j10zhrZlAJ3Vx6LyGAr5p45qpToa4dmbvfPsfjX+Z9P
         ceYgEN1Rk7mNZQIcMuMw2N9J3VsCS2+/fHVe5GRzwqNoG/NUQzt/rB2dDw7R+fZGqj1y
         bh8QxjKNU/EXqQD6FWvtDwLmfmtswYqiYuSR5in1FtsAG2oYlbXHojJn4o0qjP3ToFA5
         LBlWerLDjTaDlIoeOTsV0w1vqNZDynsAVa/ZjxRnbdZabbllnZA99DkhtpucDiWvMaBF
         Oz2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=D3ru3rVBVfAhkTVcNkSNjVVn0v4Dab+84jSjykXjmxE=;
        b=kvgEKuLqcyY67BW8gVaKtnRxJFVYYNt0/GbMyJmF+5T2HxwebhxKH1jI5S2uk9OGbs
         5lMyEZQkzd3KXOY/trQFxeXAtA4Di6e6y4WSWcc+/A7qmVyk0SRbHKadg8sbmBjd1XNW
         buK/XE1JvmbiwsfF356ol9NOELNihkzcQe4xVrla30sqbx0gBzqEuR5D1wgsHedyvmic
         66QyB0yqEDK7774uXiOoH44TK6LUQoZTKHg1q356NMPudwrhm7GmG31NTH5jk/HGjQlO
         P3jGAOh90x2a2/SD4EpZ/QuX6QERLr7nGxAcHmH4qCAmHMumjql2b0fh7G7Ck2jdWIYJ
         92BQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530bj0vL1iX4VamQnzWJZPBvAr6mvHJAFfLq2My8/wxLvb4YoQnw
	saGxpN1w6csdRXimGIZmUpY=
X-Google-Smtp-Source: ABdhPJzmGIdVfEtX0551AB1EztEG++qbuWw6PqgNXdPoOcAiKwdQWrKyeKPS5XAcMb066+UCaVNKpQ==
X-Received: by 2002:a63:5c3:: with SMTP id 186mr3145502pgf.173.1615997927010;
        Wed, 17 Mar 2021 09:18:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:2c8c:: with SMTP id s134ls9492412pfs.6.gmail; Wed, 17
 Mar 2021 09:18:46 -0700 (PDT)
X-Received: by 2002:a65:428b:: with SMTP id j11mr3279972pgp.47.1615997926393;
        Wed, 17 Mar 2021 09:18:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1615997926; cv=none;
        d=google.com; s=arc-20160816;
        b=09DYwwIv81jcZ7wJHwfje53p5NHerxu4vIkXrhwjCXhv8rNdpolIsX14ae4dq7/sfY
         Ud0i2J9qk6iwt//CZYJGgej6e+UZkMDe2f86J8ugLUTRd+PSFWiZdTUvwA5uWobpRWwH
         NrwKHYZzD6aSJ8EZ8g8oJp9Ks3M5+oqUL+UKKnc7/fg8BwKfsfKTa8NhbEMDzOrTE1lV
         bsxHu9y7lcgDa060dvlB0XJwraM+yhr/ZTKixLMWVD7Eq79S4A+l4PB5agcDtqsD7OhB
         /trwlVvEUAee13t6v9iwMMdBf5bm7oFQaNaQvbsRBcyjq0lBdyMnsddfYIYwDkYLMcUS
         FJqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=YZSYh9Ix3oiNW+amPJHM2GEixaE4Ui7RXRldDkIbFxk=;
        b=MwfHUmRq9yGYX9qlCeWB4nvkiDmI2T1VWRXyXKuPP3q8QGXGVBpN/mjnsB2bt4/skW
         8PYpETB9hQfmpK4m9agGMjJUSQuWdrJ6cnLZacJWY9nSGtAcYtWk1RJM87ozQjM+GYUK
         pAbm+vUM1FELcqSFvSzDogMTD0518wY8M00w4SDBAgg8JarTTbvx4vHsNU7XQpCS5ehJ
         8JkPXoGschTaWfCTz9c+zCIYle6zSUO2kuw8bKBVgsR8Xmsw7Z/TANAA4+U5C1+MVeCq
         fKPzRYDHjyz/VciasIGoEV44EaH2YiFC1MIEzgVxjTtWkOVh8j+tIjFSNycI//wEgmAo
         yLAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=cmarinas@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d13si995856pgm.5.2021.03.17.09.18.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Mar 2021 09:18:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8DB3A60C41;
	Wed, 17 Mar 2021 16:18:42 +0000 (UTC)
Date: Wed, 17 Mar 2021 16:18:39 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Will Deacon <will@kernel.org>, Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>, Kees Cook <keescook@chromium.org>,
	Mark Brown <broonie@kernel.org>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Kristina Martsenko <kristina.martsenko@arm.com>,
	Ionela Voinescu <ionela.voinescu@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Andrew Scull <ascull@google.com>,
	David Brazdil <dbrazdil@google.com>, Marc Zyngier <maz@kernel.org>,
	Ard Biesheuvel <ardb@kernel.org>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] [RFC] arm64: enable HAVE_LD_DEAD_CODE_DATA_ELIMINATION
Message-ID: <20210317161838.GF12269@arm.com>
References: <20210225112122.2198845-1-arnd@kernel.org>
 <20210317143757.GD12269@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210317143757.GD12269@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: catalin.marinas@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=cmarinas@kernel.org;       dmarc=fail (p=NONE
 sp=NONE dis=NONE) header.from=arm.com
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

On Wed, Mar 17, 2021 at 02:37:57PM +0000, Catalin Marinas wrote:
> On Thu, Feb 25, 2021 at 12:20:56PM +0100, Arnd Bergmann wrote:
> > diff --git a/arch/arm64/kernel/vmlinux.lds.S b/arch/arm64/kernel/vmlinux.lds.S
> > index bad2b9eaab22..926cdb597a45 100644
> > --- a/arch/arm64/kernel/vmlinux.lds.S
> > +++ b/arch/arm64/kernel/vmlinux.lds.S
> > @@ -217,7 +217,7 @@ SECTIONS
> >  		INIT_CALLS
> >  		CON_INITCALL
> >  		INIT_RAM_FS
> > -		*(.init.altinstructions .init.bss .init.bss.*)	/* from the EFI stub */
> > +		*(.init.altinstructions .init.data.* .init.bss .init.bss.*)	/* from the EFI stub */
> 
> INIT_DATA already covers .init.data and .init.data.*, so I don't think
> we need this change.

Ah, INIT_DATA only covers init.data.* (so no dot in front). The above
is needed for the EFI stub.

However, I gave this a quick try and under Qemu with -cpu max and -smp 2
(or more) it fails as below. I haven't debugged but the lr points to
just after the switch_to() call. Maybe some section got discarded and we
patched in the wrong instructions. It is fine with -cpu host or -smp 1.

-------------------8<------------------------
smp: Bringing up secondary CPUs ...
Detected PIPT I-cache on CPU1
CPU1: Booted secondary processor 0x0000000001 [0x000f0510]
Unable to handle kernel paging request at virtual address eb91d81ad2971160
Mem abort info:
  ESR = 0x86000004
  EC = 0x21: IABT (current EL), IL = 32 bits
  SET = 0, FnV = 0
  EA = 0, S1PTW = 0
[eb91d81ad2971160] address between user and kernel address ranges
Internal error: Oops: 86000004 [#1] PREEMPT SMP
Modules linked in:
CPU: 1 PID: 16 Comm: migration/1 Not tainted 5.12.0-rc3-00002-g128e977c1322 #1
Stopper: 0x0 <- 0x0
pstate: 60000085 (nZCv daIf -PAN -UAO -TCO BTYPE=--)
pc : 0xeb91d81ad2971160
lr : __schedule+0x230/0x6b8
sp : ffff80001009bd60
x29: ffff80001009bd60 x28: 0000000000000000 
x27: ffff0000000a6760 x26: ffff0000000b7540 
x25: 0080000000000000 x24: ffffd81ad3969000 
x23: ffff0000000a6200 x22: 6ee0d81ad2971658 
x21: ffff0000000a6200 x20: ffff000000080000 
x19: ffff00007fbc6bc0 x18: 0000000000000030 
x17: 0000000000000000 x16: 0000000000000000 
x15: 00008952b30a9a9e x14: 0000000000000366 
x13: 0000000000000192 x12: 0000000000000000 
x11: 0000000000000003 x10: 00000000000009b0 
x9 : ffff80001009bd30 x8 : ffff0000000a6c10 
x7 : ffff00007fbc6cc0 x6 : 00000000fffedb30 
x5 : 00000000ffffffff x4 : 0000000000000000 
x3 : 0000000000000008 x2 : 0000000000000000 
x1 : ffff0000000a6200 x0 : ffff0000000a3800 
Call trace:
 0xeb91d81ad2971160
 schedule+0x70/0x108
 schedule_preempt_disabled+0x24/0x40
 __kthread_parkme+0x68/0xd0
 kthread+0x138/0x170
 ret_from_fork+0x10/0x30
Code: bad PC value
---[ end trace af3481062ecef3e7 ]---

-- 
Catalin

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210317161838.GF12269%40arm.com.
