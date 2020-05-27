Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBLHSXL3AKGQE3GGCLJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63f.google.com (mail-ej1-x63f.google.com [IPv6:2a00:1450:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 48D6F1E4DCC
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 21:02:05 +0200 (CEST)
Received: by mail-ej1-x63f.google.com with SMTP id t26sf9274134ejs.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 12:02:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590606125; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ehmrxy/5IjTugVGglOyZpvRHTMYaIpZi/HevMeewJWEp28Cn/4UWKfG6mAqvtei8kN
         ggGUwTxm4vBGfG5vGRNqN0bOdhbQF0MIZurn2/+FFB9F4QFJoiPblGxB9Bf8xnRBQeIR
         huckLZcC2yh8sdIYBhHCsNVDWXj6+jHnlK69y5nfDch+5FcqiSHil4WRy0ivYuL1SxE9
         mhZpndwIeOYArDi0lE1jGszLg4OIHSLlLFMN+ZB2M+OFgovXAE0IIsnY1z18qq6fpwcn
         vCE52bvvzDyliuFy3+MuTkLBRvfHyFD2ImIdzFpzbd6LHTMBD2jVnK1It1bKUW8DuNbm
         wM/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=ukzVdClIocYEYRfHmZ4Ky2masq4AD21JEJPamxLc1NE=;
        b=hU/8cq6TC4fgyvbYX2ZqLoD0EdIG4PTIAMa2vAMeLvH5luyDQFL6u0kWzOGf4vlNXe
         lp/18BCnsYsrGbJ9jFM8G/YLWT2U8JPeyPKbFSCYWfLKIP9VZ4cwj2Bzz0UANObGNmxb
         GFuY6wyQbACB0ZFL4mnALWLIFfxm74AyrDLKGKBTrUp1NLUUQHOjsNJ7s3McP/7aF5rQ
         0dsSBaoMiPkB+N6o0ELFrYuFPop8dyGqJx8blPAF5Yt0phtJsQrRI2Jt2xiSu2fq54qf
         TJZcrMy5cL05SaN7vj3Fj0JxP9mUapMOrB4qZPGLYoCA+aSFVEOZKPaAcfE0qWa1/Zpi
         yRTA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.75 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ukzVdClIocYEYRfHmZ4Ky2masq4AD21JEJPamxLc1NE=;
        b=J3SqTcp5+qEV4PzN/hs06DAiZ3/T3dCUtMWQlk/a+rLY+fsBliZZzPUYK1wvCxtUdX
         z7SFLgQoOHpqpNzAwNxjEbbUR8ORwy0S7gFfkYjbH2KnfvVKXl7E5WssYR57B0Wm7eNk
         ODrCGDmbviVkNXfW3s2VoK5e5aFbGOP+3J2yNm+WgIK5TBj0nolYcX6bUt1YJZYIyhbi
         wK3nQB8Orn0ABARd6PxcCd+xfZPfqy+6B+5aMLYn+Ve5Nfs4LSjO+FU28LvWOH/yRxQ+
         +tGJdjaVQzDuq44H0rTsPzUz0bDQ2NuE2bvJ9g4qduGd4YoN1m4D297OLaoF1McVGGy0
         DDPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ukzVdClIocYEYRfHmZ4Ky2masq4AD21JEJPamxLc1NE=;
        b=cc0fSEIgqXcO89w0jvAcl89buNMvh/sTucLdGfmdFUSTY7qlsxHMMt7jgch84m3zjT
         191emMsoG68kuntRmyKqloTboNWJTdbTH4cnN9kmzo81wgireW8VLH86qPrsKVCzn+73
         hoApqIn8ZtGmPqSAngbxz3D6wREdh0Ofi8S+DUd0nrcjacwKVu+WQBRwilNWH5PGI8b+
         0oLW1jUo7PK+MhHhdlVEYMPjRZG8pAk/6ubBReuWZNPKIhKN5cB+SdYrtrKHkK+CrqAe
         9otdr2rfbMoC+gbQNX0c61KWBRu1AWOyhLsjqI1Ggtt0vLUQzjcq1IcHuI4ylwHBsC5u
         8ZWg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531+A0DWuBxv4gmurk64qgcuvuzLNQogZCnxayji1laxrqyeHAXL
	rl3WrgjQrHG18Vnm28sxuKw=
X-Google-Smtp-Source: ABdhPJyoGHmW3EVk8xE7wJ36SfJTKbsDboJN1DVcdf2CxpOLIGSwwQTt/YRrQ7KCPvL6z3NAB2UOCw==
X-Received: by 2002:a17:906:600a:: with SMTP id o10mr7699173ejj.544.1590606124948;
        Wed, 27 May 2020 12:02:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:9f21:: with SMTP id b30ls16079286edf.1.gmail; Wed, 27
 May 2020 12:02:04 -0700 (PDT)
X-Received: by 2002:a05:6402:1817:: with SMTP id g23mr26330299edy.132.1590606124417;
        Wed, 27 May 2020 12:02:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590606124; cv=none;
        d=google.com; s=arc-20160816;
        b=dNFiHbl331bKsJM0sRaHqPP1szomFjuifG/85ML+WmlWuAVfzE9eRHZoOANjud1x8K
         MSt2SwTyWNMlW1R2BxqC8mB8JeBMJt9Ws7sL/8fdhI9IbgyF7LiF44uIQzU7LY8xBSre
         mSy8ezQTV3WylQjjK+HtSI9MRyrf0PWARq3g7aFwaAbJk+gQfpa1aezMTKGSunQ4K8UW
         u8/ICPmZJcGKdli6O3453XAWNod83VTbC6AH98zvvdYIp9kwex6vcHtf9jbozMWeEbR/
         JpTnQX0h8oIwVa74nd4vu3VntcAReL0eOlTFqoLzFcu9KnXM7vsrsb69/1nKABNY+ERP
         LzcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=GxKtSoP7wvPBHYaceKHyYb7r9pEABCsLT4axduYVU7s=;
        b=nbsXZJBfhQFgznVW3rULG4Wh8MJzqgDSqcg6579VSDt4KSSrm1oXYwmSitqPuC3P16
         pQWgSxyBydu32JpK1dcDV0GjfQaDB6BYdgnzOc9aZrxXryI7p9cVIy26At1Q+kgMytJN
         ZmmsIMxiU/r9h0lUNALbxQrSau1EFwP8DvAC4990YnYP1sJaE+ZiNk3gjvTu1Q43f7le
         zqrkOCmB9h/l67BllSOJc3RFkPP9UpS2g+rJyZTsWxNTKwgdIRDxCp+YvRuYBDm88bwn
         JnPKxrrKcpA0328f8FmaBUXmJWFwDr4wF0+iFMMGBgjctaweR47MQYMUjiP9556y8T3n
         uOhw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.75 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [217.72.192.75])
        by gmr-mx.google.com with ESMTPS id u11si149356edy.0.2020.05.27.12.02.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 May 2020 12:02:04 -0700 (PDT)
Received-SPF: neutral (google.com: 217.72.192.75 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=217.72.192.75;
Received: from mail-qk1-f169.google.com ([209.85.222.169]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1Mcp7M-1j48b33NkQ-00Zta6 for <clang-built-linux@googlegroups.com>; Wed, 27
 May 2020 21:02:04 +0200
Received: by mail-qk1-f169.google.com with SMTP id z80so658620qka.0
        for <clang-built-linux@googlegroups.com>; Wed, 27 May 2020 12:02:03 -0700 (PDT)
X-Received: by 2002:a37:554:: with SMTP id 81mr1438379qkf.394.1590606122697;
 Wed, 27 May 2020 12:02:02 -0700 (PDT)
MIME-Version: 1.0
References: <20200527134016.753354-1-arnd@arndb.de> <20200527152406.GD59947@C02TD0UTHF1T.local>
 <CAKwvOdn637hSboMnMV=S5f1wbiEnc6qtnrn=fpeCGtvr2W_Daw@mail.gmail.com>
 <CAK8P3a3-L-AQomvTcBv-KH1cVVu6uYNT_-2Ofir3UgwzGjcSug@mail.gmail.com> <20200527183517.uhph2pvnkyf6c5p7@google.com>
In-Reply-To: <20200527183517.uhph2pvnkyf6c5p7@google.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 27 May 2020 21:01:45 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1tSKYeDDmAK3o6thazjbua-KmxRNQPX9448qjgp8iV=g@mail.gmail.com>
Message-ID: <CAK8P3a1tSKYeDDmAK3o6thazjbua-KmxRNQPX9448qjgp8iV=g@mail.gmail.com>
Subject: Re: [PATCH] arm64: disable -fsanitize=shadow-call-stack for big-endian
To: Fangrui Song <maskray@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Mark Rutland <mark.rutland@arm.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Sami Tolvanen <samitolvanen@google.com>, Kees Cook <keescook@chromium.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	Tom Stellard <tstellar@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:OAiwvFQT0m9Z1MJKk8lZ3iHsWNus4Kl+osqGRL9LKGIWDyXkRjb
 HMaxq1/bWDACcrZszppCn5gY+E9I9chaKoRWPHbmNQtjHj3l7pyciZzqLObLaN7enNlqP2z
 JC5y15Egb4xAQRtT5kCfITzl0mSc1uzqDKK0vk2+rYhjBmYuX0UOOBL+p+h85luZhK1b+le
 6lO2xA3nVQuJtQPJWzUxQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:MT9X3J7yZfY=:ftlUOg3dkDtkqQE8Qqsaa9
 qhLwx8wdTYjopq15Aps0dWcnK40I9xX5r9igC6MaCyHVcjL1V5/RJ5r19fzJXlhmg3wv8sxmj
 C2E6s+fZtpHGDLOUl3AXipcbredN/ou+PI3D80BiCMZxOZ5fd+f+iP4OZStK/ZZzSzoPff6FK
 zSH1j0WCiGa4yMLK8vl9j8jXA+mxOpcI5mj7yTJSs3EPBZoTaUuBaq6+OdP/VF0OKa52Kbglf
 YcbhSBX8PFMEElKSWFDJoJpPypxdWhYT+zNWTk0+pOiHuqXU9rgtEy6Xbv2nkx2jRbuI5GX++
 qI4HWMky+B+B4BX2scQzR0FM9DP0rQGyOw2qBI9fKMzNjEzkhLD619hAn3sl4+J4YwMClb7bw
 sB8D8KLEM4MI6fRsiBd7PSgaZdK/zreLYZyB1YB+aIWKL/nR+gqqHWIdpx6fKMKJ5MHwqstbX
 zq+r0j4HqO0NuHo8bQZsxw/l9LzzYcGiVMVVIUbT1GZoCiApbc80tvMyuDBF2hDpTFKaw0OSo
 iA9e7Znj9aEhMSmTLf9oowyJVKw6ZVd2CbJgY1m8+G6eqRSZFTCbZc9u1JIK4pYdeYkEhve/x
 j2CVkhX9Xb7M3W/YLG7pK6jjQXk3JVsz7N+P9TsQAZ4sKAClVYW5dSY1jfsot2VcOvaLp0Alv
 b2rjYA0RaP6G228Csqrq/nbrAFHPSX6EHrwfqcG+41L9DGn3gSnPY9A6Ow7QUJzH8aDyHCXer
 vzJjossGJANAaNT2bF4qwm9jOrbVIcI38NgMJ/0+Zr93kzBXXkBQT3kXzOmdFOROHKV6/8wir
 1OSOa6BrCbMCXcU8fy+hEcth1/jk5leTokjE6nXjommm3914Cc=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 217.72.192.75 is neither permitted nor denied by best guess
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

On Wed, May 27, 2020 at 8:35 PM 'Fangrui Song' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
> On 2020-05-27, Arnd Bergmann wrote:
> >On Wed, May 27, 2020 at 7:28 PM 'Nick Desaulniers' via Clang Built
> >Linux <clang-built-linux@googlegroups.com> wrote:
> >>
> >> On Wed, May 27, 2020 at 8:24 AM Mark Rutland <mark.rutland@arm.com> wrote:
> >> >
> >> > On Wed, May 27, 2020 at 03:39:46PM +0200, Arnd Bergmann wrote:
> >> > > clang-11 and earlier do not support -fsanitize=shadow-call-stack
> >> > > in combination with -mbig-endian, but the Kconfig check does not
> >> > > pass the endianess flag, so building a big-endian kernel with
> >> > > this fails at build time:
> >> > >
> >> > > clang: error: unsupported option '-fsanitize=shadow-call-stack' for target 'aarch64_be-unknown-linux'
> >> > >
> >> > > Change the Kconfig check to let Kconfig figure this out earlier
> >> > > and prevent the broken configuration. I assume this is a bug
> >> > > in clang that needs to be fixed, but we also have to work
> >> > > around existing releases.
> >> > >
> >> > > Fixes: 5287569a790d ("arm64: Implement Shadow Call Stack")
> >> > > Link: https://bugs.llvm.org/show_bug.cgi?id=46076
> >> > > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> >> >
> >> > I suspect this is similar to the patchable-function-entry issue, and
> >> > this is an oversight that we'd rather fix toolchain side.
> >> >
> >> > Nick, Fangrui, thoughts?
> >>
> >> Exactly, Fangrui already has a fix: https://reviews.llvm.org/D80647.
> >> Thanks Fangrui!
> >
> >Ok, great! I had opened the bug first so I could reference it in the
> >commit changelog, it seems the fix came fast than I managed to
> >send out the kernel workaround.
> >
> >Do we still want the kernel workaround anyway to make it work
> >with older clang versions, or do we expect to fall back to not
> >use the integrated assembler for the moment?
>
> We can condition it on `CLANG_VERSION >= 100001` (assuming Tom (CCed)
> is happy (and there is still time) cherrying pick the two commits https://bugs.llvm.org/show_bug.cgi?id=46076 to clang 10.0.1)

Good idea. I assume we will keep requiring fairly recent clang versions
for a while now, so chances are that 10.1 or 11.0 becomes the minimum
supported version not too far in the future and then the workaround can
be dropped again.

       Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a1tSKYeDDmAK3o6thazjbua-KmxRNQPX9448qjgp8iV%3Dg%40mail.gmail.com.
