Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBOOIXT5QKGQER36B3XQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x537.google.com (mail-ed1-x537.google.com [IPv6:2a00:1450:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 23A712798B0
	for <lists+clang-built-linux@lfdr.de>; Sat, 26 Sep 2020 13:21:30 +0200 (CEST)
Received: by mail-ed1-x537.google.com with SMTP id d27sf2218009edj.21
        for <lists+clang-built-linux@lfdr.de>; Sat, 26 Sep 2020 04:21:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601119290; cv=pass;
        d=google.com; s=arc-20160816;
        b=xm3/F/ZXnm7EkPqhx6Me8/WYx6h5YwjOdVD9xyl8CMrjEfZ8P4WoPSLeAAohnW0fPC
         G4AAWyCmVy23IrZK3dYvXn7J9cfnpzyJVokpPstA4+gQzCn8Wo3ghWeOKK097aNi3x/0
         zrZsirOT1WxWyny5pj3b7XpYgGJHIozgdDLYi0uJGAkWoOIsN/NG7x45M1gqevVa9lHR
         PQGPv/RwzcU4yL6HO0nqF5AZeVPVgRd3FDw65NhHQIECxQJ7crEBtAgiBO2HRhkN8DxP
         XdWSX/4I13CzddzjaSTamgBouv1TNT7Vw6y14CoGTHV2aEx6zpO38lEtKRGbotR+POrq
         CTtA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=lYNudjg68YqgI8y8JMNbKTJNWbAiNBRsTj/BzkGuPXQ=;
        b=BUIdlvvdXJF7uz7ylD4ao/yWwNwy7Vp6PhlThFWYmDlBfMOhix7oNHT6aAm93TGoyv
         k+kcApuvsCI7HQfdCOadfuh+/cjIyFnxJzSicJeaFAxFohnPmwiS632mhCp+zwrgO6tj
         +bXZFCt1vprM8FZ1XzmR7nQy7I2Hl1wNadp/W2kM/XK7fHUwoQ6FH1/+QmAlfmnFAGOq
         64c6igU53XthBUQwgvgsIRjaAgt9WBhlyPQsVSWHmZhtTST2jBehq1jXElAtiyQL0U4f
         qypUyTP08OtOUMjmxZZK0eNLSDoGKr/rn/2uWD06pg5pWY9CrAI8MqrZeudP43/U+S9L
         IWOw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=jIE5dL9t;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lYNudjg68YqgI8y8JMNbKTJNWbAiNBRsTj/BzkGuPXQ=;
        b=AYDkJBz5Jsae7pg8qFv0xOKzySDHKR943UlzrP1L+p85zsaohfluPNtP9Tn4xWawKs
         Y/Zxu3bkhryNlBvmCf3eYOQq4LHFC2QFrqVSLQ/E+vsXLM30yCSW4btqV6/koUwkLBGJ
         ZuuR6rfJ/cDCs93FueS+xdNuHM4vxTQYibvW8bjDVXNEjMAaef5ZEMmrQikHpP2KGdau
         F6kxIZaBzPZ1eKQ9rMS349uAYmlHvXjWz/heffPabkqNH3LJyzvFaEvyPRruDu3vJ1XS
         Bgw6C5dKd75B1c9Ceaoox0RYaHxwxl70Yyj5GkNChqiY7DMWnsc8AWpCHA5WZKPrW56U
         A68Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=lYNudjg68YqgI8y8JMNbKTJNWbAiNBRsTj/BzkGuPXQ=;
        b=GxuEzjk6/laKjg190d02D2KSfT7fZaIOX+6CaKelhEy2CWORZe2Fd+8f6ZbssC9Exg
         eCPRTZ9ZQzihgEVDJMHGh80F5++lTGm68NDUh7tSr5vQSTfzflxs219vsi9yZxmaoeuJ
         39nPX/jMJ0HEwg7DlOGwmn/I6ccGTsbBr8Aru2BJWjPML7Qbx6zbuSQvDOvcnkYpTK4Q
         pYTIvd2tYHD+jU5aJcgOaz97kTwM9n9whHIunZ5JYgE+88HHRASxw3ZofVpIaCapmUPz
         ZAlJM8k4wu/S4nFvQt657W+46ZW51LdjhbNEPwC8RSREmztqr4c5DJZno6gdZ9mQsE9+
         lmfw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533J7qFebGViNNwEEy7yLrfFqkc7FVfZBQkNKuaIKfLV0EzY0TAk
	2udd+UibiytFgvmzH/SdIrM=
X-Google-Smtp-Source: ABdhPJwuDUWSrPu0mB+9pX2zKno3LvQTwN5lCR/jm3pLgKjSu6UyeSmlcrUn9Fg3QcCa1TWK2/1CMw==
X-Received: by 2002:a50:e44b:: with SMTP id e11mr6238858edm.73.1601119289879;
        Sat, 26 Sep 2020 04:21:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:bf49:: with SMTP id g9ls5639061edk.1.gmail; Sat, 26 Sep
 2020 04:21:29 -0700 (PDT)
X-Received: by 2002:a05:6402:1109:: with SMTP id u9mr6263110edv.74.1601119288982;
        Sat, 26 Sep 2020 04:21:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601119288; cv=none;
        d=google.com; s=arc-20160816;
        b=kJ2B/3jmD0uhHnDIa8WxKAWz2vOsLDkXHin86c1vqyJkYzAaLnctnZIiKg4/MKUjxS
         cDA0B1cKuTxL5QmeALtdDe5svNmjoNziH1SSElO10w5Eh3Wgm+0dc6SvQDdx1Hn6m20s
         eCuDPNp8F4xZUh+vzCMyCle5xxcUwqygjK7bseo4Jef3XywJsjNodat/T1RNVfdosGiJ
         hmmoHRvqurqTkcKjD8SR84ExjtC3U+DqF1SiQlwEmMwtodSpqfbCCvbhlOUO0yXExzvB
         /JNCIm+BiHL2v4nEgg0+TZl6RuFwKKc5WaQO75SDQ1izgXDAgWAk42MPwh584vATUb+T
         qw2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=K7HXH+8g7WOwBC/NUI8kN5arZwFz+vcbQIKxgw2L5Pg=;
        b=cYxI2jRQSChhanM1A6i6X5gepszkeog+rVyMoW2KRqJXAlj5xRVPkj04ajq7YTGF6W
         qSrdep1AIqKuMHW0f1JTlRRSHnM9TeaymloPY6kmAA2V2L4Tz4a1N00puXzix/zXPB1w
         Mf5IYMKSUvDANsu38m8FN80yqDt2jpqybO1QpvepO2fRspbDF0VkBKTOAH6OVkdmidEU
         QhODMyqIk+ljliSDRgptZH+bwl4Sg0H8Zt9YoCWyq/g5sBuTbqqFIm6kNQOMqkRo5sTu
         cnktFC6Sv0YQxx8RtCSoMdoBV3iR4QKK28VUOgRohSz7mbmRgaFIrxYlIL8zxBaF8F6s
         nZLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=jIE5dL9t;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [2a01:4f8:190:11c2::b:1457])
        by gmr-mx.google.com with ESMTPS id ca8si36719ejb.0.2020.09.26.04.21.28
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 26 Sep 2020 04:21:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) client-ip=2a01:4f8:190:11c2::b:1457;
Received: from zn.tnic (p200300ec2f1c2500ffe5133b4df85bce.dip0.t-ipconnect.de [IPv6:2003:ec:2f1c:2500:ffe5:133b:4df8:5bce])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 478D11EC02FE;
	Sat, 26 Sep 2020 13:21:28 +0200 (CEST)
Date: Sat, 26 Sep 2020 13:21:19 +0200
From: Borislav Petkov <bp@alien8.de>
To: Dmitry Vyukov <dvyukov@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	syzbot <syzbot+ce179bc99e64377c24bc@syzkaller.appspotmail.com>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	"H. Peter Anvin" <hpa@zytor.com>, Jiri Olsa <jolsa@redhat.com>,
	LKML <linux-kernel@vger.kernel.org>,
	Mark Rutland <mark.rutland@arm.com>, Ingo Molnar <mingo@redhat.com>,
	Namhyung Kim <namhyung@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	the arch/x86 maintainers <x86@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: general protection fault in perf_misc_flags
Message-ID: <20200926112119.GA22089@zn.tnic>
References: <20200919110831.GD7462@zn.tnic>
 <CACT4Y+ZhofJhNjfav22YNVpxtH4_+3Qaut6rOiqv4MLNU5mcEg@mail.gmail.com>
 <CACT4Y+b9ZCKJkOmwbEC6sZxEQ-9g2g=-v4+X0aWv7AsrZo7utA@mail.gmail.com>
 <CAKwvOdmKcn=FNzwtBZ8z0evLz4BXgWtsoz9+QTC6GLqtNp1bXg@mail.gmail.com>
 <20200921221336.GN5901@zn.tnic>
 <CAKwvOd=E11KriNqeVv2-Tvq5sQy=4vyBzDEH22D5h5LgBeFsVw@mail.gmail.com>
 <20200923090336.GD28545@zn.tnic>
 <CACT4Y+Y4-vqdv01ebyzhUoggUCUyvbhjut7Wvj=r4dBfyxLeng@mail.gmail.com>
 <20200923103431.GF28545@zn.tnic>
 <CACT4Y+ayTBwBwsnV9Kp-vMQ=hgu9-r9g4qzAfd+HdQXX95PX9g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CACT4Y+ayTBwBwsnV9Kp-vMQ=hgu9-r9g4qzAfd+HdQXX95PX9g@mail.gmail.com>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=jIE5dL9t;       spf=pass
 (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as
 permitted sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=alien8.de
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

On Wed, Sep 23, 2020 at 05:20:06PM +0200, Dmitry Vyukov wrote:
> It's a random fuzzing workload. You can get this workload by running
> syzkaller locally:
> https://github.com/google/syzkaller/blob/master/docs/linux/setup_ubuntu-host_qemu-vm_x86-64-kernel.md

Yeah, the my.cfg example suggests that the syz-manager starts the guest
and supplies the kernel, etc.

Is there a possibility to run the workload in an already existing guest
which I've booted prior?

I'm asking because I have all the infra for testing kernels in guests
already setup here and it would be easier for me to simply run the
workload directly in the guest and then poke at it.

Thx.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200926112119.GA22089%40zn.tnic.
