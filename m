Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBB3X4Q32QKGQETUZA6NY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id C0A921B6072
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Apr 2020 18:12:30 +0200 (CEST)
Received: by mail-lf1-x139.google.com with SMTP id s1sf2514802lfd.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Apr 2020 09:12:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587658350; cv=pass;
        d=google.com; s=arc-20160816;
        b=Wawt8KZw488SkcApHtbOiMecGnHeIvqlx0cqW8Th91bkiQH4qNUzCzaLJggLhfWEqd
         J3p0tSSnjp+2bsgAQWM+H/7uxizxaP3pGm17NNPtZ9Sk11rSC3Qg99dnFEJAzNeLI3Bo
         5zFRoqPuQo8b3b2wjSy/mMRyWYEXfsqMQH8vyZoAlco0meQcsVBfcTVyDB80vcaCZppG
         Pehe1JOCIyPwBWIgV8JFKQ1nJhpgEObfaNhFXvC5M3AP0ckM980bv0eZqcgfjLeVpkgU
         KW7rrMzIaH5Ssx0pw17vHuXc/BxtjEnlfX0PQTh79XYzKBXpXZz7Qwue4RdgobuobLJC
         IvaA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=8z3LnY6BDJ32KKhq0Ye4qzP1/IfIWKBREVEReFJohns=;
        b=vn1Yf6IRLSsIO1Whi8DYrf9LnPUw7rMqjD/urh3QLE2Y+TtOnaS1xga8xu6FzkzudQ
         ozxlYHUPskjsMDwztVIOF60aF9gRVMRB+N7yFH7uf0asmzx0OQKUdoAZaRuM/Fd0MwBc
         NJ89PGTNh/0O3tOrvd2hs4iQHhDDm0MjxIubgfCGK1S/UMLeJfO/KIDiQ7xfc23/QLFf
         BvC2yIb7z5PDwarhyM99LaxPJVMFWEOyvT91awn2CrErQsw2vMEZ7Uxfnjir5g/Gz01K
         7B2n7dJDZw1mLMttO+gX/51D+lu09cXws1+V/39Bojnd80QEJW+l9iANCgFWYuqMiZWO
         Cq9g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=peqLmI8c;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8z3LnY6BDJ32KKhq0Ye4qzP1/IfIWKBREVEReFJohns=;
        b=coPsU7V1YP+9dKJMrsjIEvqQfZ/qcRubSBZrChclGKarcka0r5EShR8qhuSs3erlGm
         Q0FCw52sInyb/g9OU73d8jAZLIWJB88H2ahiCdF/rGzl+YjNQtRumiJKfQQ93cP+wwla
         EdokaJV8glq4AoYYfj8SJ/PDSLJYJgbMw4Tars5MkuoJap/08HacQmfUqopKiuJLJ6dP
         fG7xZb+UxjMD9e/rgcWgmfMt3cyR9AY+BpbU5E/9aPHZ9wF4HSqA0N9PbDC85Jt8kw2T
         zxso17xVIwIpY6x4gRhEMW/dVPdqkqJAWTGfeFWtfOmmPr5C5vOt1DCwu7dvjuOYBIbE
         nmwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8z3LnY6BDJ32KKhq0Ye4qzP1/IfIWKBREVEReFJohns=;
        b=akbdglc5SdjjqqF8Rj+chxNfYfIIJTxnt98Rrd+thiPYPQdd5OpV38hhyFlzPDTiDF
         0HoqGC+nYhxDuckqvINeIFZmCetaOvUKwjhGfLJ6yrBLVgxKgDhtf9sCjP1U3Z/6d8rF
         x0milPoitxyFEGcfjHN7132fs3MR3WS4P2DsPmvTnDe1buSY4gTK7bgKdUv6DQQs0zim
         TcOLmA4CCh0YAJtW/2tSBv3PIiKR1Fu046GppBBk7TCYoF2lRrPn6yXf80A1XYHChx74
         HETvW99BZH8Q96LipnVWNHsVAWW1DKqVlFziLtkb37V/H/vG44zQUtkp2QNy5+RUmR3+
         l5Qw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubDisZJgLo+S+nZQixwLtlug0iEJLTTuzNv4jNrxK6jXUlyJWgC
	0Fw9PDyWlTFsKonFm5puDFk=
X-Google-Smtp-Source: APiQypL7qLf5r23R8wAooh6+bql/Mq2pAF+uZD9a3Hx3/WwqOWxiOXHTZ1dxB1ow8c+E06Jc1+PciQ==
X-Received: by 2002:a2e:a313:: with SMTP id l19mr2922310lje.133.1587658350279;
        Thu, 23 Apr 2020 09:12:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:5205:: with SMTP id m5ls1388491lfb.10.gmail; Thu, 23 Apr
 2020 09:12:29 -0700 (PDT)
X-Received: by 2002:a05:6512:3f4:: with SMTP id n20mr2940370lfq.100.1587658349696;
        Thu, 23 Apr 2020 09:12:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587658349; cv=none;
        d=google.com; s=arc-20160816;
        b=fTvLDjy9LonkNiyRo1JIxQtmiwfdYj2QysAObuvpHnPRBQibxnGvfnvVw4n3eCYOyw
         h3fQMdkxfximG29cyNMDpRM47Q2Gu74aDHS0vI/BnVnjptK0bDJ3EonFWE3hww9fa4fb
         V3Chgwyvu8VYqObAOx/TGkuYapM7UvqX9EFOEgnHXcJvSm3iUPaLjZ6TMgTT6JrergND
         36fe/f0OKq2G5Wac596TI0vF9gfI8PCVC2L0vEpowbe7NS6FMZxIlo17yTHX3TAEagGh
         qOHCka52ea1jSftjEA00y1AFZqpfXlDJH5IjaOPDf5YjVl507KlQXKGq/Yy4Gj6tOzlK
         jr/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=igXY94ymhLHLbnPRtnKA4PNuErVbqZgvsorBI0rNWao=;
        b=yac4sH6pX5rGSYtl2rqWjLb/wKULa5Zee0ev2Jfmv0nBH96VCRygNYGSNxhZ5oBwn2
         LuoibfL70785/kuDKKiAYzjh6pZYy/SgDi0jCIpiEICFdHKuCkEMkZvZF3kjKY1ItcIX
         /rdxeCTkBKUIOFKssCSh5Nv69Sthxg3p75UNLTnYMLdpz1xyDFuYLq7OjbWwyPD980r2
         cCbgRpl9ceGExqVJAt5PVoHlojeCD1F2q3U7+epHprFeiqU3ReUV9NBhxkTzpbymqfLK
         O6Yl1jN8aVV6tjRQcaPgzSG7ctTyJCX6gOe7Gn+RFLFm5plx9BxYKCZWWKGbmrSMxanZ
         9S7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=peqLmI8c;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [2a01:4f8:190:11c2::b:1457])
        by gmr-mx.google.com with ESMTPS id f17si225453lfp.0.2020.04.23.09.12.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Apr 2020 09:12:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) client-ip=2a01:4f8:190:11c2::b:1457;
Received: from zn.tnic (p200300EC2F0D2E00329C23FFFEA6A903.dip0.t-ipconnect.de [IPv6:2003:ec:2f0d:2e00:329c:23ff:fea6:a903])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 359101EC0D8B;
	Thu, 23 Apr 2020 18:12:28 +0200 (CEST)
Date: Thu, 23 Apr 2020 18:12:24 +0200
From: Borislav Petkov <bp@alien8.de>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Michael Matz <matz@suse.de>, Jakub Jelinek <jakub@redhat.com>,
	Sergei Trofimovich <slyfox@gentoo.org>,
	LKML <linux-kernel@vger.kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>,
	Andy Lutomirski <luto@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>, x86@kernel.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kees Cook <keescook@chromium.org>,
	Martin =?utf-8?B?TGnFoWth?= <mliska@suse.cz>
Subject: [PATCH] x86: Fix early boot crash on gcc-10, next try
Message-ID: <20200423161126.GD26021@zn.tnic>
References: <20200417190607.GY2424@tucnak>
 <CAKwvOdkkbWgWmNthq5KijCdtatM9PEAaCknaq8US9w4qaDuwug@mail.gmail.com>
 <alpine.LSU.2.21.2004201401120.11688@wotan.suse.de>
 <20200422102309.GA26846@zn.tnic>
 <CAKwvOd=Dza3UBfeUzs2RW6ko5fDr3jYeGQAYpJXqyEVns6DJHg@mail.gmail.com>
 <20200422192113.GG26846@zn.tnic>
 <CAKwvOdkbcO8RzoafON2mGiSy5P96P5+aY8GySysF2my7q+nTqw@mail.gmail.com>
 <20200422212605.GI26846@zn.tnic>
 <CAKwvOd=exxhfb8N6=1Q=wBUaYcRDEq3L1+TiHDLz+pxWg8OuwQ@mail.gmail.com>
 <20200423125300.GC26021@zn.tnic>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20200423125300.GC26021@zn.tnic>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=peqLmI8c;       spf=pass
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

Ok,

I have tried to summarize our odyssey so far and here's what I came up
with. Just built latest gcc from the git repo and it seems to work.

Next I need to come up with a slick way of testing the compiler...

Thx.

---
From: Borislav Petkov <bp@suse.de>

... or the odyssey of trying to disable the stack protector for the
function which generates the stack canary value.

The whole story started with Sergei reporting a boot crash with a kernel
built with gcc-10:

  Kernel panic =E2=80=94 not syncing: stack-protector: Kernel stack is corr=
upted in: start_secondary
  CPU: 1 PID: 0 Comm: swapper/1 Not tainted 5.6.0-rc5=E2=80=9400235=E2=80=
=94gfffb08b37df9 #139
  Hardware name: Gigabyte Technology Co., Ltd. To be filled by O.E.M./H77M=
=E2=80=94D3H, BIOS F12 11/14/2013
  Call Trace:
    dump_stack
    panic
    ? start_secondary
    __stack_chk_fail
    start_secondary
    secondary_startup_64
  -=E2=80=94-[ end Kernel panic =E2=80=94 not syncing: stack=E2=80=94protec=
tor: Kernel stack is corrupted in: start_secondary

This happens because gcc-10 tail-call optimizes the last function call
in start_secondary() - cpu_startup_entry() - and thus emits a stack
canary check which fails because the canary value changes after the
boot_init_stack_canary() call.

To fix that, the initial attempt was to mark the one function which
generates the stack canary with:

  __attribute__((optimize("-fno-stack-protector"))) ... start_secondary(voi=
d *unused)

however, using the optimize attribute doesn't work cumulatively
as the attribute does not add to but rather replaces previously
supplied optimization options - roughly all -fxxx options.

The key one among them being -fno-omit-frame-pointer and thus leading to
not present frame pointer - frame pointer which the kernel needs.

The next attempt to prevent compilers from tail-call optimizing
the last function call cpu_startup_entry(), shy of carving out
start_secondary() into a separate compilation unit and building it with
-fno-stack-protector, is this one.

The current solution is short and sweet, and reportedly, is supported by
both compilers so let's see how far we'll get this time.

Reported-by: Sergei Trofimovich <slyfox@gentoo.org>
Signed-off-by: Borislav Petkov <bp@suse.de>
Link: https://lkml.kernel.org/r/20200314164451.346497-1-slyfox@gentoo.org
---
 arch/x86/kernel/smpboot.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/x86/kernel/smpboot.c b/arch/x86/kernel/smpboot.c
index 3b9bf8c7e29d..e9f44727fccd 100644
--- a/arch/x86/kernel/smpboot.c
+++ b/arch/x86/kernel/smpboot.c
@@ -266,6 +266,14 @@ static void notrace start_secondary(void *unused)
=20
 	wmb();
 	cpu_startup_entry(CPUHP_AP_ONLINE_IDLE);
+
+	/*
+	 * Prevent tail call to cpu_startup_entry() because the stack protector
+	 * guard has been changed a couple of functions up, in
+	 * boot_init_stack_canary() and must not be checked before tail calling
+	 * another function.
+	 */
+	asm ("");
 }
=20
 /**
--=20
2.21.0


--=20
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200423161126.GD26021%40zn.tnic.
