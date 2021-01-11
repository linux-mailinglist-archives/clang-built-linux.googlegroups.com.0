Return-Path: <clang-built-linux+bncBCS7XUWOUULBBH7L6L7QKGQEWMT7DOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C99E2F20D5
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 21:31:28 +0100 (CET)
Received: by mail-vk1-xa37.google.com with SMTP id m20sf164463vkk.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 12:31:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610397087; cv=pass;
        d=google.com; s=arc-20160816;
        b=lj27kWiOpCE5y8rdawfudDn37rKT505fvy4tju1SIqrTBCPhGuEOzuihKJrTiPlTfX
         nfoxVBWGOkejtTYowlrXlJVTLeuv5aSY1QK3HAsqBCS8zGEfsXHeFub39qJGb7Qp9sP3
         O7hlBZtwiYLGTayWAlmVu9kK3sX+/Yo9LXwkxupQYcUHw9xZc1kzgB5zi7E/zEvgwJ1d
         V6/HopaqISVFtLtGN7fHfCl2/htDdnLeyvMIQQQDHEhtL2WVszL1UklmuKn8gz8F229K
         3Y5qZZ3ubqFiUal60WO6j21vhIE0c8cW73BYdq9geUBvjshEAI6O/GMUaiRilW3iJRus
         uCwg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=z7SQ6jjpTFJiq81BeGVNfT4apPI21FSQJbfkpWBGvpg=;
        b=GqgvllYp/bvl+ZpuKtOHUPNfRrUm604Vzaujrn2XmSH+O1t5uVDVmDTF+Iy+ycaX4d
         3X9ZGwZXcJm9CjUy3aWXu6p0kHCX7PnXPX0PhW/iLXWEmkTr1blAEkU8ltPLd5cKRpvd
         93z/K2X5/H21s20XQe3XskoV75MgatINO69M7BFNQ4mepqDZ9RZ55d5PMb0GDkcJg4Cs
         4nK72MDm6vbWuqLc1cOPHuM3G69V89I2ozYqyMBTFJ2Zs45EypPu35BvP/ZddjDuiL/T
         D0rrJhqbD0728Ds5n8OdGPUyLhMF0im8HhTZ1u+sCpfLnZRBvOsJp/pc3QYJhZhoMpY/
         lJgA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZmSjWT7f;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1033 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=z7SQ6jjpTFJiq81BeGVNfT4apPI21FSQJbfkpWBGvpg=;
        b=GL6lQ2Al2Crr7Q+kOHwRZRHz6GqDTB7bl76mqADOrMS5tHt8iifTbvickr71FAl+aB
         V4nR70b2UUrJIxrf8U/OhE5+XdDg9pNDi7nu3tHYGshupfeE1mfxDshpZX0f7sOouJ3L
         2bD8T5k3QTUnFMacudc6tnrEm8oW1j0ltgkzUIsFfGHxbcUtPOd5WU9h4H/udJicHc+b
         IF3fUWIC6STYmkn2zIju+mklHEhSHIMF/3+k3G6g7HvYrhkTA+blLSCeMBGqQvZx536v
         v5BggTf+nbTbyxKOqNuxeWgMdXnTqE+ziSbf8r3HkLDZfckFUov3iD+od7qdiPaXcQgt
         qIWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z7SQ6jjpTFJiq81BeGVNfT4apPI21FSQJbfkpWBGvpg=;
        b=ZhNPgn8fDCU07xTyBuJ15jo2s7cRlaFetf9dxgg7DvMRr9W4of65wJyKSL4zTmA7Eu
         NdpXuCc1Sj7J6Apwnsho2nCqZwEZtk4l4CcypcEKlVr/TYMa090+7ZjX5ectf2IWghoT
         yLUM0lUT3OmqKT7WXd30+vWMG9dw7JHcISZ3iLj91iu0cVFWAcrF05ovnuqkm5Duk2zN
         AsfOGnYecVWDhsoUvU3THmc/vlK69LJemCIO51B0TJdLk2Eei6XwqWl14qkKO+iskrHV
         N04KaUxBYckXJRRqU6us7+gVWLbO6OEP9e26tqVjT4QJ1dPBAJBjHXDxlSdw1PBmWIn4
         egrg==
X-Gm-Message-State: AOAM5306XEx3sM3QFhyiDBxwdkmgkBLzBf3ZBOhchC3ADjbKYvHcVcVc
	GXOtTjRZFwNG7fRu7DIwzWw=
X-Google-Smtp-Source: ABdhPJxKTXYV0qkwx26gUd5ZzTlG3oDV+s/MTluU3p3rc4B3jrFSlbMO+wGcv03XcKwSt0TZHoYArg==
X-Received: by 2002:a67:f80b:: with SMTP id l11mr1336844vso.27.1610397087168;
        Mon, 11 Jan 2021 12:31:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:ab4b:: with SMTP id u72ls41446vke.3.gmail; Mon, 11 Jan
 2021 12:31:25 -0800 (PST)
X-Received: by 2002:ac5:ca08:: with SMTP id c8mr1299381vkm.20.1610397085394;
        Mon, 11 Jan 2021 12:31:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610397085; cv=none;
        d=google.com; s=arc-20160816;
        b=Awh4mpVHRImaRde4ZovK0M/Fmj/v4EkQsmeSYJS/Ll6o2WnwPC3a/MgUXGYErEz6MB
         XedPLsgKLkqt+uRWQ0tpe0HlnzoUtMayf6t12xGPPRpYtSD0uWnIGgA0w7aGPbIGBnBP
         aAVcqmP/KYioNqsKZqrOimvC4r3tSp2ufFc485r5KB+Xqi1IF+h4uY8mEjM6cseZBeZN
         ReC4z/+PpElN15Uh+e5JLBDlzZtyR3+C9mHrKNue0sIXFnr7RHk48mWHVReny3dZOqTJ
         09BoTITCLRdOc4T1ZvXq4W4Wro58eaNqc4PvzDlZueJzB1l6RSCasnnsWfivK8eFcIIK
         /ieA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=BZbWJMckP7KnFzgMzYjv6b0GUK1slDkOJ3IpYhCUuJM=;
        b=PGTk4RuacjO582cRTOsvNx1Xwq9x/maqfvIA0/1KbXR4fZGPp5/QuZciuanrQmCkvW
         5xUxwB+0P7gA7pjIXcurw0JrXVMBlbrPt8Y3rATI6+asCHZFzwLHCnqpod5fXOvRXE9y
         4yfEUuumM81sfF8Tfccq/qvPxwIUyYfEDO0U+f+xcuNstsj3H/YvU+q6lG2OPeSVUIzY
         avqZdVuofQQXKAL3cRxMCdUIpjHRNUnNrg7FTA0tDFISxrssj/X+j126kB2FfSr57uvl
         RsM0iC22ntj5Eo1ggR9QGywxDBJaw7HNGVIPdRsKONsn1nAael/SEPWU3nkPWucK+drz
         wNaA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZmSjWT7f;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1033 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com. [2607:f8b0:4864:20::1033])
        by gmr-mx.google.com with ESMTPS id h123si84867vkg.0.2021.01.11.12.31.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Jan 2021 12:31:25 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1033 as permitted sender) client-ip=2607:f8b0:4864:20::1033;
Received: by mail-pj1-x1033.google.com with SMTP id cq1so49861pjb.4
        for <clang-built-linux@googlegroups.com>; Mon, 11 Jan 2021 12:31:25 -0800 (PST)
X-Received: by 2002:a17:90b:23d6:: with SMTP id md22mr638840pjb.206.1610397084289;
        Mon, 11 Jan 2021 12:31:24 -0800 (PST)
Received: from google.com ([2620:15c:2ce:0:a6ae:11ff:fe11:4abb])
        by smtp.gmail.com with ESMTPSA id t23sm538631pfc.0.2021.01.11.12.31.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Jan 2021 12:31:23 -0800 (PST)
Date: Mon, 11 Jan 2021 12:31:20 -0800
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Bill Wendling <morbo@google.com>
Cc: Jonathan Corbet <corbet@lwn.net>,
	Masahiro Yamada <masahiroy@kernel.org>, linux-doc@vger.kernel.org,
	LKML <linux-kernel@vger.kernel.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH] pgo: add clang's Profile Guided Optimization
 infrastructure
Message-ID: <20210111203120.daeef4yuwgmk5em4@google.com>
References: <20210111081821.3041587-1-morbo@google.com>
 <20210111201224.l5r2zxuyd7ayszke@google.com>
 <CAGG=3QWo5_wwTMHtif4BzFssByaW1ScvpaEH1p1nZ6ymVggLjA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAGG=3QWo5_wwTMHtif4BzFssByaW1ScvpaEH1p1nZ6ymVggLjA@mail.gmail.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ZmSjWT7f;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1033
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

On 2021-01-11, Bill Wendling wrote:
>On Mon, Jan 11, 2021 at 12:12 PM Fangrui Song <maskray@google.com> wrote:
>>
>> On 2021-01-11, 'Bill Wendling' via Clang Built Linux wrote:
>> >From: Sami Tolvanen <samitolvanen@google.com>
>> >
>> >Enable the use of clang's Profile-Guided Optimization[1]. To generate a
>> >profile, the kernel is instrumented with PGO counters, a representative
>> >workload is run, and the raw profile data is collected from
>> >/sys/kernel/debug/pgo/profraw.
>> >
>> >The raw profile data must be processed by clang's "llvm-profdata" tool before
>> >it can be used during recompilation:
>> >
>> >  $ cp /sys/kernel/debug/pgo/profraw vmlinux.profraw
>> >  $ llvm-profdata merge --output=vmlinux.profdata vmlinux.profraw
>> >
>> >Multiple raw profiles may be merged during this step.
>> >
>> >The data can be used either by the compiler if LTO isn't enabled:
>> >
>> >    ... -fprofile-use=vmlinux.profdata ...
>> >
>> >or by LLD if LTO is enabled:
>> >
>> >    ... -lto-cs-profile-file=vmlinux.profdata ...
>>
>> This LLD option does not exist.
>> LLD does have some `--lto-*` options but the `-lto-*` form is not supported
>> (it clashes with -l) https://reviews.llvm.org/D79371
>>
>That's strange. I've been using that option for years now. :-) Is this
>a recent change?

The more frequently used options (specifyed by the clang driver) are
-plugin-opt=... (options implemented by LLVMgold.so).
`-lto-*` is rare.

>> (There is an earlier -fprofile-instr-generate which does
>> instrumentation in Clang, but the option does not have broad usage.
>> It is used more for code coverage, not for optimization.
>> Noticeably, it does not even implement the Kirchhoff's current law
>> optimization)
>>
>Right. I've been told outside of this email that -fprofile-generate is
>the prefered flag to use.
>
>> -fprofile-use= is used by both regular PGO and context-sensitive PGO (CSPGO).
>>
>> clang -flto=thin -fprofile-use= passes -plugin-opt=cs-profile-path= to the linker.
>> For regular PGO, this option is effectively a no-op (confirmed with CSPGO main developer).
>>
>> So I think the "or by LLD if LTO is enabled:" part should be removed.
>
>But what if you specify the linking step explicitly? Linux doesn't
>call "clang" when linking, but "ld.lld".

Regular PGO+LTO does not need -plugin-opt=cs-profile-path=
CSPGO+LTO needs it.
Because -fprofile-use= may be used by both, Clang driver adds it.
CSPGO is relevant in this this patch, so the linker option does not need to be mentioned.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210111203120.daeef4yuwgmk5em4%40google.com.
