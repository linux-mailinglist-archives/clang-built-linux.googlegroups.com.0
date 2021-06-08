Return-Path: <clang-built-linux+bncBCV5TUXXRUIBB5GO72CQMGQEUYMLPNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 003FB39FD86
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Jun 2021 19:23:00 +0200 (CEST)
Received: by mail-lf1-x13b.google.com with SMTP id k37-20020a0565123da5b02902f6e4babbebsf6004757lfv.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Jun 2021 10:23:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623172980; cv=pass;
        d=google.com; s=arc-20160816;
        b=jtumjTK6AVPz9BFsZ+n7PdQmjKC3Tx6SzDLfFmCrmqhVRT5/TpYmqc8kZMLapUDXVT
         jbg7guVzHxmErkuJxFpE9fqeMriNzADnRgYbc3Dk5D2bUp9Kzw6CIeo+HDvyTuxTNRaF
         7tv7ejhybppl3gilGCuB/ZmymxAG1ftD+AyyT3a4B4viX5Vp0WmAbDUoYUi6R94bvd3r
         ZZSIl1/vUOLLJOof7RRDXw3oqHFYEbznJQhoaUCVJv3pUsSJ+nA20ZGDWhcUuPZOTzDR
         FSEFAlF46g+VKq9Z9zP9rlbeDOZPa+Uv8e2gAt2R5x9h5nhMdNfOsrdqwd9bUSocceZx
         g3bg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=e79CXY9q4eXMKPXrxQWJWVq4ytEB8Ipglx4AlM72MZk=;
        b=B4Zyj9+idEsyieI1dtvd21F4+D7f7phopAVUvJ6F//zYd4GFkPtsbTLX5gw3sU1NED
         wpIjwLPJPoDb041jDe6xW0cudnVpvFlXNNbk7m3xMGi46TIOIBOVtEJzU95O7IgGZYTQ
         u9toAMrRFptW0hiQAyY6mmfPcdo+ej+avE8yk6jZ4p2lrFoXJxTYFQSjxxY6aUmTr7uP
         44clOr8e6sANla2BySmegf6/ZXW4SZuotvzsy3HStxOxs1GGcWqCnsNPfC/6T864WYE/
         YrpkZ/V4yM4szwp5RAKRWHGDqxiax3BZyNAmzbnmgbsnxjcd+p7mfGImM9ZEqUJy9EJX
         OlIA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=desiato.20200630 header.b=YIA8tuuS;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=e79CXY9q4eXMKPXrxQWJWVq4ytEB8Ipglx4AlM72MZk=;
        b=FreuGDIZNERfU9pMZ2242L3sBeRuhCWHfQnog3fjHsd4pwbB2xK/2i0NASQD+rbHu9
         dq0uBYLj5bXNUKSExPo3FaG7v+0i55R6SkzDoJ9tRqNiVsRIGfOQY70h3RdLU1ZcexyM
         9P1HjkJy8kXRG7/llecFdyfJ+8gjpfiprUExE/XHKWZMtwtM81FS7IGeBRnEG5ATU7Qq
         zNYECyLsR9E+acbib03oWBblWQWkRnnMBzGbsN5BCcUMiigC+28ZlGvHbtH3SBVCWv2Q
         aPgsHWounNvShcMmFa9DUpxR1DtZW/vZUb43tgigku/kUH3Zi5q/TRR+D5SpoFjJyqA7
         i0Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=e79CXY9q4eXMKPXrxQWJWVq4ytEB8Ipglx4AlM72MZk=;
        b=NXkNL5TbAWTJsOJG46zMnTLn2NyrIoehtpMTvyJImB3bsuuC+v0R2fVGMLe+NiCeIb
         +e69dSjfoAp/hM5YDIbv7k762I+DO/H0YYLIs5WqyBjZm5noPA9J4/zrkw5muIH2eM5U
         jG4OtmiGwHyGP/TbIJrAbExf9g6PW8CuGBERf+KbvPaK8w70ArLTjAMgK015ERqIoIFe
         qnQNs1oq4UCY2Ts4WqibqmVqg9GY+p9a6z13oLuW6vYOqRjhHJW9v1SO5JkMMr5OACgz
         h/Vpibzp5HCiI2rGBA0nKzNvAcG3QR1rRKMEVE3YgdsjeLD1W25amXslALLbR57odn8d
         Cj9g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532WebiaVtwDBfpIlWo3hM+8w6bY6a4Wk9im232zHup19unTYyCJ
	o7pL5wF32R965+NhjIPtABw=
X-Google-Smtp-Source: ABdhPJw1kflJlHL8oIeCShi3Ea8qZeOTOPUsxFjmYltJAB43f740z0qvx+mhZwcw5p22csAfczrIxA==
X-Received: by 2002:a19:dc5e:: with SMTP id f30mr16227186lfj.318.1623172980468;
        Tue, 08 Jun 2021 10:23:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:7008:: with SMTP id l8ls3866536ljc.4.gmail; Tue, 08 Jun
 2021 10:22:59 -0700 (PDT)
X-Received: by 2002:a05:651c:547:: with SMTP id q7mr5020019ljp.144.1623172979462;
        Tue, 08 Jun 2021 10:22:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623172979; cv=none;
        d=google.com; s=arc-20160816;
        b=vY8qlvx2RgKNM7b+APRPD3k+08dNFATUstl2vwcxk3vzKD2xawsVc8rPO+7AIj1XMP
         rPhZkuDATXtRQm4uPXnKgv2CwL2ZP+QV1y//y2/WweQbryTC/UnOo0ap78eZlkZJtcqk
         wHc+D4MGhLPjh0zXHxzUJTjC/6HvevY9nXKoo2oGVc72HCkqcTuOXEQLZ5k+w63fBkO6
         ek3XHuerIaaFaVqwANVfJyWN8AFbkQEllvWrcMM57iVFnAuBh4qZevTRpkK70N5zP+SX
         dI9Ihvut8lfgf1E4J6u0eOUSKukJ89BVA2RqNxUhSMibmMPysSJ9jj4rcJcBtaMWptIp
         azTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=vE4hpBkarbGpaIGX2OZfGd8vijIiOr69dHEEgzwDXTQ=;
        b=o5Uaqca12njOjCYwOnTCSwzkU6lSg1G84KZNJd0+F/cTUuCjN4fH+YcmG3VTl9QyBd
         /pQfJvFN8ZO49gPdoLGEtaxdYiP9r2SISPfAQd2ICeyfvxqFEQnw0hX512mD+Qyhit8U
         FaqWofyLjpqvYWWe3F5/EW516snlCoSL+0qUjuXlF5FOM+aNhlsKA3aEDrUqLIzKTm5o
         wuRkOOrn5QHaSgQY4zTLoCJ+7wgmygEGCyy1vxJIS6D/z5+cpGotGebDh/rtx2x0SQ6o
         EMBMTPiMagHvJRp5CEPTd9lVl4p8YwgDK6XqzhEx5qAXthk8JJ0L9yBkFZEcv1G76GNX
         hy3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=desiato.20200630 header.b=YIA8tuuS;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from desiato.infradead.org (desiato.infradead.org. [2001:8b0:10b:1:d65d:64ff:fe57:4e05])
        by gmr-mx.google.com with ESMTPS id x23si13191lfd.5.2021.06.08.10.22.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Jun 2021 10:22:59 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) client-ip=2001:8b0:10b:1:d65d:64ff:fe57:4e05;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by desiato.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqfRB-004orn-OP; Tue, 08 Jun 2021 17:22:56 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 1354A3001E3;
	Tue,  8 Jun 2021 19:22:56 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id E153B201E7EE3; Tue,  8 Jun 2021 19:22:55 +0200 (CEST)
Date: Tue, 8 Jun 2021 19:22:55 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	=?utf-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>,
	Josh Poimboeuf <jpoimboe@redhat.com>, lma@semihalf.com,
	Guenter Roeck <groeck@google.com>, Juergen Gross <jgross@suse.com>,
	lb@semihalf.com, LKML <linux-kernel@vger.kernel.org>,
	mbenes@suse.com,
	=?utf-8?B?UmFkb3PFgmF3?= Biernacki <rad@semihalf.com>,
	upstream@semihalf.com,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH v3 16/16] objtool,x86: Rewrite retpoline thunk calls
Message-ID: <YL+nb235rIfEdye0@hirez.programming.kicks-ass.net>
References: <20210604205018.2238778-1-ndesaulniers@google.com>
 <CAKwvOdmhg2tj8cKe-XitoZXGKaoOhgTsCEdVXubt+LiY9+46rw@mail.gmail.com>
 <20210604235046.w3hazgcpsg4oefex@google.com>
 <YLtUO/thYUp2wU7k@hirez.programming.kicks-ass.net>
 <CAFP8O3+ggR8N-ffsaYSMPX7s2XgrzzTQQjOgCwUe9smyos-waA@mail.gmail.com>
 <YL3RQCJGIw9835Y1@hirez.programming.kicks-ass.net>
 <YL3lQ5QdNV2qwLR/@hirez.programming.kicks-ass.net>
 <YL3q1qFO9QIRL/BA@hirez.programming.kicks-ass.net>
 <CAKwvOdkuJBwZRigeqdZGevPF9WHyrC5pBAsz6_tWdXAc-wO+1A@mail.gmail.com>
 <e351ac97-4038-61b5-b373-63698a787fc1@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <e351ac97-4038-61b5-b373-63698a787fc1@kernel.org>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=desiato.20200630 header.b=YIA8tuuS;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as
 permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Tue, Jun 08, 2021 at 09:58:03AM -0700, Nathan Chancellor wrote:
> On 6/7/2021 1:54 PM, 'Nick Desaulniers' via Clang Built Linux wrote:
> > On Mon, Jun 7, 2021 at 2:46 AM Peter Zijlstra <peterz@infradead.org> wrote:
> > > 
> > 
> > Thanks, the below diff resolves the linker error reported in
> > https://github.com/ClangBuiltLinux/linux/issues/1388
> > 
> > Both readelf implementations seem happy with the results, too.
> > 
> > Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> > 
> > Nathan,
> > Can you please test the below diff and see if that resolves your boot
> > issue reported in:
> > https://github.com/ClangBuiltLinux/linux/issues/1384
> 
> Unfortunately, it does not appear to resolve that issue.
> 
> $ git log -2 --decorate=no --oneline
> eea6a9d6d277 Peter's fix
> 614124bea77e Linux 5.13-rc5
> 
> $ strings /mnt/c/Users/natec/Linux/kernel-investigation | grep microsoft
> 5.13.0-rc5-microsoft-standard-WSL2-00001-geea6a9d6d277
> (nathan@archlinux-ax161) #3 SMP Tue Jun 8 09:46:19 MST 2021
> 
> My VM still never makes it to userspace.

Since it's a VM, can you use the gdb-stub to ask it where it's stuck?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YL%2Bnb235rIfEdye0%40hirez.programming.kicks-ass.net.
