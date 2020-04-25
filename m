Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBH7XR72QKGQEIQJFZUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 36F251B84F7
	for <lists+clang-built-linux@lfdr.de>; Sat, 25 Apr 2020 10:58:08 +0200 (CEST)
Received: by mail-wm1-x33d.google.com with SMTP id n17sf5694751wmi.3
        for <lists+clang-built-linux@lfdr.de>; Sat, 25 Apr 2020 01:58:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587805088; cv=pass;
        d=google.com; s=arc-20160816;
        b=ROLqkR4Q99v13Xt33/TxQv4jcYKCsWJdbeuBM+cEVBqhg8TNvaTGnG0LypKAwBa0zF
         /BYA9CydSRxf+GoIQShDsWAeZyKvzI+prNp66a8YIb2aR+i14s58tRcvO9ZN8mvSseCn
         KZq4ANmkjuClArZzF9QWT7ti4THFAFgwFf1QNaJRYKaHDEjXnPvatPFXo6yYZ6RFgIfJ
         mGo9bnCLvCssThXB35iz+mYx4GLuOe+UX48eo58T5ddkvGYQGioGpciQXnKeoBLzcKBj
         fMgrPRgbYHdpG/sKuiovFsfIGemotJ3YiWeUh6bReuSxM2vvPJryXiVoEWwiMgAG4h1G
         rCMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=oEdjx+r9j3Y4/0E5QpvgorpJd4mG6HjjlzXr+Z/PIRw=;
        b=LTMl/NRB59QZ0dAfDkClAw3L1LWSaTJ7OEW1WmpnW9L5jm+IYAbFm/AC6EhSUVqU9N
         Hrbig4ufs1NsD1lUdu5zRnLE83everg6z/aPu/jD5YcJLO6y5RXmfyNnMGwnFRdyebv7
         jT/F1MSbiPeel9I9cVnHjPHwL0eWmPjOZa5Qj6FjTobHDXl+ptjU1sNExHPqIOgPl1CI
         mzbCLtbJkz2dBxU5rf8DJtKzp8omYE7Rdyy1ksidVHJTyCE1WEtHUdRe2JOHzrLW7eNF
         rRDd06fMuRyY2DFzkvyjL22vVjvpZO+D1qm/Msbf8ktS7RdLRRHTnfXdseDzdmeLXvoF
         Zflw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=h+zIYo6O;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oEdjx+r9j3Y4/0E5QpvgorpJd4mG6HjjlzXr+Z/PIRw=;
        b=fb5t8Uh5Ot4eM6BV4BAUCIsPfHXoJuOeIV5m8tlcoH0E1sQE3aSou7zT2ttGx++bxw
         SR4VMsJ/zzxjiLBn9ktksPOSriPT7XGteGbsQZedMQ9Lii0RXza7p6Kr9yqj7g31bRou
         nAgh+pE62IUqxCv/dE6CBx266Pwg0b/pvaR5Ud1z/RSHXu/KgkCuwV8rFcXFijpEqWee
         2C3w3VxtSPDlh6FuFlGmza/cbAUBt24pkam83MfkaajG8+5apGotK5OeN01kEeOoErZt
         qLexBGUU0zu22WZr94RAW7ql6LDAUOO5TGD6/xDz1QgqfUNWBR+YW6gWZP4RJP/JltGg
         BApg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oEdjx+r9j3Y4/0E5QpvgorpJd4mG6HjjlzXr+Z/PIRw=;
        b=CNrFHZ8E3k0K3RHmWrwKC90aXoDRL+u9thp/u0sIP7LKGk9C6vsDWwtlj1ORv6OUuO
         dfg8HOneB5QAPNsmOTnKE4Mztptfvigk3ccwVklHBJNLLPOhSrOzNKkB0RneQfJcuIOY
         mhg5zD0YRkbElVzjlQVDcAbblUwIoY64lTiXnvbNC74ayJ3o+1fHRkaqQRuL5z4EEGp9
         QA4WbkNTBhze9ctAoqouVRjJ23XSjzmnEmaHkpZfHpQ4EsxPiZ3nV+ExhMPYoh0TDrrW
         JL+qgxWDOJYMGJrACkhYodgZEdllcB8wo4sv0KVHcT7nbzBIrWnvjJxE3Tk9qkKhXMeL
         fxFQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubIAbshOFvFW7/WBSQNNEvMU0C4BxB9jqxY3l8Xunv3e9FYFGmi
	LlHtuC34+kApJtoVoNn4C1c=
X-Google-Smtp-Source: APiQypKita4XPM7K97Y5a6Itnu/TI35fk3SCpjJk0aO+ht+XdHtxzp5eiIlxcZ8aoxoyxf8811ebQg==
X-Received: by 2002:a05:600c:14d4:: with SMTP id i20mr15524257wmh.118.1587805087863;
        Sat, 25 Apr 2020 01:58:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:7ec2:: with SMTP id z185ls12239783wmc.1.canary-gmail;
 Sat, 25 Apr 2020 01:58:07 -0700 (PDT)
X-Received: by 2002:a1c:678a:: with SMTP id b132mr15245583wmc.107.1587805087149;
        Sat, 25 Apr 2020 01:58:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587805087; cv=none;
        d=google.com; s=arc-20160816;
        b=CCDAc4oO+Hq6PnlguGOY2Q3fROWEfCcJrjj7GZ0Z9kwfq1Ju22/KjI8si5aKlfZpos
         SJEXTPSlnOpikFJXVVJ3suuOqXyTCftYa8J+N6+EWwXUigmL9CW+mfb0OWYSvVOjl5EA
         5Mke65OsV6GFUigUMPi7DY8x6kmQeBvzEmZwlZUvXNCqCUrmt4Ug42hShFR3Q2EkoyZH
         MYJgw87nzBpVEeR6LOArnzmki0Rov2A5wkfEZ0w4oC1neTdw9XbHOc7So/DDT9PtYT3f
         6EvaqxPilWBpdElQXl7iR/PycZx8mSyWh7j57a/zMwsgvrATefgmRUQFwQOqJElW3yGO
         AJ7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=H3Y4V1uVz2ZFfCyhURzs0bYXQDQsiH4z6rVXjpkd4EA=;
        b=QxzSjD28B9eu/R9wxYhjvIVVoK3sytAAkpzZHG6EmcTqJiaimvxw0UtWN2FioBo54p
         v3puUfrCIbbiN5KAHHnFGNTj1CoNRXogOXCXKva6OlNQsgEEQMoHbqDjNSVeVGwSqOVM
         cZYm+kv0FgQ3uc+fHYVsEYL42X3gP8dodDAbIXysJQEVV1ghrHFYn1m16Jn49NRIq8aR
         1IQR8aTtMjABPpcPg+fC4zcP/z9VFOIYxT9k+/CatbedkBPvC6d0F8XlxF2cPSA7FyEb
         9waKQZFAVtBWAH6yibefyl5F7JVqymmFOgY95SKKtviX6eILvNFlkpL+77svNFkvvp57
         l7xA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=h+zIYo6O;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [2a01:4f8:190:11c2::b:1457])
        by gmr-mx.google.com with ESMTPS id q187si268687wme.2.2020.04.25.01.58.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 25 Apr 2020 01:58:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) client-ip=2a01:4f8:190:11c2::b:1457;
Received: from zn.tnic (p200300EC2F2A110038DA0814AB9A5F9F.dip0.t-ipconnect.de [IPv6:2003:ec:2f2a:1100:38da:814:ab9a:5f9f])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 672301EC0C89;
	Sat, 25 Apr 2020 10:58:06 +0200 (CEST)
Date: Sat, 25 Apr 2020 10:57:59 +0200
From: Borislav Petkov <bp@alien8.de>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Michael Matz <matz@suse.de>,
	Jakub Jelinek <jakub@redhat.com>,
	Sergei Trofimovich <slyfox@gentoo.org>,
	LKML <linux-kernel@vger.kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>,
	Andy Lutomirski <luto@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>, x86@kernel.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kees Cook <keescook@chromium.org>,
	Martin =?utf-8?B?TGnFoWth?= <mliska@suse.cz>,
	=?utf-8?Q?Fr=C3=A9d=C3=A9ric_Pierret_=28fepitre=29?= <frederic.pierret@qubes-os.org>,
	boris.ostrovsky@oracle.com, jgross@suse.com
Subject: Re: [PATCH] x86: Fix early boot crash on gcc-10, next try
Message-ID: <20200425085759.GA24294@zn.tnic>
References: <alpine.LSU.2.21.2004201401120.11688@wotan.suse.de>
 <20200422102309.GA26846@zn.tnic>
 <CAKwvOd=Dza3UBfeUzs2RW6ko5fDr3jYeGQAYpJXqyEVns6DJHg@mail.gmail.com>
 <20200422192113.GG26846@zn.tnic>
 <CAKwvOdkbcO8RzoafON2mGiSy5P96P5+aY8GySysF2my7q+nTqw@mail.gmail.com>
 <20200422212605.GI26846@zn.tnic>
 <CAKwvOd=exxhfb8N6=1Q=wBUaYcRDEq3L1+TiHDLz+pxWg8OuwQ@mail.gmail.com>
 <20200423125300.GC26021@zn.tnic>
 <20200423161126.GD26021@zn.tnic>
 <20200425014657.GA2191784@rani.riverdale.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20200425014657.GA2191784@rani.riverdale.lan>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=h+zIYo6O;       spf=pass
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

On Fri, Apr 24, 2020 at 09:46:57PM -0400, Arvind Sankar wrote:
> The comment above boot_init_stack_canary's definition should be updated
> to note that it needs to be called from a function that, in addition to
> not returning, either has stackprotector disabled or avoids ending in a
> tail call.

How's that?

diff --git a/arch/x86/include/asm/stackprotector.h b/arch/x86/include/asm/s=
tackprotector.h
index 91e29b6a86a5..237a54f60d6b 100644
--- a/arch/x86/include/asm/stackprotector.h
+++ b/arch/x86/include/asm/stackprotector.h
@@ -55,8 +55,12 @@
 /*
  * Initialize the stackprotector canary value.
  *
- * NOTE: this must only be called from functions that never return,
- * and it must always be inlined.
+ * NOTE: this must only be called from functions that never return, it mus=
t
+ * always be inlined and it should be called from a compilation unit for
+ * which stack protector is disabled.
+ *
+ * Alternatively, the caller should not end with a function call which get=
s
+ * tail-call optimized as that would lead to checking a modified canary va=
lue.
  */
 static __always_inline void boot_init_stack_canary(void)
 {

> There are also other calls that likely need to be fixed as well -- in
> init/main.c, arch/x86/xen/smp_pv.c, and there is a powerpc version of
> start_secondary in arch/powerpc/kernel/smp.c which may also be affected.

Yes, there was an attempt to fix former:

https://lkml.kernel.org/r/20200413123535.10884-1-frederic.pierret@qubes-os.=
org

I probably should point the folks to this thread. CCed.

Boris O, J=C3=BCrgen, I'm guessing I should fix cpu_bringup_and_idle() too,
see:

https://lkml.kernel.org/r/20200423161126.GD26021@zn.tnic

or do you prefer a separate patch?

Thx.

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
clang-built-linux/20200425085759.GA24294%40zn.tnic.
