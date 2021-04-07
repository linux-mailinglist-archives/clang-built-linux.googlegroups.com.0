Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBAMEXCBQMGQELEBRUNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53e.google.com (mail-ed1-x53e.google.com [IPv6:2a00:1450:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 343FA3574C1
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Apr 2021 21:03:30 +0200 (CEST)
Received: by mail-ed1-x53e.google.com with SMTP id m21sf2935761edp.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Apr 2021 12:03:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617822210; cv=pass;
        d=google.com; s=arc-20160816;
        b=CGInW7Bp+vLUeFt/jS1EU+l84ire5PLBgcFafAZsYYS1Wn6Zpo8n3Tr+pTTujK/d1N
         +wmENJGQqFENN/C0/h25uhJRpxZT0ACS7U9l16gDWcDce/E7XbEIqTq5XUrUZooPzcOv
         LRVgKa3Z14sYJjAbVbvXsgsZHBa3puGo2X8QxLBIiTf9CsRunpjfLSSeD+j1ZN2OPyIt
         s/z7ynaSO7uDeZ8I2cb1be/ohehJEiJv95DEE0ehdDq3KWjAZSIdpitp55p88xk5R3+d
         ZGoVWlcntzPUa7LWxiTM+5+hGC7VV9RYvviTHJHSkundiHpw9o+8C8xh/fygs0ZyAgf3
         QTBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=vNK37LGN4hOToqwJpQ635v0elRkR/H2H3fKGSoxpN5A=;
        b=GQCM2rsku0rtBbs8OWjlbGQjtTXZ4tLJWj13emcrxHqV9O/0BZtrIBuNEC/4DnqUeZ
         U2R9xLnjneC6HYGo5BD4Y3QP0mzdzK7iUyqPnxH2u8NR2eUaN/AURsdRhM7YRI9whG0w
         vMgf2OcvPuBmfsgdDvVBHSxptIEDd2C91laCaZlHpdtbBTRbc6FyVGsApOrRIVq6SgYz
         z6ilFoNKVqoT75ixFl0ii/atQmnvor1XPdENc/7/Ms5LklQGghWL2S5tklaEBDIpwPf+
         ZEm8zL5ByqXoELLJBbKsUXrIDscgM2wm5CQJ3mreJXrUK2qRf+IaKzt2vtwUb8Gl6iOv
         3m0w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=SX+Ta7aY;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vNK37LGN4hOToqwJpQ635v0elRkR/H2H3fKGSoxpN5A=;
        b=YZnnPAlkOQ+7M3gr3gAPufF+MKg7w1gUQFzo49wl5Su5zmsQCdFT774m+u2NBAYCDV
         huYzFudyeVa0TLMBD0A0tc3A+QxjAj3HGPCTJGpkz5afF4QAO+6dw8HQvPIz+f3rRwcA
         Nom4XGW9i77qsBqRvSnsf39HXrlUYNNWHTSeO2MWcA36aRF8hv0E33FPmE7Ysh6QbWTY
         8IHagFOW/H1YElhX8+of7iLM5w0L0klbw/sWPoUQasCWGS2Rv+p/b5Jooy4N2XNx0AWu
         PT5qU7RgIKwk7FcGq1vc80ib0Ss8Tmn2gb8li+rgxM99ulwzIk62WpTUaIqLLcSBrclj
         uT5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vNK37LGN4hOToqwJpQ635v0elRkR/H2H3fKGSoxpN5A=;
        b=UvH2Gq8AU2xLGts81OHRegMw7PBhPFsa31Wfbsit6/JlRqoMTMkQfMe192S4BFUM8B
         ixWIpzpiouuXPKLcyBVnaO5CSs3bhEWrm8DftiXrRyigRxELb3GBJFsKheekJ6Onipfp
         qeLJToO+Gb0ND4pdZOvPUjCVc4rlId09X0SMAfki3jQU+IO8u51WVkVEEMYYJ9lt7gGG
         J83TpisbxzdC6iMyYFeAMNlAVJkMn1jG4GYRm1KEvz2QyQrkCmaj4OqkATDOhKLIDG1T
         mW9yspDipKp488UEfhbRQ1qAS6wbxS5lhAIfQn0vesuNoYZJ84+Wre3lF3XkBZd9PhQp
         lujQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530vdsjUYzjcTNVNhROMv7OXlwV7t8wYqho42EZ8rPdaQNbf8NDs
	Kvgs+QF+LYVWQF9jolcv4yc=
X-Google-Smtp-Source: ABdhPJxs6+6rYhty7q2PXWSjXIw2mGGpXzeFGjrn0cYwnXYp/mdkS5Ns3XpfwCiBVZUwVXUZvcWi4A==
X-Received: by 2002:a05:6402:8d0:: with SMTP id d16mr6511638edz.188.1617822209995;
        Wed, 07 Apr 2021 12:03:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:50cd:: with SMTP id h13ls4119035edb.3.gmail; Wed,
 07 Apr 2021 12:03:29 -0700 (PDT)
X-Received: by 2002:a05:6402:6ca:: with SMTP id n10mr6343226edy.312.1617822209172;
        Wed, 07 Apr 2021 12:03:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617822209; cv=none;
        d=google.com; s=arc-20160816;
        b=UO/wPmWCmUUwUoknYCePpUjc8KiH6GPn6YwrPEozRCsqWFpf39ZwQbVaF/qLLvtgXq
         lk9qORwszfnwY3/U9NV0HSaPIQd9x52Fe/yIuRZoJEjLjGcnG8VvPLsPrrPGl8N//QiW
         CCgUt6ex6WPHlGd0CcUR87C+zKrYTSUP8KDAZsyavPu1NU/Yr9cA05RAta9/BRQglFXA
         Au6vl9vGAKXFYwwTvetWPfqY8BdxNfg4x0mE7sV6OJOYvP6dZd+Q4TWnJ41YtQoTdiFu
         z9p2A9tvmym+9xDhtwVWQdYB+obs3UWldPBqCzWIp0KalPq66AZA6GQnSGpjqCuKl6zt
         Y+PQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=JUOYRsoSNtxMpZveLJ6dY4PyEUlazbU0SkSDty5Zntg=;
        b=loWdLD1tBZ2G786VDmbBMq+LTcdnaYrj2JP/oaaBeMKKivu6NGOokiFUXPyeUUvULp
         PchrL+ew4++ABGJ/g5Bb71xJd0czBaLcAcG0R0hJHCkB6OU5+JMT2upjSDC42tH2x5/4
         0Jhw9FcxtS4/LjAjusmPb+7Bo9Y7dLkFlUYecgBiW5xRb50hdq4Zzx7Q9Sa7dUWch20h
         Y6E7utDHoDt3GLVDPVl3f+tLW4IQykjhOkhF6HMnPkNkxW/7btI71vnorJReYRNZPWr7
         pOt3rv0kCnasttDkeqs8RmWho1vo71St1wnLcvF7uzpM3OxUdYvmsNx/JyFveJ2+4sI9
         xNBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=SX+Ta7aY;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [2a01:4f8:190:11c2::b:1457])
        by gmr-mx.google.com with ESMTPS id ck26si3566643edb.1.2021.04.07.12.03.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Apr 2021 12:03:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) client-ip=2a01:4f8:190:11c2::b:1457;
Received: from zn.tnic (p200300ec2f08fb0068bab63ea534f357.dip0.t-ipconnect.de [IPv6:2003:ec:2f08:fb00:68ba:b63e:a534:f357])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 1A0E11EC027D;
	Wed,  7 Apr 2021 21:03:28 +0200 (CEST)
Date: Wed, 7 Apr 2021 21:03:28 +0200
From: Borislav Petkov <bp@alien8.de>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Yang Li <yang.lee@linux.alibaba.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	"H. Peter Anvin" <hpa@zytor.com>,
	Nathan Chancellor <nathan@kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Masahiro Yamada <masahiroy@kernel.org>
Subject: Re: [PATCH] x86/kernel: remove unneeded dead-store initialization
Message-ID: <20210407190328.GM25319@zn.tnic>
References: <1617177624-24670-1-git-send-email-yang.lee@linux.alibaba.com>
 <20210407120239.GD25319@zn.tnic>
 <CAKwvOdnuKazNhqXAM9Qj7DgCW=PqVHkyyfYWytmkyBzv0QeYsw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnuKazNhqXAM9Qj7DgCW=PqVHkyyfYWytmkyBzv0QeYsw@mail.gmail.com>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=SX+Ta7aY;       spf=pass
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

On Wed, Apr 07, 2021 at 10:41:26AM -0700, Nick Desaulniers wrote:
> You do have clang-tidy installed right? `which clang-tidy`?

Yah, installed that and was able to repro:

arch/x86/kernel/cpu/cacheinfo.c:880:24: warning: Value stored to 'this_cpu_ci' during its initialization is never read [clang-analyzer-deadcode.DeadStores]
        struct cpu_cacheinfo *this_cpu_ci = get_cpu_cacheinfo(cpu);
arch/x86/kernel/cpu/cacheinfo.c:880:24: note: Value stored to 'this_cpu_ci' during its initialization is never read

Thx.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210407190328.GM25319%40zn.tnic.
