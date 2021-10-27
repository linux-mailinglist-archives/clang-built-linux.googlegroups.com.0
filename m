Return-Path: <clang-built-linux+bncBD6MT7EH5AARBPWO4WFQMGQEYYEI3CY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id BA1FF43CCBB
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 Oct 2021 16:50:38 +0200 (CEST)
Received: by mail-wr1-x438.google.com with SMTP id g15-20020a5d64ef000000b0016a1331535esf756091wri.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 Oct 2021 07:50:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1635346238; cv=pass;
        d=google.com; s=arc-20160816;
        b=uENUxQXcTUpBeVFm+nh7SZXhZoi8NfZzod3wSaZ2yjd+UKuPsbl1wYXnbLytnn9VsY
         L0Xm5Vjp+sCGvM0MQ/7+roM6RW6I8GMUpKiLYQMF9zx/HHtih9F+ZTzwJIXhg3jGnDUG
         qGnqewySBwvi8Q+9Nel9ULPbsZVus2BWNtzJuTe8Fqbe9HM6pcK5poJYk3gShQW7mjpR
         YO3ivyGVy+VSTIzEulqTuDtQvcJEWH2UQT5WUVyU9BAn9LNRHIMlZmKW6p9+9qHFqLOE
         ipAL4WYvCEFGanwQPqMeA5CzraZkVc4FKPn0M4OCuI+cG9hgvRp5BFruPbUemCeBS3pu
         FzdA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:message-id
         :in-reply-to:date:references:subject:cc:to:from:sender
         :dkim-signature;
        bh=jJ0jA/SPB6VyWgpn1EdVeTEnabVaxA1lbgDo+Wpqj4k=;
        b=lsWsISlGdYevA+bLSs4umWrbS57vwkmRJiuQXpC/vBNUX/SiavjlDf28Xx76lS3TJi
         LTitaL+XjfIbkW3mcoVuR6hA1ia5meRLwdRQgpSw05Fiybs+uzQ/yROuxaE7RHD1b/4T
         oFDeAJdRfFNNsNnge7Wxv8I/DgPVcHn6MNgRBjPnhzIH8nHov8zj7BtyvcyqRVB0nBoQ
         dPnqXk6ndDqAFW4ehQ6OLZvEY/d93SP1hlPIA3V5ZA/4Nf6Zp5A8+CMal6Vvt8IDzRro
         1i5NnJ9hSY6TRHXEAtwPvQ9V0nwzpLN9MdOOdIcgAlIq52J0gA9omh7FLd8janZUWUIt
         6zxQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of whitebox@nefkom.net designates 2001:a60:0:28:0:1:25:1 as permitted sender) smtp.mailfrom=whitebox@nefkom.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:references:date:in-reply-to:message-id
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jJ0jA/SPB6VyWgpn1EdVeTEnabVaxA1lbgDo+Wpqj4k=;
        b=t+1cBy5m+q3oqbXC3WbFyMMmaGr9NrWz4LKpgQE+yfJrZt5eGYjJ8zmojfMkoMHJgW
         gq1dxXOtS2UFXHBxOngfa6/nJA3lq3RnOMBVL2l9Pl2Ygk3VvJ8ArbvF02ouAuNEdRPV
         8ILQcj5gYDYeYE5Qy9l7c3YsUYmJ1RG9HX0gf4jhroGSDL7fXDC+hmw6FzAmg/JUJV7i
         CJRnqptY4wqWFNYJJRYxGZzE8k3KNTBRnaCEImA5SFQaAe2VJRaF1mVBNZ11nITwMkpc
         t+4y5309feRIPEF59o6q9G2f65pNtVjMc76M+xA6QaS3swTB+l0DNUWX/FKLamphYdWY
         MSIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:references:date
         :in-reply-to:message-id:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jJ0jA/SPB6VyWgpn1EdVeTEnabVaxA1lbgDo+Wpqj4k=;
        b=Jq8PZDyrTPLZELaIG0i4vRgD5mMKXgJ9b2wDvQZdK2YKI6F0mI/lVKjPbMpRlbmWTs
         sfr1qvcTSUOPMgQ/QNBx5wzRyI9J0vBxxYyF4h5f99MhUkzLZls+hWMeV99BR3pLxgmg
         8dKWutJNJu6x2UnCS7PWgEHCJNEwrsAu8s8UU7LE0j50iknvex1qpcS7GzKhwKuGlvbm
         tnJih2jkiCv41DJ+25yHCK+A0O8lxnyHvDI4REHcxPn6Ad6NJVXFTAokjEORT5t+b2tl
         Lk0gS5opYqjdGuzfW7Eyt5nCNRjK8B+WEPHko+5VNqDWL0NdUSSrjd4u3TUxnQ+F1HhH
         7XIA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533QLmnz0L8PVj+DdnKKcftUCOIqJOM5TvUuc6OTzsPi4DeDX5cT
	1oxSBLkXbgrqV6OaU5MNnQY=
X-Google-Smtp-Source: ABdhPJxl8D/wq71+BDy40oL5s/UQBo0rq++T/APSgT+D/jqC7UkxKASoX65zPtnaELLujimX9CQqvQ==
X-Received: by 2002:adf:fa08:: with SMTP id m8mr31558104wrr.417.1635346238469;
        Wed, 27 Oct 2021 07:50:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:4ed1:: with SMTP id g17ls2200888wmq.1.canary-gmail;
 Wed, 27 Oct 2021 07:50:37 -0700 (PDT)
X-Received: by 2002:a1c:a401:: with SMTP id n1mr6248667wme.162.1635346237599;
        Wed, 27 Oct 2021 07:50:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635346237; cv=none;
        d=google.com; s=arc-20160816;
        b=wmVx87jLhwhqmqNYfQsTIaswGv8ic/8qSVwhbb1Ak/S5zC8NHJZQPHG0lZokqYkENp
         Pa4jiT4dYHmjg47bDUdNsSrdWgakDyWHqrrttwysUMkfoRyliW1CCp3/4zj24TqYRMgX
         KxAq27wshKyam22MfPxNcUrYESrfqEy3a9+MGXe+ZYA4ZmvLzT/iShRkT9sROp5x38pu
         hLn8U6dr82UIaOS5OZRvrR9mX3esI8tCaOgBFUElqT1bBEvnCXAtE8rskkkoPuHC6TlY
         gPn5B/J+RYdFrctgdhV7rjeDV7G1gaBVSnfHuqMvhF7h98GSrzBQB7TX5MpRN8KiQH6W
         ioAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :subject:cc:to:from;
        bh=9ehE6ntGfn6Cc5lWBTOzYiWhT6TPxfjcU1CIIoOPWgA=;
        b=R2LqVwdIQI2YptKuuzOoavG1cLHGCvW951vfDS4vjci82C/eAkQD71B70xRi2T6xza
         1VSmKGrs2b+0cwxnzk/1ByA7TN2JaDBS5bFcpuYjrXqBnsN6+MK04LA/0gSuRMZs0JTY
         wSydVQfb6cGtfk4hou5Gdl6KgRFPLmL3EN76X+b2EmDjl5f7lmjYzza4VRFFvqhrJSLX
         A6X4EJDb9GXIREqg58elm/0a0Ok2wmq86NmtNFNE5hOx8hTahwS3s1iiDioW85iix+h3
         si7zXcrmEoGTyikxU0jVsOqz+O0l4NiZfnogsbviJi1QMPWZ3q6292oPChkyR9q8rcvc
         No1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of whitebox@nefkom.net designates 2001:a60:0:28:0:1:25:1 as permitted sender) smtp.mailfrom=whitebox@nefkom.net
Received: from mail-out.m-online.net (mail-out.m-online.net. [2001:a60:0:28:0:1:25:1])
        by gmr-mx.google.com with ESMTPS id a1si10414wrq.1.2021.10.27.07.50.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Oct 2021 07:50:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of whitebox@nefkom.net designates 2001:a60:0:28:0:1:25:1 as permitted sender) client-ip=2001:a60:0:28:0:1:25:1;
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
	by mail-out.m-online.net (Postfix) with ESMTP id 4HfWp413gwz1rk5Y;
	Wed, 27 Oct 2021 16:50:36 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
	by mail.m-online.net (Postfix) with ESMTP id 4HfWp4017Qz1qqkD;
	Wed, 27 Oct 2021 16:50:35 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
	by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
	with ESMTP id mvw_Vf1g8ae4; Wed, 27 Oct 2021 16:50:34 +0200 (CEST)
X-Auth-Info: uyeUEsOYKs8g0PlgbxUncJma1HMUm74E4sgRZWggIapnCF9LPFgALkqIfuqoYU9Q
Received: from igel.home (ppp-46-244-163-205.dynamic.mnet-online.de [46.244.163.205])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.mnet-online.de (Postfix) with ESMTPSA;
	Wed, 27 Oct 2021 16:50:34 +0200 (CEST)
Received: by igel.home (Postfix, from userid 1000)
	id C36B92C28AC; Wed, 27 Oct 2021 16:50:33 +0200 (CEST)
From: Andreas Schwab <schwab@linux-m68k.org>
To: Saleem Abdulrasool <abdulras@google.com>
Cc: linux-riscv@lists.infradead.org,  linux-kernel@vger.kernel.org,  Palmer
 Dabbelt <palmer@dabbelt.com>,  Nathan Chancellor <nathan@kernel.org>,
  Nick Desaulniers <ndesaulniers@google.com>,  Bill Wendling
 <morbo@google.com>,  clang-built-linux@googlegroups.com
Subject: Re: [PATCH v3] riscv: explicitly use symbol offsets for VDSO
References: <20210804173214.1027994-1-abdulras@google.com>
X-Yow: I've got to get these SNACK CAKES to NEWARK by DAWN!!
Date: Wed, 27 Oct 2021 16:50:33 +0200
In-Reply-To: <20210804173214.1027994-1-abdulras@google.com> (Saleem
	Abdulrasool's message of "Wed, 4 Aug 2021 17:32:14 +0000")
Message-ID: <874k92a5dy.fsf@igel.home>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.2 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: schwab@linux-m68k.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of whitebox@nefkom.net designates 2001:a60:0:28:0:1:25:1
 as permitted sender) smtp.mailfrom=whitebox@nefkom.net
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

On Aug 04 2021, Saleem Abdulrasool wrote:

> The current implementation of the `__rt_sigaction` reference computed an
> absolute offset relative to the mapped base of the VDSO.  While this can
> be handled in the medlow model, the medany model cannot handle this as
> it is meant to be position independent.  The current implementation
> relied on the BFD linker relaxing the PC-relative relocation into an
> absolute relocation as it was a near-zero address allowing it to be
> referenced relative to `zero`.
>
> We now extract the offsets and create a generated header allowing the
> build with LLVM and lld to succeed as we no longer depend on the linker
> rewriting address references near zero.  This change was largely
> modelled after the ARM64 target which does something similar.
>
> Signed-off-by: Saleem Abdulrasool <abdulras@google.com>

I think this broke out-of-tree module builds.

https://build.opensuse.org/package/live_build_log/openSUSE:Factory:RISCV/rtl8812au/standard/riscv64

+ make -j4
make ARCH=riscv CROSS_COMPILE= -C /usr/src/linux-obj/riscv64/default M=/home/abuild/rpmbuild/BUILD/rtl8812au-5.9.3.2+git20210427.6ef5d8f/obj/default  modules
make[1]: Entering directory '/usr/src/linux-5.14.14-1-obj/riscv64/default'
mkdir: cannot create directory 'arch/riscv/kernel': Permission denied
  LDS     arch/riscv/kernel/vdso/vdso.lds
  AS      arch/riscv/kernel/vdso/rt_sigreturn.o
  CC      arch/riscv/kernel/vdso/vgettimeofday.o
  AS      arch/riscv/kernel/vdso/getcpu.o
mkdir: cannot create directory 'arch/riscv/kernel': Permission denied
  LDS     arch/riscv/kernel/vdso/vdso.lds
  AS      arch/riscv/kernel/vdso/rt_sigreturn.o
  CC      arch/riscv/kernel/vdso/vgettimeofday.o
  AS      arch/riscv/kernel/vdso/getcpu.o
cc1: fatal error: opening output file arch/riscv/kernel/vdso/vdso.lds: No such file or directory
compilation terminated.
make[3]: *** [/usr/src/linux-5.14.14-1/scripts/Makefile.build:366: arch/riscv/kernel/vdso/vdso.lds] Error 1

Andreas.

-- 
Andreas Schwab, schwab@linux-m68k.org
GPG Key fingerprint = 7578 EB47 D4E5 4D69 2510  2552 DF73 E780 A9DA AEC1
"And now for something completely different."

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/874k92a5dy.fsf%40igel.home.
