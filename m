Return-Path: <clang-built-linux+bncBDEKVJM7XAHRB5PJQP5AKGQEAVRRSEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 69FEE24E6EB
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 12:35:34 +0200 (CEST)
Received: by mail-lj1-x237.google.com with SMTP id l15sf1537153lji.3
        for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 03:35:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598092534; cv=pass;
        d=google.com; s=arc-20160816;
        b=lwxK4YvBYllzEFWaXIFK3ZPSw4Sen25lHGY8F7ew3HxhO66XMZO5ID8+EVGz2w4mSa
         aYvPPUpoaKPa49xdFksA+000W952EAmwHuDISs2vT5F5UrGWKDAoQ7i63yvNk5IeAK4p
         9RmKsqSjmnBelLtdtFX/c3kKhiTS1DkjE0NuGRhl96aEFPr5dNHL1CW0F0C2Wczwl/tb
         aPDG+5PmHE8NsKamRsA3FBlk2dE207+vQsltRsQKg3g3X5T9z23ABKGhuqp8Zh62D9Qq
         SqPkCJ0bfbSjwNTxYS62FmTZu6NAPV37I6VKcQzHvLaSsfaSDwFbcOGCsTHElrCOWUgO
         CBUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=fAPLvb+gHV9/gpMiy5lUM6vsGrZyrwMag97MFLcf3PY=;
        b=BAsQdvH+ylm+1UOcGpW15DPCR0yrL8aAh7yLHS/pWK13n+LxotkYrf7PmYbGOhTDHa
         xXO8oryJvUjlz4HcVMvYVcUiD1Cr6zjYRGEux8XhOUjVb8y7W5BLPLjxAY7q52CdgLn0
         07FF3940lF+cfF9pmMBT2yD6aGwpF2OE70jY+OZyjWxGTO3Zw1vG2EuQinDrYEeLWvxu
         FcjCbUGHEnjV4onzHqeJO8zxq+WVl0+I5PEc+oZK4FhHpoYA8fd8dRgaYjOikecQ2qAV
         SN0j8e4U249nZ5MqoDNanGWMfGm2ZaWW+DuKqv4VsGywlvb1Ysdc0cCbf/vcQpKJNzr2
         Ra4Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fAPLvb+gHV9/gpMiy5lUM6vsGrZyrwMag97MFLcf3PY=;
        b=DdjThyaUfPzu/vCQUuK+8eBE7/g3kzL53xZl8NTUvlw2z/gj3a14ihvXc8jwKy4amd
         9xrg0ujK9/4sJCMBbWdzkOm1SiD+0asTNyD2Uwh7u8f1pSVjZZHCo59h+r7GlZov04rt
         wPvUdSy4YO0FFaVZES6OO6WAzG1qmhiigHxB/yF8X3c0wenMk8nfGE5fmukxvgu/4pkz
         XhM0wR7ppTxt3buZj++zayVtVnwmWwfPsMDN5pjlmqtygZ4TNAocCWb7sqOx2EV7jRe4
         OADCYWjgnefe6liVxAHVJGRI0iuPYeQ0FL9mCFbiwi06I9ukCeVGcB7gLysAMNIFLRLu
         CTGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fAPLvb+gHV9/gpMiy5lUM6vsGrZyrwMag97MFLcf3PY=;
        b=nE5f+PH6W3lGBbyM2x8kM40vmr1Yv0O6zR9uyjzvfOF5ut9k5uPpjJq0ZBB/1i9vYc
         R0iSa+J20aNOM6Bb40nP7cVUmcmgk+LhekMJ8uliEY0MbbYb93tuHjkChJyJzPKsBKAd
         0w+AR2teBL443bblEufob6cAW/gXgs0StyfgjnFGBmZZCVTF+K/QYO86oWRvuY2MZC5j
         giuksxPYqpSQ5SNPi5a51LySiTGSg+cq4DG4ndXToLX2WMt9EGZLxKeRbtYEONeuF+AT
         Zycz0ZsrY4aq+5QnKsbnFW9f7w1Y2Lvq8DjbjnOZDFfcrpca7OC2+1Yk3Kyoj6haGSBY
         EPDA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ShW+EQtzaTrreyCEqIxRIENZOHaFzEy4j3cnYXQpRm3ZochDt
	wYpigCjXHmiFtbGec/d0i+Q=
X-Google-Smtp-Source: ABdhPJwiWe3L2xZUWYtqfy0AkaIfGSZhQSuB4di+iuhknGmgd0ur6Xhl2avsitdMCVchN2Vkh5W7Nw==
X-Received: by 2002:a19:4094:: with SMTP id n142mr3315898lfa.166.1598092533821;
        Sat, 22 Aug 2020 03:35:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:4f43:: with SMTP id a3ls669081lfk.3.gmail; Sat, 22 Aug
 2020 03:35:33 -0700 (PDT)
X-Received: by 2002:ac2:5b0b:: with SMTP id v11mr2920629lfn.3.1598092533062;
        Sat, 22 Aug 2020 03:35:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598092533; cv=none;
        d=google.com; s=arc-20160816;
        b=EMRczqG4xuFVKyjgIXxHTzcldai2rCf7M/KeCFyeysKVZyD9aTR9NozhYAyr0Y7d3L
         bf8SfvZz9QfglGH4YtPpbir9omLEltfPixatCJY4+Tb7fOCOpnTLiL2xYoHR17H+hKgN
         c+K9F2FzOMRRNnJKkfQ+NlkXfjsdOJvzp3T7/zmXP84t01Wwm1S/5GqHXyNXlky8CvoU
         /JpN4VO/uW2rciU1+lcaofaGn6tgu2pG1VMSln9JsqVW5yXRnem1V8sD7sMw8G/oXSeQ
         zh1PQ+MY7qmvzVdwTtv74a60D2J6ftA3YofTfrR5gtRQj8df5omPQwgX/1AeaQUTkPZ/
         zuEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=d5d4Af2F9IE7k8WTE7Hq0GIW2wC0go9CrNVYVbou0r0=;
        b=dwZjaQ4kqh930tZ22nMEW2XHAqmS05urINQ1BwZuhehAs9CMljXqgcbWd4vHcRGaE/
         wyXBJQH1RLw4U/QWGQGAzeT5abIwgyDrgWROY21f+MCoMwA/mIyHbUSbnYjwZ7oBQUAv
         sj8E+eS9MAme8KhQJUrzEwtJy8L1VjbTkmbq036m9oGReiNLYXMiUrLnd/syyOfFT+Xd
         tfirhT/IpyAgR04bIe3xJWwd1rjR/jYZDCQK1BOBzqPkbfb/35B2lPdCvPV4V+IDekOM
         rvgHMjFnUVqwun9/e3wp5vfG47fLfzn3j004Mrn3lVskUntT4cFWjop++l1qTPaCLGf3
         eZ9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.131])
        by gmr-mx.google.com with ESMTPS id a7si114942ljp.2.2020.08.22.03.35.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Aug 2020 03:35:32 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.131;
Received: from mail-qk1-f177.google.com ([209.85.222.177]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MIMOy-1kNfw80Maa-00ENGm for <clang-built-linux@googlegroups.com>; Sat, 22
 Aug 2020 12:35:32 +0200
Received: by mail-qk1-f177.google.com with SMTP id n129so3546151qkd.6
        for <clang-built-linux@googlegroups.com>; Sat, 22 Aug 2020 03:35:31 -0700 (PDT)
X-Received: by 2002:ae9:f449:: with SMTP id z9mr6592119qkl.352.1598092530943;
 Sat, 22 Aug 2020 03:35:30 -0700 (PDT)
MIME-Version: 1.0
References: <875z9dioll.fsf@nanos.tec.linutronix.de> <20200820130641.GA536306@rani.riverdale.lan>
 <87zh6ohm03.fsf@nanos.tec.linutronix.de> <20200821230435.GA56974@rani.riverdale.lan>
 <CAKwvOdkoB+fT9tt7vgg1R6J-NEr77EWP5X8nFat_L-HvEzWGzA@mail.gmail.com>
 <87eenzqzmr.fsf@nanos.tec.linutronix.de> <20200822035552.GA104886@rani.riverdale.lan>
 <20200822084133.GL28786@gate.crashing.org> <CA+icZUVf9a8LC2Mf0cFymYQfALWs6bVfR1v1nRbxKaLAyU6NkQ@mail.gmail.com>
 <CA+icZUWGHo3mkN4=ZYeU37p8KJhxTXS5QKcAvq_HaqTHmFkw2g@mail.gmail.com> <20200822102637.GM28786@gate.crashing.org>
In-Reply-To: <20200822102637.GM28786@gate.crashing.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Sat, 22 Aug 2020 12:35:14 +0200
X-Gmail-Original-Message-ID: <CAK8P3a031YiKxYYX5uaVf=y_MJZo-eNwOsbxsVnH0QdoZznNFA@mail.gmail.com>
Message-ID: <CAK8P3a031YiKxYYX5uaVf=y_MJZo-eNwOsbxsVnH0QdoZznNFA@mail.gmail.com>
Subject: Re: [PATCH] x86: work around clang IAS bug referencing __force_order
To: Segher Boessenkool <segher@kernel.crashing.org>
Cc: Sedat Dilek <sedat.dilek@gmail.com>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Thomas Gleixner <tglx@linutronix.de>, Nick Desaulniers <ndesaulniers@google.com>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, 
	"Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>, 
	Zhenzhong Duan <zhenzhong.duan@oracle.com>, Kees Cook <keescook@chromium.org>, 
	Peter Zijlstra <peterz@infradead.org>, Juergen Gross <jgross@suse.com>, 
	Andy Lutomirski <luto@kernel.org>, Andrew Cooper <andrew.cooper3@citrix.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Will Deacon <will@kernel.org>, 
	Linus Torvalds <torvalds@linux-foundation.org>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:hL3dFOZJcUqAdFkVTaV9TUER1Q6v22TOzOA6u1toCfJV5Z3px5M
 oWQb42dZ41FreFsmy0rt+SnRUuCyOb1PLVaaI1OmBJJ7VFriKPvaVOYG6HXQBmlwGfoULh9
 VoDC0xf4KiJ9Pqsqw9BMhalXWnANW6FR8SLPTHAxCvlZFIolQmK71l407kJ0s49zbI8Ax1S
 r9/+wcEKoD3wXLeTyX46g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:+nrSLkeS74A=:pc0132pN18hzTQtpf/tS/W
 ld7t36aKt1A8o2fwtrLKASgjKzdEGM/CjRwpNUGGeFj7akIuJRSFTdkaH5ejDp+ZyrfYUgyi0
 uL+bJJX89EfP46xFsL66G9j3k5/OzqWIs41ifY6PfwLxv2dJCDCM9r5VChYacRZVvKA83JcHh
 Q11c3PwBIY/7mV7TI1Tc5Mu2mNI8JbPt2lREu/dkwOssEiW+BS1NAAl33IuqkxY5aGxdSaz8b
 RmFXU5r5f5MacFgEWibn1S56QDUFxaekBxbHeUVfdwFyanJ4zp0QIRDfpF9Y5NXeU6g8Ei7Q6
 jYxs9X3SeAViW7qbbWPYDID7Nzr6AxAa4z6XGJJGgJTCN8a0yMATq7DS1CcxYNOFP9hRWZ8MQ
 Onla78Iu7s4R3b7Xc7F39nx66Isdce40+UWlF7FXYJKdWPOHA56nrFrrF/7lxw6Q0UGWFYiF8
 YRB5wgmogFTqWYvlsoKWcpzmOjc6LQ+dnP7lxwiIdJkl+1JVIgxuBCWYDdUfLo/kPguOI/b2s
 N6NrCOIP+BWW2HEu8q1pTKyenZTSt40cxBxXwBxGvP+UdVuq9xy6AvGQyZ8Kz8r9CtIIcCa3n
 Fw4ZDFNR0IORkR3+UkZ1ZyOKpNE2Xp7zoxj49T8T+jAoAIEOgjg5DZvxyIJvOYWjhhJN8KyQV
 ZmdWhzB0MsRG4p2/zVF0mhk37l5CG26RlErq0ExeDl/2Iadt8LdZfMvdEndPrVhHC/h39d8x2
 UAiDzfDD6f4TvZOlmLWZxwS0VGXC7K/48wJkeqtTMg3v2jzcV0gajjCCwKW2UKceMj7CBVOJm
 puMll2gUUPu0/7Z4jXFm+7drgCxw9c7Sfm+ofYLDGoOsOHOLSi2eGW0+v1pz58li1M3Ap4J
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.126.131 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

On Sat, Aug 22, 2020 at 12:26 PM Segher Boessenkool
<segher@kernel.crashing.org> wrote:
> [ There is GCC 4.9.4, no one should use an older 4.9. ]
>
> I mentioned 5 for a reason: the whole function this patch is to did not
> exist before then!  That does not mean the bug existed or did not exist
> before GCC 5, but it does for example mean that a backport to 4.9 or
> older isn't trivial at all.
>
> > I am asking myself who is using such ancient compilers?
>
> Some distros have a GCC 4.8 as system compiler.  We allow building GCC
> itself with a compiler that far back, for various reasons as well (and
> this is very sharp already, the last mainline GCC 4.8 release is from
> June 2015, not all that long ago at all).
>
> But, one reason this works is because people actually test it.  Does
> anyone actually test the kernel with old compilers?  It isn't hard to
> build a new compiler (because we make sure building a newer compiler
> works with older compilers, etc. :-) ), and as you say, most distros
> have newer compilers available nowadays.

We only recently changed the minimum from 4.6 to 4.8, and
subsequently to 4.9. Most people have fairly recent compilers,
but there are a number of notable kernel developers that
intentionally stick to old versions because of compile speed.

Each major compiler release adds about 4% overhead in total time
to compile a kernel, so between gcc-4.6 and gcc-11 you add over
50% in build time.

      Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a031YiKxYYX5uaVf%3Dy_MJZo-eNwOsbxsVnH0QdoZznNFA%40mail.gmail.com.
