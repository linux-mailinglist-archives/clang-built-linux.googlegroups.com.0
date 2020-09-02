Return-Path: <clang-built-linux+bncBC27HSOJ44LBBZH7X75AKGQERT4C23A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 98E3D25B543
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Sep 2020 22:26:13 +0200 (CEST)
Received: by mail-wr1-x43b.google.com with SMTP id s8sf138833wrb.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Sep 2020 13:26:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599078373; cv=pass;
        d=google.com; s=arc-20160816;
        b=PvBmLEOuShMPB0JN1o/WA7bhidZAs3lZOQ08PFRofbpHWmeb1K8i9Ln4/x4gGb7m0S
         xl84kJMeW541ypQ8AkSoNewXlk0X6xFg5SN6iEw69cxc5dBnZ+sPUbTgMWIgbUBC9FZ6
         pQHEqeTATOq0hPAgiHDecs1kosy50yDrQQJxTmYfxhd4M5duKC4zDH8CMVLLeFOMA1zo
         SfwpqM+Ot4BpwkvJj3X4JlL8oyRbrC7CYySw+kZzurDy9kW9k3U3Nbagj0y3mcvWh7vQ
         hjxLe0/g6bUkg6tkZqlivLTc2uRC5oFiylrToFGGbVzUMpMRwJmR03GU9wJ50mwRJuHZ
         djsQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=CVXoFCcPNqxlGl5KOECO+qCKY95q0YnCRPrKJjDfsDE=;
        b=WFkOLiGi4D9NxCWXYnVT89+dQCnuS3YGoNIk/9Za5jsoEHt+2l/NYhyOT9eswUTVlO
         5k0jC88zrvOqm3aeXR/tLoYwSial0vWLJhTtTUbaZTPWwRHT3mUbRf3jDs/pt5YzbZZR
         iEPEGpY1xs/sx/Eh6f023aaxszH9lYnXY3+4Gti5bsDJfxi2TosUcTnJdlqZBq+ojb2A
         f+7rvv2G9BBIlJg2UIfTPDsUCKV66BhRlY/pvbAAOSDdi1EX6fX/zUnDdxN/xEaWIkII
         iqu0uCY8/BKGdaICPT23cftzSsVTALwH51pXVb6e4N6aSuwkGCE+VstAQz7XFcZUCXaQ
         6lOw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:mime-version
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CVXoFCcPNqxlGl5KOECO+qCKY95q0YnCRPrKJjDfsDE=;
        b=WJh8b1tiVm405+8eLnd0OdCIHpTNd0Hs37BQRj1dc2Vf/xLPMA+xzYCPOiYE2bbxRg
         JJWiPTKS6/pz9rvHMKUDw0CxWRV6f/m1+Ij/Xq7Ca3Th0LY4BbftENwOSzobzLPa6gY2
         jrMxNvse+Dm8T/tDsPUyQgVuC8QFkGpGV91oMNskYoLBJ/FocVJLS/FKKq1UZSs2yJS9
         AWl8MD5meJ9EDZGRpm0c6ckvYeewmsao6aMf5xjRG8xq8tgYBtxgVGtPTgRFtRoarqNZ
         8rCV8vK7Uf/5cAgQ4y5Fwe45jVukGbg6fqNEVx0LJqQvC2eLrgx9KmXrtwVAdGrYbiRi
         dgCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CVXoFCcPNqxlGl5KOECO+qCKY95q0YnCRPrKJjDfsDE=;
        b=ab+k+WZsSije9V3S62EmUn+2NpjXEWAX1UlDxJpKblxHiQAVo7I1rxeQpAOI/zSCfs
         AC6naxo7C957AK/q0NX6Af9uj8JglrYOHKI6jPxU704IKQUYwo6cRuIspmg/ErZUYpk/
         73YuoDy7gxBsgSfGtx/Cznap9NrnK2Le06PsQOwkH1Oj2eHHmDxkNzu59zXGcs7JLFIB
         fcPxIDP5taSzmVF3eePU4f/bVUoYglzus/XSFshzo9yZeZtyPNP3FyLC2li6HwFqdWeV
         uI3y+EXErPKXiuZ9cgBpQ4SMovU3E0C4cPJh71M6Y7mCWMhLuJqne7jijDftYS8y15Fp
         8dwA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533P8WisbRZQNvitxFCopixeHrM9n+ZiBJSTms90QnaGeALcFjVn
	WiKPk16UW12OxN8SE52ayCs=
X-Google-Smtp-Source: ABdhPJz2nolYCqxYBhRsQL43IK1eCHZZJnPvOdmlLvJZEYcRUuF+UCmEle5sKdnkIoTOhYDc8b32Fg==
X-Received: by 2002:adf:f812:: with SMTP id s18mr9112109wrp.96.1599078373244;
        Wed, 02 Sep 2020 13:26:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6000:8:: with SMTP id h8ls4045179wrx.3.gmail; Wed, 02
 Sep 2020 13:26:12 -0700 (PDT)
X-Received: by 2002:a5d:620e:: with SMTP id y14mr7679718wru.371.1599078372503;
        Wed, 02 Sep 2020 13:26:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599078372; cv=none;
        d=google.com; s=arc-20160816;
        b=sQ1O/kLiaSmgnxO20Jkvu2FearHRqGFDn9TtQ+iCTz0okd2VUbD1Is0AzLH4J2jzrv
         eOQL6gaHs9s5b1Wy1mTqmxQDMF2qXSVejFNhZVwMPcbsBX08MUv4eJt7sH6P1M2LT2CC
         k8vU+42WJnyWUdYgm6oYGRp/asGQ7CLw0LkN23IUQCAo1gzdPEZofDv7OgaX12klo7ES
         i3AutX+gfTSmI6+mErz+oQAmYiO96GE90hJlzMSCijLvzk4Dn5BU6m0MoJWRu+tbgVlL
         a1vEOV8RVwz52w4x40ipDk1JsvhnqeL5qeui5lQAgcv1wDxfQ5rhHCuD6iTZ1CECdTuO
         DKtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=2Yl6IiR3vq7LuRm9zBy0IHqMWJkwIZysLAj1Aq04Yo0=;
        b=jNOjVMR+W5nNdnAnRBzPVOgJN+yqEFZVJQ3jdHx606ySZm5G8AEWRP0mwWMBRM+eNp
         VlgdejwDRXkZwDl+dHLLJrspaY3Dw0690CxcaEHMsnD/QrQPgBkhWWo+fgeZCx7qje7e
         GfvCQ2kKoyMxV1PuHsj3g/mzSPdGQvPEhSUEgJ/o+Lwxm3VtWVmfWIn+7nb1sahKn62r
         iyLgq/X7jsps5mGWUQAcMZ8y9zNfaFcqEJoIQOa+k1/2IQb4K58CGGlBeRkJomwpiv6x
         ZydrxHJamcQdmuNHC2AISu/fbtH9VWYpTMs2rzQaFnXhvg0WqYBncTB/YhnV+tCdGRMv
         4XJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [185.58.86.151])
        by gmr-mx.google.com with ESMTPS id m3si22600wme.0.2020.09.02.13.26.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Sep 2020 13:26:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) client-ip=185.58.86.151;
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-109-Mq2UCxw6M5Wqe5eU7V1Y6A-1; Wed, 02 Sep 2020 21:26:07 +0100
X-MC-Unique: Mq2UCxw6M5Wqe5eU7V1Y6A-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Wed, 2 Sep 2020 21:26:06 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000;
 Wed, 2 Sep 2020 21:26:06 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Arvind Sankar' <nivedita@alum.mit.edu>
CC: Linus Torvalds <torvalds@linux-foundation.org>, Miguel Ojeda
	<miguel.ojeda.sandonis@gmail.com>, Sedat Dilek <sedat.dilek@gmail.com>,
	Segher Boessenkool <segher@kernel.crashing.org>, Thomas Gleixner
	<tglx@linutronix.de>, Nick Desaulniers <ndesaulniers@google.com>, "Paul E.
 McKenney" <paulmck@kernel.org>, Ingo Molnar <mingo@redhat.com>, Arnd Bergmann
	<arnd@arndb.de>, Borislav Petkov <bp@alien8.de>, "maintainer:X86 ARCHITECTURE
 (32-BIT AND 64-BIT)" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
	"Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>, Kees Cook
	<keescook@chromium.org>, Peter Zijlstra <peterz@infradead.org>, Juergen Gross
	<jgross@suse.com>, Andy Lutomirski <luto@kernel.org>, Andrew Cooper
	<andrew.cooper3@citrix.com>, LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>, Will Deacon
	<will@kernel.org>, "nadav.amit@gmail.com" <nadav.amit@gmail.com>, "Nathan
 Chancellor" <natechancellor@gmail.com>
Subject: RE: [PATCH v2] x86/asm: Replace __force_order with memory clobber
Thread-Topic: [PATCH v2] x86/asm: Replace __force_order with memory clobber
Thread-Index: AQHWgUNLrcDzK8wpBE22M0o9dUjAEKlVyhNQ
Date: Wed, 2 Sep 2020 20:26:06 +0000
Message-ID: <41d1eec58dd54d878710cbb6121feecf@AcuMS.aculab.com>
References: <20200823212550.3377591-1-nivedita@alum.mit.edu>
 <20200902153346.3296117-1-nivedita@alum.mit.edu>
 <20200902160828.GA3297881@rani.riverdale.lan>
In-Reply-To: <20200902160828.GA3297881@rani.riverdale.lan>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0.001
X-Mimecast-Originator: aculab.com
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: david.laight@aculab.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as
 permitted sender) smtp.mailfrom=david.laight@aculab.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=aculab.com
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

From: Arvind Sankar
> Sent: 02 September 2020 17:08
> 
> On Wed, Sep 02, 2020 at 11:33:46AM -0400, Arvind Sankar wrote:
> > Fix this by:
> > - Using a memory clobber for the write functions to additionally prevent
> >   caching/reordering memory accesses across CRn writes.
> > - Using a dummy input operand with an arbitrary constant address for the
> >   read functions, instead of a global variable. This will prevent reads
> >   from being reordered across writes, while allowing memory loads to be
> >   cached/reordered across CRn reads, which should be safe.
> >
> 
> Any thoughts on whether FORCE_ORDER is worth it just for CRn? MSRs don't
> use it, Nadav pointed out that PKRU doesn't use it (PKRU doesn't have a
> memory clobber on write either). I would guess that most of the volatile
> asm has not been written with the assumption that the compiler might
> decide to reorder it, so protecting just CRn access doesn't mitigate the
> impact of this bug.

I'm guessing that __force_order memory reference was added because
the compiler managed to reorder a particular pair of accesses.

However writing to some of the CR (and maybe MSR) has side effects
on other memory accesses - so should really have a full "memory" clobber.

OTOH none of the CR or MSR access are common, and I suspect a lot
are slow to execute (even if not actually serialising).
So a 'belt and braces' "memory" clobber that definitely stops the
compiler re-ordering instructions across the access avoids
any possible unwanted effects.

After all, any such code is really 'assembler written in C'.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/41d1eec58dd54d878710cbb6121feecf%40AcuMS.aculab.com.
