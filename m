Return-Path: <clang-built-linux+bncBDYJPJO25UGBBINV2KAAMGQENML5RIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id 03E5A3090A0
	for <lists+clang-built-linux@lfdr.de>; Sat, 30 Jan 2021 00:30:43 +0100 (CET)
Received: by mail-ua1-x93c.google.com with SMTP id 9sf2500713uas.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 15:30:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611963042; cv=pass;
        d=google.com; s=arc-20160816;
        b=AM4H2Mk3d2juXOaP3ag7NnxVxtaviWBtNGFiEx5RLIte8U4/uHropvqRplSyKn8+2O
         dL2ib4tG4XCew4C0YFEBJ8xsC3ZEBw5TgR0CGu4A48NzJsDD0JuiiUWf+m05lQWOtpTX
         34FZbHLpSNPOXjqK2NvvbkHW0ZUkHfZJZ88t4GfstR2LP+ou4b07OyLZZfb7rBvee2Ec
         oAT39a7wDCVO1mIbQuXnuFgOHIMWBtZWft8tQl1c7q5PdIeFD55ZNT6ro2ZSksyvlIzw
         CV4y35XtJ8CYHBR48bbDvaL/pWnZblTzYkTijDDI4hvNICrXAeySPNgjUIJ532fL0ZbF
         heJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=5zFzk9L+T59VlbpvbgatNTnBktgR52+Dsc5I+1/4vD4=;
        b=sy9Y9ZvBz6xNPyad5hOTRS6clme9mtcm/MOoA9GBW/nb0q76HJlmPUvzX94sj/OvBT
         JDmgwglicTX8HKB9GJ/MHm4eoOQ9X+4pRoGdITWFE2z+rSFWIsXh3Z8Cu6IHOZhNuwMp
         aI9LumQRyZAZ7Giv3BPMUHFrBU9f1iW4Q5GzM4t8VuVX/4lsOamV6esiXp37lWHRTsfO
         Vqs1G78w4e7AF3KryJPpRPhQ5yvNZZiuD94HmgjXJ5k4Iz4LYIggMbmE7RSEidcNco+A
         VuXIOa3DuGYKkvbmD5Js2Vmvef3CAtB2bWtmRdBRL7Quqcvy/VMRTejnGT3VNwKN2uEm
         RJHw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QpFH+sYq;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::634 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5zFzk9L+T59VlbpvbgatNTnBktgR52+Dsc5I+1/4vD4=;
        b=o+kaXyO9GulQnV4ikWUqxdvA1XX594e2dDlNKY6/qnUCgXxJQf2A/uZ9bE7zRtCIVq
         QQr5s0WPn/gUC4c4MXQkmo7Kh+KTFhsnfVluuLVMEDiKVbnaOgHJZBSE2478yBWX47VX
         wxtfE3Q1u0mF679hdk4i6cKkvu5jKGAPWciQ4uL6LmOV/FMF6NNK4Si8JnKTvvwkgFX9
         V4p/4X2OO7IR5ORjOBGLRmK940UFgNzubKQ87JAPnzJVAuej5eSUj0aaVrkZOM+ZUbO1
         Bg7aO2IF/Z6jNNKyoRR8nvwgCPvictVo3qoAVybRPfcz8MFbNPjCoa3oOCC4RrNz3ZIu
         9/lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5zFzk9L+T59VlbpvbgatNTnBktgR52+Dsc5I+1/4vD4=;
        b=gVctRq4u15nTKqn2lZ7XNut5McM8AI4rknhEsKuldTTccIrnsFqdTR1mTQYLsYIa73
         mMXvyxSdFKsIlh5QqNwL59BR0LWdlIY+CMjUqx1c7ZlFfNXeN1guaIs51Cd1aq4gVhvF
         JqGJoyzXUnPxUpH8BPiQtiD1hLYc7+2sHubBXofNWlutIT1unabVeSCjlQ91IkZdeAL+
         QnC9JAnaIOwkz42dNqwW2Lg9IONflh4O9Hzg7LTiShr53TZJX2VpJHQLXOqWhdM7vKp/
         1ZVFPvlHwoSZg6zaQTrhq6mzueFr9WwpNr3CrNPrsytC6kuJ2n17DUW6H90hjrdpdSx5
         c3LQ==
X-Gm-Message-State: AOAM530dCD6G2gw0aKVgSjvefcqUHgQiXwsZh0CZMXsiVbgWyEPUNcX3
	IsJUbfAZPsZxWNmgDQOt6uc=
X-Google-Smtp-Source: ABdhPJwLkMVl6w4hWX+vPZnW7+ir56CnP8KDTZamIW6G2lZKNjeJHIN1yHaT76U7MAxYpKEtyBuP0Q==
X-Received: by 2002:a67:e195:: with SMTP id e21mr4417843vsl.16.1611963042016;
        Fri, 29 Jan 2021 15:30:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:eb8c:: with SMTP id e12ls1356122vso.8.gmail; Fri, 29 Jan
 2021 15:30:41 -0800 (PST)
X-Received: by 2002:a05:6102:1171:: with SMTP id k17mr4560844vsg.47.1611963041641;
        Fri, 29 Jan 2021 15:30:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611963041; cv=none;
        d=google.com; s=arc-20160816;
        b=JzPmz7/V/61+ywARqQ5sloVBm99vvlTblOOAarq2YI/H1AmGq0+5qTk45NWUGQPDyz
         IsRIVlqSUp6hVFgZyhshLklXceVSnmWzwfMEHjJL8LpdpcFMbdzOf0JqE8isTvWZ5ypL
         Zp2S1/iAW4CCczNGZPxlkTD9AOp95+RXHH26jhW9lmcYDaFMTG7ymF0LpA9eGbTRfv1a
         VgrKgSIHuLoW+EmL+5MzaCsijWLfCr+O2dLpq2/OLRxV+2Y8IcZdZUBMNop5O3XRI4ER
         fQfVTgxwk8EpRaZEh/Y1vMGPEJhBZDWevhbiLScUxu+mvszXMOW7wN6n3FtyBs0P6Dll
         PglQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=wQXKy21pEcRclb3wAZG5ISCNN6W5kQy6JQslnD7Vmx0=;
        b=JpxcOFoQbHeLX2LXqKCIuSNDTxgFswFHqrhwQHKhz2CcitIuQUjqJ3I5J7jMtaQALd
         GUXax65k4IbK9qiKWQX4dDWNsKe74qoXZBM62kkwZHMOsnmjfy1XXwAth+nsKmcC8Wa5
         6356tZfAhkyUE4r0SIo7I3Sd8teIcSTkcISMH7PxALYgxI+WG5siIl3LLMzJAivOZzHs
         4DAnVZZNjfwiHDXY0YSxQqfQ8U05OmN5Y0jMvX34Fxf8oWruhk3D7kcL+EAAKGSmNSS8
         CMMsbQsVojDwy2n+pRWLUJBM/9UsOjR8RtKkKuosj+V7b+1ZwTEi/xLfjGWRzbxuOL5k
         guSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QpFH+sYq;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::634 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com. [2607:f8b0:4864:20::634])
        by gmr-mx.google.com with ESMTPS id e11si750251vkp.4.2021.01.29.15.30.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Jan 2021 15:30:41 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::634 as permitted sender) client-ip=2607:f8b0:4864:20::634;
Received: by mail-pl1-x634.google.com with SMTP id e9so6207943plh.3
        for <clang-built-linux@googlegroups.com>; Fri, 29 Jan 2021 15:30:41 -0800 (PST)
X-Received: by 2002:a17:902:ed94:b029:de:8844:a650 with SMTP id
 e20-20020a170902ed94b02900de8844a650mr6619051plj.56.1611963040680; Fri, 29
 Jan 2021 15:30:40 -0800 (PST)
MIME-Version: 1.0
References: <20210129194318.2125748-1-ndesaulniers@google.com>
 <20210129194318.2125748-3-ndesaulniers@google.com> <CA+icZUX4q-JhCo+UZ9T3FhbC_gso-oaB0OR9KdH5iEpoGZyqVw@mail.gmail.com>
 <CAKwvOdnj1Np62+eOiTOCRXSW6GLSv4hmvtWaz=0aTZEEot_dhw@mail.gmail.com>
 <20210129205702.GS4020736@tucnak> <CAKwvOdmuSaf28dOdP8Yo6+RyiviMNKcq8JY=-qgbwjbPVwHmLw@mail.gmail.com>
 <20210129211102.GT4020736@tucnak> <CAKwvOdm-+xK=diSKKXXnS2m1+W6QZ70c7cRKTbtVF=dWi1_8_w@mail.gmail.com>
 <20210129220939.GY4020736@tucnak> <CAKwvOdnte8Ck1ywodbY7ED7U046j06C+D-ZcW6kS-fqyaJbmCQ@mail.gmail.com>
In-Reply-To: <CAKwvOdnte8Ck1ywodbY7ED7U046j06C+D-ZcW6kS-fqyaJbmCQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 29 Jan 2021 15:30:29 -0800
Message-ID: <CAKwvOdkx=4SZAo_pxduWG=SvDNET14eo2ad4FeHvxHUcSZGbTA@mail.gmail.com>
Subject: Re: [PATCH v6 2/2] Kbuild: implement support for DWARF v5
To: Jakub Jelinek <jakub@redhat.com>, Nick Clifton <nickc@redhat.com>
Cc: Sedat Dilek <sedat.dilek@gmail.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, linux-arch <linux-arch@vger.kernel.org>, 
	Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, Yonghong Song <yhs@fb.com>, 
	Jiri Olsa <jolsa@kernel.org>, Andrii Nakryiko <andrii@kernel.org>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=QpFH+sYq;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::634
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Fri, Jan 29, 2021 at 3:25 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Fri, Jan 29, 2021 at 2:10 PM Jakub Jelinek <jakub@redhat.com> wrote:
> >
> > On Fri, Jan 29, 2021 at 02:05:59PM -0800, Nick Desaulniers wrote:
> > > Ah, I see.  Then I should update the script I add
> > > (scripts/test_dwarf5_support.sh) to feature detect that bug, since
> > > it's the latest of the bunch.  Also, should update my comment to note
> > > that this requires binutils greater than 2.35.1 (which is what I have,
> > > which fails, since the backport landed in ... what?!)  How was this
> > > backported to 2.35
> > > (https://sourceware.org/bugzilla/show_bug.cgi?id=27195#c12, Jan 26
> > > 2021) when binutils-2_35_1 was tagged sept 19 2020?  Or will there be
> > > a binutils 2.35.2 point release?
> >
> > AFAIK yes, soon.
>
> Err...perhaps https://sourceware.org/bugzilla/show_bug.cgi?id=27195
> was about `.file 0`, but it looks like `.file 1 "filename" md5
> 0x7a0b65214090b6693bd1dc24dd248245` without -gdwarf-5. Specifically
> the md5 ... .
>
> So https://sourceware.org/bugzilla/show_bug.cgi?id=25611 needs a rework perhaps?

$ echo '.file 1 "filename" md5 0x7a0b65214090b6693bd1dc24dd248245' |
binutils-gdb/gas/as -
{standard input}: Assembler messages:
{standard input}:1: Error: junk at end of line, first unrecognized
character is `m'
$ echo '.file 1 "filename" md5 0x7a0b65214090b6693bd1dc24dd248245' |
binutils-gdb/gas/as -gdwarf-5 -
$

https://sourceware.org/bugzilla/show_bug.cgi?id=27280
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkx%3D4SZAo_pxduWG%3DSvDNET14eo2ad4FeHvxHUcSZGbTA%40mail.gmail.com.
