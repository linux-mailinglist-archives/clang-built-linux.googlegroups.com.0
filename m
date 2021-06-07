Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBFGJ7GCQMGQEPZV7VOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2196E39E69B
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Jun 2021 20:25:25 +0200 (CEST)
Received: by mail-lf1-x138.google.com with SMTP id u4-20020a05651206c4b02902e62b2589a8sf6536268lff.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Jun 2021 11:25:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623090324; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZJJfiBam/2SN/xg6+ybze71nkANDZ6oC8LScymIu63RvKoslUn8Nr17QPmvp+2hoYf
         ENWgdc7scvC5acR+p+1DHoyP+8YAheehZsYasCZdcuYehSM5bQ8G8Mv30KdfIXhFSq/c
         DiOa32u0R0hRGrRFiPof5eSdYCs+OieO/voZABLz/RIfuCDnslm20CCfIVNsTWD+fRpz
         7BwLVvaji0w7aBr9phO4jX4c0UtrmT/68LbyFVOpadHGWH8LtBv+BmqCY8lr74Jit5Dg
         RdavfbtWlU8Qhj+AtSQVs2AR6Vz/7HgOrwAyALm+9wInHWt+KbIXpSWD76qmM5t5fatI
         b75g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=9PKJmBS7Zc225TWuIcDM+tSCP3bCq7RpHIDqaseQb1o=;
        b=y3kFmG5OOtoAvFboctWfqGmKkH3Frb2jaBqMcxjh1QXSS/V8oHEw4oHimpcFwP7Ucd
         BGU0ROPlgwuM4M55JHpk667hV6ov5CUDUqBKFn22v824dEY3Ru5yMOuzR3oVRWkc3uSx
         DBNeA7xwDQOqJz593mxjtd81XOgqyXzXm8hK5BwimUBxRANQbgeVIhhNofQ1VtgSr+IC
         FOL14FOLepxDCcGAVn+XWrV5hQt1/2nYQnEnxEibVqbLEeiscZDZj169YbTj0+ps+VzE
         KsjMTOKPrBmRAx4+DOD8cPCIcFas187oy0Vpw6r0mD8uYbyl36rgs/EBn4oJWL0Ndc9n
         T90w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=hyjsdw95;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9PKJmBS7Zc225TWuIcDM+tSCP3bCq7RpHIDqaseQb1o=;
        b=nXZhMc3obHXJARTrxHh5myE5CBLhlrQekKqRWqO7vnpWGCDl/1AO79VMZo9Zx0B3R/
         a8Kz5RVxkXgQEFt5zM9wXwp5afrJqp/22mW9V6s01HH1zPu2Dkx3dsxUllb9aP+kf6S7
         YPeQo4rOb8AGyH2EiuY4E2/zUzN94B66e1SoeiFyMQyaqiBIMDTuUdTNkhjWd2kGAXpM
         eiQgt2tPpkRnGzfHo8uIvk1tf98/X4/gMvQbO5iZ026rkEnw5kqFNhvLCduLfz/jItOk
         db0KV4AIppHU3wy1qvZejXl3x3ITRnQWPiVa7ryPiuXz1IGBcYcFV7JTNJlAXZiyLB3d
         phcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9PKJmBS7Zc225TWuIcDM+tSCP3bCq7RpHIDqaseQb1o=;
        b=fk/G/oAmSdRrUsHNcMeV2oz+KS+1Jg8F01Bd8T19JeXK2a2ejDd/PJTLjAg8SQGzAh
         o9oNBJrdxb1KH1xx6hylM67itv30hzHQzxpFizSBJ1NuXVFg+lpmCSSJpdjJ9C8jKn5V
         5A5S1Ns2R2YlrcpyQom84qUgfqkKyKx83Sq73Xlf22MRCw1GsySsJNNA8sWySl3AJhey
         yxN0Xm/qSvCsH2slP168DixxOe08u2L8z7ZQtMmARuNYewPZf0YM4p56nqHIERIWmqa6
         Mi1zG1lgPOT4GhCD9+w20LPxqvY1UHJpA/9Fy6lqkZhRVQnAYLarf5bKGnrHdealRCCO
         kAFw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533GZfHTlbpJb6qA5YUBcpztJmXxoNhCgHW6aVMwqHg3Sj2jgUqA
	4OHdp6Gzt3OY1J4YD3tuTMU=
X-Google-Smtp-Source: ABdhPJywNBszxfr3DB/Q8Su5HGNsQgnmiwPk8KdwHjG/AH2LYRkblBqs0G1RHBL5OFjn+0ioDhUEMw==
X-Received: by 2002:a2e:7a19:: with SMTP id v25mr15635871ljc.352.1623090324649;
        Mon, 07 Jun 2021 11:25:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:6a03:: with SMTP id u3ls3040735lfu.1.gmail; Mon, 07 Jun
 2021 11:25:23 -0700 (PDT)
X-Received: by 2002:ac2:4acd:: with SMTP id m13mr12283970lfp.620.1623090323625;
        Mon, 07 Jun 2021 11:25:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623090323; cv=none;
        d=google.com; s=arc-20160816;
        b=q0NMfSsKxsyiihJ1zfQILcHX+3xCSMXShafoPvCz0K93apc9JDHYzgxWJfCCHP0vni
         DZAYqSFZCwdMKqZy2XvaLkvLbHAhM1Ay0cYzFgXU/iMwEVVudrOw65sy9YhiZsiNlqhf
         29CtTGucwjMUxipunQLEcQjqcgc5jYTEkppje2jQPDGN+P5uuUAFQ+DSJGE++VY7a6Nb
         hdCfaMkpmR/5g4o6sfEPpSYTSu+R3umulSK6nT9499Ze/0O/L83x9c0o08Woxu/p803w
         R8JlX+8vp5u/sOtWZVyZkfIWvPYYKdGKdatlhp3zQ8hfrJg5IyLJ20nbiOPcvfZLdfb8
         fOcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=8uaV7xI/+irpdecqa7C0H89FvUwfwt/YmJnM9tKmEOc=;
        b=MoukURcKFGi8yyrE0RQ4IPscw8DIakYxYQOyrCWTJApcsY87XUgAdlRxvvvITRw0FA
         7lksljfhYLEFz4hupa6mJiimiCfSZxy2vJPkf+GCC2qNCJVu2mqL2VfiJty6Ichb7wQx
         IAqxKAC8ICrW4qCodxUxHuEyNlYjym9nRsDhXB8uv0eaayGlEg6q1UY736DsDuBodq00
         SWiWAs3bRU6OcqDmy5eyxwh1GBD1b2qhVgV9XmlXIO0Bkv4sm3YPOOLnJHv5hAIVvK2E
         zRShzMa7P8vAqyqBMYrHa4fGuQmMJ+Rc74D7mdJcd80lF36W3DeTy7fYkTQ2iDpOKRtj
         3uQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=hyjsdw95;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id b39si536397lfv.1.2021.06.07.11.25.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Jun 2021 11:25:22 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by casper.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
	id 1lqJvw-00G7Ec-Ig; Mon, 07 Jun 2021 18:25:11 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id B4766300258;
	Mon,  7 Jun 2021 20:25:07 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 9BA942DC8FF14; Mon,  7 Jun 2021 20:25:07 +0200 (CEST)
Date: Mon, 7 Jun 2021 20:25:07 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: =?utf-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Josh Poimboeuf <jpoimboe@redhat.com>, lma@semihalf.com,
	Guenter Roeck <groeck@google.com>, Juergen Gross <jgross@suse.com>,
	lb@semihalf.com, LKML <linux-kernel@vger.kernel.org>,
	mbenes@suse.com,
	=?utf-8?B?UmFkb3PFgmF3?= Biernacki <rad@semihalf.com>,
	upstream@semihalf.com,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH v3 16/16] objtool,x86: Rewrite retpoline thunk calls
Message-ID: <YL5kgx53yQeoJua3@hirez.programming.kicks-ass.net>
References: <CAFJ_xbq06nfaEWtVNLtg7XCJrQeQ9wCs4Zsoi5Y_HP3Dx0iTRA@mail.gmail.com>
 <20210604205018.2238778-1-ndesaulniers@google.com>
 <CAKwvOdmhg2tj8cKe-XitoZXGKaoOhgTsCEdVXubt+LiY9+46rw@mail.gmail.com>
 <20210604235046.w3hazgcpsg4oefex@google.com>
 <YLtUO/thYUp2wU7k@hirez.programming.kicks-ass.net>
 <CAFP8O3+ggR8N-ffsaYSMPX7s2XgrzzTQQjOgCwUe9smyos-waA@mail.gmail.com>
 <YL3RQCJGIw9835Y1@hirez.programming.kicks-ass.net>
 <YL3lQ5QdNV2qwLR/@hirez.programming.kicks-ass.net>
 <YL3q1qFO9QIRL/BA@hirez.programming.kicks-ass.net>
 <20210607172311.ynnrzihgz74vdyjq@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20210607172311.ynnrzihgz74vdyjq@google.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=hyjsdw95;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Mon, Jun 07, 2021 at 10:23:11AM -0700, F=C4=81ng-ru=C3=AC S=C3=B2ng wrot=
e:
> On 2021-06-07, Peter Zijlstra wrote:

> > That does indeed seem to do the trick. Bit daft if you ask me, anybody
> > reading that file ought to have a handy bucket of 0s available, but
> > whatever.
>=20
> Does the representation use the section index directly? (sym->sym.st_shnd=
x)
> This can be fragile when the number of sections changes..., e.g. elf_add_=
section

No, things are supposed to use sym->sec, which is a pointer to our
struct section representation.

> So in llvm-objcopy's representation, the section index is represented as
> the section object.
>=20
> struct Symbol {
>   ...
>   SectionBase *DefinedIn =3D nullptr;
>   ...
> };

Somewhat like that.

> In the writer stage, sections are assigned 32-bit indexes and the writer
> knows that an SHN_XINDEX for a symbol is needed if the index is >=3D 0xff=
00.

I think we only ever append sections, so pre-existing section numbers
stay correct. If libelf somehow does something else, we rely on it to
then keep the section numbers internally consistent.

And the only symbol write is this append of undef symbols, which are
always on section 0.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/YL5kgx53yQeoJua3%40hirez.programming.kicks-ass.net.
