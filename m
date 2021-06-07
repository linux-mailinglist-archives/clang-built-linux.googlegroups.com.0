Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBQ6T7GCQMGQEQH7OX7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id D68B839E6D6
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Jun 2021 20:47:31 +0200 (CEST)
Received: by mail-wm1-x33f.google.com with SMTP id 128-20020a1c04860000b0290196f3c0a927sf259384wme.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Jun 2021 11:47:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623091651; cv=pass;
        d=google.com; s=arc-20160816;
        b=dFetZ+6fqaEK8yoRpUprzEou4j39q+TPYS/VUnzcGtc7psdKit6lWSKfAEVcm8dNfu
         6vdcc03hOAAoYoA/0XWU+cRtJOTp2OXzD7Jt5hXHk6L8RJRo+jMJwG9/nxILqCgsrgEW
         bJdH1LkCQIhSlF4MMeE4eW/FkkzqaE2qzod76htVpOqe0O+JxtpevdQIpWIhX1b8usNo
         jJrY2kZb5AjGYQTWP3ow1inGjmoIKpzDa1Qzw1i60E5BFJvq7e6gFAbdl73kugrhpjHp
         wcBy+tV5NwnltWjowGFmkSwwDvR0N8MJDKWSrJN9pGLj/dd8SMidmG8yIyt05TJMUEVn
         Mhlw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=7/qg20HQsBz0siRF2Act6g7WGPdQFOQKw8v92/omx/Y=;
        b=xUfEBgdN2tLFLRrk81GdK8Jk5yIRi/6XP3iXnUSPscoL05lj+/SwczZzgjWNKdImI7
         tFVjfyzWziGlua5OY6H+L2mI0ZoRdtt5zFh2p+kIaEWq8vkWBduTOC34KRiDmPMEOGOk
         trMctVi2BybWj3QRMPURm8ESm/baABra852Ktldknk9SULiUwlo+NZ/Z4UcSov1iCW2u
         RuuVGP9esw8xNDiz5YsQQcNily+KVf04x5VQUo/RG4B1giHuBHogpxUXQAV/gSGgybar
         FnVcksiladaohZM0g+I15PCx23Nwwm04mu3jlUfp4K8KweoFaBhqo4GQh4KEbqehh7Jy
         fzzg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=desiato.20200630 header.b=MFrbR7Do;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7/qg20HQsBz0siRF2Act6g7WGPdQFOQKw8v92/omx/Y=;
        b=c4ZL3yUdol6iVnnL/+fD/kEcxh96DnxL7czFW1SplMVzUiXcf7P9xablrn+BQA5MGU
         LGpPcVJnYkpYNwvXo5Tp6ng5iWVeDtq0zOxGjoxOLq6534sjMsKxlhIIoDC8mJOuYbFk
         3CPY7YP2t9H22SOd/n6N18Hi+pJ5eSWpCLVq1D1JtRIRrHhPW0pvmhNHnvYndChm4B7G
         0VRzWG/mkPoXY68crd3CgxqE3V3Mwot1/vHfjGv/Be+FAjWfESAvKnBqFAGsEzDlfTss
         sIV2V/IBX+05r8d6WVyTkTevx/6ejCV2s3Jizsj0/Oql/bxtIUbSGty/iWdnyOog9UHu
         bcaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7/qg20HQsBz0siRF2Act6g7WGPdQFOQKw8v92/omx/Y=;
        b=e6WoT7XAvkNtV1xUdv0IVpAeru+/9Ws9V0LdG4mtLb7sTJSzn27sVOIIBxTbV6NPVv
         J9uLP2VGXB5VYd/WoqR1Crh1Z0IPcOAlrpVtZxoVZnSY3esFiH7TJi9yV0g1dkj2xQzH
         WPfTo/1EEE1C0wJo3qVYriqr/qLKSQJ3Gygeb13/2ppahiReExgdOUBhydGbfQ9blVva
         i/Uw1TYVcwr8StM3o5ultypQ6xK2ebpPDJ/FZlrumvJlhNVKwim1GRz51OjpKPE1sjWV
         GQw2njcFek7/omD4M7lqZ3gB0bncrpuhRGwMv2fbhFpC7wham7lTa1a+GzDzjLoavhAP
         Hyeg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530e55rYhZwouqz6dpEoUkjn7Yqnx3i+Rqy77VRfT+8SJOoNCL/c
	qSNusT568Nzeog/EY8NiOFI=
X-Google-Smtp-Source: ABdhPJwM7688Oi1F7QjL9MC3xOaumzQ12hPcpY+1KcqFxjaNJycKBcjuCpw089rukfEoE+R4pWnusw==
X-Received: by 2002:a5d:648b:: with SMTP id o11mr262919wri.238.1623091651603;
        Mon, 07 Jun 2021 11:47:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:19d3:: with SMTP id u19ls100901wmq.3.canary-gmail;
 Mon, 07 Jun 2021 11:47:30 -0700 (PDT)
X-Received: by 2002:a7b:c098:: with SMTP id r24mr463286wmh.35.1623091650814;
        Mon, 07 Jun 2021 11:47:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623091650; cv=none;
        d=google.com; s=arc-20160816;
        b=cztHvA101POQrnPhA3ZOuypt1e4QjI+jaFsunOHURg69Dqqnrl4LllTKpEno+p2SWJ
         v6T/mQ7hvRvpFJallrEjcc9sZVV+AM5fToRRdmttG2Fzeg0HNTFgA6uLPGioGB0WcT+f
         F5UFmWadxsetaa1qMr4vUZdzkXADB1DPS4dY7iTykAvzN7uk930aWHy2Lfjkd9hdm5W7
         7cg/xqVPPIAsbgzO9ANDx2kirtAUzCFeKDGfgX2/XKMv9aFLjsX6EIcwfzPcI4D1ZkNY
         cYLBvN4r1m3cEcUzfZY+kxJQRW5+TcwerC7P5CRoAtwwRl/LFPC8xuw+7+QX0SHurVzU
         VUUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=E5W7BBL5OZLc434qu0qEVLUyiQ0rMZ4BUsHzE04chsk=;
        b=zwHAKtHOrpRM+tfWo8YVvDXuW57oGh5R+yGUFzBi0mjd+tG1JFdtPqJvZ2+Nq70F+j
         3Bp+X1bXvJb4O5muuZ8zIVMBSiaEgYfmv8kSe/nnNqKWjEIzAANiQkcTOaGM8oFBUawz
         7l5Eb0uW0lS4ZyWPdBvptciiHFMqiq6JuTNemHCbOUnNHncgVZZZeE7b8lUPJ7gU8CqC
         /MEklfHZK0NSlim14hOhbkhqo7qYO0Zb2H1mPAOKtMdoUWNDv+GHsVfEHSQNX/0wtu1S
         dV5qD1RJ7XtUbFuir9bG88/6cCz1sBZWRlCwCcWfU3jUYYXCtVbDNnP5tDsroCY3h5HJ
         HI0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=desiato.20200630 header.b=MFrbR7Do;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from desiato.infradead.org (desiato.infradead.org. [2001:8b0:10b:1:d65d:64ff:fe57:4e05])
        by gmr-mx.google.com with ESMTPS id l5si466087wrs.0.2021.06.07.11.47.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Jun 2021 11:47:30 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) client-ip=2001:8b0:10b:1:d65d:64ff:fe57:4e05;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by desiato.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqKHS-004UmG-Fe; Mon, 07 Jun 2021 18:47:29 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id AE2E2300258;
	Mon,  7 Jun 2021 20:47:28 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 89F673037F2BB; Mon,  7 Jun 2021 20:47:28 +0200 (CEST)
Date: Mon, 7 Jun 2021 20:47:28 +0200
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
Message-ID: <YL5pwJSJGOGpKols@hirez.programming.kicks-ass.net>
References: <CAFJ_xbq06nfaEWtVNLtg7XCJrQeQ9wCs4Zsoi5Y_HP3Dx0iTRA@mail.gmail.com>
 <20210604205018.2238778-1-ndesaulniers@google.com>
 <CAKwvOdmhg2tj8cKe-XitoZXGKaoOhgTsCEdVXubt+LiY9+46rw@mail.gmail.com>
 <20210604235046.w3hazgcpsg4oefex@google.com>
 <YLtUO/thYUp2wU7k@hirez.programming.kicks-ass.net>
 <CAFP8O3+ggR8N-ffsaYSMPX7s2XgrzzTQQjOgCwUe9smyos-waA@mail.gmail.com>
 <YL5jQ6wMo9WeQDYJ@hirez.programming.kicks-ass.net>
 <CAFP8O3KEqSsknL7YwvAhXLu=R6GHR4=SB_Fix0=rR8KiwBKSnA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAFP8O3KEqSsknL7YwvAhXLu=R6GHR4=SB_Fix0=rR8KiwBKSnA@mail.gmail.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=desiato.20200630 header.b=MFrbR7Do;
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

On Mon, Jun 07, 2021 at 11:27:27AM -0700, F=C4=81ng-ru=C3=AC S=C3=B2ng wrot=
e:
> On Mon, Jun 7, 2021 at 11:19 AM Peter Zijlstra <peterz@infradead.org> wro=
te:
> >
> > On Sat, Jun 05, 2021 at 06:58:39PM -0700, F=C4=81ng-ru=C3=AC S=C3=B2ng =
wrote:
> >
> > > You may use https://github.com/llvm/llvm-project/blob/main/llvm/tools=
/llvm-objcopy/ELF/Object.cpp#L843
> > > as a reference.
> >
> > BTW, Error::success(), is that a successfull error, or an erroneous
> > success? :-))
>=20
> A success (no error). Error::success() is a factory member function.
> Its purpose is to create an "unchecked" Error instance and require the
> caller to explicitly check for the error state.

I got that (see the smily face), but it reads really weird when you're
not used to it.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/YL5pwJSJGOGpKols%40hirez.programming.kicks-ass.net.
