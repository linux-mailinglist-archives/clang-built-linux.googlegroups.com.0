Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBEF4Q72QKGQE4ZBMQ3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53b.google.com (mail-ed1-x53b.google.com [IPv6:2a00:1450:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A9B51B636E
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Apr 2020 20:27:29 +0200 (CEST)
Received: by mail-ed1-x53b.google.com with SMTP id c2sf2047595edx.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Apr 2020 11:27:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587666448; cv=pass;
        d=google.com; s=arc-20160816;
        b=aXZI/S7ZL6ATA7eoNV+xbC6bEp7OYqrfxI3NFAyZAoguA5jj+7rE57sPqfAoh8sS6g
         zZ1ACYjgBwRpZNyNLBIwddYw4nLmqgf36o9Tnjc6CWtGvLvVegDX+Y2MMaJRuq50MuFV
         XkhaAO0Q03pl4PhrJyQ6xPSySmGgQIAkZe98HVvEp03V4vjjwQ/oWEOiXoj1kE53gSc+
         WNIL3Sycu2y5RtWiXa4a7WupQtD6jqYo1eXkNU8EW+HTF9JmHDnXH+EFtaQ7kWHdGkT3
         pl9vqJSKim1+ITJl2rmphxsJ4Nz42hVMazFJHHhMRl9oCCDkSzYdYPeTdCtGbZCyTgKJ
         9wgA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=HdCxRsLfAy/f9Y8ZomGIsIiUhw/CZlFIqZakaKUyzyo=;
        b=a+PIqDdXV+u2/SnWC7cpqiWKqBbond/2+Bq/6qcElJ63RErL44iYZ+VHf6NMzbYRZT
         +mEWIPTjMUI0PvdieFSCD8r81oeMo71UqcXe3Og/jg0HVOaMQTULkXsD9WJe32eG+NI7
         32n+hWoPCf56RlEzpeb/ZW3kI1+PKETPLlNkZjh4s5+y8Y58MqcQLa4TEEXhRhEQJ51A
         zzjc6es5w7P0xRP8iUQ1dExp/zNNSKIH8ataf0yp6u7JiWHxFJl9qNZwV/26e0ezMuyU
         6QEpWPQz53uusMkuN5pVHQidkdJhG1iMki7XeB/HGZZHRJ5NRQgBfmR+YJV2JXWRJAah
         KU/g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=QDpiO43D;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HdCxRsLfAy/f9Y8ZomGIsIiUhw/CZlFIqZakaKUyzyo=;
        b=Q78WYm0RWxZlZUQ0dcBsYZimJHZKTvDo2oz2AWXyHCjnFvBEHeZz617t4biMPT3dGM
         k14WWCbMvAZdh0awzzEvgMQWFjnnklQePZDfFvu4y+/CvKEIry5Y+iuQSct8Kv0x8dWm
         OXsUZ23BDrQZVznmga7M7KcrE8f87nnD5QobIPNAkdlFBHlna02GrT5cWmND4y33XExH
         whRsiTZuGM0UE3ANSOhVUpR+ZdYVLZxH7gWOkQF6MpXEIoaOYRE1GbtwS/Y8jY5ST3nt
         vw59dQnHbyMmAC2Jn+b7Wv8kQmK7r+/tmFejbNMfW9gxbtywdBgdRXzPUNHsdZadYYIC
         i7OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HdCxRsLfAy/f9Y8ZomGIsIiUhw/CZlFIqZakaKUyzyo=;
        b=QjW/STaEcuVQ9U1/4UHfW9Nk3I2vozcsnGkkd/1HQq4TLlZfKC9nkQhVwL+dUvdUhH
         YJ3l6HGL+E++QLMRtnqhDcyXbz2oISQ1H7/9K6qAO/gL4V7gJu4X6zmIl8DVaVV4Ceal
         sHXJxl96WVkY9wLRDi8lHiHaB4vonsSs9kpLGLJDWqrBqmZYCWzyGFctS24IGUB2Mrsn
         k/iZHsGg2ah7RzjBcDcH2FlMt8trc09yLWU5/K3ni79pp0wV7PsDkqbhLHadrQUlJAwg
         9pd4LaMz7PvyoDuXLH6ow/WrFbmhUqSNbpMySeqRwKeC9j5VBQC7S1+iN8zNPWcP6txK
         RICQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZ68awMDgY7AOjvrG6Pd4YdOIllC7ocM0MpNHLwFYX7tImfU2AA
	9Q1QT9At/5wBqDCosvqQijo=
X-Google-Smtp-Source: APiQypJtztHFB0GK/2tqaUbHOHWCuWZ9GYUk9slBrsoW61x/klq7S/hRrgim1q2OBXtJwf+BDjX9yQ==
X-Received: by 2002:a17:906:5608:: with SMTP id f8mr3956579ejq.190.1587666448828;
        Thu, 23 Apr 2020 11:27:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:6b89:: with SMTP id l9ls2424046ejr.6.gmail; Thu, 23
 Apr 2020 11:27:28 -0700 (PDT)
X-Received: by 2002:a17:906:f1c3:: with SMTP id gx3mr3889194ejb.25.1587666448290;
        Thu, 23 Apr 2020 11:27:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587666448; cv=none;
        d=google.com; s=arc-20160816;
        b=e09c706Y8hSvLyn7ks5FqCfnhG9BpunKrcuLxQmz2IyYzx3RjHWhczh51YfFmDdz2D
         mvDjTads4L3Pbg+KTWmeTqC84XUtGyIE5FYFY4xT8sKNcD7FJChTSCrnyFNqIAC+mG+U
         jzLNb5BaCULy32GjCggRH5me/v3YzkyIeJANIlbUTQ9uJKRL4qqHAH9TPbGQvSAQjOAo
         h6iUXEjRWHK6PYbIMTTH0KG1PFmOI6ribDdpdouBT5OamZqa8esORPolJHxGWrk5lam0
         ZMMkxiLAv4gTeIQ94VBrAtq0E6yye47HuyA40Blmj9f8QLYqGFwn4r+9yln6jfxEIjwq
         rJ/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=6l2OhVohaqlD4hKfwY1YL9IkS67B6tIfRgQm/UCeQLE=;
        b=RkUhxbGNatuPWibomUdI2XPognrBA50KF5gMBv6L0IL6KgesC+MjXEpLjEprGNw42w
         GqFoik31x1xfOQFuDAgI0xpyPElhI7jBAB6KN4x84lm/YesBxjzuJNX9zYRnogQWuDGX
         MUK4vBrp6H7Gbw3tOasMOleA4sDKAoTFMjoNeaG+iWHE6xKv8YtMdHh/5h79tuuJJDzr
         nC9IirvncXqjRPZ86EUo/huq8/AfJuX4k5ofmy0OytjpTg29qUfhgBVlU2ZY/8Ap0zXC
         NS+g00KHxfY3H5siNNWErqLu80Z6g6bvS9TxavbHPgHUgWid5vjqo4TTHQdgjZU9K1Co
         fCFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=QDpiO43D;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [2a01:4f8:190:11c2::b:1457])
        by gmr-mx.google.com with ESMTPS id l22si247256ejz.0.2020.04.23.11.27.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Apr 2020 11:27:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) client-ip=2a01:4f8:190:11c2::b:1457;
Received: from zn.tnic (p200300EC2F0D2E00329C23FFFEA6A903.dip0.t-ipconnect.de [IPv6:2003:ec:2f0d:2e00:329c:23ff:fea6:a903])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 7F5361EC0D8D;
	Thu, 23 Apr 2020 20:27:27 +0200 (CEST)
Date: Thu, 23 Apr 2020 20:27:28 +0200
From: Borislav Petkov <bp@alien8.de>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Michael Matz <matz@suse.de>, Jakub Jelinek <jakub@redhat.com>,
	Sergei Trofimovich <slyfox@gentoo.org>,
	LKML <linux-kernel@vger.kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>,
	Andy Lutomirski <luto@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kees Cook <keescook@chromium.org>,
	Martin =?utf-8?B?TGnFoWth?= <mliska@suse.cz>,
	Masahiro Yamada <masahiroy@kernel.org>
Subject: Re: [PATCH] x86: Fix early boot crash on gcc-10, next try
Message-ID: <20200423182728.GI26021@zn.tnic>
References: <20200422102309.GA26846@zn.tnic>
 <CAKwvOd=Dza3UBfeUzs2RW6ko5fDr3jYeGQAYpJXqyEVns6DJHg@mail.gmail.com>
 <20200422192113.GG26846@zn.tnic>
 <CAKwvOdkbcO8RzoafON2mGiSy5P96P5+aY8GySysF2my7q+nTqw@mail.gmail.com>
 <20200422212605.GI26846@zn.tnic>
 <CAKwvOd=exxhfb8N6=1Q=wBUaYcRDEq3L1+TiHDLz+pxWg8OuwQ@mail.gmail.com>
 <20200423125300.GC26021@zn.tnic>
 <20200423161126.GD26021@zn.tnic>
 <20200423173058.GE26021@zn.tnic>
 <CAKwvOdmmuE=o-bGpraR1rJdzDgf2UYvgcx2-S7cdGSFWWkWurA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAKwvOdmmuE=o-bGpraR1rJdzDgf2UYvgcx2-S7cdGSFWWkWurA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=QDpiO43D;       spf=pass
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

On Thu, Apr 23, 2020 at 11:02:09AM -0700, Nick Desaulniers wrote:
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
>=20
> It's too bad that $(CC) isn't exported yet; IIUC we include the arch
> specific Makefiles then later export $(CC).  If that was the case, we
> could just use $(CC) in the shell script, rather than passing it along
> as an argument.  Oh well.

Aha, so that's why others pass it. I used
gcc-x86_64-has-stack-protector.sh as an example to slap that one
together.

Below new version with proper commit message this time.

> If I add `echo "hello world"` to the end of
> scripts/x86-check-compiler.sh to verify this stops a build, this is
> the error message I would observe:
> arch/x86/Makefile:6: *** clang check failed. Aborting.  Stop.

Right, or you can comment out the asm("") in the script and then it
matches the "jmp" and thus fails the build. As it should be.

Thx.

---
From: Borislav Petkov <bp@suse.de>
Date: Thu, 23 Apr 2020 19:28:28 +0200
Subject: [PATCH] x86: Check whether the compiler is sane
MIME-Version: 1.0
Content-Type: text/plain; charset=3DUTF-8
Content-Transfer-Encoding: 8bit

Add a check script to verify whether the compiler is sane. This is
x86-only for now and checks one thing only but should be useful for more
checks in the future.

Suggested-by: Martin Li=C5=A1ka <mliska@suse.cz>
Signed-off-by: Borislav Petkov <bp@suse.de>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/x86/Makefile             | 4 ++++
 scripts/x86-check-compiler.sh | 9 +++++++++
 2 files changed, 13 insertions(+)
 create mode 100755 scripts/x86-check-compiler.sh

diff --git a/arch/x86/Makefile b/arch/x86/Makefile
index 00e378de8bc0..38d3eec5062e 100644
--- a/arch/x86/Makefile
+++ b/arch/x86/Makefile
@@ -1,6 +1,10 @@
 # SPDX-License-Identifier: GPL-2.0
 # Unified Makefile for i386 and x86_64
=20
+#  Check the compiler
+sane_compiler :=3D $(shell $(srctree)/scripts/x86-check-compiler.sh $(CC))
+$(if $(sane_compiler),$(error $(CC) check failed. Aborting),)
+
 # select defconfig based on actual architecture
 ifeq ($(ARCH),x86)
   ifeq ($(shell uname -m),x86_64)
diff --git a/scripts/x86-check-compiler.sh b/scripts/x86-check-compiler.sh
new file mode 100755
index 000000000000..b2b5b54b6939
--- /dev/null
+++ b/scripts/x86-check-compiler.sh
@@ -0,0 +1,9 @@
+#!/bin/sh
+# SPDX-License-Identifier: GPL-2.0
+
+# Check whether the compiler tail-call optimizes across an asm() statement=
.
+# Fail the build if it does.
+
+echo "int foo(int a); int bar(int a) { int r =3D foo(a); asm(\"\"); return=
 r; }" |\
+	     $* -O2 -x c -c -S - -o - 2>/dev/null |\
+	     grep -E "^[[:blank:]]+jmp[[:blank:]]+.*"
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
clang-built-linux/20200423182728.GI26021%40zn.tnic.
