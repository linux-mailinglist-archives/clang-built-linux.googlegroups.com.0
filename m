Return-Path: <clang-built-linux+bncBC2IHDWB7MHRBZWYR6BQMGQET4KIMWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 57F5134F77A
	for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 05:28:40 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id r18sf571898pfc.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Mar 2021 20:28:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617161319; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z0JdODAmbtO9v88ff/ta12cBdLWxEG3UUVTWoZFxXl3HFcKu9VS3KIDyN+0bkJNSrQ
         xAKfhAC6XJvlGoGrwbLPiKjzGlg6OW/eA6rTk0ZlMflePRfTI6HOKLcLyJ2DCI+KgZDY
         lSXJgaklKK2A3PgVxYB8yNCWnA5ay+/h+oW0d6ZWzK8suey/koIMuFsM5UasOfCubyhn
         IvSysTIAN3wqtDDAe4Zfh6LMOPMRhIv+mmnq3Lc5y6MIk0xPn32gLPD6yFo05DFKPPNK
         vH4WGztyTw4Fe/qy9O0wy1JoCQyaH6vNs2csGlL5+RsBIWH+lPaPnZBGobugR6z831Ia
         TvcA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=4EWlxPt2RnpBB5r2TgjGMxYjPqBW6hZtUEXi/L1nd/Y=;
        b=RkHhpcL9oIu0/a0osE/2/nXqlUgjtulWynEMKPWOjkaxk8UIukIYLorJS//Ychb0+C
         OeiWPV75KvtovnUbExNiImn69BLqTMHGcldFm5eLu2IfwpM9QMpgXqwHJwGM588HKfJ0
         ztSMdKd3C9JR3IvQMlS1JE4QZ18oZ8sbXxER86oQaScejPg6F5qaPfsnrSvLil5Gp68D
         XWjYjlKU4rUflBcg/35xzB8RJXanOtURCqk//3+7mXhZOvosbJ21WsV5iLM3rS4OjV1x
         GnRPZPrXeaCWgXD9Cu9GP9hoE2Oqn7dhj982FWiF0DYRMFaWS1T/1947dm/zR/SjIh4C
         QzfQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tXbauTvV;
       spf=pass (google.com: domain of dblaikie@gmail.com designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=dblaikie@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4EWlxPt2RnpBB5r2TgjGMxYjPqBW6hZtUEXi/L1nd/Y=;
        b=fuU5k0z0RasfAMl2pdtCkFAoOCWQKKqb0Q1kUSYmd7AXA47bCPPL7AGx942z5GdyNM
         3iTf1xiwf54vw+rQm7pMRsXoSNsgVWq3kMzgHokQ+6Xqr7Nl9Uvwg5MUhNLC7DeTV1Sx
         imjXJI2qQuoyp9rhb7uItpSUZJZbfhK7v/xT8AhNFZvrmhSs7kEBQm8N+ZCQ8mWUH1uA
         mIKM5WurifVCqANCZ9YecQw7rA6ubEc870q1U43Kdci2YHay88VdB+xwW/KUbEgbz4JZ
         9smekHAbBvpInimPtJaup+HyR27n9Y9hJhAGz4193Q/dDoM3IBfa8e4Y8UndlEmRp61k
         +23g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4EWlxPt2RnpBB5r2TgjGMxYjPqBW6hZtUEXi/L1nd/Y=;
        b=NBrIxcKjQYKy2onaoR+AttMCdTlxMhG7Ss5IB30QRb1hvTN5ihA6P8XDPoDwGh7GHd
         EQ2x8IIAcdpSBY6tJKrgXoEY4f+HWq2pjiKXi3XkmAdSAnbDfCciF+NqF4oLGxBouogB
         ObjGdLtALg3AYkKSic54oqZ57i9fZF4Tw7DRPRTKe7yNqo6OSYYUsOJGS0VubuF2B86H
         QrEA7GQ1H9WCRU5rIeuyDKQ4W8mWHMpQymxctQTWE8xrcHLu8XH7y4NXIC5grxiUZEpH
         3/7Xn0roxgAmH7/tbXh78MBQ2C3i5xRXO0Sh6AkXG+Qa4WN43FU37aMQwRLDcP9HkJNf
         GL3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4EWlxPt2RnpBB5r2TgjGMxYjPqBW6hZtUEXi/L1nd/Y=;
        b=N9+RvzZYxWU+kgKnu2GPSTz9vGC91N611Qqm1mdbGR72EDKX42NKjkylAuz3lsfx1D
         JNWrUg4MBoZ59Eyu7R4DyMRiqCLO/FQhLbhUFM7+baJwCMCuDvNGgfygYLOBit8GD2uQ
         jFPkly6/QJ5t6i9j/CPtdBxraUYwkN+8ay3Wyzr+9Pb4u2HF8rE1spfv/yflh47Hkv9G
         UqPX3xsyPRqyuSU8OwE3KkWTGpCrr9fQKcnQUi1paJcxP+hGGMz43ifZMSxtwbKyDQtd
         jzGCBxaENbJiVeLsXCmA9qkfqZ6iZpkzpfUdNZAYL0gfWv0DgweUa2z1xiCbWdGFRJrB
         ZIyQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533C0oVS9Ydmd8vdzS3G+PSRX+obukrSi+bDU/t3rzy9FEgvhX7C
	LUHOJ6KnEn84b6X2SSILrvI=
X-Google-Smtp-Source: ABdhPJxl2mdLdDF/vfmMUhi4ql9Gf3sYkPewSMTVR0YqRZkCyMJ1fj6XW1U0WwnWJFlQRs+YzGTLog==
X-Received: by 2002:a63:dc18:: with SMTP id s24mr1199411pgg.163.1617161319010;
        Tue, 30 Mar 2021 20:28:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ce8f:: with SMTP id f15ls422643plg.5.gmail; Tue, 30
 Mar 2021 20:28:38 -0700 (PDT)
X-Received: by 2002:a17:90a:cca:: with SMTP id 10mr1407123pjt.103.1617161318483;
        Tue, 30 Mar 2021 20:28:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617161318; cv=none;
        d=google.com; s=arc-20160816;
        b=kkiNNZKiJiIhPxwWqYFmNI2IlNXIB/HnasrrkWKWbTmaarW/ZAqbOwfuvpZDoq0+wC
         YWI2g8/tx+SLnAGdTXELnWFFlhfHoTHR2P0z+bQbEYLhdfmmfcR2AN8YMMWT8lL6IbzH
         kWuuSLIeIzyKRKXco2hhCiWtHEAhU0NsxrZ1zRV+pShFkoTW7izWPpmcojVdlWtA7PHN
         UNvYqv0o8rjXwvJju+VBUGHCggrtfNtaElj5bWfcy2bA3uZPSwiZmcySgSLbg5gkrS6i
         lg47fB7swhj9wGQQ9bBndRmhscVZjhM/PoZ9uHWku6He7XETd4N8hK5Akm6vj1pCKtgx
         8wJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=N2Ay2yW9Gv/JT4ajx/UMq3XMlPy4mHOsCh9hdgJxm/Q=;
        b=S86lXShlWSHgfopI41fMZqblSRqXfuHMjaO+IcqghSzG9gjK31sILFr78OiEl6d51D
         sODuzZY8DA8YWccxPUEMQtsYce4Cgo14qQL8n+LYTIG5JVYfY4u+YIaR+mBO9X/mwaML
         SK+gU+U2xCqu01XzsUZAIOya0YI0S4c//DnHmu/eGsyeHrFcAiEhe1Mylzuh+uRVttH6
         hU/vBVz1khYs7lnGWQ0YXIhA6mfexOgji+4RrjZ84Xtwc0XsrYwUiUBYG8MhTQ7+MvL2
         PFL3TXOlaMGKnvktUf53CKTwB9LjTETcfVRcY9BU8tl0KP7my6C43MAWAScyBXj9zPYj
         OQ+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tXbauTvV;
       spf=pass (google.com: domain of dblaikie@gmail.com designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=dblaikie@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com. [2607:f8b0:4864:20::636])
        by gmr-mx.google.com with ESMTPS id c3si39514pls.0.2021.03.30.20.28.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Mar 2021 20:28:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of dblaikie@gmail.com designates 2607:f8b0:4864:20::636 as permitted sender) client-ip=2607:f8b0:4864:20::636;
Received: by mail-pl1-x636.google.com with SMTP id o2so7200820plg.1
        for <clang-built-linux@googlegroups.com>; Tue, 30 Mar 2021 20:28:38 -0700 (PDT)
X-Received: by 2002:a17:90a:c289:: with SMTP id f9mr1423373pjt.105.1617161318220;
 Tue, 30 Mar 2021 20:28:38 -0700 (PDT)
MIME-Version: 1.0
References: <20210328064121.2062927-1-yhs@fb.com> <20210329225235.1845295-1-ndesaulniers@google.com>
 <0b8d17be-e015-83c3-88d8-7c218cd01536@fb.com> <20210331002507.xv4sxe27dqirmxih@google.com>
 <79f231f2-2d14-0900-332e-cba42f770d9e@fb.com> <CAFP8O3JjU26pNKhFE2AniP-k=8-G09G2ZXc6BXndK9hugX-0ag@mail.gmail.com>
 <CAENS6EuKv9iWLy24Gp=7dyA0RHNo9sjORASAph4UWLXvDWB+oQ@mail.gmail.com>
 <d34a3d62-bae8-3a30-26b6-4e5e8efcd0af@fb.com> <CAENS6EuGOHcBURjR2ee2tPz3VdEu3EssCM3rFcyQqAM5MjeyQg@mail.gmail.com>
 <121fdb24-4ec2-20bf-3c2e-3b0f68b2297a@fb.com>
In-Reply-To: <121fdb24-4ec2-20bf-3c2e-3b0f68b2297a@fb.com>
From: David Blaikie <dblaikie@gmail.com>
Date: Tue, 30 Mar 2021 20:28:27 -0700
Message-ID: <CAENS6EuPxHppEjRq2AL824nJ1=oH+rDREQGaQM7_LpC=8aUrKA@mail.gmail.com>
Subject: Re: [PATCH kbuild] kbuild: add -grecord-gcc-switches to clang build
To: Yonghong Song <yhs@fb.com>
Cc: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>, 
	Alexei Starovoitov <ast@kernel.org>, bpf <bpf@vger.kernel.org>, kernel-team@fb.com, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Masahiro Yamada <masahiroy@kernel.org>, 
	Michal Marek <michal.lkml@markovi.net>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Bill Wendling <morbo@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: dblaikie@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=tXbauTvV;       spf=pass
 (google.com: domain of dblaikie@gmail.com designates 2607:f8b0:4864:20::636
 as permitted sender) smtp.mailfrom=dblaikie@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Mar 30, 2021 at 8:27 PM Yonghong Song <yhs@fb.com> wrote:
>
>
>
> On 3/30/21 8:16 PM, David Blaikie wrote:
> > On Tue, Mar 30, 2021 at 8:13 PM Yonghong Song <yhs@fb.com> wrote:
> >>
> >>
> >>
> >> On 3/30/21 7:51 PM, David Blaikie wrote:
> >>> On Tue, Mar 30, 2021 at 7:39 PM F=C4=81ng-ru=C3=AC S=C3=B2ng <maskray=
@google.com> wrote:
> >>>>
> >>>> On Tue, Mar 30, 2021 at 6:48 PM Yonghong Song <yhs@fb.com> wrote:
> >>>>>
> >>>>>
> >>>>>
> >>>>> On 3/30/21 5:25 PM, Fangrui Song wrote:
> >>>>>> On 2021-03-30, 'Yonghong Song' via Clang Built Linux wrote:
> >>>>>>>
> >>>>>>>
> >>>>>>> On 3/29/21 3:52 PM, Nick Desaulniers wrote:
> >>>>>>>> (replying to
> >>>>>>>> https://lore.kernel.org/bpf/20210328064121.2062927-1-yhs@fb.com/=
)
> >>>>>>>>
> >>>>>>>> Thanks for the patch!
> >>>>>>>>
> >>>>>>>>> +# gcc emits compilation flags in dwarf DW_AT_producer by defau=
lt
> >>>>>>>>> +# while clang needs explicit flag. Add this flag explicitly.
> >>>>>>>>> +ifdef CONFIG_CC_IS_CLANG
> >>>>>>>>> +DEBUG_CFLAGS    +=3D -grecord-gcc-switches
> >>>>>>>>> +endif
> >>>>>>>>> +
> >>>>>>
> >>>>>> Yes, gcc defaults to -grecord-gcc-switches. Clang doesn't.
> >>>>>
> >>>>> Could you know why? dwarf size concern?
> >>>>>
> >>>>>>
> >>>>>>>> This adds ~5MB/1% to vmlinux of an x86_64 defconfig built with c=
lang.
> >>>>>>>> Do we
> >>>>>>>> want to add additional guards for CONFIG_DEBUG_INFO_BTF, so that=
 we
> >>>>>>>> don't have
> >>>>>>>> to pay that cost if that config is not set?
> >>>>>>>
> >>>>>>> Since this patch is mostly motivated to detect whether the kernel=
 is
> >>>>>>> built with clang lto or not. Let me add the flag only if lto is
> >>>>>>> enabled. My measurement shows 0.5% increase to thinlto-vmlinux.
> >>>>>>> The smaller percentage is due to larger .debug_info section
> >>>>>>> (almost double) for thinlto vs. no lto.
> >>>>>>>
> >>>>>>> ifdef CONFIG_LTO_CLANG
> >>>>>>> DEBUG_CFLAGS   +=3D -grecord-gcc-switches
> >>>>>>> endif
> >>>>>>>
> >>>>>>> This will make pahole with any clang built kernels, lto or non-lt=
o.
> >>>>>>
> >>>>>> I share the same concern about sizes. Can't pahole know it is clan=
g LTO
> >>>>>> via other means? If pahole just needs to know the one-bit informat=
ion
> >>>>>> (clang LTO vs not), having every compile option seems unnecessary.=
...
> >>>>>
> >>>>> This is v2 of the patch
> >>>>>      https://lore.kernel.org/bpf/20210331001623.2778934-1-yhs@fb.co=
m/
> >>>>> The flag will be guarded with CONFIG_LTO_CLANG.
> >>>>>
> >>>>> As mentioned in commit message of v2, the alternative is
> >>>>> to go through every cu to find out whether DW_FORM_ref_addr is used
> >>>>> or not. In other words, check every possible cross-cu references
> >>>>> to find whether cross-cu reference actually happens or not. This
> >>>>> is quite heavy for pahole...
> >>>>>
> >>>>> What we really want to know is whether cross-cu reference happens
> >>>>> or not? If there is an easy way to get it, that will be great.
> >>>>
> >>>> +David Blaikie
> >>>
> >>> Yep, that shouldn't be too hard to test for more directly - scanning
> >>> .debug_abbrev for DW_FORM_ref_addr should be what you need. Would tha=
t
> >>> be workable rather than relying on detecting clang/lto from command
> >>> line parameters? (GCC can produce these cross-CU references too, when
> >>> using lto - so this approach would help make the solution generalize
> >>> over GCC's behavior too)
> >>
> >> Thanks, David. This should be better. I tried with a non-lto vmlinux.
> >> Did "llvm-dwarfdump --debug-abbrev vmlinux > log" and then
> >> "grep "DW_CHILDREN_no" log | wc -l" and get 231676 records.
> >
> > What conclusions are you drawing from this number/data? (I'm not
> > following how DW_CHILDREN_no relates to the topic - perhaps I'm
> > missing something)
>
> Approximation of the number of tags to visit:
>
> ...
> [10] DW_TAG_array_type  DW_CHILDREN_yes
>          DW_AT_type      DW_FORM_ref4
>          DW_AT_sibling   DW_FORM_ref4
>
> [11] DW_TAG_variable    DW_CHILDREN_no
>          DW_AT_name      DW_FORM_strp
>          DW_AT_decl_file DW_FORM_data1
>          DW_AT_decl_line DW_FORM_data2
>          DW_AT_decl_column       DW_FORM_data1
>          DW_AT_type      DW_FORM_ref4
>          DW_AT_external  DW_FORM_flag_present
>          DW_AT_declaration       DW_FORM_flag_present
>
> [12] DW_TAG_member      DW_CHILDREN_no
>          DW_AT_name      DW_FORM_string
>          DW_AT_decl_file DW_FORM_data1
>          DW_AT_decl_line DW_FORM_data1
>          DW_AT_decl_column       DW_FORM_data1
>          DW_AT_type      DW_FORM_ref4
>          DW_AT_data_member_location      DW_FORM_data1
>
> [13] DW_TAG_subrange_type       DW_CHILDREN_no
>          DW_AT_type      DW_FORM_ref4
>          DW_AT_upper_bound       DW_FORM_data1
> ...
> The bigger number means more tags to visit and will consume more time.
> For a binary not compiled with lto, all these tags will be visited
> before declaring that the dwarf does not have cross-cu reference.
> So the number is just a relative guess on the cpu cost. But ya,
> have to have real implementation first...

Ah, sounds good, yeah.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAENS6EuPxHppEjRq2AL824nJ1%3DoH%2BrDREQGaQM7_LpC%3D8aUrKA=
%40mail.gmail.com.
