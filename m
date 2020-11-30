Return-Path: <clang-built-linux+bncBCS7XUWOUULBBX4USX7AKGQE2RRTQ2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id B09632C8E30
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 20:39:11 +0100 (CET)
Received: by mail-wm1-x33a.google.com with SMTP id q17sf76285wmc.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 11:39:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606765151; cv=pass;
        d=google.com; s=arc-20160816;
        b=k7KV+mUjiDCKrrRV4UO97jyh3D2pk4rgVglGVRFt0vzhX3mtP5yfrbylOpNqnYAQTR
         sOOkbiyWXTJxOhQpvRwKELbY5TQmKE4pm0z/xcP9qHDMxvvmaoN8tiC5BiiGd0sSIPtc
         GBROQJNox84279ybOIIazDG2wllEl8WrvcCXw37BSqTVrmD++T9YuO33IX1nyXYp7m3F
         8FfkZiib58/cccSODwL2gZBZus9OrT2QgRcjCR+nPADxC5LtCox6K9dKDLlZzXivv/Yh
         jYKM33HhB6LXsNXFwP8uwvdVJJRJUfhMZ1tBnNJ+LN/NjyCmJvzgzWZA6zCeCprUUxHK
         jK3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=U36yPZbnDkDCrmV3GOIzljqHe/b9GwVI+ETr3LBHBG0=;
        b=rsCtJwp9WWNGdWoGY132cm3tvPdGyOQ1jOavQfm+yAv04AnvZcmmrXasY9Hp3nS2OD
         TU4Ec79+hMwzgIkLX/hCWfGosUnSdOqIVWpJiJL95+SH/nNNH8lbl1+c2dm061hldF28
         lPqWSIHcXvBWtfKohyKgrxLQC75IZ8zZCVSlEkY+8GklTf5Ww/f/49pCj6hPtuRR3vSJ
         5OWfXnxjwPzZnNKw0pdFzTbXMz8WpwLGd4ADL/jNVnp07T6sSHepvdASZh40JJQWaIQM
         eaHoD6cY30MBGcZhnHj73yI8aS/LSjAWH5gZFVc0YFkrGYcoYrH+xwYJnQbt8MWKm1+C
         7riQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="J/bqOdKx";
       spf=pass (google.com: domain of maskray@google.com designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=U36yPZbnDkDCrmV3GOIzljqHe/b9GwVI+ETr3LBHBG0=;
        b=XHLB8t6FosfiyGM4iosiONopUIv+xHEVCr/ji0KG1MBtq2r52g6wqCsQvd2TRYHwXL
         axDafQMdj/Q+B65RZZ4HN6+06JUkf7/XEyuPMakm6kcKqhHHOBr8kkyUka//KBh1GDK2
         TF2QmtlT1BZzxKRvX9SfZHdTfQ+OGy1QbMY/xJe0MNoJwhIj8H2rp34YD+qGwLv6avH9
         EPUEkPxsaN3EuVicpAyTKTq/L3/weFHYvAr/b8ot2vPwvv2wsditUW5uwn6X9d9mGx9T
         RGPNj9VouGb0q/Y8hbBcv0kxNNtMlw5E4xxE7IerhwWQWAGAjt7IwHq7jI5QIk68JXCQ
         xatQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=U36yPZbnDkDCrmV3GOIzljqHe/b9GwVI+ETr3LBHBG0=;
        b=QoLoXPFwxYCByVI+HJK39YZtQoxfz6rZ3CtBe0oqlaIVWXbwci0f4QYI4W/T7XR+IB
         OQMKs9jG6B5qdR1jXKIZkUlamJGmtZVA01GS8xaLE/mt5BwrezB+4iI3BerPXN4xIKUq
         XPsveXaAxwvWiTpUbFM1yh+YpHo+Dq4mrnpTBLE2UXXmQ4x3wI/F7kfVHLPvD5lv5X0a
         VUOcxTZsm/yenEsHkEU6afSTAkzlAY4SUPvR/rEQiGKoO+xeha8IxVwRAS/6fxzCPkbB
         RnqibfJTANh6yBUQMYRmdqVdDII9PZOfajI35lGMPlsYmch3kSSdL7ZQDRRlhkANIoVJ
         Kz1g==
X-Gm-Message-State: AOAM531wu92wFxySQ6tXk7XQ5QTE2EakVD1JbBLEI2LjTyPgPrcRaQYD
	lBihHokWAAEqe1WLEZ801Mg=
X-Google-Smtp-Source: ABdhPJwtBJjxZzpbbd+Si4/vDqkRzxvtkV5QkdliUHUX0I7ZExFYoRQ1B+mVvQPuiqAiijt2o7JWcQ==
X-Received: by 2002:adf:ee41:: with SMTP id w1mr30741665wro.382.1606765151445;
        Mon, 30 Nov 2020 11:39:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c354:: with SMTP id l20ls118766wmj.0.canary-gmail; Mon,
 30 Nov 2020 11:39:10 -0800 (PST)
X-Received: by 2002:a1c:4184:: with SMTP id o126mr407202wma.107.1606765150662;
        Mon, 30 Nov 2020 11:39:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606765150; cv=none;
        d=google.com; s=arc-20160816;
        b=C08yNZ2ziHLsIhljqnWOsE/jCy/lNTJkENyYAZOUH03EiZoKsWSJDDtbPwsxEmOWYi
         yXuKRjur+WQYs1bd8UNeI066PtJXRT8VVBwj4XrjSadHHNwsYV6+WToHp0EM4syR6xM+
         zEecwvezmrMo4wbpBIeIhO+wpx57bCur+1hMVivbCnMqcQnpRGTqd1KIhXbySKuJ+PJG
         ry57CxYM1EIPEgSmFym6ekfCGYAMbQpWAex+kHR+HT3wBixFBB5dJ4k6HQ2hTb4GCCFo
         GBTh90OCqJlbwBIKp62vDwcjn4RDDrTRK2wmYLUgMAl6lJTuB/mnDdl4f/YjofUyQPcS
         w/+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=0+kKX0kuteZmVrkELKmO38aHUCQfmtksSV+RNnpLrBU=;
        b=dB6DUtQn6J+QRzyMhE7ScnnhMLy/3ojb1I/Xk2VA/YnChs5cplP1agW0izKMzbaXZz
         tjwOXv3IQZ/ftFXUhYuu3kXad/f/6I0dkc6k49X+lxwz3/P9mejW/QC6/psXpdZhnOhk
         wEPfXrVmmXdRW9nHFRrFVzpFdCMyNPt1hmLfr88rwE+dmmsLJyRGsdyR31iWGA/seuzi
         fXlu4/j38Lvhc7K3ke3+TkE/j7CFOJ6i1rjYX3tViK7gi5teQb7P3PQ8eV11v48XzIcH
         yhX0bykm/mrBv3shpTYWbenxFmE3YrcgN3A5lA8qEnUqj/0jA3e0tsM+oAkNEw9I9Qt3
         pMow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="J/bqOdKx";
       spf=pass (google.com: domain of maskray@google.com designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com. [2a00:1450:4864:20::244])
        by gmr-mx.google.com with ESMTPS id d17si24954wma.4.2020.11.30.11.39.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Nov 2020 11:39:10 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2a00:1450:4864:20::244 as permitted sender) client-ip=2a00:1450:4864:20::244;
Received: by mail-lj1-x244.google.com with SMTP id f24so19775926ljk.13
        for <clang-built-linux@googlegroups.com>; Mon, 30 Nov 2020 11:39:10 -0800 (PST)
X-Received: by 2002:a05:651c:1292:: with SMTP id 18mr10179147ljc.334.1606765149900;
 Mon, 30 Nov 2020 11:39:09 -0800 (PST)
MIME-Version: 1.0
References: <20201110162211.9207-2-yu-cheng.yu@intel.com> <20201130182641.29812-1-ndesaulniers@google.com>
 <4fad528b-e467-f96d-b7fb-9484fd975886@intel.com>
In-Reply-To: <4fad528b-e467-f96d-b7fb-9484fd975886@intel.com>
From: =?UTF-8?B?J0bEgW5nLXJ1w6wgU8OybmcnIHZpYSBDbGFuZyBCdWlsdCBMaW51eA==?= <clang-built-linux@googlegroups.com>
Date: Mon, 30 Nov 2020 11:38:58 -0800
Message-ID: <CAFP8O3LjdP69_T1Ve-zZjvg7+v8xV1mh9Wk8zm4LpAsE2PG58Q@mail.gmail.com>
Subject: Re: [PATCH v15 01/26] Documentation/x86: Add CET description
To: "Yu, Yu-cheng" <yu-cheng.yu@intel.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Dave P Martin <Dave.Martin@arm.com>, 
	Arnd Bergmann <arnd@arndb.de>, Borislav Petkov <bp@alien8.de>, bsingharora@gmail.com, 
	Jonathan Corbet <corbet@lwn.net>, dave.hansen@linux.intel.com, esyr@redhat.com, 
	Florian Weimer <fweimer@redhat.com>, gorcunov@gmail.com, "H.J. Lu" <hjl.tools@gmail.com>, 
	"H. Peter Anvin" <hpa@zytor.com>, jannh@google.com, Kees Cook <keescook@chromium.org>, 
	linux-api@vger.kernel.org, linux-arch <linux-arch@vger.kernel.org>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	linux-mm@kvack.org, luto@kernel.org, mike.kravetz@oracle.com, 
	Ingo Molnar <mingo@redhat.com>, nadav.amit@gmail.com, oleg@redhat.com, pavel@ucw.cz, 
	pengfei.xu@intel.com, Peter Zijlstra <peterz@infradead.org>, ravi.v.shankar@intel.com, 
	Randy Dunlap <rdunlap@infradead.org>, Thomas Gleixner <tglx@linutronix.de>, vedvyas.shanbhogue@intel.com, 
	weijiang.yang@intel.com, X86 ML <x86@kernel.org>, Luis Lozano <llozano@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, erich.keane@intel.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="J/bqOdKx";       spf=pass
 (google.com: domain of maskray@google.com designates 2a00:1450:4864:20::244
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Reply-To: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
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

On Mon, Nov 30, 2020 at 10:34 AM Yu, Yu-cheng <yu-cheng.yu@intel.com> wrote=
:
>
> On 11/30/2020 10:26 AM, Nick Desaulniers wrote:
> > (In response to https://lore.kernel.org/lkml/20201110162211.9207-2-yu-c=
heng.yu@intel.com/)
> >
> >> These need to be enabled to build a CET-enabled kernel, and Binutils v=
2.31
> >> and GCC v8.1 or later are required to build a CET kernel.
> >
> > What about LLVM? Surely CrOS might be of interest to ship this on (we s=
hip the
> > equivalent for aarch64 on Android).
> >
>
> I have not built with LLVM, but think it probably will work as well.  I
> will test it.
>
> >> An application's CET capability is marked in its ELF header and can be
> >> verified from the following command output, in the NT_GNU_PROPERTY_TYP=
E_0
> >> field:
> >>
> >>      readelf -n <application> | grep SHSTK
> >>          properties: x86 feature: IBT, SHSTK
> >
> > Same for llvm-readelf.
> >
>
> I will add that to the document.
>
> Thanks,
> Yu-cheng

The baseline LLVM version is 10.0.1, which is good enough for  clang
-fcf-protection=3Dfull, llvm-readelf -n, LLD's .note.gnu.property
handling (the LLD option is `-z force-ibt`, though)


--=20
=E5=AE=8B=E6=96=B9=E7=9D=BF

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAFP8O3LjdP69_T1Ve-zZjvg7%2Bv8xV1mh9Wk8zm4LpAsE2PG58Q%40m=
ail.gmail.com.
