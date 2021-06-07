Return-Path: <clang-built-linux+bncBCS7XUWOUULBBG6K7GCQMGQE563HOIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D1BE39E6A2
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Jun 2021 20:27:41 +0200 (CEST)
Received: by mail-il1-x13f.google.com with SMTP id n7-20020a056e021487b02901d29983f028sf13286659ilk.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Jun 2021 11:27:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623090460; cv=pass;
        d=google.com; s=arc-20160816;
        b=bJ5AlqM3khl1wkal6BEK6245SlpooVWgX+cXL2solAgMWh0N2LdB9Qi3n1rz3r/Xcr
         YQcJk2jLXWM9vpcCPVtIgpMPN2SxVmk+Wz0H1VeHQljmXH838/MW8+4F4TH3yvdcB2Vl
         okhLqwylnZZIQ+qhwpOJfgD9Bfl5p8dZujkuBnCwkuZfr+/eYf95tv9ns0Go/6N/Ch1K
         5S/Qz4AsrhGEcigu4J30QoSjqw3OGd6+qlDUYwzpbqJqXgM4cq9eu8x4ZjrxElAX7Tlw
         dKX+qz/TSTYg9VtBellvSIlwAe9tbW1POQ1FR/ydgDo9K+XcLex+w4sSfveh8vW14xOu
         NjTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Pw2Ji3YR70Y0HrsDyY92y2qoNL5vRaKsg6C/QQ+EZsk=;
        b=X32hCdAghXE6pcgdBv6cWwrfV4Ss7X7MBLQLX3DsYOB1Zztq+yNvdPscaXj7c2Houa
         WS9Ll1/94xev0YYLIOD8EZUosM+ucJqwTprfCwdIzAA/ooFpFrdbS6X39eEwMdgmj7LC
         LPtE8td1S83WAdjeZLi6zMJy7ksRzrDt+gHL0jjs8HAtSb1B6uQY63mOe1fKOuKohcRT
         8EC/onvAwSdVp89RVfhZV2EKZg4ZRt2gR1QIX8JE2NaLMbH4QlgD9/aMGDHNMB0F2eh+
         nvShPwBZ37Iv5Vli2Qic9mBor1aCmZnLUs+wsP7mq06AnP3Y+LArZTQQiv+NdPEStuSs
         LGGA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lkaKgvYp;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::b2c as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Pw2Ji3YR70Y0HrsDyY92y2qoNL5vRaKsg6C/QQ+EZsk=;
        b=J0lUdS4X7DIZyzdOpMxc8k4qkKZVCprelx6lImcze27VLjtOcJnzQ07pjNoJO1gBqW
         u0ZP2QGAjAo6Bq1c9USozsW3075Jvmr3UuTyGp1JNldnEPnV4kkjCKf+P8CjZMm7T6/T
         MOdMSDMbw7/RHz2PkkDy9/W1YQHIchKRPMZ28C26ljrmkxunrJFUtemlT65906xJojcq
         Dn/IavnXApiCGGbjch3PiQy8WbLf4dSXY2tS0BvWt4YtrScfKz23+yhArUzPzd2ieyc1
         OA6XBiGpwvNpgVNfpbzeiC0v7QaIsWaA8MXaTU2N2eiqjvz5LbFxEb4fXYKFLXGnOZQU
         aAww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Pw2Ji3YR70Y0HrsDyY92y2qoNL5vRaKsg6C/QQ+EZsk=;
        b=Sa6Hom37ZFgZo5BsskquD4UuLG+iWhMH3DhpfhtyLMrVetR59VOkhij5CSaw671Dl8
         lFQTi7ZtsqRIhRXj2CCMX1wNg7bLcgUdo9fujkgpJTsL1ojN6SJZuZwjzPgHc5zhLfdN
         PAbfU84dV812C3W8PfQDksitS5ZIDe0d16v851HZRwpKCtplqeRdELigdHL23iDzo4Ia
         simqd5CTlganoYUOEoc3ZHlJeOgt+dx//ZVpYx+haNVX1juzlkbqEZthWAYSE4HlohX7
         lXpK6nZXMsRLB22EQ3aBk1seQLjc56RdNLGUhl9wGjxMQlw9jKKXIOUutnF3RSiNyA+D
         JQHw==
X-Gm-Message-State: AOAM531rh9geQyU5tl1pPdSmWJiFuhD02BdxJxfo3te5kZRN6Jzq39XS
	sk8dgA1xCiDDrFAh7Y02Lhs=
X-Google-Smtp-Source: ABdhPJxxhydKVEly2GRh0UWreUyQkEYHpIKREJK3BrkIOUhjO2oar8C6nfKVWmbcMSQpA8MplGjPHA==
X-Received: by 2002:a05:6e02:1809:: with SMTP id a9mr5542694ilv.221.1623090459137;
        Mon, 07 Jun 2021 11:27:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:ce87:: with SMTP id r7ls630203ilo.6.gmail; Mon, 07 Jun
 2021 11:27:38 -0700 (PDT)
X-Received: by 2002:a92:dd89:: with SMTP id g9mr16692200iln.209.1623090458805;
        Mon, 07 Jun 2021 11:27:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623090458; cv=none;
        d=google.com; s=arc-20160816;
        b=CXeycJfL0ACtVDGDFbNyZXfpLqClCkGnpg9mhlavvQOtGC8wStkngfMxNgSLuZvUzq
         eKUsEygRp7u1zI3TqwX81ck7PS0+engcKrppzRNWx8AJMa8L3AYrmuuWaevoOy/GZU1f
         jgRXDTqnHj1cRIne5GGW9n7sTFzGm7hqThkUx8rJUddYppDYe7CZLo6f/w+roJYCvhiJ
         0NwqwPAowdbgCLPxvnPWPpnI8WmR0VknTH3olrZojqLHEfJkLLGYKfWYYC7qNqE1gwPA
         TpXuT0q/IXBFcH71VGrjS+rYTD77fLiXA2mkHZbazwZIwvqjzhevh67Rv7E9QfUcrDly
         P8rA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=+0Qwo32Oi1nv9vlDwm2eqEKRAzjcx7HfOAwXOuTbk10=;
        b=vjbqO1Zx/2YxKGDjkwQ4Rhx5BFS7QfIgxuwKLn0BOiSgDwVTCqRpvyEE6fM+LnNdhl
         o2dU1of65C1H1DpYFGSbsJurEpPx8K2aX5zpLpv8sZV044x4/5xdKrQjLVBXAaCWS90i
         1QL/cNnMOgHxt2AyuBM4DUDSo/686STvCOYHH2OfozAppBRMam3StCbYj/VJTnRbNOAW
         2jKu28tx8rR9EnOmfZa81wGWi1PmVgRVvYfkeFvroYfy5OxJ3Pq5YCKuXb1e/KBV+ViX
         to4XVAYZT5ba4WDT12Oo0bPVCtvC64D587upaZ8XkbH+d87zSvZP1HsNlz6KDvBAHBxx
         dV8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lkaKgvYp;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::b2c as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb2c.google.com (mail-yb1-xb2c.google.com. [2607:f8b0:4864:20::b2c])
        by gmr-mx.google.com with ESMTPS id x13si1878897ilg.2.2021.06.07.11.27.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Jun 2021 11:27:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::b2c as permitted sender) client-ip=2607:f8b0:4864:20::b2c;
Received: by mail-yb1-xb2c.google.com with SMTP id m9so19912973ybo.5
        for <clang-built-linux@googlegroups.com>; Mon, 07 Jun 2021 11:27:38 -0700 (PDT)
X-Received: by 2002:a25:e741:: with SMTP id e62mr26818800ybh.484.1623090458346;
 Mon, 07 Jun 2021 11:27:38 -0700 (PDT)
MIME-Version: 1.0
References: <CAFJ_xbq06nfaEWtVNLtg7XCJrQeQ9wCs4Zsoi5Y_HP3Dx0iTRA@mail.gmail.com>
 <20210604205018.2238778-1-ndesaulniers@google.com> <CAKwvOdmhg2tj8cKe-XitoZXGKaoOhgTsCEdVXubt+LiY9+46rw@mail.gmail.com>
 <20210604235046.w3hazgcpsg4oefex@google.com> <YLtUO/thYUp2wU7k@hirez.programming.kicks-ass.net>
 <CAFP8O3+ggR8N-ffsaYSMPX7s2XgrzzTQQjOgCwUe9smyos-waA@mail.gmail.com> <YL5jQ6wMo9WeQDYJ@hirez.programming.kicks-ass.net>
In-Reply-To: <YL5jQ6wMo9WeQDYJ@hirez.programming.kicks-ass.net>
From: =?UTF-8?B?J0bEgW5nLXJ1w6wgU8OybmcnIHZpYSBDbGFuZyBCdWlsdCBMaW51eA==?= <clang-built-linux@googlegroups.com>
Date: Mon, 7 Jun 2021 11:27:27 -0700
Message-ID: <CAFP8O3KEqSsknL7YwvAhXLu=R6GHR4=SB_Fix0=rR8KiwBKSnA@mail.gmail.com>
Subject: Re: [PATCH v3 16/16] objtool,x86: Rewrite retpoline thunk calls
To: Peter Zijlstra <peterz@infradead.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Josh Poimboeuf <jpoimboe@redhat.com>, lma@semihalf.com, 
	Guenter Roeck <groeck@google.com>, Juergen Gross <jgross@suse.com>, lb@semihalf.com, 
	LKML <linux-kernel@vger.kernel.org>, mbenes@suse.com, 
	=?UTF-8?Q?Rados=C5=82aw_Biernacki?= <rad@semihalf.com>, upstream@semihalf.com, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <nathan@kernel.org>, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=lkaKgvYp;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::b2c
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

On Mon, Jun 7, 2021 at 11:19 AM Peter Zijlstra <peterz@infradead.org> wrote=
:
>
> On Sat, Jun 05, 2021 at 06:58:39PM -0700, F=C4=81ng-ru=C3=AC S=C3=B2ng wr=
ote:
>
> > You may use https://github.com/llvm/llvm-project/blob/main/llvm/tools/l=
lvm-objcopy/ELF/Object.cpp#L843
> > as a reference.
>
> BTW, Error::success(), is that a successfull error, or an erroneous
> success? :-))

A success (no error). Error::success() is a factory member function.
Its purpose is to create an "unchecked" Error instance and require the
caller to explicitly check for the error state.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAFP8O3KEqSsknL7YwvAhXLu%3DR6GHR4%3DSB_Fix0%3DrR8KiwBKSnA=
%40mail.gmail.com.
